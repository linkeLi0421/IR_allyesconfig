; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/bios/command_table.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dc_bios = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.dc_firmware_info, i8, %struct.dc_vram_info, %struct.dc_golden_table }
%struct.dc_firmware_info = type { %struct.pll_info, %struct.firmware_feature, i32, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32 }
%struct.firmware_feature = type { i32, i32 }
%struct.dc_vram_info = type { i32, i32 }
%struct.dc_golden_table = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.102, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.94, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.94 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.101], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.101 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.98] }
%struct.anon.98 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.102 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.113, i32, i32, i32, i32 }
%union.anon.113 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.bios_parser = type { %struct.dc_bios, %struct.object_info_table, i32, ptr, ptr, ptr, %struct.cmd_tbl, i8 }
%struct.object_info_table = type { %struct.atom_data_revision, %union.anon.2 }
%struct.atom_data_revision = type { i32, i32 }
%union.anon.2 = type { ptr }
%struct.cmd_tbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._DIG_ENCODER_CONTROL_PARAMETERS_V3 = type { i16, %struct._ATOM_DIG_ENCODER_CONFIG_V3, i8, %union.anon.118, i8, i8, i8 }
%struct._ATOM_DIG_ENCODER_CONFIG_V3 = type { i8 }
%union.anon.118 = type { i8 }
%struct.bp_encoder_control = type { i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.command_table_helper = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._DIG_ENCODER_CONTROL_PARAMETERS_V4 = type { i16, %union.anon.119, i8, %union.anon.120, i8, i8, i8 }
%union.anon.119 = type { %struct._ATOM_DIG_ENCODER_CONFIG_V4 }
%struct._ATOM_DIG_ENCODER_CONFIG_V4 = type { i8 }
%union.anon.120 = type { i8 }
%struct._ENCODER_STREAM_SETUP_PARAMETERS_V5 = type { i8, i8, i8, i8, i32, i8, i8, [2 x i8] }
%struct._DIG_ENCODER_CONTROL_PARAMETERS_V2 = type { i16, %struct._ATOM_DIG_ENCODER_CONFIG_V2, i8, i8, i8, i8, i8 }
%struct._ATOM_DIG_ENCODER_CONFIG_V2 = type { i8 }
%struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V2 = type { %union.anon.121, %struct._ATOM_DIG_TRANSMITTER_CONFIG_V2, i8, [4 x i8] }
%union.anon.121 = type { i16 }
%struct._ATOM_DIG_TRANSMITTER_CONFIG_V2 = type { i8 }
%struct.bp_transmitter_control = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.graphics_object_id, i32, i32, i32, i8, i8, i8 }
%struct.graphics_object_id = type { i32 }
%struct._ATOM_DP_VS_MODE = type { i8, i8 }
%struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V3 = type { %union.anon.122, %struct._ATOM_DIG_TRANSMITTER_CONFIG_V3, i8, i8, [3 x i8] }
%union.anon.122 = type { i16 }
%struct._ATOM_DIG_TRANSMITTER_CONFIG_V3 = type { i8 }
%struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V4 = type { %union.anon.123, %union.anon.126, i8, i8, [3 x i8] }
%union.anon.123 = type { i16 }
%union.anon.126 = type { %struct._ATOM_DIG_TRANSMITTER_CONFIG_V4 }
%struct._ATOM_DIG_TRANSMITTER_CONFIG_V4 = type { i8 }
%struct._ATOM_DP_VS_MODE_V4 = type { i8, %union.anon.124 }
%union.anon.124 = type { i8 }
%struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5 = type { i16, i8, i8, i8, i8, i8, %union.anon.127, i8, i8, i8, i8 }
%union.anon.127 = type { %struct._ATOM_DIG_TRANSMITTER_CONFIG_V5 }
%struct._ATOM_DIG_TRANSMITTER_CONFIG_V5 = type { i8 }
%struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6 = type { i8, i8, %union.anon.128, i8, i32, i8, i8, i8, i8, i32 }
%union.anon.128 = type { i8 }
%struct._SET_PIXEL_CLOCK_PS_ALLOCATION = type { %struct._PIXEL_CLOCK_PARAMETERS, %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL }
%struct._PIXEL_CLOCK_PARAMETERS = type { i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.bp_pixel_clock_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.graphics_object_id, i32, i32, %struct.program_pixel_clock_flags }
%struct.program_pixel_clock_flags = type { i8, [3 x i8] }
%struct._SET_PIXEL_CLOCK_PS_ALLOCATION_V5 = type { %struct._PIXEL_CLOCK_PARAMETERS_V5, %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL }
%struct._PIXEL_CLOCK_PARAMETERS_V5 = type { i8, %union.anon.130, i16, i16, i8, i8, i8, i8, i8, i8, i32 }
%union.anon.130 = type { i8 }
%struct._SET_PIXEL_CLOCK_PS_ALLOCATION_V6 = type { %struct._PIXEL_CLOCK_PARAMETERS_V6, %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL }
%struct._PIXEL_CLOCK_PARAMETERS_V6 = type { %union.anon.131, i16, i8, i8, i8, i8, i8, i8, i32 }
%union.anon.131 = type { %struct._CRTC_PIXEL_CLOCK_FREQ }
%struct._CRTC_PIXEL_CLOCK_FREQ = type { i32 }
%struct._PIXEL_CLOCK_PARAMETERS_V7 = type { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32 }
%struct.bp_spread_spectrum_parameters = type { i32, i32, i32, %union.anon.0, %struct.spread_spectrum_flags }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i32, i32, i32 }
%struct.spread_spectrum_flags = type { i8, [3 x i8] }
%struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V2 = type { i16, i8, i8, i16, i16 }
%struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V3 = type { i16, i8, i8, i16, i16 }
%struct._ADJUST_DISPLAY_PLL_PARAMETERS = type { i16, i8, i8, %union.anon.132, [3 x i8] }
%union.anon.132 = type { i8 }
%struct.bp_adjust_pixel_clock_parameters = type { i32, %struct.graphics_object_id, i32, i32, i32, i32, i8 }
%struct._ADJUST_DISPLAY_PLL_PS_ALLOCATION_V3 = type { %union.anon.133 }
%union.anon.133 = type { %struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3 }
%struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3 = type { i32, i8, i8, [2 x i8] }
%struct._ADJUST_DISPLAY_PLL_INPUT_PARAMETERS_V3 = type { i16, i8, i8, i8, i8, [2 x i8] }
%struct._DAC_ENCODER_CONTROL_PARAMETERS = type { i16, i8, i8 }
%struct._DISPLAY_DEVICE_OUTPUT_CONTROL_PARAMETERS = type { i8, [3 x i8] }
%struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS = type { i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_MODE_MISC_INFO_ACCESS, i8, i8, i8, [3 x i8] }
%union._ATOM_MODE_MISC_INFO_ACCESS = type { %struct._ATOM_MODE_MISC_INFO }
%struct._ATOM_MODE_MISC_INFO = type { i16 }
%struct.bp_hw_crtc_timing_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timing_flags }
%struct.timing_flags = type { i8, [3 x i8] }
%struct._SET_CRTC_TIMING_PARAMETERS = type { i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_MODE_MISC_INFO_ACCESS, i8, i8, i8, i8, i8, i8 }
%struct._ENABLE_CRTC_PARAMETERS = type { i8, i8, [2 x i8] }
%struct._EXTERNAL_ENCODER_CONTROL_PS_ALLOCATION_V3 = type { %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, [2 x i32] }
%struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3 = type { %union.anon.134, i8, i8, i8, i8, i8, i8 }
%union.anon.134 = type { i16 }
%struct.bp_external_encoder_control = type { i32, i32, i32, i32, i32, i32, i8, %struct.graphics_object_id, %struct.graphics_object_id, i32 }
%struct._ENABLE_DISP_POWER_GATING_PS_ALLOCATION = type { i8, i8, [2 x i8], [4 x i32] }
%struct._SET_DCE_CLOCK_PS_ALLOCATION_V2_1 = type { %struct._SET_DCE_CLOCK_PARAMETERS_V2_1, [2 x i32] }
%struct._SET_DCE_CLOCK_PARAMETERS_V2_1 = type { i32, i8, i8, i8, i8 }
%struct.bp_set_dce_clock_parameters = type { i32, i32, i32, %struct.set_dce_clock_flags }
%struct.set_dce_clock_flags = type { i8, [3 x i8] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.init_transmitter_control = private unnamed_addr constant [25 x i8] c"init_transmitter_control\00", align 1
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Don't have transmitter_control for v%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Don't have set_pixel_clock for v%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Don't have enable_spread_spectrum_on_ppll for v%d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.enable_spread_spectrum_on_ppll_v1 = private unnamed_addr constant [34 x i8] c"enable_spread_spectrum_on_ppll_v1\00", align 1
@__func__.enable_spread_spectrum_on_ppll_v2 = private unnamed_addr constant [34 x i8] c"enable_spread_spectrum_on_ppll_v2\00", align 1
@__func__.enable_spread_spectrum_on_ppll_v3 = private unnamed_addr constant [34 x i8] c"enable_spread_spectrum_on_ppll_v3\00", align 1
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Don't have adjust_display_pll for v%d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.adjust_display_pll_v2 = private unnamed_addr constant [22 x i8] c"adjust_display_pll_v2\00", align 1
@__func__.adjust_display_pll_v3 = private unnamed_addr constant [22 x i8] c"adjust_display_pll_v3\00", align 1
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Don't have set_crtc_timing for dtd v%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Don't have set_crtc_timing for v%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Don't have enable_crtc for v%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Don't have program_clock for v%d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.program_clock_v5 = private unnamed_addr constant [17 x i8] c"program_clock_v5\00", align 1
@__func__.program_clock_v6 = private unnamed_addr constant [17 x i8] c"program_clock_v6\00", align 1
@__func__.external_encoder_control_v3 = private unnamed_addr constant [28 x i8] c"external_encoder_control_v3\00", align 1
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Don't enable_disp_power_gating enable_crtc for v%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Don't have set_dce_clock for v%d\0A\00", [62 x i8] zeroinitializer }, align 32
@switch.table.dal_bios_parser_init_cmd_tbl = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @transmitter_control_v2, ptr @transmitter_control_v3, ptr @transmitter_control_v4, ptr @transmitter_control_v1_5, ptr @transmitter_control_v1_6], [44 x i8] zeroinitializer }, align 32
@switch.table.dal_bios_parser_init_cmd_tbl.11 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @set_pixel_clock_v3, ptr @set_pixel_clock_v3, ptr @set_pixel_clock_v5, ptr @set_pixel_clock_v6, ptr @set_pixel_clock_v7], [44 x i8] zeroinitializer }, align 32
@switch.table.dal_bios_parser_init_cmd_tbl.12 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @enable_spread_spectrum_on_ppll_v1, ptr @enable_spread_spectrum_on_ppll_v2, ptr @enable_spread_spectrum_on_ppll_v3], [20 x i8] zeroinitializer }, align 32
@switch.table.encoder_control_digx_v3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\03\04\02\05", [27 x i8] zeroinitializer }, align 32
@switch.table.encoder_control_digx_v4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\03\04\02\05", [27 x i8] zeroinitializer }, align 32
@switch.table.encoder_control_digx_v5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\03\04\02\05", [27 x i8] zeroinitializer }, align 32
@switch.table.enable_spread_spectrum_on_ppll_v3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\08\00\04\08\08", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 11]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 11]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.26 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 11]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 15]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 406, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 424, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 966, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1311, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1508, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1804, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1815, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1996, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 2104, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 2330, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [65 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 2379, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [42 x i8] c"switch.table.dal_bios_parser_init_cmd_tbl\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [45 x i8] c"switch.table.dal_bios_parser_init_cmd_tbl.11\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [45 x i8] c"switch.table.dal_bios_parser_init_cmd_tbl.12\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [37 x i8] c"switch.table.encoder_control_digx_v3\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [37 x i8] c"switch.table.encoder_control_digx_v4\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [37 x i8] c"switch.table.encoder_control_digx_v5\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [47 x i8] c"switch.table.enable_spread_spectrum_on_ppll_v3\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @switch.table.dal_bios_parser_init_cmd_tbl, ptr @switch.table.dal_bios_parser_init_cmd_tbl.11, ptr @switch.table.dal_bios_parser_init_cmd_tbl.12, ptr @switch.table.encoder_control_digx_v3, ptr @switch.table.encoder_control_digx_v4, ptr @switch.table.encoder_control_digx_v5, ptr @switch.table.enable_spread_spectrum_on_ppll_v3], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dal_bios_parser_init_cmd_tbl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dal_bios_parser_init_cmd_tbl.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dal_bios_parser_init_cmd_tbl.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.encoder_control_digx_v3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.encoder_control_digx_v4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.encoder_control_digx_v5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.enable_spread_spectrum_on_ppll_v3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_bios_parser_init_cmd_tbl(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %frev.i10.i174 = alloca i8, align 1
  %crev.i11.i175 = alloca i8, align 1
  %frev.i.i176 = alloca i8, align 1
  %crev.i.i177 = alloca i8, align 1
  %frev.i10.i153 = alloca i8, align 1
  %crev.i11.i154 = alloca i8, align 1
  %frev.i.i155 = alloca i8, align 1
  %crev.i.i156 = alloca i8, align 1
  %frev.i.i141 = alloca i8, align 1
  %crev.i.i142 = alloca i8, align 1
  %frev.i14.i120 = alloca i8, align 1
  %crev.i15.i121 = alloca i8, align 1
  %frev.i.i122 = alloca i8, align 1
  %crev.i.i123 = alloca i8, align 1
  %frev.i.i108 = alloca i8, align 1
  %crev.i.i109 = alloca i8, align 1
  %frev.i10.i = alloca i8, align 1
  %crev.i11.i = alloca i8, align 1
  %frev.i.i96 = alloca i8, align 1
  %crev.i.i97 = alloca i8, align 1
  %frev.i35.i = alloca i8, align 1
  %crev.i36.i = alloca i8, align 1
  %frev.i27.i = alloca i8, align 1
  %crev.i28.i = alloca i8, align 1
  %frev.i.i84 = alloca i8, align 1
  %crev.i.i85 = alloca i8, align 1
  %frev.i19.i62 = alloca i8, align 1
  %crev.i20.i63 = alloca i8, align 1
  %frev.i.i64 = alloca i8, align 1
  %crev.i.i65 = alloca i8, align 1
  %frev.i19.i = alloca i8, align 1
  %crev.i20.i = alloca i8, align 1
  %frev.i.i52 = alloca i8, align 1
  %crev.i.i53 = alloca i8, align 1
  %frev.i14.i = alloca i8, align 1
  %crev.i15.i = alloca i8, align 1
  %frev.i.i41 = alloca i8, align 1
  %crev.i.i42 = alloca i8, align 1
  %frev.i18.i = alloca i8, align 1
  %crev.i19.i = alloca i8, align 1
  %frev.i.i29 = alloca i8, align 1
  %crev.i.i30 = alloca i8, align 1
  %frev.i22.i = alloca i8, align 1
  %crev.i23.i = alloca i8, align 1
  %frev.i.i17 = alloca i8, align 1
  %crev.i.i18 = alloca i8, align 1
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %frev.i18.i.i = alloca i8, align 1
  %crev.i19.i.i = alloca i8, align 1
  %frev.i.i.i = alloca i8, align 1
  %crev.i.i.i = alloca i8, align 1
  %frev.i.i = alloca i8, align 1
  %crev.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %driver_context.i = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i) #4
  %4 = ptrtoint ptr %frev.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %frev.i.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i) #4
  %5 = ptrtoint ptr %crev.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %crev.i.i, align 1, !annotation !48
  %mode_info.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 79
  %6 = ptrtoint ptr %mode_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info.i.i, align 8
  %call.i.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %7, i32 noundef 4, ptr noundef nonnull %frev.i.i, ptr noundef nonnull %crev.i.i) #4
  br i1 %call.i.i, label %bios_cmd_table_para_revision.exit.i, label %bios_cmd_table_para_revision.exit.thread.i

bios_cmd_table_para_revision.exit.thread.i:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i) #4
  br label %sw.default.i

bios_cmd_table_para_revision.exit.i:              ; preds = %entry
  %8 = ptrtoint ptr %crev.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crev.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i) #4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %bios_cmd_table_para_revision.exit.i.sw.default.i_crit_edge [
    i8 2, label %bios_cmd_table_para_revision.exit.i.init_dig_encoder_control.exit_crit_edge
    i8 4, label %sw.bb1.i
    i8 5, label %sw.bb4.i
  ]

bios_cmd_table_para_revision.exit.i.init_dig_encoder_control.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_dig_encoder_control.exit

bios_cmd_table_para_revision.exit.i.sw.default.i_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i

sw.bb1.i:                                         ; preds = %bios_cmd_table_para_revision.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_dig_encoder_control.exit

sw.bb4.i:                                         ; preds = %bios_cmd_table_para_revision.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_dig_encoder_control.exit

sw.default.i:                                     ; preds = %bios_cmd_table_para_revision.exit.i.sw.default.i_crit_edge, %bios_cmd_table_para_revision.exit.thread.i
  %11 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx.i, align 4
  %driver_context.i.i = getelementptr inbounds %struct.dc_context, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %driver_context.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_context.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i.i) #4
  %15 = ptrtoint ptr %frev.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %frev.i.i.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i.i) #4
  %16 = ptrtoint ptr %crev.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %crev.i.i.i, align 1, !annotation !48
  %mode_info.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 79
  %17 = ptrtoint ptr %mode_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mode_info.i.i.i, align 8
  %call.i.i.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %18, i32 noundef 74, ptr noundef nonnull %frev.i.i.i, ptr noundef nonnull %crev.i.i.i) #4
  br i1 %call.i.i.i, label %bios_cmd_table_para_revision.exit.i.i, label %bios_cmd_table_para_revision.exit.thread.i.i

bios_cmd_table_para_revision.exit.thread.i.i:     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i.i) #4
  br label %if.else.i.i

bios_cmd_table_para_revision.exit.i.i:            ; preds = %sw.default.i
  %19 = ptrtoint ptr %crev.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %crev.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 1
  br i1 %cmp.i.i, label %bios_cmd_table_para_revision.exit.i.i.if.end.i.i_crit_edge, label %bios_cmd_table_para_revision.exit.i.i.if.else.i.i_crit_edge

bios_cmd_table_para_revision.exit.i.i.if.else.i.i_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

bios_cmd_table_para_revision.exit.i.i.if.end.i.i_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %bios_cmd_table_para_revision.exit.i.i.if.else.i.i_crit_edge, %bios_cmd_table_para_revision.exit.thread.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %bios_cmd_table_para_revision.exit.i.i.if.end.i.i_crit_edge
  %.sink.i.i = phi ptr [ null, %if.else.i.i ], [ @encoder_control_dig1_v1, %bios_cmd_table_para_revision.exit.i.i.if.end.i.i_crit_edge ]
  %encoder_control_dig12.i.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %encoder_control_dig12.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.sink.i.i, ptr %encoder_control_dig12.i.i, align 4
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i, align 4
  %driver_context5.i.i = getelementptr inbounds %struct.dc_context, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %driver_context5.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_context5.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i18.i.i) #4
  %26 = ptrtoint ptr %frev.i18.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %frev.i18.i.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i19.i.i) #4
  %27 = ptrtoint ptr %crev.i19.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %crev.i19.i.i, align 1, !annotation !48
  %mode_info.i20.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %25, i32 0, i32 79
  %28 = ptrtoint ptr %mode_info.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mode_info.i20.i.i, align 8
  %call.i21.i.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %29, i32 noundef 75, ptr noundef nonnull %frev.i18.i.i, ptr noundef nonnull %crev.i19.i.i) #4
  br i1 %call.i21.i.i, label %bios_cmd_table_para_revision.exit25.i.i, label %bios_cmd_table_para_revision.exit25.thread.i.i

bios_cmd_table_para_revision.exit25.thread.i.i:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i19.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i18.i.i) #4
  br label %if.else9.i.i

bios_cmd_table_para_revision.exit25.i.i:          ; preds = %if.end.i.i
  %30 = ptrtoint ptr %crev.i19.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %crev.i19.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i19.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i18.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp7.i.i = icmp eq i8 %31, 1
  br i1 %cmp7.i.i, label %bios_cmd_table_para_revision.exit25.i.i.init_encoder_control_dig_v1.exit.i_crit_edge, label %bios_cmd_table_para_revision.exit25.i.i.if.else9.i.i_crit_edge

bios_cmd_table_para_revision.exit25.i.i.if.else9.i.i_crit_edge: ; preds = %bios_cmd_table_para_revision.exit25.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else9.i.i

bios_cmd_table_para_revision.exit25.i.i.init_encoder_control_dig_v1.exit.i_crit_edge: ; preds = %bios_cmd_table_para_revision.exit25.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_encoder_control_dig_v1.exit.i

if.else9.i.i:                                     ; preds = %bios_cmd_table_para_revision.exit25.i.i.if.else9.i.i_crit_edge, %bios_cmd_table_para_revision.exit25.thread.i.i
  br label %init_encoder_control_dig_v1.exit.i

init_encoder_control_dig_v1.exit.i:               ; preds = %if.else9.i.i, %bios_cmd_table_para_revision.exit25.i.i.init_encoder_control_dig_v1.exit.i_crit_edge
  %.sink30.i.i = phi ptr [ null, %if.else9.i.i ], [ @encoder_control_dig2_v1, %bios_cmd_table_para_revision.exit25.i.i.init_encoder_control_dig_v1.exit.i_crit_edge ]
  %encoder_control_dig210.i.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %encoder_control_dig210.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.sink30.i.i, ptr %encoder_control_dig210.i.i, align 4
  br label %init_dig_encoder_control.exit

init_dig_encoder_control.exit:                    ; preds = %init_encoder_control_dig_v1.exit.i, %sw.bb4.i, %sw.bb1.i, %bios_cmd_table_para_revision.exit.i.init_dig_encoder_control.exit_crit_edge
  %encoder_control_dig_v1.sink.i = phi ptr [ @encoder_control_dig_v1, %init_encoder_control_dig_v1.exit.i ], [ @encoder_control_digx_v5, %sw.bb4.i ], [ @encoder_control_digx_v4, %sw.bb1.i ], [ @encoder_control_digx_v3, %bios_cmd_table_para_revision.exit.i.init_dig_encoder_control.exit_crit_edge ]
  %cmd_tbl1.i.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6
  %33 = ptrtoint ptr %cmd_tbl1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %encoder_control_dig_v1.sink.i, ptr %cmd_tbl1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #4
  %34 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %frev.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #4
  %35 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %crev.i, align 1, !annotation !48
  %36 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx.i, align 4
  %driver_context.i15 = getelementptr inbounds %struct.dc_context, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %driver_context.i15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_context.i15, align 4
  %mode_info.i = getelementptr inbounds %struct.amdgpu_device, ptr %39, i32 0, i32 79
  %40 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mode_info.i, align 8
  %call.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %41, i32 noundef 76, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #4
  br i1 %call.i, label %init_dig_encoder_control.exit.if.end.i_crit_edge, label %do.body.i

init_dig_encoder_control.exit.if.end.i_crit_edge: ; preds = %init_dig_encoder_control.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.body.i:                                        ; preds = %init_dig_encoder_control.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.init_transmitter_control, i32 noundef 406) #4
  call void @kgdb_breakpoint() #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %init_dig_encoder_control.exit.if.end.i_crit_edge
  %42 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %crev.i, align 1
  %switch.tableidx = add i8 %43, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %44 = icmp ult i8 %switch.tableidx, 5
  br i1 %44, label %switch.lookup, label %sw.default.i16

sw.default.i16:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv2.i = zext i8 %43 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv2.i) #4
  br label %init_transmitter_control.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %45 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.dal_bios_parser_init_cmd_tbl, i32 0, i32 %45
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %init_transmitter_control.exit

