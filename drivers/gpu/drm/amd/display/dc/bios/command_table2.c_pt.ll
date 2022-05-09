; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/bios/command_table2.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.171, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.153, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.163, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.153 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.163 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.73 }
%union.anon.73 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.74 }
%union.anon.74 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.170], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.170 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.167] }
%struct.anon.167 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.171 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.182, i32, i32, i32, i32 }
%union.anon.182 = type { %struct.anon.184 }
%struct.anon.184 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.bios_parser = type { %struct.dc_bios, %struct.object_info_table, i32, ptr, ptr, ptr, %struct.cmd_tbl, i8 }
%struct.object_info_table = type { %struct.atom_data_revision, %union.anon.71 }
%struct.atom_data_revision = type { i32, i32 }
%union.anon.71 = type { ptr }
%struct.cmd_tbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.dmub_rb_cmd = type { %struct.dmub_rb_cmd_common }
%struct.dmub_rb_cmd_common = type { %struct.dmub_cmd_header, [60 x i8] }
%struct.dmub_cmd_header = type { i32 }
%struct.dig_encoder_stream_setup_parameters_v1_5 = type { i8, i8, i8, i8, i32, i8, i8, [2 x i8] }
%struct.bp_encoder_control = type { i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.command_table_helper = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.3 }
%struct.anon.3 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.4, %struct.anon.5, %struct.anon.6, i32, i32 }
%struct.anon.4 = type { i8, [3 x i8] }
%struct.anon.5 = type { i32, i32, i32 }
%struct.anon.6 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.10, %struct.anon.11, i8, i8, i64 }
%struct.anon.10 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.11 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.61 }
%struct.anon.61 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dmub_rb_cmd_digx_encoder_control = type { %struct.dmub_cmd_header, %struct.dmub_cmd_digx_encoder_control_data }
%struct.dmub_cmd_digx_encoder_control_data = type { %union.dig_encoder_control_parameters_v1_5 }
%union.dig_encoder_control_parameters_v1_5 = type { %struct.dig_encoder_generic_cmd_parameters_v1_5 }
%struct.dig_encoder_generic_cmd_parameters_v1_5 = type { i8, i8, [2 x i8], [2 x i32] }
%struct.dig_transmitter_control_ps_allocation_v1_6 = type { %struct.dig_transmitter_control_parameters_v1_6, [4 x i32] }
%struct.dig_transmitter_control_parameters_v1_6 = type { i8, i8, %union.anon.64, i8, i32, i8, i8, i8, i8, i32 }
%union.anon.64 = type { i8 }
%struct.bp_transmitter_control = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.graphics_object_id, i32, i32, i32, i8, i8, i8 }
%struct.graphics_object_id = type { i32 }
%struct.dmub_rb_cmd_dig1_transmitter_control = type { %struct.dmub_cmd_header, %union.dmub_cmd_dig1_transmitter_control_data }
%union.dmub_cmd_dig1_transmitter_control_data = type { %struct.dmub_dig_transmitter_control_data_v1_7 }
%struct.dmub_dig_transmitter_control_data_v1_7 = type { i8, i8, %union.anon.65, i8, %union.anon.66, i8, i8, i8, i8, i8, [3 x i8], [11 x i32] }
%union.anon.65 = type { i8 }
%union.anon.66 = type { i32 }
%struct.set_pixel_clock_parameter_v1_7 = type { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32 }
%struct.bp_pixel_clock_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.graphics_object_id, i32, i32, %struct.program_pixel_clock_flags }
%struct.program_pixel_clock_flags = type { i8, [3 x i8] }
%struct.dmub_rb_cmd_set_pixel_clock = type { %struct.dmub_cmd_header, %struct.dmub_cmd_set_pixel_clock_data }
%struct.dmub_cmd_set_pixel_clock_data = type { %struct.set_pixel_clock_parameter_v1_7 }
%struct.set_crtc_using_dtd_timing_parameters = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [2 x i8] }
%struct.bp_hw_crtc_timing_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timing_flags }
%struct.timing_flags = type { i8, [3 x i8] }
%struct.enable_crtc_parameters = type { i8, i8, [2 x i8] }
%struct.enable_disp_power_gating_ps_allocation = type { %struct.enable_disp_power_gating_parameters_v2_1, [4 x i32] }
%struct.enable_disp_power_gating_parameters_v2_1 = type { i8, i8, [2 x i8] }
%struct.dmub_rb_cmd_enable_disp_power_gating = type { %struct.dmub_cmd_header, %struct.dmub_cmd_enable_disp_power_gating_data }
%struct.dmub_cmd_enable_disp_power_gating_data = type { %struct.enable_disp_power_gating_parameters_v2_1 }
%struct.set_dce_clock_ps_allocation_v2_1 = type { %struct.set_dce_clock_parameters_v2_1, [2 x i32] }
%struct.set_dce_clock_parameters_v2_1 = type { i32, i8, i8, i8, i8 }
%struct.bp_set_dce_clock_parameters = type { i32, i32, i32, %struct.set_dce_clock_flags }
%struct.set_dce_clock_flags = type { i8, [3 x i8] }
%struct.atom_get_smu_clock_info_parameters_v3_1 = type { i8, i8, i8, i8 }
%struct.dmub_rb_cmd_lvtma_control = type { %struct.dmub_cmd_header, %struct.dmub_cmd_lvtma_control_data }
%struct.dmub_cmd_lvtma_control_data = type { i8, [3 x i8], i8, [3 x i8] }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Don't have dig_encoder_control for v%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Don't have transmitter_control for v%d\0A\00", [56 x i8] zeroinitializer }, align 32
@transmitter_control_v1_6.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"transmitter_control_v1_6\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BIOS]:%s:ps.param.symclk_10khz = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: [BIOS]:%s:ps.param.symclk_10khz = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@transmitter_control_v1_7.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.4, ptr @.str.8, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"transmitter_control_v1_7\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BIOS]:%s:dig_v1_7.symclk_units.symclk_10khz = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"amdgpu: [BIOS]:%s:dig_v1_7.symclk_units.symclk_10khz = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Don't have set_pixel_clock for v%d\0A\00", [60 x i8] zeroinitializer }, align 32
@set_pixel_clock_v7.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_pixel_clock_v7\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"[BIOS]:%s:program display clock = %d, tg = %d, pll = %d, colorDepth = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"amdgpu: [BIOS]:%s:program display clock = %d, tg = %d, pll = %d, colorDepth = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Don't have set_crtc_timing for v%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Don't have enable_crtc for v%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Don't enable_disp_power_gating enable_crtc for v%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Don't have set_dce_clock for v%d\0A\00", [62 x i8] zeroinitializer }, align 32
@set_dce_clock_v2_1.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_dce_clock_v2_1\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BIOS]:%s:target_clock_frequency = %dclock_type = %d \0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"amdgpu: [BIOS]:%s:target_clock_frequency = %dclock_type = %d \0A\00", [33 x i8] zeroinitializer }, align 32
@switch.table.encoder_control_digx_v1_5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\03\04\02\05", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 7]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 9]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 9]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 104, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 242, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 296, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 369, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 420, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 498, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 568, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 685, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 788, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 880, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [66 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 931, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [39 x i8] c"switch.table.encoder_control_digx_v1_5\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @switch.table.encoder_control_digx_v1_5], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.encoder_control_digx_v1_5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_firmware_parser_init_cmd_tbl(ptr nocapture noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %frev.i10.i85 = alloca i8, align 1
  %crev.i11.i86 = alloca i8, align 1
  %frev.i.i87 = alloca i8, align 1
  %crev.i.i88 = alloca i8, align 1
  %frev.i10.i66 = alloca i8, align 1
  %crev.i11.i67 = alloca i8, align 1
  %frev.i.i68 = alloca i8, align 1
  %crev.i.i69 = alloca i8, align 1
  %frev.i.i55 = alloca i8, align 1
  %crev.i.i56 = alloca i8, align 1
  %frev.i10.i35 = alloca i8, align 1
  %crev.i11.i36 = alloca i8, align 1
  %frev.i.i37 = alloca i8, align 1
  %crev.i.i38 = alloca i8, align 1
  %frev.i.i23 = alloca i8, align 1
  %crev.i.i24 = alloca i8, align 1
  %frev.i10.i = alloca i8, align 1
  %crev.i11.i = alloca i8, align 1
  %frev.i.i13 = alloca i8, align 1
  %crev.i.i14 = alloca i8, align 1
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %frev.i.i = alloca i8, align 1
  %crev.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %driver_context.i = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i) #5
  %4 = ptrtoint ptr %frev.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %frev.i.i, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i) #5
  %5 = ptrtoint ptr %crev.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %crev.i.i, align 1, !annotation !45
  %mode_info.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 79
  %6 = ptrtoint ptr %mode_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info.i.i, align 8
  %call.i.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %7, i32 noundef 4, ptr noundef nonnull %frev.i.i, ptr noundef nonnull %crev.i.i) #5
  br i1 %call.i.i, label %bios_cmd_table_para_revision.exit.i, label %bios_cmd_table_para_revision.exit.thread.i

bios_cmd_table_para_revision.exit.thread.i:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i) #5
  br label %sw.default.i

bios_cmd_table_para_revision.exit.i:              ; preds = %entry
  %8 = ptrtoint ptr %crev.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crev.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cond.i = icmp eq i8 %9, 5
  br i1 %cond.i, label %bios_cmd_table_para_revision.exit.i.init_dig_encoder_control.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i.sw.default.i_crit_edge

