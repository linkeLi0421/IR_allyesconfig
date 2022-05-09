; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomctrl.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c"
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
%struct._ATOM_VRAM_INFO_HEADER_V2_1 = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, i16, i16, [3 x i16], i8, i8, i8, i8, [16 x %struct._ATOM_VRAM_MODULE_V7] }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_VRAM_MODULE_V7 = type <{ i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i16, i16, i8, i8, i8, i8, [20 x i8] }>
%struct._ATOM_INIT_REG_BLOCK = type <{ i16, i16, [1 x %struct._ATOM_INIT_REG_INDEX_FORMAT], [1 x %struct._ATOM_MEMORY_SETTING_DATA_BLOCK] }>
%struct._ATOM_INIT_REG_INDEX_FORMAT = type <{ i16, i8 }>
%struct._ATOM_MEMORY_SETTING_DATA_BLOCK = type { %union._ATOM_MEMORY_SETTING_ID_CONFIG_ACCESS, [1 x i32] }
%union._ATOM_MEMORY_SETTING_ID_CONFIG_ACCESS = type { %struct._ATOM_MEMORY_SETTING_ID_CONFIG }
%struct._ATOM_MEMORY_SETTING_ID_CONFIG = type { i32 }
%struct.pp_atomctrl_mc_reg_table = type { i8, i8, [20 x %struct.pp_atomctrl_mc_reg_entry], [32 x %struct.pp_atomctrl_mc_register_address] }
%struct.pp_atomctrl_mc_reg_entry = type { i32, [32 x i32] }
%struct.pp_atomctrl_mc_register_address = type { i16, i8 }
%struct._ATOM_VRAM_INFO_HEADER_V2_2 = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [16 x %struct._ATOM_VRAM_MODULE_V8] }
%struct._ATOM_VRAM_MODULE_V8 = type { i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i32, i32, i32, [20 x i8] }
%struct._SET_ENGINE_CLOCK_PS_ALLOCATION = type { i32, %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS }
%struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS = type { i32, i8, i8, i8, i8 }
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
%struct.amd_vce_state = type { i32, i32, i32, i32, i8, i8 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1 = type { %union.anon.116, i8, i8, %union.anon.117, i8 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i8 }
%struct._ATOM_S_MPLL_FB_DIVIDER = type { i16, i16 }
%struct.pp_atomctrl_memory_clock_param = type { %union.pp_atomctrl_s_mpll_fb_divider, i32, i32, i32, i32, i32, i32, i32 }
%union.pp_atomctrl_s_mpll_fb_divider = type { %struct.anon.115 }
%struct.anon.115 = type { i32 }
%struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_2 = type { %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4, i32 }
%struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4 = type { i32 }
%struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_3 = type { %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4, i16, i16 }
%struct.pp_atomctrl_memory_clock_param_ai = type { i32, i32, i16, i16 }
%struct.pp_atomctrl_clock_dividers_kong = type { i32, i32 }
%struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6 = type { %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4, %struct._ATOM_S_MPLL_FB_DIVIDER, i8, i8, i8, i8 }
%struct.pp_atomctrl_clock_dividers_vi = type { i32, i32, %union.pp_atomctrl_tcipll_fb_divider, i8, i8, i8 }
%union.pp_atomctrl_tcipll_fb_divider = type { %struct.anon.118 }
%struct.anon.118 = type { i32 }
%struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7 = type { %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16 }
%struct.pp_atomctrl_clock_dividers_ai = type { i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_FIRMWARE_INFO = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i8, i8, i8 }>
%union._ATOM_FIRMWARE_CAPABILITY_ACCESS = type { %struct._ATOM_FIRMWARE_CAPABILITY }
%struct._ATOM_FIRMWARE_CAPABILITY = type { i16 }
%struct._ATOM_VOLTAGE_OBJECT_HEADER_V3 = type { i8, i8, i16 }
%struct._ATOM_GPIO_VOLTAGE_OBJECT_V3 = type <{ %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, i8, i8, i8, i8, i32, [1 x %struct._VOLTAGE_LUT_ENTRY_V2] }>
%struct._VOLTAGE_LUT_ENTRY_V2 = type <{ i32, i16 }>
%struct.pp_atomctrl_voltage_table = type { i32, i32, i32, [32 x %struct.pp_atomctrl_voltage_table_entry] }
%struct.pp_atomctrl_voltage_table_entry = type { i16, i32 }
%struct._ATOM_GPIO_PIN_ASSIGNMENT = type { i16, i8, i8 }
%struct.pp_atomctrl_gpio_pin_assignment = type { i16, i8 }
%union._READ_EFUSE_VALUE_PARAMETER = type { i32 }
%union._fInt = type { i32 }
%struct._ATOM_ASIC_PROFILING_INFO_V3_4 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, %struct._EFUSE_LINEAR_FUNC_PARAM, %struct._EFUSE_LINEAR_FUNC_PARAM, %struct._EFUSE_LOGISTIC_FUNC_PARAM, %struct._EFUSE_LOGISTIC_FUNC_PARAM, %struct._EFUSE_LOGISTIC_FUNC_PARAM, i16, i8, i8, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct._EFUSE_LINEAR_FUNC_PARAM, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct._EFUSE_LOGISTIC_FUNC_PARAM = type { i16, i8, i8, i32, i32 }
%struct._EFUSE_LINEAR_FUNC_PARAM = type { i16, i8, i8, i32, i32 }
%struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2 = type { i8, i8, i16, i32 }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.phm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_clock_voltage_dependency_record] }
%struct.phm_clock_voltage_dependency_record = type { i32, i32 }
%struct._ATOM_FIRMWARE_INFO_V2_1 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i16, i8, [3 x i8] }
%struct._ATOM_ASIC_INTERNAL_SS_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [4 x %struct._ATOM_ASIC_SS_ASSIGNMENT] }
%struct._ATOM_ASIC_SS_ASSIGNMENT = type { i32, i16, i16, i8, i8, [2 x i8] }
%struct.pp_atomctrl_internal_ss_info = type { i32, i32, i32 }
%struct._EFUSE_INPUT_PARAMETER = type { i16, i8, i8 }
%union._DYNAMICE_MEMORY_SETTINGS_PARAMETER_V2_1 = type { %struct._DYNAMICE_MEMORY_SETTINGS_PARAMETER }
%struct._DYNAMICE_MEMORY_SETTINGS_PARAMETER = type { %struct._ATOM_COMPUTE_CLOCK_FREQ, [2 x i32] }
%struct._ATOM_COMPUTE_CLOCK_FREQ = type { i32 }
%struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_3 = type { i8, i8, i16, i32, [3 x i32] }
%struct._ATOM_SMU_INFO_V2_1 = type { %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, [8 x %struct._ATOM_SCLK_FCW_RANGE_ENTRY_V1] }
%struct._ATOM_SCLK_FCW_RANGE_ENTRY_V1 = type { i32, i8, i8, i16, i16, i16 }
%struct.pp_atom_ctrl_sclk_range_table_entry = type { i8, i8, i16, i16, i16 }
%struct._ATOM_ASIC_PROFILING_INFO_V3_6 = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i16, i8, i8, i32, i32, i32, %struct._EFUSE_LINEAR_FUNC_PARAM, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, i32, i16, i8, i8, i8, i8, i16, i8, i8 }>
%struct.pp_atom_ctrl__avfs_parameters = type { i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, i32, i16, i8, i8, i8, i8, i16, i8, i8 }
%struct._ATOM_SVID2_VOLTAGE_OBJECT_V3 = type { %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, i16, i8, i8, i32 }
%struct._SET_VOLTAGE_PS_ALLOCATION = type { %struct._SET_VOLTAGE_PARAMETERS, %struct._WRITE_ONE_BYTE_HW_I2C_DATA_PARAMETERS }
%struct._SET_VOLTAGE_PARAMETERS = type { i8, i8, i8, i8 }
%struct._WRITE_ONE_BYTE_HW_I2C_DATA_PARAMETERS = type { i16, i16, i8, i8, i8, i8 }
%struct._ATOM_ASIC_PROFILING_INFO_V2_1 = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i16, i8, i16, i16, i8, i16, i16 }>
%struct._ATOM_ASIC_PROFILING_INFO_V3_3 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, %struct._EFUSE_LINEAR_FUNC_PARAM, %struct._EFUSE_LINEAR_FUNC_PARAM, %struct._EFUSE_LOGISTIC_FUNC_PARAM, %struct._EFUSE_LOGISTIC_FUNC_PARAM, %struct._EFUSE_LOGISTIC_FUNC_PARAM, i16, i8, i8, i32, i32, i32, i32, %union.anon.120, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct._EFUSE_LINEAR_FUNC_PARAM, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.120 = type { i16 }
%struct._ATOM_GFX_INFO_V2_3 = type { %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, [3 x i16] }
%struct._AtomCtrl_HiLoLeakageOffsetTable = type { i16, i16, i16 }

@atomctrl_initialize_mc_reg_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013amdgpu: Invalid VramInfo table.\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"atomctrl_initialize_mc_reg_table\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c\00", [34 x i8] zeroinitializer }, align 32
@atomctrl_initialize_mc_reg_table._entry_ptr = internal global ptr @atomctrl_initialize_mc_reg_table._entry, section ".printk_index", align 4
@atomctrl_initialize_mc_reg_table._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atomctrl_initialize_mc_reg_table._entry_ptr.4 = internal global ptr @atomctrl_initialize_mc_reg_table._entry.3, section ".printk_index", align 4
@atomctrl_initialize_mc_reg_table_v2_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"atomctrl_initialize_mc_reg_table_v2_2\00", [58 x i8] zeroinitializer }, align 32
@atomctrl_initialize_mc_reg_table_v2_2._entry_ptr = internal global ptr @atomctrl_initialize_mc_reg_table_v2_2._entry, section ".printk_index", align 4
@atomctrl_initialize_mc_reg_table_v2_2._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atomctrl_initialize_mc_reg_table_v2_2._entry_ptr.7 = internal global ptr @atomctrl_initialize_mc_reg_table_v2_2._entry.6, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@atomctrl_is_voltage_controlled_by_gpio_v3._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.atomctrl_is_voltage_controlled_by_gpio_v3 = private unnamed_addr constant [42 x i8] c"atomctrl_is_voltage_controlled_by_gpio_v3\00", align 1
@atomctrl_is_voltage_controlled_by_gpio_v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.atomctrl_is_voltage_controlled_by_gpio_v3, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@atomctrl_is_voltage_controlled_by_gpio_v3._entry_ptr = internal global ptr @atomctrl_is_voltage_controlled_by_gpio_v3._entry, section ".printk_index", align 4
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not find Voltage Table in BIOS.\00", [58 x i8] zeroinitializer }, align 32
@atomctrl_get_voltage_table_v3._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.atomctrl_get_voltage_table_v3 = private unnamed_addr constant [30 x i8] c"atomctrl_get_voltage_table_v3\00", align 1
@atomctrl_get_voltage_table_v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.atomctrl_get_voltage_table_v3, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atomctrl_get_voltage_table_v3._entry_ptr = internal global ptr @atomctrl_get_voltage_table_v3._entry, section ".printk_index", align 4
@atomctrl_get_voltage_table_v3._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@atomctrl_get_voltage_table_v3._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.atomctrl_get_voltage_table_v3, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atomctrl_get_voltage_table_v3._entry_ptr.13 = internal global ptr @atomctrl_get_voltage_table_v3._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Too many voltage entries!\00", [38 x i8] zeroinitializer }, align 32
@atomctrl_get_pp_assign_pin._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.atomctrl_get_pp_assign_pin = private unnamed_addr constant [27 x i8] c"atomctrl_get_pp_assign_pin\00", align 1
@atomctrl_get_pp_assign_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.atomctrl_get_pp_assign_pin, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atomctrl_get_pp_assign_pin._entry_ptr = internal global ptr @atomctrl_get_pp_assign_pin._entry, section ".printk_index", align 4
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not find GPIO lookup Table in BIOS.\00", [54 x i8] zeroinitializer }, align 32
@atomctrl_calculate_voltage_evv_on_sclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013amdgpu: DPM Level not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"atomctrl_calculate_voltage_evv_on_sclk\00", [57 x i8] zeroinitializer }, align 32
@atomctrl_calculate_voltage_evv_on_sclk._entry_ptr = internal global ptr @atomctrl_calculate_voltage_evv_on_sclk._entry, section ".printk_index", align 4
@atomctrl_get_voltage_evv.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atomctrl_get_voltage_evv\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Can't find requested voltage id in vddc_dependency_on_sclk table!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"amdgpu: Can't find requested voltage id in vddc_dependency_on_sclk table!\0A\00", [53 x i8] zeroinitializer }, align 32
@atomctrl_get_svi2_info._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.atomctrl_get_svi2_info = private unnamed_addr constant [23 x i8] c"atomctrl_get_svi2_info\00", align 1
@atomctrl_get_svi2_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.atomctrl_get_svi2_info, ptr @.str.2, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atomctrl_get_svi2_info._entry_ptr = internal global ptr @atomctrl_get_svi2_info._entry, section ".printk_index", align 4
@atomctrl_set_mc_reg_address_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.atomctrl_set_mc_reg_address_table = private unnamed_addr constant [34 x i8] c"atomctrl_set_mc_reg_address_table\00", align 1
@atomctrl_set_mc_reg_address_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.atomctrl_set_mc_reg_address_table, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atomctrl_set_mc_reg_address_table._entry_ptr = internal global ptr @atomctrl_set_mc_reg_address_table._entry, section ".printk_index", align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid VramInfo table.\00", [40 x i8] zeroinitializer }, align 32
@atomctrl_retrieve_ac_timing._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.atomctrl_retrieve_ac_timing = private unnamed_addr constant [28 x i8] c"atomctrl_retrieve_ac_timing\00", align 1
@atomctrl_retrieve_ac_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.atomctrl_retrieve_ac_timing, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atomctrl_retrieve_ac_timing._entry_ptr = internal global ptr @atomctrl_retrieve_ac_timing._entry, section ".printk_index", align 4
@get_gpio_lookup_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_gpio_lookup_table = private unnamed_addr constant [22 x i8] c"get_gpio_lookup_table\00", align 1
@get_gpio_lookup_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.get_gpio_lookup_table, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_gpio_lookup_table._entry_ptr = internal global ptr @get_gpio_lookup_table._entry, section ".printk_index", align 4
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error retrieving BIOS Table Address!\00", [59 x i8] zeroinitializer }, align 32
@fExponential.k_array = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 55452, i32 27726, i32 13863, i32 6931, i32 4055, i32 2231, i32 1178, i32 606, i32 308, i32 155, i32 78], [52 x i8] zeroinitializer }, align 32
@fExponential.expk_array = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 2560000, i32 160000, i32 40000, i32 20000, i32 15000, i32 12500, i32 11250, i32 10625, i32 10313, i32 10156, i32 10078], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [9 x i64] [i64 7, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 6, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 32, i64 11, i64 12, i64 15, i64 16, i64 17]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 148, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 151, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 185, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 188, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 555, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 575, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 584, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 670, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 757, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1170, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1504, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 112, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 87, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [65 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 652, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [8 x i8] c"k_array\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 120, i32 24 }
@___asan_gen_.144 = private unnamed_addr constant [11 x i8] c"expk_array\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppevvmath.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 121, i32 24 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @atomctrl_calculate_voltage_evv_on_sclk._entry, ptr @atomctrl_calculate_voltage_evv_on_sclk._entry_ptr, ptr @atomctrl_get_pp_assign_pin._entry, ptr @atomctrl_get_pp_assign_pin._entry_ptr, ptr @atomctrl_get_svi2_info._entry, ptr @atomctrl_get_svi2_info._entry_ptr, ptr @atomctrl_get_voltage_table_v3._entry, ptr @atomctrl_get_voltage_table_v3._entry.12, ptr @atomctrl_get_voltage_table_v3._entry_ptr, ptr @atomctrl_get_voltage_table_v3._entry_ptr.13, ptr @atomctrl_initialize_mc_reg_table._entry, ptr @atomctrl_initialize_mc_reg_table._entry.3, ptr @atomctrl_initialize_mc_reg_table._entry_ptr, ptr @atomctrl_initialize_mc_reg_table._entry_ptr.4, ptr @atomctrl_initialize_mc_reg_table_v2_2._entry, ptr @atomctrl_initialize_mc_reg_table_v2_2._entry.6, ptr @atomctrl_initialize_mc_reg_table_v2_2._entry_ptr, ptr @atomctrl_initialize_mc_reg_table_v2_2._entry_ptr.7, ptr @atomctrl_is_voltage_controlled_by_gpio_v3._entry, ptr @atomctrl_is_voltage_controlled_by_gpio_v3._entry_ptr, ptr @atomctrl_retrieve_ac_timing._entry, ptr @atomctrl_retrieve_ac_timing._entry_ptr, ptr @atomctrl_set_mc_reg_address_table._entry, ptr @atomctrl_set_mc_reg_address_table._entry_ptr, ptr @get_gpio_lookup_table._entry, ptr @get_gpio_lookup_table._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @atomctrl_is_voltage_controlled_by_gpio_v3._rs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @atomctrl_get_voltage_table_v3._rs, ptr @atomctrl_get_voltage_table_v3._rs.11, ptr @.str.14, ptr @atomctrl_get_pp_assign_pin._rs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @atomctrl_get_svi2_info._rs, ptr @atomctrl_set_mc_reg_address_table._rs, ptr @.str.22, ptr @atomctrl_retrieve_ac_timing._rs, ptr @get_gpio_lookup_table._rs, ptr @.str.23, ptr @fExponential.k_array, ptr @fExponential.expk_array], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_initialize_mc_reg_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_initialize_mc_reg_table._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_initialize_mc_reg_table_v2_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_initialize_mc_reg_table_v2_2._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_is_voltage_controlled_by_gpio_v3._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_is_voltage_controlled_by_gpio_v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_get_voltage_table_v3._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_get_voltage_table_v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_get_voltage_table_v3._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_get_voltage_table_v3._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_get_pp_assign_pin._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_get_pp_assign_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_calculate_voltage_evv_on_sclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_get_svi2_info._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_get_svi2_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_set_mc_reg_address_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_set_mc_reg_address_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_retrieve_ac_timing._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomctrl_retrieve_ac_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gpio_lookup_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gpio_lookup_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fExponential.k_array to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fExponential.expk_array to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_initialize_mc_reg_table(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %module_index, ptr nocapture noundef %table) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #5
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #5
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %size, align 2, !annotation !90
  %3 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmgr, align 4
  %call = call ptr @smu_atom_get_data_table(ptr noundef %4, i32 noundef 28, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #5
  %ucNumOfVRAMModule = getelementptr inbounds %struct._ATOM_VRAM_INFO_HEADER_V2_1, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %ucNumOfVRAMModule to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ucNumOfVRAMModule, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %module_index)
  %cmp.not = icmp ugt i8 %6, %module_index
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end24

if.else:                                          ; preds = %entry
  %ucTableFormatRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %ucTableFormatRevision to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ucTableFormatRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp5 = icmp ult i8 %8, 2
  br i1 %cmp5, label %do.end10, label %if.then16.critedge

do.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end24

if.then16.critedge:                               ; preds = %if.else
  %usMemClkPatchTblOffset = getelementptr inbounds %struct._ATOM_VRAM_INFO_HEADER_V2_1, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %usMemClkPatchTblOffset to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %usMemClkPatchTblOffset, align 1
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  %conv17 = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %call, i32 %conv17
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %13) #5
  %15 = udiv i16 %14, 3
  %narrow.i = add nuw nsw i16 %15, 255
  %16 = and i16 %narrow.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %16)
  %cmp.i = icmp ult i16 %16, 33
  br i1 %cmp.i, label %while.cond.preheader.i, label %if.then.i

while.cond.preheader.i:                           ; preds = %if.then16.critedge
  %ucPreRegDataLength35.i = getelementptr inbounds %struct._ATOM_INIT_REG_BLOCK, ptr %add.ptr, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %ucPreRegDataLength35.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ucPreRegDataLength35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool11.not36.i = icmp sgt i8 %18, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp1437.i = icmp ne i16 %16, 0
  %or.cond38.i = select i1 %tobool11.not36.i, i1 %cmp1437.i, i1 false
  br i1 %or.cond38.i, label %while.body.preheader.i, label %while.cond.preheader.i.if.then22_crit_edge

while.cond.preheader.i.if.then22_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

while.body.preheader.i:                           ; preds = %while.cond.preheader.i
  %asRegIndexBuf.i = getelementptr inbounds %struct._ATOM_INIT_REG_BLOCK, ptr %add.ptr, i32 0, i32 2
  %zext.i = zext i16 %16 to i32
  br label %while.body.i

if.then.i:                                        ; preds = %if.then16.critedge
  %call.i = call i32 @___ratelimit(ptr noundef nonnull @atomctrl_set_mc_reg_address_table._rs, ptr noundef nonnull @__func__.atomctrl_set_mc_reg_address_table) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end24_crit_edge, label %do.end.i

if.then.i.if.end24_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.22) #8
  br label %if.end24

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %while.body.preheader.i ], [ %indvars.iv.next.i, %while.body.i.while.body.i_crit_edge ]
  %ucPreRegDataLength41.i = phi ptr [ %ucPreRegDataLength35.i, %while.body.preheader.i ], [ %ucPreRegDataLength.i, %while.body.i.while.body.i_crit_edge ]
  %format.040.i = phi ptr [ %asRegIndexBuf.i, %while.body.preheader.i ], [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %19 = ptrtoint ptr %format.040.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %format.040.i, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20) #5
  %arrayidx16.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %table, i32 0, i32 3, i32 %indvars.iv.i
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx16.i, align 4
  %23 = ptrtoint ptr %ucPreRegDataLength41.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ucPreRegDataLength41.i, align 1
  %uc_pre_reg_data.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %table, i32 0, i32 3, i32 %indvars.iv.i, i32 1
  %25 = ptrtoint ptr %uc_pre_reg_data.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %uc_pre_reg_data.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %add.ptr.i = getelementptr i8, ptr %format.040.i, i32 3
  %ucPreRegDataLength.i = getelementptr i8, ptr %format.040.i, i32 5
  %26 = ptrtoint ptr %ucPreRegDataLength.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucPreRegDataLength.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %tobool11.not.i = icmp sgt i8 %27, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next.i, i32 %zext.i)
  %28 = icmp ult i32 %indvars.iv.next.i, %zext.i
  %or.cond.i = select i1 %tobool11.not.i, i1 %28, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.end.loopexit.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = trunc i32 %indvars.iv.next.i to i8
  br label %if.then22

if.then22:                                        ; preds = %while.end.loopexit.i, %while.cond.preheader.i.if.then22_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %while.cond.preheader.i.if.then22_crit_edge ], [ %29, %while.end.loopexit.i ]
  %30 = ptrtoint ptr %table to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %i.0.lcssa.i, ptr %table, align 4
  %call23 = call fastcc i32 @atomctrl_retrieve_ac_timing(i8 noundef zeroext %module_index, ptr noundef %add.ptr, ptr noundef %table)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %do.end.i, %if.then.i.if.end24_crit_edge, %do.end10, %do.end
  %result.2 = phi i32 [ %call23, %if.then22 ], [ -1, %do.end10 ], [ -1, %do.end ], [ -1, %do.end.i ], [ -1, %if.then.i.if.end24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #5
  ret i32 %result.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smu_atom_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atomctrl_retrieve_ac_timing(i8 noundef zeroext %index, ptr nocapture noundef readonly %reg_block, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %reg_block, i32 4
  %0 = ptrtoint ptr %reg_block to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %reg_block, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %conv
  %3 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not98 = icmp eq i32 %4, 0
  br i1 %cmp.not98, label %entry.do.end60_crit_edge, label %land.rhs.lr.ph

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end60

land.rhs.lr.ph:                                   ; preds = %entry
  %conv7 = zext i8 %index to i32
  %usRegDataBlkSize = getelementptr inbounds %struct._ATOM_INIT_REG_BLOCK, ptr %reg_block, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end48.land.rhs_crit_edge, %land.rhs.lr.ph
  %5 = phi i32 [ %4, %land.rhs.lr.ph ], [ %24, %if.end48.land.rhs_crit_edge ]
  %num_ranges.0100 = phi i8 [ 0, %land.rhs.lr.ph ], [ %num_ranges.1, %if.end48.land.rhs_crit_edge ]
  %reg_data.099 = phi ptr [ %add.ptr1, %land.rhs.lr.ph ], [ %add.ptr50, %if.end48.land.rhs_crit_edge ]
  %conv3 = zext i8 %num_ranges.0100 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %num_ranges.0100)
  %cmp4 = icmp ult i8 %num_ranges.0100, 20
  br i1 %cmp4, label %while.body, label %if.then53

while.body:                                       ; preds = %land.rhs
  %shr = lshr i32 %5, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv7)
  %cmp9 = icmp eq i32 %shr, %conv7
  br i1 %cmp9, label %if.then, label %while.body.if.end48_crit_edge

while.body.if.end48_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then:                                          ; preds = %while.body
  %and11 = and i32 %5, 16777215
  %arrayidx = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %table, i32 0, i32 2, i32 %conv3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and11, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %table to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1494.not = icmp eq i8 %8, 0
  br i1 %cmp1494.not, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %j.097 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 1, %if.then.for.body_crit_edge ]
  %i.095 = phi i32 [ %inc46, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %uc_pre_reg_data = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %table, i32 0, i32 3, i32 %i.095, i32 1
  %9 = ptrtoint ptr %uc_pre_reg_data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %uc_pre_reg_data, align 2
  %trunc = trunc i8 %10 to i4
  %11 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc, label %for.body.for.inc_crit_edge [
    i4 4, label %if.then21
    i4 0, label %if.then34
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr22 = getelementptr i32, ptr %reg_data.099, i32 %j.097
  %12 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr22, align 4
  %arrayidx26 = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %table, i32 0, i32 2, i32 %conv3, i32 1, i32 %i.095
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx26, align 4
  %inc = add i32 %j.097, 1
  br label %for.inc

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %i.095, -1
  %arrayidx39 = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %table, i32 0, i32 2, i32 %conv3, i32 1, i32 %sub
  %15 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx39, align 4
  %arrayidx44 = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %table, i32 0, i32 2, i32 %conv3, i32 1, i32 %i.095
  %17 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx44, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %if.then21, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.then21 ], [ %j.097, %if.then34 ], [ %j.097, %for.body.for.inc_crit_edge ]
  %inc46 = add nuw nsw i32 %i.095, 1
  %18 = ptrtoint ptr %table to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %table, align 4
  %conv13 = zext i8 %19 to i32
  %cmp14 = icmp ult i32 %inc46, %conv13
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %inc47 = add i8 %num_ranges.0100, 1
  br label %if.end48

if.end48:                                         ; preds = %for.end, %while.body.if.end48_crit_edge
  %num_ranges.1 = phi i8 [ %inc47, %for.end ], [ %num_ranges.0100, %while.body.if.end48_crit_edge ]
  %20 = ptrtoint ptr %usRegDataBlkSize to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %usRegDataBlkSize, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv49 = zext i16 %22 to i32
  %add.ptr50 = getelementptr i8, ptr %reg_data.099, i32 %conv49
  %23 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr50, align 4
  %cmp.not = icmp eq i32 %24, 0
  br i1 %cmp.not, label %if.end48.do.end60_crit_edge, label %if.end48.land.rhs_crit_edge

if.end48.land.rhs_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.end48.do.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end60

if.then53:                                        ; preds = %land.rhs
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @atomctrl_retrieve_ac_timing._rs, ptr noundef nonnull @__func__.atomctrl_retrieve_ac_timing) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then53.cleanup_crit_edge, label %do.end

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.22) #8
  br label %cleanup

do.end60:                                         ; preds = %if.end48.do.end60_crit_edge, %entry.do.end60_crit_edge
  %num_ranges.0.lcssa = phi i8 [ 0, %entry.do.end60_crit_edge ], [ %num_ranges.1, %if.end48.do.end60_crit_edge ]
  %num_entries = getelementptr inbounds %struct.pp_atomctrl_mc_reg_table, ptr %table, i32 0, i32 1
  %25 = ptrtoint ptr %num_entries to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %num_ranges.0.lcssa, ptr %num_entries, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %do.end, %if.then53.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end60 ], [ -1, %do.end ], [ -1, %if.then53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_initialize_mc_reg_table_v2_2(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %module_index, ptr nocapture noundef %table) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #5
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #5
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %size, align 2, !annotation !90
  %3 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmgr, align 4
  %call = call ptr @smu_atom_get_data_table(ptr noundef %4, i32 noundef 28, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #5
  %ucNumOfVRAMModule = getelementptr inbounds %struct._ATOM_VRAM_INFO_HEADER_V2_2, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %ucNumOfVRAMModule to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ucNumOfVRAMModule, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %module_index)
  %cmp.not = icmp ugt i8 %6, %module_index
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end24

if.else:                                          ; preds = %entry
  %ucTableFormatRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %ucTableFormatRevision to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ucTableFormatRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp5 = icmp ult i8 %8, 2
  br i1 %cmp5, label %do.end10, label %if.then16.critedge

do.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end24

if.then16.critedge:                               ; preds = %if.else
  %usMemClkPatchTblOffset = getelementptr inbounds %struct._ATOM_VRAM_INFO_HEADER_V2_2, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %usMemClkPatchTblOffset to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %usMemClkPatchTblOffset, align 1
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  %conv17 = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %call, i32 %conv17
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %13) #5
  %15 = udiv i16 %14, 3
  %narrow.i = add nuw nsw i16 %15, 255
  %16 = and i16 %narrow.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %16)
  %cmp.i = icmp ult i16 %16, 33
  br i1 %cmp.i, label %while.cond.preheader.i, label %if.then.i

while.cond.preheader.i:                           ; preds = %if.then16.critedge
  %ucPreRegDataLength35.i = getelementptr inbounds %struct._ATOM_INIT_REG_BLOCK, ptr %add.ptr, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %ucPreRegDataLength35.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ucPreRegDataLength35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool11.not36.i = icmp sgt i8 %18, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp1437.i = icmp ne i16 %16, 0
  %or.cond38.i = select i1 %tobool11.not36.i, i1 %cmp1437.i, i1 false
  br i1 %or.cond38.i, label %while.body.preheader.i, label %while.cond.preheader.i.if.then22_crit_edge

while.cond.preheader.i.if.then22_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

while.body.preheader.i:                           ; preds = %while.cond.preheader.i
  %asRegIndexBuf.i = getelementptr inbounds %struct._ATOM_INIT_REG_BLOCK, ptr %add.ptr, i32 0, i32 2
  %zext.i = zext i16 %16 to i32
  br label %while.body.i

if.then.i:                                        ; preds = %if.then16.critedge
  %call.i = call i32 @___ratelimit(ptr noundef nonnull @atomctrl_set_mc_reg_address_table._rs, ptr noundef nonnull @__func__.atomctrl_set_mc_reg_address_table) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end24_crit_edge, label %do.end.i

if.then.i.if.end24_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.22) #8
  br label %if.end24

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %while.body.preheader.i ], [ %indvars.iv.next.i, %while.body.i.while.body.i_crit_edge ]
  %ucPreRegDataLength41.i = phi ptr [ %ucPreRegDataLength35.i, %while.body.preheader.i ], [ %ucPreRegDataLength.i, %while.body.i.while.body.i_crit_edge ]
  %format.040.i = phi ptr [ %asRegIndexBuf.i, %while.body.preheader.i ], [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %19 = ptrtoint ptr %format.040.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %format.040.i, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20) #5
  %arrayidx16.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %table, i32 0, i32 3, i32 %indvars.iv.i
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx16.i, align 4
  %23 = ptrtoint ptr %ucPreRegDataLength41.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ucPreRegDataLength41.i, align 1
  %uc_pre_reg_data.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %table, i32 0, i32 3, i32 %indvars.iv.i, i32 1
  %25 = ptrtoint ptr %uc_pre_reg_data.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %uc_pre_reg_data.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %add.ptr.i = getelementptr i8, ptr %format.040.i, i32 3
  %ucPreRegDataLength.i = getelementptr i8, ptr %format.040.i, i32 5
  %26 = ptrtoint ptr %ucPreRegDataLength.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucPreRegDataLength.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %tobool11.not.i = icmp sgt i8 %27, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next.i, i32 %zext.i)
  %28 = icmp ult i32 %indvars.iv.next.i, %zext.i
  %or.cond.i = select i1 %tobool11.not.i, i1 %28, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.end.loopexit.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = trunc i32 %indvars.iv.next.i to i8
  br label %if.then22