init_transmitter_control.exit:                    ; preds = %switch.lookup, %sw.default.i16
  %.sink.i = phi ptr [ null, %sw.default.i16 ], [ %switch.load, %switch.lookup ]
  %transmitter_control17.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 3
  %47 = ptrtoint ptr %transmitter_control17.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %.sink.i, ptr %transmitter_control17.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #4
  %48 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx.i, align 4
  %driver_context.i20 = getelementptr inbounds %struct.dc_context, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %driver_context.i20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_context.i20, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i17) #4
  %52 = ptrtoint ptr %frev.i.i17 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %frev.i.i17, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i18) #4
  %53 = ptrtoint ptr %crev.i.i18 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %crev.i.i18, align 1, !annotation !48
  %mode_info.i.i21 = getelementptr inbounds %struct.amdgpu_device, ptr %51, i32 0, i32 79
  %54 = ptrtoint ptr %mode_info.i.i21 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mode_info.i.i21, align 8
  %call.i.i22 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %55, i32 noundef 12, ptr noundef nonnull %frev.i.i17, ptr noundef nonnull %crev.i.i18) #4
  br i1 %call.i.i22, label %bios_cmd_table_para_revision.exit.i24, label %bios_cmd_table_para_revision.exit.thread.i23

bios_cmd_table_para_revision.exit.thread.i23:     ; preds = %init_transmitter_control.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i18) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i17) #4
  br label %sw.default.i27

bios_cmd_table_para_revision.exit.i24:            ; preds = %init_transmitter_control.exit
  %56 = ptrtoint ptr %crev.i.i18 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %crev.i.i18, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i18) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i17) #4
  %switch.tableidx196 = add i8 %57, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx196)
  %58 = icmp ult i8 %switch.tableidx196, 5
  br i1 %58, label %switch.hole_check, label %bios_cmd_table_para_revision.exit.i24.sw.default.i27_crit_edge

bios_cmd_table_para_revision.exit.i24.sw.default.i27_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i27

sw.default.i27:                                   ; preds = %switch.hole_check.sw.default.i27_crit_edge, %bios_cmd_table_para_revision.exit.i24.sw.default.i27_crit_edge, %bios_cmd_table_para_revision.exit.thread.i23
  %59 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctx.i, align 4
  %driver_context12.i = getelementptr inbounds %struct.dc_context, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %driver_context12.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_context12.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i22.i) #4
  %63 = ptrtoint ptr %frev.i22.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %frev.i22.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i23.i) #4
  %64 = ptrtoint ptr %crev.i23.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %crev.i23.i, align 1, !annotation !48
  %mode_info.i24.i = getelementptr inbounds %struct.amdgpu_device, ptr %62, i32 0, i32 79
  %65 = ptrtoint ptr %mode_info.i24.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mode_info.i24.i, align 8
  %call.i25.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %66, i32 noundef 12, ptr noundef nonnull %frev.i22.i, ptr noundef nonnull %crev.i23.i) #4
  br i1 %call.i25.i, label %if.then.i27.i, label %sw.default.i27.bios_cmd_table_para_revision.exit29.i_crit_edge

sw.default.i27.bios_cmd_table_para_revision.exit29.i_crit_edge: ; preds = %sw.default.i27
  call void @__sanitizer_cov_trace_pc() #6
  br label %bios_cmd_table_para_revision.exit29.i

if.then.i27.i:                                    ; preds = %sw.default.i27
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %crev.i23.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %crev.i23.i, align 1
  %conv.i26.i = zext i8 %68 to i32
  br label %bios_cmd_table_para_revision.exit29.i

bios_cmd_table_para_revision.exit29.i:            ; preds = %if.then.i27.i, %sw.default.i27.bios_cmd_table_para_revision.exit29.i_crit_edge
  %retval.0.i28.i = phi i32 [ %conv.i26.i, %if.then.i27.i ], [ 0, %sw.default.i27.bios_cmd_table_para_revision.exit29.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i23.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i22.i) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i28.i) #4
  br label %init_set_pixel_clock.exit

switch.hole_check:                                ; preds = %bios_cmd_table_para_revision.exit.i24
  %switch.shifted = lshr i8 29, %switch.tableidx196
  %69 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %switch.lobit.not = icmp eq i8 %69, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i27_crit_edge, label %switch.lookup197

switch.hole_check.sw.default.i27_crit_edge:       ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i27

switch.lookup197:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %70 = sext i8 %switch.tableidx196 to i32
  %switch.gep198 = getelementptr inbounds [5 x ptr], ptr @switch.table.dal_bios_parser_init_cmd_tbl.11, i32 0, i32 %70
  %71 = ptrtoint ptr %switch.gep198 to i32
  call void @__asan_load4_noabort(i32 %71)
  %switch.load199 = load ptr, ptr %switch.gep198, align 4
  br label %init_set_pixel_clock.exit

init_set_pixel_clock.exit:                        ; preds = %switch.lookup197, %bios_cmd_table_para_revision.exit29.i
  %.sink.i28 = phi ptr [ null, %bios_cmd_table_para_revision.exit29.i ], [ %switch.load199, %switch.lookup197 ]
  %set_pixel_clock15.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 4
  %72 = ptrtoint ptr %set_pixel_clock15.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %.sink.i28, ptr %set_pixel_clock15.i, align 4
  %73 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctx.i, align 4
  %driver_context.i32 = getelementptr inbounds %struct.dc_context, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %driver_context.i32 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_context.i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i29) #4
  %77 = ptrtoint ptr %frev.i.i29 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %frev.i.i29, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i30) #4
  %78 = ptrtoint ptr %crev.i.i30 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %crev.i.i30, align 1, !annotation !48
  %mode_info.i.i33 = getelementptr inbounds %struct.amdgpu_device, ptr %76, i32 0, i32 79
  %79 = ptrtoint ptr %mode_info.i.i33 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mode_info.i.i33, align 8
  %call.i.i34 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %80, i32 noundef 65, ptr noundef nonnull %frev.i.i29, ptr noundef nonnull %crev.i.i30) #4
  br i1 %call.i.i34, label %bios_cmd_table_para_revision.exit.i36, label %bios_cmd_table_para_revision.exit.thread.i35

bios_cmd_table_para_revision.exit.thread.i35:     ; preds = %init_set_pixel_clock.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i30) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i29) #4
  br label %sw.default.i39

bios_cmd_table_para_revision.exit.i36:            ; preds = %init_set_pixel_clock.exit
  %81 = ptrtoint ptr %crev.i.i30 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %crev.i.i30, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i30) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i29) #4
  %switch.tableidx201 = add i8 %82, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx201)
  %83 = icmp ult i8 %switch.tableidx201, 3
  br i1 %83, label %switch.lookup200, label %bios_cmd_table_para_revision.exit.i36.sw.default.i39_crit_edge

bios_cmd_table_para_revision.exit.i36.sw.default.i39_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i36
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i39

sw.default.i39:                                   ; preds = %bios_cmd_table_para_revision.exit.i36.sw.default.i39_crit_edge, %bios_cmd_table_para_revision.exit.thread.i35
  %84 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctx.i, align 4
  %driver_context9.i = getelementptr inbounds %struct.dc_context, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %driver_context9.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver_context9.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i18.i) #4
  %88 = ptrtoint ptr %frev.i18.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %frev.i18.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i19.i) #4
  %89 = ptrtoint ptr %crev.i19.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %crev.i19.i, align 1, !annotation !48
  %mode_info.i20.i = getelementptr inbounds %struct.amdgpu_device, ptr %87, i32 0, i32 79
  %90 = ptrtoint ptr %mode_info.i20.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mode_info.i20.i, align 8
  %call.i21.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %91, i32 noundef 65, ptr noundef nonnull %frev.i18.i, ptr noundef nonnull %crev.i19.i) #4
  br i1 %call.i21.i, label %if.then.i23.i, label %sw.default.i39.bios_cmd_table_para_revision.exit25.i_crit_edge

sw.default.i39.bios_cmd_table_para_revision.exit25.i_crit_edge: ; preds = %sw.default.i39
  call void @__sanitizer_cov_trace_pc() #6
  br label %bios_cmd_table_para_revision.exit25.i

if.then.i23.i:                                    ; preds = %sw.default.i39
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %crev.i19.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %crev.i19.i, align 1
  %conv.i22.i = zext i8 %93 to i32
  br label %bios_cmd_table_para_revision.exit25.i

bios_cmd_table_para_revision.exit25.i:            ; preds = %if.then.i23.i, %sw.default.i39.bios_cmd_table_para_revision.exit25.i_crit_edge
  %retval.0.i24.i = phi i32 [ %conv.i22.i, %if.then.i23.i ], [ 0, %sw.default.i39.bios_cmd_table_para_revision.exit25.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i19.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i18.i) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i24.i) #4
  br label %init_enable_spread_spectrum_on_ppll.exit

switch.lookup200:                                 ; preds = %bios_cmd_table_para_revision.exit.i36
  call void @__sanitizer_cov_trace_pc() #6
  %94 = sext i8 %switch.tableidx201 to i32
  %switch.gep202 = getelementptr inbounds [3 x ptr], ptr @switch.table.dal_bios_parser_init_cmd_tbl.12, i32 0, i32 %94
  %95 = ptrtoint ptr %switch.gep202 to i32
  call void @__asan_load4_noabort(i32 %95)
  %switch.load203 = load ptr, ptr %switch.gep202, align 4
  br label %init_enable_spread_spectrum_on_ppll.exit

init_enable_spread_spectrum_on_ppll.exit:         ; preds = %switch.lookup200, %bios_cmd_table_para_revision.exit25.i
  %.sink.i40 = phi ptr [ null, %bios_cmd_table_para_revision.exit25.i ], [ %switch.load203, %switch.lookup200 ]
  %enable_spread_spectrum_on_ppll12.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 5
  %96 = ptrtoint ptr %enable_spread_spectrum_on_ppll12.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %.sink.i40, ptr %enable_spread_spectrum_on_ppll12.i, align 4
  %97 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ctx.i, align 4
  %driver_context.i44 = getelementptr inbounds %struct.dc_context, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %driver_context.i44 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %driver_context.i44, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i41) #4
  %101 = ptrtoint ptr %frev.i.i41 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %frev.i.i41, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i42) #4
  %102 = ptrtoint ptr %crev.i.i42 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -1, ptr %crev.i.i42, align 1, !annotation !48
  %mode_info.i.i45 = getelementptr inbounds %struct.amdgpu_device, ptr %100, i32 0, i32 79
  %103 = ptrtoint ptr %mode_info.i.i45 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mode_info.i.i45, align 8
  %call.i.i46 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %104, i32 noundef 17, ptr noundef nonnull %frev.i.i41, ptr noundef nonnull %crev.i.i42) #4
  br i1 %call.i.i46, label %bios_cmd_table_para_revision.exit.i48, label %bios_cmd_table_para_revision.exit.thread.i47

bios_cmd_table_para_revision.exit.thread.i47:     ; preds = %init_enable_spread_spectrum_on_ppll.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i42) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i41) #4
  br label %sw.default.i50

bios_cmd_table_para_revision.exit.i48:            ; preds = %init_enable_spread_spectrum_on_ppll.exit
  %105 = ptrtoint ptr %crev.i.i42 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %crev.i.i42, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i42) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i41) #4
  %107 = zext i8 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %106, label %bios_cmd_table_para_revision.exit.i48.sw.default.i50_crit_edge [
    i8 2, label %bios_cmd_table_para_revision.exit.i48.init_adjust_display_pll.exit_crit_edge
    i8 3, label %sw.bb1.i49
  ]

bios_cmd_table_para_revision.exit.i48.init_adjust_display_pll.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i48
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_adjust_display_pll.exit

bios_cmd_table_para_revision.exit.i48.sw.default.i50_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i48
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i50

sw.bb1.i49:                                       ; preds = %bios_cmd_table_para_revision.exit.i48
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_adjust_display_pll.exit

sw.default.i50:                                   ; preds = %bios_cmd_table_para_revision.exit.i48.sw.default.i50_crit_edge, %bios_cmd_table_para_revision.exit.thread.i47
  %108 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ctx.i, align 4
  %driver_context6.i = getelementptr inbounds %struct.dc_context, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %driver_context6.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %driver_context6.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i14.i) #4
  %112 = ptrtoint ptr %frev.i14.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -1, ptr %frev.i14.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i15.i) #4
  %113 = ptrtoint ptr %crev.i15.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %crev.i15.i, align 1, !annotation !48
  %mode_info.i16.i = getelementptr inbounds %struct.amdgpu_device, ptr %111, i32 0, i32 79
  %114 = ptrtoint ptr %mode_info.i16.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mode_info.i16.i, align 8
  %call.i17.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %115, i32 noundef 17, ptr noundef nonnull %frev.i14.i, ptr noundef nonnull %crev.i15.i) #4
  br i1 %call.i17.i, label %if.then.i19.i, label %sw.default.i50.bios_cmd_table_para_revision.exit21.i_crit_edge

sw.default.i50.bios_cmd_table_para_revision.exit21.i_crit_edge: ; preds = %sw.default.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %bios_cmd_table_para_revision.exit21.i

if.then.i19.i:                                    ; preds = %sw.default.i50
  call void @__sanitizer_cov_trace_pc() #6
  %116 = ptrtoint ptr %crev.i15.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %crev.i15.i, align 1
  %conv.i18.i = zext i8 %117 to i32
  br label %bios_cmd_table_para_revision.exit21.i

bios_cmd_table_para_revision.exit21.i:            ; preds = %if.then.i19.i, %sw.default.i50.bios_cmd_table_para_revision.exit21.i_crit_edge
  %retval.0.i20.i = phi i32 [ %conv.i18.i, %if.then.i19.i ], [ 0, %sw.default.i50.bios_cmd_table_para_revision.exit21.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i15.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i14.i) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i20.i) #4
  br label %init_adjust_display_pll.exit

init_adjust_display_pll.exit:                     ; preds = %bios_cmd_table_para_revision.exit21.i, %sw.bb1.i49, %bios_cmd_table_para_revision.exit.i48.init_adjust_display_pll.exit_crit_edge
  %.sink.i51 = phi ptr [ null, %bios_cmd_table_para_revision.exit21.i ], [ @adjust_display_pll_v3, %sw.bb1.i49 ], [ @adjust_display_pll_v2, %bios_cmd_table_para_revision.exit.i48.init_adjust_display_pll.exit_crit_edge ]
  %adjust_display_pll9.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 6
  %118 = ptrtoint ptr %adjust_display_pll9.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %.sink.i51, ptr %adjust_display_pll9.i, align 4
  %119 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ctx.i, align 4
  %driver_context.i55 = getelementptr inbounds %struct.dc_context, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %driver_context.i55 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %driver_context.i55, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i52) #4
  %123 = ptrtoint ptr %frev.i.i52 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -1, ptr %frev.i.i52, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i53) #4
  %124 = ptrtoint ptr %crev.i.i53 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -1, ptr %crev.i.i53, align 1, !annotation !48
  %mode_info.i.i56 = getelementptr inbounds %struct.amdgpu_device, ptr %122, i32 0, i32 79
  %125 = ptrtoint ptr %mode_info.i.i56 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mode_info.i.i56, align 8
  %call.i.i57 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %126, i32 noundef 24, ptr noundef nonnull %frev.i.i52, ptr noundef nonnull %crev.i.i53) #4
  br i1 %call.i.i57, label %bios_cmd_table_para_revision.exit.i59, label %bios_cmd_table_para_revision.exit.thread.i58

bios_cmd_table_para_revision.exit.thread.i58:     ; preds = %init_adjust_display_pll.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i53) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i52) #4
  br label %sw.default.i60

bios_cmd_table_para_revision.exit.i59:            ; preds = %init_adjust_display_pll.exit
  %127 = ptrtoint ptr %crev.i.i53 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %crev.i.i53, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i53) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i52) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %128)
  %cond.i = icmp eq i8 %128, 1
  br i1 %cond.i, label %bios_cmd_table_para_revision.exit.i59.sw.epilog.i_crit_edge, label %bios_cmd_table_para_revision.exit.i59.sw.default.i60_crit_edge

bios_cmd_table_para_revision.exit.i59.sw.default.i60_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i59
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i60

bios_cmd_table_para_revision.exit.i59.sw.epilog.i_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i59
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.default.i60:                                   ; preds = %bios_cmd_table_para_revision.exit.i59.sw.default.i60_crit_edge, %bios_cmd_table_para_revision.exit.thread.i58
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i60, %bios_cmd_table_para_revision.exit.i59.sw.epilog.i_crit_edge
  %.sink.i61 = phi ptr [ null, %sw.default.i60 ], [ @dac1_encoder_control_v1, %bios_cmd_table_para_revision.exit.i59.sw.epilog.i_crit_edge ]
  %dac1_encoder_control2.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 7
  %129 = ptrtoint ptr %dac1_encoder_control2.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %.sink.i61, ptr %dac1_encoder_control2.i, align 4
  %130 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ctx.i, align 4
  %driver_context5.i = getelementptr inbounds %struct.dc_context, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %driver_context5.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %driver_context5.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i19.i) #4
  %134 = ptrtoint ptr %frev.i19.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -1, ptr %frev.i19.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i20.i) #4
  %135 = ptrtoint ptr %crev.i20.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %crev.i20.i, align 1, !annotation !48
  %mode_info.i21.i = getelementptr inbounds %struct.amdgpu_device, ptr %133, i32 0, i32 79
  %136 = ptrtoint ptr %mode_info.i21.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mode_info.i21.i, align 8
  %call.i22.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %137, i32 noundef 25, ptr noundef nonnull %frev.i19.i, ptr noundef nonnull %crev.i20.i) #4
  br i1 %call.i22.i, label %bios_cmd_table_para_revision.exit26.i, label %bios_cmd_table_para_revision.exit26.thread.i

bios_cmd_table_para_revision.exit26.thread.i:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i20.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i19.i) #4
  br label %sw.default9.i

bios_cmd_table_para_revision.exit26.i:            ; preds = %sw.epilog.i
  %138 = ptrtoint ptr %crev.i20.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %crev.i20.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i20.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i19.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %139)
  %cond13.i = icmp eq i8 %139, 1
  br i1 %cond13.i, label %bios_cmd_table_para_revision.exit26.i.init_dac_encoder_control.exit_crit_edge, label %bios_cmd_table_para_revision.exit26.i.sw.default9.i_crit_edge

bios_cmd_table_para_revision.exit26.i.sw.default9.i_crit_edge: ; preds = %bios_cmd_table_para_revision.exit26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default9.i

bios_cmd_table_para_revision.exit26.i.init_dac_encoder_control.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_dac_encoder_control.exit

sw.default9.i:                                    ; preds = %bios_cmd_table_para_revision.exit26.i.sw.default9.i_crit_edge, %bios_cmd_table_para_revision.exit26.thread.i
  br label %init_dac_encoder_control.exit

init_dac_encoder_control.exit:                    ; preds = %sw.default9.i, %bios_cmd_table_para_revision.exit26.i.init_dac_encoder_control.exit_crit_edge
  %.sink31.i = phi ptr [ null, %sw.default9.i ], [ @dac2_encoder_control_v1, %bios_cmd_table_para_revision.exit26.i.init_dac_encoder_control.exit_crit_edge ]
  %dac2_encoder_control11.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 8
  %140 = ptrtoint ptr %dac2_encoder_control11.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %.sink31.i, ptr %dac2_encoder_control11.i, align 4
  %141 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ctx.i, align 4
  %driver_context.i67 = getelementptr inbounds %struct.dc_context, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %driver_context.i67 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %driver_context.i67, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i64) #4
  %145 = ptrtoint ptr %frev.i.i64 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -1, ptr %frev.i.i64, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i65) #4
  %146 = ptrtoint ptr %crev.i.i65 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -1, ptr %crev.i.i65, align 1, !annotation !48
  %mode_info.i.i68 = getelementptr inbounds %struct.amdgpu_device, ptr %144, i32 0, i32 79
  %147 = ptrtoint ptr %mode_info.i.i68 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mode_info.i.i68, align 8
  %call.i.i69 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %148, i32 noundef 68, ptr noundef nonnull %frev.i.i64, ptr noundef nonnull %crev.i.i65) #4
  br i1 %call.i.i69, label %bios_cmd_table_para_revision.exit.i72, label %bios_cmd_table_para_revision.exit.thread.i70

bios_cmd_table_para_revision.exit.thread.i70:     ; preds = %init_dac_encoder_control.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i65) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i64) #4
  br label %sw.default.i73

bios_cmd_table_para_revision.exit.i72:            ; preds = %init_dac_encoder_control.exit
  %149 = ptrtoint ptr %crev.i.i65 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %crev.i.i65, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i65) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i64) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %150)
  %cond.i71 = icmp eq i8 %150, 1
  br i1 %cond.i71, label %bios_cmd_table_para_revision.exit.i72.sw.epilog.i78_crit_edge, label %bios_cmd_table_para_revision.exit.i72.sw.default.i73_crit_edge

bios_cmd_table_para_revision.exit.i72.sw.default.i73_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i72
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i73

bios_cmd_table_para_revision.exit.i72.sw.epilog.i78_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i72
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i78

sw.default.i73:                                   ; preds = %bios_cmd_table_para_revision.exit.i72.sw.default.i73_crit_edge, %bios_cmd_table_para_revision.exit.thread.i70
  br label %sw.epilog.i78

sw.epilog.i78:                                    ; preds = %sw.default.i73, %bios_cmd_table_para_revision.exit.i72.sw.epilog.i78_crit_edge
  %.sink.i74 = phi ptr [ null, %sw.default.i73 ], [ @dac1_output_control_v1, %bios_cmd_table_para_revision.exit.i72.sw.epilog.i78_crit_edge ]
  %dac1_output_control2.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 9
  %151 = ptrtoint ptr %dac1_output_control2.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %.sink.i74, ptr %dac1_output_control2.i, align 4
  %152 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ctx.i, align 4
  %driver_context5.i75 = getelementptr inbounds %struct.dc_context, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %driver_context5.i75 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %driver_context5.i75, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i19.i62) #4
  %156 = ptrtoint ptr %frev.i19.i62 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 -1, ptr %frev.i19.i62, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i20.i63) #4
  %157 = ptrtoint ptr %crev.i20.i63 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 -1, ptr %crev.i20.i63, align 1, !annotation !48
  %mode_info.i21.i76 = getelementptr inbounds %struct.amdgpu_device, ptr %155, i32 0, i32 79
  %158 = ptrtoint ptr %mode_info.i21.i76 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mode_info.i21.i76, align 8
  %call.i22.i77 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %159, i32 noundef 69, ptr noundef nonnull %frev.i19.i62, ptr noundef nonnull %crev.i20.i63) #4
  br i1 %call.i22.i77, label %bios_cmd_table_para_revision.exit26.i81, label %bios_cmd_table_para_revision.exit26.thread.i79

bios_cmd_table_para_revision.exit26.thread.i79:   ; preds = %sw.epilog.i78
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i20.i63) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i19.i62) #4
  br label %sw.default9.i82

bios_cmd_table_para_revision.exit26.i81:          ; preds = %sw.epilog.i78
  %160 = ptrtoint ptr %crev.i20.i63 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %crev.i20.i63, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i20.i63) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i19.i62) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %161)
  %cond13.i80 = icmp eq i8 %161, 1
  br i1 %cond13.i80, label %bios_cmd_table_para_revision.exit26.i81.init_dac_output_control.exit_crit_edge, label %bios_cmd_table_para_revision.exit26.i81.sw.default9.i82_crit_edge

bios_cmd_table_para_revision.exit26.i81.sw.default9.i82_crit_edge: ; preds = %bios_cmd_table_para_revision.exit26.i81
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default9.i82

bios_cmd_table_para_revision.exit26.i81.init_dac_output_control.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit26.i81
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_dac_output_control.exit