bios_cmd_table_para_revision.exit.i.sw.default.i_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

bios_cmd_table_para_revision.exit.i.init_dig_encoder_control.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_dig_encoder_control.exit

sw.default.i:                                     ; preds = %bios_cmd_table_para_revision.exit.i.sw.default.i_crit_edge, %bios_cmd_table_para_revision.exit.thread.i
  %retval.0.i8.i = phi i32 [ 0, %bios_cmd_table_para_revision.exit.thread.i ], [ %conv.i.i, %bios_cmd_table_para_revision.exit.i.sw.default.i_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %retval.0.i8.i) #5
  br label %init_dig_encoder_control.exit

init_dig_encoder_control.exit:                    ; preds = %sw.default.i, %bios_cmd_table_para_revision.exit.i.init_dig_encoder_control.exit_crit_edge
  %encoder_control_fallback.sink.i = phi ptr [ @encoder_control_fallback, %sw.default.i ], [ @encoder_control_digx_v1_5, %bios_cmd_table_para_revision.exit.i.init_dig_encoder_control.exit_crit_edge ]
  %cmd_tbl1.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6
  %10 = ptrtoint ptr %cmd_tbl1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %encoder_control_fallback.sink.i, ptr %cmd_tbl1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #5
  %11 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %frev.i, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #5
  %12 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %crev.i, align 1, !annotation !45
  %13 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx.i, align 4
  %driver_context.i11 = getelementptr inbounds %struct.dc_context, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %driver_context.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_context.i11, align 4
  %mode_info.i = getelementptr inbounds %struct.amdgpu_device, ptr %16, i32 0, i32 79
  %17 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mode_info.i, align 8
  %call.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %18, i32 noundef 76, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #5
  %19 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %crev.i, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %sw.default.i12 [
    i8 6, label %init_dig_encoder_control.exit.init_transmitter_control.exit_crit_edge
    i8 7, label %sw.bb1.i
  ]

init_dig_encoder_control.exit.init_transmitter_control.exit_crit_edge: ; preds = %init_dig_encoder_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_transmitter_control.exit

sw.bb1.i:                                         ; preds = %init_dig_encoder_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_transmitter_control.exit

sw.default.i12:                                   ; preds = %init_dig_encoder_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %20 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv.i) #5
  br label %init_transmitter_control.exit

init_transmitter_control.exit:                    ; preds = %sw.default.i12, %sw.bb1.i, %init_dig_encoder_control.exit.init_transmitter_control.exit_crit_edge
  %transmitter_control_fallback.sink.i = phi ptr [ @transmitter_control_fallback, %sw.default.i12 ], [ @transmitter_control_v1_7, %sw.bb1.i ], [ @transmitter_control_v1_6, %init_dig_encoder_control.exit.init_transmitter_control.exit_crit_edge ]
  %transmitter_control6.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %transmitter_control6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transmitter_control_fallback.sink.i, ptr %transmitter_control6.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #5
  %23 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx.i, align 4
  %driver_context.i16 = getelementptr inbounds %struct.dc_context, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %driver_context.i16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_context.i16, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i13) #5
  %27 = ptrtoint ptr %frev.i.i13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %frev.i.i13, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i14) #5
  %28 = ptrtoint ptr %crev.i.i14 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %crev.i.i14, align 1, !annotation !45
  %mode_info.i.i17 = getelementptr inbounds %struct.amdgpu_device, ptr %26, i32 0, i32 79
  %29 = ptrtoint ptr %mode_info.i.i17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mode_info.i.i17, align 8
  %call.i.i18 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %30, i32 noundef 12, ptr noundef nonnull %frev.i.i13, ptr noundef nonnull %crev.i.i14) #5
  br i1 %call.i.i18, label %bios_cmd_table_para_revision.exit.i21, label %bios_cmd_table_para_revision.exit.thread.i19

bios_cmd_table_para_revision.exit.thread.i19:     ; preds = %init_transmitter_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i14) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i13) #5
  br label %sw.default.i22

bios_cmd_table_para_revision.exit.i21:            ; preds = %init_transmitter_control.exit
  %31 = ptrtoint ptr %crev.i.i14 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %crev.i.i14, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i14) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i13) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %32)
  %cond.i20 = icmp eq i8 %32, 7
  br i1 %cond.i20, label %bios_cmd_table_para_revision.exit.i21.init_set_pixel_clock.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i21.sw.default.i22_crit_edge

bios_cmd_table_para_revision.exit.i21.sw.default.i22_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i22

bios_cmd_table_para_revision.exit.i21.init_set_pixel_clock.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_set_pixel_clock.exit

sw.default.i22:                                   ; preds = %bios_cmd_table_para_revision.exit.i21.sw.default.i22_crit_edge, %bios_cmd_table_para_revision.exit.thread.i19
  %33 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx.i, align 4
  %driver_context3.i = getelementptr inbounds %struct.dc_context, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %driver_context3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_context3.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i10.i) #5
  %37 = ptrtoint ptr %frev.i10.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %frev.i10.i, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i11.i) #5
  %38 = ptrtoint ptr %crev.i11.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %crev.i11.i, align 1, !annotation !45
  %mode_info.i12.i = getelementptr inbounds %struct.amdgpu_device, ptr %36, i32 0, i32 79
  %39 = ptrtoint ptr %mode_info.i12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mode_info.i12.i, align 8
  %call.i13.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %40, i32 noundef 12, ptr noundef nonnull %frev.i10.i, ptr noundef nonnull %crev.i11.i) #5
  br i1 %call.i13.i, label %if.then.i15.i, label %sw.default.i22.bios_cmd_table_para_revision.exit17.i_crit_edge

sw.default.i22.bios_cmd_table_para_revision.exit17.i_crit_edge: ; preds = %sw.default.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %bios_cmd_table_para_revision.exit17.i

if.then.i15.i:                                    ; preds = %sw.default.i22
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %crev.i11.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %crev.i11.i, align 1
  %conv.i14.i = zext i8 %42 to i32
  br label %bios_cmd_table_para_revision.exit17.i

bios_cmd_table_para_revision.exit17.i:            ; preds = %if.then.i15.i, %sw.default.i22.bios_cmd_table_para_revision.exit17.i_crit_edge
  %retval.0.i16.i = phi i32 [ %conv.i14.i, %if.then.i15.i ], [ 0, %sw.default.i22.bios_cmd_table_para_revision.exit17.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i11.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i10.i) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i16.i) #5
  br label %init_set_pixel_clock.exit

init_set_pixel_clock.exit:                        ; preds = %bios_cmd_table_para_revision.exit17.i, %bios_cmd_table_para_revision.exit.i21.init_set_pixel_clock.exit_crit_edge
  %set_pixel_clock_fallback.sink.i = phi ptr [ @set_pixel_clock_fallback, %bios_cmd_table_para_revision.exit17.i ], [ @set_pixel_clock_v7, %bios_cmd_table_para_revision.exit.i21.init_set_pixel_clock.exit_crit_edge ]
  %set_pixel_clock6.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 4
  %43 = ptrtoint ptr %set_pixel_clock6.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %set_pixel_clock_fallback.sink.i, ptr %set_pixel_clock6.i, align 4
  %44 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx.i, align 4
  %driver_context.i26 = getelementptr inbounds %struct.dc_context, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %driver_context.i26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_context.i26, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i23) #5
  %48 = ptrtoint ptr %frev.i.i23 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %frev.i.i23, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i24) #5
  %49 = ptrtoint ptr %crev.i.i24 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %crev.i.i24, align 1, !annotation !45
  %mode_info.i.i27 = getelementptr inbounds %struct.amdgpu_device, ptr %47, i32 0, i32 79
  %50 = ptrtoint ptr %mode_info.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mode_info.i.i27, align 8
  %call.i.i28 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %51, i32 noundef 49, ptr noundef nonnull %frev.i.i23, ptr noundef nonnull %crev.i.i24) #5
  br i1 %call.i.i28, label %bios_cmd_table_para_revision.exit.i32, label %bios_cmd_table_para_revision.exit.thread.i29

bios_cmd_table_para_revision.exit.thread.i29:     ; preds = %init_set_pixel_clock.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i24) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i23) #5
  br label %sw.default.i34

bios_cmd_table_para_revision.exit.i32:            ; preds = %init_set_pixel_clock.exit
  %52 = ptrtoint ptr %crev.i.i24 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %crev.i.i24, align 1
  %conv.i.i30 = zext i8 %53 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i24) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i23) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %cond.i31 = icmp eq i8 %53, 3
  br i1 %cond.i31, label %bios_cmd_table_para_revision.exit.i32.init_set_crtc_timing.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i32.sw.default.i34_crit_edge

bios_cmd_table_para_revision.exit.i32.sw.default.i34_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i34

bios_cmd_table_para_revision.exit.i32.init_set_crtc_timing.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_set_crtc_timing.exit

sw.default.i34:                                   ; preds = %bios_cmd_table_para_revision.exit.i32.sw.default.i34_crit_edge, %bios_cmd_table_para_revision.exit.thread.i29
  %retval.0.i8.i33 = phi i32 [ 0, %bios_cmd_table_para_revision.exit.thread.i29 ], [ %conv.i.i30, %bios_cmd_table_para_revision.exit.i32.sw.default.i34_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i8.i33) #5
  br label %init_set_crtc_timing.exit

