; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/processpptables.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pp_table_func = type { ptr, ptr, ptr, ptr }
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
%struct._ATOM_PPLIB_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, %struct._ATOM_PPLIB_THERMALCONTROLLER, i16, i16 }>
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_PPLIB_THERMALCONTROLLER = type { i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct._StateArray = type { i8, [1 x %struct._ATOM_PPLIB_STATE_V2] }
%struct._ATOM_PPLIB_STATE_V2 = type { i8, i8, [1 x i8] }
%struct._NonClockInfoArray = type { i8, i8, [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO] }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type <{ i16, i8, i8, i32, i8, i16, i32, i32, [5 x i8] }>
%struct._ClockInfoArray = type { i8, i8, [1 x i8] }
%struct._ATOM_PPLIB_STATE = type { i8, [1 x i8] }
%struct.pp_hwmgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._ATOM_PPLIB_POWERPLAYTABLE3 = type { %struct._ATOM_PPLIB_POWERPLAYTABLE2, i16, i16, i16 }
%struct._ATOM_PPLIB_POWERPLAYTABLE2 = type { %struct._ATOM_PPLIB_POWERPLAYTABLE, i8, i16 }
%struct._ATOM_PPLIB_FANTABLE = type { i8, i8, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_PPLIB_FANTABLE2 = type { %struct._ATOM_PPLIB_FANTABLE, i16 }
%struct._ATOM_PPLIB_FANTABLE3 = type <{ %struct._ATOM_PPLIB_FANTABLE2, i8, i16, i16 }>
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
%struct._ATOM_PPLIB_FANTABLE4 = type <{ %struct._ATOM_PPLIB_FANTABLE3, i16 }>
%struct._ATOM_PPLIB_FANTABLE5 = type <{ %struct._ATOM_PPLIB_FANTABLE4, i16, i16, i16, i16 }>
%struct._ATOM_FIRMWARE_INFO_V1_4 = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i8, i8, i8 }>
%union._ATOM_FIRMWARE_CAPABILITY_ACCESS = type { %struct._ATOM_FIRMWARE_CAPABILITY }
%struct._ATOM_FIRMWARE_CAPABILITY = type { i16 }
%struct._ATOM_PPLIB_EXTENDEDHEADER = type <{ i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }>
%struct._ATOM_PPLIB_VCE_Clock_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_VCE_Clock_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_VCE_Clock_Voltage_Limit_Record = type <{ i16, i8 }>
%struct._VCEClockInfoArray = type { i8, [1 x %struct._VCEClockInfo] }
%struct._VCEClockInfo = type <{ i16, i8, i16, i8 }>
%struct.phm_vce_clock_voltage_dependency_table = type { i8, [0 x %struct.phm_vce_clock_voltage_dependency_record] }
%struct.phm_vce_clock_voltage_dependency_record = type { i32, i32, i32 }
%struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Record = type <{ i16, i8 }>
%struct._UVDClockInfoArray = type { i8, [1 x %struct._UVDClockInfo] }
%struct._UVDClockInfo = type <{ i16, i8, i16, i8 }>
%struct.phm_uvd_clock_voltage_dependency_table = type { i8, [0 x %struct.phm_uvd_clock_voltage_dependency_record] }
%struct.phm_uvd_clock_voltage_dependency_record = type { i32, i32, i32 }
%struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Record = type <{ i16, i16, i8 }>
%struct.phm_samu_clock_voltage_dependency_table = type { i8, [0 x %struct.phm_samu_clock_voltage_dependency_record] }
%struct.phm_samu_clock_voltage_dependency_record = type { i32, i32 }
%struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Record = type <{ i16, i16, i8 }>
%struct.phm_acp_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_acp_clock_voltage_dependency_record] }
%struct.phm_acp_clock_voltage_dependency_record = type { i32, i32 }
%struct._ATOM_PPLIB_POWERTUNE_Table_V1 = type <{ i8, %struct._ATOM_PowerTune_Table, i16, i16, [6 x i16] }>
%struct._ATOM_PowerTune_Table = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.phm_cac_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct._ATOM_PPLIB_POWERTUNE_Table = type <{ i8, %struct._ATOM_PowerTune_Table }>
%struct._ATOM_PPLIB_POWERPLAYTABLE4 = type <{ %struct._ATOM_PPLIB_POWERPLAYTABLE3, i32, i32, i16, i16, i16, i16, i16, i16 }>
%struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table = type { i8, [1 x %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record] }
%struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record = type <{ i16, i8, i16 }>
%struct.phm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_clock_voltage_dependency_record] }
%struct.phm_clock_voltage_dependency_record = type { i32, i32 }
%struct._ATOM_PPLIB_Clock_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_Clock_Voltage_Limit_Record = type <{ i16, i8, i16, i8, i16, i16 }>
%struct.phm_clock_array = type { i32, [0 x i32] }
%struct._ATOM_PPLIB_POWERPLAYTABLE5 = type <{ %struct._ATOM_PPLIB_POWERPLAYTABLE4, i32, i32, i32, i16, i32, i16, i16 }>
%struct._ATOM_PPLIB_CAC_Leakage_Table = type <{ i8, [1 x %union._ATOM_PPLIB_CAC_Leakage_Record] }>
%union._ATOM_PPLIB_CAC_Leakage_Record = type { %struct.anon.116 }
%struct.anon.116 = type { i16, i16, i16 }
%struct.phm_cac_leakage_table = type { i32, [0 x %union.phm_cac_leakage_record] }
%union.phm_cac_leakage_record = type { %struct.anon }
%struct.anon = type { i16, i32 }
%struct.anon.1 = type { i16, i16, i16 }
%struct.anon.115 = type <{ i16, i32 }>
%struct._ATOM_PPLIB_PPM_Table = type { i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phm_ppm_table = type { i8, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._ATOM_PPLIB_PhaseSheddingLimits_Table = type { i8, [1 x %struct._ATOM_PPLIB_PhaseSheddingLimits_Record] }
%struct._ATOM_PPLIB_PhaseSheddingLimits_Record = type <{ i16, i16, i8, i16, i8 }>
%struct.phm_phase_shedding_limits_table = type { i32, [0 x %struct.phm_phase_shedding_limits_record] }
%struct.phm_phase_shedding_limits_record = type { i32, i32, i32 }
%struct._ATOM_PPLIB_VCE_State_Table = type { i8, [1 x %struct._ATOM_PPLIB_VCE_State_Record] }
%struct._ATOM_PPLIB_VCE_State_Record = type { i8, i8 }

@pp_tables_get_response_times._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.pp_tables_get_response_times = private unnamed_addr constant [29 x i8] c"pp_tables_get_response_times\00", align 1
@pp_tables_get_response_times._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_get_response_times, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c\00", [61 x i8] zeroinitializer }, align 32
@pp_tables_get_response_times._entry_ptr = internal global ptr @pp_tables_get_response_times._entry, section ".printk_index", align 4
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Missing PowerPlay Table!\00", [39 x i8] zeroinitializer }, align 32
@pptable_funcs = dso_local constant { %struct.pp_table_func, [16 x i8] } { %struct.pp_table_func { ptr @pp_tables_initialize, ptr @pp_tables_uninitialize, ptr @get_number_of_vce_state_table_entries, ptr @get_vce_state_table_entry }, [16 x i8] zeroinitializer }, align 32
@soft_dummy_pp_table = internal constant { [481 x i8], [127 x i8] } { [481 x i8] c"\E1\01\06\01\00\00\00\00\00B\00J\00l\00\00\00\00\00B\00\02\00\00\00\13\00\00\80\00\00\00\00N\00\88\00\00\9E\00\17\00\00\00\9E\00\00\00\00\00\00\00\00\00\B8\00\00\00\00\00\00\00\00\00\00\00\02\02\00\00\01\01\01\00\08\04\00\00\00\00\07\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\02\18\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00\00\00\00\00\00\00\00\00\E1\00C\01\00\00\00\00\8E\01\00\00\B8\01\00\00\080u\00\80\00\A0\8C\00~\00q\A5\00|\00\E5\C8\00p\00\91\F4\00d\00@\19\01Z\00\0E(\01R\00\808\01J\00\00\090u\000u\00@\9C\00@\9C\00Y\D8\00Y\D8\00\91\F4\00\91\F4\00\0E(\01\0E(\01\90_\01\90_\01\00w\01\00w\01\CA\91\01\CA\91\01\00\00\00\00\00\00\08\80\00\00~\00\01|\00\02p\00\03d\00\04Z\00\05R\00\06J\00\07\08\08\00\08\00\01\02\02\02\01\02\02\02\03\02\04\02\00\08@\9C\000u\00t\B5\00\A0\8C\00`\EA\00t\B5\00\0E(\01`\EA\00\90_\01@\19\01\B2\B0\01\90_\01\C0\D4\01\00w\01^\FF\01\CA\91\01\08\80\00\00~\00\01|\00\02p\00\03d\00\04Z\00\05R\00\06J\00\07\00\08\80\000u\00~\00@\9C\00|\00Y\D8\00p\00\DC\0B\01d\00\808\01Z\00\808\01R\00\808\01J\00\808\01\080u\00\80\00\A0\8C\00~\00q\A5\00|\00\E5\C8\00t\00\91\F4\00f\00@\19\01X\00\0E(\01R\00\808\01J\00", [127 x i8] zeroinitializer }, align 32
@init_non_clock_fields.look_up = internal constant { <{ i8, i8, [14 x i8] }>, [16 x i8] } { <{ i8, i8, [14 x i8] }> <{ i8 0, i8 50, [14 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@__func__.pp_tables_initialize = private unnamed_addr constant [21 x i8] c"pp_tables_initialize\00", align 1
@pp_tables_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_initialize, ptr @.str.2, i32 1712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_initialize._entry_ptr = internal global ptr @pp_tables_initialize._entry, section ".printk_index", align 4
@pp_tables_initialize._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_initialize, ptr @.str.2, i32 1718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_initialize._entry_ptr.7 = internal global ptr @pp_tables_initialize._entry.6, section ".printk_index", align 4
@pp_tables_initialize._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_initialize, ptr @.str.2, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_initialize._entry_ptr.11 = internal global ptr @pp_tables_initialize._entry.10, section ".printk_index", align 4
@pp_tables_initialize._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_initialize, ptr @.str.2, i32 1728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_initialize._entry_ptr.15 = internal global ptr @pp_tables_initialize._entry.14, section ".printk_index", align 4
@pp_tables_initialize._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pp_tables_initialize._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_initialize, ptr @.str.2, i32 1734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_initialize._entry_ptr.19 = internal global ptr @pp_tables_initialize._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"init_clock_voltage_dependency failed\00", [59 x i8] zeroinitializer }, align 32
@pp_tables_initialize._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pp_tables_initialize._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_initialize, ptr @.str.2, i32 1739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_initialize._entry_ptr.23 = internal global ptr @pp_tables_initialize._entry.22, section ".printk_index", align 4
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"init_dpm2_parameters failed\00", [36 x i8] zeroinitializer }, align 32
@pp_tables_initialize._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pp_tables_initialize._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_initialize, ptr @.str.2, i32 1744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_initialize._entry_ptr.27 = internal global ptr @pp_tables_initialize._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"init_phase_shedding_table failed\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 26530, i64 26537, i64 26553]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 854, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"pptable_funcs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1802, i32 28 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"soft_dummy_pp_table\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 791, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant [8 x i8] c"look_up\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 714, i32 24 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1711, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1717, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1722, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1727, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1733, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1738, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [70 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1743, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @pp_tables_get_response_times._entry, ptr @pp_tables_get_response_times._entry_ptr, ptr @pp_tables_initialize._entry, ptr @pp_tables_initialize._entry.10, ptr @pp_tables_initialize._entry.14, ptr @pp_tables_initialize._entry.18, ptr @pp_tables_initialize._entry.22, ptr @pp_tables_initialize._entry.26, ptr @pp_tables_initialize._entry.6, ptr @pp_tables_initialize._entry_ptr, ptr @pp_tables_initialize._entry_ptr.11, ptr @pp_tables_initialize._entry_ptr.15, ptr @pp_tables_initialize._entry_ptr.19, ptr @pp_tables_initialize._entry_ptr.23, ptr @pp_tables_initialize._entry_ptr.27, ptr @pp_tables_initialize._entry_ptr.7, ptr @pp_tables_get_response_times._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pptable_funcs, ptr @soft_dummy_pp_table, ptr @init_non_clock_fields.look_up, ptr @pp_tables_initialize._rs.17, ptr @.str.20, ptr @pp_tables_initialize._rs.21, ptr @.str.24, ptr @pp_tables_initialize._rs.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_get_response_times._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_get_response_times._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptable_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_dummy_pp_table to i32), i32 481, i32 608, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_non_clock_fields.look_up to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_initialize._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_initialize._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_initialize._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_initialize._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_initialize._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_initialize._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_initialize._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_initialize._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_initialize._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pp_tables_get_response_times(ptr nocapture noundef %hwmgr, ptr nocapture noundef writeonly %vol_rep_time, ptr nocapture noundef writeonly %bb_rep_time) local_unnamed_addr #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %0 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_pp_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #8
  %2 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #8
  %3 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #8
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size.i, align 2, !annotation !60
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %get_powerplay_table.exit.thread

get_powerplay_table.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  br label %do.end7

if.then.i:                                        ; preds = %entry
  %chip_id.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %5 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %6)
  %cmp.i = icmp eq i32 %6, 22
  br i1 %cmp.i, label %get_powerplay_table.exit.thread14, label %get_powerplay_table.exit

get_powerplay_table.exit.thread14:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @soft_dummy_pp_table, ptr %soft_pp_table.i, align 4
  %soft_pp_table_size.i17 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %8 = ptrtoint ptr %soft_pp_table_size.i17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 481, ptr %soft_pp_table_size.i17, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  br label %do.end7

get_powerplay_table.exit:                         ; preds = %if.then.i
  %9 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %10, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #8
  %11 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %13 to i32
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %14 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %soft_pp_table_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %if.then, label %get_powerplay_table.exit.do.end7_crit_edge

get_powerplay_table.exit.do.end7_crit_edge:       ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %get_powerplay_table.exit
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @pp_tables_get_response_times._rs, ptr noundef nonnull @__func__.pp_tables_get_response_times) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.end7:                                          ; preds = %get_powerplay_table.exit.do.end7_crit_edge, %get_powerplay_table.exit.thread14, %get_powerplay_table.exit.thread
  %table_addr.0.i13 = phi ptr [ %1, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.do.end7_crit_edge ], [ @soft_dummy_pp_table, %get_powerplay_table.exit.thread14 ]
  %usVoltageTime = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i13, i32 0, i32 10
  %15 = ptrtoint ptr %usVoltageTime to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %usVoltageTime, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv = zext i16 %17 to i32
  %18 = ptrtoint ptr %vol_rep_time to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %vol_rep_time, align 4
  %usBackbiasTime = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i13, i32 0, i32 9
  %19 = ptrtoint ptr %usBackbiasTime to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usBackbiasTime, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %conv8 = zext i16 %21 to i32
  %22 = ptrtoint ptr %bb_rep_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv8, ptr %bb_rep_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end7 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ]
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
define dso_local i32 @pp_tables_get_num_of_entries(ptr nocapture noundef %hwmgr, ptr nocapture noundef writeonly %num_of_entries) local_unnamed_addr #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %0 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_pp_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #8
  %2 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #8
  %3 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #8
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size.i, align 2, !annotation !60
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %get_powerplay_table.exit.thread

get_powerplay_table.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %chip_id.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %5 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %6)
  %cmp.i = icmp eq i32 %6, 22
  br i1 %cmp.i, label %get_powerplay_table.exit.thread17, label %get_powerplay_table.exit

get_powerplay_table.exit.thread17:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @soft_dummy_pp_table, ptr %soft_pp_table.i, align 4
  %soft_pp_table_size.i20 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %8 = ptrtoint ptr %soft_pp_table_size.i20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 481, ptr %soft_pp_table_size.i20, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  br label %if.end

get_powerplay_table.exit:                         ; preds = %if.then.i
  %9 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %10, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #8
  %11 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %13 to i32
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %14 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %soft_pp_table_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %get_powerplay_table.exit.cleanup_crit_edge, label %get_powerplay_table.exit.if.end_crit_edge

get_powerplay_table.exit.if.end_crit_edge:        ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

get_powerplay_table.exit.cleanup_crit_edge:       ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %get_powerplay_table.exit.if.end_crit_edge, %get_powerplay_table.exit.thread17, %get_powerplay_table.exit.thread
  %table_addr.0.i16 = phi ptr [ %1, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.if.end_crit_edge ], [ @soft_dummy_pp_table, %get_powerplay_table.exit.thread17 ]
  %ucTableFormatRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %table_addr.0.i16, i32 0, i32 1
  %15 = ptrtoint ptr %ucTableFormatRevision to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ucTableFormatRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp1 = icmp ugt i8 %16, 5
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %table_addr.0.i16 to i32
  %usStateArrayOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i16, i32 0, i32 6
  %18 = ptrtoint ptr %usStateArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %usStateArrayOffset, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %conv4 = zext i16 %20 to i32
  %add = add i32 %conv4, %17
  %21 = inttoptr i32 %add to ptr
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ucNumStates = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i16, i32 0, i32 2
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %storemerge.in.in = phi ptr [ %ucNumStates, %if.else ], [ %21, %if.then3 ]
  %22 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load1_noabort(i32 %22)
  %storemerge.in = load i8, ptr %storemerge.in.in, align 1
  %storemerge = zext i8 %storemerge.in to i32
  %23 = ptrtoint ptr %num_of_entries to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge, ptr %num_of_entries, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %get_powerplay_table.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -1, %get_powerplay_table.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pp_tables_get_entry(ptr noundef %hwmgr, i32 noundef %entry_index, ptr noundef %ps, ptr nocapture noundef readonly %func) local_unnamed_addr #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %0 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_pp_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #8
  %2 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #8
  %3 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #8
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size.i, align 2, !annotation !60
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %get_powerplay_table.exit.thread

get_powerplay_table.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %chip_id.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %5 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %6)
  %cmp.i = icmp eq i32 %6, 22
  br i1 %cmp.i, label %get_powerplay_table.exit.thread170, label %get_powerplay_table.exit

get_powerplay_table.exit.thread170:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @soft_dummy_pp_table, ptr %soft_pp_table.i, align 4
  %soft_pp_table_size.i173 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %8 = ptrtoint ptr %soft_pp_table_size.i173 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 481, ptr %soft_pp_table_size.i173, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  br label %if.end

get_powerplay_table.exit:                         ; preds = %if.then.i
  %9 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %10, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #8
  %11 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %13 to i32
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %14 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %soft_pp_table_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %get_powerplay_table.exit.cleanup_crit_edge, label %get_powerplay_table.exit.if.end_crit_edge

get_powerplay_table.exit.if.end_crit_edge:        ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

get_powerplay_table.exit.cleanup_crit_edge:       ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %get_powerplay_table.exit.if.end_crit_edge, %get_powerplay_table.exit.thread170, %get_powerplay_table.exit.thread
  %table_addr.0.i169 = phi ptr [ %1, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.if.end_crit_edge ], [ @soft_dummy_pp_table, %get_powerplay_table.exit.thread170 ]
  %bios_index = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %bios_index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %entry_index, ptr %bios_index, align 4
  %ucTableFormatRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %table_addr.0.i169, i32 0, i32 1
  %16 = ptrtoint ptr %ucTableFormatRevision to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ucTableFormatRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %17)
  %cmp1 = icmp ugt i8 %17, 5
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %18 = ptrtoint ptr %table_addr.0.i169 to i32
  %usStateArrayOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i169, i32 0, i32 6
  %19 = ptrtoint ptr %usStateArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usStateArrayOffset, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %conv4 = zext i16 %21 to i32
  %add = add i32 %conv4, %18
  %22 = inttoptr i32 %add to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv5 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %entry_index)
  %cmp6 = icmp ult i32 %conv5, %entry_index
  br i1 %cmp6, label %if.then3.cleanup_crit_edge, label %if.end9

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %states.i = getelementptr inbounds %struct._StateArray, ptr %22, i32 0, i32 1
  %25 = add i32 %entry_index, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv5)
  %26 = icmp ult i32 %25, %conv5
  br i1 %26, label %if.end9.for.body.i_crit_edge, label %if.end9.get_state_entry_v2.exit_crit_edge

if.end9.get_state_entry_v2.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_state_entry_v2.exit

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %pstate.012.i = phi ptr [ %30, %for.body.i.for.body.i_crit_edge ], [ %states.i, %if.end9.for.body.i_crit_edge ]
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %pstate.012.i to i32
  %28 = ptrtoint ptr %pstate.012.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pstate.012.i, align 1
  %conv4.i = zext i8 %29 to i32
  %add.i.i = add i32 %27, 2
  %add.i = add i32 %add.i.i, %conv4.i
  %30 = inttoptr i32 %add.i to ptr
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %entry_index
  br i1 %exitcond.not.i, label %get_state_entry_v2.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

get_state_entry_v2.exit.loopexit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = inttoptr i32 %add.i to ptr
  br label %get_state_entry_v2.exit

get_state_entry_v2.exit:                          ; preds = %get_state_entry_v2.exit.loopexit, %if.end9.get_state_entry_v2.exit_crit_edge
  %pstate.1.i = phi ptr [ %states.i, %if.end9.get_state_entry_v2.exit_crit_edge ], [ %31, %get_state_entry_v2.exit.loopexit ]
  %usClockInfoArrayOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i169, i32 0, i32 7
  %32 = ptrtoint ptr %usClockInfoArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %usClockInfoArrayOffset, align 1
  %usNonClockInfoArrayOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i169, i32 0, i32 8
  %34 = ptrtoint ptr %usNonClockInfoArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %usNonClockInfoArrayOffset, align 1
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %conv13 = zext i16 %36 to i32
  %add14 = add i32 %conv13, %18
  %37 = inttoptr i32 %add14 to ptr
  %nonClockInfo = getelementptr inbounds %struct._NonClockInfoArray, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %nonClockInfo to i32
  %nonClockInfoIndex = getelementptr inbounds %struct._ATOM_PPLIB_STATE_V2, ptr %pstate.1.i, i32 0, i32 1
  %39 = ptrtoint ptr %nonClockInfoIndex to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nonClockInfoIndex, align 1
  %conv15 = zext i8 %40 to i32
  %ucEntrySize = getelementptr inbounds %struct._NonClockInfoArray, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %ucEntrySize to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ucEntrySize, align 1
  %conv16 = zext i8 %42 to i32
  %mul = mul nuw nsw i32 %conv16, %conv15
  %add17 = add i32 %mul, %38
  %43 = inttoptr i32 %add17 to ptr
  call fastcc void @init_non_clock_fields(ptr noundef %ps, i8 noundef zeroext %42, ptr noundef %43)
  %44 = ptrtoint ptr %pstate.1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pstate.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp21182.not = icmp eq i8 %45, 0
  br i1 %cmp21182.not, label %get_state_entry_v2.exit.land.lhs.true87_crit_edge, label %for.body.lr.ph

get_state_entry_v2.exit.land.lhs.true87_crit_edge: ; preds = %get_state_entry_v2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true87

for.body.lr.ph:                                   ; preds = %get_state_entry_v2.exit
  %46 = call i16 @llvm.bswap.i16(i16 %33)
  %conv11 = zext i16 %46 to i32
  %add12 = add i32 %conv11, %18
  %47 = inttoptr i32 %add12 to ptr
  %clockInfo = getelementptr inbounds %struct._ClockInfoArray, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %clockInfo to i32
  %ucEntrySize25 = getelementptr inbounds %struct._ClockInfoArray, ptr %47, i32 0, i32 1
  %hardware = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %result.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %result.1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct._ATOM_PPLIB_STATE_V2, ptr %pstate.1.i, i32 0, i32 2, i32 %i.0184
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx, align 1
  %conv24 = zext i8 %50 to i32
  %51 = ptrtoint ptr %ucEntrySize25 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ucEntrySize25, align 1
  %conv26 = zext i8 %52 to i32
  %mul27 = mul nuw nsw i32 %conv26, %conv24
  %add28 = add i32 %mul27, %48
  %53 = inttoptr i32 %add28 to ptr
  %call29 = call i32 %func(ptr noundef %hwmgr, ptr noundef %hardware, i32 noundef %i.0184, ptr noundef %53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0183)
  %cmp30 = icmp eq i32 %result.0183, 0
  %result.1 = select i1 %cmp30, i32 %call29, i32 %result.0183
  %inc = add nuw nsw i32 %i.0184, 1
  %54 = ptrtoint ptr %pstate.1.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pstate.1.i, align 1
  %conv20 = zext i8 %55 to i32
  %cmp21 = icmp ult i32 %inc, %conv20
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.body.if.end84_crit_edge

for.body.if.end84_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.else:                                          ; preds = %if.end
  %ucNumStates = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i169, i32 0, i32 2
  %56 = ptrtoint ptr %ucNumStates to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ucNumStates, align 1
  %conv36 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv36, i32 %entry_index)
  %cmp37 = icmp ult i32 %conv36, %entry_index
  br i1 %cmp37, label %if.else.cleanup_crit_edge, label %if.end40

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.else
  %58 = ptrtoint ptr %table_addr.0.i169 to i32
  %usStateArrayOffset41 = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i169, i32 0, i32 6
  %59 = ptrtoint ptr %usStateArrayOffset41 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %usStateArrayOffset41, align 1
  %61 = call i16 @llvm.bswap.i16(i16 %60)
  %conv42 = zext i16 %61 to i32
  %add43 = add i32 %conv42, %58
  %ucStateEntrySize = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i169, i32 0, i32 3
  %62 = ptrtoint ptr %ucStateEntrySize to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ucStateEntrySize, align 1
  %conv44 = zext i8 %63 to i32
  %mul45 = mul i32 %conv44, %entry_index
  %add46 = add i32 %add43, %mul45
  %64 = inttoptr i32 %add46 to ptr
  %usNonClockInfoArrayOffset47 = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i169, i32 0, i32 8
  %65 = ptrtoint ptr %usNonClockInfoArrayOffset47 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %usNonClockInfoArrayOffset47, align 1
  %67 = call i16 @llvm.bswap.i16(i16 %66)
  %conv48 = zext i16 %67 to i32
  %add49 = add i32 %conv48, %58
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %64, align 1
  %conv50 = zext i8 %69 to i32
  %ucNonClockSize = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i169, i32 0, i32 5
  %70 = ptrtoint ptr %ucNonClockSize to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ucNonClockSize, align 1
  %conv51 = zext i8 %71 to i32
  %mul52 = mul nuw nsw i32 %conv51, %conv50
  %add53 = add i32 %add49, %mul52
  %72 = inttoptr i32 %add53 to ptr
  call fastcc void @init_non_clock_fields(ptr noundef %ps, i8 noundef zeroext %71, ptr noundef %72)
  %73 = ptrtoint ptr %ucStateEntrySize to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ucStateEntrySize, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp59178 = icmp ugt i8 %74, 1
  br i1 %cmp59178, label %for.body61.lr.ph, label %if.end40.land.lhs.true87_crit_edge

if.end40.land.lhs.true87_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true87

for.body61.lr.ph:                                 ; preds = %if.end40
  %usClockInfoArrayOffset63 = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i169, i32 0, i32 7
  %ucClockInfoSize = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i169, i32 0, i32 4
  %hardware72 = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 11
  br label %for.body61

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.body61.lr.ph
  %i.1180 = phi i32 [ 0, %for.body61.lr.ph ], [ %inc82, %for.body61.for.body61_crit_edge ]
  %result.2179 = phi i32 [ 0, %for.body61.lr.ph ], [ %result.3, %for.body61.for.body61_crit_edge ]
  %75 = ptrtoint ptr %usClockInfoArrayOffset63 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %usClockInfoArrayOffset63, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76)
  %conv64 = zext i16 %77 to i32
  %add65 = add i32 %conv64, %58
  %arrayidx66 = getelementptr %struct._ATOM_PPLIB_STATE, ptr %64, i32 0, i32 1, i32 %i.1180
  %78 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %79 to i32
  %80 = ptrtoint ptr %ucClockInfoSize to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ucClockInfoSize, align 1
  %conv68 = zext i8 %81 to i32
  %mul69 = mul nuw nsw i32 %conv68, %conv67
  %add70 = add i32 %add65, %mul69
  %82 = inttoptr i32 %add70 to ptr
  %call73 = call i32 %func(ptr noundef %hwmgr, ptr noundef %hardware72, i32 noundef %i.1180, ptr noundef %82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.2179)
  %cmp74 = icmp eq i32 %result.2179, 0
  %result.3 = select i1 %cmp74, i32 %call73, i32 %result.2179
  %inc82 = add nuw nsw i32 %i.1180, 1
  %83 = ptrtoint ptr %ucStateEntrySize to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ucStateEntrySize, align 1
  %conv58 = zext i8 %84 to i32
  %sub = add nsw i32 %conv58, -1
  %cmp59 = icmp slt i32 %inc82, %sub
  br i1 %cmp59, label %for.body61.for.body61_crit_edge, label %for.body61.if.end84_crit_edge

for.body61.if.end84_crit_edge:                    ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body61

if.end84:                                         ; preds = %for.body61.if.end84_crit_edge, %for.body.if.end84_crit_edge
  %result.4 = phi i32 [ %result.1, %for.body.if.end84_crit_edge ], [ %result.3, %for.body61.if.end84_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.4)
  %cmp85 = icmp eq i32 %result.4, 0
  br i1 %cmp85, label %if.end84.land.lhs.true87_crit_edge, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84.land.lhs.true87_crit_edge:               ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true87

land.lhs.true87:                                  ; preds = %if.end84.land.lhs.true87_crit_edge, %if.end40.land.lhs.true87_crit_edge, %get_state_entry_v2.exit.land.lhs.true87_crit_edge
  %flags = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 4
  %and = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp89.not = icmp eq i32 %and, 0
  br i1 %cmp89.not, label %land.lhs.true87.cleanup_crit_edge, label %if.then91