sw.default9.i82:                                  ; preds = %bios_cmd_table_para_revision.exit26.i81.sw.default9.i82_crit_edge, %bios_cmd_table_para_revision.exit26.thread.i79
  br label %init_dac_output_control.exit

init_dac_output_control.exit:                     ; preds = %sw.default9.i82, %bios_cmd_table_para_revision.exit26.i81.init_dac_output_control.exit_crit_edge
  %.sink31.i83 = phi ptr [ null, %sw.default9.i82 ], [ @dac2_output_control_v1, %bios_cmd_table_para_revision.exit26.i81.init_dac_output_control.exit_crit_edge ]
  %dac2_output_control11.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 10
  %162 = ptrtoint ptr %dac2_output_control11.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %.sink31.i83, ptr %dac2_output_control11.i, align 4
  %163 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ctx.i, align 4
  %driver_context.i87 = getelementptr inbounds %struct.dc_context, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %driver_context.i87 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %driver_context.i87, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i84) #4
  %167 = ptrtoint ptr %frev.i.i84 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 -1, ptr %frev.i.i84, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i85) #4
  %168 = ptrtoint ptr %crev.i.i85 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -1, ptr %crev.i.i85, align 1, !annotation !48
  %mode_info.i.i88 = getelementptr inbounds %struct.amdgpu_device, ptr %166, i32 0, i32 79
  %169 = ptrtoint ptr %mode_info.i.i88 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %mode_info.i.i88, align 8
  %call.i.i89 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %170, i32 noundef 49, ptr noundef nonnull %frev.i.i84, ptr noundef nonnull %crev.i.i85) #4
  br i1 %call.i.i89, label %bios_cmd_table_para_revision.exit.i91, label %bios_cmd_table_para_revision.exit.thread.i90

bios_cmd_table_para_revision.exit.thread.i90:     ; preds = %init_dac_output_control.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i85) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i84) #4
  br label %if.else.i

bios_cmd_table_para_revision.exit.i91:            ; preds = %init_dac_output_control.exit
  %171 = ptrtoint ptr %crev.i.i85 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %crev.i.i85, align 1
  %conv.i.i = zext i8 %172 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i85) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i84) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %172)
  %cmp.i = icmp ugt i8 %172, 2
  br i1 %cmp.i, label %if.then.i, label %bios_cmd_table_para_revision.exit.i91.if.else.i_crit_edge

bios_cmd_table_para_revision.exit.i91.if.else.i_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.i:                                        ; preds = %bios_cmd_table_para_revision.exit.i91
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %172)
  %cond18.i = icmp eq i8 %172, 3
  br i1 %cond18.i, label %if.then.i.init_set_crtc_timing.exit_crit_edge, label %sw.default.i92

if.then.i.init_set_crtc_timing.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_set_crtc_timing.exit

sw.default.i92:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %conv.i.i) #4
  br label %init_set_crtc_timing.exit

if.else.i:                                        ; preds = %bios_cmd_table_para_revision.exit.i91.if.else.i_crit_edge, %bios_cmd_table_para_revision.exit.thread.i90
  %173 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ctx.i, align 4
  %driver_context5.i93 = getelementptr inbounds %struct.dc_context, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %driver_context5.i93 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %driver_context5.i93, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i27.i) #4
  %177 = ptrtoint ptr %frev.i27.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 -1, ptr %frev.i27.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i28.i) #4
  %178 = ptrtoint ptr %crev.i28.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -1, ptr %crev.i28.i, align 1, !annotation !48
  %mode_info.i29.i = getelementptr inbounds %struct.amdgpu_device, ptr %176, i32 0, i32 79
  %179 = ptrtoint ptr %mode_info.i29.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mode_info.i29.i, align 8
  %call.i30.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %180, i32 noundef 39, ptr noundef nonnull %frev.i27.i, ptr noundef nonnull %crev.i28.i) #4
  br i1 %call.i30.i, label %bios_cmd_table_para_revision.exit34.i, label %bios_cmd_table_para_revision.exit34.thread.i

bios_cmd_table_para_revision.exit34.thread.i:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i28.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i27.i) #4
  br label %sw.default10.i

bios_cmd_table_para_revision.exit34.i:            ; preds = %if.else.i
  %181 = ptrtoint ptr %crev.i28.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %crev.i28.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i28.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i27.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %182)
  %cond.i94 = icmp eq i8 %182, 1
  br i1 %cond.i94, label %bios_cmd_table_para_revision.exit34.i.init_set_crtc_timing.exit_crit_edge, label %bios_cmd_table_para_revision.exit34.i.sw.default10.i_crit_edge

bios_cmd_table_para_revision.exit34.i.sw.default10.i_crit_edge: ; preds = %bios_cmd_table_para_revision.exit34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default10.i

bios_cmd_table_para_revision.exit34.i.init_set_crtc_timing.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_set_crtc_timing.exit

sw.default10.i:                                   ; preds = %bios_cmd_table_para_revision.exit34.i.sw.default10.i_crit_edge, %bios_cmd_table_para_revision.exit34.thread.i
  %183 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ctx.i, align 4
  %driver_context13.i = getelementptr inbounds %struct.dc_context, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %driver_context13.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %driver_context13.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i35.i) #4
  %187 = ptrtoint ptr %frev.i35.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -1, ptr %frev.i35.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i36.i) #4
  %188 = ptrtoint ptr %crev.i36.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 -1, ptr %crev.i36.i, align 1, !annotation !48
  %mode_info.i37.i = getelementptr inbounds %struct.amdgpu_device, ptr %186, i32 0, i32 79
  %189 = ptrtoint ptr %mode_info.i37.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mode_info.i37.i, align 8
  %call.i38.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %190, i32 noundef 39, ptr noundef nonnull %frev.i35.i, ptr noundef nonnull %crev.i36.i) #4
  br i1 %call.i38.i, label %if.then.i40.i, label %sw.default10.i.bios_cmd_table_para_revision.exit42.i_crit_edge

sw.default10.i.bios_cmd_table_para_revision.exit42.i_crit_edge: ; preds = %sw.default10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bios_cmd_table_para_revision.exit42.i

if.then.i40.i:                                    ; preds = %sw.default10.i
  call void @__sanitizer_cov_trace_pc() #6
  %191 = ptrtoint ptr %crev.i36.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %crev.i36.i, align 1
  %conv.i39.i = zext i8 %192 to i32
  br label %bios_cmd_table_para_revision.exit42.i

bios_cmd_table_para_revision.exit42.i:            ; preds = %if.then.i40.i, %sw.default10.i.bios_cmd_table_para_revision.exit42.i_crit_edge
  %retval.0.i41.i = phi i32 [ %conv.i39.i, %if.then.i40.i ], [ 0, %sw.default10.i.bios_cmd_table_para_revision.exit42.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i36.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i35.i) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i41.i) #4
  br label %init_set_crtc_timing.exit

init_set_crtc_timing.exit:                        ; preds = %bios_cmd_table_para_revision.exit42.i, %bios_cmd_table_para_revision.exit34.i.init_set_crtc_timing.exit_crit_edge, %sw.default.i92, %if.then.i.init_set_crtc_timing.exit_crit_edge
  %set_crtc_timing_v1.sink.i = phi ptr [ null, %bios_cmd_table_para_revision.exit42.i ], [ null, %sw.default.i92 ], [ @set_crtc_using_dtd_timing_v3, %if.then.i.init_set_crtc_timing.exit_crit_edge ], [ @set_crtc_timing_v1, %bios_cmd_table_para_revision.exit34.i.init_set_crtc_timing.exit_crit_edge ]
  %set_crtc_timing9.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 11
  %193 = ptrtoint ptr %set_crtc_timing9.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %set_crtc_timing_v1.sink.i, ptr %set_crtc_timing9.i, align 4
  %194 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ctx.i, align 4
  %driver_context.i99 = getelementptr inbounds %struct.dc_context, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %driver_context.i99 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %driver_context.i99, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i96) #4
  %198 = ptrtoint ptr %frev.i.i96 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 -1, ptr %frev.i.i96, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i97) #4
  %199 = ptrtoint ptr %crev.i.i97 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 -1, ptr %crev.i.i97, align 1, !annotation !48
  %mode_info.i.i100 = getelementptr inbounds %struct.amdgpu_device, ptr %197, i32 0, i32 79
  %200 = ptrtoint ptr %mode_info.i.i100 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mode_info.i.i100, align 8
  %call.i.i101 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %201, i32 noundef 35, ptr noundef nonnull %frev.i.i96, ptr noundef nonnull %crev.i.i97) #4
  br i1 %call.i.i101, label %bios_cmd_table_para_revision.exit.i104, label %bios_cmd_table_para_revision.exit.thread.i102

bios_cmd_table_para_revision.exit.thread.i102:    ; preds = %init_set_crtc_timing.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i97) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i96) #4
  br label %sw.default.i105

bios_cmd_table_para_revision.exit.i104:           ; preds = %init_set_crtc_timing.exit
  %202 = ptrtoint ptr %crev.i.i97 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %crev.i.i97, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i97) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i96) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %203)
  %cond.i103 = icmp eq i8 %203, 1
  br i1 %cond.i103, label %bios_cmd_table_para_revision.exit.i104.init_enable_crtc.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i104.sw.default.i105_crit_edge

bios_cmd_table_para_revision.exit.i104.sw.default.i105_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i104
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i105

bios_cmd_table_para_revision.exit.i104.init_enable_crtc.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i104
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_enable_crtc.exit

sw.default.i105:                                  ; preds = %bios_cmd_table_para_revision.exit.i104.sw.default.i105_crit_edge, %bios_cmd_table_para_revision.exit.thread.i102
  %204 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ctx.i, align 4
  %driver_context3.i = getelementptr inbounds %struct.dc_context, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %driver_context3.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %driver_context3.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i10.i) #4
  %208 = ptrtoint ptr %frev.i10.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 -1, ptr %frev.i10.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i11.i) #4
  %209 = ptrtoint ptr %crev.i11.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 -1, ptr %crev.i11.i, align 1, !annotation !48
  %mode_info.i12.i = getelementptr inbounds %struct.amdgpu_device, ptr %207, i32 0, i32 79
  %210 = ptrtoint ptr %mode_info.i12.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %mode_info.i12.i, align 8
  %call.i13.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %211, i32 noundef 35, ptr noundef nonnull %frev.i10.i, ptr noundef nonnull %crev.i11.i) #4
  br i1 %call.i13.i, label %if.then.i15.i, label %sw.default.i105.bios_cmd_table_para_revision.exit17.i_crit_edge

sw.default.i105.bios_cmd_table_para_revision.exit17.i_crit_edge: ; preds = %sw.default.i105
  call void @__sanitizer_cov_trace_pc() #6
  br label %bios_cmd_table_para_revision.exit17.i

if.then.i15.i:                                    ; preds = %sw.default.i105
  call void @__sanitizer_cov_trace_pc() #6
  %212 = ptrtoint ptr %crev.i11.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %crev.i11.i, align 1
  %conv.i14.i = zext i8 %213 to i32
  br label %bios_cmd_table_para_revision.exit17.i

bios_cmd_table_para_revision.exit17.i:            ; preds = %if.then.i15.i, %sw.default.i105.bios_cmd_table_para_revision.exit17.i_crit_edge
  %retval.0.i16.i = phi i32 [ %conv.i14.i, %if.then.i15.i ], [ 0, %sw.default.i105.bios_cmd_table_para_revision.exit17.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i11.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i10.i) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i16.i) #4
  br label %init_enable_crtc.exit

init_enable_crtc.exit:                            ; preds = %bios_cmd_table_para_revision.exit17.i, %bios_cmd_table_para_revision.exit.i104.init_enable_crtc.exit_crit_edge
  %.sink.i106 = phi ptr [ null, %bios_cmd_table_para_revision.exit17.i ], [ @enable_crtc_v1, %bios_cmd_table_para_revision.exit.i104.init_enable_crtc.exit_crit_edge ]
  %enable_crtc6.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 12
  %214 = ptrtoint ptr %enable_crtc6.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %.sink.i106, ptr %enable_crtc6.i, align 4
  %215 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ctx.i, align 4
  %driver_context.i111 = getelementptr inbounds %struct.dc_context, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %driver_context.i111 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %driver_context.i111, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i108) #4
  %219 = ptrtoint ptr %frev.i.i108 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 -1, ptr %frev.i.i108, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i109) #4
  %220 = ptrtoint ptr %crev.i.i109 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 -1, ptr %crev.i.i109, align 1, !annotation !48
  %mode_info.i.i112 = getelementptr inbounds %struct.amdgpu_device, ptr %218, i32 0, i32 79
  %221 = ptrtoint ptr %mode_info.i.i112 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %mode_info.i.i112, align 8
  %call.i.i113 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %222, i32 noundef 6, ptr noundef nonnull %frev.i.i108, ptr noundef nonnull %crev.i.i109) #4
  br i1 %call.i.i113, label %bios_cmd_table_para_revision.exit.i116, label %bios_cmd_table_para_revision.exit.thread.i114

bios_cmd_table_para_revision.exit.thread.i114:    ; preds = %init_enable_crtc.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i109) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i108) #4
  br label %sw.default.i117

bios_cmd_table_para_revision.exit.i116:           ; preds = %init_enable_crtc.exit
  %223 = ptrtoint ptr %crev.i.i109 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %crev.i.i109, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i109) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i108) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %224)
  %cond.i115 = icmp eq i8 %224, 1
  br i1 %cond.i115, label %bios_cmd_table_para_revision.exit.i116.init_enable_crtc_mem_req.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i116.sw.default.i117_crit_edge

bios_cmd_table_para_revision.exit.i116.sw.default.i117_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i116
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i117

bios_cmd_table_para_revision.exit.i116.init_enable_crtc_mem_req.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i116
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_enable_crtc_mem_req.exit

sw.default.i117:                                  ; preds = %bios_cmd_table_para_revision.exit.i116.sw.default.i117_crit_edge, %bios_cmd_table_para_revision.exit.thread.i114
  br label %init_enable_crtc_mem_req.exit

init_enable_crtc_mem_req.exit:                    ; preds = %sw.default.i117, %bios_cmd_table_para_revision.exit.i116.init_enable_crtc_mem_req.exit_crit_edge
  %.sink.i118 = phi ptr [ null, %sw.default.i117 ], [ @enable_crtc_mem_req_v1, %bios_cmd_table_para_revision.exit.i116.init_enable_crtc_mem_req.exit_crit_edge ]
  %enable_crtc_mem_req2.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 13
  %225 = ptrtoint ptr %enable_crtc_mem_req2.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %.sink.i118, ptr %enable_crtc_mem_req2.i, align 4
  %226 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ctx.i, align 4
  %driver_context.i125 = getelementptr inbounds %struct.dc_context, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %driver_context.i125 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %driver_context.i125, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i122) #4
  %230 = ptrtoint ptr %frev.i.i122 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 -1, ptr %frev.i.i122, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i123) #4
  %231 = ptrtoint ptr %crev.i.i123 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 -1, ptr %crev.i.i123, align 1, !annotation !48
  %mode_info.i.i126 = getelementptr inbounds %struct.amdgpu_device, ptr %229, i32 0, i32 79
  %232 = ptrtoint ptr %mode_info.i.i126 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mode_info.i.i126, align 8
  %call.i.i127 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %233, i32 noundef 12, ptr noundef nonnull %frev.i.i122, ptr noundef nonnull %crev.i.i123) #4
  br i1 %call.i.i127, label %bios_cmd_table_para_revision.exit.i129, label %bios_cmd_table_para_revision.exit.thread.i128

bios_cmd_table_para_revision.exit.thread.i128:    ; preds = %init_enable_crtc_mem_req.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i123) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i122) #4
  br label %sw.default.i134

bios_cmd_table_para_revision.exit.i129:           ; preds = %init_enable_crtc_mem_req.exit
  %234 = ptrtoint ptr %crev.i.i123 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %crev.i.i123, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i123) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i122) #4
  %236 = zext i8 %235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %235, label %bios_cmd_table_para_revision.exit.i129.sw.default.i134_crit_edge [
    i8 5, label %bios_cmd_table_para_revision.exit.i129.init_program_clock.exit_crit_edge
    i8 6, label %sw.bb1.i130
  ]

bios_cmd_table_para_revision.exit.i129.init_program_clock.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i129
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_program_clock.exit

bios_cmd_table_para_revision.exit.i129.sw.default.i134_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i129
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i134

sw.bb1.i130:                                      ; preds = %bios_cmd_table_para_revision.exit.i129
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_program_clock.exit

sw.default.i134:                                  ; preds = %bios_cmd_table_para_revision.exit.i129.sw.default.i134_crit_edge, %bios_cmd_table_para_revision.exit.thread.i128
  %237 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ctx.i, align 4
  %driver_context6.i131 = getelementptr inbounds %struct.dc_context, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %driver_context6.i131 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %driver_context6.i131, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i14.i120) #4
  %241 = ptrtoint ptr %frev.i14.i120 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 -1, ptr %frev.i14.i120, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i15.i121) #4
  %242 = ptrtoint ptr %crev.i15.i121 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 -1, ptr %crev.i15.i121, align 1, !annotation !48
  %mode_info.i16.i132 = getelementptr inbounds %struct.amdgpu_device, ptr %240, i32 0, i32 79
  %243 = ptrtoint ptr %mode_info.i16.i132 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mode_info.i16.i132, align 8
  %call.i17.i133 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %244, i32 noundef 12, ptr noundef nonnull %frev.i14.i120, ptr noundef nonnull %crev.i15.i121) #4
  br i1 %call.i17.i133, label %if.then.i19.i136, label %sw.default.i134.bios_cmd_table_para_revision.exit21.i138_crit_edge

sw.default.i134.bios_cmd_table_para_revision.exit21.i138_crit_edge: ; preds = %sw.default.i134
  call void @__sanitizer_cov_trace_pc() #6
  br label %bios_cmd_table_para_revision.exit21.i138

if.then.i19.i136:                                 ; preds = %sw.default.i134
  call void @__sanitizer_cov_trace_pc() #6
  %245 = ptrtoint ptr %crev.i15.i121 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %crev.i15.i121, align 1
  %conv.i18.i135 = zext i8 %246 to i32
  br label %bios_cmd_table_para_revision.exit21.i138

bios_cmd_table_para_revision.exit21.i138:         ; preds = %if.then.i19.i136, %sw.default.i134.bios_cmd_table_para_revision.exit21.i138_crit_edge
  %retval.0.i20.i137 = phi i32 [ %conv.i18.i135, %if.then.i19.i136 ], [ 0, %sw.default.i134.bios_cmd_table_para_revision.exit21.i138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i15.i121) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i14.i120) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i20.i137) #4
  br label %init_program_clock.exit

init_program_clock.exit:                          ; preds = %bios_cmd_table_para_revision.exit21.i138, %sw.bb1.i130, %bios_cmd_table_para_revision.exit.i129.init_program_clock.exit_crit_edge
  %.sink.i139 = phi ptr [ null, %bios_cmd_table_para_revision.exit21.i138 ], [ @program_clock_v6, %sw.bb1.i130 ], [ @program_clock_v5, %bios_cmd_table_para_revision.exit.i129.init_program_clock.exit_crit_edge ]
  %program_clock9.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 14
  %247 = ptrtoint ptr %program_clock9.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %.sink.i139, ptr %program_clock9.i, align 4
  %248 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ctx.i, align 4
  %driver_context.i144 = getelementptr inbounds %struct.dc_context, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %driver_context.i144 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %driver_context.i144, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i141) #4
  %252 = ptrtoint ptr %frev.i.i141 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 -1, ptr %frev.i.i141, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i142) #4
  %253 = ptrtoint ptr %crev.i.i142 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 -1, ptr %crev.i.i142, align 1, !annotation !48
  %mode_info.i.i145 = getelementptr inbounds %struct.amdgpu_device, ptr %251, i32 0, i32 79
  %254 = ptrtoint ptr %mode_info.i.i145 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mode_info.i.i145, align 8
  %call.i.i146 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %255, i32 noundef 50, ptr noundef nonnull %frev.i.i141, ptr noundef nonnull %crev.i.i142) #4
  br i1 %call.i.i146, label %bios_cmd_table_para_revision.exit.i149, label %bios_cmd_table_para_revision.exit.thread.i147

bios_cmd_table_para_revision.exit.thread.i147:    ; preds = %init_program_clock.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i142) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i141) #4
  br label %sw.default.i150

bios_cmd_table_para_revision.exit.i149:           ; preds = %init_program_clock.exit
  %256 = ptrtoint ptr %crev.i.i142 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %crev.i.i142, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i142) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i141) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %257)
  %cond.i148 = icmp eq i8 %257, 3
  br i1 %cond.i148, label %bios_cmd_table_para_revision.exit.i149.init_external_encoder_control.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i149.sw.default.i150_crit_edge

bios_cmd_table_para_revision.exit.i149.sw.default.i150_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i149
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i150

bios_cmd_table_para_revision.exit.i149.init_external_encoder_control.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i149
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_external_encoder_control.exit

sw.default.i150:                                  ; preds = %bios_cmd_table_para_revision.exit.i149.sw.default.i150_crit_edge, %bios_cmd_table_para_revision.exit.thread.i147
  br label %init_external_encoder_control.exit

init_external_encoder_control.exit:               ; preds = %sw.default.i150, %bios_cmd_table_para_revision.exit.i149.init_external_encoder_control.exit_crit_edge
  %.sink.i151 = phi ptr [ null, %sw.default.i150 ], [ @external_encoder_control_v3, %bios_cmd_table_para_revision.exit.i149.init_external_encoder_control.exit_crit_edge ]
  %external_encoder_control2.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 15
  %258 = ptrtoint ptr %external_encoder_control2.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %.sink.i151, ptr %external_encoder_control2.i, align 4
  %259 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %ctx.i, align 4
  %driver_context.i158 = getelementptr inbounds %struct.dc_context, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %driver_context.i158 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %driver_context.i158, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i155) #4
  %263 = ptrtoint ptr %frev.i.i155 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 -1, ptr %frev.i.i155, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i156) #4
  %264 = ptrtoint ptr %crev.i.i156 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 -1, ptr %crev.i.i156, align 1, !annotation !48
  %mode_info.i.i159 = getelementptr inbounds %struct.amdgpu_device, ptr %262, i32 0, i32 79
  %265 = ptrtoint ptr %mode_info.i.i159 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %mode_info.i.i159, align 8
  %call.i.i160 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %266, i32 noundef 13, ptr noundef nonnull %frev.i.i155, ptr noundef nonnull %crev.i.i156) #4
  br i1 %call.i.i160, label %bios_cmd_table_para_revision.exit.i163, label %bios_cmd_table_para_revision.exit.thread.i161

bios_cmd_table_para_revision.exit.thread.i161:    ; preds = %init_external_encoder_control.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i156) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i155) #4
  br label %sw.default.i167

bios_cmd_table_para_revision.exit.i163:           ; preds = %init_external_encoder_control.exit
  %267 = ptrtoint ptr %crev.i.i156 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %crev.i.i156, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i156) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i155) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %268)
  %cond.i162 = icmp eq i8 %268, 1
  br i1 %cond.i162, label %bios_cmd_table_para_revision.exit.i163.init_enable_disp_power_gating.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i163.sw.default.i167_crit_edge

bios_cmd_table_para_revision.exit.i163.sw.default.i167_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i163
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i167

bios_cmd_table_para_revision.exit.i163.init_enable_disp_power_gating.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i163
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_enable_disp_power_gating.exit