init_set_crtc_timing.exit:                        ; preds = %sw.default.i34, %bios_cmd_table_para_revision.exit.i32.init_set_crtc_timing.exit_crit_edge
  %.sink.i = phi ptr [ null, %sw.default.i34 ], [ @set_crtc_using_dtd_timing_v3, %bios_cmd_table_para_revision.exit.i32.init_set_crtc_timing.exit_crit_edge ]
  %set_crtc_timing2.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 11
  %54 = ptrtoint ptr %set_crtc_timing2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %.sink.i, ptr %set_crtc_timing2.i, align 4
  %55 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx.i, align 4
  %driver_context.i40 = getelementptr inbounds %struct.dc_context, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %driver_context.i40 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_context.i40, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i37) #5
  %59 = ptrtoint ptr %frev.i.i37 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -1, ptr %frev.i.i37, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i38) #5
  %60 = ptrtoint ptr %crev.i.i38 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %crev.i.i38, align 1, !annotation !45
  %mode_info.i.i41 = getelementptr inbounds %struct.amdgpu_device, ptr %58, i32 0, i32 79
  %61 = ptrtoint ptr %mode_info.i.i41 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mode_info.i.i41, align 8
  %call.i.i42 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %62, i32 noundef 35, ptr noundef nonnull %frev.i.i37, ptr noundef nonnull %crev.i.i38) #5
  br i1 %call.i.i42, label %bios_cmd_table_para_revision.exit.i45, label %bios_cmd_table_para_revision.exit.thread.i43

bios_cmd_table_para_revision.exit.thread.i43:     ; preds = %init_set_crtc_timing.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i38) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i37) #5
  br label %sw.default.i49

bios_cmd_table_para_revision.exit.i45:            ; preds = %init_set_crtc_timing.exit
  %63 = ptrtoint ptr %crev.i.i38 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %crev.i.i38, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i38) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i37) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cond.i44 = icmp eq i8 %64, 1
  br i1 %cond.i44, label %bios_cmd_table_para_revision.exit.i45.init_enable_crtc.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i45.sw.default.i49_crit_edge

bios_cmd_table_para_revision.exit.i45.sw.default.i49_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i49

bios_cmd_table_para_revision.exit.i45.init_enable_crtc.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_enable_crtc.exit

sw.default.i49:                                   ; preds = %bios_cmd_table_para_revision.exit.i45.sw.default.i49_crit_edge, %bios_cmd_table_para_revision.exit.thread.i43
  %65 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctx.i, align 4
  %driver_context3.i46 = getelementptr inbounds %struct.dc_context, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %driver_context3.i46 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_context3.i46, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i10.i35) #5
  %69 = ptrtoint ptr %frev.i10.i35 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %frev.i10.i35, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i11.i36) #5
  %70 = ptrtoint ptr %crev.i11.i36 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %crev.i11.i36, align 1, !annotation !45
  %mode_info.i12.i47 = getelementptr inbounds %struct.amdgpu_device, ptr %68, i32 0, i32 79
  %71 = ptrtoint ptr %mode_info.i12.i47 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mode_info.i12.i47, align 8
  %call.i13.i48 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %72, i32 noundef 35, ptr noundef nonnull %frev.i10.i35, ptr noundef nonnull %crev.i11.i36) #5
  br i1 %call.i13.i48, label %if.then.i15.i51, label %sw.default.i49.bios_cmd_table_para_revision.exit17.i53_crit_edge

sw.default.i49.bios_cmd_table_para_revision.exit17.i53_crit_edge: ; preds = %sw.default.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %bios_cmd_table_para_revision.exit17.i53

if.then.i15.i51:                                  ; preds = %sw.default.i49
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %crev.i11.i36 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %crev.i11.i36, align 1
  %conv.i14.i50 = zext i8 %74 to i32
  br label %bios_cmd_table_para_revision.exit17.i53

bios_cmd_table_para_revision.exit17.i53:          ; preds = %if.then.i15.i51, %sw.default.i49.bios_cmd_table_para_revision.exit17.i53_crit_edge
  %retval.0.i16.i52 = phi i32 [ %conv.i14.i50, %if.then.i15.i51 ], [ 0, %sw.default.i49.bios_cmd_table_para_revision.exit17.i53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i11.i36) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i10.i35) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i16.i52) #5
  br label %init_enable_crtc.exit

init_enable_crtc.exit:                            ; preds = %bios_cmd_table_para_revision.exit17.i53, %bios_cmd_table_para_revision.exit.i45.init_enable_crtc.exit_crit_edge
  %.sink.i54 = phi ptr [ null, %bios_cmd_table_para_revision.exit17.i53 ], [ @enable_crtc_v1, %bios_cmd_table_para_revision.exit.i45.init_enable_crtc.exit_crit_edge ]
  %enable_crtc6.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 12
  %75 = ptrtoint ptr %enable_crtc6.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %.sink.i54, ptr %enable_crtc6.i, align 4
  %76 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctx.i, align 4
  %driver_context.i58 = getelementptr inbounds %struct.dc_context, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %driver_context.i58 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %driver_context.i58, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i55) #5
  %80 = ptrtoint ptr %frev.i.i55 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %frev.i.i55, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i56) #5
  %81 = ptrtoint ptr %crev.i.i56 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %crev.i.i56, align 1, !annotation !45
  %mode_info.i.i59 = getelementptr inbounds %struct.amdgpu_device, ptr %79, i32 0, i32 79
  %82 = ptrtoint ptr %mode_info.i.i59 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mode_info.i.i59, align 8
  %call.i.i60 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %83, i32 noundef 50, ptr noundef nonnull %frev.i.i55, ptr noundef nonnull %crev.i.i56) #5
  br i1 %call.i.i60, label %bios_cmd_table_para_revision.exit.i63, label %bios_cmd_table_para_revision.exit.thread.i61

bios_cmd_table_para_revision.exit.thread.i61:     ; preds = %init_enable_crtc.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i56) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i55) #5
  br label %sw.default.i64

bios_cmd_table_para_revision.exit.i63:            ; preds = %init_enable_crtc.exit
  %84 = ptrtoint ptr %crev.i.i56 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %crev.i.i56, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i56) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i55) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %85)
  %cond.i62 = icmp eq i8 %85, 3
  br i1 %cond.i62, label %bios_cmd_table_para_revision.exit.i63.init_external_encoder_control.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i63.sw.default.i64_crit_edge

bios_cmd_table_para_revision.exit.i63.sw.default.i64_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i64

bios_cmd_table_para_revision.exit.i63.init_external_encoder_control.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_external_encoder_control.exit

sw.default.i64:                                   ; preds = %bios_cmd_table_para_revision.exit.i63.sw.default.i64_crit_edge, %bios_cmd_table_para_revision.exit.thread.i61
  br label %init_external_encoder_control.exit

init_external_encoder_control.exit:               ; preds = %sw.default.i64, %bios_cmd_table_para_revision.exit.i63.init_external_encoder_control.exit_crit_edge
  %.sink.i65 = phi ptr [ null, %sw.default.i64 ], [ @external_encoder_control_v3, %bios_cmd_table_para_revision.exit.i63.init_external_encoder_control.exit_crit_edge ]
  %external_encoder_control2.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 15
  %86 = ptrtoint ptr %external_encoder_control2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %.sink.i65, ptr %external_encoder_control2.i, align 4
  %87 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ctx.i, align 4
  %driver_context.i71 = getelementptr inbounds %struct.dc_context, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %driver_context.i71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %driver_context.i71, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i68) #5
  %91 = ptrtoint ptr %frev.i.i68 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -1, ptr %frev.i.i68, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i69) #5
  %92 = ptrtoint ptr %crev.i.i69 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -1, ptr %crev.i.i69, align 1, !annotation !45
  %mode_info.i.i72 = getelementptr inbounds %struct.amdgpu_device, ptr %90, i32 0, i32 79
  %93 = ptrtoint ptr %mode_info.i.i72 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mode_info.i.i72, align 8
  %call.i.i73 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %94, i32 noundef 13, ptr noundef nonnull %frev.i.i68, ptr noundef nonnull %crev.i.i69) #5
  br i1 %call.i.i73, label %bios_cmd_table_para_revision.exit.i76, label %bios_cmd_table_para_revision.exit.thread.i74

bios_cmd_table_para_revision.exit.thread.i74:     ; preds = %init_external_encoder_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i69) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i68) #5
  br label %sw.default.i80

bios_cmd_table_para_revision.exit.i76:            ; preds = %init_external_encoder_control.exit
  %95 = ptrtoint ptr %crev.i.i69 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %crev.i.i69, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i69) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i68) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %96)
  %cond.i75 = icmp eq i8 %96, 1
  br i1 %cond.i75, label %bios_cmd_table_para_revision.exit.i76.init_enable_disp_power_gating.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i76.sw.default.i80_crit_edge

bios_cmd_table_para_revision.exit.i76.sw.default.i80_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i76
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i80

bios_cmd_table_para_revision.exit.i76.init_enable_disp_power_gating.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i76
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_enable_disp_power_gating.exit