land.lhs.true87.cleanup_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then91:                                        ; preds = %land.lhs.true87
  %chip_family = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 1
  %87 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 142, i32 %88)
  %cmp92 = icmp ult i32 %88, 142
  br i1 %cmp92, label %if.then94, label %if.then91.cleanup_crit_edge

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %89 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hwmgr_func, align 4
  %patch_boot_state = getelementptr inbounds %struct.pp_hwmgr_func, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %patch_boot_state to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %patch_boot_state, align 4
  %hardware95 = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 11
  %call96 = call i32 %92(ptr noundef %hwmgr, ptr noundef %hardware95) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %if.then91.cleanup_crit_edge, %land.lhs.true87.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %get_powerplay_table.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %get_powerplay_table.exit.cleanup_crit_edge ], [ -1, %if.then3.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ %call96, %if.then94 ], [ 0, %if.then91.cleanup_crit_edge ], [ 0, %land.lhs.true87.cleanup_crit_edge ], [ %result.4, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @init_non_clock_fields(ptr noundef writeonly %ps, i8 noundef zeroext %version, ptr nocapture noundef readonly %pnon_clock_info) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pnon_clock_info to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %pnon_clock_info, align 1
  %2 = lshr i16 %1, 8
  %3 = and i16 %2, 7
  %and = zext i16 %3 to i32
  %classification = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 3
  %4 = ptrtoint ptr %classification to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %classification, align 4
  %5 = load i16, ptr %pnon_clock_info, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %usClassification2 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %pnon_clock_info, i32 0, i32 5
  %7 = ptrtoint ptr %usClassification2 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %usClassification2, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv.i = zext i16 %6 to i32
  %and.i = lshr i32 %conv.i, 3
  %10 = and i32 %and.i, 31
  %and26.i = lshr i32 %conv.i, 1
  %11 = and i32 %and26.i, 128
  %12 = or i32 %10, %11
  %13 = and i32 %and26.i, 256
  %14 = or i32 %12, %13
  %15 = and i32 %and26.i, 512
  %16 = or i32 %14, %15
  %17 = and i32 %and26.i, 8192
  %18 = or i32 %16, %17
  %19 = and i32 %and26.i, 16384
  %20 = or i32 %18, %19
  %21 = and i32 %and26.i, 4096
  %22 = or i32 %20, %21
  %23 = and i32 %and26.i, 2048
  %24 = or i32 %22, %23
  %conv67.i = zext i16 %9 to i32
  %and68.i = shl i32 %conv67.i, 18
  %25 = and i32 %and68.i, 262144
  %26 = or i32 %24, %25
  %27 = and i32 %and68.i, 524288
  %28 = or i32 %26, %27
  %29 = and i32 %and68.i, 1048576
  %30 = or i32 %28, %29
  %flags = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %flags, align 4
  %temporary_state = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %temporary_state to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %temporary_state, align 4
  %to_be_deleted = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %to_be_deleted to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %to_be_deleted, align 1
  %ulCapsAndSettings = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %pnon_clock_info, i32 0, i32 3
  %34 = ptrtoint ptr %ulCapsAndSettings to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %ulCapsAndSettings, align 1
  %validation = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 4
  %36 = lshr i32 %35, 24
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = ptrtoint ptr %validation to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %validation, align 4
  %40 = load i32, ptr %ulCapsAndSettings, align 1
  %disallowOnDC = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 4, i32 1
  %41 = lshr i32 %40, 22
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  %44 = ptrtoint ptr %disallowOnDC to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %disallowOnDC, align 1
  %pcie = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 5
  %45 = ptrtoint ptr %pcie to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %pcie, align 4
  %display = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 6
  %46 = ptrtoint ptr %display to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %display, align 4
  %47 = load i32, ptr %ulCapsAndSettings, align 1
  %48 = lshr i32 %47, 16
  %and19 = and i32 %48, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp21.not = icmp eq i32 %and19, 0
  br i1 %cmp21.not, label %entry.if.end36_crit_edge, label %if.then

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %refreshrateSource = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 6, i32 2
  %49 = ptrtoint ptr %refreshrateSource to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %refreshrateSource, align 4
  %arrayidx = getelementptr [16 x i8], ptr @init_non_clock_fields.look_up, i32 0, i32 %and19
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx, align 1
  %conv24 = zext i8 %51 to i32
  %explicitRefreshrate = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 6, i32 3
  %52 = ptrtoint ptr %explicitRefreshrate to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv24, ptr %explicitRefreshrate, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp29 = icmp ne i8 %51, 0
  %spec.store.select = zext i1 %cmp29 to i8
  br label %if.end36

if.end36:                                         ; preds = %if.then, %entry.if.end36_crit_edge
  %spec.store.select.sink = phi i8 [ %spec.store.select, %if.then ], [ 0, %entry.if.end36_crit_edge ]
  %53 = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 6, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %spec.store.select.sink, ptr %53, align 1
  %55 = ptrtoint ptr %ulCapsAndSettings to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %ulCapsAndSettings, align 1
  %enableVariBright = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 6, i32 5
  %57 = lshr i32 %56, 23
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = ptrtoint ptr %enableVariBright to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %enableVariBright, align 4
  %61 = load i32, ptr %ulCapsAndSettings, align 1
  %memory = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 7
  %62 = lshr i32 %61, 8
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  %65 = ptrtoint ptr %memory to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %memory, align 4
  %66 = load i32, ptr %ulCapsAndSettings, align 1
  %67 = lshr i32 %66, 9
  %68 = trunc i32 %67 to i8
  %conv51 = and i8 %68, 3
  %m3arb = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 7, i32 1
  %69 = ptrtoint ptr %m3arb to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv51, ptr %m3arb, align 1
  %ucMinTemperature = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %pnon_clock_info, i32 0, i32 1
  %70 = ptrtoint ptr %ucMinTemperature to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ucMinTemperature, align 1
  %conv53 = zext i8 %71 to i32
  %mul = mul nuw nsw i32 %conv53, 1000
  %temperatures = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 8
  %72 = ptrtoint ptr %temperatures to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul, ptr %temperatures, align 4
  %ucMaxTemperature = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %pnon_clock_info, i32 0, i32 2
  %73 = ptrtoint ptr %ucMaxTemperature to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ucMaxTemperature, align 1
  %conv54 = zext i8 %74 to i32
  %mul55 = mul nuw nsw i32 %conv54, 1000
  %max = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 8, i32 1
  %75 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mul55, ptr %max, align 4
  %76 = load i32, ptr %ulCapsAndSettings, align 1
  %software = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 9
  %77 = lshr i32 %76, 20
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = ptrtoint ptr %software to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %software, align 4
  %81 = load i32, ptr %ulCapsAndSettings, align 1
  %enableSleepForTimestamps = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 9, i32 1
  %82 = lshr i32 %81, 21
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = ptrtoint ptr %enableSleepForTimestamps to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %enableSleepForTimestamps, align 1
  %ucRequiredPower = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %pnon_clock_info, i32 0, i32 4
  %86 = ptrtoint ptr %ucRequiredPower to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ucRequiredPower, align 1
  %supportedPowerLevels = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 4, i32 2
  %88 = ptrtoint ptr %supportedPowerLevels to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %supportedPowerLevels, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %version)
  %cmp68 = icmp ugt i8 %version, 12
  br i1 %cmp68, label %if.then70, label %if.else72

if.then70:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %ulVCLK = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %pnon_clock_info, i32 0, i32 6
  %89 = ptrtoint ptr %ulVCLK to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %ulVCLK, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %uvd_clocks = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 10
  %92 = ptrtoint ptr %uvd_clocks to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %uvd_clocks, align 4
  %ulDCLK = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %pnon_clock_info, i32 0, i32 7
  %93 = ptrtoint ptr %ulDCLK to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %ulDCLK, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  br label %if.end77

if.else72:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %uvd_clocks73 = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 10
  %96 = ptrtoint ptr %uvd_clocks73 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %uvd_clocks73, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.else72, %if.then70
  %.sink = phi i32 [ %95, %if.then70 ], [ 0, %if.else72 ]
  %97 = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 10, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %.sink, ptr %97, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_tables_initialize(ptr noundef %hwmgr) #0 align 64 {
entry:
  %frev.i144 = alloca i8, align 1
  %crev.i145 = alloca i8, align 1
  %size.i146 = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %1)
  %cmp = icmp eq i32 %1, 22
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %need_pp_table_upload = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 15
  %2 = ptrtoint ptr %need_pp_table_upload to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %need_pp_table_upload, align 4
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %3 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soft_pp_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #8
  %5 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %frev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #8
  %6 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %crev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #8
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %size.i, align 2, !annotation !60
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end5.sink.split.i, label %if.end.get_powerplay_table.exit_crit_edge

if.end.get_powerplay_table.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_powerplay_table.exit

if.end5.sink.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %9, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #8
  %10 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %12 to i32
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %13 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %soft_pp_table_size.i, align 4
  br label %get_powerplay_table.exit

get_powerplay_table.exit:                         ; preds = %if.end5.sink.split.i, %if.end.get_powerplay_table.exit_crit_edge
  %table_addr.0.i = phi ptr [ %4, %if.end.get_powerplay_table.exit_crit_edge ], [ %call.i, %if.end5.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  %ulPlatformCaps = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i, i32 0, i32 12
  %14 = ptrtoint ptr %ulPlatformCaps to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %ulPlatformCaps, align 1
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %and.i = and i32 %16, 2
  %platform_descriptor.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %17 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %18, -319032355
  %storemerge.i = or i32 %and1.i.i.i, %and.i
  %and1.i = shl i32 %16, 3
  %19 = and i32 %and1.i, 32
  %storemerge193.i = or i32 %storemerge.i, %19
  %and3.i = shl i32 %16, 7
  %20 = and i32 %and3.i, 1024
  %storemerge194.i = or i32 %storemerge193.i, %20
  %21 = and i32 %and3.i, 2048
  %storemerge195.i = or i32 %storemerge194.i, %21
  %and7.i = shl i32 %16, 18
  %22 = and i32 %and7.i, 262144
  %and9.i = shl i32 %16, 19
  %23 = and i32 %and9.i, 16777216
  %24 = and i32 %and9.i, 33554432
  %and1.i.i28.masked.masked.i = or i32 %storemerge195.i, %22
  %and1.i.i34.masked.i = or i32 %and1.i.i28.masked.masked.i, %23
  %and1.i.i40.i = or i32 %and1.i.i34.masked.i, %24
  %and13.i = shl i32 %16, 21
  %25 = and i32 %and13.i, 268435456
  %storemerge199.i = or i32 %and1.i.i40.i, %25
  store i32 %storemerge199.i, ptr %platform_descriptor.i.i, align 4
  %arrayidx.i8.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i8.i.i, align 4
  %and1.i.i46.i = and i32 %27, -415236124
  %and15.i = lshr i32 %16, 8
  %and19.i = lshr i32 %16, 7
  %28 = and i32 %and19.i, 8
  %29 = and i32 %and19.i, 16
  %and23.i = shl i32 %16, 10
  %30 = and i32 %and23.i, 4194304
  %and25.i = shl i32 %16, 8
  %31 = and i32 %and25.i, 8388608
  %or.i.i44.sink.i = and i32 %and15.i, 3
  %or.i.i51.sink.i = or i32 %or.i.i44.sink.i, %28
  %or.i.i59.sink.i = or i32 %or.i.i51.sink.i, %29
  %or.i.i67.sink.i = or i32 %or.i.i59.sink.i, %30
  %and1.i.i86.i = or i32 %or.i.i67.sink.i, %31
  %arrayidx.i8.i93.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx.i8.i93.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i8.i93.i, align 4
  %and1.i.i94.i = and i32 %33, -13
  %and27.i = lshr i32 %16, 14
  %34 = and i32 %and27.i, 4
  %or.i.i91.sink.i = or i32 %and1.i.i94.i, %34
  %and1.i.i102.i = or i32 %and1.i.i86.i, %and1.i.i46.i
  %and29.i = shl i32 %16, 14
  %or.i.i99.sink.i = and i32 %and29.i, 402653184
  %or.i.i107.sink.i = or i32 %or.i.i99.sink.i, %and1.i.i102.i
  store i32 %or.i.i107.sink.i, ptr %arrayidx.i8.i.i, align 4
  %35 = and i32 %and27.i, 8
  %or.i.i115.sink.i = or i32 %or.i.i91.sink.i, %35
  store i32 %or.i.i115.sink.i, ptr %arrayidx.i8.i93.i, align 4
  %arrayidx.i8.i125.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx.i8.i125.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i8.i125.i, align 4
  %and1.i.i126.i = and i32 %37, -16385
  %and35.i = lshr i32 %16, 4
  %38 = and i32 %and35.i, 16384
  %or.i.i123.sink.i = or i32 %and1.i.i126.i, %38
  store i32 %or.i.i123.sink.i, ptr %arrayidx.i8.i125.i, align 4
  %arrayidx.i8.i133.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %39 = ptrtoint ptr %arrayidx.i8.i133.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i8.i133.i, align 4
  %and1.i.i134.i = and i32 %40, -536897933
  %and37.i = lshr i32 %16, 17
  %41 = and i32 %and27.i, 128
  %42 = and i32 %and27.i, 256
  %and45.i = lshr i32 %16, 12
  %43 = and i32 %and45.i, 2048
  %and47.i = lshr i32 %16, 11
  %44 = and i32 %and47.i, 8192
  %and49.i = shl i32 %16, 4
  %45 = and i32 %and49.i, 536870912
  %46 = and i32 %and45.i, 16384
  %or.i.i131.sink.i = and i32 %and37.i, 12
  %or.i.i139.sink.i = or i32 %or.i.i131.sink.i, %41
  %or.i.i147.sink.i = or i32 %or.i.i139.sink.i, %42
  %or.i.i155.sink.i = or i32 %or.i.i147.sink.i, %43
  %and1.i.i174.masked.masked.i = or i32 %or.i.i155.sink.i, %44
  %and1.i.i182.masked.i = or i32 %and1.i.i174.masked.masked.i, %45
  %and1.i.i190.i = or i32 %and1.i.i182.masked.i, %46
  %or.i.i187.sink.i = or i32 %and1.i.i190.i, %and1.i.i134.i
  store i32 %or.i.i187.sink.i, ptr %arrayidx.i8.i133.i, align 4
  %47 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hwmgr, align 4
  %sThermalController.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i, i32 0, i32 13
  %49 = ptrtoint ptr %sThermalController.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sThermalController.i, align 1
  %thermal_controller.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34
  %51 = ptrtoint ptr %thermal_controller.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %thermal_controller.i, align 4
  %ucI2cLine.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i, i32 0, i32 13, i32 1
  %52 = ptrtoint ptr %ucI2cLine.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ucI2cLine.i, align 1
  %ucI2cLine5.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 1
  %54 = ptrtoint ptr %ucI2cLine5.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %ucI2cLine5.i, align 1
  %ucI2cAddress.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i, i32 0, i32 13, i32 2
  %55 = ptrtoint ptr %ucI2cAddress.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ucI2cAddress.i, align 1
  %ucI2cAddress8.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 2
  %57 = ptrtoint ptr %ucI2cAddress8.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %ucI2cAddress8.i, align 2
  %ucFanParameters.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i, i32 0, i32 13, i32 3
  %58 = ptrtoint ptr %ucFanParameters.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ucFanParameters.i, align 1
  %fanInfo.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %.lobit.i = lshr i8 %59, 7
  %60 = ptrtoint ptr %fanInfo.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %.lobit.i, ptr %fanInfo.i, align 4
  %61 = load i8, ptr %ucFanParameters.i, align 1
  %62 = and i8 %61, 15
  %ucTachometerPulsesPerRevolution.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 1
  %63 = ptrtoint ptr %ucTachometerPulsesPerRevolution.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %ucTachometerPulsesPerRevolution.i, align 1
  %ucFanMinRPM.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i, i32 0, i32 13, i32 4
  %64 = ptrtoint ptr %ucFanMinRPM.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ucFanMinRPM.i, align 1
  %conv20.i = zext i8 %65 to i32
  %mul.i = mul nuw nsw i32 %conv20.i, 100
  %ulMinRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 2
  %66 = ptrtoint ptr %ulMinRPM.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul.i, ptr %ulMinRPM.i, align 4
  %ucFanMaxRPM.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i, i32 0, i32 13, i32 5
  %67 = ptrtoint ptr %ucFanMaxRPM.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ucFanMaxRPM.i, align 1
  %conv24.i = zext i8 %68 to i32
  %mul25.i = mul nuw nsw i32 %conv24.i, 100
  %ulMaxRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 3
  %69 = ptrtoint ptr %ulMaxRPM.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul25.i, ptr %ulMaxRPM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp31.not.i = icmp eq i8 %50, 0
  %and1.i.i.i139 = and i32 %storemerge199.i, -17
  %masksel.i = select i1 %cmp31.not.i, i32 0, i32 16
  %storemerge.i140 = or i32 %masksel.i, %and1.i.i.i139
  %70 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %storemerge.i140, ptr %platform_descriptor.i.i, align 4
  %usTableSize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i, i32 0, i32 11
  %71 = ptrtoint ptr %usTableSize.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %usTableSize.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %72)
  %cmp34.i = icmp ugt i16 %72, 45
  br i1 %cmp34.i, label %if.then.i141, label %get_powerplay_table.exit.init_thermal_controller.exit_crit_edge

get_powerplay_table.exit.init_thermal_controller.exit_crit_edge: ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_thermal_controller.exit

if.then.i141:                                     ; preds = %get_powerplay_table.exit
  %usFanTableOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %table_addr.0.i, i32 0, i32 2
  %73 = ptrtoint ptr %usFanTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %usFanTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp37.i = icmp eq i16 %74, 0
  br i1 %cmp37.i, label %if.then39.i, label %if.else.i142

if.then39.i:                                      ; preds = %if.then.i141
  call void @__sanitizer_cov_trace_pc() #10
  %use_hw_fan_control.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 3
  %75 = ptrtoint ptr %use_hw_fan_control.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %use_hw_fan_control.i, align 1
  br label %init_thermal_controller.exit

if.else.i142:                                     ; preds = %if.then.i141
  %76 = call i16 @llvm.bswap.i16(i16 %74) #8
  %conv36.i = zext i16 %76 to i32
  %77 = ptrtoint ptr %table_addr.0.i to i32
  %add.i = add i32 %conv36.i, %77
  %78 = inttoptr i32 %add.i to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp44.not.i = icmp eq i8 %80, 0
  br i1 %cmp44.not.i, label %if.else.i142.init_thermal_controller.exit_crit_edge, label %if.end.i

if.else.i142.init_thermal_controller.exit_crit_edge: ; preds = %if.else.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_thermal_controller.exit

if.end.i:                                         ; preds = %if.else.i142
  %ucTHyst.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %ucTHyst.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ucTHyst.i, align 1
  %advanceFanControlParameters.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5
  %ucTHyst48.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 6
  %83 = ptrtoint ptr %ucTHyst48.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %ucTHyst48.i, align 4
  %usTMin.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %78, i32 0, i32 2
  %84 = ptrtoint ptr %usTMin.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %usTMin.i, align 1
  %86 = call i16 @llvm.bswap.i16(i16 %85) #8
  %87 = ptrtoint ptr %advanceFanControlParameters.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %advanceFanControlParameters.i, align 4
  %usTMed.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %78, i32 0, i32 3
  %88 = ptrtoint ptr %usTMed.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %usTMed.i, align 1
  %90 = call i16 @llvm.bswap.i16(i16 %89) #8
  %usTMed54.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 1
  %91 = ptrtoint ptr %usTMed54.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %usTMed54.i, align 2
  %usTHigh.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %78, i32 0, i32 4
  %92 = ptrtoint ptr %usTHigh.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %usTHigh.i, align 1
  %94 = call i16 @llvm.bswap.i16(i16 %93) #8
  %usTHigh57.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 2
  %95 = ptrtoint ptr %usTHigh57.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %usTHigh57.i, align 4
  %usPWMMin.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %78, i32 0, i32 5
  %96 = ptrtoint ptr %usPWMMin.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %usPWMMin.i, align 1
  %98 = call i16 @llvm.bswap.i16(i16 %97) #8
  %usPWMMin60.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %99 = ptrtoint ptr %usPWMMin60.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %usPWMMin60.i, align 2
  %usPWMMed.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %78, i32 0, i32 6
  %100 = ptrtoint ptr %usPWMMed.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %usPWMMed.i, align 1
  %102 = call i16 @llvm.bswap.i16(i16 %101) #8
  %usPWMMed63.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 4
  %103 = ptrtoint ptr %usPWMMed63.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %usPWMMed63.i, align 4
  %usPWMHigh.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %78, i32 0, i32 7
  %104 = ptrtoint ptr %usPWMHigh.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %usPWMHigh.i, align 1
  %106 = call i16 @llvm.bswap.i16(i16 %105) #8
  %usPWMHigh66.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 5
  %107 = ptrtoint ptr %usPWMHigh66.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %usPWMHigh66.i, align 2
  %usTMax.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %108 = ptrtoint ptr %usTMax.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 10900, ptr %usTMax.i, align 4
  %ulCycleDelay.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 7
  %109 = ptrtoint ptr %ulCycleDelay.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 100000, ptr %ulCycleDelay.i, align 4
  %or.i.i = or i32 %or.i.i107.sink.i, 1073741824
  %110 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or.i.i, ptr %arrayidx.i8.i.i, align 4
  %111 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %111)
  %.pr.i = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i)
  %cmp73.i = icmp ugt i8 %.pr.i, 1
  br i1 %cmp73.i, label %if.end83.i, label %if.end.i.init_thermal_controller.exit_crit_edge

if.end.i.init_thermal_controller.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_thermal_controller.exit

if.end83.i:                                       ; preds = %if.end.i
  %112 = ptrtoint ptr %usFanTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %usFanTableOffset.i, align 1
  %114 = call i16 @llvm.bswap.i16(i16 %113) #8
  %conv77.i = zext i16 %114 to i32
  %add78.i = add i32 %conv77.i, %77
  %115 = inttoptr i32 %add78.i to ptr
  %usTMax79.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE2, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %usTMax79.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %usTMax79.i, align 1
  %118 = call i16 @llvm.bswap.i16(i16 %117) #8
  %119 = ptrtoint ptr %usTMax.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %usTMax.i, align 4
  %120 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %120)
  %.pr6.i = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr6.i)
  %cmp86.i = icmp ugt i8 %.pr6.i, 2
  br i1 %cmp86.i, label %if.then88.i, label %if.end83.i.init_thermal_controller.exit_crit_edge

if.end83.i.init_thermal_controller.exit_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_thermal_controller.exit

if.then88.i:                                      ; preds = %if.end83.i
  %121 = ptrtoint ptr %usFanTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %usFanTableOffset.i, align 1
  %123 = call i16 @llvm.bswap.i16(i16 %122) #8
  %conv90.i = zext i16 %123 to i32
  %add91.i = add i32 %conv90.i, %77
  %124 = inttoptr i32 %add91.i to ptr
  %ucFanControlMode.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE3, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %ucFanControlMode.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ucFanControlMode.i, align 1
  %ucFanControlMode94.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 9
  %127 = ptrtoint ptr %ucFanControlMode94.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %ucFanControlMode94.i, align 2
  %128 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %129)
  %cmp97.i = icmp eq i8 %129, 3
  br i1 %cmp97.i, label %land.lhs.true.i, label %if.then88.i.if.else105.i_crit_edge

if.then88.i.if.else105.i_crit_edge:               ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105.i

land.lhs.true.i:                                  ; preds = %if.then88.i
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %48, i32 0, i32 1
  %130 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 8
  %132 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26545, i16 %133)
  %cmp100.i = icmp eq i16 %133, 26545
  br i1 %cmp100.i, label %land.lhs.true.i.if.end115.i_crit_edge, label %land.lhs.true.i.if.else105.i_crit_edge

land.lhs.true.i.if.else105.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105.i

land.lhs.true.i.if.end115.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.i

if.else105.i:                                     ; preds = %land.lhs.true.i.if.else105.i_crit_edge, %if.then88.i.if.else105.i_crit_edge
  %usFanPWMMax.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE3, ptr %124, i32 0, i32 2
  %134 = ptrtoint ptr %usFanPWMMax.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %usFanPWMMax.i, align 1
  %136 = call i16 @llvm.bswap.i16(i16 %135) #8
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.else105.i, %land.lhs.true.i.if.end115.i_crit_edge
  %.sink.i143 = phi i16 [ %136, %if.else105.i ], [ 47, %land.lhs.true.i.if.end115.i_crit_edge ]
  %usDefaultMaxFanPWM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 13
  %137 = ptrtoint ptr %usDefaultMaxFanPWM.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %.sink.i143, ptr %usDefaultMaxFanPWM.i, align 2
  %usDefaultFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 15
  %138 = ptrtoint ptr %usDefaultFanOutputSensitivity.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 4836, ptr %usDefaultFanOutputSensitivity.i, align 2
  %usFanOutputSensitivity.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE3, ptr %124, i32 0, i32 3
  %139 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %usFanOutputSensitivity.i, align 1
  %141 = call i16 @llvm.bswap.i16(i16 %140) #8
  %usFanOutputSensitivity114.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %142 = ptrtoint ptr %usFanOutputSensitivity114.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %usFanOutputSensitivity114.i, align 4
  %143 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %143)
  %.pr8.pr.i = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.pr8.pr.i)
  %cmp118.i = icmp ugt i8 %.pr8.pr.i, 5
  br i1 %cmp118.i, label %if.end129.i, label %if.end115.i.init_thermal_controller.exit_crit_edge

if.end115.i.init_thermal_controller.exit_crit_edge: ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_thermal_controller.exit

if.end129.i:                                      ; preds = %if.end115.i
  %144 = ptrtoint ptr %usFanTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %usFanTableOffset.i, align 1
  %146 = call i16 @llvm.bswap.i16(i16 %145) #8
  %conv122.i = zext i16 %146 to i32
  %add123.i = add i32 %conv122.i, %77
  %147 = inttoptr i32 %add123.i to ptr
  %or.i2.i = or i32 %or.i.i187.sink.i, 33554432
  %148 = ptrtoint ptr %arrayidx.i8.i133.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or.i2.i, ptr %arrayidx.i8.i133.i, align 4
  %usFanRPMMax.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE4, ptr %147, i32 0, i32 1
  %149 = ptrtoint ptr %usFanRPMMax.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %usFanRPMMax.i, align 1
  %151 = call i16 @llvm.bswap.i16(i16 %150) #8
  %usDefaultMaxFanRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 20
  %152 = ptrtoint ptr %usDefaultMaxFanRPM.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %usDefaultMaxFanRPM.i, align 4
  %153 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %153)
  %.pr10.i = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %.pr10.i)
  %cmp132.i = icmp ugt i8 %.pr10.i, 6
  br i1 %cmp132.i, label %if.then134.i, label %if.end129.i.init_thermal_controller.exit_crit_edge

if.end129.i.init_thermal_controller.exit_crit_edge: ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_thermal_controller.exit

if.then134.i:                                     ; preds = %if.end129.i
  %pdev138.i = getelementptr inbounds %struct.amdgpu_device, ptr %48, i32 0, i32 1
  %154 = ptrtoint ptr %pdev138.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pdev138.i, align 4
  %device139.i = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 8
  %156 = ptrtoint ptr %device139.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %device139.i, align 2
  %158 = zext i16 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values)
  switch i16 %157, label %if.then134.i.init_thermal_controller.exit_crit_edge [
    i16 26530, label %if.then134.i.if.then154.i_crit_edge
    i16 26537, label %if.then134.i.if.then154.i_crit_edge224
    i16 26553, label %if.then134.i.if.then154.i_crit_edge225
  ]

if.then134.i.if.then154.i_crit_edge225:           ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then154.i

if.then134.i.if.then154.i_crit_edge224:           ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then154.i

if.then134.i.if.then154.i_crit_edge:              ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then154.i

if.then134.i.init_thermal_controller.exit_crit_edge: ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_thermal_controller.exit

if.then154.i:                                     ; preds = %if.then134.i.if.then154.i_crit_edge, %if.then134.i.if.then154.i_crit_edge224, %if.then134.i.if.then154.i_crit_edge225
  %159 = ptrtoint ptr %usFanTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %usFanTableOffset.i, align 1
  %161 = call i16 @llvm.bswap.i16(i16 %160) #8
  %conv136.i = zext i16 %161 to i32
  %add137.i = add i32 %conv136.i, %77
  %162 = inttoptr i32 %add137.i to ptr
  %or.i4.i = or i32 %or.i.i187.sink.i, 35651584
  %163 = ptrtoint ptr %arrayidx.i8.i133.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %or.i4.i, ptr %arrayidx.i8.i133.i, align 4
  %usFanCurrentLow.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE5, ptr %162, i32 0, i32 1
  %164 = ptrtoint ptr %usFanCurrentLow.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %usFanCurrentLow.i, align 1
  %166 = call i16 @llvm.bswap.i16(i16 %165) #8
  %usFanCurrentLow160.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 22
  %167 = ptrtoint ptr %usFanCurrentLow160.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %usFanCurrentLow160.i, align 4
  %usFanCurrentHigh.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE5, ptr %162, i32 0, i32 2
  %168 = ptrtoint ptr %usFanCurrentHigh.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 2)
  %169 = load i16, ptr %usFanCurrentHigh.i, align 1
  %170 = call i16 @llvm.bswap.i16(i16 %169) #8
  %usFanCurrentHigh163.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 23
  %171 = ptrtoint ptr %usFanCurrentHigh163.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %170, ptr %usFanCurrentHigh163.i, align 2
  %usFanRPMLow.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE5, ptr %162, i32 0, i32 3
  %172 = ptrtoint ptr %usFanRPMLow.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 2)
  %173 = load i16, ptr %usFanRPMLow.i, align 1
  %174 = call i16 @llvm.bswap.i16(i16 %173) #8
  %usFanRPMLow166.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 24
  %175 = ptrtoint ptr %usFanRPMLow166.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %usFanRPMLow166.i, align 4
  %usFanRPMHigh.i = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE5, ptr %162, i32 0, i32 4
  %176 = ptrtoint ptr %usFanRPMHigh.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 2)
  %177 = load i16, ptr %usFanRPMHigh.i, align 1
  %178 = call i16 @llvm.bswap.i16(i16 %177) #8
  %usFanRPMHigh169.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 25
  %179 = ptrtoint ptr %usFanRPMHigh169.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %usFanRPMHigh169.i, align 2
  br label %init_thermal_controller.exit