sw.default.i167:                                  ; preds = %bios_cmd_table_para_revision.exit.i163.sw.default.i167_crit_edge, %bios_cmd_table_para_revision.exit.thread.i161
  %269 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ctx.i, align 4
  %driver_context3.i164 = getelementptr inbounds %struct.dc_context, ptr %270, i32 0, i32 1
  %271 = ptrtoint ptr %driver_context3.i164 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %driver_context3.i164, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i10.i153) #4
  %273 = ptrtoint ptr %frev.i10.i153 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 -1, ptr %frev.i10.i153, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i11.i154) #4
  %274 = ptrtoint ptr %crev.i11.i154 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 -1, ptr %crev.i11.i154, align 1, !annotation !48
  %mode_info.i12.i165 = getelementptr inbounds %struct.amdgpu_device, ptr %272, i32 0, i32 79
  %275 = ptrtoint ptr %mode_info.i12.i165 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %mode_info.i12.i165, align 8
  %call.i13.i166 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %276, i32 noundef 13, ptr noundef nonnull %frev.i10.i153, ptr noundef nonnull %crev.i11.i154) #4
  br i1 %call.i13.i166, label %if.then.i15.i169, label %sw.default.i167.bios_cmd_table_para_revision.exit17.i171_crit_edge

sw.default.i167.bios_cmd_table_para_revision.exit17.i171_crit_edge: ; preds = %sw.default.i167
  call void @__sanitizer_cov_trace_pc() #6
  br label %bios_cmd_table_para_revision.exit17.i171

if.then.i15.i169:                                 ; preds = %sw.default.i167
  call void @__sanitizer_cov_trace_pc() #6
  %277 = ptrtoint ptr %crev.i11.i154 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %crev.i11.i154, align 1
  %conv.i14.i168 = zext i8 %278 to i32
  br label %bios_cmd_table_para_revision.exit17.i171

bios_cmd_table_para_revision.exit17.i171:         ; preds = %if.then.i15.i169, %sw.default.i167.bios_cmd_table_para_revision.exit17.i171_crit_edge
  %retval.0.i16.i170 = phi i32 [ %conv.i14.i168, %if.then.i15.i169 ], [ 0, %sw.default.i167.bios_cmd_table_para_revision.exit17.i171_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i11.i154) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i10.i153) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i16.i170) #4
  br label %init_enable_disp_power_gating.exit

init_enable_disp_power_gating.exit:               ; preds = %bios_cmd_table_para_revision.exit17.i171, %bios_cmd_table_para_revision.exit.i163.init_enable_disp_power_gating.exit_crit_edge
  %.sink.i172 = phi ptr [ null, %bios_cmd_table_para_revision.exit17.i171 ], [ @enable_disp_power_gating_v2_1, %bios_cmd_table_para_revision.exit.i163.init_enable_disp_power_gating.exit_crit_edge ]
  %enable_disp_power_gating6.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 16
  %279 = ptrtoint ptr %enable_disp_power_gating6.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %.sink.i172, ptr %enable_disp_power_gating6.i, align 4
  %280 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %ctx.i, align 4
  %driver_context.i179 = getelementptr inbounds %struct.dc_context, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %driver_context.i179 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %driver_context.i179, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i176) #4
  %284 = ptrtoint ptr %frev.i.i176 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 -1, ptr %frev.i.i176, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i177) #4
  %285 = ptrtoint ptr %crev.i.i177 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 -1, ptr %crev.i.i177, align 1, !annotation !48
  %mode_info.i.i180 = getelementptr inbounds %struct.amdgpu_device, ptr %283, i32 0, i32 79
  %286 = ptrtoint ptr %mode_info.i.i180 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %mode_info.i.i180, align 8
  %call.i.i181 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %287, i32 noundef 46, ptr noundef nonnull %frev.i.i176, ptr noundef nonnull %crev.i.i177) #4
  br i1 %call.i.i181, label %bios_cmd_table_para_revision.exit.i184, label %bios_cmd_table_para_revision.exit.thread.i182

bios_cmd_table_para_revision.exit.thread.i182:    ; preds = %init_enable_disp_power_gating.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i177) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i176) #4
  br label %sw.default.i188

bios_cmd_table_para_revision.exit.i184:           ; preds = %init_enable_disp_power_gating.exit
  %288 = ptrtoint ptr %crev.i.i177 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %crev.i.i177, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i177) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i176) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %289)
  %cond.i183 = icmp eq i8 %289, 1
  br i1 %cond.i183, label %bios_cmd_table_para_revision.exit.i184.init_set_dce_clock.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i184.sw.default.i188_crit_edge

bios_cmd_table_para_revision.exit.i184.sw.default.i188_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i184
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default.i188

bios_cmd_table_para_revision.exit.i184.init_set_dce_clock.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i184
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_set_dce_clock.exit

sw.default.i188:                                  ; preds = %bios_cmd_table_para_revision.exit.i184.sw.default.i188_crit_edge, %bios_cmd_table_para_revision.exit.thread.i182
  %290 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %ctx.i, align 4
  %driver_context3.i185 = getelementptr inbounds %struct.dc_context, ptr %291, i32 0, i32 1
  %292 = ptrtoint ptr %driver_context3.i185 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %driver_context3.i185, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i10.i174) #4
  %294 = ptrtoint ptr %frev.i10.i174 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 -1, ptr %frev.i10.i174, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i11.i175) #4
  %295 = ptrtoint ptr %crev.i11.i175 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 -1, ptr %crev.i11.i175, align 1, !annotation !48
  %mode_info.i12.i186 = getelementptr inbounds %struct.amdgpu_device, ptr %293, i32 0, i32 79
  %296 = ptrtoint ptr %mode_info.i12.i186 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %mode_info.i12.i186, align 8
  %call.i13.i187 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %297, i32 noundef 46, ptr noundef nonnull %frev.i10.i174, ptr noundef nonnull %crev.i11.i175) #4
  br i1 %call.i13.i187, label %if.then.i15.i190, label %sw.default.i188.bios_cmd_table_para_revision.exit17.i192_crit_edge

sw.default.i188.bios_cmd_table_para_revision.exit17.i192_crit_edge: ; preds = %sw.default.i188
  call void @__sanitizer_cov_trace_pc() #6
  br label %bios_cmd_table_para_revision.exit17.i192

if.then.i15.i190:                                 ; preds = %sw.default.i188
  call void @__sanitizer_cov_trace_pc() #6
  %298 = ptrtoint ptr %crev.i11.i175 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %crev.i11.i175, align 1
  %conv.i14.i189 = zext i8 %299 to i32
  br label %bios_cmd_table_para_revision.exit17.i192

bios_cmd_table_para_revision.exit17.i192:         ; preds = %if.then.i15.i190, %sw.default.i188.bios_cmd_table_para_revision.exit17.i192_crit_edge
  %retval.0.i16.i191 = phi i32 [ %conv.i14.i189, %if.then.i15.i190 ], [ 0, %sw.default.i188.bios_cmd_table_para_revision.exit17.i192_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i11.i175) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i10.i174) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i16.i191) #4
  br label %init_set_dce_clock.exit

init_set_dce_clock.exit:                          ; preds = %bios_cmd_table_para_revision.exit17.i192, %bios_cmd_table_para_revision.exit.i184.init_set_dce_clock.exit_crit_edge
  %.sink.i193 = phi ptr [ null, %bios_cmd_table_para_revision.exit17.i192 ], [ @set_dce_clock_v2_1, %bios_cmd_table_para_revision.exit.i184.init_set_dce_clock.exit_crit_edge ]
  %set_dce_clock6.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 17
  %300 = ptrtoint ptr %set_dce_clock6.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %.sink.i193, ptr %set_dce_clock6.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encoder_control_digx_v3(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %params = alloca %struct._DIG_ENCODER_CONTROL_PARAMETERS_V3, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %params, align 8
  %lanes_number = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 4
  %1 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lanes_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  %acConfig = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %acConfig to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %acConfig, align 2
  %bf.clear3 = and i8 %bf.load, -2
  %masksel = zext i1 %cmp to i8
  %bf.clear3.sink = or i8 %bf.clear3, %masksel
  store i8 %bf.clear3.sink, ptr %acConfig, align 2
  %engine_id = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 1
  %4 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %engine_id, align 4
  %conv = trunc i32 %5 to i8
  %acConfig5 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 1
  %bf.value = shl i8 %conv, 4
  %bf.shl = and i8 %bf.value, 112
  %bf.clear7 = and i8 %bf.clear3.sink, -113
  %bf.set8 = or i8 %bf.shl, %bf.clear7
  %6 = ptrtoint ptr %acConfig5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set8, ptr %acConfig5, align 2
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %7 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_helper, align 4
  %encoder_action_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %encoder_action_to_atom to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encoder_action_to_atom, align 4
  %11 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cntl, align 4
  %call = tail call zeroext i8 %10(i32 noundef %12) #4
  %ucAction = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 2
  %13 = ptrtoint ptr %ucAction to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call, ptr %ucAction, align 1
  %pixel_clock = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 7
  %14 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %15, 10
  %conv9 = trunc i32 %div to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %17 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %params, align 8
  %18 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_helper, align 4
  %encoder_mode_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %encoder_mode_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %encoder_mode_bp_to_atom, align 4
  %signal = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 3
  %22 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %signal, align 4
  %enable_dp_audio = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 6
  %24 = ptrtoint ptr %enable_dp_audio to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enable_dp_audio, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool = icmp ne i8 %25, 0
  %call11 = tail call i32 %21(i32 noundef %23, i1 noundef zeroext %tobool) #4
  %conv12 = trunc i32 %call11 to i8
  %26 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv12, ptr %26, align 4
  %28 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lanes_number, align 4
  %conv14 = trunc i32 %29 to i8
  %ucLaneNum = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 4
  %30 = ptrtoint ptr %ucLaneNum to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv14, ptr %ucLaneNum, align 1
  %color_depth = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 5
  %31 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %color_depth, align 4
  %switch.tableidx = add i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %33 = icmp ult i32 %switch.tableidx, 5
  br i1 %33, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %34 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %switch.lobit.not = icmp eq i8 %34, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.encoder_control_digx_v3, i32 0, i32 %switch.tableidx
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %35)
  %switch.load = load i8, ptr %switch.gep, align 1
  %ucBitPerColor20 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 5
  %36 = ptrtoint ptr %ucBitPerColor20 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %switch.load, ptr %ucBitPerColor20, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %37 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %40, i32 0, i32 79
  %41 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mode_info, align 8
  %call21 = call i32 @amdgpu_atom_execute_table(ptr noundef %42, i32 noundef 4, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  %spec.select = select i1 %cmp22, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encoder_control_digx_v4(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %params = alloca %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %params, align 8
  %lanes_number = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 4
  %1 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lanes_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  %3 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %3, align 2
  %bf.clear = and i8 %bf.load, -4
  %bf.set = zext i1 %cmp to i8
  %bf.clear.sink = or i8 %bf.clear, %bf.set
  store i8 %bf.clear.sink, ptr %3, align 2
  %engine_id = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 1
  %5 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %engine_id, align 4
  %conv = trunc i32 %6 to i8
  %7 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, ptr %params, i32 0, i32 1
  %bf.value = shl i8 %conv, 4
  %bf.shl = and i8 %bf.value, 112
  %bf.clear5 = and i8 %bf.clear.sink, -115
  %bf.set6 = or i8 %bf.shl, %bf.clear5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.set6, ptr %7, align 2
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %9 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd_helper, align 4
  %encoder_action_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %encoder_action_to_atom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %encoder_action_to_atom, align 4
  %13 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cntl, align 4
  %call = tail call zeroext i8 %12(i32 noundef %14) #4
  %ucAction = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, ptr %params, i32 0, i32 2
  %15 = ptrtoint ptr %ucAction to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call, ptr %ucAction, align 1
  %pixel_clock = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 7
  %16 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %17, 10
  %conv7 = trunc i32 %div to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %19 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %params, align 8
  %20 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd_helper, align 4
  %encoder_mode_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %encoder_mode_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %encoder_mode_bp_to_atom, align 4
  %signal = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 3
  %24 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %signal, align 4
  %enable_dp_audio = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 6
  %26 = ptrtoint ptr %enable_dp_audio to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable_dp_audio, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool = icmp ne i8 %27, 0
  %call9 = tail call i32 %23(i32 noundef %25, i1 noundef zeroext %tobool) #4
  %conv10 = trunc i32 %call9 to i8
  %28 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, ptr %params, i32 0, i32 3
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv10, ptr %28, align 4
  %30 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lanes_number, align 4
  %conv12 = trunc i32 %31 to i8
  %ucLaneNum = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, ptr %params, i32 0, i32 4
  %32 = ptrtoint ptr %ucLaneNum to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv12, ptr %ucLaneNum, align 1
  %color_depth = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 5
  %33 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %color_depth, align 4
  %switch.tableidx = add i32 %34, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %35 = icmp ult i32 %switch.tableidx, 5
  br i1 %35, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %36 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %switch.lobit.not = icmp eq i8 %36, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.encoder_control_digx_v4, i32 0, i32 %switch.tableidx
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %37)
  %switch.load = load i8, ptr %switch.gep, align 1
  %ucBitPerColor18 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, ptr %params, i32 0, i32 5
  %38 = ptrtoint ptr %ucBitPerColor18 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %switch.load, ptr %ucBitPerColor18, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %42, i32 0, i32 79
  %43 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mode_info, align 8
  %call19 = call i32 @amdgpu_atom_execute_table(ptr noundef %44, i32 noundef 4, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  %spec.select = select i1 %cmp20, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encoder_control_digx_v5(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %params = alloca %struct._ENCODER_STREAM_SETUP_PARAMETERS_V5, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #4
  %0 = getelementptr inbounds i8, ptr %params, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 0, ptr %0, align 1
  %engine_id = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 1
  %2 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %engine_id, align 4
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %params, align 1
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %5 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_helper, align 4
  %encoder_action_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %encoder_action_to_atom to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %encoder_action_to_atom, align 4
  %9 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cntl, align 4
  %call = tail call zeroext i8 %8(i32 noundef %10) #4
  %ucAction = getelementptr inbounds %struct._ENCODER_STREAM_SETUP_PARAMETERS_V5, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %ucAction to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call, ptr %ucAction, align 1
  %pixel_clock = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 7
  %12 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %13, 10
  %ulPixelClock = getelementptr inbounds %struct._ENCODER_STREAM_SETUP_PARAMETERS_V5, ptr %params, i32 0, i32 4
  %14 = ptrtoint ptr %ulPixelClock to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %div, ptr %ulPixelClock, align 1
  %15 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd_helper, align 4
  %encoder_mode_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %encoder_mode_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encoder_mode_bp_to_atom, align 4
  %signal = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 3
  %19 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %signal, align 4
  %enable_dp_audio = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 6
  %21 = ptrtoint ptr %enable_dp_audio to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enable_dp_audio, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool = icmp ne i8 %22, 0
  %call2 = tail call i32 %18(i32 noundef %20, i1 noundef zeroext %tobool) #4
  %conv3 = trunc i32 %call2 to i8
  %ucDigMode = getelementptr inbounds %struct._ENCODER_STREAM_SETUP_PARAMETERS_V5, ptr %params, i32 0, i32 2
  %23 = ptrtoint ptr %ucDigMode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv3, ptr %ucDigMode, align 1
  %lanes_number = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 4
  %24 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lanes_number, align 4
  %conv4 = trunc i32 %25 to i8
  %ucLaneNum = getelementptr inbounds %struct._ENCODER_STREAM_SETUP_PARAMETERS_V5, ptr %params, i32 0, i32 3
  %26 = ptrtoint ptr %ucLaneNum to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv4, ptr %ucLaneNum, align 1
  %color_depth = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 5
  %27 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %color_depth, align 4
  %switch.tableidx = add i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %29 = icmp ult i32 %switch.tableidx, 5
  br i1 %29, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %30 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.lobit.not = icmp eq i8 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.encoder_control_digx_v5, i32 0, i32 %switch.tableidx
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %31)
  %switch.load = load i8, ptr %switch.gep, align 1
  %ucBitPerColor10 = getelementptr inbounds %struct._ENCODER_STREAM_SETUP_PARAMETERS_V5, ptr %params, i32 0, i32 5
  %32 = ptrtoint ptr %ucBitPerColor10 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %switch.load, ptr %ucBitPerColor10, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %33 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp = icmp eq i32 %34, 4
  br i1 %cmp, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  %35 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %28, label %if.then.if.end_crit_edge [
    i32 3, label %if.then.if.end.sink.split_crit_edge
    i32 4, label %sw.bb18
    i32 6, label %sw.bb23
  ]

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb18:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

sw.bb23:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb23, %sw.bb18, %if.then.if.end.sink.split_crit_edge
  %.sink46 = phi i32 [ 36, %sw.bb18 ], [ 48, %sw.bb23 ], [ 30, %if.then.if.end.sink.split_crit_edge ]
  %36 = ptrtoint ptr %ulPixelClock to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %ulPixelClock, align 1
  %mul = mul i32 %37, %.sink46
  %div16 = udiv i32 %mul, 24
  store i32 %div16, ptr %ulPixelClock, align 1
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %41, i32 0, i32 79
  %42 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mode_info, align 8
  %call30 = call i32 @amdgpu_atom_execute_table(ptr noundef %43, i32 noundef 4, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  %spec.select = select i1 %cmp31, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encoder_control_dig1_v1(ptr nocapture noundef readonly %bp, ptr noundef %cntl) #0 align 64 {
entry:
  %params = alloca %struct._DIG_ENCODER_CONTROL_PARAMETERS_V2, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %params, align 8
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %1 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd_helper, align 4
  %assign_control_parameter = getelementptr inbounds %struct.command_table_helper, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %assign_control_parameter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %assign_control_parameter, align 4
  call void %4(ptr noundef %2, ptr noundef %cntl, ptr noundef nonnull %params) #4
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %8, i32 0, i32 79
  %9 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %10, i32 noundef 74, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encoder_control_dig2_v1(ptr nocapture noundef readonly %bp, ptr noundef %cntl) #0 align 64 {
entry:
  %params = alloca %struct._DIG_ENCODER_CONTROL_PARAMETERS_V2, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %params, align 8
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %1 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd_helper, align 4
  %assign_control_parameter = getelementptr inbounds %struct.command_table_helper, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %assign_control_parameter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %assign_control_parameter, align 4
  call void %4(ptr noundef %2, ptr noundef %cntl, ptr noundef nonnull %params) #4
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %8, i32 0, i32 79
  %9 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %10, i32 noundef 75, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encoder_control_dig_v1(ptr noundef %bp, ptr noundef %cntl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %cntl, null
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then:                                          ; preds = %entry
  %engine_id = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 1
  %0 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %engine_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %1, label %if.then.if.end11_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

sw.bb:                                            ; preds = %if.then
  %encoder_control_dig1 = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %encoder_control_dig1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %encoder_control_dig1, align 4
  %cmp2.not = icmp eq ptr %4, null
  br i1 %cmp2.not, label %sw.bb.if.end11_crit_edge, label %sw.bb.if.end11.sink.split_crit_edge

sw.bb.if.end11.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split

sw.bb.if.end11_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

sw.bb5:                                           ; preds = %if.then
  %encoder_control_dig2 = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %encoder_control_dig2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder_control_dig2, align 4
  %cmp6.not = icmp eq ptr %6, null
  br i1 %cmp6.not, label %sw.bb5.if.end11_crit_edge, label %sw.bb5.if.end11.sink.split_crit_edge

sw.bb5.if.end11.sink.split_crit_edge:             ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split

sw.bb5.if.end11_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end11.sink.split:                              ; preds = %sw.bb5.if.end11.sink.split_crit_edge, %sw.bb.if.end11.sink.split_crit_edge
  %.sink = phi ptr [ %4, %sw.bb.if.end11.sink.split_crit_edge ], [ %6, %sw.bb5.if.end11.sink.split_crit_edge ]
  %call = tail call i32 %.sink(ptr noundef %bp, ptr noundef nonnull %cntl) #4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %sw.bb5.if.end11_crit_edge, %sw.bb.if.end11_crit_edge, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %result.0 = phi i32 [ 5, %if.then.if.end11_crit_edge ], [ 5, %sw.bb5.if.end11_crit_edge ], [ 5, %sw.bb.if.end11_crit_edge ], [ 5, %entry.if.end11_crit_edge ], [ %call, %if.end11.sink.split ]
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @transmitter_control_v2(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %params = alloca %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V2, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V2, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V2, ptr %params, i32 0, i32 2
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %2 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %connector_obj_id, align 4
  %3 = and i32 %.unpack, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %3)
  %cmp.i = icmp eq i32 %3, 196608
  %bf.lshr2.i = lshr i32 %.unpack, 24
  %retval.0.i = select i1 %cmp.i, i32 %bf.lshr2.i, i32 0
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %params, align 8
  %transmitter = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %5 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %transmitter, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge96
    i32 2, label %entry.sw.epilog_crit_edge97
    i32 3, label %entry.sw.epilog_crit_edge98
    i32 4, label %entry.sw.epilog_crit_edge99
    i32 5, label %entry.sw.epilog_crit_edge100
    i32 8, label %entry.sw.epilog_crit_edge101
  ]

entry.sw.epilog_crit_edge101:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge100:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge99:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge98:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge97:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge96:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge96, %entry.sw.epilog_crit_edge97, %entry.sw.epilog_crit_edge98, %entry.sw.epilog_crit_edge99, %entry.sw.epilog_crit_edge100, %entry.sw.epilog_crit_edge101
  %8 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cntl, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %9, label %sw.default9 [
    i32 7, label %sw.bb1
    i32 11, label %sw.bb6
  ]

sw.bb1:                                           ; preds = %sw.epilog
  %trunc = trunc i32 %retval.0.i to i8
  %11 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %trunc, label %sw.bb1.if.end_crit_edge [
    i8 2, label %sw.bb1.if.then_crit_edge
    i8 4, label %sw.bb1.if.then_crit_edge102
  ]

sw.bb1.if.then_crit_edge102:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

sw.bb1.if.then_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

sw.bb1.if.end_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %sw.bb1.if.then_crit_edge, %sw.bb1.if.then_crit_edge102
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %0, align 2
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, ptr %0, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1.if.end_crit_edge
  %sh.diff = lshr i32 %.unpack, 16
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %13 = and i16 %tr.sh.diff, -256
  %14 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %params, align 8
  br label %sw.epilog22

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %lane_select = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 10
  %15 = ptrtoint ptr %lane_select to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lane_select, align 4
  %conv7 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7, ptr %params, align 8
  %lane_settings = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 11
  %18 = ptrtoint ptr %lane_settings to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lane_settings, align 4
  %conv8 = trunc i32 %19 to i8
  %ucLaneSet = getelementptr inbounds %struct._ATOM_DP_VS_MODE, ptr %params, i32 0, i32 1
  %20 = ptrtoint ptr %ucLaneSet to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8, ptr %ucLaneSet, align 1
  br label %sw.epilog22

sw.default9:                                      ; preds = %sw.epilog
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %21 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lanes_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp10 = icmp ugt i32 %22, 4
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.default9
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load14 = load i8, ptr %0, align 2
  %bf.set16 = or i8 %bf.load14, 1
  store i8 %bf.set16, ptr %0, align 2
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %24 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %25, 20
  %conv17 = trunc i32 %div to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv17)
  %27 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %params, align 8
  br label %sw.epilog22

if.else:                                          ; preds = %sw.default9
  call void @__sanitizer_cov_trace_pc() #6
  %pixel_clock18 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %28 = ptrtoint ptr %pixel_clock18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixel_clock18, align 4
  %div19 = udiv i32 %29, 10
  %conv20 = trunc i32 %div19 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %31 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %params, align 8
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %if.else, %if.then12, %sw.bb6, %if.end
  %coherent = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 12
  %32 = ptrtoint ptr %coherent to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %coherent, align 4, !range !49
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load25 = load i8, ptr %0, align 2
  %bf.shl = shl nuw nsw i8 %33, 1
  %bf.clear26 = and i8 %bf.load25, -3
  %bf.set27 = or i8 %bf.clear26, %bf.shl
  store i8 %bf.set27, ptr %0, align 2
  %35 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %6, label %sw.epilog22.if.end44_crit_edge [
    i32 1, label %sw.epilog22.if.then39_crit_edge
    i32 3, label %sw.epilog22.if.then39_crit_edge103
    i32 5, label %sw.epilog22.if.then39_crit_edge104
  ]

sw.epilog22.if.then39_crit_edge104:               ; preds = %sw.epilog22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

sw.epilog22.if.then39_crit_edge103:               ; preds = %sw.epilog22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

sw.epilog22.if.then39_crit_edge:                  ; preds = %sw.epilog22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

sw.epilog22.if.end44_crit_edge:                   ; preds = %sw.epilog22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then39:                                        ; preds = %sw.epilog22.if.then39_crit_edge, %sw.epilog22.if.then39_crit_edge103, %sw.epilog22.if.then39_crit_edge104
  %bf.set43 = or i8 %bf.set27, 4
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %bf.set43, ptr %0, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %sw.epilog22.if.end44_crit_edge
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %37 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %engine_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp45 = icmp eq i32 %38, 1
  br i1 %cmp45, label %if.then47, label %if.end44.if.end52_crit_edge

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load49 = load i8, ptr %0, align 2
  %bf.set51 = or i8 %bf.load49, 8
  store i8 %bf.set51, ptr %0, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end44.if.end52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %retval.0.i)
  %cmp53 = icmp eq i32 %retval.0.i, 19
  br i1 %cmp53, label %if.then55, label %if.end52.if.end60_crit_edge

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load57 = load i8, ptr %0, align 2
  %bf.set59 = or i8 %bf.load57, 16
  store i8 %bf.set59, ptr %0, align 2
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end52.if.end60_crit_edge
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %41 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cmd_helper, align 4
  %transmitter_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %transmitter_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %transmitter_bp_to_atom, align 4
  %call62 = tail call zeroext i8 %44(i32 noundef %6) #4
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load64 = load i8, ptr %0, align 2
  %bf.shl66 = shl i8 %call62, 6
  %bf.clear67 = and i8 %bf.load64, 63
  %bf.set68 = or i8 %bf.clear67, %bf.shl66
  store i8 %bf.set68, ptr %0, align 2
  %46 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cntl, align 4
  %conv70 = trunc i32 %47 to i8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv70, ptr %1, align 1
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %49 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %52, i32 0, i32 79
  %53 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mode_info, align 8
  %call71 = call i32 @amdgpu_atom_execute_table(ptr noundef %54, i32 noundef 76, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp eq i32 %call71, 0
  %spec.select = select i1 %cmp72, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end60 ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @transmitter_control_v3(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %params = alloca %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V3, align 8
  %pll_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll_id) #4
  %3 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pll_id, align 4, !annotation !48
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %4 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %connector_obj_id, align 4
  %5 = and i32 %.unpack, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %5)
  %cmp.i = icmp eq i32 %5, 196608
  %bf.lshr2.i = lshr i32 %.unpack, 24
  %retval.0.i = select i1 %cmp.i, i32 %bf.lshr2.i, i32 0
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %6 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd_helper, align 4
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %params, align 8
  %transmitter = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %9 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transmitter, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge119
    i32 2, label %entry.sw.epilog_crit_edge120
    i32 3, label %entry.sw.epilog_crit_edge121
    i32 4, label %entry.sw.epilog_crit_edge122
    i32 5, label %entry.sw.epilog_crit_edge123
    i32 8, label %entry.sw.epilog_crit_edge124
  ]