sw.default.i80:                                   ; preds = %bios_cmd_table_para_revision.exit.i76.sw.default.i80_crit_edge, %bios_cmd_table_para_revision.exit.thread.i74
  %97 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ctx.i, align 4
  %driver_context3.i77 = getelementptr inbounds %struct.dc_context, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %driver_context3.i77 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %driver_context3.i77, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i10.i66) #5
  %101 = ptrtoint ptr %frev.i10.i66 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %frev.i10.i66, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i11.i67) #5
  %102 = ptrtoint ptr %crev.i11.i67 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -1, ptr %crev.i11.i67, align 1, !annotation !45
  %mode_info.i12.i78 = getelementptr inbounds %struct.amdgpu_device, ptr %100, i32 0, i32 79
  %103 = ptrtoint ptr %mode_info.i12.i78 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mode_info.i12.i78, align 8
  %call.i13.i79 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %104, i32 noundef 13, ptr noundef nonnull %frev.i10.i66, ptr noundef nonnull %crev.i11.i67) #5
  br i1 %call.i13.i79, label %if.then.i15.i82, label %sw.default.i80.bios_cmd_table_para_revision.exit17.i84_crit_edge

sw.default.i80.bios_cmd_table_para_revision.exit17.i84_crit_edge: ; preds = %sw.default.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %bios_cmd_table_para_revision.exit17.i84

if.then.i15.i82:                                  ; preds = %sw.default.i80
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %crev.i11.i67 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %crev.i11.i67, align 1
  %conv.i14.i81 = zext i8 %106 to i32
  br label %bios_cmd_table_para_revision.exit17.i84

bios_cmd_table_para_revision.exit17.i84:          ; preds = %if.then.i15.i82, %sw.default.i80.bios_cmd_table_para_revision.exit17.i84_crit_edge
  %retval.0.i16.i83 = phi i32 [ %conv.i14.i81, %if.then.i15.i82 ], [ 0, %sw.default.i80.bios_cmd_table_para_revision.exit17.i84_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i11.i67) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i10.i66) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i16.i83) #5
  br label %init_enable_disp_power_gating.exit

init_enable_disp_power_gating.exit:               ; preds = %bios_cmd_table_para_revision.exit17.i84, %bios_cmd_table_para_revision.exit.i76.init_enable_disp_power_gating.exit_crit_edge
  %enable_disp_power_gating_fallback.sink.i = phi ptr [ @enable_disp_power_gating_fallback, %bios_cmd_table_para_revision.exit17.i84 ], [ @enable_disp_power_gating_v2_1, %bios_cmd_table_para_revision.exit.i76.init_enable_disp_power_gating.exit_crit_edge ]
  %enable_disp_power_gating6.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 16
  %107 = ptrtoint ptr %enable_disp_power_gating6.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %enable_disp_power_gating_fallback.sink.i, ptr %enable_disp_power_gating6.i, align 4
  %108 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ctx.i, align 4
  %driver_context.i90 = getelementptr inbounds %struct.dc_context, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %driver_context.i90 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %driver_context.i90, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i87) #5
  %112 = ptrtoint ptr %frev.i.i87 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -1, ptr %frev.i.i87, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i88) #5
  %113 = ptrtoint ptr %crev.i.i88 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %crev.i.i88, align 1, !annotation !45
  %mode_info.i.i91 = getelementptr inbounds %struct.amdgpu_device, ptr %111, i32 0, i32 79
  %114 = ptrtoint ptr %mode_info.i.i91 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mode_info.i.i91, align 8
  %call.i.i92 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %115, i32 noundef 46, ptr noundef nonnull %frev.i.i87, ptr noundef nonnull %crev.i.i88) #5
  br i1 %call.i.i92, label %bios_cmd_table_para_revision.exit.i95, label %bios_cmd_table_para_revision.exit.thread.i93

bios_cmd_table_para_revision.exit.thread.i93:     ; preds = %init_enable_disp_power_gating.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i88) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i87) #5
  br label %sw.default.i99

bios_cmd_table_para_revision.exit.i95:            ; preds = %init_enable_disp_power_gating.exit
  %116 = ptrtoint ptr %crev.i.i88 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %crev.i.i88, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i88) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i87) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %117)
  %cond.i94 = icmp eq i8 %117, 1
  br i1 %cond.i94, label %bios_cmd_table_para_revision.exit.i95.init_set_dce_clock.exit_crit_edge, label %bios_cmd_table_para_revision.exit.i95.sw.default.i99_crit_edge

bios_cmd_table_para_revision.exit.i95.sw.default.i99_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i99

bios_cmd_table_para_revision.exit.i95.init_set_dce_clock.exit_crit_edge: ; preds = %bios_cmd_table_para_revision.exit.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_set_dce_clock.exit

sw.default.i99:                                   ; preds = %bios_cmd_table_para_revision.exit.i95.sw.default.i99_crit_edge, %bios_cmd_table_para_revision.exit.thread.i93
  %118 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ctx.i, align 4
  %driver_context3.i96 = getelementptr inbounds %struct.dc_context, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %driver_context3.i96 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %driver_context3.i96, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i10.i85) #5
  %122 = ptrtoint ptr %frev.i10.i85 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -1, ptr %frev.i10.i85, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i11.i86) #5
  %123 = ptrtoint ptr %crev.i11.i86 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -1, ptr %crev.i11.i86, align 1, !annotation !45
  %mode_info.i12.i97 = getelementptr inbounds %struct.amdgpu_device, ptr %121, i32 0, i32 79
  %124 = ptrtoint ptr %mode_info.i12.i97 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mode_info.i12.i97, align 8
  %call.i13.i98 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %125, i32 noundef 46, ptr noundef nonnull %frev.i10.i85, ptr noundef nonnull %crev.i11.i86) #5
  br i1 %call.i13.i98, label %if.then.i15.i101, label %sw.default.i99.bios_cmd_table_para_revision.exit17.i103_crit_edge

sw.default.i99.bios_cmd_table_para_revision.exit17.i103_crit_edge: ; preds = %sw.default.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %bios_cmd_table_para_revision.exit17.i103

if.then.i15.i101:                                 ; preds = %sw.default.i99
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %crev.i11.i86 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %crev.i11.i86, align 1
  %conv.i14.i100 = zext i8 %127 to i32
  br label %bios_cmd_table_para_revision.exit17.i103

bios_cmd_table_para_revision.exit17.i103:         ; preds = %if.then.i15.i101, %sw.default.i99.bios_cmd_table_para_revision.exit17.i103_crit_edge
  %retval.0.i16.i102 = phi i32 [ %conv.i14.i100, %if.then.i15.i101 ], [ 0, %sw.default.i99.bios_cmd_table_para_revision.exit17.i103_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i11.i86) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i10.i85) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i16.i102) #5
  br label %init_set_dce_clock.exit

init_set_dce_clock.exit:                          ; preds = %bios_cmd_table_para_revision.exit17.i103, %bios_cmd_table_para_revision.exit.i95.init_set_dce_clock.exit_crit_edge
  %.sink.i104 = phi ptr [ null, %bios_cmd_table_para_revision.exit17.i103 ], [ @set_dce_clock_v2_1, %bios_cmd_table_para_revision.exit.i95.init_set_dce_clock.exit_crit_edge ]
  %set_dce_clock6.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 17
  %128 = ptrtoint ptr %set_dce_clock6.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %.sink.i104, ptr %set_dce_clock6.i, align 4
  %get_smu_clock_info.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 18
  %129 = ptrtoint ptr %get_smu_clock_info.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @get_smu_clock_info_v3_1, ptr %get_smu_clock_info.i, align 4
  %enable_lvtma_control.i = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 6, i32 19
  %130 = ptrtoint ptr %enable_lvtma_control.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @enable_lvtma_control, ptr %enable_lvtma_control.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encoder_control_digx_v1_5(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %cmd.i = alloca %union.dmub_rb_cmd, align 4
  %params = alloca %struct.dig_encoder_stream_setup_parameters_v1_5, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #5
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
  %call = tail call zeroext i8 %8(i32 noundef %10) #5
  %action1 = getelementptr inbounds %struct.dig_encoder_stream_setup_parameters_v1_5, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %action1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call, ptr %action1, align 1
  %pixel_clock = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 7
  %12 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %13, 10
  %pclk_10khz = getelementptr inbounds %struct.dig_encoder_stream_setup_parameters_v1_5, ptr %params, i32 0, i32 4
  %14 = ptrtoint ptr %pclk_10khz to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %div, ptr %pclk_10khz, align 1
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
  %22 = load i8, ptr %enable_dp_audio, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool = icmp ne i8 %22, 0
  %call3 = tail call i32 %18(i32 noundef %20, i1 noundef zeroext %tobool) #5
  %conv4 = trunc i32 %call3 to i8
  %digmode = getelementptr inbounds %struct.dig_encoder_stream_setup_parameters_v1_5, ptr %params, i32 0, i32 2
  %23 = ptrtoint ptr %digmode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv4, ptr %digmode, align 1
  %lanes_number = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 4
  %24 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lanes_number, align 4
  %conv5 = trunc i32 %25 to i8
  %lanenum = getelementptr inbounds %struct.dig_encoder_stream_setup_parameters_v1_5, ptr %params, i32 0, i32 3
  %26 = ptrtoint ptr %lanenum to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv5, ptr %lanenum, align 1
  %color_depth = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 5
  %27 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %color_depth, align 4
  %switch.tableidx = add i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %29 = icmp ult i32 %switch.tableidx, 5
  br i1 %29, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %30 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.lobit.not = icmp eq i8 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.encoder_control_digx_v1_5, i32 0, i32 %switch.tableidx
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %31)
  %switch.load = load i8, ptr %switch.gep, align 1
  %bitpercolor11 = getelementptr inbounds %struct.dig_encoder_stream_setup_parameters_v1_5, ptr %params, i32 0, i32 5
  %32 = ptrtoint ptr %bitpercolor11 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %switch.load, ptr %bitpercolor11, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %33 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp = icmp eq i32 %34, 4
  br i1 %cmp, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  %35 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %28, label %if.then.if.end_crit_edge [
    i32 3, label %if.then.if.end.sink.split_crit_edge
    i32 4, label %sw.bb19
    i32 6, label %sw.bb24
  ]

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb19:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