init_thermal_controller.exit:                     ; preds = %if.then154.i, %if.then134.i.init_thermal_controller.exit_crit_edge, %if.end129.i.init_thermal_controller.exit_crit_edge, %if.end115.i.init_thermal_controller.exit_crit_edge, %if.end83.i.init_thermal_controller.exit_crit_edge, %if.end.i.init_thermal_controller.exit_crit_edge, %if.else.i142.init_thermal_controller.exit_crit_edge, %if.then39.i, %get_powerplay_table.exit.init_thermal_controller.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i144) #8
  %180 = ptrtoint ptr %frev.i144 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 -1, ptr %frev.i144, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i145) #8
  %181 = ptrtoint ptr %crev.i145 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 -1, ptr %crev.i145, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i146) #8
  %182 = ptrtoint ptr %size.i146 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 -1, ptr %size.i146, align 2, !annotation !60
  %overdriveLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 2
  %183 = ptrtoint ptr %overdriveLimit.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %overdriveLimit.i, align 4
  %memoryClock.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 2, i32 1
  %184 = ptrtoint ptr %memoryClock.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %memoryClock.i, align 4
  %minOverdriveVDDC.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 6
  %185 = ptrtoint ptr %minOverdriveVDDC.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %minOverdriveVDDC.i, align 4
  %maxOverdriveVDDC.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 7
  %186 = ptrtoint ptr %maxOverdriveVDDC.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %maxOverdriveVDDC.i, align 4
  %overdriveVDDCStep.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 8
  %187 = ptrtoint ptr %overdriveVDDCStep.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %overdriveVDDCStep.i, align 4
  %188 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %189)
  %cmp.i148 = icmp eq i32 %189, 22
  br i1 %cmp.i148, label %init_thermal_controller.exit.init_overdrive_limits.exit_crit_edge, label %if.end.i150

init_thermal_controller.exit.init_overdrive_limits.exit_crit_edge: ; preds = %init_thermal_controller.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_overdrive_limits.exit

if.end.i150:                                      ; preds = %init_thermal_controller.exit
  %190 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hwmgr, align 4
  %call.i149 = call ptr @smu_atom_get_data_table(ptr noundef %191, i32 noundef 4, ptr noundef nonnull %size.i146, ptr noundef nonnull %frev.i144, ptr noundef nonnull %crev.i145) #8
  %ucTableFormatRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call.i149, i32 0, i32 1
  %192 = ptrtoint ptr %ucTableFormatRevision.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %ucTableFormatRevision.i, align 1
  %194 = zext i8 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %193, label %if.end.i150.init_overdrive_limits.exit_crit_edge [
    i8 1, label %land.lhs.true.i151
    i8 2, label %land.lhs.true17.i
  ]

if.end.i150.init_overdrive_limits.exit_crit_edge: ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_overdrive_limits.exit

land.lhs.true.i151:                               ; preds = %if.end.i150
  %195 = ptrtoint ptr %call.i149 to i32
  call void @__asan_loadN_noabort(i32 %195, i32 2)
  %196 = load i16, ptr %call.i149, align 1
  %197 = call i16 @llvm.bswap.i16(i16 %196) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 88, i16 %197)
  %cmp9.i = icmp ugt i16 %197, 88
  br i1 %cmp9.i, label %if.then11.i, label %land.lhs.true.i151.init_overdrive_limits.exit_crit_edge

land.lhs.true.i151.init_overdrive_limits.exit_crit_edge: ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_overdrive_limits.exit

if.then11.i:                                      ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #10
  %ulASICMaxEngineClock.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %call.i149, i32 0, i32 9
  %198 = ptrtoint ptr %ulASICMaxEngineClock.i.i to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %199 = load i32, ptr %ulASICMaxEngineClock.i.i, align 1
  %200 = call i32 @llvm.bswap.i32(i32 %199) #8
  %201 = ptrtoint ptr %overdriveLimit.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %overdriveLimit.i, align 4
  %ulASICMaxMemoryClock.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %call.i149, i32 0, i32 10
  %202 = ptrtoint ptr %ulASICMaxMemoryClock.i.i to i32
  call void @__asan_loadN_noabort(i32 %202, i32 4)
  %203 = load i32, ptr %ulASICMaxMemoryClock.i.i, align 1
  %204 = call i32 @llvm.bswap.i32(i32 %203) #8
  %205 = ptrtoint ptr %memoryClock.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %memoryClock.i, align 4
  %ul3DAccelerationEngineClock.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %call.i149, i32 0, i32 16
  %206 = ptrtoint ptr %ul3DAccelerationEngineClock.i.i to i32
  call void @__asan_loadN_noabort(i32 %206, i32 4)
  %207 = load i32, ptr %ul3DAccelerationEngineClock.i.i, align 1
  %208 = and i32 %207, -16318464
  %209 = call i32 @llvm.bswap.i32(i32 %208) #8
  %210 = ptrtoint ptr %maxOverdriveVDDC.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %maxOverdriveVDDC.i, align 4
  %usBootUpVDDCVoltage.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %call.i149, i32 0, i32 13
  %211 = ptrtoint ptr %usBootUpVDDCVoltage.i.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 2)
  %212 = load i16, ptr %usBootUpVDDCVoltage.i.i, align 1
  %213 = call i16 @llvm.bswap.i16(i16 %212) #8
  %conv.i.i = zext i16 %213 to i32
  %214 = ptrtoint ptr %minOverdriveVDDC.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %conv.i.i, ptr %minOverdriveVDDC.i, align 4
  %215 = ptrtoint ptr %usBootUpVDDCVoltage.i.i to i32
  call void @__asan_loadN_noabort(i32 %215, i32 2)
  %216 = load i16, ptr %usBootUpVDDCVoltage.i.i, align 1
  %217 = call i16 @llvm.bswap.i16(i16 %216) #8
  %conv6.i.i = zext i16 %217 to i32
  br label %cleanup.sink.split.i

land.lhs.true17.i:                                ; preds = %if.end.i150
  %218 = ptrtoint ptr %call.i149 to i32
  call void @__asan_loadN_noabort(i32 %218, i32 2)
  %219 = load i16, ptr %call.i149, align 1
  %220 = call i16 @llvm.bswap.i16(i16 %219) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 91, i16 %220)
  %cmp20.i = icmp ugt i16 %220, 91
  br i1 %cmp20.i, label %if.then22.i, label %land.lhs.true17.i.init_overdrive_limits.exit_crit_edge

land.lhs.true17.i.init_overdrive_limits.exit_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_overdrive_limits.exit

if.then22.i:                                      ; preds = %land.lhs.true17.i
  %221 = ptrtoint ptr %usTableSize.i to i32
  call void @__asan_loadN_noabort(i32 %221, i32 2)
  %222 = load i16, ptr %usTableSize.i, align 1
  %223 = call i16 @llvm.bswap.i16(i16 %222) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 46, i16 %223)
  %cmp.i.i = icmp ult i16 %223, 46
  br i1 %cmp.i.i, label %if.then22.i.init_overdrive_limits.exit_crit_edge, label %if.end.i.i

if.then22.i.init_overdrive_limits.exit_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_overdrive_limits.exit

if.end.i.i:                                       ; preds = %if.then22.i
  %usExtendendedHeaderOffset.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %table_addr.0.i, i32 0, i32 3
  %224 = ptrtoint ptr %usExtendendedHeaderOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %224, i32 2)
  %225 = load i16, ptr %usExtendendedHeaderOffset.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %225)
  %cmp3.i.i = icmp eq i16 %225, 0
  br i1 %cmp3.i.i, label %if.end.i.i.init_overdrive_limits.exit_crit_edge, label %if.end6.i.i

if.end.i.i.init_overdrive_limits.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_overdrive_limits.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %226 = ptrtoint ptr %table_addr.0.i to i32
  %227 = call i16 @llvm.bswap.i16(i16 %225) #8
  %conv8.i.i = zext i16 %227 to i32
  %add.i.i = add i32 %conv8.i.i, %226
  %228 = inttoptr i32 %add.i.i to ptr
  %ulMaxEngineClock.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %ulMaxEngineClock.i.i to i32
  call void @__asan_loadN_noabort(i32 %229, i32 4)
  %230 = load i32, ptr %ulMaxEngineClock.i.i, align 1
  %231 = call i32 @llvm.bswap.i32(i32 %230) #8
  %232 = ptrtoint ptr %overdriveLimit.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %overdriveLimit.i, align 4
  %ulMaxMemoryClock.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %228, i32 0, i32 2
  %233 = ptrtoint ptr %ulMaxMemoryClock.i.i to i32
  call void @__asan_loadN_noabort(i32 %233, i32 4)
  %234 = load i32, ptr %ulMaxMemoryClock.i.i, align 1
  %235 = call i32 @llvm.bswap.i32(i32 %234) #8
  %236 = ptrtoint ptr %memoryClock.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %memoryClock.i, align 4
  %237 = ptrtoint ptr %minOverdriveVDDC.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %minOverdriveVDDC.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i.i, %if.then11.i
  %.sink.i152 = phi i32 [ 0, %if.end6.i.i ], [ %conv6.i.i, %if.then11.i ]
  %238 = ptrtoint ptr %maxOverdriveVDDC.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %.sink.i152, ptr %maxOverdriveVDDC.i, align 4
  %239 = ptrtoint ptr %overdriveVDDCStep.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %overdriveVDDCStep.i, align 4
  br label %init_overdrive_limits.exit

init_overdrive_limits.exit:                       ; preds = %cleanup.sink.split.i, %if.end.i.i.init_overdrive_limits.exit_crit_edge, %if.then22.i.init_overdrive_limits.exit_crit_edge, %land.lhs.true17.i.init_overdrive_limits.exit_crit_edge, %land.lhs.true.i151.init_overdrive_limits.exit_crit_edge, %if.end.i150.init_overdrive_limits.exit_crit_edge, %init_thermal_controller.exit.init_overdrive_limits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i146) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i145) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i144) #8
  %dyn_state.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %vddci_dependency_on_mclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 1
  %vddc_dependency_on_mclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 2
  %mvdd_dependency_on_mclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 3
  %vce_clock_voltage_dependency_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 15
  %uvd_clock_voltage_dependency_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 16
  %samu_clock_voltage_dependency_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 18
  %acp_clock_voltage_dependency_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 17
  %vdd_gfx_dependency_on_sclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 21
  %240 = ptrtoint ptr %vdd_gfx_dependency_on_sclk.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr null, ptr %vdd_gfx_dependency_on_sclk.i, align 4
  %241 = call ptr @memset(ptr %dyn_state.i, i32 0, i32 20)
  %242 = call ptr @memset(ptr %vce_clock_voltage_dependency_table.i, i32 0, i32 20)
  %243 = ptrtoint ptr %usTableSize.i to i32
  call void @__asan_loadN_noabort(i32 %243, i32 2)
  %244 = load i16, ptr %usTableSize.i, align 1
  %245 = call i16 @llvm.bswap.i16(i16 %244) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %245)
  %cmp.i.i.i = icmp ugt i16 %245, 45
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %init_overdrive_limits.exit.if.end.i161_crit_edge

init_overdrive_limits.exit.if.end.i161_crit_edge: ; preds = %init_overdrive_limits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.then.i.i.i:                                    ; preds = %init_overdrive_limits.exit
  %usExtendendedHeaderOffset.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %table_addr.0.i, i32 0, i32 3
  %246 = ptrtoint ptr %usExtendendedHeaderOffset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %246, i32 2)
  %247 = load i16, ptr %usExtendendedHeaderOffset.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %247)
  %cmp3.not.i.i.i = icmp eq i16 %247, 0
  br i1 %cmp3.not.i.i.i, label %if.then.i.i.i.if.end.i161_crit_edge, label %if.then5.i.i.i

if.then.i.i.i.if.end.i161_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.then5.i.i.i:                                   ; preds = %if.then.i.i.i
  %248 = ptrtoint ptr %table_addr.0.i to i32
  %249 = call i16 @llvm.bswap.i16(i16 %247) #8
  %conv7.i.i.i = zext i16 %249 to i32
  %add.i.i.i = add i32 %conv7.i.i.i, %248
  %250 = inttoptr i32 %add.i.i.i to ptr
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_loadN_noabort(i32 %251, i32 2)
  %252 = load i16, ptr %250, align 1
  %253 = call i16 @llvm.bswap.i16(i16 %252) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %253)
  %cmp9.i.i.i = icmp ugt i16 %253, 11
  br i1 %cmp9.i.i.i, label %get_vce_table_offset.exit.i.i, label %if.then5.i.i.i.if.then.i.i.i.i.thread212_crit_edge

if.then5.i.i.i.if.then.i.i.i.i.thread212_crit_edge: ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i.thread212

get_vce_table_offset.exit.i.i:                    ; preds = %if.then5.i.i.i
  %usVCETableOffset.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %250, i32 0, i32 3
  %254 = ptrtoint ptr %usVCETableOffset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %254, i32 2)
  %255 = load i16, ptr %usVCETableOffset.i.i.i, align 1
  %256 = call i16 @llvm.bswap.i16(i16 %255) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %255)
  %cmp.not.i.i = icmp eq i16 %255, 0
  %add.i.i153 = add i16 %256, 1
  br i1 %cmp.not.i.i, label %get_vce_table_offset.exit.i.i.if.then.i.i.i.i.thread212_crit_edge, label %get_vce_table_offset.exit.i.i.if.then5.i.i.i.i_crit_edge

get_vce_table_offset.exit.i.i.if.then5.i.i.i.i_crit_edge: ; preds = %get_vce_table_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i.i.i.i

get_vce_table_offset.exit.i.i.if.then.i.i.i.i.thread212_crit_edge: ; preds = %get_vce_table_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i.thread212

if.then.i.i.i.i.thread212:                        ; preds = %get_vce_table_offset.exit.i.i.if.then.i.i.i.i.thread212_crit_edge, %if.then5.i.i.i.if.then.i.i.i.i.thread212_crit_edge
  br label %if.then5.i.i.i.i

if.then5.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.thread212, %get_vce_table_offset.exit.i.i.if.then5.i.i.i.i_crit_edge
  %257 = phi i16 [ 0, %if.then.i.i.i.i.thread212 ], [ %add.i.i153, %get_vce_table_offset.exit.i.i.if.then5.i.i.i.i_crit_edge ]
  %258 = ptrtoint ptr %250 to i32
  call void @__asan_loadN_noabort(i32 %258, i32 2)
  %259 = load i16, ptr %250, align 1
  %260 = call i16 @llvm.bswap.i16(i16 %259) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %260)
  %cmp9.i.i.i.i = icmp ugt i16 %260, 11
  br i1 %cmp9.i.i.i.i, label %get_vce_table_offset.exit.i.i.i, label %if.then5.i.i.i.i.if.end.i161_crit_edge

if.then5.i.i.i.i.if.end.i161_crit_edge:           ; preds = %if.then5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

get_vce_table_offset.exit.i.i.i:                  ; preds = %if.then5.i.i.i.i
  %usVCETableOffset.i.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %250, i32 0, i32 3
  %261 = ptrtoint ptr %usVCETableOffset.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %261, i32 2)
  %262 = load i16, ptr %usVCETableOffset.i.i.i.i, align 1
  %263 = call i16 @llvm.bswap.i16(i16 %262) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %262)
  %cmp.not.i.i.i = icmp eq i16 %262, 0
  %add.i.i326.i = add i16 %263, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i326.i)
  %cmp.not.i327.i = icmp eq i16 %add.i.i326.i, 0
  %or.cond.i.i = select i1 %cmp.not.i.i.i, i1 true, i1 %cmp.not.i327.i
  br i1 %or.cond.i.i, label %get_vce_table_offset.exit.i.i.i.if.end.i161_crit_edge, label %get_vce_clock_voltage_limit_table_offset.exit.i

get_vce_table_offset.exit.i.i.i.if.end.i161_crit_edge: ; preds = %get_vce_table_offset.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

get_vce_clock_voltage_limit_table_offset.exit.i:  ; preds = %get_vce_table_offset.exit.i.i.i
  %conv.i.i.i = zext i16 %add.i.i326.i to i32
  %add.i3.i.i = add i32 %conv.i.i.i, %248
  %264 = inttoptr i32 %add.i3.i.i to ptr
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %264, align 1
  %conv3.i.i.i = zext i8 %266 to i16
  %mul.i.i.i = mul nuw nsw i16 %conv3.i.i.i, 6
  %add4.i.i.i = add i16 %263, 2
  %add.i329.i = add i16 %add4.i.i.i, %mul.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %257)
  %cmp.not.i = icmp eq i16 %257, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i329.i)
  %cmp14.not.i = icmp eq i16 %add.i329.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp14.not.i
  br i1 %or.cond.i, label %get_vce_clock_voltage_limit_table_offset.exit.i.if.end.i161_crit_edge, label %if.then.i157

get_vce_clock_voltage_limit_table_offset.exit.i.if.end.i161_crit_edge: ; preds = %get_vce_clock_voltage_limit_table_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.then.i157:                                     ; preds = %get_vce_clock_voltage_limit_table_offset.exit.i
  %conv.i154 = zext i16 %257 to i32
  %conv13.i = zext i16 %add.i329.i to i32
  %add.i155 = add i32 %conv.i154, %248
  %267 = inttoptr i32 %add.i155 to ptr
  %add19.i = add i32 %conv13.i, %248
  %268 = inttoptr i32 %add19.i to ptr
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %268, align 1
  %conv.i.i156 = zext i8 %270 to i32
  %271 = mul nuw nsw i32 %conv.i.i156, 12
  %spec.select.i1.i.i = add nuw nsw i32 %271, 4
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i.i, i32 noundef 3520) #12
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i157.if.end.i161_crit_edge, label %if.end.i.i158

if.then.i157.if.end.i161_crit_edge:               ; preds = %if.then.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.end.i.i158:                                    ; preds = %if.then.i157
  %272 = ptrtoint ptr %268 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %268, align 1
  %274 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %273, ptr %call9.i.i.i.i, align 128
  %conv4.i.i = zext i8 %273 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %cmp2.not.i.i = icmp eq i8 %273, 0
  br i1 %cmp2.not.i.i, label %if.end.i.i158.for.end.i.i_crit_edge, label %if.end.i.i158.for.body.i.i_crit_edge

if.end.i.i158.for.body.i.i_crit_edge:             ; preds = %if.end.i.i158
  br label %for.body.i.i

if.end.i.i158.for.end.i.i_crit_edge:              ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i158.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i158.for.body.i.i_crit_edge ]
  %arrayidx.i.i159 = getelementptr %struct._ATOM_PPLIB_VCE_Clock_Voltage_Limit_Table, ptr %268, i32 0, i32 1, i32 %i.03.i.i
  %ucVCEClockInfoIndex.i.i = getelementptr %struct._ATOM_PPLIB_VCE_Clock_Voltage_Limit_Table, ptr %268, i32 0, i32 1, i32 %i.03.i.i, i32 1
  %275 = ptrtoint ptr %ucVCEClockInfoIndex.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %ucVCEClockInfoIndex.i.i, align 1
  %idxprom.i.i = zext i8 %276 to i32
  %arrayidx8.i.i = getelementptr %struct._VCEClockInfoArray, ptr %267, i32 0, i32 1, i32 %idxprom.i.i
  %277 = ptrtoint ptr %arrayidx.i.i159 to i32
  call void @__asan_loadN_noabort(i32 %277, i32 2)
  %278 = load i16, ptr %arrayidx.i.i159, align 1
  %279 = call i16 @llvm.bswap.i16(i16 %278) #8
  %conv11.i.i = zext i16 %279 to i32
  %arrayidx13.i.i = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %call9.i.i.i.i, i32 0, i32 1, i32 %i.03.i.i
  %v.i.i = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %call9.i.i.i.i, i32 0, i32 1, i32 %i.03.i.i, i32 2
  %280 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %conv11.i.i, ptr %v.i.i, align 4
  %ucEVClkHigh.i.i = getelementptr %struct._VCEClockInfoArray, ptr %267, i32 0, i32 1, i32 %idxprom.i.i, i32 1
  %281 = ptrtoint ptr %ucEVClkHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %ucEVClkHigh.i.i, align 1
  %conv14.i.i = zext i8 %282 to i32
  %shl.i.i = shl nuw nsw i32 %conv14.i.i, 16
  %283 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_loadN_noabort(i32 %283, i32 2)
  %284 = load i16, ptr %arrayidx8.i.i, align 1
  %285 = call i16 @llvm.bswap.i16(i16 %284) #8
  %conv15.i.i = zext i16 %285 to i32
  %or.i.i160 = or i32 %shl.i.i, %conv15.i.i
  %evclk.i.i = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %call9.i.i.i.i, i32 0, i32 1, i32 %i.03.i.i, i32 1
  %286 = ptrtoint ptr %evclk.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %or.i.i160, ptr %evclk.i.i, align 4
  %ucECClkHigh.i.i = getelementptr %struct._VCEClockInfoArray, ptr %267, i32 0, i32 1, i32 %idxprom.i.i, i32 3
  %287 = ptrtoint ptr %ucECClkHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %ucECClkHigh.i.i, align 1
  %conv18.i.i = zext i8 %288 to i32
  %shl19.i.i = shl nuw nsw i32 %conv18.i.i, 16
  %usECClkLow.i.i = getelementptr %struct._VCEClockInfoArray, ptr %267, i32 0, i32 1, i32 %idxprom.i.i, i32 2
  %289 = ptrtoint ptr %usECClkLow.i.i to i32
  call void @__asan_loadN_noabort(i32 %289, i32 2)
  %290 = load i16, ptr %usECClkLow.i.i, align 1
  %291 = call i16 @llvm.bswap.i16(i16 %290) #8
  %conv20.i.i = zext i16 %291 to i32
  %or21.i.i = or i32 %shl19.i.i, %conv20.i.i
  %292 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %or21.i.i, ptr %arrayidx13.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv4.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i158.for.end.i.i_crit_edge
  %293 = ptrtoint ptr %vce_clock_voltage_dependency_table.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %call9.i.i.i.i, ptr %vce_clock_voltage_dependency_table.i, align 4
  br label %if.end.i161

if.end.i161:                                      ; preds = %for.end.i.i, %if.then.i157.if.end.i161_crit_edge, %get_vce_clock_voltage_limit_table_offset.exit.i.if.end.i161_crit_edge, %get_vce_table_offset.exit.i.i.i.if.end.i161_crit_edge, %if.then5.i.i.i.i.if.end.i161_crit_edge, %if.then.i.i.i.if.end.i161_crit_edge, %init_overdrive_limits.exit.if.end.i161_crit_edge
  %result.0.i = phi i32 [ 0, %get_vce_clock_voltage_limit_table_offset.exit.i.if.end.i161_crit_edge ], [ 0, %for.end.i.i ], [ -12, %if.then.i157.if.end.i161_crit_edge ], [ 0, %init_overdrive_limits.exit.if.end.i161_crit_edge ], [ 0, %if.then5.i.i.i.i.if.end.i161_crit_edge ], [ 0, %get_vce_table_offset.exit.i.i.i.if.end.i161_crit_edge ], [ 0, %if.then.i.i.i.if.end.i161_crit_edge ]
  %294 = ptrtoint ptr %usTableSize.i to i32
  call void @__asan_loadN_noabort(i32 %294, i32 2)
  %295 = load i16, ptr %usTableSize.i, align 1
  %296 = call i16 @llvm.bswap.i16(i16 %295) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %296)
  %cmp.i.i332.i = icmp ugt i16 %296, 45
  br i1 %cmp.i.i332.i, label %if.then.i.i335.i, label %if.end.i161.if.end41.i_crit_edge

if.end.i161.if.end41.i_crit_edge:                 ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then.i.i335.i:                                 ; preds = %if.end.i161
  %usExtendendedHeaderOffset.i.i333.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %table_addr.0.i, i32 0, i32 3
  %297 = ptrtoint ptr %usExtendendedHeaderOffset.i.i333.i to i32
  call void @__asan_loadN_noabort(i32 %297, i32 2)
  %298 = load i16, ptr %usExtendendedHeaderOffset.i.i333.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %298)
  %cmp3.not.i.i334.i = icmp eq i16 %298, 0
  br i1 %cmp3.not.i.i334.i, label %if.then.i.i335.i.if.end41.i_crit_edge, label %if.then5.i.i339.i

if.then.i.i335.i.if.end41.i_crit_edge:            ; preds = %if.then.i.i335.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then5.i.i339.i:                                ; preds = %if.then.i.i335.i
  %299 = ptrtoint ptr %table_addr.0.i to i32
  %300 = call i16 @llvm.bswap.i16(i16 %298) #8
  %conv7.i.i336.i = zext i16 %300 to i32
  %add.i.i337.i = add i32 %conv7.i.i336.i, %299
  %301 = inttoptr i32 %add.i.i337.i to ptr
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_loadN_noabort(i32 %302, i32 2)
  %303 = load i16, ptr %301, align 1
  %304 = call i16 @llvm.bswap.i16(i16 %303) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %304)
  %cmp9.i.i338.i = icmp ugt i16 %304, 13
  br i1 %cmp9.i.i338.i, label %get_uvd_table_offset.exit.i.i, label %if.then5.i.i339.i.if.then.i.i.i346.i.thread213_crit_edge

if.then5.i.i339.i.if.then.i.i.i346.i.thread213_crit_edge: ; preds = %if.then5.i.i339.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i346.i.thread213

get_uvd_table_offset.exit.i.i:                    ; preds = %if.then5.i.i339.i
  %usUVDTableOffset.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %301, i32 0, i32 4
  %305 = ptrtoint ptr %usUVDTableOffset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %305, i32 2)
  %306 = load i16, ptr %usUVDTableOffset.i.i.i, align 1
  %307 = call i16 @llvm.bswap.i16(i16 %306) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %306)
  %cmp.not.i340.i = icmp eq i16 %306, 0
  %add.i341.i = add i16 %307, 1
  br i1 %cmp.not.i340.i, label %get_uvd_table_offset.exit.i.i.if.then.i.i.i346.i.thread213_crit_edge, label %get_uvd_table_offset.exit.i.i.if.then5.i.i.i350.i_crit_edge

get_uvd_table_offset.exit.i.i.if.then5.i.i.i350.i_crit_edge: ; preds = %get_uvd_table_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i.i.i350.i

get_uvd_table_offset.exit.i.i.if.then.i.i.i346.i.thread213_crit_edge: ; preds = %get_uvd_table_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i346.i.thread213

if.then.i.i.i346.i.thread213:                     ; preds = %get_uvd_table_offset.exit.i.i.if.then.i.i.i346.i.thread213_crit_edge, %if.then5.i.i339.i.if.then.i.i.i346.i.thread213_crit_edge
  br label %if.then5.i.i.i350.i

if.then5.i.i.i350.i:                              ; preds = %if.then.i.i.i346.i.thread213, %get_uvd_table_offset.exit.i.i.if.then5.i.i.i350.i_crit_edge
  %308 = phi i16 [ 0, %if.then.i.i.i346.i.thread213 ], [ %add.i341.i, %get_uvd_table_offset.exit.i.i.if.then5.i.i.i350.i_crit_edge ]
  %309 = ptrtoint ptr %301 to i32
  call void @__asan_loadN_noabort(i32 %309, i32 2)
  %310 = load i16, ptr %301, align 1
  %311 = call i16 @llvm.bswap.i16(i16 %310) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %311)
  %cmp9.i.i.i349.i = icmp ugt i16 %311, 13
  br i1 %cmp9.i.i.i349.i, label %get_uvd_table_offset.exit.i.i.i, label %if.then5.i.i.i350.i.if.end41.i_crit_edge

if.then5.i.i.i350.i.if.end41.i_crit_edge:         ; preds = %if.then5.i.i.i350.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

get_uvd_table_offset.exit.i.i.i:                  ; preds = %if.then5.i.i.i350.i
  %usUVDTableOffset.i.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %301, i32 0, i32 4
  %312 = ptrtoint ptr %usUVDTableOffset.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %312, i32 2)
  %313 = load i16, ptr %usUVDTableOffset.i.i.i.i, align 1
  %314 = call i16 @llvm.bswap.i16(i16 %313) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %313)
  %cmp.not.i.i351.i = icmp eq i16 %313, 0
  %add.i.i352.i = add i16 %314, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i352.i)
  %cmp.not.i353.i = icmp eq i16 %add.i.i352.i, 0
  %or.cond.i354.i = select i1 %cmp.not.i.i351.i, i1 true, i1 %cmp.not.i353.i
  br i1 %or.cond.i354.i, label %get_uvd_table_offset.exit.i.i.i.if.end41.i_crit_edge, label %get_uvd_clock_voltage_limit_table_offset.exit.i

get_uvd_table_offset.exit.i.i.i.if.end41.i_crit_edge: ; preds = %get_uvd_table_offset.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

get_uvd_clock_voltage_limit_table_offset.exit.i:  ; preds = %get_uvd_table_offset.exit.i.i.i
  %conv.i.i365.i = zext i16 %add.i.i352.i to i32
  %add.i3.i366.i = add i32 %conv.i.i365.i, %299
  %315 = inttoptr i32 %add.i3.i366.i to ptr
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %315, align 1
  %conv3.i.i367.i = zext i8 %317 to i16
  %mul.i.i368.i = mul nuw nsw i16 %conv3.i.i367.i, 6
  %add4.i.i369.i = add i16 %314, 2
  %add.i372.i = add i16 %add4.i.i369.i, %mul.i.i368.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %308)
  %cmp26.not.i = icmp eq i16 %308, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i372.i)
  %cmp30.not.i = icmp eq i16 %add.i372.i, 0
  %or.cond325.i = select i1 %cmp26.not.i, i1 true, i1 %cmp30.not.i
  br i1 %or.cond325.i, label %get_uvd_clock_voltage_limit_table_offset.exit.i.if.end41.i_crit_edge, label %if.then32.i