if.then22:                                        ; preds = %while.end.loopexit.i, %while.cond.preheader.i.if.then22_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %while.cond.preheader.i.if.then22_crit_edge ], [ %29, %while.end.loopexit.i ]
  %30 = ptrtoint ptr %table to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %i.0.lcssa.i, ptr %table, align 4
  %call23 = call fastcc i32 @atomctrl_retrieve_ac_timing(i8 noundef zeroext %module_index, ptr noundef %add.ptr, ptr noundef %table)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %do.end.i, %if.then.i.if.end24_crit_edge, %do.end10, %do.end
  %result.2 = phi i32 [ %call23, %if.then22 ], [ -1, %do.end10 ], [ -1, %do.end ], [ -1, %do.end.i ], [ -1, %if.then.i.if.end24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #5
  ret i32 %result.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_set_engine_dram_timings_rv770(ptr nocapture noundef readonly %hwmgr, i32 noundef %engine_clock, i32 noundef %memory_clock) local_unnamed_addr #0 align 64 {
entry:
  %engine_clock_parameters = alloca %struct._SET_ENGINE_CLOCK_PS_ALLOCATION, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %engine_clock_parameters) #5
  %2 = getelementptr inbounds %struct._SET_ENGINE_CLOCK_PS_ALLOCATION, ptr %engine_clock_parameters, i32 0, i32 1
  %and = and i32 %engine_clock, 16777215
  %or = or i32 %and, 33554432
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %4 = getelementptr inbounds i8, ptr %engine_clock_parameters, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %engine_clock_parameters to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %engine_clock_parameters, align 4
  %and2 = and i32 %memory_clock, 16777215
  %7 = tail call i32 @llvm.bswap.i32(i32 %and2)
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %2, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %9 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %10, i32 noundef 63, ptr noundef nonnull %engine_clock_parameters) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %engine_clock_parameters) #5
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_memory_pll_dividers_si(ptr nocapture noundef readonly %hwmgr, i32 noundef %clock_value, ptr nocapture noundef %mpll_param, i1 noundef zeroext %strobe_mode) local_unnamed_addr #0 align 64 {
entry:
  %mpll_parameters = alloca %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mpll_parameters) #5
  %2 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %mpll_parameters, i32 0, i32 3
  %3 = tail call i32 @llvm.bswap.i32(i32 %clock_value)
  %4 = getelementptr inbounds i8, ptr %mpll_parameters, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %mpll_parameters to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %mpll_parameters, align 4
  %conv = zext i1 %strobe_mode to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %2, align 2
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %8 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %9, i32 noundef 70, ptr noundef nonnull %mpll_parameters) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %mpll_parameters, i32 0, i32 4
  %11 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %mpll_parameters, i32 0, i32 2
  %12 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %mpll_parameters, i32 0, i32 1
  %13 = ptrtoint ptr %mpll_parameters to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mpll_parameters, align 4
  %15 = ptrtoint ptr %mpll_param to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %mpll_param, align 4
  %16 = and i16 %14, -241
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %bf.value = zext i16 %17 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 8
  %bf.clear = and i32 %bf.load, 255
  %bf.set = or i32 %bf.shl, %bf.clear
  %usFbDiv = getelementptr inbounds %struct._ATOM_S_MPLL_FB_DIVIDER, ptr %mpll_parameters, i32 0, i32 1
  %18 = ptrtoint ptr %usFbDiv to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %usFbDiv, align 2
  %20 = and i16 %19, -241
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %bf.value7 = zext i16 %21 to i32
  %bf.shl8 = shl nuw i32 %bf.value7, 20
  %bf.set10 = or i32 %bf.shl8, %bf.set
  %22 = ptrtoint ptr %mpll_param to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bf.set10, ptr %mpll_param, align 4
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %11, align 1
  %conv11 = zext i8 %24 to i32
  %mpll_post_divider = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param, i32 0, i32 1
  %25 = ptrtoint ptr %mpll_post_divider to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv11, ptr %mpll_post_divider, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 2
  %28 = and i8 %27, 3
  %and = zext i8 %28 to i32
  %vco_mode = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param, i32 0, i32 4
  %29 = ptrtoint ptr %vco_mode to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and, ptr %vco_mode, align 4
  %30 = lshr i8 %27, 2
  %.lobit = and i8 %30, 1
  %31 = zext i8 %.lobit to i32
  %yclk_sel = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param, i32 0, i32 5
  %32 = ptrtoint ptr %yclk_sel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %yclk_sel, align 4
  %33 = lshr i8 %27, 3
  %.lobit36 = and i8 %33, 1
  %34 = zext i8 %.lobit36 to i32
  %qdr = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param, i32 0, i32 6
  %35 = ptrtoint ptr %qdr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %qdr, align 4
  %36 = lshr i8 %27, 4
  %.lobit37 = and i8 %36, 1
  %37 = zext i8 %.lobit37 to i32
  %half_rate = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param, i32 0, i32 7
  %38 = ptrtoint ptr %half_rate to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %half_rate, align 4
  %39 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %12, align 4
  %conv25 = zext i8 %40 to i32
  %dll_speed = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param, i32 0, i32 3
  %41 = ptrtoint ptr %dll_speed to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv25, ptr %dll_speed, align 4
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %10, align 1
  %conv26 = zext i8 %43 to i32
  %bw_ctrl = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param, i32 0, i32 2
  %44 = ptrtoint ptr %bw_ctrl to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv26, ptr %bw_ctrl, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mpll_parameters) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_memory_pll_dividers_vi(ptr nocapture noundef readonly %hwmgr, i32 noundef %clock_value, ptr nocapture noundef writeonly %mpll_param) local_unnamed_addr #0 align 64 {
entry:
  %mpll_parameters = alloca %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_2, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mpll_parameters) #5
  %2 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_2, ptr %mpll_parameters, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !90
  %4 = or i32 %clock_value, 255
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %mpll_parameters to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mpll_parameters, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %8, i32 noundef 70, ptr noundef nonnull %mpll_parameters) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %mpll_parameters to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load3 = load i32, ptr %mpll_parameters, align 4
  %bf.lshr = lshr i32 %bf.load3, 24
  %mpll_post_divider = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param, i32 0, i32 1
  %10 = ptrtoint ptr %mpll_post_divider to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.lshr, ptr %mpll_post_divider, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mpll_parameters) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_memory_pll_dividers_ai(ptr nocapture noundef readonly %hwmgr, i32 noundef %clock_value, ptr nocapture noundef writeonly %mpll_param) local_unnamed_addr #0 align 64 {
entry:
  %mpll_parameters = alloca %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_3, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mpll_parameters) #5
  %2 = ptrtoint ptr %mpll_parameters to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %mpll_parameters, align 8
  %3 = and i32 %clock_value, -256
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %mpll_parameters to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mpll_parameters, align 8
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %7, i32 noundef 70, ptr noundef nonnull %mpll_parameters) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 2147480) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usMclk_fcw_int = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_3, ptr %mpll_parameters, i32 0, i32 2
  %9 = ptrtoint ptr %usMclk_fcw_int to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %usMclk_fcw_int, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  %ulMclk_fcw_int = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param_ai, ptr %mpll_param, i32 0, i32 3
  %12 = ptrtoint ptr %ulMclk_fcw_int to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %ulMclk_fcw_int, align 2
  %usMclk_fcw_frac = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_3, ptr %mpll_parameters, i32 0, i32 1
  %13 = ptrtoint ptr %usMclk_fcw_frac to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %usMclk_fcw_frac, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %ulMclk_fcw_frac = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param_ai, ptr %mpll_param, i32 0, i32 2
  %16 = ptrtoint ptr %ulMclk_fcw_frac to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %ulMclk_fcw_frac, align 4
  %17 = ptrtoint ptr %mpll_parameters to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load3 = load i32, ptr %mpll_parameters, align 8
  %bf.clear4 = and i32 %bf.load3, 16777215
  %18 = call i32 @llvm.bswap.i32(i32 %bf.clear4)
  %19 = ptrtoint ptr %mpll_param to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mpll_param, align 4
  %bf.lshr = lshr i32 %bf.load3, 24
  %ulPostDiv = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param_ai, ptr %mpll_param, i32 0, i32 1
  %20 = ptrtoint ptr %ulPostDiv to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bf.lshr, ptr %ulPostDiv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mpll_parameters) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_engine_pll_dividers_kong(ptr nocapture noundef readonly %hwmgr, i32 noundef %clock_value, ptr nocapture noundef writeonly %dividers) local_unnamed_addr #0 align 64 {
entry:
  %pll_parameters = alloca %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll_parameters) #5
  %2 = or i32 %clock_value, 255
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %pll_parameters to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pll_parameters, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %6, i32 noundef 60, ptr noundef nonnull %pll_parameters) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %pll_parameters to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load2 = load i32, ptr %pll_parameters, align 4
  %bf.lshr = lshr i32 %bf.load2, 24
  %8 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bf.lshr, ptr %dividers, align 4
  %bf.clear4 = and i32 %bf.load2, 16777215
  %9 = call i32 @llvm.bswap.i32(i32 %bf.clear4)
  %real_clock = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_kong, ptr %dividers, i32 0, i32 1
  %10 = ptrtoint ptr %real_clock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %real_clock, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll_parameters) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_engine_pll_dividers_vi(ptr nocapture noundef readonly %hwmgr, i32 noundef %clock_value, ptr nocapture noundef %dividers) local_unnamed_addr #0 align 64 {
entry:
  %pll_patameters = alloca %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pll_patameters) #5
  %2 = and i32 %clock_value, -256
  %3 = or i32 %2, 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = getelementptr inbounds i8, ptr %pll_patameters, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 4
  %7 = ptrtoint ptr %pll_patameters to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %pll_patameters, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %8 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %9, i32 noundef 60, ptr noundef nonnull %pll_patameters) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %pll_patameters, i32 0, i32 4
  %11 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %pll_patameters, i32 0, i32 3
  %12 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %pll_patameters, i32 0, i32 2
  %13 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %pll_patameters, i32 0, i32 1, i32 1
  %14 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %pll_patameters, i32 0, i32 1
  %15 = ptrtoint ptr %pll_patameters to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load7 = load i32, ptr %pll_patameters, align 4
  %bf.lshr = lshr i32 %bf.load7, 24
  %16 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bf.lshr, ptr %dividers, align 4
  %bf.clear10 = and i32 %bf.load7, 16777215
  %17 = call i32 @llvm.bswap.i32(i32 %bf.clear10)
  %real_clock = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers, i32 0, i32 1
  %18 = ptrtoint ptr %real_clock to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %real_clock, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %14, align 4
  %ul_fb_div = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers, i32 0, i32 2
  %21 = ptrtoint ptr %ul_fb_div to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load11 = load i32, ptr %ul_fb_div, align 4
  %22 = and i16 %20, -193
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %bf.value12 = zext i16 %23 to i32
  %bf.shl = shl nuw i32 %bf.value12, 18
  %bf.clear13 = and i32 %bf.load11, 63
  %bf.set14 = or i32 %bf.shl, %bf.clear13
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %13, align 2
  %26 = and i16 %25, -241
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %bf.value19 = zext i16 %27 to i32
  %bf.shl20 = shl nuw nsw i32 %bf.value19, 6
  %bf.set22 = or i32 %bf.shl20, %bf.set14
  %28 = ptrtoint ptr %ul_fb_div to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bf.set22, ptr %ul_fb_div, align 4
  %29 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %12, align 4
  %uc_pll_ref_div = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers, i32 0, i32 3
  %31 = ptrtoint ptr %uc_pll_ref_div to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %uc_pll_ref_div, align 4
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %11, align 1
  %uc_pll_post_div = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers, i32 0, i32 4
  %34 = ptrtoint ptr %uc_pll_post_div to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %uc_pll_post_div, align 1
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %10, align 2
  %uc_pll_cntl_flag = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers, i32 0, i32 5
  %37 = ptrtoint ptr %uc_pll_cntl_flag to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %uc_pll_cntl_flag, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pll_patameters) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_engine_pll_dividers_ai(ptr nocapture noundef readonly %hwmgr, i32 noundef %clock_value, ptr nocapture noundef writeonly %dividers) local_unnamed_addr #0 align 64 {
entry:
  %pll_patameters = alloca %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pll_patameters) #5
  %2 = and i32 %clock_value, -256
  %3 = or i32 %2, 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = getelementptr inbounds i8, ptr %pll_patameters, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 20)
  %7 = ptrtoint ptr %pll_patameters to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %pll_patameters, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %8 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %9, i32 noundef 60, ptr noundef nonnull %pll_patameters) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, ptr %pll_patameters, i32 0, i32 12
  %11 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, ptr %pll_patameters, i32 0, i32 11
  %12 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, ptr %pll_patameters, i32 0, i32 10
  %13 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, ptr %pll_patameters, i32 0, i32 8
  %14 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, ptr %pll_patameters, i32 0, i32 7
  %15 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, ptr %pll_patameters, i32 0, i32 6
  %16 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, ptr %pll_patameters, i32 0, i32 5
  %17 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, ptr %pll_patameters, i32 0, i32 4
  %18 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, ptr %pll_patameters, i32 0, i32 3
  %19 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, ptr %pll_patameters, i32 0, i32 2
  %20 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7, ptr %pll_patameters, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 4
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %dividers to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %dividers, align 2
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %19, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %usSclk_fcw_int7 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 1
  %28 = ptrtoint ptr %usSclk_fcw_int7 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %usSclk_fcw_int7, align 2
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %18, align 4
  %ucSclkPostDiv8 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 2
  %31 = ptrtoint ptr %ucSclkPostDiv8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %ucSclkPostDiv8, align 2
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %17, align 1
  %ucSclkVcoMode9 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 3
  %34 = ptrtoint ptr %ucSclkVcoMode9 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %ucSclkVcoMode9, align 1
  %35 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %16, align 2
  %ucSclkPllRange10 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 4
  %37 = ptrtoint ptr %ucSclkPllRange10 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %ucSclkPllRange10, align 2
  %38 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %15, align 1
  %ucSscEnable11 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 5
  %40 = ptrtoint ptr %ucSscEnable11 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %ucSscEnable11, align 1
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %14, align 4
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %usSsc_fcw1_frac12 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 6
  %44 = ptrtoint ptr %usSsc_fcw1_frac12 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %usSsc_fcw1_frac12, align 2
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %13, align 2
  %47 = call i16 @llvm.bswap.i16(i16 %46)
  %usSsc_fcw1_int13 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 7
  %48 = ptrtoint ptr %usSsc_fcw1_int13 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %usSsc_fcw1_int13, align 2
  %49 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %12, align 2
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %usPcc_fcw_int14 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 9
  %52 = ptrtoint ptr %usPcc_fcw_int14 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %usPcc_fcw_int14, align 2
  %53 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %11, align 4
  %55 = call i16 @llvm.bswap.i16(i16 %54)
  %usSsc_fcw_slew_frac15 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 10
  %56 = ptrtoint ptr %usSsc_fcw_slew_frac15 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %usSsc_fcw_slew_frac15, align 2
  %57 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %10, align 2
  %59 = call i16 @llvm.bswap.i16(i16 %58)
  %usPcc_fcw_slew_frac16 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 11
  %60 = ptrtoint ptr %usPcc_fcw_slew_frac16 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %usPcc_fcw_slew_frac16, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pll_patameters) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_dfs_pll_dividers_vi(ptr nocapture noundef readonly %hwmgr, i32 noundef %clock_value, ptr nocapture noundef %dividers) local_unnamed_addr #0 align 64 {
entry:
  %pll_patameters = alloca %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pll_patameters) #5
  %2 = and i32 %clock_value, -256
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = getelementptr inbounds i8, ptr %pll_patameters, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 -1, ptr %4, align 4
  %6 = ptrtoint ptr %pll_patameters to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %pll_patameters, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %8, i32 noundef 60, ptr noundef nonnull %pll_patameters) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %pll_patameters, i32 0, i32 4
  %10 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %pll_patameters, i32 0, i32 3
  %11 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %pll_patameters, i32 0, i32 2
  %12 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %pll_patameters, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %pll_patameters, i32 0, i32 1
  %14 = ptrtoint ptr %pll_patameters to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load7 = load i32, ptr %pll_patameters, align 4
  %bf.lshr = lshr i32 %bf.load7, 24
  %15 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bf.lshr, ptr %dividers, align 4
  %bf.clear10 = and i32 %bf.load7, 16777215
  %16 = call i32 @llvm.bswap.i32(i32 %bf.clear10)
  %real_clock = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers, i32 0, i32 1
  %17 = ptrtoint ptr %real_clock to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %real_clock, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %13, align 4
  %ul_fb_div = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers, i32 0, i32 2
  %20 = ptrtoint ptr %ul_fb_div to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load11 = load i32, ptr %ul_fb_div, align 4
  %21 = and i16 %19, -193
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %bf.value12 = zext i16 %22 to i32
  %bf.shl = shl nuw i32 %bf.value12, 18
  %bf.clear13 = and i32 %bf.load11, 63
  %bf.set14 = or i32 %bf.shl, %bf.clear13
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %12, align 2
  %25 = and i16 %24, -241
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %bf.value19 = zext i16 %26 to i32
  %bf.shl20 = shl nuw nsw i32 %bf.value19, 6
  %bf.set22 = or i32 %bf.shl20, %bf.set14
  %27 = ptrtoint ptr %ul_fb_div to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bf.set22, ptr %ul_fb_div, align 4
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %11, align 4
  %uc_pll_ref_div = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers, i32 0, i32 3
  %30 = ptrtoint ptr %uc_pll_ref_div to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %uc_pll_ref_div, align 4
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %10, align 1
  %uc_pll_post_div = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers, i32 0, i32 4
  %33 = ptrtoint ptr %uc_pll_post_div to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %uc_pll_post_div, align 1
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %9, align 2
  %uc_pll_cntl_flag = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers, i32 0, i32 5
  %36 = ptrtoint ptr %uc_pll_cntl_flag to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %uc_pll_cntl_flag, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pll_patameters) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_reference_clock(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #5
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #5
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %size, align 2, !annotation !90
  %3 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmgr, align 4
  %call = call ptr @smu_atom_get_data_table(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usReferenceClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %call, i32 0, i32 25
  %5 = ptrtoint ptr %usReferenceClock to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %usReferenceClock, align 1
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %clock.0 = phi i32 [ %conv, %if.else ], [ 2700, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #5
  ret i32 %clock.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @atomctrl_is_voltage_controlled_by_gpio_v3(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %voltage_type, i8 noundef zeroext %voltage_mode) local_unnamed_addr #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #5
  %2 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #5
  %3 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #5
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size.i, align 2, !annotation !90
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #5
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %if.then, label %do.end7

if.then:                                          ; preds = %entry
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @atomctrl_is_voltage_controlled_by_gpio_v3._rs, ptr noundef nonnull @__func__.atomctrl_is_voltage_controlled_by_gpio_v3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #8
  br label %cleanup

do.end7:                                          ; preds = %entry
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %call.i, align 1
  %7 = call i16 @llvm.bswap.i16(i16 %6) #5
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp26.i = icmp ugt i16 %7, 4
  br i1 %cmp26.i, label %do.end7.while.body.i_crit_edge, label %do.end7.atomctrl_lookup_voltage_type_v3.exit_crit_edge

do.end7.atomctrl_lookup_voltage_type_v3.exit_crit_edge: ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %atomctrl_lookup_voltage_type_v3.exit

do.end7.while.body.i_crit_edge:                   ; preds = %do.end7
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %do.end7.while.body.i_crit_edge
  %offset.027.i = phi i32 [ %add.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %do.end7.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %offset.027.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %voltage_type)
  %cmp5.i = icmp eq i8 %9, %voltage_type
  br i1 %cmp5.i, label %land.lhs.true.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %ucVoltageMode.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 1
  %10 = ptrtoint ptr %ucVoltageMode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ucVoltageMode.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %voltage_mode)
  %cmp10.i = icmp eq i8 %11, %voltage_mode
  br i1 %cmp10.i, label %land.lhs.true.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

land.lhs.true.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atomctrl_lookup_voltage_type_v3.exit

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %usSize.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 2
  %12 = ptrtoint ptr %usSize.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %usSize.i, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %13) #5
  %conv13.i = zext i16 %14 to i32
  %add.i = add i32 %offset.027.i, %conv13.i
  %cmp.i = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge

cleanup.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atomctrl_lookup_voltage_type_v3.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

atomctrl_lookup_voltage_type_v3.exit:             ; preds = %cleanup.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge, %land.lhs.true.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge, %do.end7.atomctrl_lookup_voltage_type_v3.exit_crit_edge
  %retval.2.i = phi ptr [ null, %do.end7.atomctrl_lookup_voltage_type_v3.exit_crit_edge ], [ null, %cleanup.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge ], [ %add.ptr.i, %land.lhs.true.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge ]
  %cmp9 = icmp ne ptr %retval.2.i, null
  br label %cleanup

cleanup:                                          ; preds = %atomctrl_lookup_voltage_type_v3.exit, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp9, %atomctrl_lookup_voltage_type_v3.exit ], [ false, %do.end ], [ false, %if.then.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_voltage_table_v3(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %voltage_type, i8 noundef zeroext %voltage_mode, ptr nocapture noundef writeonly %voltage_table) local_unnamed_addr #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #5
  %2 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #5
  %3 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #5
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size.i, align 2, !annotation !90
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #5
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %if.then, label %do.end7

if.then:                                          ; preds = %entry
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @atomctrl_get_voltage_table_v3._rs, ptr noundef nonnull @__func__.atomctrl_get_voltage_table_v3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #8
  br label %cleanup

do.end7:                                          ; preds = %entry
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %call.i, align 1
  %7 = call i16 @llvm.bswap.i16(i16 %6) #5
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp26.i = icmp ugt i16 %7, 4
  br i1 %cmp26.i, label %do.end7.while.body.i_crit_edge, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end7.while.body.i_crit_edge:                   ; preds = %do.end7
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %do.end7.while.body.i_crit_edge
  %offset.027.i = phi i32 [ %add.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %do.end7.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %offset.027.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %voltage_type)
  %cmp5.i = icmp eq i8 %9, %voltage_type
  br i1 %cmp5.i, label %land.lhs.true.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %ucVoltageMode.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 1
  %10 = ptrtoint ptr %ucVoltageMode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ucVoltageMode.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %voltage_mode)
  %cmp10.i = icmp eq i8 %11, %voltage_mode
  br i1 %cmp10.i, label %atomctrl_lookup_voltage_type_v3.exit, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %usSize.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 2
  %12 = ptrtoint ptr %usSize.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %usSize.i, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %13) #5
  %conv13.i = zext i16 %14 to i32
  %add.i = add i32 %offset.027.i, %conv13.i
  %cmp.i = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

atomctrl_lookup_voltage_type_v3.exit:             ; preds = %land.lhs.true.i
  %cmp9 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp9, label %atomctrl_lookup_voltage_type_v3.exit.cleanup_crit_edge, label %do.body12

atomctrl_lookup_voltage_type_v3.exit.cleanup_crit_edge: ; preds = %atomctrl_lookup_voltage_type_v3.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body12:                                        ; preds = %atomctrl_lookup_voltage_type_v3.exit
  %ucGpioEntryNum = getelementptr inbounds %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 2
  %15 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ucGpioEntryNum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %16)
  %cmp13 = icmp ult i8 %16, 33
  br i1 %cmp13, label %for.cond.preheader, label %if.then15

for.cond.preheader:                               ; preds = %do.body12
  %17 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ucGpioEntryNum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp3063.not = icmp eq i8 %18, 0
  br i1 %cmp3063.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then15:                                        ; preds = %do.body12
  %call16 = call i32 @___ratelimit(ptr noundef nonnull @atomctrl_get_voltage_table_v3._rs.11, ptr noundef nonnull @__func__.atomctrl_get_voltage_table_v3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %do.end21

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 6, i32 %i.064
  %usVoltageValue = getelementptr %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 6, i32 %i.064, i32 1
  %19 = ptrtoint ptr %usVoltageValue to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usVoltageValue, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %arrayidx32 = getelementptr %struct.pp_atomctrl_voltage_table, ptr %voltage_table, i32 0, i32 3, i32 %i.064
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx32, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %smio_low = getelementptr %struct.pp_atomctrl_voltage_table, ptr %voltage_table, i32 0, i32 3, i32 %i.064, i32 1
  %26 = ptrtoint ptr %smio_low to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %smio_low, align 4
  %inc = add nuw nsw i32 %i.064, 1
  %27 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ucGpioEntryNum, align 1
  %conv29 = zext i8 %28 to i32
  %cmp30 = icmp ult i32 %inc, %conv29
  br i1 %cmp30, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ulGpioMaskVal = getelementptr inbounds %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 5
  %29 = ptrtoint ptr %ulGpioMaskVal to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %ulGpioMaskVal, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %mask_low = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %voltage_table, i32 0, i32 1
  %32 = ptrtoint ptr %mask_low to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %mask_low, align 4
  %33 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ucGpioEntryNum, align 1
  %conv38 = zext i8 %34 to i32
  %35 = ptrtoint ptr %voltage_table to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv38, ptr %voltage_table, align 4
  %ucPhaseDelay = getelementptr inbounds %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 3
  %36 = ptrtoint ptr %ucPhaseDelay to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ucPhaseDelay, align 1
  %conv39 = zext i8 %37 to i32
  %phase_delay = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %voltage_table, i32 0, i32 2
  %38 = ptrtoint ptr %phase_delay to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv39, ptr %phase_delay, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end21, %if.then15.cleanup_crit_edge, %atomctrl_lookup_voltage_type_v3.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %do.end7.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %atomctrl_lookup_voltage_type_v3.exit.cleanup_crit_edge ], [ -1, %do.end21 ], [ -1, %if.then15.cleanup_crit_edge ], [ -1, %do.end7.cleanup_crit_edge ], [ -1, %cleanup.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @atomctrl_get_pp_assign_pin(ptr nocapture noundef readonly %hwmgr, i32 noundef %pinId, ptr nocapture noundef writeonly %gpio_pin_assignment) local_unnamed_addr #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #5
  %2 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #5
  %3 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #5
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size.i, align 2, !annotation !90
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #5
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.then.i, label %do.end7

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @get_gpio_lookup_table._rs, ptr noundef nonnull @__func__.get_gpio_lookup_table) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then_crit_edge, label %do.end.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.23) #8
  br label %if.then

if.then:                                          ; preds = %do.end.i, %if.then.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #5
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @atomctrl_get_pp_assign_pin._rs, ptr noundef nonnull @__func__.atomctrl_get_pp_assign_pin) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15) #8
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #5
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %call.i, align 1
  %7 = call i16 @llvm.bswap.i16(i16 %6) #5
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp17.i = icmp ugt i16 %7, 4
  br i1 %cmp17.i, label %do.end7.while.body.i_crit_edge, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end7.while.body.i_crit_edge:                   ; preds = %do.end7
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %add.i = add nuw nsw i32 %offset.018.i, 4
  %cmp.i = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.cleanup_crit_edge

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %do.end7.while.body.i_crit_edge
  %offset.018.i = phi i32 [ %add.i, %while.cond.i.while.body.i_crit_edge ], [ 4, %do.end7.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %offset.018.i
  %ucGPIO_ID.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %add.ptr.i, i32 0, i32 2
  %8 = ptrtoint ptr %ucGPIO_ID.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ucGPIO_ID.i, align 1
  %conv2.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %pinId)
  %cmp3.i = icmp eq i32 %conv2.i, %pinId
  br i1 %cmp3.i, label %cleanup.thread.i, label %while.cond.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %ucGpioPinBitShift.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %add.ptr.i, i32 0, i32 1
  %10 = ptrtoint ptr %ucGpioPinBitShift.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ucGpioPinBitShift.i, align 1
  %uc_gpio_pin_bit_shift.i = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin_assignment, i32 0, i32 1
  %12 = ptrtoint ptr %uc_gpio_pin_bit_shift.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %uc_gpio_pin_bit_shift.i, align 2
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %add.ptr.i, align 1
  %15 = call i16 @llvm.bswap.i16(i16 %14) #5
  %16 = ptrtoint ptr %gpio_pin_assignment to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %gpio_pin_assignment, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.thread.i, %while.cond.i.cleanup_crit_edge, %do.end7.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ false, %if.then.cleanup_crit_edge ], [ true, %cleanup.thread.i ], [ false, %do.end7.cleanup_crit_edge ], [ false, %while.cond.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_calculate_voltage_evv_on_sclk(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %voltage_type, i32 noundef %sclk, i16 noundef zeroext %virtual_voltage_Id, ptr nocapture noundef writeonly %voltage, i16 noundef zeroext %dpm_level, i1 noundef zeroext %debug) local_unnamed_addr #0 align 64 {
GetScaledFraction.exit:
  %sOutput_FuseValues = alloca %union._READ_EFUSE_VALUE_PARAMETER, align 4
  %fRoots = alloca [2 x %union._fInt], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sOutput_FuseValues) #5
  %2 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sOutput_FuseValues, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fRoots) #5
  %3 = ptrtoint ptr %fRoots to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fRoots, align 4, !annotation !90
  %4 = getelementptr inbounds [2 x %union._fInt], ptr %fRoots, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !90
  %call7.i.i = tail call i64 @div64_s64(i64 noundef 2684354560000, i64 noundef 1638400000) #5
  %6 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr, align 4
  %call3 = tail call ptr @smu_atom_get_data_table(ptr noundef %7, i32 noundef 31, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %GetScaledFraction.exit.cleanup_crit_edge, label %if.end

GetScaledFraction.exit.cleanup_crit_edge:         ; preds = %GetScaledFraction.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %GetScaledFraction.exit
  %ucTableFormatRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %ucTableFormatRevision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ucTableFormatRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp = icmp ult i8 %9, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp8 = icmp eq i8 %9, 3
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %ucTableContentRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %ucTableContentRevision to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ucTableContentRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp12 = icmp ult i8 %11, 4
  br i1 %cmp12, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %ulLoadLineSlop = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 5
  %12 = ptrtoint ptr %ulLoadLineSlop to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %ulLoadLineSlop, align 1
  %shl.i = shl i32 %13, 16
  %conv.i.i1883 = sext i32 %shl.i to i64
  %shl.i.i1884 = shl nsw i64 %conv.i.i1883, 16
  %call7.i.i1885 = tail call i64 @div64_s64(i64 noundef %shl.i.i1884, i64 noundef 65536000) #5
  %14 = zext i16 %dpm_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %dpm_level, label %do.end [
    i16 1, label %sw.bb
    i16 2, label %sw.bb22
    i16 3, label %sw.bb26
    i16 4, label %sw.bb30
    i16 5, label %sw.bb34
    i16 6, label %sw.bb38
    i16 7, label %sw.bb42
  ]

sw.bb:                                            ; preds = %if.end15
  %ulTdpDerateDPM1 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 29
  %15 = ptrtoint ptr %ulTdpDerateDPM1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %ulTdpDerateDPM1, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %18)
  %cmp5.i = icmp sgt i32 %18, 32767
  br i1 %cmp5.i, label %if.then7.i, label %sw.bb.if.end.i.i1912_crit_edge

sw.bb.if.end.i.i1912_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i1912

if.then7.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768000, i32 %18)
  %cmp8.i = icmp ult i32 %18, 32768000
  br i1 %cmp8.i, label %if.then7.i.while.cond.i1890_crit_edge, label %if.then7.i.sw.epilog_crit_edge

if.then7.i.sw.epilog_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then7.i.while.cond.i1890_crit_edge:            ; preds = %if.then7.i
  br label %while.cond.i1890

while.cond.i1890:                                 ; preds = %while.cond.i1890.while.cond.i1890_crit_edge, %if.then7.i.while.cond.i1890_crit_edge
  %X.addr.1.i1887 = phi i32 [ %shr69.i1889, %while.cond.i1890.while.cond.i1890_crit_edge ], [ %18, %if.then7.i.while.cond.i1890_crit_edge ]
  %cmp10.i1888 = icmp sgt i32 %X.addr.1.i1887, 32767
  %shr69.i1889 = lshr i32 %X.addr.1.i1887, 1
  br i1 %cmp10.i1888, label %while.cond.i1890.while.cond.i1890_crit_edge, label %while.cond.i1890.if.end.i.i1912_crit_edge

while.cond.i1890.if.end.i.i1912_crit_edge:        ; preds = %while.cond.i1890
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i1912

while.cond.i1890.while.cond.i1890_crit_edge:      ; preds = %while.cond.i1890
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i1890