sw.bb24:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb24, %sw.bb19, %if.then.if.end.sink.split_crit_edge
  %.sink65 = phi i32 [ 36, %sw.bb19 ], [ 48, %sw.bb24 ], [ 30, %if.then.if.end.sink.split_crit_edge ]
  %36 = ptrtoint ptr %pclk_10khz to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %pclk_10khz, align 1
  %mul = mul i32 %37, %.sink65
  %div17 = udiv i32 %mul, 24
  store i32 %div17, ptr %pclk_10khz, align 1
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %ctx31 = getelementptr inbounds %struct.dc, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %ctx31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx31, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dmub_srv, align 8
  %tobool32.not = icmp eq ptr %45, null
  br i1 %tobool32.not, label %if.end.if.end42_crit_edge, label %land.lhs.true

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %41, i32 0, i32 63
  %46 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dmub_command_table, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool36.not = icmp eq i8 %47, 0
  br i1 %tobool36.not, label %land.lhs.true.if.end42_crit_edge, label %if.then38

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dmub_srv41 = getelementptr inbounds %struct.dc_context, ptr %39, i32 0, i32 14
  %48 = ptrtoint ptr %dmub_srv41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dmub_srv41, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #5
  %50 = getelementptr inbounds i8, ptr %cmd.i, i32 16
  %51 = call ptr @memset(ptr %50, i32 0, i32 48)
  %52 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -2147483600, ptr %cmd.i, align 4
  %encoder_control.i = getelementptr inbounds %struct.dmub_rb_cmd_digx_encoder_control, ptr %cmd.i, i32 0, i32 1
  %53 = call ptr @memcpy(ptr %encoder_control.i, ptr %params, i32 12)
  call void @dc_dmub_srv_cmd_queue(ptr noundef %49, ptr noundef nonnull %cmd.i) #5
  call void @dc_dmub_srv_cmd_execute(ptr noundef %49) #5
  call void @dc_dmub_srv_wait_idle(ptr noundef %49) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #5
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.end.if.end42_crit_edge
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %39, i32 0, i32 1
  %54 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %55, i32 0, i32 79
  %56 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mode_info, align 8
  %call45 = call i32 @amdgpu_atom_execute_table(ptr noundef %57, i32 noundef 4, ptr noundef nonnull %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  %spec.select = select i1 %cmp46, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then38
  %retval.0 = phi i32 [ 0, %if.then38 ], [ %spec.select, %if.end42 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encoder_control_fallback(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ctx1 = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true:                                    ; preds = %entry
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 63
  %8 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dmub_command_table, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @encoder_control_digx_v1_5(ptr noundef %bp, ptr noundef %cntl)
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 5, %land.lhs.true.return_crit_edge ], [ 5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_execute(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_wait_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @transmitter_control_v1_6(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %cmd.i = alloca %union.dmub_rb_cmd, align 4
  %ps = alloca %struct.dig_transmitter_control_ps_allocation_v1_6, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_helper, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ps) #5
  %2 = getelementptr inbounds i8, ptr %ps, i32 11
  %3 = call ptr @memset(ptr %2, i32 0, i32 21)
  %phy_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %phy_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_id_to_atom, align 4
  %transmitter = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %6 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transmitter, align 4
  %call = tail call zeroext i8 %5(i32 noundef %7) #5
  %8 = ptrtoint ptr %ps to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call, ptr %ps, align 1
  %9 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cntl, align 4
  %conv = trunc i32 %10 to i8
  %action2 = getelementptr inbounds %struct.dig_transmitter_control_parameters_v1_6, ptr %ps, i32 0, i32 1
  %11 = ptrtoint ptr %action2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %action2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %10)
  %cmp = icmp eq i32 %10, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lane_settings = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 11
  %12 = ptrtoint ptr %lane_settings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lane_settings, align 4
  %conv5 = trunc i32 %13 to i8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %signal_type_to_atom_dig_mode = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %signal_type_to_atom_dig_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal_type_to_atom_dig_mode, align 4
  %signal = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %16 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %signal, align 4
  %call7 = tail call zeroext i8 %15(i32 noundef %17) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call7.sink = phi i8 [ %conv5, %if.then ], [ %call7, %if.else ]
  %18 = getelementptr inbounds %struct.dig_transmitter_control_parameters_v1_6, ptr %ps, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call7.sink, ptr %18, align 1
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %20 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lanes_number, align 4
  %conv10 = trunc i32 %21 to i8
  %lanenum = getelementptr inbounds %struct.dig_transmitter_control_parameters_v1_6, ptr %ps, i32 0, i32 3
  %22 = ptrtoint ptr %lanenum to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv10, ptr %lanenum, align 1
  %hpd_sel_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %hpd_sel_to_atom to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hpd_sel_to_atom, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %25 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hpd_sel, align 4
  %call12 = tail call zeroext i8 %24(i32 noundef %26) #5
  %hpdsel = getelementptr inbounds %struct.dig_transmitter_control_parameters_v1_6, ptr %ps, i32 0, i32 5
  %27 = ptrtoint ptr %hpdsel to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call12, ptr %hpdsel, align 1
  %dig_encoder_sel_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %dig_encoder_sel_to_atom to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dig_encoder_sel_to_atom, align 4
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %30 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %engine_id, align 4
  %call14 = tail call zeroext i8 %29(i32 noundef %31) #5
  %digfe_sel = getelementptr inbounds %struct.dig_transmitter_control_parameters_v1_6, ptr %ps, i32 0, i32 6
  %32 = ptrtoint ptr %digfe_sel to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %call14, ptr %digfe_sel, align 1
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %33 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load = load i32, ptr %connector_obj_id, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  %conv16 = trunc i32 %bf.lshr to i8
  %connobj_id = getelementptr inbounds %struct.dig_transmitter_control_parameters_v1_6, ptr %ps, i32 0, i32 7
  %34 = ptrtoint ptr %connobj_id to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv16, ptr %connobj_id, align 1
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %35 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %36, 10
  %symclk_10khz = getelementptr inbounds %struct.dig_transmitter_control_parameters_v1_6, ptr %ps, i32 0, i32 4
  %37 = ptrtoint ptr %symclk_10khz to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %div, ptr %symclk_10khz, align 1
  %38 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cntl, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %39, label %if.end.if.end37_crit_edge [
    i32 1, label %if.end.do.body_crit_edge
    i32 9, label %if.end.do.body_crit_edge80
    i32 8, label %if.end.do.body_crit_edge81
  ]

if.end.do.body_crit_edge81:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.do.body_crit_edge80:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end.do.body_crit_edge80, %if.end.do.body_crit_edge81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @transmitter_control_v1_6.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@transmitter_control_v1_6, %if.then33)) #5
          to label %if.end37 [label %if.then33], !srcloc !47

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %symclk_10khz to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %symclk_10khz, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @transmitter_control_v1_6.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef %42) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %do.body, %if.end.if.end37_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %ctx38 = getelementptr inbounds %struct.dc, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %ctx38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx38, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dmub_srv, align 8
  %tobool39.not = icmp eq ptr %50, null
  br i1 %tobool39.not, label %if.end37.if.end50_crit_edge, label %land.lhs.true

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end37
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %46, i32 0, i32 63
  %51 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dmub_command_table, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool43.not = icmp eq i8 %52, 0
  br i1 %tobool43.not, label %land.lhs.true.if.end50_crit_edge, label %if.then45

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dmub_srv48 = getelementptr inbounds %struct.dc_context, ptr %44, i32 0, i32 14
  %53 = ptrtoint ptr %dmub_srv48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dmub_srv48, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #5
  %55 = getelementptr inbounds i8, ptr %cmd.i, i32 20
  %56 = call ptr @memset(ptr %55, i32 0, i32 44)
  %57 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -2147417872, ptr %cmd.i, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dmub_rb_cmd_dig1_transmitter_control, ptr %cmd.i, i32 0, i32 1
  %58 = call ptr @memcpy(ptr %transmitter_control.i, ptr %ps, i32 16)
  call void @dc_dmub_srv_cmd_queue(ptr noundef %54, ptr noundef nonnull %cmd.i) #5
  call void @dc_dmub_srv_cmd_execute(ptr noundef %54) #5
  call void @dc_dmub_srv_wait_idle(ptr noundef %54) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #5
  br label %cleanup

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %if.end37.if.end50_crit_edge
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %44, i32 0, i32 1
  %59 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %60, i32 0, i32 79
  %61 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mode_info, align 8
  %call53 = call i32 @amdgpu_atom_execute_table(ptr noundef %62, i32 noundef 76, ptr noundef nonnull %ps) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp eq i32 %call53, 0
  %spec.select = select i1 %cmp54, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then45
  %retval.0 = phi i32 [ 0, %if.then45 ], [ %spec.select, %if.end50 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ps) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @transmitter_control_v1_7(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  %cmd.i = alloca %union.dmub_rb_cmd, align 4
  %dig_v1_7 = alloca %struct.dmub_dig_transmitter_control_data_v1_7, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_helper, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %dig_v1_7) #5
  %2 = getelementptr inbounds i8, ptr %dig_v1_7, i32 11
  %3 = call ptr @memset(ptr %2, i32 0, i32 49)
  %phy_id_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %phy_id_to_atom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_id_to_atom, align 4
  %transmitter = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 2
  %6 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transmitter, align 4
  %call = tail call zeroext i8 %5(i32 noundef %7) #5
  %8 = ptrtoint ptr %dig_v1_7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call, ptr %dig_v1_7, align 1
  %9 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cntl, align 4
  %conv = trunc i32 %10 to i8
  %action1 = getelementptr inbounds %struct.dmub_dig_transmitter_control_data_v1_7, ptr %dig_v1_7, i32 0, i32 1
  %11 = ptrtoint ptr %action1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %action1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %10)
  %cmp = icmp eq i32 %10, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lane_settings = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 11
  %12 = ptrtoint ptr %lane_settings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lane_settings, align 4
  %conv4 = trunc i32 %13 to i8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %signal_type_to_atom_dig_mode = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %signal_type_to_atom_dig_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal_type_to_atom_dig_mode, align 4
  %signal = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 5
  %16 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %signal, align 4
  %call5 = tail call zeroext i8 %15(i32 noundef %17) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5.sink = phi i8 [ %conv4, %if.then ], [ %call5, %if.else ]
  %18 = getelementptr inbounds %struct.dmub_dig_transmitter_control_data_v1_7, ptr %dig_v1_7, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call5.sink, ptr %18, align 1
  %lanes_number = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 3
  %20 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lanes_number, align 4
  %conv7 = trunc i32 %21 to i8
  %lanenum = getelementptr inbounds %struct.dmub_dig_transmitter_control_data_v1_7, ptr %dig_v1_7, i32 0, i32 3
  %22 = ptrtoint ptr %lanenum to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7, ptr %lanenum, align 1
  %hpd_sel_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %hpd_sel_to_atom to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hpd_sel_to_atom, align 4
  %hpd_sel = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 7
  %25 = ptrtoint ptr %hpd_sel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hpd_sel, align 4
  %call8 = tail call zeroext i8 %24(i32 noundef %26) #5
  %hpdsel = getelementptr inbounds %struct.dmub_dig_transmitter_control_data_v1_7, ptr %dig_v1_7, i32 0, i32 5
  %27 = ptrtoint ptr %hpdsel to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call8, ptr %hpdsel, align 1
  %dig_encoder_sel_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %dig_encoder_sel_to_atom to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dig_encoder_sel_to_atom, align 4
  %engine_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 1
  %30 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %engine_id, align 4
  %call9 = tail call zeroext i8 %29(i32 noundef %31) #5
  %digfe_sel = getelementptr inbounds %struct.dmub_dig_transmitter_control_data_v1_7, ptr %dig_v1_7, i32 0, i32 6
  %32 = ptrtoint ptr %digfe_sel to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %call9, ptr %digfe_sel, align 1
  %connector_obj_id = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 8
  %33 = ptrtoint ptr %connector_obj_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load = load i32, ptr %connector_obj_id, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  %conv10 = trunc i32 %bf.lshr to i8
  %connobj_id = getelementptr inbounds %struct.dmub_dig_transmitter_control_data_v1_7, ptr %dig_v1_7, i32 0, i32 7
  %34 = ptrtoint ptr %connobj_id to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv10, ptr %connobj_id, align 1
  %pixel_clock = getelementptr inbounds %struct.bp_transmitter_control, ptr %cntl, i32 0, i32 9
  %35 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %36, 10
  %symclk_units = getelementptr inbounds %struct.dmub_dig_transmitter_control_data_v1_7, ptr %dig_v1_7, i32 0, i32 4
  %37 = ptrtoint ptr %symclk_units to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %div, ptr %symclk_units, align 1
  %38 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cntl, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %39, label %if.end.if.end28_crit_edge [
    i32 1, label %if.end.do.body_crit_edge
    i32 9, label %if.end.do.body_crit_edge70
    i32 8, label %if.end.do.body_crit_edge71
  ]