get_uvd_clock_voltage_limit_table_offset.exit.i.if.end41.i_crit_edge: ; preds = %get_uvd_clock_voltage_limit_table_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then32.i:                                      ; preds = %get_uvd_clock_voltage_limit_table_offset.exit.i
  %conv25.i = zext i16 %308 to i32
  %conv29.i = zext i16 %add.i372.i to i32
  %add35.i = add i32 %conv25.i, %299
  %318 = inttoptr i32 %add35.i to ptr
  %add37.i = add i32 %conv29.i, %299
  %319 = inttoptr i32 %add37.i to ptr
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %319, align 1
  %conv.i374.i = zext i8 %321 to i32
  %322 = mul nuw nsw i32 %conv.i374.i, 12
  %spec.select.i1.i375.i = add nuw nsw i32 %322, 4
  %call9.i.i.i391.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i375.i, i32 noundef 3520) #12
  %tobool.not.i394.i = icmp eq ptr %call9.i.i.i391.i, null
  br i1 %tobool.not.i394.i, label %if.then32.i.if.end41.i_crit_edge, label %if.end.i398.i

if.then32.i.if.end41.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.end.i398.i:                                    ; preds = %if.then32.i
  %323 = ptrtoint ptr %319 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %319, align 1
  %325 = ptrtoint ptr %call9.i.i.i391.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 %324, ptr %call9.i.i.i391.i, align 128
  %conv4.i396.i = zext i8 %324 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %cmp2.not.i397.i = icmp eq i8 %324, 0
  br i1 %cmp2.not.i397.i, label %if.end.i398.i.for.end.i417.i_crit_edge, label %if.end.i398.i.for.body.i416.i_crit_edge

if.end.i398.i.for.body.i416.i_crit_edge:          ; preds = %if.end.i398.i
  br label %for.body.i416.i

if.end.i398.i.for.end.i417.i_crit_edge:           ; preds = %if.end.i398.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i417.i

for.body.i416.i:                                  ; preds = %for.body.i416.i.for.body.i416.i_crit_edge, %if.end.i398.i.for.body.i416.i_crit_edge
  %i.03.i399.i = phi i32 [ %inc.i414.i, %for.body.i416.i.for.body.i416.i_crit_edge ], [ 0, %if.end.i398.i.for.body.i416.i_crit_edge ]
  %arrayidx.i400.i = getelementptr %struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Table, ptr %319, i32 0, i32 1, i32 %i.03.i399.i
  %ucUVDClockInfoIndex.i.i = getelementptr %struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Table, ptr %319, i32 0, i32 1, i32 %i.03.i399.i, i32 1
  %326 = ptrtoint ptr %ucUVDClockInfoIndex.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %ucUVDClockInfoIndex.i.i, align 1
  %idxprom.i401.i = zext i8 %327 to i32
  %arrayidx8.i402.i = getelementptr %struct._UVDClockInfoArray, ptr %318, i32 0, i32 1, i32 %idxprom.i401.i
  %328 = ptrtoint ptr %arrayidx.i400.i to i32
  call void @__asan_loadN_noabort(i32 %328, i32 2)
  %329 = load i16, ptr %arrayidx.i400.i, align 1
  %330 = call i16 @llvm.bswap.i16(i16 %329) #8
  %conv11.i403.i = zext i16 %330 to i32
  %arrayidx13.i404.i = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %call9.i.i.i391.i, i32 0, i32 1, i32 %i.03.i399.i
  %v.i405.i = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %call9.i.i.i391.i, i32 0, i32 1, i32 %i.03.i399.i, i32 2
  %331 = ptrtoint ptr %v.i405.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %conv11.i403.i, ptr %v.i405.i, align 4
  %ucVClkHigh.i.i = getelementptr %struct._UVDClockInfoArray, ptr %318, i32 0, i32 1, i32 %idxprom.i401.i, i32 1
  %332 = ptrtoint ptr %ucVClkHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %ucVClkHigh.i.i, align 1
  %conv14.i406.i = zext i8 %333 to i32
  %shl.i407.i = shl nuw nsw i32 %conv14.i406.i, 16
  %334 = ptrtoint ptr %arrayidx8.i402.i to i32
  call void @__asan_loadN_noabort(i32 %334, i32 2)
  %335 = load i16, ptr %arrayidx8.i402.i, align 1
  %336 = call i16 @llvm.bswap.i16(i16 %335) #8
  %conv15.i408.i = zext i16 %336 to i32
  %or.i409.i = or i32 %shl.i407.i, %conv15.i408.i
  %337 = ptrtoint ptr %arrayidx13.i404.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %or.i409.i, ptr %arrayidx13.i404.i, align 4
  %ucDClkHigh.i.i = getelementptr %struct._UVDClockInfoArray, ptr %318, i32 0, i32 1, i32 %idxprom.i401.i, i32 3
  %338 = ptrtoint ptr %ucDClkHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %ucDClkHigh.i.i, align 1
  %conv18.i410.i = zext i8 %339 to i32
  %shl19.i411.i = shl nuw nsw i32 %conv18.i410.i, 16
  %usDClkLow.i.i = getelementptr %struct._UVDClockInfoArray, ptr %318, i32 0, i32 1, i32 %idxprom.i401.i, i32 2
  %340 = ptrtoint ptr %usDClkLow.i.i to i32
  call void @__asan_loadN_noabort(i32 %340, i32 2)
  %341 = load i16, ptr %usDClkLow.i.i, align 1
  %342 = call i16 @llvm.bswap.i16(i16 %341) #8
  %conv20.i412.i = zext i16 %342 to i32
  %or21.i413.i = or i32 %shl19.i411.i, %conv20.i412.i
  %dclk.i.i = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %call9.i.i.i391.i, i32 0, i32 1, i32 %i.03.i399.i, i32 1
  %343 = ptrtoint ptr %dclk.i.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %or21.i413.i, ptr %dclk.i.i, align 4
  %inc.i414.i = add nuw nsw i32 %i.03.i399.i, 1
  %exitcond.not.i415.i = icmp eq i32 %inc.i414.i, %conv4.i396.i
  br i1 %exitcond.not.i415.i, label %for.body.i416.i.for.end.i417.i_crit_edge, label %for.body.i416.i.for.body.i416.i_crit_edge

for.body.i416.i.for.body.i416.i_crit_edge:        ; preds = %for.body.i416.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i416.i

for.body.i416.i.for.end.i417.i_crit_edge:         ; preds = %for.body.i416.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i417.i

for.end.i417.i:                                   ; preds = %for.body.i416.i.for.end.i417.i_crit_edge, %if.end.i398.i.for.end.i417.i_crit_edge
  %344 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %call9.i.i.i391.i, ptr %uvd_clock_voltage_dependency_table.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.end.i417.i, %if.then32.i.if.end41.i_crit_edge, %get_uvd_clock_voltage_limit_table_offset.exit.i.if.end41.i_crit_edge, %get_uvd_table_offset.exit.i.i.i.if.end41.i_crit_edge, %if.then5.i.i.i350.i.if.end41.i_crit_edge, %if.then.i.i335.i.if.end41.i_crit_edge, %if.end.i161.if.end41.i_crit_edge
  %result.1.i = phi i32 [ %result.0.i, %get_uvd_clock_voltage_limit_table_offset.exit.i.if.end41.i_crit_edge ], [ 0, %for.end.i417.i ], [ -12, %if.then32.i.if.end41.i_crit_edge ], [ %result.0.i, %if.end.i161.if.end41.i_crit_edge ], [ %result.0.i, %if.then5.i.i.i350.i.if.end41.i_crit_edge ], [ %result.0.i, %get_uvd_table_offset.exit.i.i.i.if.end41.i_crit_edge ], [ %result.0.i, %if.then.i.i335.i.if.end41.i_crit_edge ]
  %345 = ptrtoint ptr %usTableSize.i to i32
  call void @__asan_loadN_noabort(i32 %345, i32 2)
  %346 = load i16, ptr %usTableSize.i, align 1
  %347 = call i16 @llvm.bswap.i16(i16 %346) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %347)
  %cmp.i.i420.i = icmp ugt i16 %347, 45
  br i1 %cmp.i.i420.i, label %if.then.i.i423.i, label %if.end41.i.if.end53.i_crit_edge

if.end41.i.if.end53.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

if.then.i.i423.i:                                 ; preds = %if.end41.i
  %usExtendendedHeaderOffset.i.i421.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %table_addr.0.i, i32 0, i32 3
  %348 = ptrtoint ptr %usExtendendedHeaderOffset.i.i421.i to i32
  call void @__asan_loadN_noabort(i32 %348, i32 2)
  %349 = load i16, ptr %usExtendendedHeaderOffset.i.i421.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %349)
  %cmp3.not.i.i422.i = icmp eq i16 %349, 0
  br i1 %cmp3.not.i.i422.i, label %if.then.i.i423.i.if.end53.i_crit_edge, label %if.then5.i.i427.i

if.then.i.i423.i.if.end53.i_crit_edge:            ; preds = %if.then.i.i423.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

if.then5.i.i427.i:                                ; preds = %if.then.i.i423.i
  %350 = ptrtoint ptr %table_addr.0.i to i32
  %351 = call i16 @llvm.bswap.i16(i16 %349) #8
  %conv7.i.i424.i = zext i16 %351 to i32
  %add.i.i425.i = add i32 %conv7.i.i424.i, %350
  %352 = inttoptr i32 %add.i.i425.i to ptr
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_loadN_noabort(i32 %353, i32 2)
  %354 = load i16, ptr %352, align 1
  %355 = call i16 @llvm.bswap.i16(i16 %354) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %355)
  %cmp9.i.i426.i = icmp ugt i16 %355, 15
  br i1 %cmp9.i.i426.i, label %get_samu_table_offset.exit.i.i, label %if.then5.i.i427.i.if.end53.i_crit_edge

if.then5.i.i427.i.if.end53.i_crit_edge:           ; preds = %if.then5.i.i427.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

get_samu_table_offset.exit.i.i:                   ; preds = %if.then5.i.i427.i
  %usSAMUTableOffset.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %352, i32 0, i32 5
  %356 = ptrtoint ptr %usSAMUTableOffset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %356, i32 2)
  %357 = load i16, ptr %usSAMUTableOffset.i.i.i, align 1
  %358 = call i16 @llvm.bswap.i16(i16 %357) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %357)
  %cmp.not.i428.i = icmp eq i16 %357, 0
  %add.i429.i = add i16 %358, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i429.i)
  %cmp44.not.i162 = icmp eq i16 %add.i429.i, 0
  %or.cond843.i = select i1 %cmp.not.i428.i, i1 true, i1 %cmp44.not.i162
  br i1 %or.cond843.i, label %get_samu_table_offset.exit.i.i.if.end53.i_crit_edge, label %if.then46.i

get_samu_table_offset.exit.i.i.if.end53.i_crit_edge: ; preds = %get_samu_table_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

if.then46.i:                                      ; preds = %get_samu_table_offset.exit.i.i
  %conv43.i = zext i16 %add.i429.i to i32
  %add49.i = add i32 %conv43.i, %350
  %359 = inttoptr i32 %add49.i to ptr
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %359, align 1
  %conv.i430.i = zext i8 %361 to i32
  %362 = shl nuw nsw i32 %conv.i430.i, 3
  %spec.select.i1.i431.i = or i32 %362, 4
  %call9.i.i.i445.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i431.i, i32 noundef 3520) #12
  %tobool.not.i448.i = icmp eq ptr %call9.i.i.i445.i, null
  br i1 %tobool.not.i448.i, label %if.then46.i.if.end53.i_crit_edge, label %if.end.i452.i

if.then46.i.if.end53.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

if.end.i452.i:                                    ; preds = %if.then46.i
  %363 = ptrtoint ptr %359 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %359, align 1
  %365 = ptrtoint ptr %call9.i.i.i445.i to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %364, ptr %call9.i.i.i445.i, align 128
  %conv4.i450.i = zext i8 %364 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %cmp2.not.i451.i = icmp eq i8 %364, 0
  br i1 %cmp2.not.i451.i, label %if.end.i452.i.for.end.i464.i_crit_edge, label %if.end.i452.i.for.body.i463.i_crit_edge

if.end.i452.i.for.body.i463.i_crit_edge:          ; preds = %if.end.i452.i
  br label %for.body.i463.i

if.end.i452.i.for.end.i464.i_crit_edge:           ; preds = %if.end.i452.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i464.i

for.body.i463.i:                                  ; preds = %for.body.i463.i.for.body.i463.i_crit_edge, %if.end.i452.i.for.body.i463.i_crit_edge
  %i.03.i453.i = phi i32 [ %inc.i461.i, %for.body.i463.i.for.body.i463.i_crit_edge ], [ 0, %if.end.i452.i.for.body.i463.i_crit_edge ]
  %arrayidx.i454.i = getelementptr %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Table, ptr %359, i32 0, i32 1, i32 %i.03.i453.i
  %366 = ptrtoint ptr %arrayidx.i454.i to i32
  call void @__asan_loadN_noabort(i32 %366, i32 2)
  %367 = load i16, ptr %arrayidx.i454.i, align 1
  %368 = call i16 @llvm.bswap.i16(i16 %367) #8
  %conv6.i.i163 = zext i16 %368 to i32
  %arrayidx8.i455.i = getelementptr %struct.phm_samu_clock_voltage_dependency_table, ptr %call9.i.i.i445.i, i32 0, i32 1, i32 %i.03.i453.i
  %v.i456.i = getelementptr %struct.phm_samu_clock_voltage_dependency_table, ptr %call9.i.i.i445.i, i32 0, i32 1, i32 %i.03.i453.i, i32 1
  %369 = ptrtoint ptr %v.i456.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %conv6.i.i163, ptr %v.i456.i, align 8
  %ucSAMClockHigh.i.i = getelementptr %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Table, ptr %359, i32 0, i32 1, i32 %i.03.i453.i, i32 2
  %370 = ptrtoint ptr %ucSAMClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %ucSAMClockHigh.i.i, align 1
  %conv11.i457.i = zext i8 %371 to i32
  %shl.i458.i = shl nuw nsw i32 %conv11.i457.i, 16
  %usSAMClockLow.i.i = getelementptr %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Table, ptr %359, i32 0, i32 1, i32 %i.03.i453.i, i32 1
  %372 = ptrtoint ptr %usSAMClockLow.i.i to i32
  call void @__asan_loadN_noabort(i32 %372, i32 2)
  %373 = load i16, ptr %usSAMClockLow.i.i, align 1
  %374 = call i16 @llvm.bswap.i16(i16 %373) #8
  %conv14.i459.i = zext i16 %374 to i32
  %or.i460.i = or i32 %shl.i458.i, %conv14.i459.i
  %375 = ptrtoint ptr %arrayidx8.i455.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %or.i460.i, ptr %arrayidx8.i455.i, align 4
  %inc.i461.i = add nuw nsw i32 %i.03.i453.i, 1
  %exitcond.not.i462.i = icmp eq i32 %inc.i461.i, %conv4.i450.i
  br i1 %exitcond.not.i462.i, label %for.body.i463.i.for.end.i464.i_crit_edge, label %for.body.i463.i.for.body.i463.i_crit_edge

for.body.i463.i.for.body.i463.i_crit_edge:        ; preds = %for.body.i463.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i463.i

for.body.i463.i.for.end.i464.i_crit_edge:         ; preds = %for.body.i463.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i464.i

for.end.i464.i:                                   ; preds = %for.body.i463.i.for.end.i464.i_crit_edge, %if.end.i452.i.for.end.i464.i_crit_edge
  %376 = ptrtoint ptr %samu_clock_voltage_dependency_table.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr %call9.i.i.i445.i, ptr %samu_clock_voltage_dependency_table.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %for.end.i464.i, %if.then46.i.if.end53.i_crit_edge, %get_samu_table_offset.exit.i.i.if.end53.i_crit_edge, %if.then5.i.i427.i.if.end53.i_crit_edge, %if.then.i.i423.i.if.end53.i_crit_edge, %if.end41.i.if.end53.i_crit_edge
  %result.2.i = phi i32 [ 0, %for.end.i464.i ], [ -12, %if.then46.i.if.end53.i_crit_edge ], [ %result.1.i, %if.end41.i.if.end53.i_crit_edge ], [ %result.1.i, %if.then.i.i423.i.if.end53.i_crit_edge ], [ %result.1.i, %if.then5.i.i427.i.if.end53.i_crit_edge ], [ %result.1.i, %get_samu_table_offset.exit.i.i.if.end53.i_crit_edge ]
  %377 = ptrtoint ptr %usTableSize.i to i32
  call void @__asan_loadN_noabort(i32 %377, i32 2)
  %378 = load i16, ptr %usTableSize.i, align 1
  %379 = call i16 @llvm.bswap.i16(i16 %378) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %379)
  %cmp.i.i467.i = icmp ugt i16 %379, 45
  br i1 %cmp.i.i467.i, label %if.then.i.i470.i, label %if.end53.i.if.end65.i_crit_edge

if.end53.i.if.end65.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.then.i.i470.i:                                 ; preds = %if.end53.i
  %usExtendendedHeaderOffset.i.i468.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %table_addr.0.i, i32 0, i32 3
  %380 = ptrtoint ptr %usExtendendedHeaderOffset.i.i468.i to i32
  call void @__asan_loadN_noabort(i32 %380, i32 2)
  %381 = load i16, ptr %usExtendendedHeaderOffset.i.i468.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %381)
  %cmp3.not.i.i469.i = icmp eq i16 %381, 0
  br i1 %cmp3.not.i.i469.i, label %if.then.i.i470.i.if.end65.i_crit_edge, label %if.then5.i.i474.i

if.then.i.i470.i.if.end65.i_crit_edge:            ; preds = %if.then.i.i470.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.then5.i.i474.i:                                ; preds = %if.then.i.i470.i
  %382 = ptrtoint ptr %table_addr.0.i to i32
  %383 = call i16 @llvm.bswap.i16(i16 %381) #8
  %conv7.i.i471.i = zext i16 %383 to i32
  %add.i.i472.i = add i32 %conv7.i.i471.i, %382
  %384 = inttoptr i32 %add.i.i472.i to ptr
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_loadN_noabort(i32 %385, i32 2)
  %386 = load i16, ptr %384, align 1
  %387 = call i16 @llvm.bswap.i16(i16 %386) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %387)
  %cmp9.i.i473.i = icmp ugt i16 %387, 19
  br i1 %cmp9.i.i473.i, label %get_acp_table_offset.exit.i.i, label %if.then5.i.i474.i.if.end65.i_crit_edge

if.then5.i.i474.i.if.end65.i_crit_edge:           ; preds = %if.then5.i.i474.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

get_acp_table_offset.exit.i.i:                    ; preds = %if.then5.i.i474.i
  %usACPTableOffset.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %384, i32 0, i32 7
  %388 = ptrtoint ptr %usACPTableOffset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %388, i32 2)
  %389 = load i16, ptr %usACPTableOffset.i.i.i, align 1
  %390 = call i16 @llvm.bswap.i16(i16 %389) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %389)
  %cmp.not.i475.i = icmp eq i16 %389, 0
  %add.i476.i = add i16 %390, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i476.i)
  %cmp56.not.i = icmp eq i16 %add.i476.i, 0
  %or.cond844.i = select i1 %cmp.not.i475.i, i1 true, i1 %cmp56.not.i
  br i1 %or.cond844.i, label %get_acp_table_offset.exit.i.i.if.end65.i_crit_edge, label %if.then58.i

get_acp_table_offset.exit.i.i.if.end65.i_crit_edge: ; preds = %get_acp_table_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.then58.i:                                      ; preds = %get_acp_table_offset.exit.i.i
  %conv55.i = zext i16 %add.i476.i to i32
  %add61.i = add i32 %conv55.i, %382
  %391 = inttoptr i32 %add61.i to ptr
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %391, align 1
  %conv.i477.i = zext i8 %393 to i32
  %394 = shl nuw nsw i32 %conv.i477.i, 3
  %spec.select.i1.i478.i = or i32 %394, 4
  %call9.i.i.i492.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i478.i, i32 noundef 3520) #12
  %tobool.not.i495.i = icmp eq ptr %call9.i.i.i492.i, null
  br i1 %tobool.not.i495.i, label %if.then58.i.if.end65.i_crit_edge, label %if.end.i498.i

if.then58.i.if.end65.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.end.i498.i:                                    ; preds = %if.then58.i
  %395 = ptrtoint ptr %391 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %391, align 1
  %conv3.i.i = zext i8 %396 to i32
  %397 = ptrtoint ptr %call9.i.i.i492.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %conv3.i.i, ptr %call9.i.i.i492.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %396)
  %cmp2.not.i497.i = icmp eq i8 %396, 0
  br i1 %cmp2.not.i497.i, label %if.end.i498.i.for.end.i508.i_crit_edge, label %if.end.i498.i.for.body.i507.i_crit_edge

if.end.i498.i.for.body.i507.i_crit_edge:          ; preds = %if.end.i498.i
  br label %for.body.i507.i

if.end.i498.i.for.end.i508.i_crit_edge:           ; preds = %if.end.i498.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i508.i

for.body.i507.i:                                  ; preds = %for.body.i507.i.for.body.i507.i_crit_edge, %if.end.i498.i.for.body.i507.i_crit_edge
  %i.03.i499.i = phi i32 [ %inc.i505.i, %for.body.i507.i.for.body.i507.i_crit_edge ], [ 0, %if.end.i498.i.for.body.i507.i_crit_edge ]
  %arrayidx.i500.i = getelementptr %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Table, ptr %391, i32 0, i32 1, i32 %i.03.i499.i
  %398 = ptrtoint ptr %arrayidx.i500.i to i32
  call void @__asan_loadN_noabort(i32 %398, i32 2)
  %399 = load i16, ptr %arrayidx.i500.i, align 1
  %400 = call i16 @llvm.bswap.i16(i16 %399) #8
  %conv7.i.i = zext i16 %400 to i32
  %arrayidx9.i.i = getelementptr %struct.phm_acp_clock_voltage_dependency_table, ptr %call9.i.i.i492.i, i32 0, i32 1, i32 %i.03.i499.i
  %v.i501.i = getelementptr %struct.phm_acp_clock_voltage_dependency_table, ptr %call9.i.i.i492.i, i32 0, i32 1, i32 %i.03.i499.i, i32 1
  %401 = ptrtoint ptr %v.i501.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %conv7.i.i, ptr %v.i501.i, align 8
  %ucACPClockHigh.i.i = getelementptr %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Table, ptr %391, i32 0, i32 1, i32 %i.03.i499.i, i32 2
  %402 = ptrtoint ptr %ucACPClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %ucACPClockHigh.i.i, align 1
  %conv12.i.i = zext i8 %403 to i32
  %shl.i502.i = shl nuw nsw i32 %conv12.i.i, 16
  %usACPClockLow.i.i = getelementptr %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Table, ptr %391, i32 0, i32 1, i32 %i.03.i499.i, i32 1
  %404 = ptrtoint ptr %usACPClockLow.i.i to i32
  call void @__asan_loadN_noabort(i32 %404, i32 2)
  %405 = load i16, ptr %usACPClockLow.i.i, align 1
  %406 = call i16 @llvm.bswap.i16(i16 %405) #8
  %conv15.i503.i = zext i16 %406 to i32
  %or.i504.i = or i32 %shl.i502.i, %conv15.i503.i
  %407 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %or.i504.i, ptr %arrayidx9.i.i, align 4
  %inc.i505.i = add nuw nsw i32 %i.03.i499.i, 1
  %exitcond.not.i506.i = icmp eq i32 %inc.i505.i, %conv3.i.i
  br i1 %exitcond.not.i506.i, label %for.body.i507.i.for.end.i508.i_crit_edge, label %for.body.i507.i.for.body.i507.i_crit_edge

for.body.i507.i.for.body.i507.i_crit_edge:        ; preds = %for.body.i507.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i507.i

for.body.i507.i.for.end.i508.i_crit_edge:         ; preds = %for.body.i507.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i508.i

for.end.i508.i:                                   ; preds = %for.body.i507.i.for.end.i508.i_crit_edge, %if.end.i498.i.for.end.i508.i_crit_edge
  %408 = ptrtoint ptr %acp_clock_voltage_dependency_table.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store ptr %call9.i.i.i492.i, ptr %acp_clock_voltage_dependency_table.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %for.end.i508.i, %if.then58.i.if.end65.i_crit_edge, %get_acp_table_offset.exit.i.i.if.end65.i_crit_edge, %if.then5.i.i474.i.if.end65.i_crit_edge, %if.then.i.i470.i.if.end65.i_crit_edge, %if.end53.i.if.end65.i_crit_edge
  %result.3.i = phi i32 [ 0, %for.end.i508.i ], [ -12, %if.then58.i.if.end65.i_crit_edge ], [ %result.2.i, %if.end53.i.if.end65.i_crit_edge ], [ %result.2.i, %if.then.i.i470.i.if.end65.i_crit_edge ], [ %result.2.i, %if.then5.i.i474.i.if.end65.i_crit_edge ], [ %result.2.i, %get_acp_table_offset.exit.i.i.if.end65.i_crit_edge ]
  %409 = ptrtoint ptr %usTableSize.i to i32
  call void @__asan_loadN_noabort(i32 %409, i32 2)
  %410 = load i16, ptr %usTableSize.i, align 1
  %411 = call i16 @llvm.bswap.i16(i16 %410) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %411)
  %cmp.i.i164 = icmp ugt i16 %411, 45
  br i1 %cmp.i.i164, label %if.then.i.i, label %if.end65.i.if.end91.i_crit_edge

if.end65.i.if.end91.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

if.then.i.i:                                      ; preds = %if.end65.i
  %usExtendendedHeaderOffset.i.i165 = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %table_addr.0.i, i32 0, i32 3
  %412 = ptrtoint ptr %usExtendendedHeaderOffset.i.i165 to i32
  call void @__asan_loadN_noabort(i32 %412, i32 2)
  %413 = load i16, ptr %usExtendendedHeaderOffset.i.i165, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %413)
  %cmp3.not.i.i = icmp eq i16 %413, 0
  br i1 %cmp3.not.i.i, label %if.then.i.i.if.end91.i_crit_edge, label %if.then5.i.i

if.then.i.i.if.end91.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  %414 = ptrtoint ptr %table_addr.0.i to i32
  %415 = call i16 @llvm.bswap.i16(i16 %413) #8
  %conv7.i510.i = zext i16 %415 to i32
  %add.i511.i = add i32 %conv7.i510.i, %414
  %416 = inttoptr i32 %add.i511.i to ptr
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_loadN_noabort(i32 %417, i32 2)
  %418 = load i16, ptr %416, align 1
  %419 = call i16 @llvm.bswap.i16(i16 %418) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %419)
  %cmp9.i.i = icmp ugt i16 %419, 21
  br i1 %cmp9.i.i, label %get_cacp_tdp_table_offset.exit.i, label %if.then5.i.i.if.end91.i_crit_edge

if.then5.i.i.if.end91.i_crit_edge:                ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

get_cacp_tdp_table_offset.exit.i:                 ; preds = %if.then5.i.i
  %usPowerTuneTableOffset.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %416, i32 0, i32 8
  %420 = ptrtoint ptr %usPowerTuneTableOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %420, i32 2)
  %421 = load i16, ptr %usPowerTuneTableOffset.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %421)
  %cmp68.not.i = icmp eq i16 %421, 0
  br i1 %cmp68.not.i, label %get_cacp_tdp_table_offset.exit.i.if.end91.i_crit_edge, label %if.then70.i

get_cacp_tdp_table_offset.exit.i.if.end91.i_crit_edge: ; preds = %get_cacp_tdp_table_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

if.then70.i:                                      ; preds = %get_cacp_tdp_table_offset.exit.i
  %422 = call i16 @llvm.bswap.i16(i16 %421) #8
  %conv67.i = zext i16 %422 to i32
  %add72.i = add i32 %conv67.i, %414
  %423 = inttoptr i32 %add72.i to ptr
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %423, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %425)
  %cmp74.not.i = icmp eq i8 %425, 0
  br i1 %cmp74.not.i, label %if.else.i166, label %if.then76.i

if.then76.i:                                      ; preds = %if.then70.i
  %cac_dtp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  %usMaximumPowerDeliveryLimit.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %423, i32 0, i32 2
  %426 = ptrtoint ptr %usMaximumPowerDeliveryLimit.i to i32
  call void @__asan_loadN_noabort(i32 %426, i32 2)
  %427 = load i16, ptr %usMaximumPowerDeliveryLimit.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %428 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i512.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %428, i32 noundef 3520, i32 noundef 68) #13
  %cmp.i513.i = icmp eq ptr %call7.i.i.i512.i, null
  br i1 %cmp.i513.i, label %if.then76.i.get_cac_tdp_table.exit.i_crit_edge, label %if.end.i514.i

if.then76.i.get_cac_tdp_table.exit.i_crit_edge:   ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_cac_tdp_table.exit.i