if.end.i.i1912:                                   ; preds = %while.cond.i1890.if.end.i.i1912_crit_edge, %sw.bb.if.end.i.i1912_crit_edge
  %X.addr.2.i27442749 = phi i32 [ %18, %sw.bb.if.end.i.i1912_crit_edge ], [ %X.addr.1.i1887, %while.cond.i1890.if.end.i.i1912_crit_edge ]
  %19 = sub i32 0, %X.addr.2.i27442749
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.i72.i = icmp slt i32 %17, 0
  %20 = select i1 %cmp3.i72.i, i32 %19, i32 %X.addr.2.i27442749
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %20)
  %cmp.i61.i1905 = icmp slt i32 %20, 32768
  %shl.i62.i1906 = shl i32 %20, 16
  %retval.sroa.0.0.i63.i1907 = select i1 %cmp.i61.i1905, i32 %shl.i62.i1906, i32 0
  %conv.i.i1908 = sext i32 %retval.sroa.0.0.i63.i1907 to i64
  %shl.i67.i1910 = shl nsw i64 %conv.i.i1908, 16
  %call7.i.i1911 = tail call i64 @div64_s64(i64 noundef %shl.i67.i1910, i64 noundef 65536000) #5
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end15
  %ulTdpDerateDPM2 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 30
  %21 = ptrtoint ptr %ulTdpDerateDPM2 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %ulTdpDerateDPM2, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = tail call i32 @llvm.abs.i32(i32 %23, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %24)
  %cmp5.i1915 = icmp sgt i32 %24, 32767
  br i1 %cmp5.i1915, label %if.then7.i1918, label %sw.bb22.if.end.i.i1947_crit_edge

sw.bb22.if.end.i.i1947_crit_edge:                 ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i1947

if.then7.i1918:                                   ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768000, i32 %24)
  %cmp8.i1917 = icmp ult i32 %24, 32768000
  br i1 %cmp8.i1917, label %if.then7.i1918.while.cond.i1922_crit_edge, label %if.then7.i1918.sw.epilog_crit_edge

if.then7.i1918.sw.epilog_crit_edge:               ; preds = %if.then7.i1918
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then7.i1918.while.cond.i1922_crit_edge:        ; preds = %if.then7.i1918
  br label %while.cond.i1922

while.cond.i1922:                                 ; preds = %while.cond.i1922.while.cond.i1922_crit_edge, %if.then7.i1918.while.cond.i1922_crit_edge
  %X.addr.1.i1919 = phi i32 [ %shr69.i1921, %while.cond.i1922.while.cond.i1922_crit_edge ], [ %24, %if.then7.i1918.while.cond.i1922_crit_edge ]
  %cmp10.i1920 = icmp sgt i32 %X.addr.1.i1919, 32767
  %shr69.i1921 = lshr i32 %X.addr.1.i1919, 1
  br i1 %cmp10.i1920, label %while.cond.i1922.while.cond.i1922_crit_edge, label %while.cond.i1922.if.end.i.i1947_crit_edge

while.cond.i1922.if.end.i.i1947_crit_edge:        ; preds = %while.cond.i1922
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i1947

while.cond.i1922.while.cond.i1922_crit_edge:      ; preds = %while.cond.i1922
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i1922

if.end.i.i1947:                                   ; preds = %while.cond.i1922.if.end.i.i1947_crit_edge, %sw.bb22.if.end.i.i1947_crit_edge
  %X.addr.2.i192927552760 = phi i32 [ %24, %sw.bb22.if.end.i.i1947_crit_edge ], [ %X.addr.1.i1919, %while.cond.i1922.if.end.i.i1947_crit_edge ]
  %25 = sub i32 0, %X.addr.2.i192927552760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp3.i72.i1939 = icmp slt i32 %23, 0
  %26 = select i1 %cmp3.i72.i1939, i32 %25, i32 %X.addr.2.i192927552760
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %26)
  %cmp.i61.i1940 = icmp slt i32 %26, 32768
  %shl.i62.i1941 = shl i32 %26, 16
  %retval.sroa.0.0.i63.i1942 = select i1 %cmp.i61.i1940, i32 %shl.i62.i1941, i32 0
  %conv.i.i1943 = sext i32 %retval.sroa.0.0.i63.i1942 to i64
  %shl.i67.i1945 = shl nsw i64 %conv.i.i1943, 16
  %call7.i.i1946 = tail call i64 @div64_s64(i64 noundef %shl.i67.i1945, i64 noundef 65536000) #5
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end15
  %ulTdpDerateDPM3 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 31
  %27 = ptrtoint ptr %ulTdpDerateDPM3 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %ulTdpDerateDPM3, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %30)
  %cmp5.i1950 = icmp sgt i32 %30, 32767
  br i1 %cmp5.i1950, label %if.then7.i1953, label %sw.bb26.if.end.i.i1982_crit_edge

sw.bb26.if.end.i.i1982_crit_edge:                 ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i1982

if.then7.i1953:                                   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768000, i32 %30)
  %cmp8.i1952 = icmp ult i32 %30, 32768000
  br i1 %cmp8.i1952, label %if.then7.i1953.while.cond.i1957_crit_edge, label %if.then7.i1953.sw.epilog_crit_edge

if.then7.i1953.sw.epilog_crit_edge:               ; preds = %if.then7.i1953
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then7.i1953.while.cond.i1957_crit_edge:        ; preds = %if.then7.i1953
  br label %while.cond.i1957

while.cond.i1957:                                 ; preds = %while.cond.i1957.while.cond.i1957_crit_edge, %if.then7.i1953.while.cond.i1957_crit_edge
  %X.addr.1.i1954 = phi i32 [ %shr69.i1956, %while.cond.i1957.while.cond.i1957_crit_edge ], [ %30, %if.then7.i1953.while.cond.i1957_crit_edge ]
  %cmp10.i1955 = icmp sgt i32 %X.addr.1.i1954, 32767
  %shr69.i1956 = lshr i32 %X.addr.1.i1954, 1
  br i1 %cmp10.i1955, label %while.cond.i1957.while.cond.i1957_crit_edge, label %while.cond.i1957.if.end.i.i1982_crit_edge

while.cond.i1957.if.end.i.i1982_crit_edge:        ; preds = %while.cond.i1957
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i1982

while.cond.i1957.while.cond.i1957_crit_edge:      ; preds = %while.cond.i1957
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i1957

if.end.i.i1982:                                   ; preds = %while.cond.i1957.if.end.i.i1982_crit_edge, %sw.bb26.if.end.i.i1982_crit_edge
  %X.addr.2.i196427662771 = phi i32 [ %30, %sw.bb26.if.end.i.i1982_crit_edge ], [ %X.addr.1.i1954, %while.cond.i1957.if.end.i.i1982_crit_edge ]
  %31 = sub i32 0, %X.addr.2.i196427662771
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3.i72.i1974 = icmp slt i32 %29, 0
  %32 = select i1 %cmp3.i72.i1974, i32 %31, i32 %X.addr.2.i196427662771
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %32)
  %cmp.i61.i1975 = icmp slt i32 %32, 32768
  %shl.i62.i1976 = shl i32 %32, 16
  %retval.sroa.0.0.i63.i1977 = select i1 %cmp.i61.i1975, i32 %shl.i62.i1976, i32 0
  %conv.i.i1978 = sext i32 %retval.sroa.0.0.i63.i1977 to i64
  %shl.i67.i1980 = shl nsw i64 %conv.i.i1978, 16
  %call7.i.i1981 = tail call i64 @div64_s64(i64 noundef %shl.i67.i1980, i64 noundef 65536000) #5
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end15
  %ulTdpDerateDPM4 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 32
  %33 = ptrtoint ptr %ulTdpDerateDPM4 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %ulTdpDerateDPM4, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = tail call i32 @llvm.abs.i32(i32 %35, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %36)
  %cmp5.i1985 = icmp sgt i32 %36, 32767
  br i1 %cmp5.i1985, label %if.then7.i1988, label %sw.bb30.if.end.i.i2017_crit_edge

sw.bb30.if.end.i.i2017_crit_edge:                 ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2017

if.then7.i1988:                                   ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768000, i32 %36)
  %cmp8.i1987 = icmp ult i32 %36, 32768000
  br i1 %cmp8.i1987, label %if.then7.i1988.while.cond.i1992_crit_edge, label %if.then7.i1988.sw.epilog_crit_edge

if.then7.i1988.sw.epilog_crit_edge:               ; preds = %if.then7.i1988
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then7.i1988.while.cond.i1992_crit_edge:        ; preds = %if.then7.i1988
  br label %while.cond.i1992

while.cond.i1992:                                 ; preds = %while.cond.i1992.while.cond.i1992_crit_edge, %if.then7.i1988.while.cond.i1992_crit_edge
  %X.addr.1.i1989 = phi i32 [ %shr69.i1991, %while.cond.i1992.while.cond.i1992_crit_edge ], [ %36, %if.then7.i1988.while.cond.i1992_crit_edge ]
  %cmp10.i1990 = icmp sgt i32 %X.addr.1.i1989, 32767
  %shr69.i1991 = lshr i32 %X.addr.1.i1989, 1
  br i1 %cmp10.i1990, label %while.cond.i1992.while.cond.i1992_crit_edge, label %while.cond.i1992.if.end.i.i2017_crit_edge

while.cond.i1992.if.end.i.i2017_crit_edge:        ; preds = %while.cond.i1992
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2017

while.cond.i1992.while.cond.i1992_crit_edge:      ; preds = %while.cond.i1992
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i1992

if.end.i.i2017:                                   ; preds = %while.cond.i1992.if.end.i.i2017_crit_edge, %sw.bb30.if.end.i.i2017_crit_edge
  %X.addr.2.i199927772782 = phi i32 [ %36, %sw.bb30.if.end.i.i2017_crit_edge ], [ %X.addr.1.i1989, %while.cond.i1992.if.end.i.i2017_crit_edge ]
  %37 = sub i32 0, %X.addr.2.i199927772782
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp3.i72.i2009 = icmp slt i32 %35, 0
  %38 = select i1 %cmp3.i72.i2009, i32 %37, i32 %X.addr.2.i199927772782
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %38)
  %cmp.i61.i2010 = icmp slt i32 %38, 32768
  %shl.i62.i2011 = shl i32 %38, 16
  %retval.sroa.0.0.i63.i2012 = select i1 %cmp.i61.i2010, i32 %shl.i62.i2011, i32 0
  %conv.i.i2013 = sext i32 %retval.sroa.0.0.i63.i2012 to i64
  %shl.i67.i2015 = shl nsw i64 %conv.i.i2013, 16
  %call7.i.i2016 = tail call i64 @div64_s64(i64 noundef %shl.i67.i2015, i64 noundef 65536000) #5
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end15
  %ulTdpDerateDPM5 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 33
  %39 = ptrtoint ptr %ulTdpDerateDPM5 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %ulTdpDerateDPM5, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = tail call i32 @llvm.abs.i32(i32 %41, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %42)
  %cmp5.i2020 = icmp sgt i32 %42, 32767
  br i1 %cmp5.i2020, label %if.then7.i2023, label %sw.bb34.if.end.i.i2052_crit_edge

sw.bb34.if.end.i.i2052_crit_edge:                 ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2052

if.then7.i2023:                                   ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768000, i32 %42)
  %cmp8.i2022 = icmp ult i32 %42, 32768000
  br i1 %cmp8.i2022, label %if.then7.i2023.while.cond.i2027_crit_edge, label %if.then7.i2023.sw.epilog_crit_edge

if.then7.i2023.sw.epilog_crit_edge:               ; preds = %if.then7.i2023
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then7.i2023.while.cond.i2027_crit_edge:        ; preds = %if.then7.i2023
  br label %while.cond.i2027

while.cond.i2027:                                 ; preds = %while.cond.i2027.while.cond.i2027_crit_edge, %if.then7.i2023.while.cond.i2027_crit_edge
  %X.addr.1.i2024 = phi i32 [ %shr69.i2026, %while.cond.i2027.while.cond.i2027_crit_edge ], [ %42, %if.then7.i2023.while.cond.i2027_crit_edge ]
  %cmp10.i2025 = icmp sgt i32 %X.addr.1.i2024, 32767
  %shr69.i2026 = lshr i32 %X.addr.1.i2024, 1
  br i1 %cmp10.i2025, label %while.cond.i2027.while.cond.i2027_crit_edge, label %while.cond.i2027.if.end.i.i2052_crit_edge

while.cond.i2027.if.end.i.i2052_crit_edge:        ; preds = %while.cond.i2027
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2052

while.cond.i2027.while.cond.i2027_crit_edge:      ; preds = %while.cond.i2027
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i2027

if.end.i.i2052:                                   ; preds = %while.cond.i2027.if.end.i.i2052_crit_edge, %sw.bb34.if.end.i.i2052_crit_edge
  %X.addr.2.i203427882793 = phi i32 [ %42, %sw.bb34.if.end.i.i2052_crit_edge ], [ %X.addr.1.i2024, %while.cond.i2027.if.end.i.i2052_crit_edge ]
  %43 = sub i32 0, %X.addr.2.i203427882793
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp3.i72.i2044 = icmp slt i32 %41, 0
  %44 = select i1 %cmp3.i72.i2044, i32 %43, i32 %X.addr.2.i203427882793
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %44)
  %cmp.i61.i2045 = icmp slt i32 %44, 32768
  %shl.i62.i2046 = shl i32 %44, 16
  %retval.sroa.0.0.i63.i2047 = select i1 %cmp.i61.i2045, i32 %shl.i62.i2046, i32 0
  %conv.i.i2048 = sext i32 %retval.sroa.0.0.i63.i2047 to i64
  %shl.i67.i2050 = shl nsw i64 %conv.i.i2048, 16
  %call7.i.i2051 = tail call i64 @div64_s64(i64 noundef %shl.i67.i2050, i64 noundef 65536000) #5
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end15
  %ulTdpDerateDPM6 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 34
  %45 = ptrtoint ptr %ulTdpDerateDPM6 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %ulTdpDerateDPM6, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = tail call i32 @llvm.abs.i32(i32 %47, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %48)
  %cmp5.i2055 = icmp sgt i32 %48, 32767
  br i1 %cmp5.i2055, label %if.then7.i2058, label %sw.bb38.if.end.i.i2087_crit_edge

sw.bb38.if.end.i.i2087_crit_edge:                 ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2087

if.then7.i2058:                                   ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768000, i32 %48)
  %cmp8.i2057 = icmp ult i32 %48, 32768000
  br i1 %cmp8.i2057, label %if.then7.i2058.while.cond.i2062_crit_edge, label %if.then7.i2058.sw.epilog_crit_edge

if.then7.i2058.sw.epilog_crit_edge:               ; preds = %if.then7.i2058
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then7.i2058.while.cond.i2062_crit_edge:        ; preds = %if.then7.i2058
  br label %while.cond.i2062

while.cond.i2062:                                 ; preds = %while.cond.i2062.while.cond.i2062_crit_edge, %if.then7.i2058.while.cond.i2062_crit_edge
  %X.addr.1.i2059 = phi i32 [ %shr69.i2061, %while.cond.i2062.while.cond.i2062_crit_edge ], [ %48, %if.then7.i2058.while.cond.i2062_crit_edge ]
  %cmp10.i2060 = icmp sgt i32 %X.addr.1.i2059, 32767
  %shr69.i2061 = lshr i32 %X.addr.1.i2059, 1
  br i1 %cmp10.i2060, label %while.cond.i2062.while.cond.i2062_crit_edge, label %while.cond.i2062.if.end.i.i2087_crit_edge

while.cond.i2062.if.end.i.i2087_crit_edge:        ; preds = %while.cond.i2062
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2087

while.cond.i2062.while.cond.i2062_crit_edge:      ; preds = %while.cond.i2062
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i2062

if.end.i.i2087:                                   ; preds = %while.cond.i2062.if.end.i.i2087_crit_edge, %sw.bb38.if.end.i.i2087_crit_edge
  %X.addr.2.i206927992804 = phi i32 [ %48, %sw.bb38.if.end.i.i2087_crit_edge ], [ %X.addr.1.i2059, %while.cond.i2062.if.end.i.i2087_crit_edge ]
  %49 = sub i32 0, %X.addr.2.i206927992804
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp3.i72.i2079 = icmp slt i32 %47, 0
  %50 = select i1 %cmp3.i72.i2079, i32 %49, i32 %X.addr.2.i206927992804
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %50)
  %cmp.i61.i2080 = icmp slt i32 %50, 32768
  %shl.i62.i2081 = shl i32 %50, 16
  %retval.sroa.0.0.i63.i2082 = select i1 %cmp.i61.i2080, i32 %shl.i62.i2081, i32 0
  %conv.i.i2083 = sext i32 %retval.sroa.0.0.i63.i2082 to i64
  %shl.i67.i2085 = shl nsw i64 %conv.i.i2083, 16
  %call7.i.i2086 = tail call i64 @div64_s64(i64 noundef %shl.i67.i2085, i64 noundef 65536000) #5
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end15
  %ulTdpDerateDPM7 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 35
  %51 = ptrtoint ptr %ulTdpDerateDPM7 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %ulTdpDerateDPM7, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %54)
  %cmp5.i2090 = icmp sgt i32 %54, 32767
  br i1 %cmp5.i2090, label %if.then7.i2093, label %sw.bb42.if.end.i.i2122_crit_edge

sw.bb42.if.end.i.i2122_crit_edge:                 ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2122

if.then7.i2093:                                   ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768000, i32 %54)
  %cmp8.i2092 = icmp ult i32 %54, 32768000
  br i1 %cmp8.i2092, label %if.then7.i2093.while.cond.i2097_crit_edge, label %if.then7.i2093.sw.epilog_crit_edge

if.then7.i2093.sw.epilog_crit_edge:               ; preds = %if.then7.i2093
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then7.i2093.while.cond.i2097_crit_edge:        ; preds = %if.then7.i2093
  br label %while.cond.i2097

while.cond.i2097:                                 ; preds = %while.cond.i2097.while.cond.i2097_crit_edge, %if.then7.i2093.while.cond.i2097_crit_edge
  %X.addr.1.i2094 = phi i32 [ %shr69.i2096, %while.cond.i2097.while.cond.i2097_crit_edge ], [ %54, %if.then7.i2093.while.cond.i2097_crit_edge ]
  %cmp10.i2095 = icmp sgt i32 %X.addr.1.i2094, 32767
  %shr69.i2096 = lshr i32 %X.addr.1.i2094, 1
  br i1 %cmp10.i2095, label %while.cond.i2097.while.cond.i2097_crit_edge, label %while.cond.i2097.if.end.i.i2122_crit_edge

while.cond.i2097.if.end.i.i2122_crit_edge:        ; preds = %while.cond.i2097
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2122

while.cond.i2097.while.cond.i2097_crit_edge:      ; preds = %while.cond.i2097
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i2097

if.end.i.i2122:                                   ; preds = %while.cond.i2097.if.end.i.i2122_crit_edge, %sw.bb42.if.end.i.i2122_crit_edge
  %X.addr.2.i210428102815 = phi i32 [ %54, %sw.bb42.if.end.i.i2122_crit_edge ], [ %X.addr.1.i2094, %while.cond.i2097.if.end.i.i2122_crit_edge ]
  %55 = sub i32 0, %X.addr.2.i210428102815
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp3.i72.i2114 = icmp slt i32 %53, 0
  %56 = select i1 %cmp3.i72.i2114, i32 %55, i32 %X.addr.2.i210428102815
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %56)
  %cmp.i61.i2115 = icmp slt i32 %56, 32768
  %shl.i62.i2116 = shl i32 %56, 16
  %retval.sroa.0.0.i63.i2117 = select i1 %cmp.i61.i2115, i32 %shl.i62.i2116, i32 0
  %conv.i.i2118 = sext i32 %retval.sroa.0.0.i63.i2117 to i64
  %shl.i67.i2120 = shl nsw i64 %conv.i.i2118, 16
  %call7.i.i2121 = tail call i64 @div64_s64(i64 noundef %shl.i67.i2120, i64 noundef 65536000) #5
  br label %sw.epilog

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  %ulTdpDerateDPM0 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 28
  %57 = ptrtoint ptr %ulTdpDerateDPM0 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %ulTdpDerateDPM0, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %call49 = tail call fastcc i32 @GetScaledFraction(i32 noundef %59, i32 noundef 1000)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.i.i2122, %if.then7.i2093.sw.epilog_crit_edge, %if.end.i.i2087, %if.then7.i2058.sw.epilog_crit_edge, %if.end.i.i2052, %if.then7.i2023.sw.epilog_crit_edge, %if.end.i.i2017, %if.then7.i1988.sw.epilog_crit_edge, %if.end.i.i1982, %if.then7.i1953.sw.epilog_crit_edge, %if.end.i.i1947, %if.then7.i1918.sw.epilog_crit_edge, %if.end.i.i1912, %if.then7.i.sw.epilog_crit_edge
  %fDerateTDP.sroa.0.0 = phi i32 [ %call49, %do.end ], [ 0, %if.then7.i.sw.epilog_crit_edge ], [ 0, %if.end.i.i1912 ], [ 0, %if.then7.i1918.sw.epilog_crit_edge ], [ 0, %if.end.i.i1947 ], [ 0, %if.then7.i1953.sw.epilog_crit_edge ], [ 0, %if.end.i.i1982 ], [ 0, %if.then7.i1988.sw.epilog_crit_edge ], [ 0, %if.end.i.i2017 ], [ 0, %if.then7.i2023.sw.epilog_crit_edge ], [ 0, %if.end.i.i2052 ], [ 0, %if.then7.i2058.sw.epilog_crit_edge ], [ 0, %if.end.i.i2087 ], [ 0, %if.then7.i2093.sw.epilog_crit_edge ], [ 0, %if.end.i.i2122 ]
  %sRoFuse = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 36
  %60 = ptrtoint ptr %sRoFuse to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %sRO_fuse.sroa.0.0.copyload = load i16, ptr %sRoFuse, align 1
  %sRO_fuse.sroa.5.0.sRoFuse.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 36, i32 1
  %61 = ptrtoint ptr %sRO_fuse.sroa.5.0.sRoFuse.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %61)
  %sRO_fuse.sroa.5.0.copyload = load i8, ptr %sRO_fuse.sroa.5.0.sRoFuse.sroa_idx, align 1
  %sRO_fuse.sroa.7.0.sRoFuse.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 36, i32 2
  %62 = ptrtoint ptr %sRO_fuse.sroa.7.0.sRoFuse.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %62)
  %sRO_fuse.sroa.7.0.copyload = load i8, ptr %sRO_fuse.sroa.7.0.sRoFuse.sroa_idx, align 1
  %sRO_fuse.sroa.12.0.sRoFuse.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 36, i32 4
  %63 = ptrtoint ptr %sRO_fuse.sroa.12.0.sRoFuse.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %sRO_fuse.sroa.12.0.copyload = load i32, ptr %sRO_fuse.sroa.12.0.sRoFuse.sroa_idx, align 1
  %64 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %sRO_fuse.sroa.0.0.copyload, ptr %sOutput_FuseValues, align 4
  %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx = getelementptr inbounds i8, ptr %sOutput_FuseValues, i32 2
  %65 = ptrtoint ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %sRO_fuse.sroa.5.0.copyload, ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx, align 2
  %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx = getelementptr inbounds i8, ptr %sOutput_FuseValues, i32 3
  %66 = ptrtoint ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %sRO_fuse.sroa.7.0.copyload, ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx, align 1
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %67 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mode_info, align 8
  %call52 = call i32 @amdgpu_atom_execute_table(ptr noundef %68, i32 noundef 69, ptr noundef nonnull %sOutput_FuseValues) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end55:                                         ; preds = %sw.epilog
  %69 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sOutput_FuseValues, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %72 = call i32 @llvm.bswap.i32(i32 %sRO_fuse.sroa.12.0.copyload)
  %73 = call i32 @llvm.abs.i32(i32 %72, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %73)
  %cmp5.i2125 = icmp sgt i32 %73, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %73)
  %cmp.i.i2141 = icmp slt i32 %73, 32768
  %shl.i.i2142 = shl i32 %73, 16
  %retval.sroa.0.0.i.i2143 = select i1 %cmp.i.i2141, i32 %shl.i.i2142, i32 0
  %retval.sroa.0.0.i2157 = select i1 %cmp5.i2125, i32 0, i32 %retval.sroa.0.0.i.i2143
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %71)
  %cmp.i.i2193 = icmp ult i32 %71, 32768
  %shl.i.i2194 = shl i32 %71, 16
  %retval.sroa.0.0.i.i2195 = select i1 %cmp.i.i2193, i32 %shl.i.i2194, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sRO_fuse.sroa.7.0.copyload)
  %cmp3.i.i = icmp eq i8 %sRO_fuse.sroa.7.0.copyload, 0
  br i1 %cmp3.i.i, label %if.end55.fDecodeLinearFuse.exit_crit_edge, label %if.else.i.i.preheader

if.end55.fDecodeLinearFuse.exit_crit_edge:        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDecodeLinearFuse.exit

if.else.i.i.preheader:                            ; preds = %if.end55
  %conv64 = zext i8 %sRO_fuse.sroa.7.0.copyload to i32
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.else.i.i.if.else.i.i_crit_edge, %if.else.i.i.preheader
  %power.tr5.i.i = phi i32 [ %sub.i.i, %if.else.i.i.if.else.i.i_crit_edge ], [ %conv64, %if.else.i.i.preheader ]
  %accumulator.tr4.i.i = phi i32 [ %mul.i.i, %if.else.i.i.if.else.i.i_crit_edge ], [ 1, %if.else.i.i.preheader ]
  %sub.i.i = add nsw i32 %power.tr5.i.i, -1
  %mul.i.i = shl i32 %accumulator.tr4.i.i, 1
  %cmp.i30.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.i30.i, label %uPow.exit.i, label %if.else.i.i.if.else.i.i_crit_edge

if.else.i.i.if.else.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

uPow.exit.i:                                      ; preds = %if.else.i.i
  %phi.bo.i = add i32 %mul.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %phi.bo.i)
  %cmp.i31.i = icmp ugt i32 %phi.bo.i, 32767
  br i1 %cmp.i31.i, label %uPow.exit.i.fDecodeLinearFuse.exit_crit_edge, label %if.end.i.i2199

uPow.exit.i.fDecodeLinearFuse.exit_crit_edge:     ; preds = %uPow.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDecodeLinearFuse.exit

if.end.i.i2199:                                   ; preds = %uPow.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i32.i = shl nuw nsw i32 %phi.bo.i, 16
  %conv.i.i2196 = sext i32 %retval.sroa.0.0.i.i2195 to i64
  %conv6.i.i21972874 = zext i32 %shl.i32.i to i64
  %shl.i34.i = shl nsw i64 %conv.i.i2196, 16
  %call7.i.i2198 = call i64 @div64_s64(i64 noundef %shl.i34.i, i64 noundef %conv6.i.i21972874) #5
  br label %fDecodeLinearFuse.exit

fDecodeLinearFuse.exit:                           ; preds = %if.end.i.i2199, %uPow.exit.i.fDecodeLinearFuse.exit_crit_edge, %if.end55.fDecodeLinearFuse.exit_crit_edge
  %sCACm = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 8
  %74 = ptrtoint ptr %sCACm to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %sCACm_fuse.sroa.0.0.copyload = load i16, ptr %sCACm, align 1
  %sCACm_fuse.sroa.5.0.sCACm.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 8, i32 1
  %75 = ptrtoint ptr %sCACm_fuse.sroa.5.0.sCACm.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %75)
  %sCACm_fuse.sroa.5.0.copyload = load i8, ptr %sCACm_fuse.sroa.5.0.sCACm.sroa_idx, align 1
  %sCACm_fuse.sroa.7.0.sCACm.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 8, i32 2
  %76 = ptrtoint ptr %sCACm_fuse.sroa.7.0.sCACm.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %76)
  %sCACm_fuse.sroa.7.0.copyload = load i8, ptr %sCACm_fuse.sroa.7.0.sCACm.sroa_idx, align 1
  %sCACm_fuse.sroa.10.0.sCACm.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 8, i32 3
  %77 = ptrtoint ptr %sCACm_fuse.sroa.10.0.sCACm.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %sCACm_fuse.sroa.10.0.copyload = load i32, ptr %sCACm_fuse.sroa.10.0.sCACm.sroa_idx, align 1
  %sCACm_fuse.sroa.12.0.sCACm.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 8, i32 4
  %78 = ptrtoint ptr %sCACm_fuse.sroa.12.0.sCACm.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %sCACm_fuse.sroa.12.0.copyload = load i32, ptr %sCACm_fuse.sroa.12.0.sCACm.sroa_idx, align 1
  %79 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %sCACm_fuse.sroa.0.0.copyload, ptr %sOutput_FuseValues, align 4
  %80 = ptrtoint ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %sCACm_fuse.sroa.5.0.copyload, ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx, align 2
  %81 = ptrtoint ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %sCACm_fuse.sroa.7.0.copyload, ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx, align 1
  %82 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mode_info, align 8
  %call77 = call i32 @amdgpu_atom_execute_table(ptr noundef %83, i32 noundef 69, ptr noundef nonnull %sOutput_FuseValues) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %fDecodeLinearFuse.exit.cleanup_crit_edge

fDecodeLinearFuse.exit.cleanup_crit_edge:         ; preds = %fDecodeLinearFuse.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end80:                                         ; preds = %fDecodeLinearFuse.exit
  %84 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sOutput_FuseValues, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %87 = call i32 @llvm.bswap.i32(i32 %sCACm_fuse.sroa.12.0.copyload)
  %88 = call i32 @llvm.abs.i32(i32 %87, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %88)
  %cmp5.i2200 = icmp sgt i32 %88, 32767
  br i1 %cmp5.i2200, label %if.then7.i2203, label %if.end80.if.end.i.i2232_crit_edge

if.end80.if.end.i.i2232_crit_edge:                ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2232

if.then7.i2203:                                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768000, i32 %88)
  %cmp8.i2202 = icmp ult i32 %88, 32768000
  br i1 %cmp8.i2202, label %if.then7.i2203.while.cond.i2207_crit_edge, label %if.then7.i2203.GetScaledFraction.exit2234_crit_edge

if.then7.i2203.GetScaledFraction.exit2234_crit_edge: ; preds = %if.then7.i2203
  call void @__sanitizer_cov_trace_pc() #7
  br label %GetScaledFraction.exit2234

if.then7.i2203.while.cond.i2207_crit_edge:        ; preds = %if.then7.i2203
  br label %while.cond.i2207

while.cond.i2207:                                 ; preds = %while.cond.i2207.while.cond.i2207_crit_edge, %if.then7.i2203.while.cond.i2207_crit_edge
  %X.addr.1.i2204 = phi i32 [ %shr69.i2206, %while.cond.i2207.while.cond.i2207_crit_edge ], [ %88, %if.then7.i2203.while.cond.i2207_crit_edge ]
  %cmp10.i2205 = icmp sgt i32 %X.addr.1.i2204, 32767
  %shr69.i2206 = lshr i32 %X.addr.1.i2204, 1
  br i1 %cmp10.i2205, label %while.cond.i2207.while.cond.i2207_crit_edge, label %while.cond.i2207.if.end.i.i2232_crit_edge

while.cond.i2207.if.end.i.i2232_crit_edge:        ; preds = %while.cond.i2207
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2232

while.cond.i2207.while.cond.i2207_crit_edge:      ; preds = %while.cond.i2207
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i2207

if.end.i.i2232:                                   ; preds = %while.cond.i2207.if.end.i.i2232_crit_edge, %if.end80.if.end.i.i2232_crit_edge
  %X.addr.2.i221428212826 = phi i32 [ %88, %if.end80.if.end.i.i2232_crit_edge ], [ %X.addr.1.i2204, %while.cond.i2207.if.end.i.i2232_crit_edge ]
  %89 = sub i32 0, %X.addr.2.i221428212826
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp3.i72.i2224 = icmp slt i32 %87, 0
  %90 = select i1 %cmp3.i72.i2224, i32 %89, i32 %X.addr.2.i221428212826
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %90)
  %cmp.i61.i2225 = icmp slt i32 %90, 32768
  %shl.i62.i2226 = shl i32 %90, 16
  %retval.sroa.0.0.i63.i2227 = select i1 %cmp.i61.i2225, i32 %shl.i62.i2226, i32 0
  %conv.i.i2228 = sext i32 %retval.sroa.0.0.i63.i2227 to i64
  %shl.i67.i2230 = shl nsw i64 %conv.i.i2228, 16
  %call7.i.i2231 = call i64 @div64_s64(i64 noundef %shl.i67.i2230, i64 noundef 65536000) #5
  br label %GetScaledFraction.exit2234