entry.sw.epilog_crit_edge124:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge123:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge122:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge121:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge120:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge119:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge119, %entry.sw.epilog_crit_edge120, %entry.sw.epilog_crit_edge121, %entry.sw.epilog_crit_edge122, %entry.sw.epilog_crit_edge123, %entry.sw.epilog_crit_edge124
  %clock_source_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %clock_source_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clock_source_id_to_atom, align 4
  %pll_id2 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 4
  %14 = ptrtoint ptr %pll_id2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pll_id2, align 4
  %call3 = call zeroext i1 %13(i32 noundef %15, ptr noundef nonnull %pll_id) #4
  br i1 %call3, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %16 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cntl, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %17, label %sw.default13 [
    i32 7, label %sw.bb4
    i32 11, label %sw.bb10
  ]

sw.bb4:                                           ; preds = %if.end
  %trunc = trunc i32 %retval.0.i to i8
  %19 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %trunc, label %sw.bb4.if.end6_crit_edge [
    i8 4, label %sw.bb4.if.then5_crit_edge
    i8 2, label %sw.bb4.if.then5_crit_edge125
  ]

sw.bb4.if.then5_crit_edge125:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

sw.bb4.if.then5_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

sw.bb4.if.end6_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %sw.bb4.if.then5_crit_edge, %sw.bb4.if.then5_crit_edge125
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %0, align 2
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, ptr %0, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %sw.bb4.if.end6_crit_edge
  %21 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load8 = load i32, ptr %connector_obj_id, align 4
  %sh.diff = lshr i32 %bf.load8, 16
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %22 = and i16 %tr.sh.diff, -256
  %23 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %params, align 8
  br label %sw.epilog36

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %lane_select = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 10
  %24 = ptrtoint ptr %lane_select to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lane_select, align 4
  %conv11 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv11, ptr %params, align 8
  %lane_settings = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 11
  %27 = ptrtoint ptr %lane_settings to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lane_settings, align 4
  %conv12 = trunc i32 %28 to i8
  %ucLaneSet = getelementptr inbounds %struct._ATOM_DP_VS_MODE, ptr %params, i32 0, i32 1
  %29 = ptrtoint ptr %ucLaneSet to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv12, ptr %ucLaneSet, align 1
  br label %sw.epilog36

sw.default13:                                     ; preds = %if.end
  %trunc118 = trunc i32 %retval.0.i to i8
  %30 = zext i8 %trunc118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %trunc118, label %sw.default13.if.end23_crit_edge [
    i8 4, label %sw.default13.land.lhs.true_crit_edge
    i8 2, label %sw.default13.land.lhs.true_crit_edge126
  ]

sw.default13.land.lhs.true_crit_edge126:          ; preds = %sw.default13
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

sw.default13.land.lhs.true_crit_edge:             ; preds = %sw.default13
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

sw.default13.if.end23_crit_edge:                  ; preds = %sw.default13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

land.lhs.true:                                    ; preds = %sw.default13.land.lhs.true_crit_edge, %sw.default13.land.lhs.true_crit_edge126
  %multi_path = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 13
  %31 = ptrtoint ptr %multi_path to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %multi_path, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool16.not = icmp eq i8 %32, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end23_crit_edge, label %if.then18

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load20 = load i8, ptr %0, align 2
  %bf.set22 = or i8 %bf.load20, 1
  store i8 %bf.set22, ptr %0, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %land.lhs.true.if.end23_crit_edge, %sw.default13.if.end23_crit_edge
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %34 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lanes_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp24 = icmp ugt i32 %35, 4
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load28 = load i8, ptr %0, align 2
  %bf.set30 = or i8 %bf.load28, 1
  store i8 %bf.set30, ptr %0, align 2
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %37 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %38, 20
  %conv31 = trunc i32 %div to i16
  %39 = call i16 @llvm.bswap.i16(i16 %conv31)
  %40 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %params, align 8
  br label %sw.epilog36

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %pixel_clock32 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %41 = ptrtoint ptr %pixel_clock32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pixel_clock32, align 4
  %div33 = udiv i32 %42, 10
  %conv34 = trunc i32 %div33 to i16
  %43 = call i16 @llvm.bswap.i16(i16 %conv34)
  %44 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %params, align 8
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %if.else, %if.then26, %sw.bb10, %if.end6
  %coherent = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 12
  %45 = ptrtoint ptr %coherent to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %coherent, align 4, !range !49
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load40 = load i8, ptr %0, align 2
  %bf.shl = shl nuw nsw i8 %46, 1
  %bf.clear41 = and i8 %bf.load40, -3
  %bf.set42 = or i8 %bf.clear41, %bf.shl
  store i8 %bf.set42, ptr %0, align 2
  %48 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %transmitter, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %49, label %sw.epilog36.if.end58_crit_edge [
    i32 1, label %sw.epilog36.if.then53_crit_edge
    i32 3, label %sw.epilog36.if.then53_crit_edge127
    i32 5, label %sw.epilog36.if.then53_crit_edge128
  ]

sw.epilog36.if.then53_crit_edge128:               ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

sw.epilog36.if.then53_crit_edge127:               ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

sw.epilog36.if.then53_crit_edge:                  ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

sw.epilog36.if.end58_crit_edge:                   ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then53:                                        ; preds = %sw.epilog36.if.then53_crit_edge, %sw.epilog36.if.then53_crit_edge127, %sw.epilog36.if.then53_crit_edge128
  %bf.set57 = or i8 %bf.set42, 4
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %bf.set57, ptr %0, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %sw.epilog36.if.end58_crit_edge
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %52 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %engine_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp59 = icmp eq i32 %53, 1
  br i1 %cmp59, label %if.then61, label %if.end58.if.end66_crit_edge

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load63 = load i8, ptr %0, align 2
  %bf.set65 = or i8 %bf.load63, 8
  store i8 %bf.set65, ptr %0, align 2
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end58.if.end66_crit_edge
  %transmitter_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %7, i32 0, i32 7
  %55 = ptrtoint ptr %transmitter_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %transmitter_bp_to_atom, align 4
  %call68 = call zeroext i8 %56(i32 noundef %49) #4
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load70 = load i8, ptr %0, align 2
  %bf.shl72 = shl i8 %call68, 6
  %bf.clear73 = and i8 %bf.load70, 15
  %bf.set74 = or i8 %bf.clear73, %bf.shl72
  %lanes_number75 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %58 = ptrtoint ptr %lanes_number75 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lanes_number75, align 4
  %conv76 = trunc i32 %59 to i8
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv76, ptr %2, align 4
  %61 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pll_id, align 4
  %conv77 = trunc i32 %62 to i8
  %bf.value80 = shl i8 %conv77, 4
  %bf.shl81 = and i8 %bf.value80, 48
  %bf.set83 = or i8 %bf.shl81, %bf.set74
  store i8 %bf.set83, ptr %0, align 2
  %63 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cntl, align 4
  %conv85 = trunc i32 %64 to i8
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv85, ptr %1, align 1
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %66 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %69, i32 0, i32 79
  %70 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mode_info, align 8
  %call86 = call i32 @amdgpu_atom_execute_table(ptr noundef %71, i32 noundef 76, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp eq i32 %call86, 0
  %spec.select = select i1 %cmp87, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end66 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll_id) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @transmitter_control_v4(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %params = alloca %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V4, align 8
  %ref_clk_src_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V4, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V4, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V4, ptr %params, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref_clk_src_id) #4
  %3 = ptrtoint ptr %ref_clk_src_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ref_clk_src_id, align 4, !annotation !48
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %4 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %connector_obj_id, align 4
  %5 = and i32 %.unpack, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %5)
  %cmp.i = icmp eq i32 %5, 196608
  %bf.lshr2.i = lshr i32 %.unpack, 24
  %retval.0.i = select i1 %cmp.i, i32 %bf.lshr2.i, i32 0
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %6 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd_helper, align 4
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %params, align 8
  %transmitter = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %9 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transmitter, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge108
    i32 2, label %entry.sw.epilog_crit_edge109
    i32 3, label %entry.sw.epilog_crit_edge110
    i32 4, label %entry.sw.epilog_crit_edge111
    i32 5, label %entry.sw.epilog_crit_edge112
    i32 8, label %entry.sw.epilog_crit_edge113
  ]

entry.sw.epilog_crit_edge113:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge112:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge111:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge110:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge109:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge108:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge108, %entry.sw.epilog_crit_edge109, %entry.sw.epilog_crit_edge110, %entry.sw.epilog_crit_edge111, %entry.sw.epilog_crit_edge112, %entry.sw.epilog_crit_edge113
  %clock_source_id_to_ref_clk_src = getelementptr inbounds %struct.command_table_helper, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %clock_source_id_to_ref_clk_src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clock_source_id_to_ref_clk_src, align 4
  %pll_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 4
  %14 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pll_id, align 4
  %call1 = call zeroext i1 %13(i32 noundef %15, ptr noundef nonnull %ref_clk_src_id) #4
  br i1 %call1, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %16 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cntl, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %17, label %sw.default12 [
    i32 7, label %sw.bb2
    i32 11, label %sw.bb9
  ]

sw.bb2:                                           ; preds = %if.end
  %trunc = trunc i32 %retval.0.i to i8
  %19 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %trunc, label %sw.bb2.if.end5_crit_edge [
    i8 2, label %sw.bb2.if.then4_crit_edge
    i8 4, label %sw.bb2.if.then4_crit_edge114
  ]

sw.bb2.if.then4_crit_edge114:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

sw.bb2.if.then4_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

sw.bb2.if.end5_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %sw.bb2.if.then4_crit_edge, %sw.bb2.if.then4_crit_edge114
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %0, align 2
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, ptr %0, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %sw.bb2.if.end5_crit_edge
  %21 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load7 = load i32, ptr %connector_obj_id, align 4
  %sh.diff = lshr i32 %bf.load7, 16
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %22 = and i16 %tr.sh.diff, -256
  %23 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %params, align 8
  br label %sw.epilog31

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %lane_select = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 10
  %24 = ptrtoint ptr %lane_select to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lane_select, align 4
  %conv10 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10, ptr %params, align 8
  %lane_settings = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 11
  %27 = ptrtoint ptr %lane_settings to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lane_settings, align 4
  %conv11 = trunc i32 %28 to i8
  %29 = getelementptr inbounds %struct._ATOM_DP_VS_MODE_V4, ptr %params, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv11, ptr %29, align 1
  br label %sw.epilog31

sw.default12:                                     ; preds = %if.end
  %trunc107 = trunc i32 %retval.0.i to i8
  %31 = zext i8 %trunc107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %trunc107, label %sw.default12.if.end22_crit_edge [
    i8 2, label %sw.default12.if.then18_crit_edge
    i8 4, label %sw.default12.if.then18_crit_edge115
  ]

sw.default12.if.then18_crit_edge115:              ; preds = %sw.default12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

sw.default12.if.then18_crit_edge:                 ; preds = %sw.default12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

sw.default12.if.end22_crit_edge:                  ; preds = %sw.default12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then18:                                        ; preds = %sw.default12.if.then18_crit_edge, %sw.default12.if.then18_crit_edge115
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load19 = load i8, ptr %0, align 2
  %bf.set21 = or i8 %bf.load19, 1
  store i8 %bf.set21, ptr %0, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %sw.default12.if.end22_crit_edge
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %33 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lanes_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp23 = icmp ugt i32 %34, 4
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %35 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pixel_clock, align 4
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %div = udiv i32 %36, 20
  %conv26 = trunc i32 %div to i16
  %37 = call i16 @llvm.bswap.i16(i16 %conv26)
  %38 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %params, align 8
  br label %sw.epilog31

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %div28 = udiv i32 %36, 10
  %conv29 = trunc i32 %div28 to i16
  %39 = call i16 @llvm.bswap.i16(i16 %conv29)
  %40 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %params, align 8
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %if.else, %if.then25, %sw.bb9, %if.end5
  %coherent = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 12
  %41 = ptrtoint ptr %coherent to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %coherent, align 4, !range !49
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load33 = load i8, ptr %0, align 2
  %bf.shl = shl nuw nsw i8 %42, 1
  %bf.clear34 = and i8 %bf.load33, -3
  %bf.set35 = or i8 %bf.clear34, %bf.shl
  store i8 %bf.set35, ptr %0, align 2
  %44 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %transmitter, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %45, label %sw.epilog31.if.end51_crit_edge [
    i32 1, label %sw.epilog31.if.then47_crit_edge
    i32 3, label %sw.epilog31.if.then47_crit_edge116
    i32 5, label %sw.epilog31.if.then47_crit_edge117
  ]

sw.epilog31.if.then47_crit_edge117:               ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

sw.epilog31.if.then47_crit_edge116:               ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

sw.epilog31.if.then47_crit_edge:                  ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

sw.epilog31.if.end51_crit_edge:                   ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then47:                                        ; preds = %sw.epilog31.if.then47_crit_edge, %sw.epilog31.if.then47_crit_edge116, %sw.epilog31.if.then47_crit_edge117
  %bf.set50 = or i8 %bf.set35, 4
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %bf.set50, ptr %0, align 2
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %sw.epilog31.if.end51_crit_edge
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %48 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %engine_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp52 = icmp eq i32 %49, 1
  br i1 %cmp52, label %if.then54, label %if.end51.if.end58_crit_edge

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load55 = load i8, ptr %0, align 2
  %bf.set57 = or i8 %bf.load55, 8
  store i8 %bf.set57, ptr %0, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end51.if.end58_crit_edge
  %transmitter_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %7, i32 0, i32 7
  %51 = ptrtoint ptr %transmitter_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %transmitter_bp_to_atom, align 4
  %call60 = call zeroext i8 %52(i32 noundef %45) #4
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load61 = load i8, ptr %0, align 2
  %bf.shl63 = shl i8 %call60, 6
  %bf.clear64 = and i8 %bf.load61, 15
  %bf.set65 = or i8 %bf.clear64, %bf.shl63
  %lanes_number66 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %54 = ptrtoint ptr %lanes_number66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lanes_number66, align 4
  %conv67 = trunc i32 %55 to i8
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv67, ptr %2, align 4
  %57 = ptrtoint ptr %ref_clk_src_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ref_clk_src_id, align 4
  %conv68 = trunc i32 %58 to i8
  %bf.value70 = shl i8 %conv68, 4
  %bf.shl71 = and i8 %bf.value70, 48
  %bf.set73 = or i8 %bf.shl71, %bf.set65
  store i8 %bf.set73, ptr %0, align 2
  %59 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cntl, align 4
  %conv75 = trunc i32 %60 to i8
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv75, ptr %1, align 1
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %62 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %65, i32 0, i32 79
  %66 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mode_info, align 8
  %call76 = call i32 @amdgpu_atom_execute_table(ptr noundef %67, i32 noundef 76, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp eq i32 %call76, 0
  %spec.select = select i1 %cmp77, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end58 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref_clk_src_id) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @transmitter_control_v1_5(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %params = alloca %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_helper, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #4
  %2 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %params, i32 0, i32 1
  %3 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %params, i32 0, i32 2
  %4 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %params, i32 0, i32 3
  %5 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %params, i32 0, i32 4
  %6 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %params, i32 0, i32 5
  %7 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %params, i32 0, i32 6
  %8 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %params, i32 0, i32 7
  %9 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %params, i32 0, i32 8
  %10 = getelementptr inbounds i8, ptr %params, i32 10
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %10, align 2
  %phy_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %phy_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_id_to_atom, align 4
  %transmitter = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %14 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transmitter, align 4
  %call = tail call zeroext i8 %13(i32 noundef %15) #4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call, ptr %2, align 2
  %17 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cntl, align 4
  %conv = trunc i32 %18 to i8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %3, align 1
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %20 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lanes_number, align 4
  %conv1 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv1, ptr %4, align 2
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %23 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load = load i32, ptr %connector_obj_id, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  %conv2 = trunc i32 %bf.lshr to i8
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv2, ptr %5, align 1
  %signal_type_to_atom_dig_mode = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %signal_type_to_atom_dig_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %signal_type_to_atom_dig_mode, align 4
  %signal = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %27 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %signal, align 4
  %call3 = tail call zeroext i8 %26(i32 noundef %28) #4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call3, ptr %6, align 2
  %clock_source_id_to_atom_phy_clk_src_id = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %clock_source_id_to_atom_phy_clk_src_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clock_source_id_to_atom_phy_clk_src_id, align 4
  %pll_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 4
  %32 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pll_id, align 4
  %call4 = tail call zeroext i8 %31(i32 noundef %33) #4
  %bf.value = shl i8 %call4, 2
  %bf.shl = and i8 %bf.value, 12
  %coherent = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 12
  %34 = ptrtoint ptr %coherent to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %coherent, align 4, !range !49
  %bf.shl9 = shl nuw nsw i8 %35, 1
  %bf.set11 = or i8 %bf.shl, %bf.shl9
  %hpd_sel_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %hpd_sel_to_atom to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hpd_sel_to_atom, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %38 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hpd_sel, align 4
  %call12 = tail call zeroext i8 %37(i32 noundef %39) #4
  %bf.value14 = shl i8 %call12, 4
  %bf.shl15 = and i8 %bf.value14, 112
  %bf.set17 = or i8 %bf.set11, %bf.shl15
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %bf.set17, ptr %7, align 1
  %dig_encoder_sel_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %dig_encoder_sel_to_atom to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dig_encoder_sel_to_atom, align 4
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %43 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %engine_id, align 4
  %call18 = tail call zeroext i8 %42(i32 noundef %44) #4
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %call18, ptr %8, align 2
  %lane_settings = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 11
  %46 = ptrtoint ptr %lane_settings to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lane_settings, align 4
  %conv19 = trunc i32 %47 to i8
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv19, ptr %9, align 1
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %49 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %50, 10
  %conv20 = trunc i32 %div to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %52 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %params, align 2
  %53 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp = icmp eq i32 %54, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %color_depth = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 6
  %55 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %color_depth, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %56, label %if.then.if.end_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb28
    i32 6, label %sw.bb35
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %conv24 = and i32 %div, 65535
  %mul = mul nuw nsw i32 %conv24, 30
  %div25 = udiv i32 %mul, 24
  %conv26 = trunc i32 %div25 to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv26)
  %59 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %params, align 2
  br label %if.end

sw.bb28:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %conv30 = and i32 %div, 65535
  %mul31 = mul nuw nsw i32 %conv30, 36
  %div32 = udiv i32 %mul31, 24
  %conv33 = trunc i32 %div32 to i16
  %60 = tail call i16 @llvm.bswap.i16(i16 %conv33)
  %61 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %params, align 2
  br label %if.end

sw.bb35:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %conv40 = shl i16 %conv20, 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv40)
  %63 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %params, align 2
  br label %if.end

if.end:                                           ; preds = %sw.bb35, %sw.bb28, %sw.bb, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %64 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %67, i32 0, i32 79
  %68 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mode_info, align 8
  %call42 = call i32 @amdgpu_atom_execute_table(ptr noundef %69, i32 noundef 76, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  %spec.select = select i1 %cmp43, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @transmitter_control_v1_6(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %params = alloca %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_helper, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params) #4
  %2 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %params, i32 0, i32 1
  %3 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %params, i32 0, i32 2
  %4 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %params, i32 0, i32 3
  %5 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %params, i32 0, i32 4
  %6 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %params, i32 0, i32 5
  %7 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %params, i32 0, i32 6
  %8 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %params, i32 0, i32 7
  %9 = getelementptr inbounds i8, ptr %params, i32 11
  %10 = call ptr @memset(ptr %9, i32 0, i32 5)
  %phy_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %phy_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_id_to_atom, align 4
  %transmitter = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %13 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transmitter, align 4
  %call = tail call zeroext i8 %12(i32 noundef %14) #4
  %15 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call, ptr %params, align 1
  %16 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cntl, align 4
  %conv = trunc i32 %17 to i8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %17)
  %cmp = icmp eq i32 %17, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lane_settings = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 11
  %19 = ptrtoint ptr %lane_settings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lane_settings, align 4
  %conv3 = trunc i32 %20 to i8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %signal_type_to_atom_dig_mode = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %signal_type_to_atom_dig_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %signal_type_to_atom_dig_mode, align 4
  %signal = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %23 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %signal, align 4
  %call4 = tail call zeroext i8 %22(i32 noundef %24) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i8 [ %call4, %if.else ], [ %conv3, %if.then ]
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %storemerge, ptr %3, align 1
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %26 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lanes_number, align 4
  %conv5 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv5, ptr %4, align 1
  %hpd_sel_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %hpd_sel_to_atom to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hpd_sel_to_atom, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %31 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hpd_sel, align 4
  %call6 = tail call zeroext i8 %30(i32 noundef %32) #4
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call6, ptr %6, align 1
  %dig_encoder_sel_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %dig_encoder_sel_to_atom to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dig_encoder_sel_to_atom, align 4
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %36 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %engine_id, align 4
  %call7 = tail call zeroext i8 %35(i32 noundef %37) #4
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call7, ptr %7, align 1
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %39 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load = load i32, ptr %connector_obj_id, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  %conv8 = trunc i32 %bf.lshr to i8
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv8, ptr %8, align 1
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %41 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %42, 10
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %div, ptr %5, align 1
  %signal9 = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %44 = ptrtoint ptr %signal9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %signal9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cond = icmp eq i32 %45, 4
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog37_crit_edge