if.end.i514.i:                                    ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  %429 = call i16 @llvm.bswap.i16(i16 %427) #8
  %power_tune_table.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %423, i32 0, i32 1
  %430 = ptrtoint ptr %power_tune_table.i to i32
  call void @__asan_loadN_noabort(i32 %430, i32 2)
  %431 = load i16, ptr %power_tune_table.i, align 1
  %432 = call i16 @llvm.bswap.i16(i16 %431) #8
  %433 = ptrtoint ptr %call7.i.i.i512.i to i32
  call void @__asan_store2_noabort(i32 %433)
  store i16 %432, ptr %call7.i.i.i512.i, align 8
  %usConfigurableTDP.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %423, i32 0, i32 1, i32 1
  %434 = ptrtoint ptr %usConfigurableTDP.i.i to i32
  call void @__asan_loadN_noabort(i32 %434, i32 2)
  %435 = load i16, ptr %usConfigurableTDP.i.i, align 1
  %436 = call i16 @llvm.bswap.i16(i16 %435) #8
  %usConfigurableTDP2.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i512.i, i32 0, i32 1
  %437 = ptrtoint ptr %usConfigurableTDP2.i.i to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 %436, ptr %usConfigurableTDP2.i.i, align 2
  %usTDC.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %423, i32 0, i32 1, i32 2
  %438 = ptrtoint ptr %usTDC.i.i to i32
  call void @__asan_loadN_noabort(i32 %438, i32 2)
  %439 = load i16, ptr %usTDC.i.i, align 1
  %440 = call i16 @llvm.bswap.i16(i16 %439) #8
  %usTDC3.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i512.i, i32 0, i32 2
  %441 = ptrtoint ptr %usTDC3.i.i to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 %440, ptr %usTDC3.i.i, align 4
  %usBatteryPowerLimit.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %423, i32 0, i32 1, i32 3
  %442 = ptrtoint ptr %usBatteryPowerLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %442, i32 2)
  %443 = load i16, ptr %usBatteryPowerLimit.i.i, align 1
  %444 = call i16 @llvm.bswap.i16(i16 %443) #8
  %usBatteryPowerLimit4.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i512.i, i32 0, i32 3
  %445 = ptrtoint ptr %usBatteryPowerLimit4.i.i to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 %444, ptr %usBatteryPowerLimit4.i.i, align 2
  %usSmallPowerLimit.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %423, i32 0, i32 1, i32 4
  %446 = ptrtoint ptr %usSmallPowerLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %446, i32 2)
  %447 = load i16, ptr %usSmallPowerLimit.i.i, align 1
  %448 = call i16 @llvm.bswap.i16(i16 %447) #8
  %usSmallPowerLimit5.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i512.i, i32 0, i32 4
  %449 = ptrtoint ptr %usSmallPowerLimit5.i.i to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 %448, ptr %usSmallPowerLimit5.i.i, align 8
  %usLowCACLeakage.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %423, i32 0, i32 1, i32 5
  %450 = ptrtoint ptr %usLowCACLeakage.i.i to i32
  call void @__asan_loadN_noabort(i32 %450, i32 2)
  %451 = load i16, ptr %usLowCACLeakage.i.i, align 1
  %452 = call i16 @llvm.bswap.i16(i16 %451) #8
  %usLowCACLeakage6.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i512.i, i32 0, i32 5
  %453 = ptrtoint ptr %usLowCACLeakage6.i.i to i32
  call void @__asan_store2_noabort(i32 %453)
  store i16 %452, ptr %usLowCACLeakage6.i.i, align 2
  %usHighCACLeakage.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %423, i32 0, i32 1, i32 6
  %454 = ptrtoint ptr %usHighCACLeakage.i.i to i32
  call void @__asan_loadN_noabort(i32 %454, i32 2)
  %455 = load i16, ptr %usHighCACLeakage.i.i, align 1
  %456 = call i16 @llvm.bswap.i16(i16 %455) #8
  %usHighCACLeakage7.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i512.i, i32 0, i32 6
  %457 = ptrtoint ptr %usHighCACLeakage7.i.i to i32
  call void @__asan_store2_noabort(i32 %457)
  store i16 %456, ptr %usHighCACLeakage7.i.i, align 4
  %usMaximumPowerDeliveryLimit.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i512.i, i32 0, i32 7
  %458 = ptrtoint ptr %usMaximumPowerDeliveryLimit.i.i to i32
  call void @__asan_store2_noabort(i32 %458)
  store i16 %429, ptr %usMaximumPowerDeliveryLimit.i.i, align 2
  %459 = ptrtoint ptr %cac_dtp_table.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr %call7.i.i.i512.i, ptr %cac_dtp_table.i, align 4
  br label %get_cac_tdp_table.exit.i

get_cac_tdp_table.exit.i:                         ; preds = %if.end.i514.i, %if.then76.i.get_cac_tdp_table.exit.i_crit_edge
  %retval.0.i515.i = phi i32 [ 0, %if.end.i514.i ], [ -12, %if.then76.i.get_cac_tdp_table.exit.i_crit_edge ]
  %usTjMax.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %423, i32 0, i32 3
  %460 = ptrtoint ptr %usTjMax.i to i32
  call void @__asan_loadN_noabort(i32 %460, i32 2)
  %461 = load i16, ptr %usTjMax.i, align 1
  %462 = call i16 @llvm.bswap.i16(i16 %461) #8
  %463 = ptrtoint ptr %cac_dtp_table.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %cac_dtp_table.i, align 4
  %usDefaultTargetOperatingTemp.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %464, i32 0, i32 13
  %465 = ptrtoint ptr %usDefaultTargetOperatingTemp.i to i32
  call void @__asan_store2_noabort(i32 %465)
  store i16 %462, ptr %usDefaultTargetOperatingTemp.i, align 2
  br label %if.end91.i

if.else.i166:                                     ; preds = %if.then70.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %466 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i516.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %466, i32 noundef 3520, i32 noundef 68) #13
  %cmp.i517.i = icmp eq ptr %call7.i.i.i516.i, null
  br i1 %cmp.i517.i, label %if.else.i166.if.end91.i_crit_edge, label %if.end.i531.i

if.else.i166.if.end91.i_crit_edge:                ; preds = %if.else.i166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

if.end.i531.i:                                    ; preds = %if.else.i166
  call void @__sanitizer_cov_trace_pc() #10
  %power_tune_table88.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table, ptr %423, i32 0, i32 1
  %cac_dtp_table87.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  %467 = ptrtoint ptr %power_tune_table88.i to i32
  call void @__asan_loadN_noabort(i32 %467, i32 2)
  %468 = load i16, ptr %power_tune_table88.i, align 1
  %469 = call i16 @llvm.bswap.i16(i16 %468) #8
  %470 = ptrtoint ptr %call7.i.i.i516.i to i32
  call void @__asan_store2_noabort(i32 %470)
  store i16 %469, ptr %call7.i.i.i516.i, align 8
  %usConfigurableTDP.i518.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table, ptr %423, i32 0, i32 1, i32 1
  %471 = ptrtoint ptr %usConfigurableTDP.i518.i to i32
  call void @__asan_loadN_noabort(i32 %471, i32 2)
  %472 = load i16, ptr %usConfigurableTDP.i518.i, align 1
  %473 = call i16 @llvm.bswap.i16(i16 %472) #8
  %usConfigurableTDP2.i519.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i516.i, i32 0, i32 1
  %474 = ptrtoint ptr %usConfigurableTDP2.i519.i to i32
  call void @__asan_store2_noabort(i32 %474)
  store i16 %473, ptr %usConfigurableTDP2.i519.i, align 2
  %usTDC.i520.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table, ptr %423, i32 0, i32 1, i32 2
  %475 = ptrtoint ptr %usTDC.i520.i to i32
  call void @__asan_loadN_noabort(i32 %475, i32 2)
  %476 = load i16, ptr %usTDC.i520.i, align 1
  %477 = call i16 @llvm.bswap.i16(i16 %476) #8
  %usTDC3.i521.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i516.i, i32 0, i32 2
  %478 = ptrtoint ptr %usTDC3.i521.i to i32
  call void @__asan_store2_noabort(i32 %478)
  store i16 %477, ptr %usTDC3.i521.i, align 4
  %usBatteryPowerLimit.i522.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table, ptr %423, i32 0, i32 1, i32 3
  %479 = ptrtoint ptr %usBatteryPowerLimit.i522.i to i32
  call void @__asan_loadN_noabort(i32 %479, i32 2)
  %480 = load i16, ptr %usBatteryPowerLimit.i522.i, align 1
  %481 = call i16 @llvm.bswap.i16(i16 %480) #8
  %usBatteryPowerLimit4.i523.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i516.i, i32 0, i32 3
  %482 = ptrtoint ptr %usBatteryPowerLimit4.i523.i to i32
  call void @__asan_store2_noabort(i32 %482)
  store i16 %481, ptr %usBatteryPowerLimit4.i523.i, align 2
  %usSmallPowerLimit.i524.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table, ptr %423, i32 0, i32 1, i32 4
  %483 = ptrtoint ptr %usSmallPowerLimit.i524.i to i32
  call void @__asan_loadN_noabort(i32 %483, i32 2)
  %484 = load i16, ptr %usSmallPowerLimit.i524.i, align 1
  %485 = call i16 @llvm.bswap.i16(i16 %484) #8
  %usSmallPowerLimit5.i525.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i516.i, i32 0, i32 4
  %486 = ptrtoint ptr %usSmallPowerLimit5.i525.i to i32
  call void @__asan_store2_noabort(i32 %486)
  store i16 %485, ptr %usSmallPowerLimit5.i525.i, align 8
  %usLowCACLeakage.i526.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table, ptr %423, i32 0, i32 1, i32 5
  %487 = ptrtoint ptr %usLowCACLeakage.i526.i to i32
  call void @__asan_loadN_noabort(i32 %487, i32 2)
  %488 = load i16, ptr %usLowCACLeakage.i526.i, align 1
  %489 = call i16 @llvm.bswap.i16(i16 %488) #8
  %usLowCACLeakage6.i527.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i516.i, i32 0, i32 5
  %490 = ptrtoint ptr %usLowCACLeakage6.i527.i to i32
  call void @__asan_store2_noabort(i32 %490)
  store i16 %489, ptr %usLowCACLeakage6.i527.i, align 2
  %usHighCACLeakage.i528.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table, ptr %423, i32 0, i32 1, i32 6
  %491 = ptrtoint ptr %usHighCACLeakage.i528.i to i32
  call void @__asan_loadN_noabort(i32 %491, i32 2)
  %492 = load i16, ptr %usHighCACLeakage.i528.i, align 1
  %493 = call i16 @llvm.bswap.i16(i16 %492) #8
  %usHighCACLeakage7.i529.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i516.i, i32 0, i32 6
  %494 = ptrtoint ptr %usHighCACLeakage7.i529.i to i32
  call void @__asan_store2_noabort(i32 %494)
  store i16 %493, ptr %usHighCACLeakage7.i529.i, align 4
  %usMaximumPowerDeliveryLimit.i530.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i516.i, i32 0, i32 7
  %495 = ptrtoint ptr %usMaximumPowerDeliveryLimit.i530.i to i32
  call void @__asan_store2_noabort(i32 %495)
  store i16 255, ptr %usMaximumPowerDeliveryLimit.i530.i, align 2
  %496 = ptrtoint ptr %cac_dtp_table87.i to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr %call7.i.i.i516.i, ptr %cac_dtp_table87.i, align 4
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.end.i531.i, %if.else.i166.if.end91.i_crit_edge, %get_cac_tdp_table.exit.i, %get_cacp_tdp_table_offset.exit.i.if.end91.i_crit_edge, %if.then5.i.i.if.end91.i_crit_edge, %if.then.i.i.if.end91.i_crit_edge, %if.end65.i.if.end91.i_crit_edge
  %result.5.i = phi i32 [ %result.3.i, %get_cacp_tdp_table_offset.exit.i.if.end91.i_crit_edge ], [ %retval.0.i515.i, %get_cac_tdp_table.exit.i ], [ 0, %if.end.i531.i ], [ -12, %if.else.i166.if.end91.i_crit_edge ], [ %result.3.i, %if.end65.i.if.end91.i_crit_edge ], [ %result.3.i, %if.then.i.i.if.end91.i_crit_edge ], [ %result.3.i, %if.then5.i.i.if.end91.i_crit_edge ]
  %497 = ptrtoint ptr %usTableSize.i to i32
  call void @__asan_loadN_noabort(i32 %497, i32 2)
  %498 = load i16, ptr %usTableSize.i, align 1
  %499 = call i16 @llvm.bswap.i16(i16 %498) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %499)
  %cmp93.i = icmp ugt i16 %499, 65
  br i1 %cmp93.i, label %if.then95.i, label %if.end91.i.if.end199.i_crit_edge

if.end91.i.if.end199.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199.i

if.then95.i:                                      ; preds = %if.end91.i
  %usVddcDependencyOnSCLKOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %table_addr.0.i, i32 0, i32 3
  %500 = ptrtoint ptr %usVddcDependencyOnSCLKOffset.i to i32
  call void @__asan_loadN_noabort(i32 %500, i32 2)
  %501 = load i16, ptr %usVddcDependencyOnSCLKOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %501)
  %cmp97.not.i = icmp eq i16 %501, 0
  br i1 %cmp97.not.i, label %if.end106.i, label %if.then99.i

if.then99.i:                                      ; preds = %if.then95.i
  %502 = ptrtoint ptr %table_addr.0.i to i32
  %503 = call i16 @llvm.bswap.i16(i16 %501) #8
  %conv101.i = zext i16 %503 to i32
  %add102.i = add i32 %conv101.i, %502
  %504 = inttoptr i32 %add102.i to ptr
  %505 = ptrtoint ptr %504 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %504, align 1
  %conv.i534.i = zext i8 %506 to i32
  %507 = shl nuw nsw i32 %conv.i534.i, 3
  %spec.select.i1.i535.i = or i32 %507, 4
  %call9.i.i.i549.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i535.i, i32 noundef 3520) #12
  %cmp.i552.i = icmp eq ptr %call9.i.i.i549.i, null
  br i1 %cmp.i552.i, label %if.then99.i.if.end199.i_crit_edge, label %if.end.i555.i

if.then99.i.if.end199.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199.i

if.end.i555.i:                                    ; preds = %if.then99.i
  %508 = ptrtoint ptr %504 to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %504, align 1
  %conv4.i554.i = zext i8 %509 to i32
  %510 = ptrtoint ptr %call9.i.i.i549.i to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 %conv4.i554.i, ptr %call9.i.i.i549.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %509)
  %cmp62.not.i.i = icmp eq i8 %509, 0
  br i1 %cmp62.not.i.i, label %if.end.i555.i.if.end106.thread.i_crit_edge, label %if.end.i555.i.for.body.i564.i_crit_edge

if.end.i555.i.for.body.i564.i_crit_edge:          ; preds = %if.end.i555.i
  br label %for.body.i564.i

if.end.i555.i.if.end106.thread.i_crit_edge:       ; preds = %if.end.i555.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106.thread.i

for.body.i564.i:                                  ; preds = %for.body.i564.i.for.body.i564.i_crit_edge, %if.end.i555.i.for.body.i564.i_crit_edge
  %i.03.i556.i = phi i32 [ %inc.i563.i, %for.body.i564.i.for.body.i564.i_crit_edge ], [ 0, %if.end.i555.i.for.body.i564.i_crit_edge ]
  %arrayidx.i557.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %504, i32 0, i32 1, i32 %i.03.i556.i
  %ucClockHigh.i.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %504, i32 0, i32 1, i32 %i.03.i556.i, i32 1
  %511 = ptrtoint ptr %ucClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %ucClockHigh.i.i, align 1
  %conv8.i.i167 = zext i8 %512 to i32
  %shl.i558.i = shl nuw nsw i32 %conv8.i.i167, 16
  %513 = ptrtoint ptr %arrayidx.i557.i to i32
  call void @__asan_loadN_noabort(i32 %513, i32 2)
  %514 = load i16, ptr %arrayidx.i557.i, align 1
  %515 = call i16 @llvm.bswap.i16(i16 %514) #8
  %conv11.i559.i = zext i16 %515 to i32
  %or.i560.i = or i32 %shl.i558.i, %conv11.i559.i
  %arrayidx13.i561.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call9.i.i.i549.i, i32 0, i32 1, i32 %i.03.i556.i
  %516 = ptrtoint ptr %arrayidx13.i561.i to i32
  call void @__asan_store4_noabort(i32 %516)
  store i32 %or.i560.i, ptr %arrayidx13.i561.i, align 4
  %usVoltage.i.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %504, i32 0, i32 1, i32 %i.03.i556.i, i32 2
  %517 = ptrtoint ptr %usVoltage.i.i to i32
  call void @__asan_loadN_noabort(i32 %517, i32 2)
  %518 = load i16, ptr %usVoltage.i.i, align 1
  %519 = call i16 @llvm.bswap.i16(i16 %518) #8
  %conv16.i.i = zext i16 %519 to i32
  %v.i562.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call9.i.i.i549.i, i32 0, i32 1, i32 %i.03.i556.i, i32 1
  %520 = ptrtoint ptr %v.i562.i to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 %conv16.i.i, ptr %v.i562.i, align 8
  %inc.i563.i = add nuw i32 %i.03.i556.i, 1
  %521 = ptrtoint ptr %call9.i.i.i549.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %call9.i.i.i549.i, align 128
  %cmp6.i.i = icmp ult i32 %inc.i563.i, %522
  br i1 %cmp6.i.i, label %for.body.i564.i.for.body.i564.i_crit_edge, label %for.body.i564.i.if.end106.thread.i_crit_edge

for.body.i564.i.if.end106.thread.i_crit_edge:     ; preds = %for.body.i564.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106.thread.i

for.body.i564.i.for.body.i564.i_crit_edge:        ; preds = %for.body.i564.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i564.i

if.end106.thread.i:                               ; preds = %for.body.i564.i.if.end106.thread.i_crit_edge, %if.end.i555.i.if.end106.thread.i_crit_edge
  %523 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_store4_noabort(i32 %523)
  store ptr %call9.i.i.i549.i, ptr %dyn_state.i, align 4
  br label %land.lhs.true109.i

if.end106.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.5.i)
  %cmp107.i = icmp eq i32 %result.5.i, 0
  br i1 %cmp107.i, label %if.end106.i.land.lhs.true109.i_crit_edge, label %if.end106.i.if.end199.i_crit_edge

if.end106.i.if.end199.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199.i

if.end106.i.land.lhs.true109.i_crit_edge:         ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true109.i

land.lhs.true109.i:                               ; preds = %if.end106.i.land.lhs.true109.i_crit_edge, %if.end106.thread.i
  %usVddciDependencyOnMCLKOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %table_addr.0.i, i32 0, i32 4
  %524 = ptrtoint ptr %usVddciDependencyOnMCLKOffset.i to i32
  call void @__asan_loadN_noabort(i32 %524, i32 2)
  %525 = load i16, ptr %usVddciDependencyOnMCLKOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %525)
  %cmp111.not.i = icmp eq i16 %525, 0
  br i1 %cmp111.not.i, label %land.lhs.true109.i.land.lhs.true123.i_crit_edge, label %if.then113.i

land.lhs.true109.i.land.lhs.true123.i_crit_edge:  ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true123.i

if.then113.i:                                     ; preds = %land.lhs.true109.i
  %526 = ptrtoint ptr %table_addr.0.i to i32
  %527 = call i16 @llvm.bswap.i16(i16 %525) #8
  %conv115.i = zext i16 %527 to i32
  %add116.i = add i32 %conv115.i, %526
  %528 = inttoptr i32 %add116.i to ptr
  %529 = ptrtoint ptr %528 to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %528, align 1
  %conv.i567.i = zext i8 %530 to i32
  %531 = shl nuw nsw i32 %conv.i567.i, 3
  %spec.select.i1.i568.i = or i32 %531, 4
  %call9.i.i.i582.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i568.i, i32 noundef 3520) #12
  %cmp.i585.i = icmp eq ptr %call9.i.i.i582.i, null
  br i1 %cmp.i585.i, label %if.then113.i.if.end199.i_crit_edge, label %if.end.i589.i

if.then113.i.if.end199.i_crit_edge:               ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199.i

if.end.i589.i:                                    ; preds = %if.then113.i
  %532 = ptrtoint ptr %528 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %528, align 1
  %conv4.i587.i = zext i8 %533 to i32
  %534 = ptrtoint ptr %call9.i.i.i582.i to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 %conv4.i587.i, ptr %call9.i.i.i582.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %533)
  %cmp62.not.i588.i = icmp eq i8 %533, 0
  br i1 %cmp62.not.i588.i, label %if.end.i589.i.for.end.i604.i_crit_edge, label %if.end.i589.i.for.body.i603.i_crit_edge

if.end.i589.i.for.body.i603.i_crit_edge:          ; preds = %if.end.i589.i
  br label %for.body.i603.i

if.end.i589.i.for.end.i604.i_crit_edge:           ; preds = %if.end.i589.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i604.i

for.body.i603.i:                                  ; preds = %for.body.i603.i.for.body.i603.i_crit_edge, %if.end.i589.i.for.body.i603.i_crit_edge
  %i.03.i590.i = phi i32 [ %inc.i601.i, %for.body.i603.i.for.body.i603.i_crit_edge ], [ 0, %if.end.i589.i.for.body.i603.i_crit_edge ]
  %arrayidx.i591.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %528, i32 0, i32 1, i32 %i.03.i590.i
  %ucClockHigh.i592.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %528, i32 0, i32 1, i32 %i.03.i590.i, i32 1
  %535 = ptrtoint ptr %ucClockHigh.i592.i to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %ucClockHigh.i592.i, align 1
  %conv8.i593.i = zext i8 %536 to i32
  %shl.i594.i = shl nuw nsw i32 %conv8.i593.i, 16
  %537 = ptrtoint ptr %arrayidx.i591.i to i32
  call void @__asan_loadN_noabort(i32 %537, i32 2)
  %538 = load i16, ptr %arrayidx.i591.i, align 1
  %539 = call i16 @llvm.bswap.i16(i16 %538) #8
  %conv11.i595.i = zext i16 %539 to i32
  %or.i596.i = or i32 %shl.i594.i, %conv11.i595.i
  %arrayidx13.i597.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call9.i.i.i582.i, i32 0, i32 1, i32 %i.03.i590.i
  %540 = ptrtoint ptr %arrayidx13.i597.i to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 %or.i596.i, ptr %arrayidx13.i597.i, align 4
  %usVoltage.i598.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %528, i32 0, i32 1, i32 %i.03.i590.i, i32 2
  %541 = ptrtoint ptr %usVoltage.i598.i to i32
  call void @__asan_loadN_noabort(i32 %541, i32 2)
  %542 = load i16, ptr %usVoltage.i598.i, align 1
  %543 = call i16 @llvm.bswap.i16(i16 %542) #8
  %conv16.i599.i = zext i16 %543 to i32
  %v.i600.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call9.i.i.i582.i, i32 0, i32 1, i32 %i.03.i590.i, i32 1
  %544 = ptrtoint ptr %v.i600.i to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %conv16.i599.i, ptr %v.i600.i, align 8
  %inc.i601.i = add nuw i32 %i.03.i590.i, 1
  %545 = ptrtoint ptr %call9.i.i.i582.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %call9.i.i.i582.i, align 128
  %cmp6.i602.i = icmp ult i32 %inc.i601.i, %546
  br i1 %cmp6.i602.i, label %for.body.i603.i.for.body.i603.i_crit_edge, label %for.body.i603.i.for.end.i604.i_crit_edge

for.body.i603.i.for.end.i604.i_crit_edge:         ; preds = %for.body.i603.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i604.i

for.body.i603.i.for.body.i603.i_crit_edge:        ; preds = %for.body.i603.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i603.i

for.end.i604.i:                                   ; preds = %for.body.i603.i.for.end.i604.i_crit_edge, %if.end.i589.i.for.end.i604.i_crit_edge
  %547 = ptrtoint ptr %vddci_dependency_on_mclk.i to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr %call9.i.i.i582.i, ptr %vddci_dependency_on_mclk.i, align 4
  br label %land.lhs.true123.i

land.lhs.true123.i:                               ; preds = %for.end.i604.i, %land.lhs.true109.i.land.lhs.true123.i_crit_edge
  %usVddcDependencyOnMCLKOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %table_addr.0.i, i32 0, i32 5
  %548 = ptrtoint ptr %usVddcDependencyOnMCLKOffset.i to i32
  call void @__asan_loadN_noabort(i32 %548, i32 2)
  %549 = load i16, ptr %usVddcDependencyOnMCLKOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %549)
  %cmp125.not.i = icmp eq i16 %549, 0
  br i1 %cmp125.not.i, label %land.lhs.true123.i.land.lhs.true137.i_crit_edge, label %if.then127.i

land.lhs.true123.i.land.lhs.true137.i_crit_edge:  ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true137.i

if.then127.i:                                     ; preds = %land.lhs.true123.i
  %550 = ptrtoint ptr %table_addr.0.i to i32
  %551 = call i16 @llvm.bswap.i16(i16 %549) #8
  %conv129.i = zext i16 %551 to i32
  %add130.i = add i32 %conv129.i, %550
  %552 = inttoptr i32 %add130.i to ptr
  %553 = ptrtoint ptr %552 to i32
  call void @__asan_load1_noabort(i32 %553)
  %554 = load i8, ptr %552, align 1
  %conv.i607.i = zext i8 %554 to i32
  %555 = shl nuw nsw i32 %conv.i607.i, 3
  %spec.select.i1.i608.i = or i32 %555, 4
  %call9.i.i.i622.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i608.i, i32 noundef 3520) #12
  %cmp.i625.i = icmp eq ptr %call9.i.i.i622.i, null
  br i1 %cmp.i625.i, label %if.then127.i.if.end199.i_crit_edge, label %if.end.i629.i

if.then127.i.if.end199.i_crit_edge:               ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199.i

if.end.i629.i:                                    ; preds = %if.then127.i
  %556 = ptrtoint ptr %552 to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %552, align 1
  %conv4.i627.i = zext i8 %557 to i32
  %558 = ptrtoint ptr %call9.i.i.i622.i to i32
  call void @__asan_store4_noabort(i32 %558)
  store i32 %conv4.i627.i, ptr %call9.i.i.i622.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %557)
  %cmp62.not.i628.i = icmp eq i8 %557, 0
  br i1 %cmp62.not.i628.i, label %if.end.i629.i.for.end.i644.i_crit_edge, label %if.end.i629.i.for.body.i643.i_crit_edge

if.end.i629.i.for.body.i643.i_crit_edge:          ; preds = %if.end.i629.i
  br label %for.body.i643.i

if.end.i629.i.for.end.i644.i_crit_edge:           ; preds = %if.end.i629.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i644.i

for.body.i643.i:                                  ; preds = %for.body.i643.i.for.body.i643.i_crit_edge, %if.end.i629.i.for.body.i643.i_crit_edge
  %i.03.i630.i = phi i32 [ %inc.i641.i, %for.body.i643.i.for.body.i643.i_crit_edge ], [ 0, %if.end.i629.i.for.body.i643.i_crit_edge ]
  %arrayidx.i631.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %552, i32 0, i32 1, i32 %i.03.i630.i
  %ucClockHigh.i632.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %552, i32 0, i32 1, i32 %i.03.i630.i, i32 1
  %559 = ptrtoint ptr %ucClockHigh.i632.i to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %ucClockHigh.i632.i, align 1
  %conv8.i633.i = zext i8 %560 to i32
  %shl.i634.i = shl nuw nsw i32 %conv8.i633.i, 16
  %561 = ptrtoint ptr %arrayidx.i631.i to i32
  call void @__asan_loadN_noabort(i32 %561, i32 2)
  %562 = load i16, ptr %arrayidx.i631.i, align 1
  %563 = call i16 @llvm.bswap.i16(i16 %562) #8
  %conv11.i635.i = zext i16 %563 to i32
  %or.i636.i = or i32 %shl.i634.i, %conv11.i635.i
  %arrayidx13.i637.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call9.i.i.i622.i, i32 0, i32 1, i32 %i.03.i630.i
  %564 = ptrtoint ptr %arrayidx13.i637.i to i32
  call void @__asan_store4_noabort(i32 %564)
  store i32 %or.i636.i, ptr %arrayidx13.i637.i, align 4
  %usVoltage.i638.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %552, i32 0, i32 1, i32 %i.03.i630.i, i32 2
  %565 = ptrtoint ptr %usVoltage.i638.i to i32
  call void @__asan_loadN_noabort(i32 %565, i32 2)
  %566 = load i16, ptr %usVoltage.i638.i, align 1
  %567 = call i16 @llvm.bswap.i16(i16 %566) #8
  %conv16.i639.i = zext i16 %567 to i32
  %v.i640.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call9.i.i.i622.i, i32 0, i32 1, i32 %i.03.i630.i, i32 1
  %568 = ptrtoint ptr %v.i640.i to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 %conv16.i639.i, ptr %v.i640.i, align 8
  %inc.i641.i = add nuw i32 %i.03.i630.i, 1
  %569 = ptrtoint ptr %call9.i.i.i622.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %call9.i.i.i622.i, align 128
  %cmp6.i642.i = icmp ult i32 %inc.i641.i, %570
  br i1 %cmp6.i642.i, label %for.body.i643.i.for.body.i643.i_crit_edge, label %for.body.i643.i.for.end.i644.i_crit_edge

for.body.i643.i.for.end.i644.i_crit_edge:         ; preds = %for.body.i643.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i644.i

for.body.i643.i.for.body.i643.i_crit_edge:        ; preds = %for.body.i643.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i643.i

for.end.i644.i:                                   ; preds = %for.body.i643.i.for.end.i644.i_crit_edge, %if.end.i629.i.for.end.i644.i_crit_edge
  %571 = ptrtoint ptr %vddc_dependency_on_mclk.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store ptr %call9.i.i.i622.i, ptr %vddc_dependency_on_mclk.i, align 4
  br label %land.lhs.true137.i

land.lhs.true137.i:                               ; preds = %for.end.i644.i, %land.lhs.true123.i.land.lhs.true137.i_crit_edge
  %usMaxClockVoltageOnDCOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %table_addr.0.i, i32 0, i32 6
  %572 = ptrtoint ptr %usMaxClockVoltageOnDCOffset.i to i32
  call void @__asan_loadN_noabort(i32 %572, i32 2)
  %573 = load i16, ptr %usMaxClockVoltageOnDCOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %573)
  %cmp139.not.i = icmp eq i16 %573, 0
  br i1 %cmp139.not.i, label %land.lhs.true137.i.land.lhs.true150.i_crit_edge, label %if.then141.i

land.lhs.true137.i.land.lhs.true150.i_crit_edge:  ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true150.i