GetScaledFraction.exit2234:                       ; preds = %if.end.i.i2232, %if.then7.i2203.GetScaledFraction.exit2234_crit_edge
  %91 = call i32 @llvm.bswap.i32(i32 %sCACm_fuse.sroa.10.0.copyload)
  %92 = call i32 @llvm.abs.i32(i32 %91, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %92)
  %cmp5.i2235 = icmp sgt i32 %92, 32767
  br i1 %cmp5.i2235, label %if.then7.i2238, label %GetScaledFraction.exit2234.if.end.i.i2267_crit_edge

GetScaledFraction.exit2234.if.end.i.i2267_crit_edge: ; preds = %GetScaledFraction.exit2234
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2267

if.then7.i2238:                                   ; preds = %GetScaledFraction.exit2234
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768000, i32 %92)
  %cmp8.i2237 = icmp ult i32 %92, 32768000
  br i1 %cmp8.i2237, label %if.then7.i2238.while.cond.i2242_crit_edge, label %if.then7.i2238.GetScaledFraction.exit2269_crit_edge

if.then7.i2238.GetScaledFraction.exit2269_crit_edge: ; preds = %if.then7.i2238
  call void @__sanitizer_cov_trace_pc() #7
  br label %GetScaledFraction.exit2269

if.then7.i2238.while.cond.i2242_crit_edge:        ; preds = %if.then7.i2238
  br label %while.cond.i2242

while.cond.i2242:                                 ; preds = %while.cond.i2242.while.cond.i2242_crit_edge, %if.then7.i2238.while.cond.i2242_crit_edge
  %X.addr.1.i2239 = phi i32 [ %shr69.i2241, %while.cond.i2242.while.cond.i2242_crit_edge ], [ %92, %if.then7.i2238.while.cond.i2242_crit_edge ]
  %cmp10.i2240 = icmp sgt i32 %X.addr.1.i2239, 32767
  %shr69.i2241 = lshr i32 %X.addr.1.i2239, 1
  br i1 %cmp10.i2240, label %while.cond.i2242.while.cond.i2242_crit_edge, label %while.cond.i2242.if.end.i.i2267_crit_edge

while.cond.i2242.if.end.i.i2267_crit_edge:        ; preds = %while.cond.i2242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i2267

while.cond.i2242.while.cond.i2242_crit_edge:      ; preds = %while.cond.i2242
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i2242

if.end.i.i2267:                                   ; preds = %while.cond.i2242.if.end.i.i2267_crit_edge, %GetScaledFraction.exit2234.if.end.i.i2267_crit_edge
  %X.addr.2.i224928322837 = phi i32 [ %92, %GetScaledFraction.exit2234.if.end.i.i2267_crit_edge ], [ %X.addr.1.i2239, %while.cond.i2242.if.end.i.i2267_crit_edge ]
  %93 = sub i32 0, %X.addr.2.i224928322837
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp3.i72.i2259 = icmp slt i32 %91, 0
  %94 = select i1 %cmp3.i72.i2259, i32 %93, i32 %X.addr.2.i224928322837
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %94)
  %cmp.i61.i2260 = icmp slt i32 %94, 32768
  %shl.i62.i2261 = shl i32 %94, 16
  %retval.sroa.0.0.i63.i2262 = select i1 %cmp.i61.i2260, i32 %shl.i62.i2261, i32 0
  %conv.i.i2263 = sext i32 %retval.sroa.0.0.i63.i2262 to i64
  %shl.i67.i2265 = shl nsw i64 %conv.i.i2263, 16
  %call7.i.i2266 = call i64 @div64_s64(i64 noundef %shl.i67.i2265, i64 noundef 65536000) #5
  br label %GetScaledFraction.exit2269

GetScaledFraction.exit2269:                       ; preds = %if.end.i.i2267, %if.then7.i2238.GetScaledFraction.exit2269_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %86)
  %cmp.i.i2270 = icmp ult i32 %86, 32768
  %shl.i.i2271 = shl i32 %86, 16
  %retval.sroa.0.0.i.i2272 = select i1 %cmp.i.i2270, i32 %shl.i.i2271, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sCACm_fuse.sroa.7.0.copyload)
  %cmp3.i.i2273 = icmp eq i8 %sCACm_fuse.sroa.7.0.copyload, 0
  br i1 %cmp3.i.i2273, label %GetScaledFraction.exit2269.fDecodeLinearFuse.exit2289_crit_edge, label %if.else.i.i2279.preheader

GetScaledFraction.exit2269.fDecodeLinearFuse.exit2289_crit_edge: ; preds = %GetScaledFraction.exit2269
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDecodeLinearFuse.exit2289

if.else.i.i2279.preheader:                        ; preds = %GetScaledFraction.exit2269
  %conv91 = zext i8 %sCACm_fuse.sroa.7.0.copyload to i32
  br label %if.else.i.i2279

if.else.i.i2279:                                  ; preds = %if.else.i.i2279.if.else.i.i2279_crit_edge, %if.else.i.i2279.preheader
  %power.tr5.i.i2274 = phi i32 [ %sub.i.i2276, %if.else.i.i2279.if.else.i.i2279_crit_edge ], [ %conv91, %if.else.i.i2279.preheader ]
  %accumulator.tr4.i.i2275 = phi i32 [ %mul.i.i2277, %if.else.i.i2279.if.else.i.i2279_crit_edge ], [ 1, %if.else.i.i2279.preheader ]
  %sub.i.i2276 = add nsw i32 %power.tr5.i.i2274, -1
  %mul.i.i2277 = shl i32 %accumulator.tr4.i.i2275, 1
  %cmp.i30.i2278 = icmp eq i32 %sub.i.i2276, 0
  br i1 %cmp.i30.i2278, label %uPow.exit.i2282, label %if.else.i.i2279.if.else.i.i2279_crit_edge

if.else.i.i2279.if.else.i.i2279_crit_edge:        ; preds = %if.else.i.i2279
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i2279

uPow.exit.i2282:                                  ; preds = %if.else.i.i2279
  %phi.bo.i2280 = add i32 %mul.i.i2277, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %phi.bo.i2280)
  %cmp.i31.i2281 = icmp ugt i32 %phi.bo.i2280, 32767
  br i1 %cmp.i31.i2281, label %uPow.exit.i2282.fDecodeLinearFuse.exit2289_crit_edge, label %if.end.i.i2288

uPow.exit.i2282.fDecodeLinearFuse.exit2289_crit_edge: ; preds = %uPow.exit.i2282
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDecodeLinearFuse.exit2289

if.end.i.i2288:                                   ; preds = %uPow.exit.i2282
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i32.i2283 = shl nuw nsw i32 %phi.bo.i2280, 16
  %conv.i.i2284 = sext i32 %retval.sroa.0.0.i.i2272 to i64
  %conv6.i.i22852873 = zext i32 %shl.i32.i2283 to i64
  %shl.i34.i2286 = shl nsw i64 %conv.i.i2284, 16
  %call7.i.i2287 = call i64 @div64_s64(i64 noundef %shl.i34.i2286, i64 noundef %conv6.i.i22852873) #5
  br label %fDecodeLinearFuse.exit2289

fDecodeLinearFuse.exit2289:                       ; preds = %if.end.i.i2288, %uPow.exit.i2282.fDecodeLinearFuse.exit2289_crit_edge, %GetScaledFraction.exit2269.fDecodeLinearFuse.exit2289_crit_edge
  %sCACb = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 9
  %95 = ptrtoint ptr %sCACb to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %sCACb_fuse.sroa.0.0.copyload = load i16, ptr %sCACb, align 1
  %sCACb_fuse.sroa.5.0.sCACb.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 9, i32 1
  %96 = ptrtoint ptr %sCACb_fuse.sroa.5.0.sCACb.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %96)
  %sCACb_fuse.sroa.5.0.copyload = load i8, ptr %sCACb_fuse.sroa.5.0.sCACb.sroa_idx, align 1
  %sCACb_fuse.sroa.7.0.sCACb.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 9, i32 2
  %97 = ptrtoint ptr %sCACb_fuse.sroa.7.0.sCACb.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %97)
  %sCACb_fuse.sroa.7.0.copyload = load i8, ptr %sCACb_fuse.sroa.7.0.sCACb.sroa_idx, align 1
  %sCACb_fuse.sroa.10.0.sCACb.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 9, i32 3
  %98 = ptrtoint ptr %sCACb_fuse.sroa.10.0.sCACb.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %sCACb_fuse.sroa.10.0.copyload = load i32, ptr %sCACb_fuse.sroa.10.0.sCACb.sroa_idx, align 1
  %sCACb_fuse.sroa.12.0.sCACb.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 9, i32 4
  %99 = ptrtoint ptr %sCACb_fuse.sroa.12.0.sCACb.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %sCACb_fuse.sroa.12.0.copyload = load i32, ptr %sCACb_fuse.sroa.12.0.sCACb.sroa_idx, align 1
  %100 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %sCACb_fuse.sroa.0.0.copyload, ptr %sOutput_FuseValues, align 4
  %101 = ptrtoint ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %sCACb_fuse.sroa.5.0.copyload, ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx, align 2
  %102 = ptrtoint ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %sCACb_fuse.sroa.7.0.copyload, ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx, align 1
  %103 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mode_info, align 8
  %call104 = call i32 @amdgpu_atom_execute_table(ptr noundef %104, i32 noundef 69, ptr noundef nonnull %sOutput_FuseValues) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %fDecodeLinearFuse.exit2289.cleanup_crit_edge

fDecodeLinearFuse.exit2289.cleanup_crit_edge:     ; preds = %fDecodeLinearFuse.exit2289
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end107:                                        ; preds = %fDecodeLinearFuse.exit2289
  %105 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sOutput_FuseValues, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %108 = call i32 @llvm.bswap.i32(i32 %sCACb_fuse.sroa.12.0.copyload)
  %call110 = call fastcc i32 @GetScaledFraction(i32 noundef %108, i32 noundef 1000)
  %109 = call i32 @llvm.bswap.i32(i32 %sCACb_fuse.sroa.10.0.copyload)
  %call114 = call fastcc i32 @GetScaledFraction(i32 noundef %109, i32 noundef 1000)
  %conv118 = zext i8 %sCACb_fuse.sroa.7.0.copyload to i32
  %.fca.0.insert1273 = insertvalue [1 x i32] poison, i32 %call110, 0
  %.fca.0.insert1235 = insertvalue [1 x i32] poison, i32 %call114, 0
  %call121 = call fastcc i32 @fDecodeLinearFuse(i32 noundef %107, [1 x i32] %.fca.0.insert1273, [1 x i32] %.fca.0.insert1235, i32 noundef %conv118)
  %sKt_b = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 10
  %110 = ptrtoint ptr %sKt_b to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %sKt_Beta_fuse.sroa.0.0.copyload = load i16, ptr %sKt_b, align 1
  %sKt_Beta_fuse.sroa.5.0.sKt_b.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 10, i32 1
  %111 = ptrtoint ptr %sKt_Beta_fuse.sroa.5.0.sKt_b.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %111)
  %sKt_Beta_fuse.sroa.5.0.copyload = load i8, ptr %sKt_Beta_fuse.sroa.5.0.sKt_b.sroa_idx, align 1
  %sKt_Beta_fuse.sroa.7.0.sKt_b.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 10, i32 2
  %112 = ptrtoint ptr %sKt_Beta_fuse.sroa.7.0.sKt_b.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %112)
  %sKt_Beta_fuse.sroa.7.0.copyload = load i8, ptr %sKt_Beta_fuse.sroa.7.0.sKt_b.sroa_idx, align 1
  %sKt_Beta_fuse.sroa.10.0.sKt_b.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 10, i32 3
  %113 = ptrtoint ptr %sKt_Beta_fuse.sroa.10.0.sKt_b.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %sKt_Beta_fuse.sroa.10.0.copyload = load i32, ptr %sKt_Beta_fuse.sroa.10.0.sKt_b.sroa_idx, align 1
  %sKt_Beta_fuse.sroa.12.0.sKt_b.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 10, i32 4
  %114 = ptrtoint ptr %sKt_Beta_fuse.sroa.12.0.sKt_b.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %sKt_Beta_fuse.sroa.12.0.copyload = load i32, ptr %sKt_Beta_fuse.sroa.12.0.sKt_b.sroa_idx, align 1
  %115 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %sKt_Beta_fuse.sroa.0.0.copyload, ptr %sOutput_FuseValues, align 4
  %116 = ptrtoint ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %sKt_Beta_fuse.sroa.5.0.copyload, ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx, align 2
  %117 = ptrtoint ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %sKt_Beta_fuse.sroa.7.0.copyload, ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx, align 1
  %118 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mode_info, align 8
  %call131 = call i32 @amdgpu_atom_execute_table(ptr noundef %119, i32 noundef 69, ptr noundef nonnull %sOutput_FuseValues) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end134:                                        ; preds = %if.end107
  %120 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sOutput_FuseValues, align 4
  %122 = call i32 @llvm.bswap.i32(i32 %121)
  %123 = call i32 @llvm.bswap.i32(i32 %sKt_Beta_fuse.sroa.12.0.copyload)
  %call136 = call fastcc i32 @GetScaledFraction(i32 noundef %123, i32 noundef 1000)
  %124 = call i32 @llvm.bswap.i32(i32 %sKt_Beta_fuse.sroa.10.0.copyload)
  %call140 = call fastcc i32 @GetScaledFraction(i32 noundef %124, i32 noundef 1000)
  %conv144 = zext i8 %sKt_Beta_fuse.sroa.7.0.copyload to i32
  %.fca.0.insert1256 = insertvalue [1 x i32] poison, i32 %call136, 0
  %.fca.0.insert1238 = insertvalue [1 x i32] poison, i32 %call140, 0
  %call147 = call fastcc i32 @fDecodeLogisticFuse(i32 noundef %122, [1 x i32] %.fca.0.insert1256, [1 x i32] %.fca.0.insert1238, i32 noundef %conv144)
  %sKv_m = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 11
  %125 = ptrtoint ptr %sKv_m to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %sKv_m_fuse.sroa.0.0.copyload = load i16, ptr %sKv_m, align 1
  %sKv_m_fuse.sroa.5.0.sKv_m.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 11, i32 1
  %126 = ptrtoint ptr %sKv_m_fuse.sroa.5.0.sKv_m.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %126)
  %sKv_m_fuse.sroa.5.0.copyload = load i8, ptr %sKv_m_fuse.sroa.5.0.sKv_m.sroa_idx, align 1
  %sKv_m_fuse.sroa.7.0.sKv_m.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 11, i32 2
  %127 = ptrtoint ptr %sKv_m_fuse.sroa.7.0.sKv_m.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %127)
  %sKv_m_fuse.sroa.7.0.copyload = load i8, ptr %sKv_m_fuse.sroa.7.0.sKv_m.sroa_idx, align 1
  %sKv_m_fuse.sroa.10.0.sKv_m.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 11, i32 3
  %128 = ptrtoint ptr %sKv_m_fuse.sroa.10.0.sKv_m.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %sKv_m_fuse.sroa.10.0.copyload = load i32, ptr %sKv_m_fuse.sroa.10.0.sKv_m.sroa_idx, align 1
  %sKv_m_fuse.sroa.12.0.sKv_m.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 11, i32 4
  %129 = ptrtoint ptr %sKv_m_fuse.sroa.12.0.sKv_m.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %sKv_m_fuse.sroa.12.0.copyload = load i32, ptr %sKv_m_fuse.sroa.12.0.sKv_m.sroa_idx, align 1
  %130 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %sKv_m_fuse.sroa.0.0.copyload, ptr %sOutput_FuseValues, align 4
  %131 = ptrtoint ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %sKv_m_fuse.sroa.5.0.copyload, ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx, align 2
  %132 = ptrtoint ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %sKv_m_fuse.sroa.7.0.copyload, ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx, align 1
  %133 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mode_info, align 8
  %call157 = call i32 @amdgpu_atom_execute_table(ptr noundef %134, i32 noundef 69, ptr noundef nonnull %sOutput_FuseValues) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %if.end134.cleanup_crit_edge

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end160:                                        ; preds = %if.end134
  %135 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sOutput_FuseValues, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %136)
  %138 = call i32 @llvm.bswap.i32(i32 %sKv_m_fuse.sroa.12.0.copyload)
  %call163 = call fastcc i32 @GetScaledFraction(i32 noundef %138, i32 noundef 1000)
  %139 = and i32 %sKv_m_fuse.sroa.10.0.copyload, -129
  %140 = call i32 @llvm.bswap.i32(i32 %139)
  %call167 = call fastcc i32 @GetScaledFraction(i32 noundef %140, i32 noundef 1000)
  %conv.i = sext i32 %call167 to i64
  %mul.i = mul i64 %conv.i, 281474976645120
  %141 = lshr exact i64 %mul.i, 16
  %conv3.i = trunc i64 %141 to i32
  %conv178 = zext i8 %sKv_m_fuse.sroa.7.0.copyload to i32
  %.fca.0.insert1259 = insertvalue [1 x i32] poison, i32 %call163, 0
  %.fca.0.insert1244 = insertvalue [1 x i32] poison, i32 %conv3.i, 0
  %call181 = call fastcc i32 @fDecodeLogisticFuse(i32 noundef %137, [1 x i32] %.fca.0.insert1259, [1 x i32] %.fca.0.insert1244, i32 noundef %conv178)
  %sKv_b = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 12
  %142 = ptrtoint ptr %sKv_b to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %sKv_b_fuse.sroa.0.0.copyload = load i16, ptr %sKv_b, align 1
  %sKv_b_fuse.sroa.5.0.sKv_b.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 12, i32 1
  %143 = ptrtoint ptr %sKv_b_fuse.sroa.5.0.sKv_b.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %143)
  %sKv_b_fuse.sroa.5.0.copyload = load i8, ptr %sKv_b_fuse.sroa.5.0.sKv_b.sroa_idx, align 1
  %sKv_b_fuse.sroa.7.0.sKv_b.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 12, i32 2
  %144 = ptrtoint ptr %sKv_b_fuse.sroa.7.0.sKv_b.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %144)
  %sKv_b_fuse.sroa.7.0.copyload = load i8, ptr %sKv_b_fuse.sroa.7.0.sKv_b.sroa_idx, align 1
  %sKv_b_fuse.sroa.10.0.sKv_b.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 12, i32 3
  %145 = ptrtoint ptr %sKv_b_fuse.sroa.10.0.sKv_b.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %sKv_b_fuse.sroa.10.0.copyload = load i32, ptr %sKv_b_fuse.sroa.10.0.sKv_b.sroa_idx, align 1
  %sKv_b_fuse.sroa.12.0.sKv_b.sroa_idx = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 12, i32 4
  %146 = ptrtoint ptr %sKv_b_fuse.sroa.12.0.sKv_b.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %sKv_b_fuse.sroa.12.0.copyload = load i32, ptr %sKv_b_fuse.sroa.12.0.sKv_b.sroa_idx, align 1
  %147 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %sKv_b_fuse.sroa.0.0.copyload, ptr %sOutput_FuseValues, align 4
  %148 = ptrtoint ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %sKv_b_fuse.sroa.5.0.copyload, ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx, align 2
  %149 = ptrtoint ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %sKv_b_fuse.sroa.7.0.copyload, ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx, align 1
  %150 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mode_info, align 8
  %call191 = call i32 @amdgpu_atom_execute_table(ptr noundef %151, i32 noundef 69, ptr noundef nonnull %sOutput_FuseValues) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end194, label %if.end160.cleanup_crit_edge

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end194:                                        ; preds = %if.end160
  %152 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sOutput_FuseValues, align 4
  %154 = call i32 @llvm.bswap.i32(i32 %153)
  %155 = call i32 @llvm.bswap.i32(i32 %sKv_b_fuse.sroa.12.0.copyload)
  %call197 = call fastcc i32 @GetScaledFraction(i32 noundef %155, i32 noundef 1000)
  %156 = call i32 @llvm.bswap.i32(i32 %sKv_b_fuse.sroa.10.0.copyload)
  %call201 = call fastcc i32 @GetScaledFraction(i32 noundef %156, i32 noundef 1000)
  %conv205 = zext i8 %sKv_b_fuse.sroa.7.0.copyload to i32
  %.fca.0.insert1262 = insertvalue [1 x i32] poison, i32 %call197, 0
  %.fca.0.insert1247 = insertvalue [1 x i32] poison, i32 %call201, 0
  %call208 = call fastcc i32 @fDecodeLogisticFuse(i32 noundef %154, [1 x i32] %.fca.0.insert1262, [1 x i32] %.fca.0.insert1247, i32 noundef %conv205)
  %usLkgEuseIndex = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 13
  %157 = ptrtoint ptr %usLkgEuseIndex to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %usLkgEuseIndex, align 1
  %ucLkgEfuseBitLSB = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 14
  %159 = ptrtoint ptr %ucLkgEfuseBitLSB to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %ucLkgEfuseBitLSB, align 1
  %ucLkgEfuseLength = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 15
  %161 = ptrtoint ptr %ucLkgEfuseLength to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %ucLkgEfuseLength, align 1
  %163 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %158, ptr %sOutput_FuseValues, align 4
  %164 = ptrtoint ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %160, ptr %sInput_FuseValues.sroa.17.0.sOutput_FuseValues.sroa_idx, align 2
  %165 = ptrtoint ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %162, ptr %sInput_FuseValues.sroa.25.0.sOutput_FuseValues.sroa_idx, align 1
  %166 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mode_info, align 8
  %call215 = call i32 @amdgpu_atom_execute_table(ptr noundef %167, i32 noundef 69, ptr noundef nonnull %sOutput_FuseValues) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end218, label %if.end194.cleanup_crit_edge

if.end194.cleanup_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end218:                                        ; preds = %if.end194
  %168 = ptrtoint ptr %sOutput_FuseValues to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %sOutput_FuseValues, align 4
  %170 = call i32 @llvm.bswap.i32(i32 %169)
  %ulLkgEncodeLn_MaxDivMin = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 16
  %171 = ptrtoint ptr %ulLkgEncodeLn_MaxDivMin to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %ulLkgEncodeLn_MaxDivMin, align 1
  %173 = call i32 @llvm.bswap.i32(i32 %172)
  %call220 = call fastcc i32 @GetScaledFraction(i32 noundef %173, i32 noundef 10000)
  %ulLkgEncodeMin = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 18
  %174 = ptrtoint ptr %ulLkgEncodeMin to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %ulLkgEncodeMin, align 1
  %176 = call i32 @llvm.bswap.i32(i32 %175)
  %call223 = call fastcc i32 @GetScaledFraction(i32 noundef %176, i32 noundef 10000)
  %177 = ptrtoint ptr %ucLkgEfuseLength to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %ucLkgEfuseLength, align 1
  %conv227 = zext i8 %178 to i32
  %.fca.0.insert1282 = insertvalue [1 x i32] poison, i32 %call220, 0
  %.fca.0.insert1276 = insertvalue [1 x i32] poison, i32 %call223, 0
  %call230 = call fastcc i32 @fDecodeLeakageID(i32 noundef %170, [1 x i32] %.fca.0.insert1282, [1 x i32] %.fca.0.insert1276, i32 noundef %conv227)
  %ulSM_A0 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 41
  %179 = ptrtoint ptr %ulSM_A0 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %ulSM_A0, align 1
  %181 = call i32 @llvm.bswap.i32(i32 %180)
  %call234 = call fastcc i32 @GetScaledFraction(i32 noundef %181, i32 noundef 1000000)
  %ucSM_A0_sign = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 49
  %182 = ptrtoint ptr %ucSM_A0_sign to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %ucSM_A0_sign, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %cmp3.i = icmp eq i8 %183, 0
  br i1 %cmp3.i, label %if.end218.uPow.exit.thread_crit_edge, label %if.else.i.preheader

if.end218.uPow.exit.thread_crit_edge:             ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #7
  br label %uPow.exit.thread

if.else.i.preheader:                              ; preds = %if.end218
  %conv237 = zext i8 %183 to i32
  br label %if.else.i

if.else.i:                                        ; preds = %if.else.i.if.else.i_crit_edge, %if.else.i.preheader
  %power.tr5.i = phi i32 [ %sub.i, %if.else.i.if.else.i_crit_edge ], [ %conv237, %if.else.i.preheader ]
  %accumulator.tr4.i.neg = phi i32 [ %accumulator.tr4.i, %if.else.i.if.else.i_crit_edge ], [ -1, %if.else.i.preheader ]
  %accumulator.tr4.i = phi i32 [ %accumulator.tr4.i.neg, %if.else.i.if.else.i_crit_edge ], [ 1, %if.else.i.preheader ]
  %sub.i = add nsw i32 %power.tr5.i, -1
  %cmp.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.i, label %uPow.exit, label %if.else.i.if.else.i_crit_edge

if.else.i.if.else.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

uPow.exit:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i2292 = shl i32 %accumulator.tr4.i.neg, 16
  br label %uPow.exit.thread

uPow.exit.thread:                                 ; preds = %uPow.exit, %if.end218.uPow.exit.thread_crit_edge
  %shl.i22922842 = phi i32 [ %shl.i2292, %uPow.exit ], [ 65536, %if.end218.uPow.exit.thread_crit_edge ]
  %conv.i2294 = sext i32 %call234 to i64
  %conv2.i = sext i32 %shl.i22922842 to i64
  %ulSM_A1 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 42
  %184 = ptrtoint ptr %ulSM_A1 to i32
  call void @__asan_loadN_noabort(i32 %184, i32 4)
  %185 = load i32, ptr %ulSM_A1, align 1
  %186 = call i32 @llvm.bswap.i32(i32 %185)
  %call247 = call fastcc i32 @GetScaledFraction(i32 noundef %186, i32 noundef 1000000)
  %ucSM_A1_sign = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 50
  %187 = ptrtoint ptr %ucSM_A1_sign to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %ucSM_A1_sign, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %cmp3.i2297 = icmp eq i8 %188, 0
  br i1 %cmp3.i2297, label %uPow.exit.thread.uPow.exit2305.thread_crit_edge, label %if.else.i2303.preheader

uPow.exit.thread.uPow.exit2305.thread_crit_edge:  ; preds = %uPow.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %uPow.exit2305.thread

if.else.i2303.preheader:                          ; preds = %uPow.exit.thread
  %conv250 = zext i8 %188 to i32
  br label %if.else.i2303

if.else.i2303:                                    ; preds = %if.else.i2303.if.else.i2303_crit_edge, %if.else.i2303.preheader
  %power.tr5.i2298 = phi i32 [ %sub.i2300, %if.else.i2303.if.else.i2303_crit_edge ], [ %conv250, %if.else.i2303.preheader ]
  %accumulator.tr4.i2299.neg = phi i32 [ %accumulator.tr4.i2299, %if.else.i2303.if.else.i2303_crit_edge ], [ -1, %if.else.i2303.preheader ]
  %accumulator.tr4.i2299 = phi i32 [ %accumulator.tr4.i2299.neg, %if.else.i2303.if.else.i2303_crit_edge ], [ 1, %if.else.i2303.preheader ]
  %sub.i2300 = add nsw i32 %power.tr5.i2298, -1
  %cmp.i2302 = icmp eq i32 %sub.i2300, 0
  br i1 %cmp.i2302, label %uPow.exit2305, label %if.else.i2303.if.else.i2303_crit_edge

if.else.i2303.if.else.i2303_crit_edge:            ; preds = %if.else.i2303
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i2303

uPow.exit2305:                                    ; preds = %if.else.i2303
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i2307 = shl i32 %accumulator.tr4.i2299.neg, 16
  br label %uPow.exit2305.thread

uPow.exit2305.thread:                             ; preds = %uPow.exit2305, %uPow.exit.thread.uPow.exit2305.thread_crit_edge
  %shl.i23072846 = phi i32 [ %shl.i2307, %uPow.exit2305 ], [ 65536, %uPow.exit.thread.uPow.exit2305.thread_crit_edge ]
  %conv.i2309 = sext i32 %call247 to i64
  %conv2.i2310 = sext i32 %shl.i23072846 to i64
  %mul.i2311 = mul nsw i64 %conv2.i2310, %conv.i2309
  %189 = lshr exact i64 %mul.i2311, 16
  %conv3.i2312 = trunc i64 %189 to i32
  %ulSM_A2 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 43
  %190 = ptrtoint ptr %ulSM_A2 to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %191 = load i32, ptr %ulSM_A2, align 1
  %192 = call i32 @llvm.bswap.i32(i32 %191)
  %call260 = call fastcc i32 @GetScaledFraction(i32 noundef %192, i32 noundef 100000)
  %ucSM_A2_sign = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 51
  %193 = ptrtoint ptr %ucSM_A2_sign to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %ucSM_A2_sign, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp3.i2313 = icmp eq i8 %194, 0
  br i1 %cmp3.i2313, label %uPow.exit2305.thread.uPow.exit2321.thread_crit_edge, label %if.else.i2319.preheader

uPow.exit2305.thread.uPow.exit2321.thread_crit_edge: ; preds = %uPow.exit2305.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %uPow.exit2321.thread

if.else.i2319.preheader:                          ; preds = %uPow.exit2305.thread
  %conv263 = zext i8 %194 to i32
  br label %if.else.i2319

if.else.i2319:                                    ; preds = %if.else.i2319.if.else.i2319_crit_edge, %if.else.i2319.preheader
  %power.tr5.i2314 = phi i32 [ %sub.i2316, %if.else.i2319.if.else.i2319_crit_edge ], [ %conv263, %if.else.i2319.preheader ]
  %accumulator.tr4.i2315.neg = phi i32 [ %accumulator.tr4.i2315, %if.else.i2319.if.else.i2319_crit_edge ], [ -1, %if.else.i2319.preheader ]
  %accumulator.tr4.i2315 = phi i32 [ %accumulator.tr4.i2315.neg, %if.else.i2319.if.else.i2319_crit_edge ], [ 1, %if.else.i2319.preheader ]
  %sub.i2316 = add nsw i32 %power.tr5.i2314, -1
  %cmp.i2318 = icmp eq i32 %sub.i2316, 0
  br i1 %cmp.i2318, label %uPow.exit2321, label %if.else.i2319.if.else.i2319_crit_edge

if.else.i2319.if.else.i2319_crit_edge:            ; preds = %if.else.i2319
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i2319

uPow.exit2321:                                    ; preds = %if.else.i2319
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i2323 = shl i32 %accumulator.tr4.i2315.neg, 16
  br label %uPow.exit2321.thread

uPow.exit2321.thread:                             ; preds = %uPow.exit2321, %uPow.exit2305.thread.uPow.exit2321.thread_crit_edge
  %shl.i23232850 = phi i32 [ %shl.i2323, %uPow.exit2321 ], [ 65536, %uPow.exit2305.thread.uPow.exit2321.thread_crit_edge ]
  %conv.i2325 = sext i32 %call260 to i64
  %conv2.i2326 = sext i32 %shl.i23232850 to i64
  %mul.i2327 = mul nsw i64 %conv2.i2326, %conv.i2325
  %195 = lshr exact i64 %mul.i2327, 16
  %conv3.i2328 = trunc i64 %195 to i32
  %ulSM_A3 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 44
  %196 = ptrtoint ptr %ulSM_A3 to i32
  call void @__asan_loadN_noabort(i32 %196, i32 4)
  %197 = load i32, ptr %ulSM_A3, align 1
  %198 = call i32 @llvm.bswap.i32(i32 %197)
  %call273 = call fastcc i32 @GetScaledFraction(i32 noundef %198, i32 noundef 1000000)
  %ucSM_A3_sign = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 52
  %199 = ptrtoint ptr %ucSM_A3_sign to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %ucSM_A3_sign, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %cmp3.i2329 = icmp eq i8 %200, 0
  br i1 %cmp3.i2329, label %uPow.exit2321.thread.uPow.exit2337.thread_crit_edge, label %if.else.i2335.preheader

uPow.exit2321.thread.uPow.exit2337.thread_crit_edge: ; preds = %uPow.exit2321.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %uPow.exit2337.thread

if.else.i2335.preheader:                          ; preds = %uPow.exit2321.thread
  %conv276 = zext i8 %200 to i32
  br label %if.else.i2335

if.else.i2335:                                    ; preds = %if.else.i2335.if.else.i2335_crit_edge, %if.else.i2335.preheader
  %power.tr5.i2330 = phi i32 [ %sub.i2332, %if.else.i2335.if.else.i2335_crit_edge ], [ %conv276, %if.else.i2335.preheader ]
  %accumulator.tr4.i2331.neg = phi i32 [ %accumulator.tr4.i2331, %if.else.i2335.if.else.i2335_crit_edge ], [ -1, %if.else.i2335.preheader ]
  %accumulator.tr4.i2331 = phi i32 [ %accumulator.tr4.i2331.neg, %if.else.i2335.if.else.i2335_crit_edge ], [ 1, %if.else.i2335.preheader ]
  %sub.i2332 = add nsw i32 %power.tr5.i2330, -1
  %cmp.i2334 = icmp eq i32 %sub.i2332, 0
  br i1 %cmp.i2334, label %uPow.exit2337, label %if.else.i2335.if.else.i2335_crit_edge