if.end.sw.epilog37_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog37

sw.bb:                                            ; preds = %if.end
  %color_depth = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 6
  %46 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %color_depth, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %47, label %sw.bb.sw.epilog37_crit_edge [
    i32 3, label %sw.bb10
    i32 4, label %sw.bb18
    i32 6, label %sw.bb27
  ]

sw.bb.sw.epilog37_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog37

sw.bb10:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %conv12 = trunc i32 %div to i16
  %49 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %conv13 = zext i16 %49 to i32
  %mul = mul nuw nsw i32 %conv13, 30
  %div14 = udiv i32 %mul, 24
  %conv15 = trunc i32 %div14 to i16
  br label %sw.epilog37.sink.split

sw.bb18:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %conv20 = trunc i32 %div to i16
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %conv21 = zext i16 %50 to i32
  %mul22 = mul nuw nsw i32 %conv21, 36
  %div23 = udiv i32 %mul22, 24
  %conv24 = trunc i32 %div23 to i16
  br label %sw.epilog37.sink.split

sw.bb27:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %conv29 = trunc i32 %div to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv29)
  %div32 = shl i16 %51, 1
  br label %sw.epilog37.sink.split

sw.epilog37.sink.split:                           ; preds = %sw.bb27, %sw.bb18, %sw.bb10
  %conv15.sink = phi i16 [ %conv15, %sw.bb10 ], [ %conv24, %sw.bb18 ], [ %div32, %sw.bb27 ]
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv15.sink)
  %conv16 = zext i16 %52 to i32
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %conv16, ptr %5, align 1
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %sw.epilog37.sink.split, %sw.bb.sw.epilog37_crit_edge, %if.end.sw.epilog37_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %54 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %57, i32 0, i32 79
  %58 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mode_info, align 8
  %call38 = call i32 @amdgpu_atom_execute_table(ptr noundef %59, i32 noundef 76, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 0
  %spec.select = select i1 %cmp39, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pixel_clock_v3(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params) #0 align 64 {
entry:
  %allocation = alloca %struct._SET_PIXEL_CLOCK_PS_ALLOCATION, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %allocation) #4
  %0 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS, ptr %allocation, i32 0, i32 1
  %1 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS, ptr %allocation, i32 0, i32 2
  %2 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS, ptr %allocation, i32 0, i32 3
  %3 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS, ptr %allocation, i32 0, i32 4
  %4 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS, ptr %allocation, i32 0, i32 5
  %5 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS, ptr %allocation, i32 0, i32 6
  %6 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS, ptr %allocation, i32 0, i32 7
  %7 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS, ptr %allocation, i32 0, i32 8
  %8 = getelementptr inbounds i8, ptr %allocation, i32 10
  %9 = call ptr @memset(ptr %8, i32 0, i32 10)
  %pll_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 1
  %10 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll_id, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %11, label %entry.cleanup_crit_edge [
    i32 2, label %entry.if.end7_crit_edge
    i32 3, label %if.then3
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %entry.if.end7_crit_edge
  %storemerge = phi i8 [ 1, %if.then3 ], [ 0, %entry.if.end7_crit_edge ]
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %storemerge, ptr %4, align 2
  %reference_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 4
  %14 = ptrtoint ptr %reference_divider to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reference_divider, align 4
  %conv = trunc i32 %15 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %0, align 2
  %feedback_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 5
  %18 = ptrtoint ptr %feedback_divider to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %feedback_divider, align 4
  %conv9 = trunc i32 %19 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %1, align 2
  %fractional_feedback_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 6
  %22 = ptrtoint ptr %fractional_feedback_divider to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fractional_feedback_divider, align 4
  %conv11 = trunc i32 %23 to i8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv11, ptr %3, align 1
  %pixel_clock_post_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 7
  %25 = ptrtoint ptr %pixel_clock_post_divider to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixel_clock_post_divider, align 4
  %conv13 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv13, ptr %2, align 2
  %target_pixel_clock_100hz = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 3
  %28 = ptrtoint ptr %target_pixel_clock_100hz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %target_pixel_clock_100hz, align 4
  %div = udiv i32 %29, 100
  %conv15 = trunc i32 %div to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv15)
  %31 = ptrtoint ptr %allocation to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %allocation, align 2
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %32 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmd_helper, align 4
  %encoder_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %encoder_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %encoder_id_to_atom, align 4
  %encoder_object_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 8
  %36 = ptrtoint ptr %encoder_object_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack = load i32, ptr %encoder_object_id, align 4
  %37 = and i32 %.unpack, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %37)
  %cmp.i = icmp eq i32 %37, 131072
  %bf.lshr2.i = lshr i32 %.unpack, 24
  %retval.0.i = select i1 %cmp.i, i32 %bf.lshr2.i, i32 0
  %call18 = tail call zeroext i8 %35(i32 noundef %retval.0.i) #4
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call18, ptr %5, align 1
  %39 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmd_helper, align 4
  %encoder_mode_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %encoder_mode_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %encoder_mode_bp_to_atom, align 4
  %signal_type = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 2
  %43 = ptrtoint ptr %signal_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %signal_type, align 4
  %call20 = tail call i32 %42(i32 noundef %44, i1 noundef zeroext false) #4
  %conv21 = trunc i32 %call20 to i8
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv21, ptr %6, align 2
  %flags = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 11
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end7.if.end25_crit_edge, label %if.then22

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then22:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %7, align 1
  %49 = or i8 %48, 1
  store i8 %49, ptr %7, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end7.if.end25_crit_edge
  %50 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool30.not = icmp eq i8 %50, 0
  br i1 %tobool30.not, label %if.end25.if.end36_crit_edge, label %if.then31

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %7, align 1
  %53 = or i8 %52, 8
  store i8 %53, ptr %7, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end25.if.end36_crit_edge
  %54 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bp_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp37.not = icmp eq i32 %55, 2
  br i1 %cmp37.not, label %if.end36.if.end44_crit_edge, label %if.then39

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %7, align 1
  %58 = or i8 %57, 4
  store i8 %58, ptr %7, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end36.if.end44_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %59 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %62, i32 0, i32 79
  %63 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mode_info, align 8
  %call45 = call i32 @amdgpu_atom_execute_table(ptr noundef %64, i32 noundef 12, ptr noundef nonnull %allocation) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  %spec.select = select i1 %cmp46, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end44 ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %allocation) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pixel_clock_v5(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params) #0 align 64 {
entry:
  %clk = alloca %struct._SET_PIXEL_CLOCK_PS_ALLOCATION_V5, align 1
  %controller_id = alloca i8, align 1
  %pll_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %clk) #4
  %0 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %clk, i32 0, i32 2
  %1 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %clk, i32 0, i32 3
  %2 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %clk, i32 0, i32 4
  %3 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %clk, i32 0, i32 5
  %4 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %clk, i32 0, i32 6
  %5 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %clk, i32 0, i32 7
  %6 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %clk, i32 0, i32 8
  %7 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %clk, i32 0, i32 9
  %8 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %clk, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %controller_id) #4
  %9 = ptrtoint ptr %controller_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %controller_id, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll_id) #4
  %10 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %pll_id, align 4, !annotation !48
  %11 = call ptr @memset(ptr %clk, i32 0, i32 24)
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %12 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd_helper, align 4
  %clock_source_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %clock_source_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clock_source_id_to_atom, align 4
  %pll_id1 = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 1
  %16 = ptrtoint ptr %pll_id1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pll_id1, align 4
  %call = call zeroext i1 %15(i32 noundef %17, ptr noundef nonnull %pll_id) #4
  br i1 %call, label %land.lhs.true, label %entry.if.end59_crit_edge

entry.if.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

land.lhs.true:                                    ; preds = %entry
  %18 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_helper, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bp_params, align 4
  %call4 = call zeroext i1 %21(i32 noundef %23, ptr noundef nonnull %controller_id) #4
  br i1 %call4, label %if.then, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.then:                                          ; preds = %land.lhs.true
  %24 = ptrtoint ptr %controller_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %controller_id, align 1
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %clk, align 1
  %27 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pll_id, align 4
  %conv = trunc i32 %28 to i8
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %4, align 1
  %reference_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 4
  %30 = ptrtoint ptr %reference_divider to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reference_divider, align 4
  %conv6 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv6, ptr %3, align 1
  %feedback_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 5
  %33 = ptrtoint ptr %feedback_divider to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %feedback_divider, align 4
  %conv8 = trunc i32 %34 to i16
  %35 = call i16 @llvm.bswap.i16(i16 %conv8)
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %1, align 1
  %fractional_feedback_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 6
  %37 = ptrtoint ptr %fractional_feedback_divider to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fractional_feedback_divider, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %8, align 1
  %pixel_clock_post_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 7
  %41 = ptrtoint ptr %pixel_clock_post_divider to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pixel_clock_post_divider, align 4
  %conv11 = trunc i32 %42 to i8
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv11, ptr %2, align 1
  %44 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmd_helper, align 4
  %encoder_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %encoder_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %encoder_id_to_atom, align 4
  %encoder_object_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 8
  %48 = ptrtoint ptr %encoder_object_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack = load i32, ptr %encoder_object_id, align 4
  %49 = and i32 %.unpack, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %49)
  %cmp.i = icmp eq i32 %49, 131072
  %bf.lshr2.i = lshr i32 %.unpack, 24
  %retval.0.i = select i1 %cmp.i, i32 %bf.lshr2.i, i32 0
  %call15 = call zeroext i8 %47(i32 noundef %retval.0.i) #4
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %call15, ptr %5, align 1
  %51 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd_helper, align 4
  %encoder_mode_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %encoder_mode_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %encoder_mode_bp_to_atom, align 4
  %signal_type = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 2
  %55 = ptrtoint ptr %signal_type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %signal_type, align 4
  %call18 = call i32 %54(i32 noundef %56, i1 noundef zeroext false) #4
  %conv19 = trunc i32 %call18 to i8
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv19, ptr %6, align 1
  %target_pixel_clock_100hz = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 3
  %58 = ptrtoint ptr %target_pixel_clock_100hz to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %target_pixel_clock_100hz, align 4
  %div = udiv i32 %59, 100
  %conv21 = trunc i32 %div to i16
  %60 = call i16 @llvm.bswap.i16(i16 %conv21)
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %0, align 1
  %flags = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 11
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then23

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then23:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %7, align 1
  %65 = or i8 %64, 1
  store i8 %65, ptr %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then.if.end_crit_edge
  %66 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool31.not = icmp eq i8 %66, 0
  br i1 %tobool31.not, label %if.end.if.end38_crit_edge, label %if.then32

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %7, align 1
  %69 = or i8 %68, 16
  store i8 %69, ptr %7, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end.if.end38_crit_edge
  %70 = ptrtoint ptr %signal_type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %signal_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %71)
  %cmp = icmp eq i32 %71, 4
  br i1 %cmp, label %if.then41, label %if.end38.if.end53_crit_edge

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then41:                                        ; preds = %if.end38
  %color_depth = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 10
  %72 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %color_depth, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %73, label %if.then41.if.end53_crit_edge [
    i32 1, label %if.then41.if.end53.sink.split_crit_edge
    i32 2, label %sw.bb47
  ]

if.then41.if.end53.sink.split_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53.sink.split

if.then41.if.end53_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

sw.bb47:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53.sink.split

if.end53.sink.split:                              ; preds = %sw.bb47, %if.then41.if.end53.sink.split_crit_edge
  %.sink77 = phi i8 [ 4, %sw.bb47 ], [ 8, %if.then41.if.end53.sink.split_crit_edge ]
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %7, align 1
  %77 = or i8 %76, %.sink77
  store i8 %77, ptr %7, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %if.then41.if.end53_crit_edge, %if.end38.if.end53_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %78 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %81, i32 0, i32 79
  %82 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mode_info, align 8
  %call54 = call i32 @amdgpu_atom_execute_table(ptr noundef %83, i32 noundef 12, ptr noundef nonnull %clk) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  %spec.select = select i1 %cmp55, i32 0, i32 5
  br label %if.end59

if.end59:                                         ; preds = %if.end53, %land.lhs.true.if.end59_crit_edge, %entry.if.end59_crit_edge
  %result.0 = phi i32 [ 5, %land.lhs.true.if.end59_crit_edge ], [ 5, %entry.if.end59_crit_edge ], [ %spec.select, %if.end53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll_id) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %controller_id) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %clk) #4
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pixel_clock_v6(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params) #0 align 64 {
entry:
  %clk = alloca %struct._SET_PIXEL_CLOCK_PS_ALLOCATION_V6, align 4
  %controller_id = alloca i8, align 1
  %pll_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %clk) #4
  %0 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V6, ptr %clk, i32 0, i32 1
  %1 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V6, ptr %clk, i32 0, i32 2
  %2 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V6, ptr %clk, i32 0, i32 3
  %3 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V6, ptr %clk, i32 0, i32 4
  %4 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V6, ptr %clk, i32 0, i32 5
  %5 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V6, ptr %clk, i32 0, i32 6
  %6 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V6, ptr %clk, i32 0, i32 7
  %7 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V6, ptr %clk, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %controller_id) #4
  %8 = ptrtoint ptr %controller_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %controller_id, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll_id) #4
  %9 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %pll_id, align 4, !annotation !48
  %10 = call ptr @memset(ptr %clk, i32 0, i32 24)
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %11 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd_helper, align 4
  %clock_source_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %clock_source_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clock_source_id_to_atom, align 4
  %pll_id1 = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 1
  %15 = ptrtoint ptr %pll_id1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll_id1, align 4
  %call = call zeroext i1 %14(i32 noundef %16, ptr noundef nonnull %pll_id) #4
  br i1 %call, label %land.lhs.true, label %entry.if.end71_crit_edge

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

land.lhs.true:                                    ; preds = %entry
  %17 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd_helper, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bp_params, align 4
  %call4 = call zeroext i1 %20(i32 noundef %22, ptr noundef nonnull %controller_id) #4
  br i1 %call4, label %if.then, label %land.lhs.true.if.end71_crit_edge

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then:                                          ; preds = %land.lhs.true
  %23 = ptrtoint ptr %controller_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %controller_id, align 1
  %conv = zext i8 %24 to i32
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load = load i32, ptr %clk, align 4
  %bf.shl = shl nuw i32 %conv, 24
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %clk, align 4
  %26 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pll_id, align 4
  %conv5 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv5, ptr %3, align 4
  %reference_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 4
  %29 = ptrtoint ptr %reference_divider to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reference_divider, align 4
  %conv7 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv7, ptr %2, align 1
  %feedback_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 5
  %32 = ptrtoint ptr %feedback_divider to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %feedback_divider, align 4
  %conv9 = trunc i32 %33 to i16
  %34 = call i16 @llvm.bswap.i16(i16 %conv9)
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %0, align 4
  %fractional_feedback_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 6
  %36 = ptrtoint ptr %fractional_feedback_divider to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fractional_feedback_divider, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %7, align 4
  %pixel_clock_post_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 7
  %40 = ptrtoint ptr %pixel_clock_post_divider to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pixel_clock_post_divider, align 4
  %conv12 = trunc i32 %41 to i8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv12, ptr %1, align 2
  %43 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cmd_helper, align 4
  %encoder_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %encoder_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %encoder_id_to_atom, align 4
  %encoder_object_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 8
  %47 = ptrtoint ptr %encoder_object_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack = load i32, ptr %encoder_object_id, align 4
  %48 = and i32 %.unpack, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %48)
  %cmp.i = icmp eq i32 %48, 131072
  %bf.lshr2.i = lshr i32 %.unpack, 24
  %retval.0.i = select i1 %cmp.i, i32 %bf.lshr2.i, i32 0
  %call16 = call zeroext i8 %46(i32 noundef %retval.0.i) #4
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call16, ptr %4, align 1
  %50 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmd_helper, align 4
  %encoder_mode_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %encoder_mode_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %encoder_mode_bp_to_atom, align 4
  %signal_type = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 2
  %54 = ptrtoint ptr %signal_type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %signal_type, align 4
  %call19 = call i32 %53(i32 noundef %55, i1 noundef zeroext false) #4
  %conv20 = trunc i32 %call19 to i8
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv20, ptr %5, align 2
  %target_pixel_clock_100hz = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 3
  %57 = ptrtoint ptr %target_pixel_clock_100hz to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %target_pixel_clock_100hz, align 4
  %div = udiv i32 %58, 100
  %59 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load23 = load i32, ptr %clk, align 4
  %60 = and i32 %div, 67108608
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %bf.clear25 = and i32 %bf.load23, -16777216
  %bf.set26 = or i32 %61, %bf.clear25
  %62 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %bf.set26, ptr %clk, align 4
  %flags = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 11
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load27 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load27)
  %tobool.not = icmp sgt i8 %bf.load27, -1
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then28

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then28:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %6, align 1
  %66 = or i8 %65, 1
  store i8 %66, ptr %6, align 1
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then.if.end_crit_edge
  %67 = and i8 %bf.load27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool37.not = icmp eq i8 %67, 0
  br i1 %tobool37.not, label %if.end.if.end44_crit_edge, label %if.then38

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %6, align 1
  %70 = or i8 %69, 16
  store i8 %70, ptr %6, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end.if.end44_crit_edge
  %71 = ptrtoint ptr %signal_type to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %signal_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp = icmp eq i32 %72, 4
  br i1 %cmp, label %if.then47, label %if.end44.if.end65_crit_edge

if.end44.if.end65_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then47:                                        ; preds = %if.end44
  %color_depth = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 10
  %73 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %color_depth, align 4
  %switch.tableidx = add i32 %74, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %75 = icmp ult i32 %switch.tableidx, 3
  br i1 %75, label %switch.lookup, label %if.then47.if.end65_crit_edge

if.then47.if.end65_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

switch.lookup:                                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.idx.mult = shl i8 %switch.idx.cast, 2
  %switch.offset = add i8 %switch.idx.mult, 4
  %76 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %6, align 1
  %78 = or i8 %77, %switch.offset
  store i8 %78, ptr %6, align 1
  br label %if.end65

if.end65:                                         ; preds = %switch.lookup, %if.then47.if.end65_crit_edge, %if.end44.if.end65_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %79 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 79
  %83 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mode_info, align 8
  %call66 = call i32 @amdgpu_atom_execute_table(ptr noundef %84, i32 noundef 12, ptr noundef nonnull %clk) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp eq i32 %call66, 0
  %spec.select = select i1 %cmp67, i32 0, i32 5
  br label %if.end71

if.end71:                                         ; preds = %if.end65, %land.lhs.true.if.end71_crit_edge, %entry.if.end71_crit_edge
  %result.0 = phi i32 [ 5, %land.lhs.true.if.end71_crit_edge ], [ 5, %entry.if.end71_crit_edge ], [ %spec.select, %if.end65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll_id) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %controller_id) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %clk) #4
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pixel_clock_v7(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params) #0 align 64 {
entry:
  %clk = alloca %struct._PIXEL_CLOCK_PARAMETERS_V7, align 4
  %controller_id = alloca i8, align 1
  %pll_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clk) #4
  %0 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V7, ptr %clk, i32 0, i32 1
  %1 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V7, ptr %clk, i32 0, i32 2
  %2 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V7, ptr %clk, i32 0, i32 3
  %3 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V7, ptr %clk, i32 0, i32 4
  %4 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V7, ptr %clk, i32 0, i32 5
  %5 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V7, ptr %clk, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %controller_id) #4
  %6 = ptrtoint ptr %controller_id to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %controller_id, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll_id) #4
  %7 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %pll_id, align 4, !annotation !48
  %8 = getelementptr inbounds i8, ptr %clk, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 12)
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %10 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd_helper, align 4
  %clock_source_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %clock_source_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clock_source_id_to_atom, align 4
  %pll_id1 = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 1
  %14 = ptrtoint ptr %pll_id1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pll_id1, align 4
  %call = call zeroext i1 %13(i32 noundef %15, ptr noundef nonnull %pll_id) #4
  br i1 %call, label %land.lhs.true, label %entry.if.end87_crit_edge

entry.if.end87_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

land.lhs.true:                                    ; preds = %entry
  %16 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd_helper, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bp_params, align 4
  %call4 = call zeroext i1 %19(i32 noundef %21, ptr noundef nonnull %controller_id) #4
  br i1 %call4, label %if.then, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

if.then:                                          ; preds = %land.lhs.true
  %22 = ptrtoint ptr %controller_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %controller_id, align 1
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %4, align 4
  %25 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pll_id, align 4
  %conv = trunc i32 %26 to i8
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %0, align 4
  %28 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmd_helper, align 4
  %encoder_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %encoder_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %encoder_id_to_atom, align 4
  %encoder_object_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 8
  %32 = ptrtoint ptr %encoder_object_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack = load i32, ptr %encoder_object_id, align 4
  %33 = and i32 %.unpack, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %33)
  %cmp.i = icmp eq i32 %33, 131072
  %bf.lshr2.i = lshr i32 %.unpack, 24
  %retval.0.i = select i1 %cmp.i, i32 %bf.lshr2.i, i32 0
  %call7 = call zeroext i8 %31(i32 noundef %retval.0.i) #4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call7, ptr %1, align 1
  %35 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd_helper, align 4
  %encoder_mode_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %encoder_mode_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %encoder_mode_bp_to_atom, align 4
  %signal_type = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 2
  %39 = ptrtoint ptr %signal_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %signal_type, align 4
  %call9 = call i32 %38(i32 noundef %40, i1 noundef zeroext false) #4
  %conv10 = trunc i32 %call9 to i8
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv10, ptr %2, align 2
  %target_pixel_clock_100hz = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 3
  %42 = ptrtoint ptr %target_pixel_clock_100hz to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %target_pixel_clock_100hz, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %clk, align 4
  %46 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cmd_helper, align 4
  %transmitter_color_depth_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %transmitter_color_depth_to_atom to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %transmitter_color_depth_to_atom, align 4
  %color_depth = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 10
  %50 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %color_depth, align 4
  %call12 = call zeroext i8 %49(i32 noundef %51) #4
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %call12, ptr %5, align 1
  %flags = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 11
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then13

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %3, align 1
  %56 = or i8 %55, 1
  store i8 %56, ptr %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then.if.end_crit_edge
  %57 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool20.not = icmp eq i8 %57, 0
  br i1 %tobool20.not, label %if.end.if.end26_crit_edge, label %if.then21

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %3, align 1
  %60 = or i8 %59, 48
  store i8 %60, ptr %3, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end.if.end26_crit_edge
  %61 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool32.not = icmp eq i8 %61, 0
  br i1 %tobool32.not, label %if.end26.if.end38_crit_edge, label %if.then33

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %3, align 1
  %64 = or i8 %63, 2
  store i8 %64, ptr %3, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end26.if.end38_crit_edge
  %65 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool44.not = icmp eq i8 %65, 0
  br i1 %tobool44.not, label %if.end38.if.end50_crit_edge, label %if.then45