if.then141.i:                                     ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #10
  %574 = ptrtoint ptr %table_addr.0.i to i32
  %575 = call i16 @llvm.bswap.i16(i16 %573) #8
  %conv143.i = zext i16 %575 to i32
  %add144.i = add i32 %conv143.i, %574
  %576 = inttoptr i32 %add144.i to ptr
  %max_clock_voltage_on_dc.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7
  %entries.i.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Table, ptr %576, i32 0, i32 1
  %ucSclkHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Table, ptr %576, i32 0, i32 1, i32 0, i32 1
  %577 = ptrtoint ptr %ucSclkHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %ucSclkHigh.i.i, align 1
  %conv.i647.i = zext i8 %578 to i32
  %shl.i648.i = shl nuw nsw i32 %conv.i647.i, 16
  %579 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_loadN_noabort(i32 %579, i32 2)
  %580 = load i16, ptr %entries.i.i, align 1
  %581 = call i16 @llvm.bswap.i16(i16 %580) #8
  %conv3.i649.i = zext i16 %581 to i32
  %or.i650.i = or i32 %shl.i648.i, %conv3.i649.i
  %582 = ptrtoint ptr %max_clock_voltage_on_dc.i to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 %or.i650.i, ptr %max_clock_voltage_on_dc.i, align 4
  %ucMclkHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Table, ptr %576, i32 0, i32 1, i32 0, i32 3
  %583 = ptrtoint ptr %ucMclkHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %583)
  %584 = load i8, ptr %ucMclkHigh.i.i, align 1
  %conv6.i651.i = zext i8 %584 to i32
  %shl7.i.i = shl nuw nsw i32 %conv6.i651.i, 16
  %usMclkLow.i.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Table, ptr %576, i32 0, i32 1, i32 0, i32 2
  %585 = ptrtoint ptr %usMclkLow.i.i to i32
  call void @__asan_loadN_noabort(i32 %585, i32 2)
  %586 = load i16, ptr %usMclkLow.i.i, align 1
  %587 = call i16 @llvm.bswap.i16(i16 %586) #8
  %conv10.i.i = zext i16 %587 to i32
  %or11.i.i = or i32 %shl7.i.i, %conv10.i.i
  %mclk.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 1
  %588 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_store4_noabort(i32 %588)
  store i32 %or11.i.i, ptr %mclk.i.i, align 4
  %usVddc.i.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Table, ptr %576, i32 0, i32 1, i32 0, i32 4
  %589 = ptrtoint ptr %usVddc.i.i to i32
  call void @__asan_loadN_noabort(i32 %589, i32 2)
  %590 = load i16, ptr %usVddc.i.i, align 1
  %591 = call i16 @llvm.bswap.i16(i16 %590) #8
  %vddc.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 3
  %592 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_store2_noabort(i32 %592)
  store i16 %591, ptr %vddc.i.i, align 4
  %usVddci.i.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Table, ptr %576, i32 0, i32 1, i32 0, i32 5
  %593 = ptrtoint ptr %usVddci.i.i to i32
  call void @__asan_loadN_noabort(i32 %593, i32 2)
  %594 = load i16, ptr %usVddci.i.i, align 1
  %595 = call i16 @llvm.bswap.i16(i16 %594) #8
  %vddci.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 4
  %596 = ptrtoint ptr %vddci.i.i to i32
  call void @__asan_store2_noabort(i32 %596)
  store i16 %595, ptr %vddci.i.i, align 2
  br label %land.lhs.true150.i

land.lhs.true150.i:                               ; preds = %if.then141.i, %land.lhs.true137.i.land.lhs.true150.i_crit_edge
  %597 = ptrtoint ptr %vddc_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %vddc_dependency_on_mclk.i, align 4
  %cmp153.not.i = icmp eq ptr %598, null
  br i1 %cmp153.not.i, label %land.lhs.true150.i.land.lhs.true168.i_crit_edge, label %land.lhs.true155.i

land.lhs.true150.i.land.lhs.true168.i_crit_edge:  ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true168.i

land.lhs.true155.i:                               ; preds = %land.lhs.true150.i
  %599 = ptrtoint ptr %598 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %598, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %600)
  %cmp158.not.i = icmp eq i32 %600, 0
  br i1 %cmp158.not.i, label %land.lhs.true155.i.land.lhs.true168.i_crit_edge, label %if.then160.i

land.lhs.true155.i.land.lhs.true168.i_crit_edge:  ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true168.i

if.then160.i:                                     ; preds = %land.lhs.true155.i
  %valid_mclk_values.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 6
  %601 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %600, i32 4) #8
  %602 = extractvalue { i32, i1 } %601, 1
  %603 = extractvalue { i32, i1 } %601, 0
  %spec.select.i.i.i = call i32 @llvm.uadd.sat.i32(i32 %603, i32 4) #8
  %retval.0.i.i.i = select i1 %602, i32 -1, i32 %spec.select.i.i.i
  %call9.i.i.i668.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i, i32 noundef 3520) #12
  %tobool.not.i671.i = icmp eq ptr %call9.i.i.i668.i, null
  br i1 %tobool.not.i671.i, label %if.then160.i.if.end199.i_crit_edge, label %if.end.i673.i

if.then160.i.if.end199.i_crit_edge:               ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199.i

if.end.i673.i:                                    ; preds = %if.then160.i
  %604 = ptrtoint ptr %598 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %598, align 4
  %606 = ptrtoint ptr %call9.i.i.i668.i to i32
  call void @__asan_store4_noabort(i32 %606)
  store i32 %605, ptr %call9.i.i.i668.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %605)
  %cmp1.not.i.i = icmp eq i32 %605, 0
  br i1 %cmp1.not.i.i, label %if.end.i673.i.for.end.i678.i_crit_edge, label %if.end.i673.i.for.body.i677.i_crit_edge

if.end.i673.i.for.body.i677.i_crit_edge:          ; preds = %if.end.i673.i
  br label %for.body.i677.i

if.end.i673.i.for.end.i678.i_crit_edge:           ; preds = %if.end.i673.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i678.i

for.body.i677.i:                                  ; preds = %for.body.i677.i.for.body.i677.i_crit_edge, %if.end.i673.i.for.body.i677.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i675.i, %for.body.i677.i.for.body.i677.i_crit_edge ], [ 0, %if.end.i673.i.for.body.i677.i_crit_edge ]
  %arrayidx.i674.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %598, i32 0, i32 1, i32 %i.02.i.i
  %607 = ptrtoint ptr %arrayidx.i674.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %arrayidx.i674.i, align 4
  %arrayidx5.i.i = getelementptr %struct.phm_clock_array, ptr %call9.i.i.i668.i, i32 0, i32 1, i32 %i.02.i.i
  %609 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 %608, ptr %arrayidx5.i.i, align 4
  %inc.i675.i = add nuw i32 %i.02.i.i, 1
  %610 = ptrtoint ptr %call9.i.i.i668.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %call9.i.i.i668.i, align 128
  %cmp.i676.i = icmp ult i32 %inc.i675.i, %611
  br i1 %cmp.i676.i, label %for.body.i677.i.for.body.i677.i_crit_edge, label %for.body.i677.i.for.end.i678.i_crit_edge

for.body.i677.i.for.end.i678.i_crit_edge:         ; preds = %for.body.i677.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i678.i

for.body.i677.i.for.body.i677.i_crit_edge:        ; preds = %for.body.i677.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i677.i

for.end.i678.i:                                   ; preds = %for.body.i677.i.for.end.i678.i_crit_edge, %if.end.i673.i.for.end.i678.i_crit_edge
  %612 = ptrtoint ptr %valid_mclk_values.i to i32
  call void @__asan_store4_noabort(i32 %612)
  store ptr %call9.i.i.i668.i, ptr %valid_mclk_values.i, align 4
  br label %land.lhs.true168.i

land.lhs.true168.i:                               ; preds = %for.end.i678.i, %land.lhs.true155.i.land.lhs.true168.i_crit_edge, %land.lhs.true150.i.land.lhs.true168.i_crit_edge
  %613 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %dyn_state.i, align 4
  %cmp171.not.i = icmp eq ptr %614, null
  br i1 %cmp171.not.i, label %land.lhs.true168.i.land.lhs.true187.i_crit_edge, label %land.lhs.true173.i

land.lhs.true168.i.land.lhs.true187.i_crit_edge:  ; preds = %land.lhs.true168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true187.i

land.lhs.true173.i:                               ; preds = %land.lhs.true168.i
  %615 = ptrtoint ptr %614 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %614, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %616)
  %cmp177.not.i = icmp eq i32 %616, 0
  br i1 %cmp177.not.i, label %land.lhs.true173.i.land.lhs.true187.i_crit_edge, label %if.then179.i

land.lhs.true173.i.land.lhs.true187.i_crit_edge:  ; preds = %land.lhs.true173.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true187.i

if.then179.i:                                     ; preds = %land.lhs.true173.i
  %valid_sclk_values.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 5
  %617 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %616, i32 4) #8
  %618 = extractvalue { i32, i1 } %617, 1
  %619 = extractvalue { i32, i1 } %617, 0
  %spec.select.i.i680.i = call i32 @llvm.uadd.sat.i32(i32 %619, i32 4) #8
  %retval.0.i.i681.i = select i1 %618, i32 -1, i32 %spec.select.i.i680.i
  %call9.i.i.i705.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i681.i, i32 noundef 3520) #12
  %tobool.not.i708.i = icmp eq ptr %call9.i.i.i705.i, null
  br i1 %tobool.not.i708.i, label %if.then179.i.if.end199.i_crit_edge, label %if.end.i711.i

if.then179.i.if.end199.i_crit_edge:               ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199.i

if.end.i711.i:                                    ; preds = %if.then179.i
  %620 = ptrtoint ptr %614 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %614, align 4
  %622 = ptrtoint ptr %call9.i.i.i705.i to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 %621, ptr %call9.i.i.i705.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %621)
  %cmp1.not.i710.i = icmp eq i32 %621, 0
  br i1 %cmp1.not.i710.i, label %if.end.i711.i.for.end.i718.i_crit_edge, label %if.end.i711.i.for.body.i717.i_crit_edge

if.end.i711.i.for.body.i717.i_crit_edge:          ; preds = %if.end.i711.i
  br label %for.body.i717.i

if.end.i711.i.for.end.i718.i_crit_edge:           ; preds = %if.end.i711.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i718.i

for.body.i717.i:                                  ; preds = %for.body.i717.i.for.body.i717.i_crit_edge, %if.end.i711.i.for.body.i717.i_crit_edge
  %i.02.i712.i = phi i32 [ %inc.i715.i, %for.body.i717.i.for.body.i717.i_crit_edge ], [ 0, %if.end.i711.i.for.body.i717.i_crit_edge ]
  %arrayidx.i713.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %614, i32 0, i32 1, i32 %i.02.i712.i
  %623 = ptrtoint ptr %arrayidx.i713.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %arrayidx.i713.i, align 4
  %arrayidx5.i714.i = getelementptr %struct.phm_clock_array, ptr %call9.i.i.i705.i, i32 0, i32 1, i32 %i.02.i712.i
  %625 = ptrtoint ptr %arrayidx5.i714.i to i32
  call void @__asan_store4_noabort(i32 %625)
  store i32 %624, ptr %arrayidx5.i714.i, align 4
  %inc.i715.i = add nuw i32 %i.02.i712.i, 1
  %626 = ptrtoint ptr %call9.i.i.i705.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %call9.i.i.i705.i, align 128
  %cmp.i716.i = icmp ult i32 %inc.i715.i, %627
  br i1 %cmp.i716.i, label %for.body.i717.i.for.body.i717.i_crit_edge, label %for.body.i717.i.for.end.i718.i_crit_edge

for.body.i717.i.for.end.i718.i_crit_edge:         ; preds = %for.body.i717.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i718.i

for.body.i717.i.for.body.i717.i_crit_edge:        ; preds = %for.body.i717.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i717.i

for.end.i718.i:                                   ; preds = %for.body.i717.i.for.end.i718.i_crit_edge, %if.end.i711.i.for.end.i718.i_crit_edge
  %628 = ptrtoint ptr %valid_sclk_values.i to i32
  call void @__asan_store4_noabort(i32 %628)
  store ptr %call9.i.i.i705.i, ptr %valid_sclk_values.i, align 4
  br label %land.lhs.true187.i

land.lhs.true187.i:                               ; preds = %for.end.i718.i, %land.lhs.true173.i.land.lhs.true187.i_crit_edge, %land.lhs.true168.i.land.lhs.true187.i_crit_edge
  %usMvddDependencyOnMCLKOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %table_addr.0.i, i32 0, i32 8
  %629 = ptrtoint ptr %usMvddDependencyOnMCLKOffset.i to i32
  call void @__asan_loadN_noabort(i32 %629, i32 2)
  %630 = load i16, ptr %usMvddDependencyOnMCLKOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %630)
  %cmp189.not.i = icmp eq i16 %630, 0
  br i1 %cmp189.not.i, label %land.lhs.true187.i.if.end199.i_crit_edge, label %if.then191.i

land.lhs.true187.i.if.end199.i_crit_edge:         ; preds = %land.lhs.true187.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199.i

if.then191.i:                                     ; preds = %land.lhs.true187.i
  %631 = ptrtoint ptr %table_addr.0.i to i32
  %632 = call i16 @llvm.bswap.i16(i16 %630) #8
  %conv193.i = zext i16 %632 to i32
  %add194.i = add i32 %conv193.i, %631
  %633 = inttoptr i32 %add194.i to ptr
  %634 = ptrtoint ptr %633 to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %633, align 1
  %conv.i721.i = zext i8 %635 to i32
  %636 = shl nuw nsw i32 %conv.i721.i, 3
  %spec.select.i1.i722.i = or i32 %636, 4
  %call9.i.i.i736.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i722.i, i32 noundef 3520) #12
  %cmp.i739.i = icmp eq ptr %call9.i.i.i736.i, null
  br i1 %cmp.i739.i, label %if.then191.i.if.end199.i_crit_edge, label %if.end.i743.i

if.then191.i.if.end199.i_crit_edge:               ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199.i

if.end.i743.i:                                    ; preds = %if.then191.i
  %637 = ptrtoint ptr %633 to i32
  call void @__asan_load1_noabort(i32 %637)
  %638 = load i8, ptr %633, align 1
  %conv4.i741.i = zext i8 %638 to i32
  %639 = ptrtoint ptr %call9.i.i.i736.i to i32
  call void @__asan_store4_noabort(i32 %639)
  store i32 %conv4.i741.i, ptr %call9.i.i.i736.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %638)
  %cmp62.not.i742.i = icmp eq i8 %638, 0
  br i1 %cmp62.not.i742.i, label %if.end.i743.i.for.end.i758.i_crit_edge, label %if.end.i743.i.for.body.i757.i_crit_edge

if.end.i743.i.for.body.i757.i_crit_edge:          ; preds = %if.end.i743.i
  br label %for.body.i757.i

if.end.i743.i.for.end.i758.i_crit_edge:           ; preds = %if.end.i743.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i758.i

for.body.i757.i:                                  ; preds = %for.body.i757.i.for.body.i757.i_crit_edge, %if.end.i743.i.for.body.i757.i_crit_edge
  %i.03.i744.i = phi i32 [ %inc.i755.i, %for.body.i757.i.for.body.i757.i_crit_edge ], [ 0, %if.end.i743.i.for.body.i757.i_crit_edge ]
  %arrayidx.i745.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %633, i32 0, i32 1, i32 %i.03.i744.i
  %ucClockHigh.i746.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %633, i32 0, i32 1, i32 %i.03.i744.i, i32 1
  %640 = ptrtoint ptr %ucClockHigh.i746.i to i32
  call void @__asan_load1_noabort(i32 %640)
  %641 = load i8, ptr %ucClockHigh.i746.i, align 1
  %conv8.i747.i = zext i8 %641 to i32
  %shl.i748.i = shl nuw nsw i32 %conv8.i747.i, 16
  %642 = ptrtoint ptr %arrayidx.i745.i to i32
  call void @__asan_loadN_noabort(i32 %642, i32 2)
  %643 = load i16, ptr %arrayidx.i745.i, align 1
  %644 = call i16 @llvm.bswap.i16(i16 %643) #8
  %conv11.i749.i = zext i16 %644 to i32
  %or.i750.i = or i32 %shl.i748.i, %conv11.i749.i
  %arrayidx13.i751.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call9.i.i.i736.i, i32 0, i32 1, i32 %i.03.i744.i
  %645 = ptrtoint ptr %arrayidx13.i751.i to i32
  call void @__asan_store4_noabort(i32 %645)
  store i32 %or.i750.i, ptr %arrayidx13.i751.i, align 4
  %usVoltage.i752.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %633, i32 0, i32 1, i32 %i.03.i744.i, i32 2
  %646 = ptrtoint ptr %usVoltage.i752.i to i32
  call void @__asan_loadN_noabort(i32 %646, i32 2)
  %647 = load i16, ptr %usVoltage.i752.i, align 1
  %648 = call i16 @llvm.bswap.i16(i16 %647) #8
  %conv16.i753.i = zext i16 %648 to i32
  %v.i754.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call9.i.i.i736.i, i32 0, i32 1, i32 %i.03.i744.i, i32 1
  %649 = ptrtoint ptr %v.i754.i to i32
  call void @__asan_store4_noabort(i32 %649)
  store i32 %conv16.i753.i, ptr %v.i754.i, align 8
  %inc.i755.i = add nuw i32 %i.03.i744.i, 1
  %650 = ptrtoint ptr %call9.i.i.i736.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %call9.i.i.i736.i, align 128
  %cmp6.i756.i = icmp ult i32 %inc.i755.i, %651
  br i1 %cmp6.i756.i, label %for.body.i757.i.for.body.i757.i_crit_edge, label %for.body.i757.i.for.end.i758.i_crit_edge

for.body.i757.i.for.end.i758.i_crit_edge:         ; preds = %for.body.i757.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i758.i

for.body.i757.i.for.body.i757.i_crit_edge:        ; preds = %for.body.i757.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i757.i

for.end.i758.i:                                   ; preds = %for.body.i757.i.for.end.i758.i_crit_edge, %if.end.i743.i.for.end.i758.i_crit_edge
  %652 = ptrtoint ptr %mvdd_dependency_on_mclk.i to i32
  call void @__asan_store4_noabort(i32 %652)
  store ptr %call9.i.i.i736.i, ptr %mvdd_dependency_on_mclk.i, align 4
  br label %if.end199.i

if.end199.i:                                      ; preds = %for.end.i758.i, %if.then191.i.if.end199.i_crit_edge, %land.lhs.true187.i.if.end199.i_crit_edge, %if.then179.i.if.end199.i_crit_edge, %if.then160.i.if.end199.i_crit_edge, %if.then127.i.if.end199.i_crit_edge, %if.then113.i.if.end199.i_crit_edge, %if.end106.i.if.end199.i_crit_edge, %if.then99.i.if.end199.i_crit_edge, %if.end91.i.if.end199.i_crit_edge
  %result.13.i = phi i32 [ %result.5.i, %if.end91.i.if.end199.i_crit_edge ], [ 0, %land.lhs.true187.i.if.end199.i_crit_edge ], [ 0, %for.end.i758.i ], [ -12, %if.then191.i.if.end199.i_crit_edge ], [ -12, %if.then179.i.if.end199.i_crit_edge ], [ -12, %if.then160.i.if.end199.i_crit_edge ], [ -12, %if.then127.i.if.end199.i_crit_edge ], [ -12, %if.then113.i.if.end199.i_crit_edge ], [ %result.5.i, %if.end106.i.if.end199.i_crit_edge ], [ -12, %if.then99.i.if.end199.i_crit_edge ]
  %653 = ptrtoint ptr %usTableSize.i to i32
  call void @__asan_loadN_noabort(i32 %653, i32 2)
  %654 = load i16, ptr %usTableSize.i, align 1
  %655 = call i16 @llvm.bswap.i16(i16 %654) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %655)
  %cmp.i.i762.i = icmp ugt i16 %655, 45
  br i1 %cmp.i.i762.i, label %if.then.i.i765.i, label %if.end199.i.init_clock_voltage_dependency.exit_crit_edge

if.end199.i.init_clock_voltage_dependency.exit_crit_edge: ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_clock_voltage_dependency.exit

if.then.i.i765.i:                                 ; preds = %if.end199.i
  %usExtendendedHeaderOffset.i.i763.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %table_addr.0.i, i32 0, i32 3
  %656 = ptrtoint ptr %usExtendendedHeaderOffset.i.i763.i to i32
  call void @__asan_loadN_noabort(i32 %656, i32 2)
  %657 = load i16, ptr %usExtendendedHeaderOffset.i.i763.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %657)
  %cmp3.not.i.i764.i = icmp eq i16 %657, 0
  br i1 %cmp3.not.i.i764.i, label %if.then.i.i765.i.init_clock_voltage_dependency.exit_crit_edge, label %if.then5.i.i769.i

if.then.i.i765.i.init_clock_voltage_dependency.exit_crit_edge: ; preds = %if.then.i.i765.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_clock_voltage_dependency.exit

if.then5.i.i769.i:                                ; preds = %if.then.i.i765.i
  %658 = ptrtoint ptr %table_addr.0.i to i32
  %659 = call i16 @llvm.bswap.i16(i16 %657) #8
  %conv7.i.i766.i = zext i16 %659 to i32
  %add.i.i767.i = add i32 %conv7.i.i766.i, %658
  %660 = inttoptr i32 %add.i.i767.i to ptr
  %661 = ptrtoint ptr %660 to i32
  call void @__asan_loadN_noabort(i32 %661, i32 2)
  %662 = load i16, ptr %660, align 1
  %663 = call i16 @llvm.bswap.i16(i16 %662) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %663)
  %cmp9.i.i768.i = icmp ugt i16 %663, 23
  br i1 %cmp9.i.i768.i, label %get_sclk_vdd_gfx_clock_voltage_dependency_table_offset.exit.i, label %if.then5.i.i769.i.init_clock_voltage_dependency.exit_crit_edge

if.then5.i.i769.i.init_clock_voltage_dependency.exit_crit_edge: ; preds = %if.then5.i.i769.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_clock_voltage_dependency.exit

get_sclk_vdd_gfx_clock_voltage_dependency_table_offset.exit.i: ; preds = %if.then5.i.i769.i
  %usSclkVddgfxTableOffset.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %660, i32 0, i32 9
  %664 = ptrtoint ptr %usSclkVddgfxTableOffset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %664, i32 2)
  %665 = load i16, ptr %usSclkVddgfxTableOffset.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %665)
  %cmp202.not.i = icmp eq i16 %665, 0
  br i1 %cmp202.not.i, label %get_sclk_vdd_gfx_clock_voltage_dependency_table_offset.exit.i.init_clock_voltage_dependency.exit_crit_edge, label %if.then204.i

get_sclk_vdd_gfx_clock_voltage_dependency_table_offset.exit.i.init_clock_voltage_dependency.exit_crit_edge: ; preds = %get_sclk_vdd_gfx_clock_voltage_dependency_table_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_clock_voltage_dependency.exit

if.then204.i:                                     ; preds = %get_sclk_vdd_gfx_clock_voltage_dependency_table_offset.exit.i
  %666 = call i16 @llvm.bswap.i16(i16 %665) #8
  %conv201.i = zext i16 %666 to i32
  %add206.i = add i32 %conv201.i, %658
  %667 = inttoptr i32 %add206.i to ptr
  %668 = ptrtoint ptr %667 to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %667, align 1
  %conv.i770.i = zext i8 %669 to i32
  %670 = shl nuw nsw i32 %conv.i770.i, 3
  %spec.select.i1.i771.i = or i32 %670, 4
  %call9.i.i.i785.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i771.i, i32 noundef 3520) #12
  %cmp.i788.i = icmp eq ptr %call9.i.i.i785.i, null
  br i1 %cmp.i788.i, label %if.then204.i.if.then63_crit_edge, label %if.end.i792.i

if.then204.i.if.then63_crit_edge:                 ; preds = %if.then204.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then63

if.end.i792.i:                                    ; preds = %if.then204.i
  %671 = ptrtoint ptr %667 to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %667, align 1
  %conv4.i790.i = zext i8 %672 to i32
  %673 = ptrtoint ptr %call9.i.i.i785.i to i32
  call void @__asan_store4_noabort(i32 %673)
  store i32 %conv4.i790.i, ptr %call9.i.i.i785.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %672)
  %cmp62.not.i791.i = icmp eq i8 %672, 0
  br i1 %cmp62.not.i791.i, label %if.end.i792.i.init_clock_voltage_dependency.exit.thread_crit_edge, label %if.end.i792.i.for.body.i806.i_crit_edge

if.end.i792.i.for.body.i806.i_crit_edge:          ; preds = %if.end.i792.i
  br label %for.body.i806.i

if.end.i792.i.init_clock_voltage_dependency.exit.thread_crit_edge: ; preds = %if.end.i792.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_clock_voltage_dependency.exit.thread

for.body.i806.i:                                  ; preds = %for.body.i806.i.for.body.i806.i_crit_edge, %if.end.i792.i.for.body.i806.i_crit_edge
  %i.03.i793.i = phi i32 [ %inc.i804.i, %for.body.i806.i.for.body.i806.i_crit_edge ], [ 0, %if.end.i792.i.for.body.i806.i_crit_edge ]
  %arrayidx.i794.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %667, i32 0, i32 1, i32 %i.03.i793.i
  %ucClockHigh.i795.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %667, i32 0, i32 1, i32 %i.03.i793.i, i32 1
  %674 = ptrtoint ptr %ucClockHigh.i795.i to i32
  call void @__asan_load1_noabort(i32 %674)
  %675 = load i8, ptr %ucClockHigh.i795.i, align 1
  %conv8.i796.i = zext i8 %675 to i32
  %shl.i797.i = shl nuw nsw i32 %conv8.i796.i, 16
  %676 = ptrtoint ptr %arrayidx.i794.i to i32
  call void @__asan_loadN_noabort(i32 %676, i32 2)
  %677 = load i16, ptr %arrayidx.i794.i, align 1
  %678 = call i16 @llvm.bswap.i16(i16 %677) #8
  %conv11.i798.i = zext i16 %678 to i32
  %or.i799.i = or i32 %shl.i797.i, %conv11.i798.i
  %arrayidx13.i800.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call9.i.i.i785.i, i32 0, i32 1, i32 %i.03.i793.i
  %679 = ptrtoint ptr %arrayidx13.i800.i to i32
  call void @__asan_store4_noabort(i32 %679)
  store i32 %or.i799.i, ptr %arrayidx13.i800.i, align 4
  %usVoltage.i801.i = getelementptr %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %667, i32 0, i32 1, i32 %i.03.i793.i, i32 2
  %680 = ptrtoint ptr %usVoltage.i801.i to i32
  call void @__asan_loadN_noabort(i32 %680, i32 2)
  %681 = load i16, ptr %usVoltage.i801.i, align 1
  %682 = call i16 @llvm.bswap.i16(i16 %681) #8
  %conv16.i802.i = zext i16 %682 to i32
  %v.i803.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call9.i.i.i785.i, i32 0, i32 1, i32 %i.03.i793.i, i32 1
  %683 = ptrtoint ptr %v.i803.i to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 %conv16.i802.i, ptr %v.i803.i, align 8
  %inc.i804.i = add nuw i32 %i.03.i793.i, 1
  %684 = ptrtoint ptr %call9.i.i.i785.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %call9.i.i.i785.i, align 128
  %cmp6.i805.i = icmp ult i32 %inc.i804.i, %685
  br i1 %cmp6.i805.i, label %for.body.i806.i.for.body.i806.i_crit_edge, label %for.body.i806.i.init_clock_voltage_dependency.exit.thread_crit_edge

for.body.i806.i.init_clock_voltage_dependency.exit.thread_crit_edge: ; preds = %for.body.i806.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_clock_voltage_dependency.exit.thread

for.body.i806.i.for.body.i806.i_crit_edge:        ; preds = %for.body.i806.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i806.i

init_clock_voltage_dependency.exit.thread:        ; preds = %for.body.i806.i.init_clock_voltage_dependency.exit.thread_crit_edge, %if.end.i792.i.init_clock_voltage_dependency.exit.thread_crit_edge
  %686 = ptrtoint ptr %vdd_gfx_dependency_on_sclk.i to i32
  call void @__asan_store4_noabort(i32 %686)
  store ptr %call9.i.i.i785.i, ptr %vdd_gfx_dependency_on_sclk.i, align 4
  br label %do.end75

init_clock_voltage_dependency.exit:               ; preds = %get_sclk_vdd_gfx_clock_voltage_dependency_table_offset.exit.i.init_clock_voltage_dependency.exit_crit_edge, %if.then5.i.i769.i.init_clock_voltage_dependency.exit_crit_edge, %if.then.i.i765.i.init_clock_voltage_dependency.exit_crit_edge, %if.end199.i.init_clock_voltage_dependency.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.13.i)
  %cmp62 = icmp eq i32 %result.13.i, 0
  br i1 %cmp62, label %init_clock_voltage_dependency.exit.do.end75_crit_edge, label %init_clock_voltage_dependency.exit.if.then63_crit_edge

init_clock_voltage_dependency.exit.if.then63_crit_edge: ; preds = %init_clock_voltage_dependency.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then63

init_clock_voltage_dependency.exit.do.end75_crit_edge: ; preds = %init_clock_voltage_dependency.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end75

if.then63:                                        ; preds = %init_clock_voltage_dependency.exit.if.then63_crit_edge, %if.then204.i.if.then63_crit_edge
  %result.14.i219 = phi i32 [ %result.13.i, %init_clock_voltage_dependency.exit.if.then63_crit_edge ], [ -12, %if.then204.i.if.then63_crit_edge ]
  %call64 = call i32 @___ratelimit(ptr noundef nonnull @pp_tables_initialize._rs.17, ptr noundef nonnull @__func__.pp_tables_initialize) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then63.cleanup_crit_edge, label %do.end69

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end69:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #11
  br label %cleanup