if.end.do.body_crit_edge71:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.do.body_crit_edge70:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end.do.body_crit_edge70, %if.end.do.body_crit_edge71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @transmitter_control_v1_7.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@transmitter_control_v1_7, %if.then25)) #5
          to label %if.end28 [label %if.then25], !srcloc !47

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %symclk_units to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %symclk_units, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @transmitter_control_v1_7.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %42) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %do.body, %if.end.if.end28_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %ctx29 = getelementptr inbounds %struct.dc, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %ctx29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx29, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dmub_srv, align 8
  %tobool30.not = icmp eq ptr %50, null
  br i1 %tobool30.not, label %if.end28.if.end40_crit_edge, label %land.lhs.true

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end28
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %46, i32 0, i32 63
  %51 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dmub_command_table, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool34.not = icmp eq i8 %52, 0
  br i1 %tobool34.not, label %land.lhs.true.if.end40_crit_edge, label %if.then36

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dmub_srv39 = getelementptr inbounds %struct.dc_context, ptr %44, i32 0, i32 14
  %53 = ptrtoint ptr %dmub_srv39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dmub_srv39, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #5
  %55 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -2147417872, ptr %cmd.i, align 4
  %transmitter_control.i = getelementptr inbounds %struct.dmub_rb_cmd_dig1_transmitter_control, ptr %cmd.i, i32 0, i32 1
  %56 = call ptr @memcpy(ptr %transmitter_control.i, ptr %dig_v1_7, i32 60)
  call void @dc_dmub_srv_cmd_queue(ptr noundef %54, ptr noundef nonnull %cmd.i) #5
  call void @dc_dmub_srv_cmd_execute(ptr noundef %54) #5
  call void @dc_dmub_srv_wait_idle(ptr noundef %54) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #5
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %if.end28.if.end40_crit_edge
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %44, i32 0, i32 1
  %57 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %58, i32 0, i32 79
  %59 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mode_info, align 8
  %call43 = call i32 @amdgpu_atom_execute_table(ptr noundef %60, i32 noundef 76, ptr noundef nonnull %dig_v1_7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 0
  %spec.select = select i1 %cmp44, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then36
  %retval.0 = phi i32 [ 0, %if.then36 ], [ %spec.select, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %dig_v1_7) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @transmitter_control_fallback(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %cntl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ctx1 = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true:                                    ; preds = %entry
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 63
  %8 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dmub_command_table, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @transmitter_control_v1_7(ptr noundef %bp, ptr noundef %cntl)
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 5, %land.lhs.true.return_crit_edge ], [ 5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pixel_clock_v7(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params) #0 align 64 {
entry:
  %cmd.i = alloca %union.dmub_rb_cmd, align 4
  %clk = alloca %struct.set_pixel_clock_parameter_v1_7, align 4
  %controller_id = alloca i8, align 1
  %pll_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clk) #5
  %0 = getelementptr inbounds %struct.set_pixel_clock_parameter_v1_7, ptr %clk, i32 0, i32 1
  %1 = getelementptr inbounds %struct.set_pixel_clock_parameter_v1_7, ptr %clk, i32 0, i32 2
  %2 = getelementptr inbounds %struct.set_pixel_clock_parameter_v1_7, ptr %clk, i32 0, i32 3
  %3 = getelementptr inbounds %struct.set_pixel_clock_parameter_v1_7, ptr %clk, i32 0, i32 4
  %4 = getelementptr inbounds %struct.set_pixel_clock_parameter_v1_7, ptr %clk, i32 0, i32 5
  %5 = getelementptr inbounds %struct.set_pixel_clock_parameter_v1_7, ptr %clk, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %controller_id) #5
  %6 = ptrtoint ptr %controller_id to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %controller_id, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll_id) #5
  %7 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %pll_id, align 4, !annotation !45
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
  %call = call zeroext i1 %13(i32 noundef %15, ptr noundef nonnull %pll_id) #5
  br i1 %call, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

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
  %call4 = call zeroext i1 %19(i32 noundef %21, ptr noundef nonnull %controller_id) #5
  br i1 %call4, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

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
  %retval.0.i125 = select i1 %cmp.i, i32 %bf.lshr2.i, i32 0
  %call8 = call zeroext i8 %31(i32 noundef %retval.0.i125) #5
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call8, ptr %1, align 1
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
  %call10 = call i32 %38(i32 noundef %40, i1 noundef zeroext false) #5
  %conv11 = trunc i32 %call10 to i8
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv11, ptr %2, align 2
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
  %call13 = call zeroext i8 %49(i32 noundef %51) #5
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %call13, ptr %5, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_pixel_clock_v7.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_pixel_clock_v7, %if.then17)) #5
          to label %do.end [label %if.then17], !srcloc !47

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %target_pixel_clock_100hz to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %target_pixel_clock_100hz, align 4
  %55 = ptrtoint ptr %controller_id to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %controller_id, align 1
  %conv19 = zext i8 %56 to i32
  %57 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pll_id, align 4
  %59 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %color_depth, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_pixel_clock_v7.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %54, i32 noundef %conv19, i32 noundef %58, i32 noundef %60) #5
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.then
  %flags = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_params, i32 0, i32 11
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool21.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool21.not, label %do.end.if.end25_crit_edge, label %if.then22

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %3, align 1
  %64 = or i8 %63, 1
  store i8 %64, ptr %3, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %do.end.if.end25_crit_edge
  %65 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool30.not = icmp eq i8 %65, 0
  br i1 %tobool30.not, label %if.end25.if.end36_crit_edge, label %if.then31

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %3, align 1
  %68 = or i8 %67, 2
  store i8 %68, ptr %3, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end25.if.end36_crit_edge
  %69 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool42.not = icmp eq i8 %69, 0
  br i1 %tobool42.not, label %if.end36.if.end48_crit_edge, label %if.then43

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %3, align 1
  %72 = or i8 %71, 4
  store i8 %72, ptr %3, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end36.if.end48_crit_edge
  %bf.clear63 = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear63)
  %tobool65.not = icmp eq i8 %bf.clear63, 0
  br i1 %tobool65.not, label %if.end48.if.end71_crit_edge, label %if.then66