if.end38.if.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %3, align 1
  %68 = or i8 %67, 4
  store i8 %68, ptr %3, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end38.if.end50_crit_edge
  %bf.clear65 = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear65)
  %tobool67.not = icmp eq i8 %bf.clear65, 0
  br i1 %tobool67.not, label %if.end50.if.end73_crit_edge, label %if.then68

if.end50.if.end73_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

if.then68:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %3, align 1
  %71 = or i8 %70, 32
  store i8 %71, ptr %3, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %if.end50.if.end73_crit_edge
  %72 = ptrtoint ptr %signal_type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %signal_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp = icmp eq i32 %73, 2
  br i1 %cmp, label %if.then76, label %if.end73.if.end81_crit_edge

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %3, align 1
  %76 = or i8 %75, 8
  store i8 %76, ptr %3, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.end73.if.end81_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %77 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %80, i32 0, i32 79
  %81 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mode_info, align 8
  %call82 = call i32 @amdgpu_atom_execute_table(ptr noundef %82, i32 noundef 12, ptr noundef nonnull %clk) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp eq i32 %call82, 0
  %spec.select = select i1 %cmp83, i32 0, i32 5
  br label %if.end87

if.end87:                                         ; preds = %if.end81, %land.lhs.true.if.end87_crit_edge, %entry.if.end87_crit_edge
  %result.0 = phi i32 [ 5, %land.lhs.true.if.end87_crit_edge ], [ 5, %entry.if.end87_crit_edge ], [ %spec.select, %if.end81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll_id) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %controller_id) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk) #4
  ret i32 %result.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_spread_spectrum_on_ppll_v1(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %params = alloca %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %params, i32 0, i32 3
  %3 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %params, i32 0, i32 4
  %4 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %params, i32 0, i32 5
  %5 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %params, i32 0, i32 6
  %6 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %params, align 8
  br i1 %enable, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %percentage = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 1
  %7 = ptrtoint ptr %percentage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %percentage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.not = icmp eq i32 %8, 0
  br i1 %cmp2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %storemerge = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true.if.end_crit_edge ]
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %storemerge, ptr %2, align 4
  %percentage5 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 1
  %10 = ptrtoint ptr %percentage5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %percentage5, align 4
  %conv6 = trunc i32 %11 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %13 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %params, align 8
  %14 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %conv7 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7, ptr %1, align 1
  %delay = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  %conv8 = trunc i32 %19 to i8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8, ptr %3, align 1
  %range = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %range, align 4
  %div = udiv i32 %22, 10000
  %conv9 = trunc i32 %div to i8
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv9, ptr %4, align 2
  %flags = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %flags, align 4
  %25 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool10.not = icmp eq i8 %25, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %0, align 2
  %28 = or i8 %27, 2
  store i8 %28, ptr %0, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool19.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool19.not, label %if.end14.if.end25_crit_edge, label %if.then20

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %0, align 2
  %31 = or i8 %30, 1
  store i8 %31, ptr %0, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end14.if.end25_crit_edge
  %32 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bp_params, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %33, label %do.body [
    i32 2, label %if.then28
    i32 3, label %if.then33
  ]

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %5, align 1
  br label %if.end37

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %5, align 1
  br label %if.end37

do.body:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.enable_spread_spectrum_on_ppll_v1, i32 noundef 1354) #4
  tail call void @kgdb_breakpoint() #4
  br label %if.end37

if.end37:                                         ; preds = %do.body, %if.then33, %if.then28
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %37 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %40, i32 0, i32 79
  %41 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %42, i32 noundef 65, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp38 = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp38, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_spread_spectrum_on_ppll_v2(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %params = alloca %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V2, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V2, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V2, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V2, ptr %params, i32 0, i32 3
  %3 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V2, ptr %params, i32 0, i32 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %params, align 8
  %5 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bp_params, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %6, label %do.body [
    i32 2, label %if.then
    i32 3, label %if.then3
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %0, align 2
  br label %if.end6

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %0, align 2
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.enable_spread_spectrum_on_ppll_v2, i32 noundef 1377) #4
  tail call void @kgdb_breakpoint() #4
  br label %if.end6

if.end6:                                          ; preds = %do.body, %if.then3, %if.then
  br i1 %enable, label %land.lhs.true, label %if.end6.if.else36_crit_edge

if.end6.if.else36_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else36

land.lhs.true:                                    ; preds = %if.end6
  %percentage = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 1
  %10 = ptrtoint ptr %percentage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %percentage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.not = icmp eq i32 %11, 0
  br i1 %cmp9.not, label %land.lhs.true.if.else36_crit_edge, label %if.then11

land.lhs.true.if.else36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else36

if.then11:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %1, align 1
  %conv13 = trunc i32 %11 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %14 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %params, align 8
  %15 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 3
  %ds_frac_size = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 3, i32 0, i32 2
  %16 = ptrtoint ptr %ds_frac_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ds_frac_size, align 4
  %conv14 = trunc i32 %17 to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv14)
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %3, align 2
  %flags = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %flags, align 4
  %21 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool15.not = icmp eq i8 %21, 0
  br i1 %tobool15.not, label %if.then11.if.end20_crit_edge, label %if.then16

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %0, align 2
  %24 = or i8 %23, 2
  store i8 %24, ptr %0, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then11.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool25.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool25.not, label %if.end20.if.end31_crit_edge, label %if.then26

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %0, align 2
  %27 = or i8 %26, 1
  store i8 %27, ptr %0, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end20.if.end31_crit_edge
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %15, align 4
  %and = and i32 %29, 255
  %nfrac_amount = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %nfrac_amount to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nfrac_amount, align 4
  %shl32 = shl i32 %31, 8
  %and33 = and i32 %shl32, 3840
  %or34 = or i32 %and33, %and
  %conv35 = trunc i32 %or34 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv35)
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %2, align 4
  br label %if.end38

if.else36:                                        ; preds = %land.lhs.true.if.else36_crit_edge, %if.end6.if.else36_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %1, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.end31
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %38, i32 0, i32 79
  %39 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %40, i32 noundef 65, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp39 = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp39, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_spread_spectrum_on_ppll_v3(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %params = alloca %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V3, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V3, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V3, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V3, ptr %params, i32 0, i32 3
  %3 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL_V3, ptr %params, i32 0, i32 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %params, align 8
  %5 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bp_params, align 4
  %switch.tableidx = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 5
  br i1 %7, label %switch.hole_check, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.enable_spread_spectrum_on_ppll_v3, i32 noundef 1444) #4
  tail call void @kgdb_breakpoint() #4
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %8 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %switch.lobit.not = icmp eq i8 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.enable_spread_spectrum_on_ppll_v3, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %9)
  %switch.load = load i8, ptr %switch.gep, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %switch.load, ptr %0, align 2
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %switch.lookup
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %1, align 1
  %ds_frac_amount = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 2
  %12 = ptrtoint ptr %ds_frac_amount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ds_frac_amount, align 4
  %conv8 = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %15 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %params, align 8
  %16 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 3
  %ds_frac_size = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 3, i32 0, i32 2
  %17 = ptrtoint ptr %ds_frac_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ds_frac_size, align 4
  %conv9 = trunc i32 %18 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %3, align 2
  %flags = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 4
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %flags, align 4
  %22 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not = icmp eq i8 %22, 0
  br i1 %tobool10.not, label %if.then.if.end_crit_edge, label %if.then11

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %0, align 2
  %25 = or i8 %24, 2
  store i8 %25, ptr %0, align 2
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool19.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool19.not, label %if.end.if.end25_crit_edge, label %if.then20

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %0, align 2
  %28 = or i8 %27, 1
  store i8 %28, ptr %0, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end.if.end25_crit_edge
  %29 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %16, align 4
  %and = and i32 %30, 255
  %nfrac_amount = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params, i32 0, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %nfrac_amount to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nfrac_amount, align 4
  %shl26 = shl i32 %32, 8
  %and27 = and i32 %shl26, 3840
  %or28 = or i32 %and27, %and
  %conv29 = trunc i32 %or28 to i16
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv29)
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %2, align 4
  br label %if.end31

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %1, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.end25
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %39, i32 0, i32 79
  %40 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %41, i32 noundef 65, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp32 = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp32, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.body
  %retval.0 = phi i32 [ 5, %do.body ], [ %spec.select, %if.end31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adjust_display_pll_v2(ptr nocapture noundef readonly %bp, ptr nocapture noundef %bp_params) #0 align 64 {
entry:
  %params = alloca %struct._ADJUST_DISPLAY_PLL_PARAMETERS, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %params, align 8
  %pixel_clock = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_params, i32 0, i32 2
  %1 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %2, 10
  %conv = trunc i32 %div to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %params, align 8
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %5 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_helper, align 4
  %encoder_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %encoder_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %encoder_id_to_atom, align 4
  %encoder_object_id = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_params, i32 0, i32 1
  %9 = ptrtoint ptr %encoder_object_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack = load i32, ptr %encoder_object_id, align 4
  %10 = and i32 %.unpack, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %10)
  %cmp.i = icmp eq i32 %10, 131072
  %bf.lshr2.i = lshr i32 %.unpack, 24
  %retval.0.i = select i1 %cmp.i, i32 %bf.lshr2.i, i32 0
  %call1 = tail call zeroext i8 %8(i32 noundef %retval.0.i) #4
  %ucTransmitterID = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_PARAMETERS, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %ucTransmitterID to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call1, ptr %ucTransmitterID, align 2
  %12 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd_helper, align 4
  %encoder_mode_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %encoder_mode_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %encoder_mode_bp_to_atom, align 4
  %16 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bp_params, align 4
  %call3 = tail call i32 %15(i32 noundef %17, i1 noundef zeroext false) #4
  %conv4 = trunc i32 %call3 to i8
  %ucEncodeMode = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_PARAMETERS, ptr %params, i32 0, i32 2
  %18 = ptrtoint ptr %ucEncodeMode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv4, ptr %ucEncodeMode, align 1
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %22, i32 0, i32 79
  %23 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mode_info, align 8
  %call5 = call i32 @amdgpu_atom_execute_table(ptr noundef %24, i32 noundef 17, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %25 = icmp ult i32 %2, 10
  br i1 %25, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then
  %26 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixel_clock, align 4
  %conv10 = zext i32 %27 to i64
  %28 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %params, align 8
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv8 = zext i16 %30 to i64
  %mul = mul nuw nsw i64 %conv8, %conv10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !50

if.then168.i.i:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %div
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %31 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %mul) #7, !srcloc !51
  %asmresult1.i.i.i = extractvalue { i64, i64 } %31, 1
  %extract.t29 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t29, %if.else174.i.i ]
  %adjusted_pixel_clock = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_params, i32 0, i32 3
  %32 = ptrtoint ptr %adjusted_pixel_clock to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dividend.addr.0.i.i.off0, ptr %adjusted_pixel_clock, align 4
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %adjusted_pixel_clock16 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_params, i32 0, i32 3
  %33 = ptrtoint ptr %adjusted_pixel_clock16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %adjusted_pixel_clock16, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.adjust_display_pll_v2, i32 noundef 1549) #4
  call void @kgdb_breakpoint() #4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %div_u64.exit, %entry.if.end17_crit_edge
  %result.0 = phi i32 [ 5, %entry.if.end17_crit_edge ], [ 0, %if.else ], [ 0, %div_u64.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adjust_display_pll_v3(ptr nocapture noundef readonly %bp, ptr nocapture noundef %bp_params) #0 align 64 {
entry:
  %params = alloca %struct._ADJUST_DISPLAY_PLL_PS_ALLOCATION_V3, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3, ptr %params, i32 0, i32 2
  %pixel_clock = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_params, i32 0, i32 2
  %2 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %3, 10
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %params, align 8
  %conv = trunc i32 %div to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %params, align 8
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %7 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_helper, align 4
  %encoder_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %encoder_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encoder_id_to_atom, align 4
  %encoder_object_id = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_params, i32 0, i32 1
  %11 = ptrtoint ptr %encoder_object_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %encoder_object_id, align 4
  %12 = and i32 %.unpack, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %12)
  %cmp.i = icmp eq i32 %12, 131072
  %bf.lshr2.i = lshr i32 %.unpack, 24
  %retval.0.i = select i1 %cmp.i, i32 %bf.lshr2.i, i32 0
  %call1 = tail call zeroext i8 %10(i32 noundef %retval.0.i) #4
  %ucTransmitterID = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_INPUT_PARAMETERS_V3, ptr %params, i32 0, i32 1
  %13 = ptrtoint ptr %ucTransmitterID to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call1, ptr %ucTransmitterID, align 2
  %14 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd_helper, align 4
  %encoder_mode_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %encoder_mode_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %encoder_mode_bp_to_atom, align 4
  %18 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bp_params, align 4
  %call3 = tail call i32 %17(i32 noundef %19, i1 noundef zeroext false) #4
  %conv4 = trunc i32 %call3 to i8
  %ucEncodeMode = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_INPUT_PARAMETERS_V3, ptr %params, i32 0, i32 2
  %20 = ptrtoint ptr %ucEncodeMode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv4, ptr %ucEncodeMode, align 1
  %ss_enable = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_params, i32 0, i32 6
  %21 = ptrtoint ptr %ss_enable to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ss_enable, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %0, align 4
  %25 = or i8 %24, 16
  store i8 %25, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bp_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp10 = icmp eq i32 %27, 2
  br i1 %cmp10, label %if.then12, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %0, align 4
  %30 = or i8 %29, 64
  store i8 %30, ptr %0, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %34, i32 0, i32 79
  %35 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mode_info, align 8
  %call18 = call i32 @amdgpu_atom_execute_table(ptr noundef %36, i32 noundef 17, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end17.if.end34_crit_edge

if.end17.if.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %37 = icmp ult i32 %3, 10
  br i1 %37, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then21
  %38 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pixel_clock, align 4
  %conv24 = zext i32 %39 to i64
  %40 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %params, align 8
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %conv22 = zext i32 %42 to i64
  %mul = mul nuw i64 %conv22, %conv24
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !50

if.then168.i.i:                                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %div
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  %43 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %mul) #7, !srcloc !51
  %asmresult1.i.i.i = extractvalue { i64, i64 } %43, 1
  %extract.t50 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t50, %if.else174.i.i ]
  %adjusted_pixel_clock = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_params, i32 0, i32 3
  %44 = ptrtoint ptr %adjusted_pixel_clock to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %dividend.addr.0.i.i.off0, ptr %adjusted_pixel_clock, align 4
  br label %if.end31

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %adjusted_pixel_clock30 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_params, i32 0, i32 3
  %45 = ptrtoint ptr %adjusted_pixel_clock30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %adjusted_pixel_clock30, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.adjust_display_pll_v3, i32 noundef 1599) #4
  call void @kgdb_breakpoint() #4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %div_u64.exit
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %0, align 4
  %conv32 = zext i8 %47 to i32
  %reference_divider = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_params, i32 0, i32 4
  %48 = ptrtoint ptr %reference_divider to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv32, ptr %reference_divider, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %1, align 1
  %conv33 = zext i8 %50 to i32
  %pixel_clock_post_divider = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_params, i32 0, i32 5
  %51 = ptrtoint ptr %pixel_clock_post_divider to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv33, ptr %pixel_clock_post_divider, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.end17.if.end34_crit_edge
  %result.0 = phi i32 [ 0, %if.end31 ], [ 5, %if.end17.if.end34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #4
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac1_encoder_control_v1(ptr nocapture noundef readonly %bp, i1 noundef zeroext %enable, i32 noundef %pixel_clock, i8 noundef zeroext %dac_standard) #0 align 64 {
entry:
  %params = alloca %struct._DAC_ENCODER_CONTROL_PARAMETERS, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._DAC_ENCODER_CONTROL_PARAMETERS, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct._DAC_ENCODER_CONTROL_PARAMETERS, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %dac_standard, ptr %0, align 2
  %spec.select.i = zext i1 %enable to i8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select.i, ptr %1, align 1
  %div.i = udiv i32 %pixel_clock, 10
  %conv.i = trunc i32 %div.i to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #4
  %5 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %params, align 2
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %9, i32 0, i32 79
  %10 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %11, i32 noundef 24, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac2_encoder_control_v1(ptr nocapture noundef readonly %bp, i1 noundef zeroext %enable, i32 noundef %pixel_clock, i8 noundef zeroext %dac_standard) #0 align 64 {
entry:
  %params = alloca %struct._DAC_ENCODER_CONTROL_PARAMETERS, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._DAC_ENCODER_CONTROL_PARAMETERS, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct._DAC_ENCODER_CONTROL_PARAMETERS, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %dac_standard, ptr %0, align 2
  %spec.select.i = zext i1 %enable to i8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select.i, ptr %1, align 1
  %div.i = udiv i32 %pixel_clock, 10
  %conv.i = trunc i32 %div.i to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #4
  %5 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %params, align 2
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %9, i32 0, i32 79
  %10 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %11, i32 noundef 25, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac1_output_control_v1(ptr nocapture noundef readonly %bp, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %params = alloca %struct._DISPLAY_DEVICE_OUTPUT_CONTROL_PARAMETERS, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %params) #4
  %. = zext i1 %enable to i8
  %0 = getelementptr inbounds i8, ptr %params, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 3)
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %., ptr %params, align 1
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %6, i32 0, i32 79
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %8, i32 noundef 68, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %result.0 = select i1 %cmp, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %params) #4
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac2_output_control_v1(ptr nocapture noundef readonly %bp, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %params = alloca %struct._DISPLAY_DEVICE_OUTPUT_CONTROL_PARAMETERS, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %params) #4
  %. = zext i1 %enable to i8
  %0 = getelementptr inbounds i8, ptr %params, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 3)
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %., ptr %params, align 1
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %6, i32 0, i32 79
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %8, i32 noundef 69, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %result.0 = select i1 %cmp, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %params) #4
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_crtc_using_dtd_timing_v3(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params) #0 align 64 {
entry:
  %params = alloca %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, align 2
  %atom_controller_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #4
  %0 = getelementptr inbounds i8, ptr %params, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %atom_controller_id) #4
  %2 = ptrtoint ptr %atom_controller_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %atom_controller_id, align 1, !annotation !48
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %3 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_helper, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bp_params, align 4
  %call = call zeroext i1 %6(i32 noundef %8, ptr noundef nonnull %atom_controller_id) #4
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %atom_controller_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %atom_controller_id, align 1
  %ucCRTC = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 11
  %11 = ptrtoint ptr %ucCRTC to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ucCRTC, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %h_addressable = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 2
  %12 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h_addressable, align 4
  %conv = trunc i32 %13 to i16
  %14 = call i16 @llvm.bswap.i16(i16 %conv)
  %15 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %params, align 2
  %h_total = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 1
  %16 = ptrtoint ptr %h_total to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h_total, align 4
  %sub = sub i32 %17, %13
  %conv2 = trunc i32 %sub to i16
  %18 = call i16 @llvm.bswap.i16(i16 %conv2)
  %usH_Blanking_Time = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 1
  %19 = ptrtoint ptr %usH_Blanking_Time to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %usH_Blanking_Time, align 2
  %v_addressable = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 8
  %20 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v_addressable, align 4
  %conv3 = trunc i32 %21 to i16
  %22 = call i16 @llvm.bswap.i16(i16 %conv3)
  %usV_Size = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 2
  %23 = ptrtoint ptr %usV_Size to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %usV_Size, align 2
  %v_total = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 7
  %24 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v_total, align 4
  %sub5 = sub i32 %25, %21
  %conv6 = trunc i32 %sub5 to i16
  %26 = call i16 @llvm.bswap.i16(i16 %conv6)
  %usV_Blanking_Time = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 3
  %27 = ptrtoint ptr %usV_Blanking_Time to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %usV_Blanking_Time, align 2
  %h_sync_start = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 5
  %28 = ptrtoint ptr %h_sync_start to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %h_sync_start, align 4
  %sub8 = sub i32 %29, %13
  %conv9 = trunc i32 %sub8 to i16
  %30 = call i16 @llvm.bswap.i16(i16 %conv9)
  %usH_SyncOffset = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 4
  %31 = ptrtoint ptr %usH_SyncOffset to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %usH_SyncOffset, align 2
  %h_sync_width = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 6
  %32 = ptrtoint ptr %h_sync_width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %h_sync_width, align 4
  %conv10 = trunc i32 %33 to i16
  %34 = call i16 @llvm.bswap.i16(i16 %conv10)
  %usH_SyncWidth = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 5
  %35 = ptrtoint ptr %usH_SyncWidth to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %usH_SyncWidth, align 2
  %v_sync_start = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 11
  %36 = ptrtoint ptr %v_sync_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %v_sync_start, align 4
  %sub12 = sub i32 %37, %21
  %conv13 = trunc i32 %sub12 to i16
  %38 = call i16 @llvm.bswap.i16(i16 %conv13)
  %usV_SyncOffset = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 6
  %39 = ptrtoint ptr %usV_SyncOffset to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %usV_SyncOffset, align 2
  %v_sync_width = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 12
  %40 = ptrtoint ptr %v_sync_width to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %v_sync_width, align 4
  %conv14 = trunc i32 %41 to i16
  %42 = call i16 @llvm.bswap.i16(i16 %conv14)
  %usV_SyncWidth = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 7
  %43 = ptrtoint ptr %usV_SyncWidth to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %usV_SyncWidth, align 2
  %flags = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 13
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %flags, align 4
  %45 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp = icmp eq i8 %45, 0
  br i1 %cmp, label %if.then16, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %susModeMiscInfo = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 8
  %46 = ptrtoint ptr %susModeMiscInfo to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %susModeMiscInfo, align 2
  %48 = or i16 %47, 512
  store i16 %48, ptr %susModeMiscInfo, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end.if.end20_crit_edge
  %49 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp26 = icmp eq i8 %49, 0
  br i1 %cmp26, label %if.then28, label %if.end20.if.end34_crit_edge

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %susModeMiscInfo29 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 8
  %50 = ptrtoint ptr %susModeMiscInfo29 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %susModeMiscInfo29, align 2
  %52 = or i16 %51, 1024
  store i16 %52, ptr %susModeMiscInfo29, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end20.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end34.if.end46_crit_edge, label %if.then39

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %susModeMiscInfo40 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 8
  %53 = ptrtoint ptr %susModeMiscInfo40 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %susModeMiscInfo40, align 2
  %55 = or i16 %54, -32768
  store i16 %55, ptr %susModeMiscInfo40, align 2
  %add.i = add i16 %conv13, 1
  %56 = call i16 @llvm.bswap.i16(i16 %add.i) #4
  %57 = ptrtoint ptr %usV_SyncOffset to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %usV_SyncOffset, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.end34.if.end46_crit_edge
  %bf.clear49 = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear49)
  %tobool51.not = icmp eq i8 %bf.clear49, 0
  br i1 %tobool51.not, label %if.end46.if.end58_crit_edge, label %if.then52

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %susModeMiscInfo53 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %params, i32 0, i32 8
  %58 = ptrtoint ptr %susModeMiscInfo53 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %susModeMiscInfo53, align 2
  %60 = or i16 %59, 1
  store i16 %60, ptr %susModeMiscInfo53, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %if.end46.if.end58_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %61 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %64, i32 0, i32 79
  %65 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mode_info, align 8
  %call59 = call i32 @amdgpu_atom_execute_table(ptr noundef %66, i32 noundef 49, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp eq i32 %call59, 0
  %spec.select = select i1 %cmp60, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %atom_controller_id) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_crtc_timing_v1(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params) #0 align 64 {