if.else.i2335.if.else.i2335_crit_edge:            ; preds = %if.else.i2335
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i2335

uPow.exit2337:                                    ; preds = %if.else.i2335
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i2339 = shl i32 %accumulator.tr4.i2331.neg, 16
  br label %uPow.exit2337.thread

uPow.exit2337.thread:                             ; preds = %uPow.exit2337, %uPow.exit2321.thread.uPow.exit2337.thread_crit_edge
  %shl.i23392854 = phi i32 [ %shl.i2339, %uPow.exit2337 ], [ 65536, %uPow.exit2321.thread.uPow.exit2337.thread_crit_edge ]
  %conv.i2341 = sext i32 %call273 to i64
  %conv2.i2342 = sext i32 %shl.i23392854 to i64
  %mul.i2343 = mul nsw i64 %conv2.i2342, %conv.i2341
  %201 = lshr exact i64 %mul.i2343, 16
  %conv3.i2344 = trunc i64 %201 to i32
  %ulSM_A4 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 45
  %202 = ptrtoint ptr %ulSM_A4 to i32
  call void @__asan_loadN_noabort(i32 %202, i32 4)
  %203 = load i32, ptr %ulSM_A4, align 1
  %204 = call i32 @llvm.bswap.i32(i32 %203)
  %call286 = call fastcc i32 @GetScaledFraction(i32 noundef %204, i32 noundef 1000000)
  %ucSM_A4_sign = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 53
  %205 = ptrtoint ptr %ucSM_A4_sign to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %ucSM_A4_sign, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %cmp3.i2345 = icmp eq i8 %206, 0
  br i1 %cmp3.i2345, label %uPow.exit2337.thread.uPow.exit2353.thread_crit_edge, label %if.else.i2351.preheader

uPow.exit2337.thread.uPow.exit2353.thread_crit_edge: ; preds = %uPow.exit2337.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %uPow.exit2353.thread

if.else.i2351.preheader:                          ; preds = %uPow.exit2337.thread
  %conv289 = zext i8 %206 to i32
  br label %if.else.i2351

if.else.i2351:                                    ; preds = %if.else.i2351.if.else.i2351_crit_edge, %if.else.i2351.preheader
  %power.tr5.i2346 = phi i32 [ %sub.i2348, %if.else.i2351.if.else.i2351_crit_edge ], [ %conv289, %if.else.i2351.preheader ]
  %accumulator.tr4.i2347.neg = phi i32 [ %accumulator.tr4.i2347, %if.else.i2351.if.else.i2351_crit_edge ], [ -1, %if.else.i2351.preheader ]
  %accumulator.tr4.i2347 = phi i32 [ %accumulator.tr4.i2347.neg, %if.else.i2351.if.else.i2351_crit_edge ], [ 1, %if.else.i2351.preheader ]
  %sub.i2348 = add nsw i32 %power.tr5.i2346, -1
  %cmp.i2350 = icmp eq i32 %sub.i2348, 0
  br i1 %cmp.i2350, label %uPow.exit2353, label %if.else.i2351.if.else.i2351_crit_edge

if.else.i2351.if.else.i2351_crit_edge:            ; preds = %if.else.i2351
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i2351

uPow.exit2353:                                    ; preds = %if.else.i2351
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i2355 = shl i32 %accumulator.tr4.i2347.neg, 16
  br label %uPow.exit2353.thread

uPow.exit2353.thread:                             ; preds = %uPow.exit2353, %uPow.exit2337.thread.uPow.exit2353.thread_crit_edge
  %shl.i23552858 = phi i32 [ %shl.i2355, %uPow.exit2353 ], [ 65536, %uPow.exit2337.thread.uPow.exit2353.thread_crit_edge ]
  %conv.i2357 = sext i32 %call286 to i64
  %conv2.i2358 = sext i32 %shl.i23552858 to i64
  %ulSM_A5 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 46
  %207 = ptrtoint ptr %ulSM_A5 to i32
  call void @__asan_loadN_noabort(i32 %207, i32 4)
  %208 = load i32, ptr %ulSM_A5, align 1
  %209 = call i32 @llvm.bswap.i32(i32 %208)
  %call299 = call fastcc i32 @GetScaledFraction(i32 noundef %209, i32 noundef 1000)
  %ucSM_A5_sign = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 54
  %210 = ptrtoint ptr %ucSM_A5_sign to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %ucSM_A5_sign, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %cmp3.i2361 = icmp eq i8 %211, 0
  br i1 %cmp3.i2361, label %uPow.exit2353.thread.uPow.exit2369.thread_crit_edge, label %if.else.i2367.preheader

uPow.exit2353.thread.uPow.exit2369.thread_crit_edge: ; preds = %uPow.exit2353.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %uPow.exit2369.thread

if.else.i2367.preheader:                          ; preds = %uPow.exit2353.thread
  %conv302 = zext i8 %211 to i32
  br label %if.else.i2367

if.else.i2367:                                    ; preds = %if.else.i2367.if.else.i2367_crit_edge, %if.else.i2367.preheader
  %power.tr5.i2362 = phi i32 [ %sub.i2364, %if.else.i2367.if.else.i2367_crit_edge ], [ %conv302, %if.else.i2367.preheader ]
  %accumulator.tr4.i2363.neg = phi i32 [ %accumulator.tr4.i2363, %if.else.i2367.if.else.i2367_crit_edge ], [ -1, %if.else.i2367.preheader ]
  %accumulator.tr4.i2363 = phi i32 [ %accumulator.tr4.i2363.neg, %if.else.i2367.if.else.i2367_crit_edge ], [ 1, %if.else.i2367.preheader ]
  %sub.i2364 = add nsw i32 %power.tr5.i2362, -1
  %cmp.i2366 = icmp eq i32 %sub.i2364, 0
  br i1 %cmp.i2366, label %uPow.exit2369, label %if.else.i2367.if.else.i2367_crit_edge

if.else.i2367.if.else.i2367_crit_edge:            ; preds = %if.else.i2367
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i2367

uPow.exit2369:                                    ; preds = %if.else.i2367
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i2371 = shl i32 %accumulator.tr4.i2363.neg, 16
  br label %uPow.exit2369.thread

uPow.exit2369.thread:                             ; preds = %uPow.exit2369, %uPow.exit2353.thread.uPow.exit2369.thread_crit_edge
  %shl.i23712862 = phi i32 [ %shl.i2371, %uPow.exit2369 ], [ 65536, %uPow.exit2353.thread.uPow.exit2369.thread_crit_edge ]
  %conv.i2373 = sext i32 %call299 to i64
  %conv2.i2374 = sext i32 %shl.i23712862 to i64
  %mul.i2375 = mul nsw i64 %conv2.i2374, %conv.i2373
  %212 = lshr exact i64 %mul.i2375, 16
  %conv3.i2376 = trunc i64 %212 to i32
  %ulSM_A6 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 47
  %213 = ptrtoint ptr %ulSM_A6 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %ulSM_A6, align 1
  %215 = call i32 @llvm.bswap.i32(i32 %214)
  %call312 = call fastcc i32 @GetScaledFraction(i32 noundef %215, i32 noundef 1000)
  %ucSM_A6_sign = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 55
  %216 = ptrtoint ptr %ucSM_A6_sign to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %ucSM_A6_sign, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %cmp3.i2377 = icmp eq i8 %217, 0
  br i1 %cmp3.i2377, label %uPow.exit2369.thread.uPow.exit2385.thread_crit_edge, label %if.else.i2383.preheader

uPow.exit2369.thread.uPow.exit2385.thread_crit_edge: ; preds = %uPow.exit2369.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %uPow.exit2385.thread

if.else.i2383.preheader:                          ; preds = %uPow.exit2369.thread
  %conv315 = zext i8 %217 to i32
  br label %if.else.i2383

if.else.i2383:                                    ; preds = %if.else.i2383.if.else.i2383_crit_edge, %if.else.i2383.preheader
  %power.tr5.i2378 = phi i32 [ %sub.i2380, %if.else.i2383.if.else.i2383_crit_edge ], [ %conv315, %if.else.i2383.preheader ]
  %accumulator.tr4.i2379.neg = phi i32 [ %accumulator.tr4.i2379, %if.else.i2383.if.else.i2383_crit_edge ], [ -1, %if.else.i2383.preheader ]
  %accumulator.tr4.i2379 = phi i32 [ %accumulator.tr4.i2379.neg, %if.else.i2383.if.else.i2383_crit_edge ], [ 1, %if.else.i2383.preheader ]
  %sub.i2380 = add nsw i32 %power.tr5.i2378, -1
  %cmp.i2382 = icmp eq i32 %sub.i2380, 0
  br i1 %cmp.i2382, label %uPow.exit2385, label %if.else.i2383.if.else.i2383_crit_edge

if.else.i2383.if.else.i2383_crit_edge:            ; preds = %if.else.i2383
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i2383

uPow.exit2385:                                    ; preds = %if.else.i2383
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i2387 = shl i32 %accumulator.tr4.i2379.neg, 16
  br label %uPow.exit2385.thread

uPow.exit2385.thread:                             ; preds = %uPow.exit2385, %uPow.exit2369.thread.uPow.exit2385.thread_crit_edge
  %shl.i23872866 = phi i32 [ %shl.i2387, %uPow.exit2385 ], [ 65536, %uPow.exit2369.thread.uPow.exit2385.thread_crit_edge ]
  %conv.i2389 = sext i32 %call312 to i64
  %conv2.i2390 = sext i32 %shl.i23872866 to i64
  %mul.i2391 = mul nsw i64 %conv2.i2390, %conv.i2389
  %218 = lshr exact i64 %mul.i2391, 16
  %conv3.i2392 = trunc i64 %218 to i32
  %ulSM_A7 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 48
  %219 = ptrtoint ptr %ulSM_A7 to i32
  call void @__asan_loadN_noabort(i32 %219, i32 4)
  %220 = load i32, ptr %ulSM_A7, align 1
  %221 = call i32 @llvm.bswap.i32(i32 %220)
  %call325 = call fastcc i32 @GetScaledFraction(i32 noundef %221, i32 noundef 1000)
  %ucSM_A7_sign = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 56
  %222 = ptrtoint ptr %ucSM_A7_sign to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %ucSM_A7_sign, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %cmp3.i2393 = icmp eq i8 %223, 0
  br i1 %cmp3.i2393, label %uPow.exit2385.thread.uPow.exit2401.thread_crit_edge, label %if.else.i2399.preheader

uPow.exit2385.thread.uPow.exit2401.thread_crit_edge: ; preds = %uPow.exit2385.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %uPow.exit2401.thread

if.else.i2399.preheader:                          ; preds = %uPow.exit2385.thread
  %conv328 = zext i8 %223 to i32
  br label %if.else.i2399

if.else.i2399:                                    ; preds = %if.else.i2399.if.else.i2399_crit_edge, %if.else.i2399.preheader
  %power.tr5.i2394 = phi i32 [ %sub.i2396, %if.else.i2399.if.else.i2399_crit_edge ], [ %conv328, %if.else.i2399.preheader ]
  %accumulator.tr4.i2395.neg = phi i32 [ %accumulator.tr4.i2395, %if.else.i2399.if.else.i2399_crit_edge ], [ -1, %if.else.i2399.preheader ]
  %accumulator.tr4.i2395 = phi i32 [ %accumulator.tr4.i2395.neg, %if.else.i2399.if.else.i2399_crit_edge ], [ 1, %if.else.i2399.preheader ]
  %sub.i2396 = add nsw i32 %power.tr5.i2394, -1
  %cmp.i2398 = icmp eq i32 %sub.i2396, 0
  br i1 %cmp.i2398, label %uPow.exit2401, label %if.else.i2399.if.else.i2399_crit_edge

if.else.i2399.if.else.i2399_crit_edge:            ; preds = %if.else.i2399
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i2399

uPow.exit2401:                                    ; preds = %if.else.i2399
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i2403 = shl i32 %accumulator.tr4.i2395.neg, 16
  br label %uPow.exit2401.thread

uPow.exit2401.thread:                             ; preds = %uPow.exit2401, %uPow.exit2385.thread.uPow.exit2401.thread_crit_edge
  %shl.i24032870 = phi i32 [ %shl.i2403, %uPow.exit2401 ], [ 65536, %uPow.exit2385.thread.uPow.exit2401.thread_crit_edge ]
  %conv.i2405 = sext i32 %call325 to i64
  %conv2.i2406 = sext i32 %shl.i24032870 to i64
  %mul.i2407 = mul nsw i64 %conv2.i2406, %conv.i2405
  %224 = lshr exact i64 %mul.i2407, 16
  %conv3.i2408 = trunc i64 %224 to i32
  %ulMargin_RO_a = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 57
  %225 = ptrtoint ptr %ulMargin_RO_a to i32
  call void @__asan_loadN_noabort(i32 %225, i32 4)
  %226 = load i32, ptr %ulMargin_RO_a, align 1
  %227 = call i32 @llvm.bswap.i32(i32 %226)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %227)
  %cmp.i2409 = icmp slt i32 %227, 32768
  %shl.i2410 = shl i32 %227, 16
  %retval.sroa.0.0.i2411 = select i1 %cmp.i2409, i32 %shl.i2410, i32 0
  %ulMargin_RO_b = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 58
  %228 = ptrtoint ptr %ulMargin_RO_b to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %ulMargin_RO_b, align 1
  %230 = call i32 @llvm.bswap.i32(i32 %229)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %230)
  %cmp.i2412 = icmp slt i32 %230, 32768
  %shl.i2413 = shl i32 %230, 16
  %retval.sroa.0.0.i2414 = select i1 %cmp.i2412, i32 %shl.i2413, i32 0
  %ulMargin_RO_c = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 59
  %231 = ptrtoint ptr %ulMargin_RO_c to i32
  call void @__asan_loadN_noabort(i32 %231, i32 4)
  %232 = load i32, ptr %ulMargin_RO_c, align 1
  %233 = call i32 @llvm.bswap.i32(i32 %232)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %233)
  %cmp.i2415 = icmp slt i32 %233, 32768
  %shl.i2416 = shl i32 %233, 16
  %retval.sroa.0.0.i2417 = select i1 %cmp.i2415, i32 %shl.i2416, i32 0
  %ulMargin_fixed = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 60
  %234 = ptrtoint ptr %ulMargin_fixed to i32
  call void @__asan_loadN_noabort(i32 %234, i32 4)
  %235 = load i32, ptr %ulMargin_fixed, align 1
  %236 = call i32 @llvm.bswap.i32(i32 %235)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %236)
  %cmp.i2418 = icmp slt i32 %236, 32768
  %shl.i2419 = shl i32 %236, 16
  %retval.sroa.0.0.i2420 = select i1 %cmp.i2418, i32 %shl.i2419, i32 0
  %ulMargin_Fmax_mean = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 61
  %237 = ptrtoint ptr %ulMargin_Fmax_mean to i32
  call void @__asan_loadN_noabort(i32 %237, i32 4)
  %238 = load i32, ptr %ulMargin_Fmax_mean, align 1
  %239 = call i32 @llvm.bswap.i32(i32 %238)
  %call349 = call fastcc i32 @GetScaledFraction(i32 noundef %239, i32 noundef 10000)
  %ulMargin_plat_mean = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 62
  %240 = ptrtoint ptr %ulMargin_plat_mean to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %ulMargin_plat_mean, align 1
  %242 = call i32 @llvm.bswap.i32(i32 %241)
  %call352 = call fastcc i32 @GetScaledFraction(i32 noundef %242, i32 noundef 10000)
  %ulMargin_Fmax_sigma = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 63
  %243 = ptrtoint ptr %ulMargin_Fmax_sigma to i32
  call void @__asan_loadN_noabort(i32 %243, i32 4)
  %244 = load i32, ptr %ulMargin_Fmax_sigma, align 1
  %245 = call i32 @llvm.bswap.i32(i32 %244)
  %call355 = call fastcc i32 @GetScaledFraction(i32 noundef %245, i32 noundef 10000)
  %ulMargin_plat_sigma = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 64
  %246 = ptrtoint ptr %ulMargin_plat_sigma to i32
  call void @__asan_loadN_noabort(i32 %246, i32 4)
  %247 = load i32, ptr %ulMargin_plat_sigma, align 1
  %248 = call i32 @llvm.bswap.i32(i32 %247)
  %call358 = call fastcc i32 @GetScaledFraction(i32 noundef %248, i32 noundef 10000)
  %ulMargin_DC_sigma = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 65
  %249 = ptrtoint ptr %ulMargin_DC_sigma to i32
  call void @__asan_loadN_noabort(i32 %249, i32 4)
  %250 = load i32, ptr %ulMargin_DC_sigma, align 1
  %251 = call i32 @llvm.bswap.i32(i32 %250)
  %call361 = call fastcc i32 @GetScaledFraction(i32 noundef %251, i32 noundef 100)
  %conv.i2421 = sext i32 %call361 to i64
  %shl.i2422 = shl nsw i64 %conv.i2421, 16
  %call7.i = call i64 @div64_s64(i64 noundef %shl.i2422, i64 noundef 65536000) #5
  %call7.i2426 = call i64 @div64_s64(i64 noundef 0, i64 noundef 6553600) #5
  %conv.i2429 = sext i32 %call121 to i64
  %shl.i2430 = shl nsw i64 %conv.i2429, 16
  %call7.i2431 = call i64 @div64_s64(i64 noundef %shl.i2430, i64 noundef 6553600) #5
  %conv.i2434 = sext i32 %call147 to i64
  %shl.i2435 = shl nsw i64 %conv.i2434, 16
  %call7.i2436 = call i64 @div64_s64(i64 noundef %shl.i2435, i64 noundef 6553600) #5
  %conv.i2439 = sext i32 %call181 to i64
  %shl.i2440 = shl nsw i64 %conv.i2439, 16
  %call7.i2441 = call i64 @div64_s64(i64 noundef %shl.i2440, i64 noundef 6553600) #5
  %252 = shl i64 %conv.i2439, 48
  %conv.i.i2444 = ashr exact i64 %252, 32
  %conv.i2446 = sext i32 %call208 to i64
  %shl.i2447 = shl nsw i64 %conv.i2446, 16
  %call7.i2448 = call i64 @div64_s64(i64 noundef %shl.i2447, i64 noundef 655360) #5
  %conv8.i2449 = trunc i64 %shl.i2447 to i32
  %call416 = call fastcc i32 @GetScaledFraction(i32 noundef %sclk, i32 noundef 100)
  %ulMaxVddc = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 3
  %253 = ptrtoint ptr %ulMaxVddc to i32
  call void @__asan_loadN_noabort(i32 %253, i32 4)
  %254 = load i32, ptr %ulMaxVddc, align 1
  %255 = call i32 @llvm.bswap.i32(i32 %254)
  %call420 = call fastcc i32 @GetScaledFraction(i32 noundef %255, i32 noundef 1000)
  %conv.i2451 = sext i32 %call420 to i64
  %shl.i2452 = shl nsw i64 %conv.i2451, 16
  %call7.i2453 = call i64 @div64_s64(i64 noundef %shl.i2452, i64 noundef 262144) #5
  %conv8.i2454 = trunc i64 %shl.i2452 to i32
  %ulBoardCoreTemp = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 2
  %256 = ptrtoint ptr %ulBoardCoreTemp to i32
  call void @__asan_loadN_noabort(i32 %256, i32 4)
  %257 = load i32, ptr %ulBoardCoreTemp, align 1
  %258 = call i32 @llvm.bswap.i32(i32 %257)
  %call430 = call fastcc i32 @GetScaledFraction(i32 noundef %258, i32 noundef 10)
  %ulEvvLkgFactor = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 1
  %259 = ptrtoint ptr %ulEvvLkgFactor to i32
  call void @__asan_loadN_noabort(i32 %259, i32 4)
  %260 = load i32, ptr %ulEvvLkgFactor, align 1
  %261 = call i32 @llvm.bswap.i32(i32 %260)
  %call433 = call fastcc i32 @GetScaledFraction(i32 noundef %261, i32 noundef 100)
  %ulLeakageTemp = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 6
  %262 = ptrtoint ptr %ulLeakageTemp to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %263 = load i32, ptr %ulLeakageTemp, align 1
  %264 = call i32 @llvm.bswap.i32(i32 %263)
  %call436 = call fastcc i32 @GetScaledFraction(i32 noundef %264, i32 noundef 10)
  %ulLeakageVoltage = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 7
  %265 = ptrtoint ptr %ulLeakageVoltage to i32
  call void @__asan_loadN_noabort(i32 %265, i32 4)
  %266 = load i32, ptr %ulLeakageVoltage, align 1
  %267 = call i32 @llvm.bswap.i32(i32 %266)
  %call440 = call fastcc i32 @GetScaledFraction(i32 noundef %267, i32 noundef 1000)
  %conv.i2456 = sext i32 %call440 to i64
  %shl.i2457 = shl nsw i64 %conv.i2456, 16
  %call7.i2458 = call i64 @div64_s64(i64 noundef %shl.i2457, i64 noundef 262144) #5
  %ulMinVddc = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_4, ptr %call3, i32 0, i32 4
  %268 = ptrtoint ptr %ulMinVddc to i32
  call void @__asan_loadN_noabort(i32 %268, i32 4)
  %269 = load i32, ptr %ulMinVddc, align 1
  %270 = call i32 @llvm.bswap.i32(i32 %269)
  %call451 = call fastcc i32 @GetScaledFraction(i32 noundef %270, i32 noundef 1000)
  %conv.i2461 = sext i32 %call451 to i64
  %shl.i2462 = shl nsw i64 %conv.i2461, 16
  %call7.i2463 = call i64 @div64_s64(i64 noundef %shl.i2462, i64 noundef 262144) #5
  %conv8.i2464 = trunc i64 %shl.i2462 to i32
  %mul.i2359 = shl nsw i64 %conv.i2357, 16
  %271 = mul i64 %mul.i2359, %conv2.i2358
  %conv.i2466 = ashr exact i64 %271, 32
  %conv2.i2467 = sext i32 %call416 to i64
  %conv.i2471 = sext i32 %conv3.i2328 to i64
  %mul.i2295 = shl nsw i64 %conv.i2294, 16
  %272 = mul i64 %mul.i2295, %conv2.i
  %conv.i2477 = ashr exact i64 %272, 32
  %conv2.i2478 = sext i32 %call230 to i64
  %mul.i2479 = mul nsw i64 %conv.i2477, %conv2.i2478
  %273 = lshr i64 %mul.i2479, 16
  %conv3.i2480 = trunc i64 %273 to i32
  %conv.i2485 = sext i32 %conv3.i2312 to i64
  %conv.i2489 = sext i32 %conv3.i2344 to i64
  %mul.i2507 = mul nsw i64 %conv.i2477, %conv2.i2467
  %274 = lshr i64 %mul.i2507, 16
  %conv3.i2508 = trunc i64 %274 to i32
  %add.i2509 = add i32 %conv3.i2508, %conv3.i2328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i2509)
  %cmp.i.i2510 = icmp eq i32 %add.i2509, 0
  br i1 %cmp.i.i2510, label %uPow.exit2401.thread.fDivide.exit_crit_edge, label %if.end.i

uPow.exit2401.thread.fDivide.exit_crit_edge:      ; preds = %uPow.exit2401.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDivide.exit

if.end.i:                                         ; preds = %uPow.exit2401.thread
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i2500 = mul nsw i64 %conv2.i2467, %conv.i2485
  %275 = lshr i64 %mul.i2500, 16
  %conv3.i2501 = trunc i64 %275 to i32
  %sub.i2502.neg.neg = add i32 %retval.sroa.0.0.i2157, %conv3.i2344
  %276 = add i32 %retval.sroa.0.0.i2417, %conv3.i2501
  %sub.i2504 = sub i32 %sub.i2502.neg.neg, %276
  %conv.i2511 = sext i32 %sub.i2504 to i64
  %conv6.i = sext i32 %add.i2509 to i64
  %shl.i2512 = shl nsw i64 %conv.i2511, 16
  %call7.i2513 = call i64 @div64_s64(i64 noundef %shl.i2512, i64 noundef %conv6.i) #5
  %conv8.i2514 = trunc i64 %shl.i2512 to i32
  br label %fDivide.exit

fDivide.exit:                                     ; preds = %if.end.i, %uPow.exit2401.thread.fDivide.exit_crit_edge
  %retval.sroa.0.0.i2515 = phi i32 [ %conv8.i2514, %if.end.i ], [ 0, %uPow.exit2401.thread.fDivide.exit_crit_edge ]
  %277 = shl i64 %conv.i2421, 48
  %shl.i2517 = ashr exact i64 %277, 16
  %call7.i2518 = call i64 @div64_s64(i64 noundef %shl.i2517, i64 noundef 65536000) #5
  %conv.i.i2523 = sext i32 %retval.sroa.0.0.i2515 to i64
  %conv.i2526 = sext i32 %retval.sroa.0.0.i2411 to i64
  %mul.i.i2524 = shl nsw i64 %conv.i.i2523, 16
  %278 = mul i64 %mul.i.i2524, %conv.i.i2523
  %conv2.i2527 = ashr i64 %278, 32
  %mul.i2528 = mul nsw i64 %conv2.i2527, %conv.i2526
  %279 = lshr exact i64 %mul.i2528, 16
  %conv3.i2529 = trunc i64 %279 to i32
  %conv.i2530 = sext i32 %retval.sroa.0.0.i2414 to i64
  %mul.i2532 = mul nsw i64 %conv.i.i2523, %conv.i2530
  %280 = lshr exact i64 %mul.i2532, 16
  %conv3.i2533 = trunc i64 %280 to i32
  %add.i2534 = add i32 %retval.sroa.0.0.i2417, %conv3.i2533
  %add.i2535 = add i32 %add.i2534, %conv3.i2529
  %mul.i2545 = mul nsw i64 %conv.i2477, %conv.i.i2523
  %281 = lshr i64 %mul.i2545, 16
  %conv3.i2546 = trunc i64 %281 to i32
  %add.i2547 = add i32 %conv3.i2546, %conv3.i2312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i2547)
  %cmp.i.i2548 = icmp eq i32 %add.i2547, 0
  br i1 %cmp.i.i2548, label %fDivide.exit.fRoundUpByStepSize.exit_crit_edge, label %if.end.i2554

fDivide.exit.fRoundUpByStepSize.exit_crit_edge:   ; preds = %fDivide.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fRoundUpByStepSize.exit

if.end.i2554:                                     ; preds = %fDivide.exit
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i2538 = mul nsw i64 %conv.i.i2523, %conv.i2471
  %282 = lshr i64 %mul.i2538, 16
  %conv3.i2539 = trunc i64 %282 to i32
  %sub.i2540.neg.neg = add i32 %retval.sroa.0.0.i2157, %conv3.i2344
  %283 = add i32 %add.i2535, %conv3.i2539
  %sub.i2542 = sub i32 %sub.i2540.neg.neg, %283
  %conv.i2549 = sext i32 %sub.i2542 to i64
  %conv6.i2550 = sext i32 %add.i2547 to i64
  %shl.i2551 = shl nsw i64 %conv.i2549, 16
  %call7.i2552 = call i64 @div64_s64(i64 noundef %shl.i2551, i64 noundef %conv6.i2550) #5
  %conv8.i2553 = trunc i64 %shl.i2551 to i32
  br label %fRoundUpByStepSize.exit

fRoundUpByStepSize.exit:                          ; preds = %if.end.i2554, %fDivide.exit.fRoundUpByStepSize.exit_crit_edge
  %retval.sroa.0.0.i2555 = phi i32 [ %conv8.i2553, %if.end.i2554 ], [ 0, %fDivide.exit.fRoundUpByStepSize.exit_crit_edge ]
  %sub.i2557 = sub i32 %call416, %retval.sroa.0.0.i2555
  %conv2.i2559 = sext i32 %call349 to i64
  %mul.i2560 = mul nsw i64 %conv2.i2467, %conv2.i2559
  %284 = lshr i64 %mul.i2560, 16
  %conv3.i2561 = trunc i64 %284 to i32
  %conv2.i2563 = sext i32 %call352 to i64
  %mul.i2564 = mul nsw i64 %conv2.i2467, %conv2.i2563
  %285 = lshr i64 %mul.i2564, 16
  %conv3.i2565 = trunc i64 %285 to i32
  %conv2.i2567 = sext i32 %call355 to i64
  %conv2.i2571 = sext i32 %call358 to i64
  %conv.i.i2574 = sext i32 %sub.i2557 to i64
  %mul.i.i2575 = mul nsw i64 %conv.i.i2574, %conv.i.i2574
  %286 = lshr i64 %mul.i.i2575, 16
  %conv3.i.i2576 = trunc i64 %286 to i32
  %mul.i2572 = shl nsw i64 %conv2.i2571, 16
  %287 = mul i64 %mul.i2572, %conv2.i2467
  %conv.i.i2577 = ashr i64 %287, 32
  %mul.i.i2578 = mul nsw i64 %conv.i.i2577, %conv.i.i2577
  %288 = lshr i64 %mul.i.i2578, 16
  %conv3.i.i2579 = trunc i64 %288 to i32
  %mul.i2568 = shl nsw i64 %conv2.i2567, 16
  %289 = mul i64 %mul.i2568, %conv2.i2467
  %conv.i.i2580 = ashr i64 %289, 32
  %mul.i.i2581 = mul nsw i64 %conv.i.i2580, %conv.i.i2580
  %290 = lshr i64 %mul.i.i2581, 16
  %conv3.i.i2582 = trunc i64 %290 to i32
  %add.i2583 = add i32 %conv3.i.i2582, %conv3.i.i2579
  %add.i2584 = add i32 %add.i2583, %conv3.i.i2576
  %.fca.0.insert1130 = insertvalue [1 x i32] poison, i32 %add.i2584, 0
  %call694 = call fastcc i32 @fSqrt([1 x i32] %.fca.0.insert1130)
  %add.i2585 = add i32 %call416, %retval.sroa.0.0.i2420
  %add.i2586 = add i32 %add.i2585, %conv3.i2565
  %add.i2587 = add i32 %add.i2586, %conv3.i2561
  %add.i2588 = add i32 %add.i2587, %call694
  %conv2.i2590 = sext i32 %add.i2588 to i64
  %mul.i2591 = mul nsw i64 %conv.i2466, %conv2.i2590
  %291 = lshr i64 %mul.i2591, 16
  %conv3.i2592 = trunc i64 %291 to i32
  %add.i2593 = add i32 %conv3.i2592, %conv3.i2376
  %mul.i2597 = mul nsw i64 %conv2.i2590, %conv.i2471
  %292 = lshr i64 %mul.i2597, 16
  %conv3.i2598 = trunc i64 %292 to i32
  %add.i2599 = add i32 %conv3.i2598, %conv3.i2392
  %mul.i2606 = shl nsw i64 %conv2.i2478, 16
  %293 = mul i64 %mul.i2606, %conv.i2485
  %conv.i2609 = ashr i64 %293, 32
  %mul.i2611 = mul nsw i64 %conv.i2609, %conv2.i2590
  %294 = lshr i64 %mul.i2611, 16
  %conv3.i2612 = trunc i64 %294 to i32
  %mul.i2616 = mul nsw i64 %conv2.i2590, %conv.i2489
  %295 = lshr i64 %mul.i2616, 16
  %conv3.i2617 = trunc i64 %295 to i32
  %sub.i2493 = sub i32 %conv3.i2480, %retval.sroa.0.0.i2157
  %add.i2619 = add i32 %sub.i2493, %conv3.i2408
  %add.i2620 = add i32 %add.i2619, %add.i2535
  %add.i2621 = add i32 %add.i2620, %conv3.i2617
  %add.i2622 = add i32 %add.i2621, %conv3.i2612
  %.fca.0.insert1575 = insertvalue [1 x i32] poison, i32 %add.i2593, 0
  %.fca.0.insert1569 = insertvalue [1 x i32] poison, i32 %add.i2599, 0
  %.fca.0.insert1572 = insertvalue [1 x i32] poison, i32 %add.i2622, 0
  call fastcc void @SolveQuadracticEqn([1 x i32] %.fca.0.insert1575, [1 x i32] %.fca.0.insert1569, [1 x i32] %.fca.0.insert1572, ptr noundef nonnull %fRoots)
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.i2454, i32 %conv8.i2464)
  %cmp.i26332884 = icmp sgt i32 %conv8.i2454, %conv8.i2464
  br i1 %cmp.i26332884, label %while.body.lr.ph, label %fRoundUpByStepSize.exit.cleanup_crit_edge