do.end75:                                         ; preds = %init_clock_voltage_dependency.exit.do.end75_crit_edge, %init_clock_voltage_dependency.exit.thread
  %687 = ptrtoint ptr %usTableSize.i to i32
  call void @__asan_loadN_noabort(i32 %687, i32 2)
  %688 = load i16, ptr %usTableSize.i, align 1
  %689 = call i16 @llvm.bswap.i16(i16 %688) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 87, i16 %689)
  %cmp.i169 = icmp ugt i16 %689, 87
  br i1 %cmp.i169, label %if.then.i170, label %do.end75.do.end91_crit_edge

do.end75.do.end91_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end91

if.then.i170:                                     ; preds = %do.end75
  %ulTDPLimit.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %table_addr.0.i, i32 0, i32 1
  %690 = ptrtoint ptr %ulTDPLimit.i to i32
  call void @__asan_loadN_noabort(i32 %690, i32 4)
  %691 = load i32, ptr %ulTDPLimit.i, align 1
  %692 = call i32 @llvm.bswap.i32(i32 %691) #8
  %TDPLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 11
  %693 = ptrtoint ptr %TDPLimit.i to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 %692, ptr %TDPLimit.i, align 4
  %ulNearTDPLimit.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %table_addr.0.i, i32 0, i32 2
  %694 = ptrtoint ptr %ulNearTDPLimit.i to i32
  call void @__asan_loadN_noabort(i32 %694, i32 4)
  %695 = load i32, ptr %ulNearTDPLimit.i, align 1
  %696 = call i32 @llvm.bswap.i32(i32 %695) #8
  %nearTDPLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 12
  %697 = ptrtoint ptr %nearTDPLimit.i to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 %696, ptr %nearTDPLimit.i, align 4
  %usTDPODLimit.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %table_addr.0.i, i32 0, i32 6
  %698 = ptrtoint ptr %usTDPODLimit.i to i32
  call void @__asan_loadN_noabort(i32 %698, i32 2)
  %699 = load i16, ptr %usTDPODLimit.i, align 1
  %700 = call i16 @llvm.bswap.i16(i16 %699) #8
  %TDPODLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 16
  %701 = ptrtoint ptr %TDPODLimit.i to i32
  call void @__asan_store2_noabort(i32 %701)
  store i16 %700, ptr %TDPODLimit.i, align 4
  %TDPAdjustment.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 17
  %702 = ptrtoint ptr %TDPAdjustment.i to i32
  call void @__asan_store4_noabort(i32 %702)
  store i32 0, ptr %TDPAdjustment.i, align 4
  %VidAdjustment.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 23
  %703 = ptrtoint ptr %VidAdjustment.i to i32
  call void @__asan_store4_noabort(i32 %703)
  store i32 0, ptr %VidAdjustment.i, align 4
  %VidAdjustmentPolarity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 24
  %704 = ptrtoint ptr %VidAdjustmentPolarity.i to i32
  call void @__asan_store1_noabort(i32 %704)
  store i8 0, ptr %VidAdjustmentPolarity.i, align 4
  %VidMinLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 20
  %705 = ptrtoint ptr %VidMinLimit.i to i32
  call void @__asan_store4_noabort(i32 %705)
  store i32 0, ptr %VidMinLimit.i, align 4
  %VidMaxLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 21
  %706 = ptrtoint ptr %VidMaxLimit.i to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 1500000, ptr %VidMaxLimit.i, align 4
  %VidStep.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 22
  %707 = ptrtoint ptr %VidStep.i to i32
  call void @__asan_store4_noabort(i32 %707)
  store i32 6250, ptr %VidStep.i, align 4
  %708 = ptrtoint ptr %ulNearTDPLimit.i to i32
  call void @__asan_loadN_noabort(i32 %708, i32 4)
  %709 = load i32, ptr %ulNearTDPLimit.i, align 1
  %710 = call i32 @llvm.bswap.i32(i32 %709) #8
  %nearTDPLimitAdjusted.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 13
  %711 = ptrtoint ptr %nearTDPLimitAdjusted.i to i32
  call void @__asan_store4_noabort(i32 %711)
  store i32 %710, ptr %nearTDPLimitAdjusted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %699)
  %cmp15.not.i = icmp eq i16 %699, 0
  br i1 %cmp15.not.i, label %if.then.i170.if.end.i173_crit_edge, label %if.then17.i

if.then.i170.if.end.i173_crit_edge:               ; preds = %if.then.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i173

if.then17.i:                                      ; preds = %if.then.i170
  call void @__sanitizer_cov_trace_pc() #10
  %712 = ptrtoint ptr %arrayidx.i8.i93.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %arrayidx.i8.i93.i, align 4
  %or.i.i172 = or i32 %713, 262144
  store i32 %or.i.i172, ptr %arrayidx.i8.i93.i, align 4
  br label %if.end.i173

if.end.i173:                                      ; preds = %if.then17.i, %if.then.i170.if.end.i173_crit_edge
  %ulSQRampingThreshold.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %table_addr.0.i, i32 0, i32 3
  %714 = ptrtoint ptr %ulSQRampingThreshold.i to i32
  call void @__asan_loadN_noabort(i32 %714, i32 4)
  %715 = load i32, ptr %ulSQRampingThreshold.i, align 1
  %716 = call i32 @llvm.bswap.i32(i32 %715) #8
  %SQRampingThreshold.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 14
  %717 = ptrtoint ptr %SQRampingThreshold.i to i32
  call void @__asan_store4_noabort(i32 %717)
  store i32 %716, ptr %SQRampingThreshold.i, align 4
  %ulCACLeakage.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %table_addr.0.i, i32 0, i32 5
  %718 = ptrtoint ptr %ulCACLeakage.i to i32
  call void @__asan_loadN_noabort(i32 %718, i32 4)
  %719 = load i32, ptr %ulCACLeakage.i, align 1
  %720 = call i32 @llvm.bswap.i32(i32 %719) #8
  %CACLeakage.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 15
  %721 = ptrtoint ptr %CACLeakage.i to i32
  call void @__asan_store4_noabort(i32 %721)
  store i32 %720, ptr %CACLeakage.i, align 4
  %cac_leakage_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 13
  %722 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_store4_noabort(i32 %722)
  store ptr null, ptr %cac_leakage_table.i, align 4
  %usCACLeakageTableOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %table_addr.0.i, i32 0, i32 4
  %723 = ptrtoint ptr %usCACLeakageTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %723, i32 2)
  %724 = load i16, ptr %usCACLeakageTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %724)
  %cmp22.not.i = icmp eq i16 %724, 0
  br i1 %cmp22.not.i, label %if.end.i173.if.end29.i_crit_edge, label %if.then24.i

if.end.i173.if.end29.i_crit_edge:                 ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.end.i173
  %725 = ptrtoint ptr %table_addr.0.i to i32
  %726 = call i16 @llvm.bswap.i16(i16 %724) #8
  %conv26.i = zext i16 %726 to i32
  %add.i174 = add i32 %conv26.i, %725
  %727 = inttoptr i32 %add.i174 to ptr
  %tobool.not.i.i175 = icmp eq ptr %hwmgr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i174)
  %tobool1.not.i.i = icmp eq i32 %add.i174, 0
  %or.cond.i.i176 = or i1 %tobool.not.i.i175, %tobool1.not.i.i
  br i1 %or.cond.i.i176, label %if.then24.i.if.end29.i_crit_edge, label %if.end8.i.i.i.i193

if.then24.i.if.end29.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.end8.i.i.i.i193:                               ; preds = %if.then24.i
  %728 = ptrtoint ptr %727 to i32
  call void @__asan_load1_noabort(i32 %728)
  %729 = load i8, ptr %727, align 1
  %conv.i.i177 = zext i8 %729 to i32
  %730 = shl nuw nsw i32 %conv.i.i177, 3
  %spec.select.i63.i.i = or i32 %730, 4
  %call9.i.i.i.i192 = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i63.i.i, i32 noundef 3520) #12
  %tobool5.not.i.i = icmp eq ptr %call9.i.i.i.i192, null
  br i1 %tobool5.not.i.i, label %if.end8.i.i.i.i193.if.end29.i_crit_edge, label %if.end7.i.i

if.end8.i.i.i.i193.if.end29.i_crit_edge:          ; preds = %if.end8.i.i.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.end7.i.i:                                      ; preds = %if.end8.i.i.i.i193
  %731 = ptrtoint ptr %727 to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %727, align 1
  %conv9.i.i = zext i8 %732 to i32
  %733 = ptrtoint ptr %call9.i.i.i.i192 to i32
  call void @__asan_store4_noabort(i32 %733)
  store i32 %conv9.i.i, ptr %call9.i.i.i.i192, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %732)
  %cmp64.not.i.i = icmp eq i8 %732, 0
  br i1 %cmp64.not.i.i, label %if.end7.i.i.for.end.i.i200_crit_edge, label %for.body.lr.ph.i.i

if.end7.i.i.for.end.i.i200_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i200

for.body.lr.ph.i.i:                               ; preds = %if.end7.i.i
  %734 = ptrtoint ptr %arrayidx.i8.i133.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %arrayidx.i8.i133.i, align 4
  %and1.i.i.i196 = and i32 %735, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i196)
  %cmp.i.not.i.i = icmp eq i32 %and1.i.i.i196, 0
  br label %for.body.i.i197

for.body.i.i197:                                  ; preds = %for.inc.i.i.for.body.i.i197_crit_edge, %for.body.lr.ph.i.i
  %i.065.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i198, %for.inc.i.i.for.body.i.i197_crit_edge ]
  %arrayidx25.i.i = getelementptr %struct._ATOM_PPLIB_CAC_Leakage_Table, ptr %727, i32 0, i32 1, i32 %i.065.i.i
  %736 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_loadN_noabort(i32 %736, i32 2)
  %737 = load i16, ptr %arrayidx25.i.i, align 1
  %738 = call i16 @llvm.bswap.i16(i16 %737) #8
  %arrayidx27.i.i = getelementptr %struct.phm_cac_leakage_table, ptr %call9.i.i.i.i192, i32 0, i32 1, i32 %i.065.i.i
  %739 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store2_noabort(i32 %739)
  store i16 %738, ptr %arrayidx27.i.i, align 4
  br i1 %cmp.i.not.i.i, label %if.else.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %for.body.i.i197
  call void @__sanitizer_cov_trace_pc() #10
  %usVddc2.i.i = getelementptr inbounds %struct.anon.116, ptr %arrayidx25.i.i, i32 0, i32 1
  %740 = ptrtoint ptr %usVddc2.i.i to i32
  call void @__asan_loadN_noabort(i32 %740, i32 2)
  %741 = load i16, ptr %usVddc2.i.i, align 1
  %742 = call i16 @llvm.bswap.i16(i16 %741) #8
  %Vddc2.i.i = getelementptr inbounds %struct.anon.1, ptr %arrayidx27.i.i, i32 0, i32 1
  %743 = ptrtoint ptr %Vddc2.i.i to i32
  call void @__asan_store2_noabort(i32 %743)
  store i16 %742, ptr %Vddc2.i.i, align 2
  %usVddc3.i.i = getelementptr inbounds %struct.anon.116, ptr %arrayidx25.i.i, i32 0, i32 2
  %744 = ptrtoint ptr %usVddc3.i.i to i32
  call void @__asan_loadN_noabort(i32 %744, i32 2)
  %745 = load i16, ptr %usVddc3.i.i, align 1
  %746 = call i16 @llvm.bswap.i16(i16 %745) #8
  %Vddc3.i.i = getelementptr inbounds %struct.anon.1, ptr %arrayidx27.i.i, i32 0, i32 2
  %747 = ptrtoint ptr %Vddc3.i.i to i32
  call void @__asan_store2_noabort(i32 %747)
  store i16 %746, ptr %Vddc3.i.i, align 8
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i197
  call void @__sanitizer_cov_trace_pc() #10
  %ulLeakageValue.i.i = getelementptr inbounds %struct.anon.115, ptr %arrayidx25.i.i, i32 0, i32 1
  %748 = ptrtoint ptr %ulLeakageValue.i.i to i32
  call void @__asan_loadN_noabort(i32 %748, i32 4)
  %749 = load i32, ptr %ulLeakageValue.i.i, align 1
  %750 = call i32 @llvm.bswap.i32(i32 %749) #8
  %Leakage.i.i = getelementptr inbounds %struct.anon, ptr %arrayidx27.i.i, i32 0, i32 1
  %751 = ptrtoint ptr %Leakage.i.i to i32
  call void @__asan_store4_noabort(i32 %751)
  store i32 %750, ptr %Leakage.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then13.i.i
  %inc.i.i198 = add nuw i32 %i.065.i.i, 1
  %752 = ptrtoint ptr %call9.i.i.i.i192 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load i32, ptr %call9.i.i.i.i192, align 128
  %cmp.i.i199 = icmp ult i32 %inc.i.i198, %753
  br i1 %cmp.i.i199, label %for.inc.i.i.for.body.i.i197_crit_edge, label %for.inc.i.i.for.end.i.i200_crit_edge

for.inc.i.i.for.end.i.i200_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i200

for.inc.i.i.for.body.i.i197_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i197

for.end.i.i200:                                   ; preds = %for.inc.i.i.for.end.i.i200_crit_edge, %if.end7.i.i.for.end.i.i200_crit_edge
  %754 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_store4_noabort(i32 %754)
  store ptr %call9.i.i.i.i192, ptr %cac_leakage_table.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %for.end.i.i200, %if.end8.i.i.i.i193.if.end29.i_crit_edge, %if.then24.i.if.end29.i_crit_edge, %if.end.i173.if.end29.i_crit_edge
  %cmp78 = phi i1 [ true, %for.end.i.i200 ], [ false, %if.end8.i.i.i.i193.if.end29.i_crit_edge ], [ false, %if.then24.i.if.end29.i_crit_edge ], [ true, %if.end.i173.if.end29.i_crit_edge ]
  %result.0.i201 = phi i32 [ 0, %for.end.i.i200 ], [ -12, %if.end8.i.i.i.i193.if.end29.i_crit_edge ], [ -22, %if.then24.i.if.end29.i_crit_edge ], [ 0, %if.end.i173.if.end29.i_crit_edge ]
  %usLoadLineSlope.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %table_addr.0.i, i32 0, i32 7
  %755 = ptrtoint ptr %usLoadLineSlope.i to i32
  call void @__asan_loadN_noabort(i32 %755, i32 2)
  %756 = load i16, ptr %usLoadLineSlope.i, align 1
  %757 = call i16 @llvm.bswap.i16(i16 %756) #8
  %LoadLineSlope.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 19
  %758 = ptrtoint ptr %LoadLineSlope.i to i32
  call void @__asan_store2_noabort(i32 %758)
  store i16 %757, ptr %LoadLineSlope.i, align 2
  %ppm_parameter_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 19
  %759 = ptrtoint ptr %ppm_parameter_table.i to i32
  call void @__asan_store4_noabort(i32 %759)
  store ptr null, ptr %ppm_parameter_table.i, align 4
  %usExtendendedHeaderOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %table_addr.0.i, i32 0, i32 3
  %760 = ptrtoint ptr %usExtendendedHeaderOffset.i to i32
  call void @__asan_loadN_noabort(i32 %760, i32 2)
  %761 = load i16, ptr %usExtendendedHeaderOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %761)
  %cmp33.not.i = icmp eq i16 %761, 0
  br i1 %cmp33.not.i, label %if.end29.i.init_dpm2_parameters.exit_crit_edge, label %if.then35.i

if.end29.i.init_dpm2_parameters.exit_crit_edge:   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_dpm2_parameters.exit

if.then35.i:                                      ; preds = %if.end29.i
  %762 = ptrtoint ptr %table_addr.0.i to i32
  %763 = call i16 @llvm.bswap.i16(i16 %761) #8
  %conv37.i = zext i16 %763 to i32
  %add38.i = add i32 %conv37.i, %762
  %764 = inttoptr i32 %add38.i to ptr
  %usPPMTableOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %764, i32 0, i32 6
  %765 = ptrtoint ptr %usPPMTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %765, i32 2)
  %766 = load i16, ptr %usPPMTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %766)
  %cmp40.not.i = icmp eq i16 %766, 0
  br i1 %cmp40.not.i, label %if.then35.i.init_dpm2_parameters.exit_crit_edge, label %land.lhs.true.i202

if.then35.i.init_dpm2_parameters.exit_crit_edge:  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_dpm2_parameters.exit

land.lhs.true.i202:                               ; preds = %if.then35.i
  %767 = ptrtoint ptr %764 to i32
  call void @__asan_loadN_noabort(i32 %767, i32 2)
  %768 = load i16, ptr %764, align 1
  %769 = call i16 @llvm.bswap.i16(i16 %768) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %769)
  %cmp43.i = icmp ugt i16 %769, 17
  br i1 %cmp43.i, label %if.then45.i, label %land.lhs.true.i202.init_dpm2_parameters.exit_crit_edge

land.lhs.true.i202.init_dpm2_parameters.exit_crit_edge: ; preds = %land.lhs.true.i202
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_dpm2_parameters.exit

if.then45.i:                                      ; preds = %land.lhs.true.i202
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %770 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i96.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %770, i32 noundef 3520, i32 noundef 36) #13
  %cmp.i97.i = icmp eq ptr %call7.i.i.i96.i, null
  br i1 %cmp.i97.i, label %if.then45.i.init_dpm2_parameters.exit_crit_edge, label %if.then52.i

if.then45.i.init_dpm2_parameters.exit_crit_edge:  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_dpm2_parameters.exit

if.then52.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  %771 = call i16 @llvm.bswap.i16(i16 %766) #8
  %conv47.i = zext i16 %771 to i32
  %add48.i = add i32 %conv47.i, %762
  %772 = inttoptr i32 %add48.i to ptr
  %ucPpmDesign.i.i = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %772, i32 0, i32 1
  %773 = ptrtoint ptr %ucPpmDesign.i.i to i32
  call void @__asan_load1_noabort(i32 %773)
  %774 = load i8, ptr %ucPpmDesign.i.i, align 1
  %775 = ptrtoint ptr %call7.i.i.i96.i to i32
  call void @__asan_store1_noabort(i32 %775)
  store i8 %774, ptr %call7.i.i.i96.i, align 8
  %usCpuCoreNumber.i.i = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %772, i32 0, i32 2
  %776 = ptrtoint ptr %usCpuCoreNumber.i.i to i32
  call void @__asan_loadN_noabort(i32 %776, i32 2)
  %777 = load i16, ptr %usCpuCoreNumber.i.i, align 1
  %778 = call i16 @llvm.bswap.i16(i16 %777) #8
  %cpu_core_number.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i96.i, i32 0, i32 1
  %779 = ptrtoint ptr %cpu_core_number.i.i to i32
  call void @__asan_store2_noabort(i32 %779)
  store i16 %778, ptr %cpu_core_number.i.i, align 2
  %ulPlatformTDP.i.i = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %772, i32 0, i32 3
  %780 = ptrtoint ptr %ulPlatformTDP.i.i to i32
  call void @__asan_loadN_noabort(i32 %780, i32 4)
  %781 = load i32, ptr %ulPlatformTDP.i.i, align 1
  %782 = call i32 @llvm.bswap.i32(i32 %781) #8
  %platform_tdp.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i96.i, i32 0, i32 2
  %783 = ptrtoint ptr %platform_tdp.i.i to i32
  call void @__asan_store4_noabort(i32 %783)
  store i32 %782, ptr %platform_tdp.i.i, align 4
  %ulSmallACPlatformTDP.i.i = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %772, i32 0, i32 4
  %784 = ptrtoint ptr %ulSmallACPlatformTDP.i.i to i32
  call void @__asan_loadN_noabort(i32 %784, i32 4)
  %785 = load i32, ptr %ulSmallACPlatformTDP.i.i, align 1
  %786 = call i32 @llvm.bswap.i32(i32 %785) #8
  %small_ac_platform_tdp.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i96.i, i32 0, i32 3
  %787 = ptrtoint ptr %small_ac_platform_tdp.i.i to i32
  call void @__asan_store4_noabort(i32 %787)
  store i32 %786, ptr %small_ac_platform_tdp.i.i, align 8
  %ulPlatformTDC.i.i = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %772, i32 0, i32 5
  %788 = ptrtoint ptr %ulPlatformTDC.i.i to i32
  call void @__asan_loadN_noabort(i32 %788, i32 4)
  %789 = load i32, ptr %ulPlatformTDC.i.i, align 1
  %790 = call i32 @llvm.bswap.i32(i32 %789) #8
  %platform_tdc.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i96.i, i32 0, i32 4
  %791 = ptrtoint ptr %platform_tdc.i.i to i32
  call void @__asan_store4_noabort(i32 %791)
  store i32 %790, ptr %platform_tdc.i.i, align 4
  %ulSmallACPlatformTDC.i.i = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %772, i32 0, i32 6
  %792 = ptrtoint ptr %ulSmallACPlatformTDC.i.i to i32
  call void @__asan_loadN_noabort(i32 %792, i32 4)
  %793 = load i32, ptr %ulSmallACPlatformTDC.i.i, align 1
  %794 = call i32 @llvm.bswap.i32(i32 %793) #8
  %small_ac_platform_tdc.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i96.i, i32 0, i32 5
  %795 = ptrtoint ptr %small_ac_platform_tdc.i.i to i32
  call void @__asan_store4_noabort(i32 %795)
  store i32 %794, ptr %small_ac_platform_tdc.i.i, align 8
  %ulApuTDP.i.i = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %772, i32 0, i32 7
  %796 = ptrtoint ptr %ulApuTDP.i.i to i32
  call void @__asan_loadN_noabort(i32 %796, i32 4)
  %797 = load i32, ptr %ulApuTDP.i.i, align 1
  %798 = call i32 @llvm.bswap.i32(i32 %797) #8
  %apu_tdp.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i96.i, i32 0, i32 6
  %799 = ptrtoint ptr %apu_tdp.i.i to i32
  call void @__asan_store4_noabort(i32 %799)
  store i32 %798, ptr %apu_tdp.i.i, align 4
  %ulDGpuTDP.i.i = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %772, i32 0, i32 8
  %800 = ptrtoint ptr %ulDGpuTDP.i.i to i32
  call void @__asan_loadN_noabort(i32 %800, i32 4)
  %801 = load i32, ptr %ulDGpuTDP.i.i, align 1
  %802 = call i32 @llvm.bswap.i32(i32 %801) #8
  %dgpu_tdp.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i96.i, i32 0, i32 7
  %803 = ptrtoint ptr %dgpu_tdp.i.i to i32
  call void @__asan_store4_noabort(i32 %803)
  store i32 %802, ptr %dgpu_tdp.i.i, align 8
  %ulDGpuUlvPower.i.i = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %772, i32 0, i32 9
  %804 = ptrtoint ptr %ulDGpuUlvPower.i.i to i32
  call void @__asan_loadN_noabort(i32 %804, i32 4)
  %805 = load i32, ptr %ulDGpuUlvPower.i.i, align 1
  %806 = call i32 @llvm.bswap.i32(i32 %805) #8
  %dgpu_ulv_power.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i96.i, i32 0, i32 8
  %807 = ptrtoint ptr %dgpu_ulv_power.i.i to i32
  call void @__asan_store4_noabort(i32 %807)
  store i32 %806, ptr %dgpu_ulv_power.i.i, align 4
  %ulTjmax.i.i = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %772, i32 0, i32 10
  %808 = ptrtoint ptr %ulTjmax.i.i to i32
  call void @__asan_loadN_noabort(i32 %808, i32 4)
  %809 = load i32, ptr %ulTjmax.i.i, align 1
  %810 = call i32 @llvm.bswap.i32(i32 %809) #8
  %tj_max.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i96.i, i32 0, i32 9
  %811 = ptrtoint ptr %tj_max.i.i to i32
  call void @__asan_store4_noabort(i32 %811)
  store i32 %810, ptr %tj_max.i.i, align 8
  %812 = ptrtoint ptr %ppm_parameter_table.i to i32
  call void @__asan_store4_noabort(i32 %812)
  store ptr %call7.i.i.i96.i, ptr %ppm_parameter_table.i, align 4
  %813 = ptrtoint ptr %arrayidx.i8.i125.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load i32, ptr %arrayidx.i8.i125.i, align 4
  %or.i101.i = or i32 %814, 4096
  store i32 %or.i101.i, ptr %arrayidx.i8.i125.i, align 4
  br label %init_dpm2_parameters.exit

init_dpm2_parameters.exit:                        ; preds = %if.then52.i, %if.then45.i.init_dpm2_parameters.exit_crit_edge, %land.lhs.true.i202.init_dpm2_parameters.exit_crit_edge, %if.then35.i.init_dpm2_parameters.exit_crit_edge, %if.end29.i.init_dpm2_parameters.exit_crit_edge
  br i1 %cmp78, label %init_dpm2_parameters.exit.do.end91_crit_edge, label %if.then79

init_dpm2_parameters.exit.do.end91_crit_edge:     ; preds = %init_dpm2_parameters.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end91

if.then79:                                        ; preds = %init_dpm2_parameters.exit
  %call80 = call i32 @___ratelimit(ptr noundef nonnull @pp_tables_initialize._rs.21, ptr noundef nonnull @__func__.pp_tables_initialize) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then79.cleanup_crit_edge, label %do.end85

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end85:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #11
  br label %cleanup

do.end91:                                         ; preds = %init_dpm2_parameters.exit.do.end91_crit_edge, %do.end75.do.end91_crit_edge
  %815 = ptrtoint ptr %usTableSize.i to i32
  call void @__asan_loadN_noabort(i32 %815, i32 2)
  %816 = load i16, ptr %usTableSize.i, align 1
  %817 = call i16 @llvm.bswap.i16(i16 %816) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %817)
  %cmp.i205 = icmp ugt i16 %817, 65
  br i1 %cmp.i205, label %if.then.i206, label %do.end91.cleanup_crit_edge

do.end91.cleanup_crit_edge:                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i206:                                     ; preds = %do.end91
  %usVddcPhaseShedLimitsTableOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %table_addr.0.i, i32 0, i32 7
  %818 = ptrtoint ptr %usVddcPhaseShedLimitsTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %818, i32 2)
  %819 = load i16, ptr %usVddcPhaseShedLimitsTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %819)
  %cmp3.not.i = icmp eq i16 %819, 0
  br i1 %cmp3.not.i, label %if.then.i206.cleanup_crit_edge, label %if.then5.i

if.then.i206.cleanup_crit_edge:                   ; preds = %if.then.i206
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5.i:                                       ; preds = %if.then.i206
  %820 = ptrtoint ptr %table_addr.0.i to i32
  %821 = call i16 @llvm.bswap.i16(i16 %819) #8
  %conv7.i = zext i16 %821 to i32
  %add.i207 = add i32 %conv7.i, %820
  %822 = inttoptr i32 %add.i207 to ptr
  %823 = ptrtoint ptr %822 to i32
  call void @__asan_load1_noabort(i32 %823)
  %824 = load i8, ptr %822, align 1
  %conv8.i = zext i8 %824 to i32
  %825 = mul nuw nsw i32 %conv8.i, 12
  %spec.select.i71.i = add nuw nsw i32 %825, 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i71.i, i32 noundef 3520) #12
  %tobool.not.i208 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i208, label %if.then95, label %if.end.i209

if.end.i209:                                      ; preds = %if.then5.i
  %826 = ptrtoint ptr %822 to i32
  call void @__asan_load1_noabort(i32 %826)
  %827 = load i8, ptr %822, align 1
  %conv12.i = zext i8 %827 to i32
  %828 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %828)
  store i32 %conv12.i, ptr %call9.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %827)
  %cmp1472.not.i = icmp eq i8 %827, 0
  br i1 %cmp1472.not.i, label %if.end.i209.for.end.i_crit_edge, label %if.end.i209.for.body.i_crit_edge

if.end.i209.for.body.i_crit_edge:                 ; preds = %if.end.i209
  br label %for.body.i

if.end.i209.for.end.i_crit_edge:                  ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i209.for.body.i_crit_edge
  %i.073.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i209.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct._ATOM_PPLIB_PhaseSheddingLimits_Table, ptr %822, i32 0, i32 1, i32 %i.073.i
  %829 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %829, i32 2)
  %830 = load i16, ptr %arrayidx.i, align 1
  %831 = call i16 @llvm.bswap.i16(i16 %830) #8
  %conv16.i = zext i16 %831 to i32
  %arrayidx18.i = getelementptr %struct.phm_phase_shedding_limits_table, ptr %call9.i.i.i, i32 0, i32 1, i32 %i.073.i
  %832 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %832)
  store i32 %conv16.i, ptr %arrayidx18.i, align 4
  %ucSclkHigh.i = getelementptr %struct._ATOM_PPLIB_PhaseSheddingLimits_Table, ptr %822, i32 0, i32 1, i32 %i.073.i, i32 2
  %833 = ptrtoint ptr %ucSclkHigh.i to i32
  call void @__asan_load1_noabort(i32 %833)
  %834 = load i8, ptr %ucSclkHigh.i, align 1
  %conv21.i = zext i8 %834 to i32
  %shl.i = shl nuw nsw i32 %conv21.i, 16
  %usSclkLow.i = getelementptr %struct._ATOM_PPLIB_PhaseSheddingLimits_Table, ptr %822, i32 0, i32 1, i32 %i.073.i, i32 1
  %835 = ptrtoint ptr %usSclkLow.i to i32
  call void @__asan_loadN_noabort(i32 %835, i32 2)
  %836 = load i16, ptr %usSclkLow.i, align 1
  %837 = call i16 @llvm.bswap.i16(i16 %836) #8
  %conv24.i210 = zext i16 %837 to i32
  %or.i = or i32 %shl.i, %conv24.i210
  %Sclk.i = getelementptr %struct.phm_phase_shedding_limits_table, ptr %call9.i.i.i, i32 0, i32 1, i32 %i.073.i, i32 1
  %838 = ptrtoint ptr %Sclk.i to i32
  call void @__asan_store4_noabort(i32 %838)
  store i32 %or.i, ptr %Sclk.i, align 4
  %ucMclkHigh.i = getelementptr %struct._ATOM_PPLIB_PhaseSheddingLimits_Table, ptr %822, i32 0, i32 1, i32 %i.073.i, i32 4
  %839 = ptrtoint ptr %ucMclkHigh.i to i32
  call void @__asan_load1_noabort(i32 %839)
  %840 = load i8, ptr %ucMclkHigh.i, align 1
  %conv29.i211 = zext i8 %840 to i32
  %shl30.i = shl nuw nsw i32 %conv29.i211, 16
  %usMclkLow.i = getelementptr %struct._ATOM_PPLIB_PhaseSheddingLimits_Table, ptr %822, i32 0, i32 1, i32 %i.073.i, i32 3
  %841 = ptrtoint ptr %usMclkLow.i to i32
  call void @__asan_loadN_noabort(i32 %841, i32 2)
  %842 = load i16, ptr %usMclkLow.i, align 1
  %843 = call i16 @llvm.bswap.i16(i16 %842) #8
  %conv33.i = zext i16 %843 to i32
  %or34.i = or i32 %shl30.i, %conv33.i
  %Mclk.i = getelementptr %struct.phm_phase_shedding_limits_table, ptr %call9.i.i.i, i32 0, i32 1, i32 %i.073.i, i32 2
  %844 = ptrtoint ptr %Mclk.i to i32
  call void @__asan_store4_noabort(i32 %844)
  store i32 %or34.i, ptr %Mclk.i, align 4
  %inc.i = add nuw i32 %i.073.i, 1
  %845 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load i32, ptr %call9.i.i.i, align 128
  %cmp14.i = icmp ult i32 %inc.i, %846
  br i1 %cmp14.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i209.for.end.i_crit_edge
  %vddc_phase_shed_limits_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 14
  %847 = ptrtoint ptr %vddc_phase_shed_limits_table.i to i32
  call void @__asan_store4_noabort(i32 %847)
  store ptr %call9.i.i.i, ptr %vddc_phase_shed_limits_table.i, align 4
  br label %cleanup