entry:
  %params = alloca %struct._SET_CRTC_TIMING_PARAMETERS, align 2
  %atom_controller_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #4
  %0 = call ptr @memset(ptr %params, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %atom_controller_id) #4
  %1 = ptrtoint ptr %atom_controller_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %atom_controller_id, align 1, !annotation !48
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_helper, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bp_params, align 4
  %call = call zeroext i1 %5(i32 noundef %7, ptr noundef nonnull %atom_controller_id) #4
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %atom_controller_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %atom_controller_id, align 1
  %ucCRTC = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 9
  %10 = ptrtoint ptr %ucCRTC to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ucCRTC, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %h_total = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 1
  %11 = ptrtoint ptr %h_total to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %h_total, align 4
  %conv = trunc i32 %12 to i16
  %13 = call i16 @llvm.bswap.i16(i16 %conv)
  %14 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %params, align 2
  %h_addressable = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 2
  %15 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_addressable, align 4
  %conv1 = trunc i32 %16 to i16
  %17 = call i16 @llvm.bswap.i16(i16 %conv1)
  %usH_Disp = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 1
  %18 = ptrtoint ptr %usH_Disp to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %usH_Disp, align 2
  %h_sync_start = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 5
  %19 = ptrtoint ptr %h_sync_start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %h_sync_start, align 4
  %conv2 = trunc i32 %20 to i16
  %21 = call i16 @llvm.bswap.i16(i16 %conv2)
  %usH_SyncStart = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 2
  %22 = ptrtoint ptr %usH_SyncStart to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %usH_SyncStart, align 2
  %h_sync_width = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 6
  %23 = ptrtoint ptr %h_sync_width to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %h_sync_width, align 4
  %conv3 = trunc i32 %24 to i16
  %25 = call i16 @llvm.bswap.i16(i16 %conv3)
  %usH_SyncWidth = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 3
  %26 = ptrtoint ptr %usH_SyncWidth to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %usH_SyncWidth, align 2
  %v_total = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 7
  %27 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %v_total, align 4
  %conv4 = trunc i32 %28 to i16
  %29 = call i16 @llvm.bswap.i16(i16 %conv4)
  %usV_Total = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 4
  %30 = ptrtoint ptr %usV_Total to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %usV_Total, align 2
  %v_addressable = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 8
  %31 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %v_addressable, align 4
  %conv5 = trunc i32 %32 to i16
  %33 = call i16 @llvm.bswap.i16(i16 %conv5)
  %usV_Disp = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 5
  %34 = ptrtoint ptr %usV_Disp to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %usV_Disp, align 2
  %v_sync_start = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 11
  %35 = ptrtoint ptr %v_sync_start to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %v_sync_start, align 4
  %conv6 = trunc i32 %36 to i16
  %37 = call i16 @llvm.bswap.i16(i16 %conv6)
  %usV_SyncStart = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 6
  %38 = ptrtoint ptr %usV_SyncStart to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %usV_SyncStart, align 2
  %v_sync_width = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 12
  %39 = ptrtoint ptr %v_sync_width to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %v_sync_width, align 4
  %conv7 = trunc i32 %40 to i16
  %41 = call i16 @llvm.bswap.i16(i16 %conv7)
  %usV_SyncWidth = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 7
  %42 = ptrtoint ptr %usV_SyncWidth to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %usV_SyncWidth, align 2
  %h_overscan_right = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 4
  %43 = ptrtoint ptr %h_overscan_right to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %h_overscan_right, align 4
  %conv8 = trunc i32 %44 to i8
  %ucOverscanRight = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 10
  %45 = ptrtoint ptr %ucOverscanRight to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv8, ptr %ucOverscanRight, align 1
  %h_overscan_left = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 3
  %46 = ptrtoint ptr %h_overscan_left to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %h_overscan_left, align 4
  %conv9 = trunc i32 %47 to i8
  %ucOverscanLeft = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 11
  %48 = ptrtoint ptr %ucOverscanLeft to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv9, ptr %ucOverscanLeft, align 2
  %v_overscan_bottom = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 10
  %49 = ptrtoint ptr %v_overscan_bottom to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %v_overscan_bottom, align 4
  %conv10 = trunc i32 %50 to i8
  %ucOverscanBottom = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 12
  %51 = ptrtoint ptr %ucOverscanBottom to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv10, ptr %ucOverscanBottom, align 1
  %v_overscan_top = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 9
  %52 = ptrtoint ptr %v_overscan_top to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %v_overscan_top, align 4
  %conv11 = trunc i32 %53 to i8
  %ucOverscanTop = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 13
  %54 = ptrtoint ptr %ucOverscanTop to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv11, ptr %ucOverscanTop, align 2
  %flags = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 13
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %flags, align 4
  %56 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp = icmp eq i8 %56, 0
  br i1 %cmp, label %if.then13, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %susModeMiscInfo = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 8
  %57 = ptrtoint ptr %susModeMiscInfo to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %susModeMiscInfo, align 2
  %59 = or i16 %58, 512
  store i16 %59, ptr %susModeMiscInfo, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end.if.end17_crit_edge
  %60 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp23 = icmp eq i8 %60, 0
  br i1 %cmp23, label %if.then25, label %if.end17.if.end31_crit_edge

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %susModeMiscInfo26 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 8
  %61 = ptrtoint ptr %susModeMiscInfo26 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %susModeMiscInfo26, align 2
  %63 = or i16 %62, 1024
  store i16 %63, ptr %susModeMiscInfo26, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.end17.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end31.if.end45_crit_edge, label %if.then36

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %susModeMiscInfo37 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 8
  %64 = ptrtoint ptr %susModeMiscInfo37 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %susModeMiscInfo37, align 2
  %66 = or i16 %65, -32768
  store i16 %66, ptr %susModeMiscInfo37, align 2
  %conv43 = add i16 %conv6, 1
  %67 = call i16 @llvm.bswap.i16(i16 %conv43)
  %68 = ptrtoint ptr %usV_SyncStart to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %usV_SyncStart, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %if.end31.if.end45_crit_edge
  %bf.clear48 = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear48)
  %tobool50.not = icmp eq i8 %bf.clear48, 0
  br i1 %tobool50.not, label %if.end45.if.end57_crit_edge, label %if.then51

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %susModeMiscInfo52 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %params, i32 0, i32 8
  %69 = ptrtoint ptr %susModeMiscInfo52 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %susModeMiscInfo52, align 2
  %71 = or i16 %70, 1
  store i16 %71, ptr %susModeMiscInfo52, align 2
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end45.if.end57_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %72 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %75, i32 0, i32 79
  %76 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mode_info, align 8
  %call58 = call i32 @amdgpu_atom_execute_table(ptr noundef %77, i32 noundef 39, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp eq i32 %call58, 0
  %spec.select = select i1 %cmp59, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %atom_controller_id) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_crtc_v1(ptr nocapture noundef readonly %bp, i32 noundef %controller_id, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %params = alloca %struct._ENABLE_CRTC_PARAMETERS, align 4
  %id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %params) #4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %params, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #4
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %id, align 1, !annotation !48
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_helper, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = call zeroext i1 %5(i32 noundef %controller_id, ptr noundef nonnull %id) #4
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 1
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %params, align 4
  %spec.select12 = zext i1 %enable to i8
  %9 = getelementptr inbounds %struct._ENABLE_CRTC_PARAMETERS, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select12, ptr %9, align 1
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 79
  %15 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mode_info, align 8
  %call5 = call i32 @amdgpu_atom_execute_table(ptr noundef %16, i32 noundef 35, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp ne i32 %call5, 0
  %spec.select = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_crtc_mem_req_v1(ptr nocapture noundef readonly %bp, i32 noundef %controller_id, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %params = alloca %struct._ENABLE_CRTC_PARAMETERS, align 4
  %id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %params) #4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %params, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #4
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %id, align 1, !annotation !48
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_helper, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = call zeroext i1 %5(i32 noundef %controller_id, ptr noundef nonnull %id) #4
  br i1 %call, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 1
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %params, align 4
  %spec.select = zext i1 %enable to i8
  %9 = getelementptr inbounds %struct._ENABLE_CRTC_PARAMETERS, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %9, align 1
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 79
  %15 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mode_info, align 8
  %call3 = call i32 @amdgpu_atom_execute_table(ptr noundef %16, i32 noundef 6, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp ne i32 %call3, 0
  %. = zext i1 %cmp to i32
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %result.0.off0 = phi i32 [ 1, %entry.if.end7_crit_edge ], [ %., %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %params) #4
  ret i32 %result.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @program_clock_v5(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params) #0 align 64 {
entry:
  %params = alloca %struct._SET_PIXEL_CLOCK_PS_ALLOCATION_V5, align 1
  %atom_pll_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %params, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %atom_pll_id) #4
  %1 = ptrtoint ptr %atom_pll_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %atom_pll_id, align 4, !annotation !48
  %2 = call ptr @memset(ptr %params, i32 0, i32 24)
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %3 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_helper, align 4
  %clock_source_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %clock_source_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clock_source_id_to_atom, align 4
  %pll_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 1
  %7 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll_id, align 4
  %call = call zeroext i1 %6(i32 noundef %8, ptr noundef nonnull %atom_pll_id) #4
  br i1 %call, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.program_clock_v5, i32 noundef 2123) #4
  call void @kgdb_breakpoint() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %params, i32 0, i32 6
  %10 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %atom_pll_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %atom_pll_id, align 4
  %conv = trunc i32 %12 to i8
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %9, align 1
  %target_pixel_clock_100hz = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 3
  %14 = ptrtoint ptr %target_pixel_clock_100hz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target_pixel_clock_100hz, align 4
  %div = udiv i32 %15, 100
  %conv1 = trunc i32 %div to i16
  %16 = call i16 @llvm.bswap.i16(i16 %conv1)
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %10, align 1
  %18 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %params, align 1
  %flags = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 11
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %flags, align 4
  %20 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %0, align 1
  %23 = or i8 %22, 16
  store i8 %23, ptr %0, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %27, i32 0, i32 79
  %28 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mode_info, align 8
  %call9 = call i32 @amdgpu_atom_execute_table(ptr noundef %29, i32 noundef 12, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp eq i32 %call9, 0
  %spec.select = select i1 %cmp, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.body
  %retval.0 = phi i32 [ %spec.select, %if.end8 ], [ 1, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atom_pll_id) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @program_clock_v6(ptr nocapture noundef readonly %bp, ptr nocapture noundef %bp_params) #0 align 64 {
entry:
  %params = alloca %struct._SET_PIXEL_CLOCK_PS_ALLOCATION_V6, align 4
  %atom_pll_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V6, ptr %params, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %atom_pll_id) #4
  %1 = ptrtoint ptr %atom_pll_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %atom_pll_id, align 4, !annotation !48
  %2 = call ptr @memset(ptr %params, i32 0, i32 24)
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %3 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_helper, align 4
  %clock_source_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %clock_source_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clock_source_id_to_atom, align 4
  %pll_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 1
  %7 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll_id, align 4
  %call = call zeroext i1 %6(i32 noundef %8, ptr noundef nonnull %atom_pll_id) #4
  br i1 %call, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.program_clock_v6, i32 noundef 2155) #4
  call void @kgdb_breakpoint() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V6, ptr %params, i32 0, i32 4
  %10 = ptrtoint ptr %atom_pll_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %atom_pll_id, align 4
  %conv = trunc i32 %11 to i8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %9, align 4
  %target_pixel_clock_100hz = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 3
  %13 = ptrtoint ptr %target_pixel_clock_100hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %target_pixel_clock_100hz, align 4
  %div = udiv i32 %14, 100
  %15 = call i32 @llvm.bswap.i32(i32 %div)
  %16 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %params, align 4
  %flags = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 11
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %flags, align 4
  %18 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %0, align 1
  %21 = or i8 %20, 16
  store i8 %21, ptr %0, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %22 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not = icmp eq i8 %22, 0
  br i1 %tobool12.not, label %if.end6.if.end19_crit_edge, label %if.then13

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %0, align 1
  %25 = or i8 %24, 64
  store i8 %25, ptr %0, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end6.if.end19_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %29, i32 0, i32 79
  %30 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mode_info, align 8
  %call20 = call i32 @amdgpu_atom_execute_table(ptr noundef %31, i32 noundef 12, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp eq i32 %call20, 0
  br i1 %cmp, label %if.then22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %params, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %mul = mul i32 %34, 10
  %dfs_bypass_display_clock = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 9
  %35 = ptrtoint ptr %dfs_bypass_display_clock to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %dfs_bypass_display_clock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end19.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %if.then22 ], [ 5, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atom_pll_id) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @external_encoder_control_v3(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %params = alloca %struct._EXTERNAL_ENCODER_CONTROL_PS_ALLOCATION_V3, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 3
  %3 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 4
  %4 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %params, i32 0, i32 5
  %5 = call ptr @memset(ptr %params, i32 0, i32 16)
  %encoder_id = getelementptr inbounds %struct.bp_external_encoder_control, ptr %cntl, i32 0, i32 7
  %6 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %encoder.sroa.0.0.copyload = load i32, ptr %encoder_id, align 4
  %7 = and i32 %encoder.sroa.0.0.copyload, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %7)
  %cmp.i = icmp eq i32 %7, 131072
  %bf.lshr2.i = lshr i32 %encoder.sroa.0.0.copyload, 24
  %bf.lshr2.i.op = add nsw i32 %bf.lshr2.i, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.lshr2.i.op)
  %switch67 = icmp ult i32 %bf.lshr2.i.op, 2
  %switch = select i1 %cmp.i, i1 %switch67, i1 false
  br i1 %switch, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  %8 = lshr i32 %encoder.sroa.0.0.copyload, 16
  %9 = trunc i32 %8 to i8
  %10 = add i8 %9, -16
  %conv = and i8 %10, -16
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %0, align 2
  %12 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cntl, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %13, label %sw.bb.sw.epilog31_crit_edge [
    i32 7, label %sw.bb1
    i32 15, label %sw.bb5
    i32 1, label %sw.bb17
  ]

sw.bb.sw.epilog31_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog31

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.external_encoder_control_v3, i32 noundef 2233) #4
  tail call void @kgdb_breakpoint() #4
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %connector_obj_id = getelementptr inbounds %struct.bp_external_encoder_control, ptr %cntl, i32 0, i32 8
  %15 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load2 = load i32, ptr %connector_obj_id, align 4
  %sh.diff = lshr i32 %bf.load2, 16
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %16 = and i16 %tr.sh.diff, -256
  %17 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %params, align 2
  br label %sw.epilog31

sw.bb5:                                           ; preds = %sw.bb
  %pixel_clock = getelementptr inbounds %struct.bp_external_encoder_control, ptr %cntl, i32 0, i32 9
  %18 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %19, 10
  %conv6 = trunc i32 %div to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %21 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %params, align 2
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %22 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd_helper, align 4
  %encoder_mode_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %encoder_mode_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %encoder_mode_bp_to_atom, align 4
  %signal = getelementptr inbounds %struct.bp_external_encoder_control, ptr %cntl, i32 0, i32 4
  %26 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %signal, align 4
  %call7 = tail call i32 %25(i32 noundef %27, i1 noundef zeroext false) #4
  %conv8 = trunc i32 %call7 to i8
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv8, ptr %2, align 2
  %link_rate = getelementptr inbounds %struct.bp_external_encoder_control, ptr %cntl, i32 0, i32 2
  %29 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %link_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %30)
  %cmp = icmp eq i32 %30, 10
  br i1 %cmp, label %if.then10, label %sw.bb5.if.end_crit_edge

sw.bb5.if.end_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then10:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %0, align 2
  %33 = or i8 %32, 1
  store i8 %33, ptr %0, align 2
  br label %if.end

if.end:                                           ; preds = %if.then10, %sw.bb5.if.end_crit_edge
  %color_depth = getelementptr inbounds %struct.bp_external_encoder_control, ptr %cntl, i32 0, i32 5
  %34 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %color_depth, align 4
  %conv14 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv14, ptr %4, align 2
  %lanes_number = getelementptr inbounds %struct.bp_external_encoder_control, ptr %cntl, i32 0, i32 3
  %37 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lanes_number, align 4
  %conv16 = trunc i32 %38 to i8
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv16, ptr %3, align 1
  br label %sw.epilog31

sw.bb17:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %pixel_clock18 = getelementptr inbounds %struct.bp_external_encoder_control, ptr %cntl, i32 0, i32 9
  %40 = ptrtoint ptr %pixel_clock18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pixel_clock18, align 4
  %div19 = udiv i32 %41, 10
  %conv20 = trunc i32 %div19 to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %43 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %params, align 2
  %cmd_helper21 = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %44 = ptrtoint ptr %cmd_helper21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmd_helper21, align 4
  %encoder_mode_bp_to_atom22 = getelementptr inbounds %struct.command_table_helper, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %encoder_mode_bp_to_atom22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %encoder_mode_bp_to_atom22, align 4
  %signal23 = getelementptr inbounds %struct.bp_external_encoder_control, ptr %cntl, i32 0, i32 4
  %48 = ptrtoint ptr %signal23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %signal23, align 4
  %call24 = tail call i32 %47(i32 noundef %49, i1 noundef zeroext false) #4
  %conv25 = trunc i32 %call24 to i8
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv25, ptr %2, align 2
  %lanes_number27 = getelementptr inbounds %struct.bp_external_encoder_control, ptr %cntl, i32 0, i32 3
  %51 = ptrtoint ptr %lanes_number27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lanes_number27, align 4
  %conv28 = trunc i32 %52 to i8
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv28, ptr %3, align 1
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %sw.bb17, %if.end, %sw.bb1, %sw.bb.sw.epilog31_crit_edge
  %54 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cntl, align 4
  %conv33 = trunc i32 %55 to i8
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv33, ptr %1, align 1
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %57 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %60, i32 0, i32 79
  %61 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mode_info, align 8
  %call34 = call i32 @amdgpu_atom_execute_table(ptr noundef %62, i32 noundef 50, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  %spec.select = select i1 %cmp35, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog31, %do.body
  %retval.0 = phi i32 [ 1, %do.body ], [ %spec.select, %sw.epilog31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_disp_power_gating_v2_1(ptr nocapture noundef readonly %bp, i32 noundef %crtc_id, i32 noundef %action) #0 align 64 {
entry:
  %params = alloca %struct._ENABLE_DISP_POWER_GATING_PS_ALLOCATION, align 1
  %atom_crtc_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #4
  %0 = getelementptr inbounds i8, ptr %params, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 18)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %atom_crtc_id) #4
  %2 = ptrtoint ptr %atom_crtc_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %atom_crtc_id, align 1, !annotation !48
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %3 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_helper, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = call zeroext i1 %6(i32 noundef %crtc_id, ptr noundef nonnull %atom_crtc_id) #4
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %atom_crtc_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %atom_crtc_id, align 1
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %params, align 1
  %10 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd_helper, align 4
  %disp_power_gating_action_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %disp_power_gating_action_to_atom to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disp_power_gating_action_to_atom, align 4
  %call2 = call zeroext i8 %13(i32 noundef %action) #4
  %ucEnable = getelementptr inbounds %struct._ENABLE_DISP_POWER_GATING_PS_ALLOCATION, ptr %params, i32 0, i32 1
  %14 = ptrtoint ptr %ucEnable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call2, ptr %ucEnable, align 1
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %18, i32 0, i32 79
  %19 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mode_info, align 8
  %call3 = call i32 @amdgpu_atom_execute_table(ptr noundef %20, i32 noundef 13, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  %spec.select = select i1 %cmp, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %atom_crtc_id) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_dce_clock_v2_1(ptr nocapture noundef readonly %bp, ptr nocapture noundef %bp_params) #0 align 64 {
entry:
  %params = alloca %struct._SET_DCE_CLOCK_PS_ALLOCATION_V2_1, align 4
  %atom_pll_id = alloca i32, align 4
  %atom_clock_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct._SET_DCE_CLOCK_PARAMETERS_V2_1, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct._SET_DCE_CLOCK_PARAMETERS_V2_1, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct._SET_DCE_CLOCK_PARAMETERS_V2_1, ptr %params, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %atom_pll_id) #4
  %3 = ptrtoint ptr %atom_pll_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %atom_pll_id, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %atom_clock_type) #4
  %4 = ptrtoint ptr %atom_clock_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %atom_clock_type, align 4, !annotation !48
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %5 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_helper, align 4
  %7 = call ptr @memset(ptr %params, i32 0, i32 16)
  %clock_source_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %6, i32 0, i32 5
  %8 = ptrtoint ptr %clock_source_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock_source_id_to_atom, align 4
  %10 = ptrtoint ptr %bp_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bp_params, align 4
  %call = call zeroext i1 %9(i32 noundef %11, ptr noundef nonnull %atom_pll_id) #4
  br i1 %call, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dc_clock_type_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %6, i32 0, i32 15
  %12 = ptrtoint ptr %dc_clock_type_to_atom to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dc_clock_type_to_atom, align 4
  %clock_type = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %bp_params, i32 0, i32 2
  %14 = ptrtoint ptr %clock_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clock_type, align 4
  %call1 = call zeroext i1 %13(i32 noundef %15, ptr noundef nonnull %atom_clock_type) #4
  br i1 %call1, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %atom_pll_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %atom_pll_id, align 4
  %conv = trunc i32 %17 to i8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %1, align 1
  %19 = ptrtoint ptr %atom_clock_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %atom_clock_type, align 4
  %conv2 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv2, ptr %0, align 4
  %22 = ptrtoint ptr %clock_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clock_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %bp_params, i32 0, i32 3
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %flags, align 4
  %25 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.then6.if.end11_crit_edge, label %if.then7

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then7:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 2
  %28 = or i8 %27, 1
  store i8 %28, ptr %2, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then6.if.end11_crit_edge
  %29 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool17.not = icmp eq i8 %29, 0
  br i1 %tobool17.not, label %if.end11.if.end24_crit_edge, label %if.then18

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 2
  %32 = or i8 %31, 2
  store i8 %32, ptr %2, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end11.if.end24_crit_edge
  %33 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool30.not = icmp eq i8 %33, 0
  br i1 %tobool30.not, label %if.end24.if.end51_crit_edge, label %if.then31

if.end24.if.end51_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %2, align 2
  %36 = or i8 %35, 3
  store i8 %36, ptr %2, align 2
  br label %if.end51

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %target_clock_frequency = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %bp_params, i32 0, i32 1
  %37 = ptrtoint ptr %target_clock_frequency to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %target_clock_frequency, align 4
  %div = udiv i32 %38, 10
  %39 = call i32 @llvm.bswap.i32(i32 %div)
  %40 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %params, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then31, %if.end24.if.end51_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %44, i32 0, i32 79
  %45 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mode_info, align 8
  %call52 = call i32 @amdgpu_atom_execute_table(ptr noundef %46, i32 noundef 46, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %params, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %mul = mul i32 %49, 10
  %target_clock_frequency58 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %bp_params, i32 0, i32 1
  %50 = ptrtoint ptr %target_clock_frequency58 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul, ptr %target_clock_frequency58, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end51.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then55 ], [ 5, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atom_clock_type) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atom_pll_id) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 406, i32 3}
!2 = !{ptr @__func__.init_transmitter_control, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 424, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 966, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 1311, i32 3}
!9 = !{ptr @__func__.enable_spread_spectrum_on_ppll_v1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 1354, i32 3}
!11 = !{ptr @__func__.enable_spread_spectrum_on_ppll_v2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 1377, i32 3}
!13 = !{ptr @__func__.enable_spread_spectrum_on_ppll_v3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 1444, i32 3}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 1508, i32 3}
!17 = !{ptr @__func__.adjust_display_pll_v2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 1549, i32 4}
!19 = !{ptr @__func__.adjust_display_pll_v3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 1599, i32 4}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 1804, i32 4}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 1815, i32 4}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 1996, i32 3}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 2104, i32 3}
!29 = !{ptr @__func__.program_clock_v5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 2123, i32 3}
!31 = !{ptr @__func__.program_clock_v6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 2155, i32 3}
!33 = !{ptr @__func__.external_encoder_control_v3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 2233, i32 3}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 2330, i32 3}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table.c", i32 2379, i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i8 0, i8 2}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2148843019, i64 2148843299, i64 2148843633, i64 2148843967}