if.end48.if.end71_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then66:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %3, align 1
  %75 = or i8 %74, 32
  store i8 %75, ptr %3, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end48.if.end71_crit_edge
  %76 = ptrtoint ptr %signal_type to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %signal_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp = icmp eq i32 %77, 2
  br i1 %cmp, label %if.then74, label %if.end71.if.end79_crit_edge

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %3, align 1
  %80 = or i8 %79, 8
  store i8 %80, ptr %3, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end71.if.end79_crit_edge
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %81 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ctx, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  %ctx80 = getelementptr inbounds %struct.dc, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %ctx80 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ctx80, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %86, i32 0, i32 14
  %87 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dmub_srv, align 8
  %tobool81.not = icmp eq ptr %88, null
  br i1 %tobool81.not, label %if.end79.if.end92_crit_edge, label %land.lhs.true82

if.end79.if.end92_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

land.lhs.true82:                                  ; preds = %if.end79
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %84, i32 0, i32 63
  %89 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dmub_command_table, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool86.not = icmp eq i8 %90, 0
  br i1 %tobool86.not, label %land.lhs.true82.if.end92_crit_edge, label %if.then88

land.lhs.true82.if.end92_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then88:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #7
  %dmub_srv91 = getelementptr inbounds %struct.dc_context, ptr %82, i32 0, i32 14
  %91 = ptrtoint ptr %dmub_srv91 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dmub_srv91, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #5
  %93 = getelementptr inbounds i8, ptr %cmd.i, i32 20
  %94 = call ptr @memset(ptr %93, i32 0, i32 44)
  %95 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -2147352512, ptr %cmd.i, align 4
  %pixel_clock.i = getelementptr inbounds %struct.dmub_rb_cmd_set_pixel_clock, ptr %cmd.i, i32 0, i32 1
  %96 = call ptr @memcpy(ptr %pixel_clock.i, ptr %clk, i32 16)
  call void @dc_dmub_srv_cmd_queue(ptr noundef %92, ptr noundef nonnull %cmd.i) #5
  call void @dc_dmub_srv_cmd_execute(ptr noundef %92) #5
  call void @dc_dmub_srv_wait_idle(ptr noundef %92) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #5
  br label %cleanup

if.end92:                                         ; preds = %land.lhs.true82.if.end92_crit_edge, %if.end79.if.end92_crit_edge
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %82, i32 0, i32 1
  %97 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %98, i32 0, i32 79
  %99 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mode_info, align 8
  %call95 = call i32 @amdgpu_atom_execute_table(ptr noundef %100, i32 noundef 12, ptr noundef nonnull %clk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp eq i32 %call95, 0
  %spec.select = select i1 %cmp96, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then88, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then88 ], [ 5, %land.lhs.true.cleanup_crit_edge ], [ 5, %entry.cleanup_crit_edge ], [ %spec.select, %if.end92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll_id) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %controller_id) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pixel_clock_fallback(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ctx1 = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true:                                    ; preds = %entry
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 63
  %8 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dmub_command_table, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @set_pixel_clock_v7(ptr noundef %bp, ptr noundef %bp_params)
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 5, %land.lhs.true.return_crit_edge ], [ 5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_crtc_using_dtd_timing_v3(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %bp_params) #0 align 64 {
entry:
  %params = alloca %struct.set_crtc_using_dtd_timing_parameters, align 2
  %atom_controller_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #5
  %0 = getelementptr inbounds i8, ptr %params, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %atom_controller_id) #5
  %2 = ptrtoint ptr %atom_controller_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %atom_controller_id, align 1, !annotation !45
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
  %call = call zeroext i1 %6(i32 noundef %8, ptr noundef nonnull %atom_controller_id) #5
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %atom_controller_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %atom_controller_id, align 1
  %crtc_id = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 11
  %11 = ptrtoint ptr %crtc_id to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %crtc_id, align 2
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
  %h_blanking_time = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 1
  %19 = ptrtoint ptr %h_blanking_time to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %h_blanking_time, align 2
  %v_addressable = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 8
  %20 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v_addressable, align 4
  %conv3 = trunc i32 %21 to i16
  %22 = call i16 @llvm.bswap.i16(i16 %conv3)
  %v_size = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 2
  %23 = ptrtoint ptr %v_size to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %v_size, align 2
  %v_total = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 7
  %24 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v_total, align 4
  %sub5 = sub i32 %25, %21
  %conv6 = trunc i32 %sub5 to i16
  %26 = call i16 @llvm.bswap.i16(i16 %conv6)
  %v_blanking_time = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 3
  %27 = ptrtoint ptr %v_blanking_time to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %v_blanking_time, align 2
  %h_sync_start = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 5
  %28 = ptrtoint ptr %h_sync_start to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %h_sync_start, align 4
  %sub8 = sub i32 %29, %13
  %conv9 = trunc i32 %sub8 to i16
  %30 = call i16 @llvm.bswap.i16(i16 %conv9)
  %h_syncoffset = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 4
  %31 = ptrtoint ptr %h_syncoffset to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %h_syncoffset, align 2
  %h_sync_width = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 6
  %32 = ptrtoint ptr %h_sync_width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %h_sync_width, align 4
  %conv10 = trunc i32 %33 to i16
  %34 = call i16 @llvm.bswap.i16(i16 %conv10)
  %h_syncwidth = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 5
  %35 = ptrtoint ptr %h_syncwidth to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %h_syncwidth, align 2
  %v_sync_start = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 11
  %36 = ptrtoint ptr %v_sync_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %v_sync_start, align 4
  %sub12 = sub i32 %37, %21
  %conv13 = trunc i32 %sub12 to i16
  %38 = call i16 @llvm.bswap.i16(i16 %conv13)
  %v_syncoffset = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 6
  %39 = ptrtoint ptr %v_syncoffset to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %v_syncoffset, align 2
  %v_sync_width = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 12
  %40 = ptrtoint ptr %v_sync_width to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %v_sync_width, align 4
  %conv14 = trunc i32 %41 to i16
  %42 = call i16 @llvm.bswap.i16(i16 %conv14)
  %v_syncwidth = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 7
  %43 = ptrtoint ptr %v_syncwidth to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %v_syncwidth, align 2
  %flags = getelementptr inbounds %struct.bp_hw_crtc_timing_parameters, ptr %bp_params, i32 0, i32 13
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %flags, align 4
  %45 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp = icmp eq i8 %45, 0
  br i1 %cmp, label %if.then16, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %modemiscinfo = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 8
  %46 = ptrtoint ptr %modemiscinfo to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %modemiscinfo, align 2
  %48 = or i16 %47, 512
  store i16 %48, ptr %modemiscinfo, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end.if.end20_crit_edge
  %49 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp26 = icmp eq i8 %49, 0
  br i1 %cmp26, label %if.then28, label %if.end20.if.end34_crit_edge

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %modemiscinfo29 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 8
  %50 = ptrtoint ptr %modemiscinfo29 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %modemiscinfo29, align 2
  %52 = or i16 %51, 1024
  store i16 %52, ptr %modemiscinfo29, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end20.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end34.if.end46_crit_edge, label %if.then39

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %modemiscinfo40 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 8
  %53 = ptrtoint ptr %modemiscinfo40 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %modemiscinfo40, align 2
  %55 = or i16 %54, -32768
  store i16 %55, ptr %modemiscinfo40, align 2
  %add.i = add i16 %conv13, 1
  %56 = call i16 @llvm.bswap.i16(i16 %add.i) #5
  %57 = ptrtoint ptr %v_syncoffset to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %v_syncoffset, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.end34.if.end46_crit_edge
  %bf.clear49 = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear49)
  %tobool51.not = icmp eq i8 %bf.clear49, 0
  br i1 %tobool51.not, label %if.end46.if.end58_crit_edge, label %if.then52

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %modemiscinfo53 = getelementptr inbounds %struct.set_crtc_using_dtd_timing_parameters, ptr %params, i32 0, i32 8
  %58 = ptrtoint ptr %modemiscinfo53 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %modemiscinfo53, align 2
  %60 = or i16 %59, 1
  store i16 %60, ptr %modemiscinfo53, align 2
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
  %call59 = call i32 @amdgpu_atom_execute_table(ptr noundef %66, i32 noundef 49, ptr noundef nonnull %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp eq i32 %call59, 0
  %spec.select = select i1 %cmp60, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %atom_controller_id) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #5
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_crtc_v1(ptr nocapture noundef readonly %bp, i32 noundef %controller_id, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %params = alloca %struct.enable_crtc_parameters, align 4
  %id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %params) #5
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %params, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #5
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %id, align 1, !annotation !45
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_helper, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = call zeroext i1 %5(i32 noundef %controller_id, ptr noundef nonnull %id) #5
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 1
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %params, align 4
  %spec.select13 = zext i1 %enable to i8
  %9 = getelementptr inbounds %struct.enable_crtc_parameters, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select13, ptr %9, align 1
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
  %call6 = call i32 @amdgpu_atom_execute_table(ptr noundef %16, i32 noundef 35, ptr noundef nonnull %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp ne i32 %call6, 0
  %spec.select = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %params) #5
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @external_encoder_control_v3(ptr nocapture noundef readnone %bp, ptr nocapture noundef readnone %cntl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_disp_power_gating_v2_1(ptr nocapture noundef readonly %bp, i32 noundef %crtc_id, i32 noundef %action) #0 align 64 {
entry:
  %cmd.i = alloca %union.dmub_rb_cmd, align 4
  %ps = alloca %struct.enable_disp_power_gating_ps_allocation, align 4
  %atom_crtc_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ps) #5
  %0 = call ptr @memset(ptr %ps, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %atom_crtc_id) #5
  %1 = ptrtoint ptr %atom_crtc_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %atom_crtc_id, align 1, !annotation !45
  %cmd_helper = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_helper, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = call zeroext i1 %5(i32 noundef %crtc_id, ptr noundef nonnull %atom_crtc_id) #5
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %atom_crtc_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %atom_crtc_id, align 1
  %8 = ptrtoint ptr %ps to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %ps, align 4
  %9 = ptrtoint ptr %cmd_helper to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd_helper, align 4
  %disp_power_gating_action_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %disp_power_gating_action_to_atom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disp_power_gating_action_to_atom, align 4
  %call2 = call zeroext i8 %12(i32 noundef %action) #5
  %enable = getelementptr inbounds %struct.enable_disp_power_gating_parameters_v2_1, ptr %ps, i32 0, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call2, ptr %enable, align 1
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %ctx4 = getelementptr inbounds %struct.dc, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx4, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.then.if.end14_crit_edge, label %land.lhs.true

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %17, i32 0, i32 63
  %22 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dmub_command_table, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.not = icmp eq i8 %23, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dmub_srv12 = getelementptr inbounds %struct.dc_context, ptr %15, i32 0, i32 14
  %24 = ptrtoint ptr %dmub_srv12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dmub_srv12, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #5
  %26 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 56)
  %28 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2147287024, ptr %cmd.i, align 4
  %power_gating.i = getelementptr inbounds %struct.dmub_rb_cmd_enable_disp_power_gating, ptr %cmd.i, i32 0, i32 1
  %29 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ps, align 4
  %31 = ptrtoint ptr %power_gating.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %power_gating.i, align 4
  call void @dc_dmub_srv_cmd_queue(ptr noundef %25, ptr noundef nonnull %cmd.i) #5
  call void @dc_dmub_srv_cmd_execute(ptr noundef %25) #5
  call void @dc_dmub_srv_wait_idle(ptr noundef %25) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #5
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %15, i32 0, i32 1
  %32 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %33, i32 0, i32 79
  %34 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mode_info, align 8
  %call18 = call i32 @amdgpu_atom_execute_table(ptr noundef %35, i32 noundef 13, ptr noundef nonnull %ps) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp eq i32 %call18, 0
  %spec.select = select i1 %cmp, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %spec.select, %if.end14 ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %atom_crtc_id) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ps) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_disp_power_gating_fallback(ptr nocapture noundef readonly %bp, i32 noundef %crtc_id, i32 noundef %action) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ctx1 = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true:                                    ; preds = %entry
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 63
  %8 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dmub_command_table, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @enable_disp_power_gating_v2_1(ptr noundef %bp, i32 noundef %crtc_id, i32 noundef %action)
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 5, %land.lhs.true.return_crit_edge ], [ 5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_dce_clock_v2_1(ptr nocapture noundef readonly %bp, ptr nocapture noundef %bp_params) #0 align 64 {
entry:
  %params = alloca %struct.set_dce_clock_ps_allocation_v2_1, align 4
  %atom_pll_id = alloca i32, align 4
  %atom_clock_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params) #5
  %0 = getelementptr inbounds %struct.set_dce_clock_parameters_v2_1, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.set_dce_clock_parameters_v2_1, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.set_dce_clock_parameters_v2_1, ptr %params, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %atom_pll_id) #5
  %3 = ptrtoint ptr %atom_pll_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %atom_pll_id, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %atom_clock_type) #5
  %4 = ptrtoint ptr %atom_clock_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %atom_clock_type, align 4, !annotation !45
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
  %call = call zeroext i1 %9(i32 noundef %11, ptr noundef nonnull %atom_pll_id) #5
  br i1 %call, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %call1 = call zeroext i1 %13(i32 noundef %15, ptr noundef nonnull %atom_clock_type) #5
  br i1 %call1, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then7:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %tobool30.not, label %if.end24.do.body_crit_edge, label %if.then31