if.then95:                                        ; preds = %if.then5.i
  %call96 = call i32 @___ratelimit(ptr noundef nonnull @pp_tables_initialize._rs.25, ptr noundef nonnull @__func__.pp_tables_initialize) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then95.cleanup_crit_edge, label %do.end101

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end101:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.28) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end101, %if.then95.cleanup_crit_edge, %for.end.i, %if.then.i206.cleanup_crit_edge, %do.end91.cleanup_crit_edge, %do.end85, %if.then79.cleanup_crit_edge, %do.end69, %if.then63.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %result.14.i219, %do.end69 ], [ %result.14.i219, %if.then63.cleanup_crit_edge ], [ %result.0.i201, %do.end85 ], [ %result.0.i201, %if.then79.cleanup_crit_edge ], [ -12, %do.end101 ], [ -12, %if.then95.cleanup_crit_edge ], [ 0, %do.end91.cleanup_crit_edge ], [ 0, %for.end.i ], [ 0, %if.then.i206.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_tables_uninitialize(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %1)
  %cmp = icmp eq i32 %1, 22
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dyn_state = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %2 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dyn_state, align 4
  tail call void @kfree(ptr noundef %3) #8
  %4 = ptrtoint ptr %dyn_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dyn_state, align 4
  %vddci_dependency_on_mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 1
  %5 = ptrtoint ptr %vddci_dependency_on_mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vddci_dependency_on_mclk, align 4
  tail call void @kfree(ptr noundef %6) #8
  %7 = ptrtoint ptr %vddci_dependency_on_mclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %vddci_dependency_on_mclk, align 4
  %vddc_dependency_on_mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 2
  %8 = ptrtoint ptr %vddc_dependency_on_mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vddc_dependency_on_mclk, align 4
  tail call void @kfree(ptr noundef %9) #8
  %10 = ptrtoint ptr %vddc_dependency_on_mclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vddc_dependency_on_mclk, align 4
  %mvdd_dependency_on_mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 3
  %11 = ptrtoint ptr %mvdd_dependency_on_mclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mvdd_dependency_on_mclk, align 4
  tail call void @kfree(ptr noundef %12) #8
  %13 = ptrtoint ptr %mvdd_dependency_on_mclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mvdd_dependency_on_mclk, align 4
  %valid_mclk_values = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 6
  %14 = ptrtoint ptr %valid_mclk_values to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %valid_mclk_values, align 4
  tail call void @kfree(ptr noundef %15) #8
  %16 = ptrtoint ptr %valid_mclk_values to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %valid_mclk_values, align 4
  %valid_sclk_values = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 5
  %17 = ptrtoint ptr %valid_sclk_values to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %valid_sclk_values, align 4
  tail call void @kfree(ptr noundef %18) #8
  %19 = ptrtoint ptr %valid_sclk_values to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %valid_sclk_values, align 4
  %cac_leakage_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 13
  %20 = ptrtoint ptr %cac_leakage_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cac_leakage_table, align 4
  tail call void @kfree(ptr noundef %21) #8
  %22 = ptrtoint ptr %cac_leakage_table to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cac_leakage_table, align 4
  %vddc_phase_shed_limits_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 14
  %23 = ptrtoint ptr %vddc_phase_shed_limits_table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vddc_phase_shed_limits_table, align 4
  tail call void @kfree(ptr noundef %24) #8
  %25 = ptrtoint ptr %vddc_phase_shed_limits_table to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %vddc_phase_shed_limits_table, align 4
  %vce_clock_voltage_dependency_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 15
  %26 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vce_clock_voltage_dependency_table, align 4
  tail call void @kfree(ptr noundef %27) #8
  %28 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %vce_clock_voltage_dependency_table, align 4
  %uvd_clock_voltage_dependency_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 16
  %29 = ptrtoint ptr %uvd_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %uvd_clock_voltage_dependency_table, align 4
  tail call void @kfree(ptr noundef %30) #8
  %31 = ptrtoint ptr %uvd_clock_voltage_dependency_table to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %uvd_clock_voltage_dependency_table, align 4
  %samu_clock_voltage_dependency_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 18
  %32 = ptrtoint ptr %samu_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %samu_clock_voltage_dependency_table, align 4
  tail call void @kfree(ptr noundef %33) #8
  %34 = ptrtoint ptr %samu_clock_voltage_dependency_table to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %samu_clock_voltage_dependency_table, align 4
  %acp_clock_voltage_dependency_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 17
  %35 = ptrtoint ptr %acp_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %acp_clock_voltage_dependency_table, align 4
  tail call void @kfree(ptr noundef %36) #8
  %37 = ptrtoint ptr %acp_clock_voltage_dependency_table to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %acp_clock_voltage_dependency_table, align 4
  %cac_dtp_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  %38 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cac_dtp_table, align 4
  tail call void @kfree(ptr noundef %39) #8
  %40 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %cac_dtp_table, align 4
  %ppm_parameter_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 19
  %41 = ptrtoint ptr %ppm_parameter_table to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ppm_parameter_table, align 4
  tail call void @kfree(ptr noundef %42) #8
  %43 = ptrtoint ptr %ppm_parameter_table to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %ppm_parameter_table, align 4
  %vdd_gfx_dependency_on_sclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 21
  %44 = ptrtoint ptr %vdd_gfx_dependency_on_sclk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vdd_gfx_dependency_on_sclk, align 4
  tail call void @kfree(ptr noundef %45) #8
  %46 = ptrtoint ptr %vdd_gfx_dependency_on_sclk to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %vdd_gfx_dependency_on_sclk, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_number_of_vce_state_table_entries(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %0 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_pp_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #8
  %2 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #8
  %3 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #8
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size.i, align 2, !annotation !60
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.get_powerplay_table.exit_crit_edge

entry.get_powerplay_table.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_powerplay_table.exit

if.then.i:                                        ; preds = %entry
  %chip_id.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %5 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %6)
  %cmp.i = icmp eq i32 %6, 22
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @soft_dummy_pp_table, ptr %soft_pp_table.i, align 4
  br label %if.end5.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %9, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #8
  %10 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %12 to i32
  br label %if.end5.sink.split.i

if.end5.sink.split.i:                             ; preds = %if.else.i, %if.then1.i
  %.sink.i = phi i32 [ 481, %if.then1.i ], [ %conv.i, %if.else.i ]
  %table_addr.0.ph.i = phi ptr [ @soft_dummy_pp_table, %if.then1.i ], [ %call.i, %if.else.i ]
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %13 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %soft_pp_table_size.i, align 4
  br label %get_powerplay_table.exit

get_powerplay_table.exit:                         ; preds = %if.end5.sink.split.i, %entry.get_powerplay_table.exit_crit_edge
  %table_addr.0.i = phi ptr [ %1, %entry.get_powerplay_table.exit_crit_edge ], [ %table_addr.0.ph.i, %if.end5.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  %usTableSize.i.i.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i, i32 0, i32 11
  %14 = ptrtoint ptr %usTableSize.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usTableSize.i.i.i.i.i, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %16)
  %cmp.i.i.i.i.i = icmp ugt i16 %16, 45
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %get_powerplay_table.exit.cleanup_crit_edge

get_powerplay_table.exit.cleanup_crit_edge:       ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i.i.i.i:                                ; preds = %get_powerplay_table.exit
  %usExtendendedHeaderOffset.i.i.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %table_addr.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %usExtendendedHeaderOffset.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %usExtendendedHeaderOffset.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp3.not.i.i.i.i.i = icmp eq i16 %18, 0
  br i1 %cmp3.not.i.i.i.i.i, label %if.then.i.i.i.i.i.cleanup_crit_edge, label %if.then5.i.i.i.i.i

if.then.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  %19 = ptrtoint ptr %table_addr.0.i to i32
  %20 = call i16 @llvm.bswap.i16(i16 %18) #8
  %conv7.i.i.i.i.i = zext i16 %20 to i32
  %add.i.i.i.i.i = add i32 %conv7.i.i.i.i.i, %19
  %21 = inttoptr i32 %add.i.i.i.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %21, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %24)
  %cmp9.i.i.i.i.i = icmp ugt i16 %24, 11
  br i1 %cmp9.i.i.i.i.i, label %get_vce_table_offset.exit.i.i.i.i, label %if.then5.i.i.i.i.i.cleanup_crit_edge

if.then5.i.i.i.i.i.cleanup_crit_edge:             ; preds = %if.then5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

get_vce_table_offset.exit.i.i.i.i:                ; preds = %if.then5.i.i.i.i.i
  %usVCETableOffset.i.i.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %21, i32 0, i32 3
  %25 = ptrtoint ptr %usVCETableOffset.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %usVCETableOffset.i.i.i.i.i, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.not.i.i.i.i = icmp eq i16 %26, 0
  %add.i.i.i.i = add i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i16 %add.i.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i.i, i1 true, i1 %cmp.not.i.i.i
  br i1 %or.cond.i.i.i, label %get_vce_table_offset.exit.i.i.i.i.cleanup_crit_edge, label %get_vce_clock_voltage_limit_table_offset.exit.i.i

get_vce_table_offset.exit.i.i.i.i.cleanup_crit_edge: ; preds = %get_vce_table_offset.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

get_vce_clock_voltage_limit_table_offset.exit.i.i: ; preds = %get_vce_table_offset.exit.i.i.i.i
  %conv.i.i.i.i = zext i16 %add.i.i.i.i to i32
  %add.i3.i.i.i = add i32 %conv.i.i.i.i, %19
  %28 = inttoptr i32 %add.i3.i.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv3.i.i.i.i = zext i8 %30 to i16
  %mul.i.i.i.i = mul nuw nsw i16 %conv3.i.i.i.i, 6
  %add4.i.i.i.i = add i16 %27, 2
  %add.i.i.i = add i16 %add4.i.i.i.i, %mul.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i.i)
  %cmp.not.i.i = icmp eq i16 %add.i.i.i, 0
  br i1 %cmp.not.i.i, label %get_vce_clock_voltage_limit_table_offset.exit.i.i.cleanup_crit_edge, label %get_vce_state_table_offset.exit.i

get_vce_clock_voltage_limit_table_offset.exit.i.i.cleanup_crit_edge: ; preds = %get_vce_clock_voltage_limit_table_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

get_vce_state_table_offset.exit.i:                ; preds = %get_vce_clock_voltage_limit_table_offset.exit.i.i
  %conv.i.i.i = zext i16 %add.i.i.i to i32
  %add.i15.i.i = add i32 %conv.i.i.i, %19
  %31 = inttoptr i32 %add.i15.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv3.i.i.i = zext i8 %33 to i16
  %mul.i.i.i = mul nuw nsw i16 %conv3.i.i.i, 3
  %add4.i.i.i = add i16 %add.i.i.i, 1
  %add.i.i = add i16 %add4.i.i.i, %mul.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i)
  %cmp.not.i = icmp eq i16 %add.i.i, 0
  %conv.i5 = zext i16 %add.i.i to i32
  %add.i = add i32 %conv.i5, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not = icmp eq i32 %add.i, 0
  %or.cond = select i1 %cmp.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %get_vce_state_table_offset.exit.i.cleanup_crit_edge, label %if.then

get_vce_state_table_offset.exit.i.cleanup_crit_edge: ; preds = %get_vce_state_table_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %get_vce_state_table_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = inttoptr i32 %add.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv = zext i8 %36 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %get_vce_state_table_offset.exit.i.cleanup_crit_edge, %get_vce_clock_voltage_limit_table_offset.exit.i.i.cleanup_crit_edge, %get_vce_table_offset.exit.i.i.i.i.cleanup_crit_edge, %if.then5.i.i.i.i.i.cleanup_crit_edge, %if.then.i.i.i.i.i.cleanup_crit_edge, %get_powerplay_table.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %get_powerplay_table.exit.cleanup_crit_edge ], [ 0, %if.then.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %get_vce_table_offset.exit.i.i.i.i.cleanup_crit_edge ], [ 0, %get_vce_clock_voltage_limit_table_offset.exit.i.i.cleanup_crit_edge ], [ 0, %get_vce_state_table_offset.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_vce_state_table_entry(ptr nocapture noundef %hwmgr, i32 noundef %i, ptr nocapture noundef writeonly %vce_state, ptr nocapture noundef writeonly %clock_info, ptr nocapture noundef writeonly %flag) #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %0 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_pp_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #8
  %2 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #8
  %3 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #8
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size.i, align 2, !annotation !60
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.get_powerplay_table.exit_crit_edge

entry.get_powerplay_table.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_powerplay_table.exit

if.then.i:                                        ; preds = %entry
  %chip_id.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %5 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %6)
  %cmp.i = icmp eq i32 %6, 22
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @soft_dummy_pp_table, ptr %soft_pp_table.i, align 4
  br label %if.end5.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %9, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #8
  %10 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %12 to i32
  br label %if.end5.sink.split.i

if.end5.sink.split.i:                             ; preds = %if.else.i, %if.then1.i
  %.sink.i = phi i32 [ 481, %if.then1.i ], [ %conv.i, %if.else.i ]
  %table_addr.0.ph.i = phi ptr [ @soft_dummy_pp_table, %if.then1.i ], [ %call.i, %if.else.i ]
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %13 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %soft_pp_table_size.i, align 4
  br label %get_powerplay_table.exit

get_powerplay_table.exit:                         ; preds = %if.end5.sink.split.i, %entry.get_powerplay_table.exit_crit_edge
  %table_addr.0.i = phi ptr [ %1, %entry.get_powerplay_table.exit_crit_edge ], [ %table_addr.0.ph.i, %if.end5.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #8
  %usTableSize.i.i.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i, i32 0, i32 11
  %14 = ptrtoint ptr %usTableSize.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usTableSize.i.i.i.i.i, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %16)
  %cmp.i.i.i.i.i = icmp ugt i16 %16, 45
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %get_powerplay_table.exit.get_vce_table_offset.exit.thread.i_crit_edge

get_powerplay_table.exit.get_vce_table_offset.exit.thread.i_crit_edge: ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_vce_table_offset.exit.thread.i

if.then.i.i.i.i.i:                                ; preds = %get_powerplay_table.exit
  %usExtendendedHeaderOffset.i.i.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %table_addr.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %usExtendendedHeaderOffset.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %usExtendendedHeaderOffset.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp3.not.i.i.i.i.i = icmp eq i16 %18, 0
  br i1 %cmp3.not.i.i.i.i.i, label %if.then.i.i.i.i.i.get_vce_state_table.exit.thread35_crit_edge, label %if.then5.i.i.i.i.i

if.then.i.i.i.i.i.get_vce_state_table.exit.thread35_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_vce_state_table.exit.thread35

if.then5.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  %19 = ptrtoint ptr %table_addr.0.i to i32
  %20 = call i16 @llvm.bswap.i16(i16 %18) #8
  %conv7.i.i.i.i.i = zext i16 %20 to i32
  %add.i.i.i.i.i = add i32 %conv7.i.i.i.i.i, %19
  %21 = inttoptr i32 %add.i.i.i.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %21, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %24)
  %cmp9.i.i.i.i.i = icmp ugt i16 %24, 11
  br i1 %cmp9.i.i.i.i.i, label %get_vce_table_offset.exit.i.i.i.i, label %if.then5.i.i.i.i.i.get_vce_state_table.exit.thread35_crit_edge

if.then5.i.i.i.i.i.get_vce_state_table.exit.thread35_crit_edge: ; preds = %if.then5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_vce_state_table.exit.thread35

get_vce_table_offset.exit.i.i.i.i:                ; preds = %if.then5.i.i.i.i.i
  %usVCETableOffset.i.i.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %21, i32 0, i32 3
  %25 = ptrtoint ptr %usVCETableOffset.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %usVCETableOffset.i.i.i.i.i, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.not.i.i.i.i = icmp eq i16 %26, 0
  %add.i.i.i.i = add i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i16 %add.i.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i.i, i1 true, i1 %cmp.not.i.i.i
  br i1 %or.cond.i.i.i, label %get_vce_table_offset.exit.i.i.i.i.get_vce_state_table.exit.thread35_crit_edge, label %get_vce_clock_voltage_limit_table_offset.exit.i.i

get_vce_table_offset.exit.i.i.i.i.get_vce_state_table.exit.thread35_crit_edge: ; preds = %get_vce_table_offset.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_vce_state_table.exit.thread35

get_vce_clock_voltage_limit_table_offset.exit.i.i: ; preds = %get_vce_table_offset.exit.i.i.i.i
  %conv.i.i.i.i = zext i16 %add.i.i.i.i to i32
  %add.i3.i.i.i = add i32 %conv.i.i.i.i, %19
  %28 = inttoptr i32 %add.i3.i.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv3.i.i.i.i = zext i8 %30 to i16
  %mul.i.i.i.i = mul nuw nsw i16 %conv3.i.i.i.i, 6
  %add4.i.i.i.i = add i16 %27, 2
  %add.i.i.i = add i16 %add4.i.i.i.i, %mul.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i.i)
  %cmp.not.i.i = icmp eq i16 %add.i.i.i, 0
  br i1 %cmp.not.i.i, label %get_vce_clock_voltage_limit_table_offset.exit.i.i.get_vce_state_table.exit.thread35_crit_edge, label %get_vce_state_table_offset.exit.i

get_vce_clock_voltage_limit_table_offset.exit.i.i.get_vce_state_table.exit.thread35_crit_edge: ; preds = %get_vce_clock_voltage_limit_table_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_vce_state_table.exit.thread35

get_vce_state_table_offset.exit.i:                ; preds = %get_vce_clock_voltage_limit_table_offset.exit.i.i
  %conv.i.i.i = zext i16 %add.i.i.i to i32
  %add.i15.i.i = add i32 %conv.i.i.i, %19
  %31 = inttoptr i32 %add.i15.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv3.i.i.i = zext i8 %33 to i16
  %mul.i.i.i = mul nuw nsw i16 %conv3.i.i.i, 3
  %add4.i.i.i = add i16 %add.i.i.i, 1
  %add.i.i = add i16 %add4.i.i.i, %mul.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i)
  %cmp.not.i = icmp eq i16 %add.i.i, 0
  %conv.i31 = zext i16 %add.i.i to i32
  %add.i = add i32 %conv.i31, %19
  %34 = inttoptr i32 %add.i to ptr
  br i1 %cmp.not.i, label %get_vce_state_table_offset.exit.i.get_vce_state_table.exit.thread35_crit_edge, label %get_vce_state_table_offset.exit.i.if.then.i.i_crit_edge

get_vce_state_table_offset.exit.i.if.then.i.i_crit_edge: ; preds = %get_vce_state_table_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

get_vce_state_table_offset.exit.i.get_vce_state_table.exit.thread35_crit_edge: ; preds = %get_vce_state_table_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_vce_state_table.exit.thread35

get_vce_state_table.exit.thread35:                ; preds = %get_vce_state_table_offset.exit.i.get_vce_state_table.exit.thread35_crit_edge, %get_vce_clock_voltage_limit_table_offset.exit.i.i.get_vce_state_table.exit.thread35_crit_edge, %get_vce_table_offset.exit.i.i.i.i.get_vce_state_table.exit.thread35_crit_edge, %if.then5.i.i.i.i.i.get_vce_state_table.exit.thread35_crit_edge, %if.then.i.i.i.i.i.get_vce_state_table.exit.thread35_crit_edge
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %get_vce_state_table.exit.thread35, %get_vce_state_table_offset.exit.i.if.then.i.i_crit_edge
  %35 = phi ptr [ null, %get_vce_state_table.exit.thread35 ], [ %34, %get_vce_state_table_offset.exit.i.if.then.i.i_crit_edge ]
  %36 = ptrtoint ptr %usExtendendedHeaderOffset.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %usExtendendedHeaderOffset.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp3.not.i.i = icmp eq i16 %37, 0
  br i1 %cmp3.not.i.i, label %if.then.i.i.get_vce_table_offset.exit.thread.i_crit_edge, label %if.then5.i.i

if.then.i.i.get_vce_table_offset.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_vce_table_offset.exit.thread.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  %38 = ptrtoint ptr %table_addr.0.i to i32
  %39 = call i16 @llvm.bswap.i16(i16 %37) #8
  %conv7.i.i = zext i16 %39 to i32
  %add.i.i32 = add i32 %conv7.i.i, %38
  %40 = inttoptr i32 %add.i.i32 to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %40, align 1
  %43 = call i16 @llvm.bswap.i16(i16 %42) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %43)
  %cmp9.i.i = icmp ugt i16 %43, 11
  br i1 %cmp9.i.i, label %get_vce_table_offset.exit.i, label %if.then5.i.i.get_vce_table_offset.exit.thread.i_crit_edge

if.then5.i.i.get_vce_table_offset.exit.thread.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_vce_table_offset.exit.thread.i

get_vce_table_offset.exit.i:                      ; preds = %if.then5.i.i
  %usVCETableOffset.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %40, i32 0, i32 3
  %44 = ptrtoint ptr %usVCETableOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %usVCETableOffset.i.i, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp.not.i33 = icmp eq i16 %45, 0
  %add.i34 = add i16 %46, 1
  br i1 %cmp.not.i33, label %get_vce_table_offset.exit.i.get_vce_table_offset.exit.thread.i_crit_edge, label %get_vce_table_offset.exit.i.get_vce_clock_info_array_offset.exit_crit_edge

get_vce_table_offset.exit.i.get_vce_clock_info_array_offset.exit_crit_edge: ; preds = %get_vce_table_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_vce_clock_info_array_offset.exit

get_vce_table_offset.exit.i.get_vce_table_offset.exit.thread.i_crit_edge: ; preds = %get_vce_table_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_vce_table_offset.exit.thread.i

get_vce_table_offset.exit.thread.i:               ; preds = %get_vce_table_offset.exit.i.get_vce_table_offset.exit.thread.i_crit_edge, %if.then5.i.i.get_vce_table_offset.exit.thread.i_crit_edge, %if.then.i.i.get_vce_table_offset.exit.thread.i_crit_edge, %get_powerplay_table.exit.get_vce_table_offset.exit.thread.i_crit_edge
  %47 = phi ptr [ %35, %get_vce_table_offset.exit.i.get_vce_table_offset.exit.thread.i_crit_edge ], [ %35, %if.then5.i.i.get_vce_table_offset.exit.thread.i_crit_edge ], [ %35, %if.then.i.i.get_vce_table_offset.exit.thread.i_crit_edge ], [ null, %get_powerplay_table.exit.get_vce_table_offset.exit.thread.i_crit_edge ]
  %.pre = ptrtoint ptr %table_addr.0.i to i32
  br label %get_vce_clock_info_array_offset.exit

get_vce_clock_info_array_offset.exit:             ; preds = %get_vce_table_offset.exit.thread.i, %get_vce_table_offset.exit.i.get_vce_clock_info_array_offset.exit_crit_edge
  %.pre-phi = phi i32 [ %38, %get_vce_table_offset.exit.i.get_vce_clock_info_array_offset.exit_crit_edge ], [ %.pre, %get_vce_table_offset.exit.thread.i ]
  %48 = phi ptr [ %35, %get_vce_table_offset.exit.i.get_vce_clock_info_array_offset.exit_crit_edge ], [ %47, %get_vce_table_offset.exit.thread.i ]
  %49 = phi i16 [ %add.i34, %get_vce_table_offset.exit.i.get_vce_clock_info_array_offset.exit_crit_edge ], [ 0, %get_vce_table_offset.exit.thread.i ]
  %conv = zext i16 %49 to i32
  %add = add i32 %.pre-phi, %conv
  %50 = inttoptr i32 %add to ptr
  %usClockInfoArrayOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %table_addr.0.i, i32 0, i32 7
  %51 = ptrtoint ptr %usClockInfoArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %usClockInfoArrayOffset, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52)
  %conv3 = zext i16 %53 to i32
  %add4 = add i32 %.pre-phi, %conv3
  %54 = inttoptr i32 %add4 to ptr
  %arrayidx = getelementptr %struct._ATOM_PPLIB_VCE_State_Table, ptr %48, i32 0, i32 1, i32 %i
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %56 to i32
  %arrayidx6 = getelementptr %struct._VCEClockInfoArray, ptr %50, i32 0, i32 1, i32 %idxprom
  %ucClockInfoIndex = getelementptr %struct._ATOM_PPLIB_VCE_State_Table, ptr %48, i32 0, i32 1, i32 %i, i32 1
  %57 = ptrtoint ptr %ucClockInfoIndex to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ucClockInfoIndex, align 1
  %conv7 = zext i8 %58 to i32
  %and = and i32 %conv7, 63
  %59 = lshr i32 %conv7, 6
  %60 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %flag, align 4
  %ucEVClkHigh = getelementptr %struct._VCEClockInfoArray, ptr %50, i32 0, i32 1, i32 %idxprom, i32 1
  %61 = ptrtoint ptr %ucEVClkHigh to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ucEVClkHigh, align 1
  %conv10 = zext i8 %62 to i32
  %shl = shl nuw nsw i32 %conv10, 16
  %63 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %arrayidx6, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64)
  %conv11 = zext i16 %65 to i32
  %or = or i32 %shl, %conv11
  %66 = ptrtoint ptr %vce_state to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or, ptr %vce_state, align 4
  %ucECClkHigh = getelementptr %struct._VCEClockInfoArray, ptr %50, i32 0, i32 1, i32 %idxprom, i32 3
  %67 = ptrtoint ptr %ucECClkHigh to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ucECClkHigh, align 1
  %conv12 = zext i8 %68 to i32
  %shl13 = shl nuw nsw i32 %conv12, 16
  %usECClkLow = getelementptr %struct._VCEClockInfoArray, ptr %50, i32 0, i32 1, i32 %idxprom, i32 2
  %69 = ptrtoint ptr %usECClkLow to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %usECClkLow, align 1
  %71 = call i16 @llvm.bswap.i16(i16 %70)
  %conv14 = zext i16 %71 to i32
  %or15 = or i32 %shl13, %conv14
  %ecclk = getelementptr inbounds %struct.amd_vce_state, ptr %vce_state, i32 0, i32 1
  %72 = ptrtoint ptr %ecclk to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or15, ptr %ecclk, align 4
  %clockInfo = getelementptr inbounds %struct._ClockInfoArray, ptr %54, i32 0, i32 2
  %73 = ptrtoint ptr %clockInfo to i32
  %ucEntrySize = getelementptr inbounds %struct._ClockInfoArray, ptr %54, i32 0, i32 1
  %74 = ptrtoint ptr %ucEntrySize to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ucEntrySize, align 1
  %conv16 = zext i8 %75 to i32
  %mul = mul nuw nsw i32 %and, %conv16
  %add17 = add i32 %mul, %73
  %76 = inttoptr i32 %add17 to ptr
  %77 = ptrtoint ptr %clock_info to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %clock_info, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smu_atom_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c", i32 854, i32 2}
!2 = !{ptr @pp_tables_get_response_times._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.pp_tables_get_response_times, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pp_tables_get_response_times._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pp_tables_get_response_times._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pptable_funcs, !10, !"pptable_funcs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c", i32 1802, i32 28}
!11 = !{ptr @soft_dummy_pp_table, !12, !"soft_dummy_pp_table", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c", i32 791, i32 28}
!13 = !{ptr @init_non_clock_fields.look_up, !14, !"look_up", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c", i32 714, i32 24}
!15 = distinct !{null, !16, !"_rs", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c", i32 1711, i32 2}
!17 = !{ptr @__func__.pp_tables_initialize, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pp_tables_initialize._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @pp_tables_initialize._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c", i32 1717, i32 2}
!23 = !{ptr @pp_tables_initialize._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pp_tables_initialize._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c", i32 1722, i32 2}
!28 = !{ptr @pp_tables_initialize._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pp_tables_initialize._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c", i32 1727, i32 2}
!33 = !{ptr @pp_tables_initialize._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pp_tables_initialize._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pp_tables_initialize._rs.17, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c", i32 1733, i32 2}
!38 = !{ptr @pp_tables_initialize._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pp_tables_initialize._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pp_tables_initialize._rs.21, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c", i32 1738, i32 2}
!43 = !{ptr @pp_tables_initialize._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pp_tables_initialize._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pp_tables_initialize._rs.25, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c", i32 1743, i32 2}
!48 = !{ptr @pp_tables_initialize._entry.26, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pp_tables_initialize._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