fRoundUpByStepSize.exit.cleanup_crit_edge:        ; preds = %fRoundUpByStepSize.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %fRoundUpByStepSize.exit
  %mul.i2641 = shl nsw i64 %conv2.i2467, 16
  %conv2.i2651 = sext i32 %fDerateTDP.sroa.0.0 to i64
  %296 = mul i64 %conv.i.i2444, -4294967296
  %conv.i2654 = ashr exact i64 %296, 32
  %conv2.i2655 = sext i32 %call430 to i64
  %mul.i2656 = mul nsw i64 %conv.i2654, %conv2.i2655
  %297 = lshr exact i64 %mul.i2656, 16
  %conv3.i2657 = trunc i64 %297 to i32
  %add.i2658 = add i32 %conv3.i2657, %conv8.i2449
  %conv.i2659 = sext i32 %add.i2658 to i64
  %298 = shl i64 %conv.i2434, 48
  %conv.i2675 = ashr exact i64 %298, 32
  %mul.i2677 = mul nsw i64 %conv.i2675, %conv2.i2655
  %299 = lshr exact i64 %mul.i2677, 16
  %conv3.i2678 = trunc i64 %299 to i32
  %.fca.0.insert1101 = insertvalue [1 x i32] poison, i32 %conv3.i2678, 0
  %300 = shl i64 %conv.i2456, 48
  %conv2.i2689 = ashr exact i64 %300, 32
  %mul.i2690 = mul nsw i64 %conv2.i2689, %conv.i2659
  %301 = lshr exact i64 %mul.i2690, 16
  %conv3.i2691 = trunc i64 %301 to i32
  %.fca.0.insert1099 = insertvalue [1 x i32] poison, i32 %conv3.i2691, 0
  %conv.i2667 = sext i32 %call433 to i64
  %mul.i2669 = shl nsw i64 %conv.i2667, 16
  %conv2.i2702 = sext i32 %call436 to i64
  %mul.i2703 = mul nsw i64 %conv.i2675, %conv2.i2702
  %302 = lshr exact i64 %mul.i2703, 16
  %conv3.i2704 = trunc i64 %302 to i32
  %.fca.0.insert1095 = insertvalue [1 x i32] poison, i32 %conv3.i2704, 0
  %cmp.i2735 = icmp sgt i32 %conv8.i2454, 0
  %conv2.i2635 = sext i32 %conv8.i2464 to i64
  %303 = shl i64 %conv.i2429, 48
  %conv.i2639 = ashr exact i64 %303, 32
  %304 = mul i64 %mul.i2641, %conv.i2639
  %conv.i2646 = ashr exact i64 %304, 32
  %mul.i.i2644 = shl nsw i64 %conv2.i2635, 16
  %305 = mul i64 %mul.i.i2644, %conv2.i2635
  %mul.i2648 = ashr exact i64 %305, 16
  %306 = mul i64 %mul.i2648, %conv.i2646
  %conv.i2650 = ashr i64 %306, 32
  %mul.i2652 = mul nsw i64 %conv.i2650, %conv2.i2651
  %307 = lshr i64 %mul.i2652, 16
  %conv3.i2653 = trunc i64 %307 to i32
  %mul.i2661 = mul nsw i64 %conv2.i2635, %conv.i2659
  %308 = lshr exact i64 %mul.i2661, 16
  %conv3.i2662 = trunc i64 %308 to i32
  %.fca.0.insert1105 = insertvalue [1 x i32] poison, i32 %conv3.i2662, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i2464)
  %cmp.i.i2715 = icmp eq i32 %conv8.i2464, 0
  br label %while.body

while.body:                                       ; preds = %fRoundUpByStepSize.exit2734.while.body_crit_edge, %while.body.lr.ph
  %call882 = call fastcc i32 @fExponential([1 x i32] %.fca.0.insert1105)
  %call904 = call fastcc i32 @fExponential([1 x i32] %.fca.0.insert1101)
  %call928 = call fastcc i32 @fExponential([1 x i32] %.fca.0.insert1099)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call928)
  %cmp.i.i2692 = icmp eq i32 %call928, 0
  br i1 %cmp.i.i2692, label %while.body.fDivide.exit2700_crit_edge, label %if.end.i2698

while.body.fDivide.exit2700_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDivide.exit2700

if.end.i2698:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i2663 = sext i32 %call882 to i64
  %309 = mul i64 %mul.i.i2644, %conv.i2663
  %conv2.i2668 = ashr exact i64 %309, 32
  %310 = mul i64 %mul.i2669, %conv2.i2668
  %conv2.i2672 = ashr i64 %310, 32
  %311 = mul i64 %mul.i2606, %conv2.i2672
  %conv.i2679 = ashr i64 %311, 32
  %conv2.i2680 = sext i32 %call904 to i64
  %mul.i2681 = shl nsw i64 %conv2.i2680, 16
  %312 = mul i64 %mul.i2681, %conv.i2679
  %conv6.i2694 = sext i32 %call928 to i64
  %313 = ashr exact i64 %312, 16
  %shl.i2695 = and i64 %313, -65536
  %call7.i2696 = call i64 @div64_s64(i64 noundef %shl.i2695, i64 noundef %conv6.i2694) #5
  %conv8.i2697 = trunc i64 %shl.i2695 to i32
  br label %fDivide.exit2700

fDivide.exit2700:                                 ; preds = %if.end.i2698, %while.body.fDivide.exit2700_crit_edge
  %retval.sroa.0.0.i2699 = phi i32 [ %conv8.i2697, %if.end.i2698 ], [ 0, %while.body.fDivide.exit2700_crit_edge ]
  %call942 = call fastcc i32 @fExponential([1 x i32] %.fca.0.insert1095)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call942)
  %cmp.i.i2705 = icmp eq i32 %call942, 0
  br i1 %cmp.i.i2705, label %fDivide.exit2700.fDivide.exit2713_crit_edge, label %if.end.i2711

fDivide.exit2700.fDivide.exit2713_crit_edge:      ; preds = %fDivide.exit2700
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDivide.exit2713

if.end.i2711:                                     ; preds = %fDivide.exit2700
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i2706 = sext i32 %retval.sroa.0.0.i2699 to i64
  %conv6.i2707 = sext i32 %call942 to i64
  %shl.i2708 = shl nsw i64 %conv.i2706, 16
  %call7.i2709 = call i64 @div64_s64(i64 noundef %shl.i2708, i64 noundef %conv6.i2707) #5
  %conv8.i2710 = trunc i64 %shl.i2708 to i32
  br label %fDivide.exit2713

fDivide.exit2713:                                 ; preds = %if.end.i2711, %fDivide.exit2700.fDivide.exit2713_crit_edge
  %retval.sroa.0.0.i2712 = phi i32 [ %conv8.i2710, %if.end.i2711 ], [ 0, %fDivide.exit2700.fDivide.exit2713_crit_edge ]
  br i1 %cmp.i.i2715, label %fDivide.exit2713.fRoundUpByStepSize.exit2734_crit_edge, label %if.end.i2721

fDivide.exit2713.fRoundUpByStepSize.exit2734_crit_edge: ; preds = %fDivide.exit2713
  call void @__sanitizer_cov_trace_pc() #7
  br label %fRoundUpByStepSize.exit2734

if.end.i2721:                                     ; preds = %fDivide.exit2713
  call void @__sanitizer_cov_trace_pc() #7
  %add.i2714 = add i32 %retval.sroa.0.0.i2712, %conv3.i2653
  %conv.i2716 = sext i32 %add.i2714 to i64
  %shl.i2718 = shl nsw i64 %conv.i2716, 16
  %call7.i2719 = call i64 @div64_s64(i64 noundef %shl.i2718, i64 noundef %conv2.i2635) #5
  br label %fRoundUpByStepSize.exit2734

fRoundUpByStepSize.exit2734:                      ; preds = %if.end.i2721, %fDivide.exit2713.fRoundUpByStepSize.exit2734_crit_edge
  %call7.i2725 = call i64 @div64_s64(i64 noundef 0, i64 noundef 655360) #5
  br i1 %cmp.i2735, label %if.then995, label %fRoundUpByStepSize.exit2734.while.body_crit_edge

fRoundUpByStepSize.exit2734.while.body_crit_edge: ; preds = %fRoundUpByStepSize.exit2734
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.then995:                                       ; preds = %fRoundUpByStepSize.exit2734
  call void @__sanitizer_cov_trace_pc() #7
  %314 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 0, ptr %voltage, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then995, %fRoundUpByStepSize.exit.cleanup_crit_edge, %if.end194.cleanup_crit_edge, %if.end160.cleanup_crit_edge, %if.end134.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %fDecodeLinearFuse.exit2289.cleanup_crit_edge, %fDecodeLinearFuse.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %GetScaledFraction.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %GetScaledFraction.exit.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call52, %sw.epilog.cleanup_crit_edge ], [ %call77, %fDecodeLinearFuse.exit.cleanup_crit_edge ], [ %call104, %fDecodeLinearFuse.exit2289.cleanup_crit_edge ], [ %call131, %if.end107.cleanup_crit_edge ], [ %call157, %if.end134.cleanup_crit_edge ], [ %call191, %if.end160.cleanup_crit_edge ], [ %call215, %if.end194.cleanup_crit_edge ], [ 0, %if.then995 ], [ 0, %fRoundUpByStepSize.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fRoots) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sOutput_FuseValues) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @GetScaledFraction(i32 noundef %X, i32 noundef %factor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %X, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %0)
  %cmp5 = icmp sgt i32 %0, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %factor)
  %cmp6 = icmp sgt i32 %factor, 32767
  %or.cond = or i1 %cmp5, %cmp6
  br i1 %or.cond, label %if.then7, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then7:                                         ; preds = %entry
  %div = sdiv i32 %0, %factor
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %div)
  %cmp8 = icmp slt i32 %div, 32768
  br i1 %cmp8, label %if.then7.while.cond_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7.while.cond_crit_edge:                    ; preds = %if.then7
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then7.while.cond_crit_edge
  %X.addr.1 = phi i32 [ %shr69, %while.cond.while.cond_crit_edge ], [ %0, %if.then7.while.cond_crit_edge ]
  %cmp10 = icmp sgt i32 %X.addr.1, 32767
  %shr69 = lshr i32 %X.addr.1, 1
  br i1 %cmp10, label %while.cond.while.cond_crit_edge, label %while.cond.while.cond11_crit_edge

while.cond.while.cond11_crit_edge:                ; preds = %while.cond
  br label %while.cond11

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.cond11:                                     ; preds = %while.cond11.while.cond11_crit_edge, %while.cond.while.cond11_crit_edge
  %factor.addr.1 = phi i32 [ %shr1470, %while.cond11.while.cond11_crit_edge ], [ %factor, %while.cond.while.cond11_crit_edge ]
  %cmp12 = icmp sgt i32 %factor.addr.1, 32767
  %shr1470 = lshr i32 %factor.addr.1, 1
  br i1 %cmp12, label %while.cond11.while.cond11_crit_edge, label %while.cond11.if.end18_crit_edge

while.cond11.if.end18_crit_edge:                  ; preds = %while.cond11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

while.cond11.while.cond11_crit_edge:              ; preds = %while.cond11
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond11

if.end18:                                         ; preds = %while.cond11.if.end18_crit_edge, %entry.if.end18_crit_edge
  %factor.addr.2 = phi i32 [ %factor, %entry.if.end18_crit_edge ], [ %factor.addr.1, %while.cond11.if.end18_crit_edge ]
  %X.addr.2 = phi i32 [ %0, %entry.if.end18_crit_edge ], [ %X.addr.1, %while.cond11.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %factor.addr.2)
  %cmp19 = icmp eq i32 %factor.addr.2, 1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %X.addr.2)
  %cmp.i = icmp slt i32 %X.addr.2, 32768
  %shl.i = shl i32 %X.addr.2, 16
  %retval.sroa.0.0.i = select i1 %cmp.i, i32 %shl.i, i32 0
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %shl.i65 = shl i32 %factor.addr.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i65)
  %cmp.i.i71 = icmp eq i32 %shl.i65, 0
  br i1 %cmp.i.i71, label %if.end21.cleanup_crit_edge, label %if.end.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %1 = sub i32 0, %X.addr.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %X)
  %cmp3.i72 = icmp slt i32 %X, 0
  %2 = select i1 %cmp3.i72, i32 %1, i32 %X.addr.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %2)
  %cmp.i61 = icmp slt i32 %2, 32768
  %shl.i62 = shl i32 %2, 16
  %retval.sroa.0.0.i63 = select i1 %cmp.i61, i32 %shl.i62, i32 0
  %conv.i = sext i32 %retval.sroa.0.0.i63 to i64
  %conv6.i = sext i32 %shl.i65 to i64
  %shl.i67 = shl nsw i64 %conv.i, 16
  %call7.i = tail call i64 @div64_s64(i64 noundef %shl.i67, i64 noundef %conv6.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end21.cleanup_crit_edge, %if.then20, %if.then7.cleanup_crit_edge
  %retval.sroa.0.0 = phi i32 [ %retval.sroa.0.0.i, %if.then20 ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.sroa.0.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fDecodeLinearFuse(i32 noundef %fuse_value, [1 x i32] %f_min.coerce, [1 x i32] %f_range.coerce, i32 noundef %bitlength) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %fuse_value)
  %cmp.i = icmp ult i32 %fuse_value, 32768
  %shl.i = shl i32 %fuse_value, 16
  %retval.sroa.0.0.i = select i1 %cmp.i, i32 %shl.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitlength)
  %cmp3.i = icmp eq i32 %bitlength, 0
  br i1 %cmp3.i, label %entry.fDivide.exit_crit_edge, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  br label %if.else.i

entry.fDivide.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDivide.exit

if.else.i:                                        ; preds = %if.else.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %power.tr5.i = phi i32 [ %sub.i, %if.else.i.if.else.i_crit_edge ], [ %bitlength, %entry.if.else.i_crit_edge ]
  %accumulator.tr4.i = phi i32 [ %mul.i, %if.else.i.if.else.i_crit_edge ], [ 1, %entry.if.else.i_crit_edge ]
  %sub.i = add i32 %power.tr5.i, -1
  %mul.i = shl i32 %accumulator.tr4.i, 1
  %cmp.i30 = icmp eq i32 %sub.i, 0
  br i1 %cmp.i30, label %uPow.exit, label %if.else.i.if.else.i_crit_edge

if.else.i.if.else.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

uPow.exit:                                        ; preds = %if.else.i
  %phi.bo = add i32 %mul.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %phi.bo)
  %cmp.i31 = icmp ugt i32 %phi.bo, 32767
  br i1 %cmp.i31, label %uPow.exit.fDivide.exit_crit_edge, label %if.end.i

uPow.exit.fDivide.exit_crit_edge:                 ; preds = %uPow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDivide.exit

if.end.i:                                         ; preds = %uPow.exit
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i32 = shl i32 %phi.bo, 16
  %conv.i = sext i32 %retval.sroa.0.0.i to i64
  %conv6.i = sext i32 %shl.i32 to i64
  %shl.i34 = shl nsw i64 %conv.i, 16
  %call7.i = tail call i64 @div64_s64(i64 noundef %shl.i34, i64 noundef %conv6.i) #5
  br label %fDivide.exit

fDivide.exit:                                     ; preds = %if.end.i, %uPow.exit.fDivide.exit_crit_edge, %entry.fDivide.exit_crit_edge
  %Y.coerce.fca.0.extract.i38 = extractvalue [1 x i32] %f_min.coerce, 0
  ret i32 %Y.coerce.fca.0.extract.i38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fDecodeLogisticFuse(i32 noundef %fuse_value, [1 x i32] %f_average.coerce, [1 x i32] %f_range.coerce, i32 noundef %bitlength) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %fuse_value)
  %cmp.i = icmp ult i32 %fuse_value, 32768
  %shl.i = shl i32 %fuse_value, 16
  %retval.sroa.0.0.i = select i1 %cmp.i, i32 %shl.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitlength)
  %cmp3.i = icmp eq i32 %bitlength, 0
  br i1 %cmp3.i, label %entry.uPow.exit_crit_edge, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  br label %if.else.i

entry.uPow.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %uPow.exit

if.else.i:                                        ; preds = %if.else.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %power.tr5.i = phi i32 [ %sub.i, %if.else.i.if.else.i_crit_edge ], [ %bitlength, %entry.if.else.i_crit_edge ]
  %accumulator.tr4.i = phi i32 [ %mul.i, %if.else.i.if.else.i_crit_edge ], [ 1, %entry.if.else.i_crit_edge ]
  %sub.i = add i32 %power.tr5.i, -1
  %mul.i = shl i32 %accumulator.tr4.i, 1
  %cmp.i55 = icmp eq i32 %sub.i, 0
  br i1 %cmp.i55, label %uPow.exit.loopexit, label %if.else.i.if.else.i_crit_edge

if.else.i.if.else.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

uPow.exit.loopexit:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo = add i32 %mul.i, -1
  br label %uPow.exit

uPow.exit:                                        ; preds = %uPow.exit.loopexit, %entry.uPow.exit_crit_edge
  %accumulator.tr.lcssa.i = phi i32 [ 0, %entry.uPow.exit_crit_edge ], [ %phi.bo, %uPow.exit.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.sroa.0.0.i)
  %cmp.i.i = icmp eq i32 %retval.sroa.0.0.i, 0
  br i1 %cmp.i.i, label %uPow.exit.fDivide.exit_crit_edge, label %if.end.i

uPow.exit.fDivide.exit_crit_edge:                 ; preds = %uPow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDivide.exit

if.end.i:                                         ; preds = %uPow.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %accumulator.tr.lcssa.i)
  %cmp.i56 = icmp ult i32 %accumulator.tr.lcssa.i, 32768
  %shl.i57 = shl i32 %accumulator.tr.lcssa.i, 16
  %retval.sroa.0.0.i58 = select i1 %cmp.i56, i32 %shl.i57, i32 0
  %conv.i = sext i32 %retval.sroa.0.0.i58 to i64
  %conv6.i = sext i32 %retval.sroa.0.0.i to i64
  %shl.i59 = shl nsw i64 %conv.i, 16
  %call7.i = tail call i64 @div64_s64(i64 noundef %shl.i59, i64 noundef %conv6.i) #5
  br label %fDivide.exit

fDivide.exit:                                     ; preds = %if.end.i, %uPow.exit.fDivide.exit_crit_edge
  %call7.i.i.i = tail call i64 @div64_s64(i64 noundef 34359738368, i64 noundef 65536000) #5
  %X.coerce.fca.0.extract.i = extractvalue [1 x i32] %f_range.coerce, 0
  %conv.i63 = sext i32 %X.coerce.fca.0.extract.i to i64
  %shl.i64 = shl nsw i64 %conv.i63, 16
  %call7.i65 = tail call i64 @div64_s64(i64 noundef %shl.i64, i64 noundef -851968) #5
  %0 = shl i64 %conv.i63, 48
  %conv2.i = ashr exact i64 %0, 32
  %mul.i70 = mul i64 %conv2.i, 281474976579584
  %1 = lshr exact i64 %mul.i70, 16
  %conv3.i = trunc i64 %1 to i32
  %Y.coerce.fca.0.extract.i = extractvalue [1 x i32] %f_average.coerce, 0
  %add.i = add i32 %Y.coerce.fca.0.extract.i, %conv3.i
  ret i32 %add.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fDecodeLeakageID(i32 noundef %leakageID_fuse, [1 x i32] %ln_max_div_min.coerce, [1 x i32] %f_min.coerce, i32 noundef %bitlength) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitlength)
  %cmp3.i = icmp eq i32 %bitlength, 0
  br i1 %cmp3.i, label %entry.fDivide.exit_crit_edge, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  br label %if.else.i

entry.fDivide.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDivide.exit

if.else.i:                                        ; preds = %if.else.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %power.tr5.i = phi i32 [ %sub.i, %if.else.i.if.else.i_crit_edge ], [ %bitlength, %entry.if.else.i_crit_edge ]
  %accumulator.tr4.i = phi i32 [ %mul.i, %if.else.i.if.else.i_crit_edge ], [ 1, %entry.if.else.i_crit_edge ]
  %sub.i = add i32 %power.tr5.i, -1
  %mul.i = shl i32 %accumulator.tr4.i, 1
  %cmp.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.i, label %uPow.exit, label %if.else.i.if.else.i_crit_edge

if.else.i.if.else.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

uPow.exit:                                        ; preds = %if.else.i
  %phi.bo = add i32 %mul.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %phi.bo)
  %cmp.i38 = icmp ugt i32 %phi.bo, 32767
  br i1 %cmp.i38, label %uPow.exit.fDivide.exit_crit_edge, label %if.end.i

uPow.exit.fDivide.exit_crit_edge:                 ; preds = %uPow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDivide.exit

if.end.i:                                         ; preds = %uPow.exit
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl i32 %phi.bo, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %leakageID_fuse)
  %cmp.i39 = icmp ult i32 %leakageID_fuse, 32768
  %shl.i40 = shl i32 %leakageID_fuse, 16
  %retval.sroa.0.0.i41 = select i1 %cmp.i39, i32 %shl.i40, i32 0
  %conv2.i = sext i32 %retval.sroa.0.0.i41 to i64
  %X.coerce.fca.0.extract.i = extractvalue [1 x i32] %ln_max_div_min.coerce, 0
  %conv.i = sext i32 %X.coerce.fca.0.extract.i to i64
  %mul.i42 = mul nsw i64 %conv2.i, %conv.i
  %0 = shl i64 %mul.i42, 16
  %conv6.i = sext i32 %shl.i to i64
  %shl.i44 = ashr exact i64 %0, 16
  %call7.i = tail call i64 @div64_s64(i64 noundef %shl.i44, i64 noundef %conv6.i) #5
  %conv8.i = trunc i64 %mul.i42 to i32
  br label %fDivide.exit

fDivide.exit:                                     ; preds = %if.end.i, %uPow.exit.fDivide.exit_crit_edge, %entry.fDivide.exit_crit_edge
  %retval.sroa.0.0.i45 = phi i32 [ %conv8.i, %if.end.i ], [ 0, %uPow.exit.fDivide.exit_crit_edge ], [ 0, %entry.fDivide.exit_crit_edge ]
  %.fca.0.insert31 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i45, 0
  %call17 = tail call fastcc i32 @fExponential([1 x i32] %.fca.0.insert31)
  %Y.coerce.fca.0.extract.i = extractvalue [1 x i32] %f_min.coerce, 0
  %conv.i46 = sext i32 %call17 to i64
  %conv2.i47 = sext i32 %Y.coerce.fca.0.extract.i to i64
  %mul.i48 = mul nsw i64 %conv.i46, %conv2.i47
  %1 = lshr i64 %mul.i48, 16
  %conv3.i49 = trunc i64 %1 to i32
  ret i32 %conv3.i49
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fSqrt([1 x i32] %num.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num.coerce.fca.0.extract = extractvalue [1 x i32] %num.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num.coerce.fca.0.extract)
  %0 = icmp slt i32 %num.coerce.fca.0.extract, 1
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.shl = shl i32 %num.coerce.fca.0.extract, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608000, i32 %bf.shl)
  %cmp = icmp sgt i32 %bf.shl, 196608000
  br i1 %cmp, label %if.end.do.body.preheader_crit_edge, label %if.else

if.end.do.body.preheader_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.preheader

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536000, i32 %bf.shl)
  %cmp12 = icmp sgt i32 %bf.shl, 65536000
  br i1 %cmp12, label %if.else.do.body.preheader_crit_edge, label %if.else14

if.else.do.body.preheader_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.preheader

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %bf.shl)
  %cmp18 = icmp sgt i32 %bf.shl, 6553600
  %. = select i1 %cmp18, i32 655360, i32 131072
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.else14, %if.else.do.body.preheader_crit_edge, %if.end.do.body.preheader_crit_edge
  %x_new.sroa.0.0.ph = phi i32 [ %., %if.else14 ], [ 1966080, %if.else.do.body.preheader_crit_edge ], [ 3932160, %if.end.do.body.preheader_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %x_new.sroa.0.0 = phi i32 [ %sub.i128, %do.cond.do.body_crit_edge ], [ %x_new.sroa.0.0.ph, %do.body.preheader ]
  %counter.0 = phi i32 [ %inc, %do.cond.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %inc = add nuw nsw i32 %counter.0, 1
  %1 = shl i32 %x_new.sroa.0.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %do.body.fDivide.exit_crit_edge, label %if.end.i

do.body.fDivide.exit_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %fDivide.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = sext i32 %x_new.sroa.0.0 to i64
  %mul.i.i = mul nsw i64 %conv.i.i, %conv.i.i
  %2 = lshr i64 %mul.i.i, 16
  %conv3.i.i = trunc i64 %2 to i32
  %sub.i = sub i32 %conv3.i.i, %num.coerce.fca.0.extract
  %conv.i = sext i32 %sub.i to i64
  %conv6.i = sext i32 %1 to i64
  %shl.i127 = shl nsw i64 %conv.i, 16
  %call7.i = tail call i64 @div64_s64(i64 noundef %shl.i127, i64 noundef %conv6.i) #5
  %conv8.i = trunc i64 %shl.i127 to i32
  br label %fDivide.exit

fDivide.exit:                                     ; preds = %if.end.i, %do.body.fDivide.exit_crit_edge
  %retval.sroa.0.0.i = phi i32 [ %conv8.i, %if.end.i ], [ 0, %do.body.fDivide.exit_crit_edge ]
  %sub.i128 = sub i32 %x_new.sroa.0.0, %retval.sroa.0.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %counter.0)
  %exitcond = icmp eq i32 %counter.0, 20
  br i1 %exitcond, label %fDivide.exit.cleanup_crit_edge, label %do.cond

fDivide.exit.cleanup_crit_edge:                   ; preds = %fDivide.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.cond:                                          ; preds = %fDivide.exit
  %bf.lshr.i.i132 = lshr i32 %x_new.sroa.0.0, 16
  %mul2.i.i133 = mul nuw nsw i32 %bf.lshr.i.i132, 10
  %div.117.i.i134 = lshr i32 %mul2.i.i133, 16
  %mul.neg.1.i.i135 = mul nsw i32 %div.117.i.i134, -65536
  %sub.1.i.i136 = add nsw i32 %mul.neg.1.i.i135, %mul2.i.i133
  %mul2.1.i.i137 = mul nsw i32 %sub.1.i.i136, 10
  %div.2.i.i138 = sdiv i32 %mul2.1.i.i137, 65536
  %mul5.2.i.i148.neg = mul nsw i32 %div.2.i.i138, -100
  %mul5.1.i.i149.neg = mul nsw i32 %div.117.i.i134, -1000
  %mul.neg.2.i.i139 = mul nsw i32 %div.2.i.i138, -65536
  %sub.2.i.i140 = add nsw i32 %mul.neg.2.i.i139, %mul2.1.i.i137
  %mul2.2.i.i141 = mul nsw i32 %sub.2.i.i140, 10
  %div.3.i.i142 = sdiv i32 %mul2.2.i.i141, 65536
  %mul5.3.i.i147.neg = mul nsw i32 %div.3.i.i142, -10
  %mul.neg.3.i.i143 = mul nsw i32 %div.3.i.i142, -65536
  %sub.3.i.i144 = add nsw i32 %mul.neg.3.i.i143, %mul2.2.i.i141
  %mul2.3.i.i145 = mul i32 %sub.3.i.i144, 10
  %div.4.i.i146.neg = sdiv i32 %mul2.3.i.i145, -65536
  %shr.i.i130 = ashr i32 %x_new.sroa.0.0, 16
  %mul.i131.neg = mul nsw i32 %shr.i.i130, -10000
  %add.2.i.i150.neg = add nsw i32 %mul5.1.i.i149.neg, %mul.i131.neg
  %add.3.i.i151.neg = add nsw i32 %add.2.i.i150.neg, %mul5.2.i.i148.neg
  %add.4.i.i152.neg = add nsw i32 %add.3.i.i151.neg, %mul5.3.i.i147.neg
  %add.i.i153.neg = add nsw i32 %add.4.i.i152.neg, %div.4.i.i146.neg
  %bf.lshr.i.i = lshr i32 %sub.i128, 16
  %mul2.i.i = mul nuw nsw i32 %bf.lshr.i.i, 10
  %div.117.i.i = lshr i32 %mul2.i.i, 16
  %mul.neg.1.i.i = mul nsw i32 %div.117.i.i, -65536
  %sub.1.i.i = add nsw i32 %mul.neg.1.i.i, %mul2.i.i
  %mul2.1.i.i = mul nsw i32 %sub.1.i.i, 10
  %div.2.i.i = sdiv i32 %mul2.1.i.i, 65536
  %mul5.2.i.i.neg = mul nsw i32 %div.2.i.i, -100
  %mul5.1.i.i.neg = mul nsw i32 %div.117.i.i, -1000
  %mul.neg.2.i.i = mul nsw i32 %div.2.i.i, -65536
  %sub.2.i.i = add nsw i32 %mul.neg.2.i.i, %mul2.1.i.i
  %mul2.2.i.i = mul nsw i32 %sub.2.i.i, 10
  %div.3.i.i = sdiv i32 %mul2.2.i.i, 65536
  %mul5.3.i.i.neg = mul nsw i32 %div.3.i.i, -10
  %mul.neg.3.i.i = mul nsw i32 %div.3.i.i, -65536
  %sub.3.i.i = add nsw i32 %mul.neg.3.i.i, %mul2.2.i.i
  %mul2.3.i.i = mul i32 %sub.3.i.i, 10
  %div.4.i.i.neg = sdiv i32 %mul2.3.i.i, -65536
  %shr.i.i = ashr i32 %sub.i128, 16
  %mul.i129.neg = mul nsw i32 %shr.i.i, -10000
  %add.2.i.i.neg = add nsw i32 %mul5.1.i.i.neg, %mul.i129.neg
  %add.3.i.i.neg = add nsw i32 %add.2.i.i.neg, %mul5.2.i.i.neg
  %add.4.i.i.neg = add nsw i32 %add.3.i.i.neg, %mul5.3.i.i.neg
  %add.i.i.neg = add nsw i32 %add.4.i.i.neg, %div.4.i.i.neg
  %cmp66.not = icmp eq i32 %add.i.i153.neg, %add.i.i.neg
  br i1 %cmp66.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %fDivide.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.sroa.0.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %sub.i128, %fDivide.exit.cleanup_crit_edge ], [ %sub.i128, %do.cond.cleanup_crit_edge ]
  ret i32 %retval.sroa.0.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SolveQuadracticEqn([1 x i32] %A.coerce, [1 x i32] %B.coerce, [1 x i32] %C.coerce, ptr nocapture noundef writeonly %Roots) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %A.coerce.fca.0.extract = extractvalue [1 x i32] %A.coerce, 0
  %B.coerce.fca.0.extract = extractvalue [1 x i32] %B.coerce, 0
  %C.coerce.fca.0.extract = extractvalue [1 x i32] %C.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %A.coerce.fca.0.extract)
  %cmp.i247 = icmp sgt i32 %A.coerce.fca.0.extract, 6553600
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %B.coerce.fca.0.extract)
  %cmp.i196248 = icmp sgt i32 %B.coerce.fca.0.extract, 6553600
  %or.cond249 = select i1 %cmp.i247, i1 true, i1 %cmp.i196248
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %C.coerce.fca.0.extract)
  %cmp.i197250 = icmp sgt i32 %C.coerce.fca.0.extract, 6553600
  %or.cond246251 = select i1 %or.cond249, i1 true, i1 %cmp.i197250
  br i1 %or.cond246251, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %A.sroa.0.0254 = phi i32 [ %conv8.i, %while.body.while.body_crit_edge ], [ %A.coerce.fca.0.extract, %entry.while.body_crit_edge ]
  %B.sroa.0.0253 = phi i32 [ %conv8.i201, %while.body.while.body_crit_edge ], [ %B.coerce.fca.0.extract, %entry.while.body_crit_edge ]
  %C.sroa.0.0252 = phi i32 [ %conv8.i205, %while.body.while.body_crit_edge ], [ %C.coerce.fca.0.extract, %entry.while.body_crit_edge ]
  %conv.i = sext i32 %A.sroa.0.0254 to i64
  %shl.i = shl nsw i64 %conv.i, 16
  %call7.i = tail call i64 @div64_s64(i64 noundef %shl.i, i64 noundef 655360) #5
  %conv8.i = trunc i64 %shl.i to i32
  %conv.i198 = sext i32 %B.sroa.0.0253 to i64
  %shl.i199 = shl nsw i64 %conv.i198, 16
  %call7.i200 = tail call i64 @div64_s64(i64 noundef %shl.i199, i64 noundef 655360) #5
  %conv8.i201 = trunc i64 %shl.i199 to i32
  %conv.i202 = sext i32 %C.sroa.0.0252 to i64
  %shl.i203 = shl nsw i64 %conv.i202, 16
  %call7.i204 = tail call i64 @div64_s64(i64 noundef %shl.i203, i64 noundef 655360) #5
  %conv8.i205 = trunc i64 %shl.i203 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %conv8.i)
  %cmp.i = icmp sgt i32 %conv8.i, 6553600
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %conv8.i201)
  %cmp.i196 = icmp sgt i32 %conv8.i201, 6553600
  %or.cond = or i1 %cmp.i, %cmp.i196
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %conv8.i205)
  %cmp.i197 = icmp sgt i32 %conv8.i205, 6553600
  %or.cond246 = or i1 %or.cond, %cmp.i197
  br i1 %or.cond246, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i.le = trunc i64 %shl.i to i32
  %conv8.i201.le = trunc i64 %shl.i199 to i32
  %conv8.i205.le = trunc i64 %shl.i203 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %C.sroa.0.0.lcssa = phi i32 [ %C.coerce.fca.0.extract, %entry.while.end_crit_edge ], [ %conv8.i205.le, %while.end.loopexit ]
  %B.sroa.0.0.lcssa = phi i32 [ %B.coerce.fca.0.extract, %entry.while.end_crit_edge ], [ %conv8.i201.le, %while.end.loopexit ]
  %A.sroa.0.0.lcssa = phi i32 [ %A.coerce.fca.0.extract, %entry.while.end_crit_edge ], [ %conv8.i.le, %while.end.loopexit ]
  %0 = shl i32 %A.sroa.0.0.lcssa, 2
  %conv.i206 = sext i32 %0 to i64
  %conv2.i207 = sext i32 %C.sroa.0.0.lcssa to i64
  %mul.i208 = mul nsw i64 %conv.i206, %conv2.i207
  %1 = lshr i64 %mul.i208, 16
  %conv3.i209 = trunc i64 %1 to i32
  %conv.i.i = sext i32 %B.sroa.0.0.lcssa to i64
  %mul.i.i = mul nsw i64 %conv.i.i, %conv.i.i
  %2 = lshr i64 %mul.i.i, 16
  %conv3.i.i = trunc i64 %2 to i32
  %sub.i = sub i32 %conv3.i.i, %conv3.i209
  %.fca.0.insert141 = insertvalue [1 x i32] poison, i32 %sub.i, 0
  %call54 = tail call fastcc i32 @fSqrt([1 x i32] %.fca.0.insert141)
  %mul.i.i211 = mul i64 %conv.i.i, 281474976645120
  %3 = lshr exact i64 %mul.i.i211, 16
  %conv3.i.i212 = trunc i64 %3 to i32
  %sub.i213 = sub i32 %conv3.i.i212, %call54
  %add.i = add i32 %call54, %conv3.i.i212
  %conv.i217 = sext i32 %sub.i213 to i64
  %shl.i218 = shl nsw i64 %conv.i217, 16
  %call7.i219 = tail call i64 @div64_s64(i64 noundef %shl.i218, i64 noundef 131072) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %A.sroa.0.0.lcssa)
  %cmp.i.i = icmp eq i32 %A.sroa.0.0.lcssa, 0
  br i1 %cmp.i.i, label %fDivide.exit.thread, label %if.end.i237