if.end24.do.body_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %2, align 2
  %36 = or i8 %35, 3
  store i8 %36, ptr %2, align 2
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %target_clock_frequency = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %bp_params, i32 0, i32 1
  %37 = ptrtoint ptr %target_clock_frequency to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %target_clock_frequency, align 4
  %div = udiv i32 %38, 10
  %39 = call i32 @llvm.bswap.i32(i32 %div)
  %40 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %params, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then31, %if.end24.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_dce_clock_v2_1.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_dce_clock_v2_1, %if.then56)) #5
          to label %do.end [label %if.then56], !srcloc !47

if.then56:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %target_clock_frequency57 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %bp_params, i32 0, i32 1
  %41 = ptrtoint ptr %target_clock_frequency57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %target_clock_frequency57, align 4
  %43 = ptrtoint ptr %clock_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %clock_type, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_dce_clock_v2_1.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %42, i32 noundef %44) #5
  br label %do.end

do.end:                                           ; preds = %if.then56, %do.body
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %45 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %48, i32 0, i32 79
  %49 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mode_info, align 8
  %call60 = call i32 @amdgpu_atom_execute_table(ptr noundef %50, i32 noundef 46, ptr noundef nonnull %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then63:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %params, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %mul = mul i32 %53, 10
  %target_clock_frequency66 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, ptr %bp_params, i32 0, i32 1
  %54 = ptrtoint ptr %target_clock_frequency66 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul, ptr %target_clock_frequency66, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then63 ], [ 5, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atom_clock_type) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atom_pll_id) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_smu_clock_info_v3_1(ptr nocapture noundef readonly %bp, i8 noundef zeroext %id) #0 align 64 {
entry:
  %smu_input = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_input) #5
  %0 = ptrtoint ptr %smu_input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %smu_input, align 4
  store i8 %id, ptr %smu_input, align 4
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_context, align 4
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %4, i32 0, i32 79
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %6, i32 noundef 41, ptr noundef nonnull %smu_input) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %smu_input to i32
  call void @__asan_load4_noabort(i32 %7)
  %smu_output.sroa.0.0.copyload = load i32, ptr %smu_input, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %smu_output.sroa.0.0.copyload, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_input) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_lvtma_control(ptr nocapture noundef readonly %bp, i8 noundef zeroext %uc_pwr_on, i8 noundef zeroext %panel_instance) #0 align 64 {
entry:
  %cmd.i = alloca %union.dmub_rb_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_bios, ptr %bp, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ctx1 = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1, align 8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %dmub_command_table = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 63
  %8 = ptrtoint ptr %dmub_command_table to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dmub_command_table, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dmub_srv8 = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %dmub_srv8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmub_srv8, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #5
  %12 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 60)
  %14 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -2146500608, ptr %cmd.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %uc_pwr_on, ptr %12, align 4
  %panel_inst.i = getelementptr inbounds %struct.dmub_rb_cmd_lvtma_control, ptr %cmd.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %panel_inst.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %panel_instance, ptr %panel_inst.i, align 4
  call void @dc_dmub_srv_cmd_queue(ptr noundef %11, ptr noundef nonnull %cmd.i) #5
  call void @dc_dmub_srv_cmd_execute(ptr noundef %11) #5
  call void @dc_dmub_srv_wait_idle(ptr noundef %11) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 5, %land.lhs.true.cleanup_crit_edge ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c", i32 104, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c", i32 242, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c", i32 296, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @transmitter_control_v1_6.__UNIQUE_ID_ddebug343, !5, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!10 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c", i32 369, i32 4}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @transmitter_control_v1_7.__UNIQUE_ID_ddebug344, !12, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!15 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c", i32 420, i32 3}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c", i32 498, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @set_pixel_clock_v7.__UNIQUE_ID_ddebug345, !19, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!22 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c", i32 568, i32 3}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c", i32 685, i32 3}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c", i32 788, i32 3}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c", i32 880, i32 3}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c", i32 931, i32 2}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @set_dce_clock_v2_1.__UNIQUE_ID_ddebug346, !32, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!35 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i8 0, i8 2}
!47 = !{i64 2148775250, i64 2148775255, i64 2148775268, i64 2148775312, i64 2148775346, i64 2148775367}