fDivide.exit.thread:                              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i225241 = sext i32 %add.i to i64
  %shl.i226242 = shl nsw i64 %conv.i225241, 16
  %call7.i227243 = tail call i64 @div64_s64(i64 noundef %shl.i226242, i64 noundef 131072) #5
  br label %fDivide.exit239

if.end.i237:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i = sext i32 %A.sroa.0.0.lcssa to i64
  %4 = shl i64 %conv.i217, 48
  %shl.i222 = ashr exact i64 %4, 16
  %call7.i223 = tail call i64 @div64_s64(i64 noundef %shl.i222, i64 noundef %conv2.i) #5
  %conv.i225 = sext i32 %add.i to i64
  %shl.i226 = shl nsw i64 %conv.i225, 16
  %call7.i227 = tail call i64 @div64_s64(i64 noundef %shl.i226, i64 noundef 131072) #5
  %5 = shl i64 %conv.i225, 48
  %shl.i234 = ashr exact i64 %5, 16
  %call7.i235 = tail call i64 @div64_s64(i64 noundef %shl.i234, i64 noundef %conv2.i) #5
  br label %fDivide.exit239

fDivide.exit239:                                  ; preds = %if.end.i237, %fDivide.exit.thread
  %6 = ptrtoint ptr %Roots to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %Roots, align 4
  %add.ptr100 = getelementptr %union._fInt, ptr %Roots, i32 1
  %7 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %add.ptr100, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fExponential([1 x i32] %exponent.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %exponent.coerce.fca.0.extract = extractvalue [1 x i32] %exponent.coerce, 0
  %call7.i.i = tail call i64 @div64_s64(i64 noundef 335007449088, i64 noundef 655360000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exponent.coerce.fca.0.extract)
  %cmp.i = icmp slt i32 %exponent.coerce.fca.0.extract, 0
  br i1 %cmp.i, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %conv.i.i = sext i32 %exponent.coerce.fca.0.extract to i64
  %mul.i.i = mul i64 %conv.i.i, 281474976645120
  %0 = lshr exact i64 %mul.i.i, 16
  %conv3.i.i = trunc i64 %0 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i.i)
  %cmp.i103 = icmp sgt i32 %conv3.i.i, 0
  br i1 %cmp.i103, label %if.end.for.cond.preheader.preheader_crit_edge, label %if.then50

if.end.for.cond.preheader.preheader_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader.preheader

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exponent.coerce.fca.0.extract)
  %cmp.i103233.not = icmp eq i32 %exponent.coerce.fca.0.extract, 0
  br i1 %cmp.i103233.not, label %if.end.thread.if.end56_crit_edge, label %if.end.thread.for.cond.preheader.preheader_crit_edge

if.end.thread.for.cond.preheader.preheader_crit_edge: ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader.preheader

if.end.thread.if.end56_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

for.cond.preheader.preheader:                     ; preds = %if.end.thread.for.cond.preheader.preheader_crit_edge, %if.end.for.cond.preheader.preheader_crit_edge
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.inc.for.cond.preheader_crit_edge, %for.cond.preheader.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0221 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [11 x i32], ptr @fExponential.k_array, i32 0, i32 %i.0221
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = tail call i32 @llvm.abs.i32(i32 %2, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %3)
  %cmp5.i = icmp sgt i32 %3, 32767
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.i139.critedge

if.then7.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680000, i32 %3)
  %cmp8.i = icmp ult i32 %3, 327680000
  br i1 %cmp8.i, label %if.then7.i.while.cond.i_crit_edge, label %if.then7.i.GetScaledFraction.exit141_crit_edge

if.then7.i.GetScaledFraction.exit141_crit_edge:   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %GetScaledFraction.exit141

if.then7.i.while.cond.i_crit_edge:                ; preds = %if.then7.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then7.i.while.cond.i_crit_edge
  %X.addr.1.i = phi i32 [ %shr69.i, %while.cond.i.while.cond.i_crit_edge ], [ %3, %if.then7.i.while.cond.i_crit_edge ]
  %cmp10.i = icmp sgt i32 %X.addr.1.i, 32767
  %shr69.i = lshr i32 %X.addr.1.i, 1
  br i1 %cmp10.i, label %while.cond.i.while.cond.i_crit_edge, label %if.then20

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

if.then20:                                        ; preds = %while.cond.i
  %shl.i62.i = shl i32 %X.addr.1.i, 16
  %conv.i.i104 = sext i32 %shl.i62.i to i64
  %shl.i67.i = shl nsw i64 %conv.i.i104, 16
  %call7.i.i105 = tail call i64 @div64_s64(i64 noundef %shl.i67.i, i64 noundef 655360000) #5
  br i1 %cmp5.i, label %if.then7.i110, label %if.then20.if.end.i.i139_crit_edge

if.then20.if.end.i.i139_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i139

if.then7.i110:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680000, i32 %3)
  %cmp8.i109 = icmp ult i32 %3, 327680000
  br i1 %cmp8.i109, label %if.then7.i110.while.cond.i114_crit_edge, label %if.then7.i110.GetScaledFraction.exit141_crit_edge

if.then7.i110.GetScaledFraction.exit141_crit_edge: ; preds = %if.then7.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %GetScaledFraction.exit141

if.then7.i110.while.cond.i114_crit_edge:          ; preds = %if.then7.i110
  br label %while.cond.i114

while.cond.i114:                                  ; preds = %while.cond.i114.while.cond.i114_crit_edge, %if.then7.i110.while.cond.i114_crit_edge
  %X.addr.1.i111 = phi i32 [ %shr69.i113, %while.cond.i114.while.cond.i114_crit_edge ], [ %3, %if.then7.i110.while.cond.i114_crit_edge ]
  %cmp10.i112 = icmp sgt i32 %X.addr.1.i111, 32767
  %shr69.i113 = lshr i32 %X.addr.1.i111, 1
  br i1 %cmp10.i112, label %while.cond.i114.while.cond.i114_crit_edge, label %while.cond.i114.if.end.i.i139_crit_edge

while.cond.i114.if.end.i.i139_crit_edge:          ; preds = %while.cond.i114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i139

while.cond.i114.while.cond.i114_crit_edge:        ; preds = %while.cond.i114
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i114

if.end.i.i139.critedge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i62.i.c = shl i32 %3, 16
  %conv.i.i104.c = sext i32 %shl.i62.i.c to i64
  %shl.i67.i.c = shl nsw i64 %conv.i.i104.c, 16
  %call7.i.i105.c = tail call i64 @div64_s64(i64 noundef %shl.i67.i.c, i64 noundef 655360000) #5
  br label %if.end.i.i139

if.end.i.i139:                                    ; preds = %if.end.i.i139.critedge, %while.cond.i114.if.end.i.i139_crit_edge, %if.then20.if.end.i.i139_crit_edge
  %X.addr.2.i121200205 = phi i32 [ %3, %if.then20.if.end.i.i139_crit_edge ], [ %3, %if.end.i.i139.critedge ], [ %X.addr.1.i111, %while.cond.i114.if.end.i.i139_crit_edge ]
  %shl.i62.i133 = shl i32 %X.addr.2.i121200205, 16
  %conv.i.i135 = sext i32 %shl.i62.i133 to i64
  %shl.i67.i137 = shl nsw i64 %conv.i.i135, 16
  %call7.i.i138 = tail call i64 @div64_s64(i64 noundef %shl.i67.i137, i64 noundef 655360000) #5
  br label %GetScaledFraction.exit141

GetScaledFraction.exit141:                        ; preds = %if.end.i.i139, %if.then7.i110.GetScaledFraction.exit141_crit_edge, %if.then7.i.GetScaledFraction.exit141_crit_edge
  %arrayidx32 = getelementptr [11 x i32], ptr @fExponential.expk_array, i32 0, i32 %i.0221
  %4 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx32, align 4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %6)
  %cmp5.i142 = icmp sgt i32 %6, 32767
  br i1 %cmp5.i142, label %if.then7.i145, label %GetScaledFraction.exit141.if.end.i.i174_crit_edge

GetScaledFraction.exit141.if.end.i.i174_crit_edge: ; preds = %GetScaledFraction.exit141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i174

if.then7.i145:                                    ; preds = %GetScaledFraction.exit141
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680000, i32 %6)
  %cmp8.i144 = icmp ult i32 %6, 327680000
  br i1 %cmp8.i144, label %if.then7.i145.while.cond.i149_crit_edge, label %if.then7.i145.for.inc_crit_edge

if.then7.i145.for.inc_crit_edge:                  ; preds = %if.then7.i145
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then7.i145.while.cond.i149_crit_edge:          ; preds = %if.then7.i145
  br label %while.cond.i149

while.cond.i149:                                  ; preds = %while.cond.i149.while.cond.i149_crit_edge, %if.then7.i145.while.cond.i149_crit_edge
  %X.addr.1.i146 = phi i32 [ %shr69.i148, %while.cond.i149.while.cond.i149_crit_edge ], [ %6, %if.then7.i145.while.cond.i149_crit_edge ]
  %cmp10.i147 = icmp sgt i32 %X.addr.1.i146, 32767
  %shr69.i148 = lshr i32 %X.addr.1.i146, 1
  br i1 %cmp10.i147, label %while.cond.i149.while.cond.i149_crit_edge, label %while.cond.i149.if.end.i.i174_crit_edge

while.cond.i149.if.end.i.i174_crit_edge:          ; preds = %while.cond.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i174

while.cond.i149.while.cond.i149_crit_edge:        ; preds = %while.cond.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i149

if.end.i.i174:                                    ; preds = %while.cond.i149.if.end.i.i174_crit_edge, %GetScaledFraction.exit141.if.end.i.i174_crit_edge
  %X.addr.2.i156211216 = phi i32 [ %6, %GetScaledFraction.exit141.if.end.i.i174_crit_edge ], [ %X.addr.1.i146, %while.cond.i149.if.end.i.i174_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %X.addr.2.i156211216)
  %cmp.i61.i167 = icmp slt i32 %X.addr.2.i156211216, 32768
  %shl.i62.i168 = shl i32 %X.addr.2.i156211216, 16
  %retval.sroa.0.0.i63.i169 = select i1 %cmp.i61.i167, i32 %shl.i62.i168, i32 0
  %conv.i.i170 = sext i32 %retval.sroa.0.0.i63.i169 to i64
  %shl.i67.i172 = shl nsw i64 %conv.i.i170, 16
  %call7.i.i173 = tail call i64 @div64_s64(i64 noundef %shl.i67.i172, i64 noundef 655360000) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i174, %if.then7.i145.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0221, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.inc.for.cond.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.cond.preheader_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.then50:                                        ; preds = %if.end
  %add.i = add nsw i32 %conv3.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.i.i181 = icmp eq i32 %add.i, 0
  br i1 %cmp.i.i181, label %if.then50.if.end56_crit_edge, label %if.end.i

if.then50.if.end56_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.end.i:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i = sext i32 %add.i to i64
  %call7.i = tail call i64 @div64_s64(i64 noundef 4294967296, i64 noundef %conv6.i) #5
  br label %if.end56

if.end56:                                         ; preds = %if.end.i, %if.then50.if.end56_crit_edge, %if.end.thread.if.end56_crit_edge
  %retval.sroa.0.3 = phi i32 [ 0, %if.then50.if.end56_crit_edge ], [ 0, %if.end.i ], [ 65536, %if.end.thread.if.end56_crit_edge ]
  ret i32 %retval.sroa.0.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_voltage_evv_on_sclk(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %voltage_type, i32 noundef %sclk, i16 noundef zeroext %virtual_voltage_Id, ptr nocapture noundef writeonly %voltage) local_unnamed_addr #0 align 64 {
entry:
  %get_voltage_info_param_space = alloca %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %get_voltage_info_param_space) #5
  %2 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2, ptr %get_voltage_info_param_space, i32 0, i32 1
  %3 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2, ptr %get_voltage_info_param_space, i32 0, i32 2
  %4 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2, ptr %get_voltage_info_param_space, i32 0, i32 3
  %5 = ptrtoint ptr %get_voltage_info_param_space to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %voltage_type, ptr %get_voltage_info_param_space, align 2
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 9, ptr %2, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %virtual_voltage_Id)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %3, align 2
  %9 = tail call i32 @llvm.bswap.i32(i32 %sclk)
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %4, align 2
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %11 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %12, i32 noundef 80, ptr noundef nonnull %get_voltage_info_param_space) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %get_voltage_info_param_space to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %get_voltage_info_param_space, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i16 [ %15, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %16 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %cond, ptr %voltage, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %get_voltage_info_param_space) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_voltage_evv(ptr nocapture noundef readonly %hwmgr, i16 noundef zeroext %virtual_voltage_id, ptr nocapture noundef writeonly %voltage) local_unnamed_addr #0 align 64 {
entry:
  %get_voltage_info_param_space = alloca %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %get_voltage_info_param_space) #5
  %2 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2, ptr %get_voltage_info_param_space, i32 0, i32 1
  %3 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2, ptr %get_voltage_info_param_space, i32 0, i32 2
  %4 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2, ptr %get_voltage_info_param_space, i32 0, i32 3
  %dyn_state = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %5 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dyn_state, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp44.not = icmp eq i32 %8, 0
  br i1 %cmp44.not, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i16 %virtual_voltage_id to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry_id.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %v = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %entry_id.045, i32 1
  %9 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp4 = icmp eq i32 %10, %conv
  br i1 %cmp4, label %if.end16, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %entry_id.045, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atomctrl_get_voltage_evv.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atomctrl_get_voltage_evv, %if.then14)) #5
          to label %cleanup [label %if.then14], !srcloc !91

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atomctrl_get_voltage_evv.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.21) #5
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %11 = ptrtoint ptr %get_voltage_info_param_space to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %get_voltage_info_param_space, align 2
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %2, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %virtual_voltage_id, ptr %3, align 2
  %arrayidx20 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %entry_id.045
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %4, align 2
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %18 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mode_info, align 8
  %call21 = call i32 @amdgpu_atom_execute_table(ptr noundef %19, i32 noundef 80, ptr noundef nonnull %get_voltage_info_param_space) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end25, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %get_voltage_info_param_space to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %get_voltage_info_param_space, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %23 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %voltage, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end16.cleanup_crit_edge, %if.then14, %do.body
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %if.then14 ], [ %call21, %if.end16.cleanup_crit_edge ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %get_voltage_info_param_space) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_mpll_reference_clock(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #5
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #5
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %size, align 2, !annotation !90
  %3 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmgr, align 4
  %call = call ptr @smu_atom_get_data_table(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.else:                                          ; preds = %entry
  %ucTableFormatRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %ucTableFormatRevision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ucTableFormatRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp1 = icmp eq i8 %6, 2
  br i1 %cmp1, label %land.lhs.true, label %if.else.if.else8_crit_edge

if.else.if.else8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else8

land.lhs.true:                                    ; preds = %if.else
  %7 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %call, align 1
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 91, i16 %9)
  %cmp4 = icmp ugt i16 %9, 91
  br i1 %cmp4, label %if.then6, label %land.lhs.true.if.else8_crit_edge

land.lhs.true.if.else8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %usMemoryReferenceClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %call, i32 0, i32 30
  br label %if.end10.sink.split

if.else8:                                         ; preds = %land.lhs.true.if.else8_crit_edge, %if.else.if.else8_crit_edge
  %usReferenceClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %call, i32 0, i32 25
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.else8, %if.then6
  %usMemoryReferenceClock.sink = phi ptr [ %usMemoryReferenceClock, %if.then6 ], [ %usReferenceClock, %if.else8 ]
  %10 = ptrtoint ptr %usMemoryReferenceClock.sink to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %usMemoryReferenceClock.sink, align 1
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %phi.cast = zext i16 %12 to i32
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %entry.if.end10_crit_edge
  %clock.0.shrunk = phi i32 [ 2700, %entry.if.end10_crit_edge ], [ %phi.cast, %if.end10.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #5
  ret i32 %clock.0.shrunk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @atomctrl_is_asic_internal_ss_supported(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #5
  %2 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #5
  %3 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #5
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size.i, align 2, !annotation !90
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 26, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #5
  %tobool.not = icmp ne ptr %call.i, null
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_memory_clock_spread_spectrum(ptr nocapture noundef readonly %hwmgr, i32 noundef %memory_clock, ptr nocapture noundef %ssInfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @asic_internal_ss_get_ss_asignment(ptr noundef %hwmgr, i8 noundef zeroext 1, i32 noundef %memory_clock, ptr noundef %ssInfo)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asic_internal_ss_get_ss_asignment(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %clockSource, i32 noundef %clockSpeed, ptr nocapture noundef %ssEntry) unnamed_addr #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ssEntry, i32 0, i32 12)
  %1 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #5
  %3 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %frev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #5
  %4 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %crev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #5
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %size.i, align 2, !annotation !90
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %2, i32 noundef 26, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.ptr.rhs.cast = ptrtoint ptr %call.i to i32
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %call.i, align 1
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp163 = icmp ugt i16 %8, 4
  br i1 %cmp163, label %while.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  %asSpreadSpectrum = getelementptr inbounds %struct._ATOM_ASIC_INTERNAL_SS_INFO, ptr %call.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.body.preheader
  %ssInfo.064 = phi ptr [ %add.ptr, %if.end10.while.body_crit_edge ], [ %asSpreadSpectrum, %while.body.preheader ]
  %ucClockIndication = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ssInfo.064, i32 0, i32 3
  %9 = ptrtoint ptr %ucClockIndication to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ucClockIndication, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %clockSource)
  %cmp5 = icmp eq i8 %10, %clockSource
  br i1 %cmp5, label %land.lhs.true, label %while.body.if.end10_crit_edge

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true:                                    ; preds = %while.body
  %11 = ptrtoint ptr %ssInfo.064 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %ssInfo.064, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %clockSpeed)
  %cmp7.not = icmp ult i32 %13, %clockSpeed
  br i1 %cmp7.not, label %land.lhs.true.if.end10_crit_edge, label %if.then11

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %while.body.if.end10_crit_edge
  %add.ptr = getelementptr i8, ptr %ssInfo.064, i32 12
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp slt i32 %sub.ptr.sub, %conv
  br i1 %cmp1, label %if.end10.while.body_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.then11:                                        ; preds = %land.lhs.true
  %usSpreadSpectrumPercentage = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ssInfo.064, i32 0, i32 1
  %14 = ptrtoint ptr %usSpreadSpectrumPercentage to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usSpreadSpectrumPercentage, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv12 = zext i16 %16 to i32
  %17 = ptrtoint ptr %ssEntry to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv12, ptr %ssEntry, align 4
  %usSpreadRateInKhz = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ssInfo.064, i32 0, i32 2
  %18 = ptrtoint ptr %usSpreadRateInKhz to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %usSpreadRateInKhz, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %conv13 = zext i16 %20 to i32
  %speed_spectrum_rate = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ssEntry, i32 0, i32 1
  %21 = ptrtoint ptr %speed_spectrum_rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv13, ptr %speed_spectrum_rate, align 4
  %ucTableFormatRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %ucTableFormatRevision to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ucTableFormatRevision, align 1
  %trunc = trunc i8 %23 to i6
  %24 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.25)
  switch i6 %trunc, label %if.then11.if.end29_crit_edge [
    i6 2, label %land.lhs.true17
    i6 3, label %if.then11.if.then27_crit_edge
  ]

if.then11.if.then27_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

if.then11.if.end29_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.lhs.true17:                                  ; preds = %if.then11
  %ucTableContentRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %ucTableContentRevision to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ucTableContentRevision, align 1
  %27 = and i8 %26, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp20.not = icmp eq i8 %27, 0
  br i1 %cmp20.not, label %land.lhs.true17.if.end29_crit_edge, label %land.lhs.true17.if.then27_crit_edge

land.lhs.true17.if.then27_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

land.lhs.true17.if.end29_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then27:                                        ; preds = %land.lhs.true17.if.then27_crit_edge, %if.then11.if.then27_crit_edge
  %div58 = udiv i16 %20, 100
  %div.zext = zext i16 %div58 to i32
  %28 = ptrtoint ptr %speed_spectrum_rate to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.zext, ptr %speed_spectrum_rate, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true17.if.end29_crit_edge, %if.then11.if.end29_crit_edge
  %ucSpreadSpectrumMode = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ssInfo.064, i32 0, i32 4
  %29 = ptrtoint ptr %ucSpreadSpectrumMode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ucSpreadSpectrumMode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %switch.selectcmp = icmp eq i8 %30, 1
  %switch.select71 = zext i1 %switch.selectcmp to i32
  %speed_spectrum_mode33 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ssEntry, i32 0, i32 2
  %31 = ptrtoint ptr %speed_spectrum_mode33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %switch.select71, ptr %speed_spectrum_mode33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end29 ], [ 1, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_engine_clock_spread_spectrum(ptr nocapture noundef readonly %hwmgr, i32 noundef %engine_clock, ptr nocapture noundef %ssInfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @asic_internal_ss_get_ss_asignment(ptr noundef %hwmgr, i8 noundef zeroext 2, i32 noundef %engine_clock, ptr noundef %ssInfo)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_read_efuse(ptr nocapture noundef readonly %hwmgr, i16 noundef zeroext %start_index, i16 noundef zeroext %end_index, ptr nocapture noundef writeonly %efuse) local_unnamed_addr #0 align 64 {
entry:
  %efuse_param = alloca %union._READ_EFUSE_VALUE_PARAMETER, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %efuse_param) #5
  %conv = zext i16 %end_index to i32
  %conv2 = zext i16 %start_index to i32
  %sub = sub nsw i32 %conv, %conv2
  %2 = lshr i16 %start_index, 3
  %mul = and i16 %2, 8188
  %3 = tail call i16 @llvm.bswap.i16(i16 %mul)
  %4 = ptrtoint ptr %efuse_param to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %efuse_param, align 4
  %5 = trunc i16 %start_index to i8
  %conv15 = and i8 %5, 31
  %ucBitShift = getelementptr inbounds %struct._EFUSE_INPUT_PARAMETER, ptr %efuse_param, i32 0, i32 1
  %6 = ptrtoint ptr %ucBitShift to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv15, ptr %ucBitShift, align 2
  %7 = trunc i32 %sub to i8
  %conv20 = add i8 %7, 1
  %ucBitLength = getelementptr inbounds %struct._EFUSE_INPUT_PARAMETER, ptr %efuse_param, i32 0, i32 2
  %8 = ptrtoint ptr %ucBitLength to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv20, ptr %ucBitLength, align 1
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %9 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %10, i32 noundef 69, ptr noundef nonnull %efuse_param) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub)
  %cmp = icmp eq i32 %sub, 31
  %add = add nsw i32 %sub, 1
  %notmask = shl nsw i32 -1, %add
  %sub7 = xor i32 %notmask, -1
  %mask.0 = select i1 %cmp, i32 -1, i32 %sub7
  %11 = ptrtoint ptr %efuse_param to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %efuse_param, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %and = and i32 %13, %mask.0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %and, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %14 = ptrtoint ptr %efuse to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %efuse, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %efuse_param) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_set_ac_timing_ai(ptr nocapture noundef readonly %hwmgr, i32 noundef %memory_clock, i8 noundef zeroext %level) local_unnamed_addr #0 align 64 {
entry:
  %memory_clock_parameters = alloca %union._DYNAMICE_MEMORY_SETTINGS_PARAMETER_V2_1, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %memory_clock_parameters) #5
  %2 = getelementptr inbounds %struct._DYNAMICE_MEMORY_SETTINGS_PARAMETER, ptr %memory_clock_parameters, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !90
  %4 = getelementptr inbounds %struct._DYNAMICE_MEMORY_SETTINGS_PARAMETER, ptr %memory_clock_parameters, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !90
  %and = and i32 %memory_clock, 16777215
  %bf.set5 = or i32 %and, 50331648
  %6 = ptrtoint ptr %memory_clock_parameters to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bf.set5, ptr %memory_clock_parameters, align 4
  store i8 %level, ptr %2, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %8, i32 noundef 63, ptr noundef nonnull %memory_clock_parameters) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %memory_clock_parameters) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_voltage_evv_on_sclk_ai(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %voltage_type, i32 noundef %sclk, i16 noundef zeroext %virtual_voltage_Id, ptr nocapture noundef writeonly %voltage) local_unnamed_addr #0 align 64 {
entry:
  %get_voltage_info_param_space = alloca %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_3, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %get_voltage_info_param_space) #5
  %2 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_3, ptr %get_voltage_info_param_space, i32 0, i32 1
  %3 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_3, ptr %get_voltage_info_param_space, i32 0, i32 2
  %4 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_3, ptr %get_voltage_info_param_space, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %get_voltage_info_param_space, i32 8
  %6 = call ptr @memset(ptr %5, i32 255, i32 12)
  %7 = ptrtoint ptr %get_voltage_info_param_space to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %voltage_type, ptr %get_voltage_info_param_space, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 9, ptr %2, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %virtual_voltage_Id)
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %3, align 2
  %11 = tail call i32 @llvm.bswap.i32(i32 %sclk)
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %4, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %13 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %14, i32 noundef 80, ptr noundef nonnull %get_voltage_info_param_space) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %get_voltage_info_param_space to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %get_voltage_info_param_space, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %17, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %18 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %voltage, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %get_voltage_info_param_space) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_smc_sclk_range_table(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %table) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #5
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #5
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %size, align 2, !annotation !90
  %3 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmgr, align 4
  %call = call ptr @smu_atom_get_data_table(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #5
  %ucSclkEntryNum = getelementptr inbounds %struct._ATOM_SMU_INFO_V2_1, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %ucSclkEntryNum to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ucSclkEntryNum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp43.not = icmp eq i8 %6, 0
  br i1 %cmp43.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ucVco_setting = getelementptr %struct._ATOM_SMU_INFO_V2_1, ptr %call, i32 0, i32 5, i32 %i.044, i32 1
  %7 = ptrtoint ptr %ucVco_setting to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ucVco_setting, align 1
  %arrayidx3 = getelementptr [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %table, i32 0, i32 %i.044
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx3, align 2
  %ucPostdiv = getelementptr %struct._ATOM_SMU_INFO_V2_1, ptr %call, i32 0, i32 5, i32 %i.044, i32 2
  %10 = ptrtoint ptr %ucPostdiv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ucPostdiv, align 1
  %ucPostdiv9 = getelementptr [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %table, i32 0, i32 %i.044, i32 1
  %12 = ptrtoint ptr %ucPostdiv9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %ucPostdiv9, align 1
  %ucFcw_pcc = getelementptr %struct._ATOM_SMU_INFO_V2_1, ptr %call, i32 0, i32 5, i32 %i.044, i32 3
  %13 = ptrtoint ptr %ucFcw_pcc to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %ucFcw_pcc, align 1
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %usFcw_pcc = getelementptr [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %table, i32 0, i32 %i.044, i32 2
  %16 = ptrtoint ptr %usFcw_pcc to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %usFcw_pcc, align 2
  %ucFcw_trans_upper = getelementptr %struct._ATOM_SMU_INFO_V2_1, ptr %call, i32 0, i32 5, i32 %i.044, i32 4
  %17 = ptrtoint ptr %ucFcw_trans_upper to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %ucFcw_trans_upper, align 1
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %usFcw_trans_upper = getelementptr [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %table, i32 0, i32 %i.044, i32 3
  %20 = ptrtoint ptr %usFcw_trans_upper to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %usFcw_trans_upper, align 2
  %ucRcw_trans_lower = getelementptr %struct._ATOM_SMU_INFO_V2_1, ptr %call, i32 0, i32 5, i32 %i.044, i32 5
  %21 = ptrtoint ptr %ucRcw_trans_lower to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %ucRcw_trans_lower, align 1
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %usRcw_trans_lower = getelementptr [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %table, i32 0, i32 %i.044, i32 4
  %24 = ptrtoint ptr %usRcw_trans_lower to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %usRcw_trans_lower, align 2
  %inc = add nuw nsw i32 %i.044, 1
  %25 = ptrtoint ptr %ucSclkEntryNum to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ucSclkEntryNum, align 1
  %conv = zext i8 %26 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_vddc_shared_railinfo(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %shared_rail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 8, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ucSharePowerSource = getelementptr inbounds %struct._ATOM_SMU_INFO_V2_1, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %ucSharePowerSource to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ucSharePowerSource, align 1
  %4 = ptrtoint ptr %shared_rail to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %shared_rail, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_avfs_information(ptr nocapture noundef readonly %hwmgr, ptr noundef writeonly %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %param, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 31, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ulAVFS_meanNsigma_Acontant0 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 41
  %2 = ptrtoint ptr %ulAVFS_meanNsigma_Acontant0 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ulAVFS_meanNsigma_Acontant0, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %param, align 4
  %ulAVFS_meanNsigma_Acontant1 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 42
  %6 = ptrtoint ptr %ulAVFS_meanNsigma_Acontant1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ulAVFS_meanNsigma_Acontant1, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %ulAVFS_meanNsigma_Acontant14 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 1
  %9 = ptrtoint ptr %ulAVFS_meanNsigma_Acontant14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ulAVFS_meanNsigma_Acontant14, align 4
  %ulAVFS_meanNsigma_Acontant2 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 43
  %10 = ptrtoint ptr %ulAVFS_meanNsigma_Acontant2 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %ulAVFS_meanNsigma_Acontant2, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %ulAVFS_meanNsigma_Acontant25 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 2
  %13 = ptrtoint ptr %ulAVFS_meanNsigma_Acontant25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ulAVFS_meanNsigma_Acontant25, align 4
  %usAVFS_meanNsigma_DC_tol_sigma = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 44
  %14 = ptrtoint ptr %usAVFS_meanNsigma_DC_tol_sigma to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usAVFS_meanNsigma_DC_tol_sigma, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %usAVFS_meanNsigma_DC_tol_sigma6 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 3
  %17 = ptrtoint ptr %usAVFS_meanNsigma_DC_tol_sigma6 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %usAVFS_meanNsigma_DC_tol_sigma6, align 4
  %usAVFS_meanNsigma_Platform_mean = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 45
  %18 = ptrtoint ptr %usAVFS_meanNsigma_Platform_mean to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %usAVFS_meanNsigma_Platform_mean, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %usAVFS_meanNsigma_Platform_mean7 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 4
  %21 = ptrtoint ptr %usAVFS_meanNsigma_Platform_mean7 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %usAVFS_meanNsigma_Platform_mean7, align 2
  %usAVFS_meanNsigma_Platform_sigma = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 46
  %22 = ptrtoint ptr %usAVFS_meanNsigma_Platform_sigma to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usAVFS_meanNsigma_Platform_sigma, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %usAVFS_meanNsigma_Platform_sigma8 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 5
  %25 = ptrtoint ptr %usAVFS_meanNsigma_Platform_sigma8 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %usAVFS_meanNsigma_Platform_sigma8, align 4
  %ulGB_VDROOP_TABLE_CKSOFF_a0 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 47
  %26 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a0 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a0, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %ulGB_VDROOP_TABLE_CKSOFF_a09 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 6
  %29 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a09 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ulGB_VDROOP_TABLE_CKSOFF_a09, align 4
  %ulGB_VDROOP_TABLE_CKSOFF_a1 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 48
  %30 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a1 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a1, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %ulGB_VDROOP_TABLE_CKSOFF_a110 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 7
  %33 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a110 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a110, align 4
  %ulGB_VDROOP_TABLE_CKSOFF_a2 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 49
  %34 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a2 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a2, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %ulGB_VDROOP_TABLE_CKSOFF_a211 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 8
  %37 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a211 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ulGB_VDROOP_TABLE_CKSOFF_a211, align 4
  %ulGB_VDROOP_TABLE_CKSON_a0 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 50
  %38 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a0 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %ulGB_VDROOP_TABLE_CKSON_a0, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %ulGB_VDROOP_TABLE_CKSON_a012 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 9
  %41 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a012 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ulGB_VDROOP_TABLE_CKSON_a012, align 4
  %ulGB_VDROOP_TABLE_CKSON_a1 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 51
  %42 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a1 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %ulGB_VDROOP_TABLE_CKSON_a1, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %ulGB_VDROOP_TABLE_CKSON_a113 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 10
  %45 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a113 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %ulGB_VDROOP_TABLE_CKSON_a113, align 4
  %ulGB_VDROOP_TABLE_CKSON_a2 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 52
  %46 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a2 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %ulGB_VDROOP_TABLE_CKSON_a2, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %ulGB_VDROOP_TABLE_CKSON_a214 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 11
  %49 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a214 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %ulGB_VDROOP_TABLE_CKSON_a214, align 4
  %ulAVFSGB_FUSE_TABLE_CKSOFF_m1 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 53
  %50 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %ulAVFSGB_FUSE_TABLE_CKSOFF_m115 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 12
  %53 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m115 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m115, align 4
  %usAVFSGB_FUSE_TABLE_CKSOFF_m2 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 54
  %54 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %usAVFSGB_FUSE_TABLE_CKSOFF_m216 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 13
  %57 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m216 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m216, align 4
  %ulAVFSGB_FUSE_TABLE_CKSOFF_b = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 55
  %58 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %ulAVFSGB_FUSE_TABLE_CKSOFF_b17 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 14
  %61 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b17 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b17, align 4
  %ulAVFSGB_FUSE_TABLE_CKSON_m1 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 56
  %62 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSON_m1 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSON_m1, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %ulAVFSGB_FUSE_TABLE_CKSON_m118 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 15
  %65 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSON_m118 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %ulAVFSGB_FUSE_TABLE_CKSON_m118, align 4
  %usAVFSGB_FUSE_TABLE_CKSON_m2 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 57
  %66 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSON_m2 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %usAVFSGB_FUSE_TABLE_CKSON_m2, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %usAVFSGB_FUSE_TABLE_CKSON_m219 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 16
  %69 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSON_m219 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %usAVFSGB_FUSE_TABLE_CKSON_m219, align 4
  %ulAVFSGB_FUSE_TABLE_CKSON_b = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 58
  %70 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSON_b to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSON_b, align 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %ulAVFSGB_FUSE_TABLE_CKSON_b20 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 17
  %73 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSON_b20 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ulAVFSGB_FUSE_TABLE_CKSON_b20, align 4
  %usMaxVoltage_0_25mv = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 59
  %74 = ptrtoint ptr %usMaxVoltage_0_25mv to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %usMaxVoltage_0_25mv, align 1
  %76 = tail call i16 @llvm.bswap.i16(i16 %75)
  %usMaxVoltage_0_25mv21 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 18
  %77 = ptrtoint ptr %usMaxVoltage_0_25mv21 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %usMaxVoltage_0_25mv21, align 4
  %ucEnableGB_VDROOP_TABLE_CKSOFF = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 60
  %78 = ptrtoint ptr %ucEnableGB_VDROOP_TABLE_CKSOFF to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %ucEnableGB_VDROOP_TABLE_CKSOFF, align 1
  %ucEnableGB_VDROOP_TABLE_CKSOFF22 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 19
  %80 = ptrtoint ptr %ucEnableGB_VDROOP_TABLE_CKSOFF22 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %ucEnableGB_VDROOP_TABLE_CKSOFF22, align 2
  %ucEnableGB_VDROOP_TABLE_CKSON = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 61
  %81 = ptrtoint ptr %ucEnableGB_VDROOP_TABLE_CKSON to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ucEnableGB_VDROOP_TABLE_CKSON, align 1
  %ucEnableGB_VDROOP_TABLE_CKSON23 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 20
  %83 = ptrtoint ptr %ucEnableGB_VDROOP_TABLE_CKSON23 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %ucEnableGB_VDROOP_TABLE_CKSON23, align 1
  %ucEnableGB_FUSE_TABLE_CKSOFF = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 62
  %84 = ptrtoint ptr %ucEnableGB_FUSE_TABLE_CKSOFF to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ucEnableGB_FUSE_TABLE_CKSOFF, align 1
  %ucEnableGB_FUSE_TABLE_CKSOFF24 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 21
  %86 = ptrtoint ptr %ucEnableGB_FUSE_TABLE_CKSOFF24 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %ucEnableGB_FUSE_TABLE_CKSOFF24, align 4
  %ucEnableGB_FUSE_TABLE_CKSON = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 63
  %87 = ptrtoint ptr %ucEnableGB_FUSE_TABLE_CKSON to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ucEnableGB_FUSE_TABLE_CKSON, align 1
  %ucEnableGB_FUSE_TABLE_CKSON25 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 22
  %89 = ptrtoint ptr %ucEnableGB_FUSE_TABLE_CKSON25 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %ucEnableGB_FUSE_TABLE_CKSON25, align 1
  %usPSM_Age_ComFactor = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 64
  %90 = ptrtoint ptr %usPSM_Age_ComFactor to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %usPSM_Age_ComFactor, align 1
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  %usPSM_Age_ComFactor26 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 23
  %93 = ptrtoint ptr %usPSM_Age_ComFactor26 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %usPSM_Age_ComFactor26, align 2
  %ucEnableApplyAVFS_CKS_OFF_Voltage = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 65
  %94 = ptrtoint ptr %ucEnableApplyAVFS_CKS_OFF_Voltage to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ucEnableApplyAVFS_CKS_OFF_Voltage, align 1
  %ucEnableApplyAVFS_CKS_OFF_Voltage27 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %param, i32 0, i32 24
  %96 = ptrtoint ptr %ucEnableApplyAVFS_CKS_OFF_Voltage27 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %ucEnableApplyAVFS_CKS_OFF_Voltage27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_svi2_info(ptr nocapture noundef readonly %hwmgr, i8 noundef zeroext %voltage_type, ptr nocapture noundef writeonly %svd_gpio_id, ptr nocapture noundef writeonly %svc_gpio_id, ptr nocapture noundef writeonly %load_line) local_unnamed_addr #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #5
  %2 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #5
  %3 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev.i, align 1, !annotation !90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #5
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size.i, align 2, !annotation !90
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #5
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %if.then, label %do.end7

if.then:                                          ; preds = %entry
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @atomctrl_get_svi2_info._rs, ptr noundef nonnull @__func__.atomctrl_get_svi2_info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #8
  br label %cleanup

do.end7:                                          ; preds = %entry
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %call.i, align 1
  %7 = call i16 @llvm.bswap.i16(i16 %6) #5
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp26.i = icmp ugt i16 %7, 4
  br i1 %cmp26.i, label %do.end7.while.body.i_crit_edge, label %do.end7.atomctrl_lookup_voltage_type_v3.exit_crit_edge

do.end7.atomctrl_lookup_voltage_type_v3.exit_crit_edge: ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %atomctrl_lookup_voltage_type_v3.exit

do.end7.while.body.i_crit_edge:                   ; preds = %do.end7
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %do.end7.while.body.i_crit_edge
  %offset.027.i = phi i32 [ %add.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %do.end7.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %offset.027.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %voltage_type)
  %cmp5.i = icmp eq i8 %9, %voltage_type
  br i1 %cmp5.i, label %land.lhs.true.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %ucVoltageMode.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 1
  %10 = ptrtoint ptr %ucVoltageMode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ucVoltageMode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %cmp10.i = icmp eq i8 %11, 7
  br i1 %cmp10.i, label %land.lhs.true.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

land.lhs.true.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atomctrl_lookup_voltage_type_v3.exit

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %usSize.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 2
  %12 = ptrtoint ptr %usSize.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %usSize.i, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %13) #5
  %conv13.i = zext i16 %14 to i32
  %add.i = add i32 %offset.027.i, %conv13.i
  %cmp.i = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge

cleanup.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atomctrl_lookup_voltage_type_v3.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

atomctrl_lookup_voltage_type_v3.exit:             ; preds = %cleanup.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge, %land.lhs.true.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge, %do.end7.atomctrl_lookup_voltage_type_v3.exit_crit_edge
  %retval.2.i = phi ptr [ null, %do.end7.atomctrl_lookup_voltage_type_v3.exit_crit_edge ], [ null, %cleanup.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge ], [ %add.ptr.i, %land.lhs.true.i.atomctrl_lookup_voltage_type_v3.exit_crit_edge ]
  %ucSVDGpioId = getelementptr inbounds %struct._ATOM_SVID2_VOLTAGE_OBJECT_V3, ptr %retval.2.i, i32 0, i32 2
  %15 = ptrtoint ptr %ucSVDGpioId to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ucSVDGpioId, align 1
  %17 = ptrtoint ptr %svd_gpio_id to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %svd_gpio_id, align 1
  %ucSVCGpioId = getelementptr inbounds %struct._ATOM_SVID2_VOLTAGE_OBJECT_V3, ptr %retval.2.i, i32 0, i32 3
  %18 = ptrtoint ptr %ucSVCGpioId to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucSVCGpioId, align 1
  %20 = ptrtoint ptr %svc_gpio_id to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %svc_gpio_id, align 1
  %usLoadLine_PSI = getelementptr inbounds %struct._ATOM_SVID2_VOLTAGE_OBJECT_V3, ptr %retval.2.i, i32 0, i32 1
  %21 = ptrtoint ptr %usLoadLine_PSI to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %usLoadLine_PSI, align 1
  %23 = ptrtoint ptr %load_line to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %load_line, align 2
  br label %cleanup

cleanup:                                          ; preds = %atomctrl_lookup_voltage_type_v3.exit, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %atomctrl_lookup_voltage_type_v3.exit ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_leakage_id_from_efuse(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %virtual_voltage_id) local_unnamed_addr #0 align 64 {
entry:
  %allocation = alloca %struct._SET_VOLTAGE_PS_ALLOCATION, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %allocation) #5
  %2 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %allocation, i32 0, i32 1
  %3 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %allocation, i32 0, i32 2
  %4 = call ptr @memset(ptr %allocation, i32 255, i32 12)
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %2, align 1
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %7, i32 noundef 67, ptr noundef nonnull %allocation) #5
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %3, align 1
  %10 = ptrtoint ptr %virtual_voltage_id to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %virtual_voltage_id, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %allocation) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_leakage_vddc_base_on_leakage(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %vddc, ptr nocapture noundef writeonly %vddci, i16 noundef zeroext %virtual_voltage_id, i16 noundef zeroext %efuse_voltage_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %vddc, align 2
  %1 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %vddci, align 2
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %call = tail call ptr @smu_atom_get_data_table(ptr noundef %3, i32 noundef 31, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ucTableFormatRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %ucTableFormatRevision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ucTableFormatRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp ugt i8 %5, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %ucTableContentRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %ucTableContentRevision to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ucTableContentRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp4.not = icmp eq i8 %7, 0
  br i1 %cmp4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %9)
  %cmp9 = icmp ugt i16 %9, 16
  br i1 %cmp9, label %if.then11, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true6
  %usLeakageBinArrayOffset = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %usLeakageBinArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %usLeakageBinArrayOffset, align 1
  %conv12 = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %call, i32 %conv12
  %usElbVDDC_IdArrayOffset = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %usElbVDDC_IdArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %usElbVDDC_IdArrayOffset, align 1
  %conv13 = zext i16 %13 to i32
  %add.ptr14 = getelementptr i8, ptr %call, i32 %conv13
  %usElbVDDC_LevelArrayOffset = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %usElbVDDC_LevelArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usElbVDDC_LevelArrayOffset, align 1
  %conv15 = zext i16 %15 to i32
  %add.ptr16 = getelementptr i8, ptr %call, i32 %conv15
  %ucElbVDDC_Num = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %ucElbVDDC_Num to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ucElbVDDC_Num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp18.not = icmp eq i8 %17, 0
  br i1 %cmp18.not, label %if.then11.if.end49_crit_edge, label %for.cond.preheader

if.then11.if.end49_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

for.cond.preheader:                               ; preds = %if.then11
  %conv22 = zext i8 %17 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc46.for.body_crit_edge, %for.cond.preheader
  %i.0153 = phi i32 [ 0, %for.cond.preheader ], [ %inc47, %for.inc46.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %add.ptr14, i32 %i.0153
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %virtual_voltage_id)
  %cmp27 = icmp eq i16 %19, %virtual_voltage_id
  br i1 %cmp27, label %for.cond30.preheader, label %for.inc46

for.cond30.preheader:                             ; preds = %for.body
  %ucLeakageBinNum = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %ucLeakageBinNum to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ucLeakageBinNum, align 1
  %conv31 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp32154.not = icmp eq i8 %21, 0
  br i1 %cmp32154.not, label %for.cond30.preheader.if.end49_crit_edge, label %for.cond30.preheader.for.body34_crit_edge

for.cond30.preheader.for.body34_crit_edge:        ; preds = %for.cond30.preheader
  br label %for.body34

for.cond30.preheader.if.end49_crit_edge:          ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

for.body34:                                       ; preds = %for.inc.for.body34_crit_edge, %for.cond30.preheader.for.body34_crit_edge
  %j.0155 = phi i32 [ %inc, %for.inc.for.body34_crit_edge ], [ 0, %for.cond30.preheader.for.body34_crit_edge ]
  %arrayidx36 = getelementptr i16, ptr %add.ptr, i32 %j.0155
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx36, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %efuse_voltage_id)
  %cmp38.not = icmp ult i16 %23, %efuse_voltage_id
  br i1 %cmp38.not, label %for.inc, label %if.then40

if.then40:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul i32 %j.0155, %conv22
  %add = add i32 %mul, %i.0153
  %arrayidx43 = getelementptr i16, ptr %add.ptr16, i32 %add
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx43, align 2
  %26 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %vddc, align 2
  br label %if.end49

for.inc:                                          ; preds = %for.body34
  %inc = add nuw nsw i32 %j.0155, 1
  %exitcond165.not = icmp eq i32 %inc, %conv31
  br i1 %exitcond165.not, label %for.inc.if.end49_crit_edge, label %for.inc.for.body34_crit_edge

for.inc.for.body34_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34

for.inc.if.end49_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

for.inc46:                                        ; preds = %for.body
  %inc47 = add nuw nsw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc47, %conv22
  br i1 %exitcond.not, label %for.inc46.if.end49_crit_edge, label %for.inc46.for.body_crit_edge

for.inc46.for.body_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc46.if.end49_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.end49:                                         ; preds = %for.inc46.if.end49_crit_edge, %for.inc.if.end49_crit_edge, %if.then40, %for.cond30.preheader.if.end49_crit_edge, %if.then11.if.end49_crit_edge
  %usElbVDDCI_IdArrayOffset = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %usElbVDDCI_IdArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %usElbVDDCI_IdArrayOffset, align 1
  %conv50 = zext i16 %28 to i32
  %add.ptr51 = getelementptr i8, ptr %call, i32 %conv50
  %usElbVDDCI_LevelArrayOffset = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %call, i32 0, i32 8
  %29 = ptrtoint ptr %usElbVDDCI_LevelArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %usElbVDDCI_LevelArrayOffset, align 1
  %conv52 = zext i16 %30 to i32
  %add.ptr53 = getelementptr i8, ptr %call, i32 %conv52
  %ucElbVDDCI_Num = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %call, i32 0, i32 6
  %31 = ptrtoint ptr %ucElbVDDCI_Num to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ucElbVDDCI_Num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp55.not = icmp eq i8 %32, 0
  br i1 %cmp55.not, label %if.end49.cleanup_crit_edge, label %for.cond58.preheader

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond58.preheader:                             ; preds = %if.end49
  %conv60 = zext i8 %32 to i32
  br label %for.body63

for.body63:                                       ; preds = %for.inc92.for.body63_crit_edge, %for.cond58.preheader
  %i.1156 = phi i32 [ 0, %for.cond58.preheader ], [ %inc93, %for.inc92.for.body63_crit_edge ]
  %arrayidx64 = getelementptr i16, ptr %add.ptr51, i32 %i.1156
  %33 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx64, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %virtual_voltage_id)
  %cmp67 = icmp eq i16 %34, %virtual_voltage_id
  br i1 %cmp67, label %for.cond70.preheader, label %for.inc92

for.cond70.preheader:                             ; preds = %for.body63
  %ucLeakageBinNum71 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %call, i32 0, i32 1
  %35 = ptrtoint ptr %ucLeakageBinNum71 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ucLeakageBinNum71, align 1
  %conv72 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp73157.not = icmp eq i8 %36, 0
  br i1 %cmp73157.not, label %for.cond70.preheader.cleanup_crit_edge, label %for.cond70.preheader.for.body75_crit_edge

for.cond70.preheader.for.body75_crit_edge:        ; preds = %for.cond70.preheader
  br label %for.body75

for.cond70.preheader.cleanup_crit_edge:           ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body75:                                       ; preds = %for.inc88.for.body75_crit_edge, %for.cond70.preheader.for.body75_crit_edge
  %j.1158 = phi i32 [ %inc89, %for.inc88.for.body75_crit_edge ], [ 0, %for.cond70.preheader.for.body75_crit_edge ]
  %arrayidx77 = getelementptr i16, ptr %add.ptr, i32 %j.1158
  %37 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx77, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %efuse_voltage_id)
  %cmp79.not = icmp ult i16 %38, %efuse_voltage_id
  br i1 %cmp79.not, label %for.inc88, label %if.then81

if.then81:                                        ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #7
  %mul84 = mul i32 %j.1158, %conv60
  %add85 = add i32 %mul84, %i.1156
  %arrayidx86 = getelementptr i16, ptr %add.ptr53, i32 %add85
  %39 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx86, align 2
  %41 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %vddci, align 2
  br label %cleanup

for.inc88:                                        ; preds = %for.body75
  %inc89 = add nuw nsw i32 %j.1158, 1
  %exitcond167.not = icmp eq i32 %inc89, %conv72
  br i1 %exitcond167.not, label %for.inc88.cleanup_crit_edge, label %for.inc88.for.body75_crit_edge

for.inc88.for.body75_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body75

for.inc88.cleanup_crit_edge:                      ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc92:                                        ; preds = %for.body63
  %inc93 = add nuw nsw i32 %i.1156, 1
  %exitcond166.not = icmp eq i32 %inc93, %conv60
  br i1 %exitcond166.not, label %for.inc92.cleanup_crit_edge, label %for.inc92.for.body63_crit_edge

for.inc92.for.body63_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body63

for.inc92.cleanup_crit_edge:                      ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc92.cleanup_crit_edge, %for.inc88.cleanup_crit_edge, %if.then81, %for.cond70.preheader.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ 0, %if.then81 ], [ 0, %land.lhs.true6.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond70.preheader.cleanup_crit_edge ], [ 0, %for.inc88.cleanup_crit_edge ], [ 0, %for.inc92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atomctrl_get_voltage_range(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %max_vddc, ptr nocapture noundef writeonly %min_vddc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 31, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %3, label %if.then.if.end_crit_edge [
    i32 11, label %if.then.sw.bb_crit_edge
    i32 12, label %if.then.sw.bb_crit_edge18
    i32 16, label %if.then.sw.bb2_crit_edge
    i32 15, label %if.then.sw.bb2_crit_edge19
    i32 17, label %if.then.sw.bb2_crit_edge20
  ]

if.then.sw.bb2_crit_edge20:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

if.then.sw.bb2_crit_edge19:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

if.then.sw.bb2_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

if.then.sw.bb_crit_edge18:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge18
  %ulMaxVddc = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_3, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %ulMaxVddc to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %ulMaxVddc, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %div16 = lshr i32 %7, 2
  %8 = ptrtoint ptr %max_vddc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div16, ptr %max_vddc, align 4
  %ulMinVddc = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_3, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %ulMinVddc to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %ulMinVddc, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %div117 = lshr i32 %11, 2
  br label %cleanup

sw.bb2:                                           ; preds = %if.then.sw.bb2_crit_edge, %if.then.sw.bb2_crit_edge19, %if.then.sw.bb2_crit_edge20
  %ulMaxVddc3 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %ulMaxVddc3 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %ulMaxVddc3, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %div4 = udiv i32 %14, 100
  %15 = ptrtoint ptr %max_vddc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div4, ptr %max_vddc, align 4
  %ulMinVddc5 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V3_6, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %ulMinVddc5 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %ulMinVddc5, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %div6 = udiv i32 %18, 100
  br label %cleanup

if.end:                                           ; preds = %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %max_vddc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %max_vddc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb2, %sw.bb
  %.sink = phi i32 [ 0, %if.end ], [ %div6, %sw.bb2 ], [ %div117, %sw.bb ]
  %20 = ptrtoint ptr %min_vddc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %min_vddc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_edc_hilo_leakage_offset_table(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 14, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usHiLoLeakageThreshold = getelementptr inbounds %struct._ATOM_GFX_INFO_V2_3, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %usHiLoLeakageThreshold to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %usHiLoLeakageThreshold, align 1
  %4 = ptrtoint ptr %table to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %table, align 2
  %usEdcDidtLoDpm7TableOffset = getelementptr inbounds %struct._ATOM_GFX_INFO_V2_3, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %usEdcDidtLoDpm7TableOffset to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %usEdcDidtLoDpm7TableOffset, align 1
  %usEdcDidtLoDpm7TableOffset2 = getelementptr inbounds %struct._AtomCtrl_HiLoLeakageOffsetTable, ptr %table, i32 0, i32 1
  %7 = ptrtoint ptr %usEdcDidtLoDpm7TableOffset2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %usEdcDidtLoDpm7TableOffset2, align 2
  %usEdcDidtHiDpm7TableOffset = getelementptr inbounds %struct._ATOM_GFX_INFO_V2_3, ptr %call, i32 0, i32 11
  %8 = ptrtoint ptr %usEdcDidtHiDpm7TableOffset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %usEdcDidtHiDpm7TableOffset, align 1
  %usEdcDidtHiDpm7TableOffset3 = getelementptr inbounds %struct._AtomCtrl_HiLoLeakageOffsetTable, ptr %table, i32 0, i32 2
  %10 = ptrtoint ptr %usEdcDidtHiDpm7TableOffset3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %usEdcDidtHiDpm7TableOffset3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomctrl_get_edc_leakage_table(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %table, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call.i = tail call ptr @smu_atom_get_data_table(ptr noundef %1, i32 noundef 14, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %4 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %table, align 4
  %arrayidx.1 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr [24 x i32], ptr %table, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx2.1, align 4
  %arrayidx.2 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr [24 x i32], ptr %table, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx2.2, align 4
  %arrayidx.3 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr [24 x i32], ptr %table, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx2.3, align 4
  %arrayidx.4 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr [24 x i32], ptr %table, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx2.4, align 4
  %arrayidx.5 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.5, align 4
  %arrayidx2.5 = getelementptr [24 x i32], ptr %table, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx2.5, align 4
  %arrayidx.6 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.6, align 4
  %arrayidx2.6 = getelementptr [24 x i32], ptr %table, i32 0, i32 6
  %22 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx2.6, align 4
  %arrayidx.7 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.7, align 4
  %arrayidx2.7 = getelementptr [24 x i32], ptr %table, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.7, align 4
  %arrayidx.8 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.8, align 4
  %arrayidx2.8 = getelementptr [24 x i32], ptr %table, i32 0, i32 8
  %28 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx2.8, align 4
  %arrayidx.9 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.9, align 4
  %arrayidx2.9 = getelementptr [24 x i32], ptr %table, i32 0, i32 9
  %31 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx2.9, align 4
  %arrayidx.10 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 10
  %32 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.10, align 4
  %arrayidx2.10 = getelementptr [24 x i32], ptr %table, i32 0, i32 10
  %34 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx2.10, align 4
  %arrayidx.11 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 11
  %35 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.11, align 4
  %arrayidx2.11 = getelementptr [24 x i32], ptr %table, i32 0, i32 11
  %37 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx2.11, align 4
  %arrayidx.12 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 12
  %38 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.12, align 4
  %arrayidx2.12 = getelementptr [24 x i32], ptr %table, i32 0, i32 12
  %40 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx2.12, align 4
  %arrayidx.13 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 13
  %41 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.13, align 4
  %arrayidx2.13 = getelementptr [24 x i32], ptr %table, i32 0, i32 13
  %43 = ptrtoint ptr %arrayidx2.13 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx2.13, align 4
  %arrayidx.14 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 14
  %44 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.14, align 4
  %arrayidx2.14 = getelementptr [24 x i32], ptr %table, i32 0, i32 14
  %46 = ptrtoint ptr %arrayidx2.14 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx2.14, align 4
  %arrayidx.15 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 15
  %47 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.15, align 4
  %arrayidx2.15 = getelementptr [24 x i32], ptr %table, i32 0, i32 15
  %49 = ptrtoint ptr %arrayidx2.15 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx2.15, align 4
  %arrayidx.16 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 16
  %50 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.16, align 4
  %arrayidx2.16 = getelementptr [24 x i32], ptr %table, i32 0, i32 16
  %52 = ptrtoint ptr %arrayidx2.16 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx2.16, align 4
  %arrayidx.17 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 17
  %53 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.17, align 4
  %arrayidx2.17 = getelementptr [24 x i32], ptr %table, i32 0, i32 17
  %55 = ptrtoint ptr %arrayidx2.17 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx2.17, align 4
  %arrayidx.18 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 18
  %56 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.18, align 4
  %arrayidx2.18 = getelementptr [24 x i32], ptr %table, i32 0, i32 18
  %58 = ptrtoint ptr %arrayidx2.18 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx2.18, align 4
  %arrayidx.19 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 19
  %59 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.19, align 4
  %arrayidx2.19 = getelementptr [24 x i32], ptr %table, i32 0, i32 19
  %61 = ptrtoint ptr %arrayidx2.19 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx2.19, align 4
  %arrayidx.20 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 20
  %62 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.20, align 4
  %arrayidx2.20 = getelementptr [24 x i32], ptr %table, i32 0, i32 20
  %64 = ptrtoint ptr %arrayidx2.20 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx2.20, align 4
  %arrayidx.21 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 21
  %65 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.21, align 4
  %arrayidx2.21 = getelementptr [24 x i32], ptr %table, i32 0, i32 21
  %67 = ptrtoint ptr %arrayidx2.21 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx2.21, align 4
  %arrayidx.22 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 22
  %68 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.22, align 4
  %arrayidx2.22 = getelementptr [24 x i32], ptr %table, i32 0, i32 22
  %70 = ptrtoint ptr %arrayidx2.22 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx2.22, align 4
  %arrayidx.23 = getelementptr [24 x i32], ptr %call.i, i32 0, i32 23
  %71 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.23, align 4
  %arrayidx2.23 = getelementptr [24 x i32], ptr %table, i32 0, i32 23
  %73 = ptrtoint ptr %arrayidx2.23 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx2.23, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 148, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @atomctrl_initialize_mc_reg_table._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @atomctrl_initialize_mc_reg_table._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @atomctrl_initialize_mc_reg_table._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 151, i32 3}
!8 = !{ptr @atomctrl_initialize_mc_reg_table._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 185, i32 3}
!11 = !{ptr @atomctrl_initialize_mc_reg_table_v2_2._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @atomctrl_initialize_mc_reg_table_v2_2._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @atomctrl_initialize_mc_reg_table_v2_2._entry.6, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 188, i32 3}
!15 = !{ptr @atomctrl_initialize_mc_reg_table_v2_2._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 555, i32 2}
!18 = !{ptr @atomctrl_is_voltage_controlled_by_gpio_v3._rs, !17, !"_rs", i1 false, i1 false}
!19 = !{ptr @__func__.atomctrl_is_voltage_controlled_by_gpio_v3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @atomctrl_is_voltage_controlled_by_gpio_v3._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @atomctrl_is_voltage_controlled_by_gpio_v3._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @atomctrl_get_voltage_table_v3._rs, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 575, i32 2}
!26 = !{ptr @__func__.atomctrl_get_voltage_table_v3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @atomctrl_get_voltage_table_v3._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @atomctrl_get_voltage_table_v3._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @atomctrl_get_voltage_table_v3._rs.11, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 584, i32 2}
!31 = !{ptr @atomctrl_get_voltage_table_v3._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @atomctrl_get_voltage_table_v3._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @atomctrl_get_pp_assign_pin._rs, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 670, i32 2}
!36 = !{ptr @__func__.atomctrl_get_pp_assign_pin, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @atomctrl_get_pp_assign_pin._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @atomctrl_get_pp_assign_pin._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 757, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @atomctrl_calculate_voltage_evv_on_sclk._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @atomctrl_calculate_voltage_evv_on_sclk._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 1170, i32 10}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @atomctrl_get_voltage_evv.__UNIQUE_ID_ddebug343, !46, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!50 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @atomctrl_get_svi2_info._rs, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 1504, i32 2}
!53 = !{ptr @__func__.atomctrl_get_svi2_info, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @atomctrl_get_svi2_info._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @atomctrl_get_svi2_info._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @atomctrl_set_mc_reg_address_table._rs, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 112, i32 2}
!58 = !{ptr @__func__.atomctrl_set_mc_reg_address_table, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @atomctrl_set_mc_reg_address_table._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @atomctrl_set_mc_reg_address_table._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @atomctrl_retrieve_ac_timing._rs, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 87, i32 2}
!64 = !{ptr @__func__.atomctrl_retrieve_ac_timing, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @atomctrl_retrieve_ac_timing._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @atomctrl_retrieve_ac_timing._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @get_gpio_lookup_table._rs, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c", i32 652, i32 2}
!69 = !{ptr @__func__.get_gpio_lookup_table, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @get_gpio_lookup_table._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @get_gpio_lookup_table._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"k_array", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppevvmath.h", i32 155, i32 24}
!75 = distinct !{null, !76, !"logk_array", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppevvmath.h", i32 156, i32 24}
!77 = !{ptr @fExponential.k_array, !78, !"k_array", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppevvmath.h", i32 120, i32 24}
!79 = !{ptr @fExponential.expk_array, !80, !"expk_array", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppevvmath.h", i32 121, i32 24}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{i64 2148747007, i64 2148747012, i64 2148747025, i64 2148747069, i64 2148747103, i64 2148747124}
