; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.93] }
%struct.anon.93 = type { [12 x %struct.ttm_pool_type] }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dm_pp_display_configuration = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [6 x %struct.dm_pp_single_disp_config], i8, i32 }
%struct.dm_pp_single_disp_config = type { i32, i8, i8, i8, i32, i32, i32, i32, %struct.dc_link_settings }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.amd_pm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amd_pp_clocks = type { i32, [16 x i32], [16 x i32] }
%struct.amd_pp_simple_clock_info = type { i32, i32, i32 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.pp_clock_levels_with_latency = type { i32, [16 x %struct.pp_clock_with_latency] }
%struct.pp_clock_with_latency = type { i32, i32 }
%struct.dm_pp_clock_levels_with_latency = type { i32, [16 x %struct.dm_pp_clock_with_latency] }
%struct.dm_pp_clock_with_latency = type { i32, i32 }
%struct.pp_clock_levels_with_voltage = type { i32, [16 x %struct.pp_clock_with_voltage] }
%struct.pp_clock_with_voltage = type { i32, i32 }
%struct.dm_pp_clock_levels_with_voltage = type { i32, [16 x %struct.dm_pp_clock_with_voltage] }
%struct.dm_pp_clock_with_voltage = type { i32, i32 }
%struct.pp_display_clock_request = type { i32, i32 }
%struct.dm_pp_clock_for_voltage_req = type { i32, i32 }
%struct.amd_pp_clock_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_pp_static_clock_info = type { i32, i32, i32 }
%struct.pp_smu_funcs = type { %struct.pp_smu, %union.anon.113 }
%struct.pp_smu = type { i32, ptr, ptr }
%union.anon.113 = type { %struct.pp_smu_funcs_nv }
%struct.pp_smu_funcs_nv = type { %struct.pp_smu, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dm_pp_wm_sets_with_clock_ranges_soc15 = type { i32, i32, [4 x %struct.dm_pp_clock_range_for_dmif_wm_set_soc15], [4 x %struct.dm_pp_clock_range_for_mcif_wm_set_soc15] }
%struct.dm_pp_clock_range_for_dmif_wm_set_soc15 = type { i32, i32, i32, i32, i32 }
%struct.dm_pp_clock_range_for_mcif_wm_set_soc15 = type { i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }

@dm_pp_get_clock_levels_by_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016[drm] DM_PPLIB: Warning: using default validation clocks!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dm_pp_get_clock_levels_by_type\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c\00", [61 x i8] zeroinitializer }, align 32
@dm_pp_get_clock_levels_by_type._entry_ptr = internal global ptr @dm_pp_get_clock_levels_by_type._entry, section ".printk_index", align 4
@dm_pp_get_clock_levels_by_type._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] DM_PPLIB: Validation clocks:\0A\00", [58 x i8] zeroinitializer }, align 32
@dm_pp_get_clock_levels_by_type._entry_ptr.5 = internal global ptr @dm_pp_get_clock_levels_by_type._entry.3, section ".printk_index", align 4
@dm_pp_get_clock_levels_by_type._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016[drm] DM_PPLIB:    engine_max_clock: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@dm_pp_get_clock_levels_by_type._entry_ptr.8 = internal global ptr @dm_pp_get_clock_levels_by_type._entry.6, section ".printk_index", align 4
@dm_pp_get_clock_levels_by_type._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016[drm] DM_PPLIB:    memory_max_clock: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@dm_pp_get_clock_levels_by_type._entry_ptr.11 = internal global ptr @dm_pp_get_clock_levels_by_type._entry.9, section ".printk_index", align 4
@dm_pp_get_clock_levels_by_type._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016[drm] DM_PPLIB:    level           : %d\0A\00", [53 x i8] zeroinitializer }, align 32
@dm_pp_get_clock_levels_by_type._entry_ptr.14 = internal global ptr @dm_pp_get_clock_levels_by_type._entry.12, section ".printk_index", align 4
@dm_pp_get_clock_levels_by_type._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016[drm] DM_PPLIB: reducing engine clock level from %d to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dm_pp_get_clock_levels_by_type._entry_ptr.17 = internal global ptr @dm_pp_get_clock_levels_by_type._entry.15, section ".printk_index", align 4
@dm_pp_get_clock_levels_by_type._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016[drm] DM_PPLIB: reducing memory clock level from %d to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dm_pp_get_clock_levels_by_type._entry_ptr.20 = internal global ptr @dm_pp_get_clock_levels_by_type._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"smu version is not supported !\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DM_PPLIB: invalid clock type: %d!\0A\00", [61 x i8] zeroinitializer }, align 32
@__const.get_default_clock_levels.disp_clks_in_khz = private unnamed_addr constant [6 x i32] [i32 300000, i32 400000, i32 496560, i32 626090, i32 685720, i32 757900], align 4
@__const.get_default_clock_levels.sclks_in_khz = private unnamed_addr constant [6 x i32] [i32 300000, i32 360000, i32 423530, i32 514290, i32 626090, i32 720000], align 4
@pp_to_dc_clock_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016[drm] DM_PPLIB: Warning: %s clock: number of levels %d exceeds maximum of %d!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pp_to_dc_clock_levels\00", [42 x i8] zeroinitializer }, align 32
@pp_to_dc_clock_levels._entry_ptr = internal global ptr @pp_to_dc_clock_levels._entry, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Display\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Engine\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Memory\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCF\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCEF\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SoC\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Pixel\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Display PHY\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DPP\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@pp_to_dc_clock_levels._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.24, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] DM_PPLIB: values for %s clock\0A\00", [57 x i8] zeroinitializer }, align 32
@pp_to_dc_clock_levels._entry_ptr.38 = internal global ptr @pp_to_dc_clock_levels._entry.36, section ".printk_index", align 4
@pp_to_dc_clock_levels._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.24, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016[drm] DM_PPLIB:\09 %d\0A\00", [41 x i8] zeroinitializer }, align 32
@pp_to_dc_clock_levels._entry_ptr.41 = internal global ptr @pp_to_dc_clock_levels._entry.39, section ".printk_index", align 4
@pp_to_dc_clock_levels_with_latency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.42, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pp_to_dc_clock_levels_with_latency\00", [61 x i8] zeroinitializer }, align 32
@pp_to_dc_clock_levels_with_latency._entry_ptr = internal global ptr @pp_to_dc_clock_levels_with_latency._entry, section ".printk_index", align 4
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DM_PPLIB: values for %s clock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DM_PPLIB:\09 %d in kHz\0A\00", [42 x i8] zeroinitializer }, align 32
@pp_to_dc_clock_levels_with_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.45, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pp_to_dc_clock_levels_with_voltage\00", [61 x i8] zeroinitializer }, align 32
@pp_to_dc_clock_levels_with_voltage._entry_ptr = internal global ptr @pp_to_dc_clock_levels_with_voltage._entry, section ".printk_index", align 4
@pp_to_dc_clock_levels_with_voltage._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.45, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_to_dc_clock_levels_with_voltage._entry_ptr.47 = internal global ptr @pp_to_dc_clock_levels_with_voltage._entry.46, section ".printk_index", align 4
@pp_to_dc_clock_levels_with_voltage._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016[drm] DM_PPLIB:\09 %d in kHz, %d in mV\0A\00", [56 x i8] zeroinitializer }, align 32
@pp_to_dc_clock_levels_with_voltage._entry_ptr.50 = internal global ptr @pp_to_dc_clock_levels_with_voltage._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DM_PPLIB: invalid powerlevel state: %d!\0A\00", [55 x i8] zeroinitializer }, align 32
@switch.table.dm_pp_get_clock_levels_by_type = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1, i32 2, i32 3, i32 8, i32 4, i32 1, i32 6, i32 7, i32 9, i32 4], [56 x i8] zeroinitializer }, align 32
@switch.table.dm_pp_get_clock_levels_by_type.52 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [60 x i8] zeroinitializer }, align 32
@switch.table.dm_pp_get_clock_levels_by_type.53 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [60 x i8] zeroinitializer }, align 32
@switch.table.dm_pp_get_clock_levels_by_type_with_latency = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1, i32 2, i32 3, i32 8, i32 4, i32 1, i32 6, i32 7, i32 9, i32 4], [56 x i8] zeroinitializer }, align 32
@switch.table.dm_pp_get_clock_levels_by_type_with_latency.54 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [60 x i8] zeroinitializer }, align 32
@switch.table.dm_pp_get_clock_levels_by_type_with_latency.55 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [60 x i8] zeroinitializer }, align 32
@switch.table.dm_pp_get_clock_levels_by_type_with_voltage = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1, i32 2, i32 3, i32 8, i32 4, i32 1, i32 6, i32 7, i32 9, i32 4], [56 x i8] zeroinitializer }, align 32
@switch.table.dm_pp_get_clock_levels_by_type_with_voltage.56 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [60 x i8] zeroinitializer }, align 32
@switch.table.dm_pp_get_clock_levels_by_type_with_voltage.57 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [60 x i8] zeroinitializer }, align 32
@switch.table.dm_pp_apply_clock_for_voltage_request = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1, i32 2, i32 3, i32 8, i32 4, i32 1, i32 6, i32 7, i32 9, i32 4], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 13, i64 14, i64 15, i64 17]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 321, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 328, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 329, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 331, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 333, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 347, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 356, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 874, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 179, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 222, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 231, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 235, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 248, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 257, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 261, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 275, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 284, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 288, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [70 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 208, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [44 x i8] c"switch.table.dm_pp_get_clock_levels_by_type\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [47 x i8] c"switch.table.dm_pp_get_clock_levels_by_type.52\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [47 x i8] c"switch.table.dm_pp_get_clock_levels_by_type.53\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [57 x i8] c"switch.table.dm_pp_get_clock_levels_by_type_with_latency\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [60 x i8] c"switch.table.dm_pp_get_clock_levels_by_type_with_latency.54\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [60 x i8] c"switch.table.dm_pp_get_clock_levels_by_type_with_latency.55\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [57 x i8] c"switch.table.dm_pp_get_clock_levels_by_type_with_voltage\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [60 x i8] c"switch.table.dm_pp_get_clock_levels_by_type_with_voltage.56\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [60 x i8] c"switch.table.dm_pp_get_clock_levels_by_type_with_voltage.57\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [51 x i8] c"switch.table.dm_pp_apply_clock_for_voltage_request\00", align 1
@llvm.compiler.used = appending global [70 x ptr] [ptr @dm_pp_get_clock_levels_by_type._entry, ptr @dm_pp_get_clock_levels_by_type._entry.12, ptr @dm_pp_get_clock_levels_by_type._entry.15, ptr @dm_pp_get_clock_levels_by_type._entry.18, ptr @dm_pp_get_clock_levels_by_type._entry.3, ptr @dm_pp_get_clock_levels_by_type._entry.6, ptr @dm_pp_get_clock_levels_by_type._entry.9, ptr @dm_pp_get_clock_levels_by_type._entry_ptr, ptr @dm_pp_get_clock_levels_by_type._entry_ptr.11, ptr @dm_pp_get_clock_levels_by_type._entry_ptr.14, ptr @dm_pp_get_clock_levels_by_type._entry_ptr.17, ptr @dm_pp_get_clock_levels_by_type._entry_ptr.20, ptr @dm_pp_get_clock_levels_by_type._entry_ptr.5, ptr @dm_pp_get_clock_levels_by_type._entry_ptr.8, ptr @pp_to_dc_clock_levels._entry, ptr @pp_to_dc_clock_levels._entry.36, ptr @pp_to_dc_clock_levels._entry.39, ptr @pp_to_dc_clock_levels._entry_ptr, ptr @pp_to_dc_clock_levels._entry_ptr.38, ptr @pp_to_dc_clock_levels._entry_ptr.41, ptr @pp_to_dc_clock_levels_with_latency._entry, ptr @pp_to_dc_clock_levels_with_latency._entry_ptr, ptr @pp_to_dc_clock_levels_with_voltage._entry, ptr @pp_to_dc_clock_levels_with_voltage._entry.46, ptr @pp_to_dc_clock_levels_with_voltage._entry.48, ptr @pp_to_dc_clock_levels_with_voltage._entry_ptr, ptr @pp_to_dc_clock_levels_with_voltage._entry_ptr.47, ptr @pp_to_dc_clock_levels_with_voltage._entry_ptr.50, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.49, ptr @.str.51, ptr @switch.table.dm_pp_get_clock_levels_by_type, ptr @switch.table.dm_pp_get_clock_levels_by_type.52, ptr @switch.table.dm_pp_get_clock_levels_by_type.53, ptr @switch.table.dm_pp_get_clock_levels_by_type_with_latency, ptr @switch.table.dm_pp_get_clock_levels_by_type_with_latency.54, ptr @switch.table.dm_pp_get_clock_levels_by_type_with_latency.55, ptr @switch.table.dm_pp_get_clock_levels_by_type_with_voltage, ptr @switch.table.dm_pp_get_clock_levels_by_type_with_voltage.56, ptr @switch.table.dm_pp_get_clock_levels_by_type_with_voltage.57, ptr @switch.table.dm_pp_apply_clock_for_voltage_request], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pp_get_clock_levels_by_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pp_get_clock_levels_by_type._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pp_get_clock_levels_by_type._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pp_get_clock_levels_by_type._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pp_get_clock_levels_by_type._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pp_get_clock_levels_by_type._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pp_get_clock_levels_by_type._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_to_dc_clock_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_to_dc_clock_levels._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_to_dc_clock_levels._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_to_dc_clock_levels_with_latency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_to_dc_clock_levels_with_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_to_dc_clock_levels_with_voltage._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_to_dc_clock_levels_with_voltage._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm_pp_get_clock_levels_by_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm_pp_get_clock_levels_by_type.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm_pp_get_clock_levels_by_type.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm_pp_get_clock_levels_by_type_with_latency to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm_pp_get_clock_levels_by_type_with_latency.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm_pp_get_clock_levels_by_type_with_latency.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm_pp_get_clock_levels_by_type_with_voltage to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm_pp_get_clock_levels_by_type_with_voltage.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm_pp_get_clock_levels_by_type_with_voltage.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm_pp_apply_clock_for_voltage_request to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_pp_apply_display_requirements(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %pp_display_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_context, align 4
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 13
  %2 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dpm_enabled, align 8, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end84_crit_edge, label %if.then

entry.if.end84_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then:                                          ; preds = %entry
  %pm_display_cfg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20
  %4 = call ptr @memset(ptr %pm_display_cfg, i32 0, i32 1484)
  %cpu_cc6_disable = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 1
  %5 = ptrtoint ptr %cpu_cc6_disable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cpu_cc6_disable, align 1, !range !88
  %cpu_cc6_disable5 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 1
  %7 = ptrtoint ptr %cpu_cc6_disable5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %cpu_cc6_disable5, align 1
  %cpu_pstate_disable = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 2
  %8 = ptrtoint ptr %cpu_pstate_disable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cpu_pstate_disable, align 2, !range !88
  %cpu_pstate_disable9 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 2
  %10 = ptrtoint ptr %cpu_pstate_disable9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %cpu_pstate_disable9, align 2
  %cpu_pstate_separation_time = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 3
  %11 = ptrtoint ptr %cpu_pstate_separation_time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu_pstate_separation_time, align 4
  %cpu_pstate_separation_time13 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 3
  %13 = ptrtoint ptr %cpu_pstate_separation_time13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cpu_pstate_separation_time13, align 4
  %14 = ptrtoint ptr %pp_display_cfg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pp_display_cfg, align 4, !range !88
  %16 = ptrtoint ptr %pm_display_cfg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %pm_display_cfg, align 8
  %display_count = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 13
  %17 = ptrtoint ptr %display_count to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %display_count, align 1
  %conv = zext i8 %18 to i32
  %num_display = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 4
  %19 = ptrtoint ptr %num_display to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %num_display, align 8
  %20 = load i8, ptr %display_count, align 1
  %conv22 = zext i8 %20 to i32
  %num_path_including_non_display = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 5
  %21 = ptrtoint ptr %num_path_including_non_display to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv22, ptr %num_path_including_non_display, align 4
  %min_engine_clock_khz = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 5
  %22 = ptrtoint ptr %min_engine_clock_khz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %min_engine_clock_khz, align 4
  %div = udiv i32 %23, 10
  %min_core_set_clock = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 8
  %24 = ptrtoint ptr %min_core_set_clock to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div, ptr %min_core_set_clock, align 8
  %min_engine_clock_deep_sleep_khz = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 6
  %25 = ptrtoint ptr %min_engine_clock_deep_sleep_khz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_engine_clock_deep_sleep_khz, align 4
  %div27 = udiv i32 %26, 10
  %min_core_set_clock_in_sr = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 10
  %27 = ptrtoint ptr %min_core_set_clock_in_sr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div27, ptr %min_core_set_clock_in_sr, align 8
  %min_memory_clock_khz = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 4
  %28 = ptrtoint ptr %min_memory_clock_khz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_memory_clock_khz, align 4
  %div30 = udiv i32 %29, 10
  %min_mem_set_clock = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 7
  %30 = ptrtoint ptr %min_mem_set_clock to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div30, ptr %min_mem_set_clock, align 4
  %31 = load i32, ptr %min_engine_clock_deep_sleep_khz, align 4
  %div34 = udiv i32 %31, 10
  %min_dcef_deep_sleep_set_clk = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 21
  %32 = ptrtoint ptr %min_dcef_deep_sleep_set_clk to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div34, ptr %min_dcef_deep_sleep_set_clk, align 8
  %min_dcfclock_khz = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 9
  %33 = ptrtoint ptr %min_dcfclock_khz to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %min_dcfclock_khz, align 4
  %div37 = udiv i32 %34, 10
  %min_dcef_set_clk = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 20
  %35 = ptrtoint ptr %min_dcef_set_clk to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div37, ptr %min_dcef_set_clk, align 4
  %all_displays_in_sync = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 12
  %36 = ptrtoint ptr %all_displays_in_sync to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %all_displays_in_sync, align 4, !range !88
  %multi_monitor_in_sync = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 14
  %38 = ptrtoint ptr %multi_monitor_in_sync to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %multi_monitor_in_sync, align 4
  %avail_mclk_switch_time_us = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 7
  %39 = ptrtoint ptr %avail_mclk_switch_time_us to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %avail_mclk_switch_time_us, align 4
  %min_vblank_time = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 13
  %41 = ptrtoint ptr %min_vblank_time to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %min_vblank_time, align 8
  %disp_clk_khz = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 11
  %42 = ptrtoint ptr %disp_clk_khz to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %disp_clk_khz, align 4
  %div46 = udiv i32 %43, 10
  %display_clk = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 18
  %44 = ptrtoint ptr %display_clk to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div46, ptr %display_clk, align 4
  %avail_mclk_switch_time_in_disp_active_us = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 8
  %45 = ptrtoint ptr %avail_mclk_switch_time_in_disp_active_us to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %avail_mclk_switch_time_in_disp_active_us, align 4
  %dce_tolerable_mclk_in_active_latency = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 19
  %47 = ptrtoint ptr %dce_tolerable_mclk_in_active_latency to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %dce_tolerable_mclk_in_active_latency, align 8
  %crtc_index = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 15
  %48 = ptrtoint ptr %crtc_index to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %crtc_index, align 4
  %conv51 = zext i8 %49 to i32
  %crtc_index54 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 15
  %50 = ptrtoint ptr %crtc_index54 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv51, ptr %crtc_index54, align 8
  %line_time_in_us = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 16
  %51 = ptrtoint ptr %line_time_in_us to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %line_time_in_us, align 4
  %line_time_in_us57 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 16
  %53 = ptrtoint ptr %line_time_in_us57 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %line_time_in_us57, align 4
  %v_refresh = getelementptr inbounds %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 0, i32 6
  %54 = ptrtoint ptr %v_refresh to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %v_refresh, align 4
  %vrefresh = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 12
  %56 = ptrtoint ptr %vrefresh to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %vrefresh, align 4
  %crossfire_display_index = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 6
  %57 = ptrtoint ptr %crossfire_display_index to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %crossfire_display_index, align 8
  %min_bus_bandwidth = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 9
  %58 = ptrtoint ptr %min_bus_bandwidth to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %min_bus_bandwidth, align 4
  %59 = load i8, ptr %display_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp137.not = icmp eq i8 %59, 0
  br i1 %cmp137.not, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.0138 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %pipe_idx = getelementptr %struct.dm_pp_display_configuration, ptr %pp_display_cfg, i32 0, i32 14, i32 %i.0138, i32 3
  %60 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pipe_idx, align 2
  %conv69 = zext i8 %61 to i32
  %add = add nuw nsw i32 %conv69, 1
  %controller_id = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 20, i32 11, i32 %i.0138, i32 1
  %62 = ptrtoint ptr %controller_id to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add, ptr %controller_id, align 4
  %inc = add nuw nsw i32 %i.0138, 1
  %63 = ptrtoint ptr %display_count to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %display_count, align 1
  %conv65 = zext i8 %64 to i32
  %cmp = icmp ult i32 %inc, %conv65
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %65 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pp_funcs, align 4
  %tobool73.not = icmp eq ptr %66, null
  br i1 %tobool73.not, label %for.end.if.end_crit_edge, label %land.lhs.true

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.end
  %display_configuration_change = getelementptr inbounds %struct.amd_pm_funcs, ptr %66, i32 0, i32 46
  %67 = ptrtoint ptr %display_configuration_change to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %display_configuration_change, align 4
  %tobool76.not = icmp eq ptr %68, null
  br i1 %tobool76.not, label %land.lhs.true.if.end_crit_edge, label %if.then77

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 %68(ptr noundef %70, ptr noundef %pm_display_cfg) #5
  br label %if.end

if.end:                                           ; preds = %if.then77, %land.lhs.true.if.end_crit_edge, %for.end.if.end_crit_edge
  tail call void @amdgpu_pm_compute_clocks(ptr noundef %1) #5
  br label %if.end84

if.end84:                                         ; preds = %if.end, %entry.if.end84_crit_edge
  ret i1 true
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_pm_compute_clocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_pp_get_clock_levels_by_type(ptr nocapture noundef readonly %ctx, i32 noundef %clk_type, ptr nocapture noundef %dc_clks) local_unnamed_addr #0 align 64 {
entry:
  %pp_clks = alloca %struct.amd_pp_clocks, align 4
  %validation_clks = alloca %struct.amd_pp_simple_clock_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %pp_clks) #5
  %4 = call ptr @memset(ptr %pp_clks, i32 0, i32 132)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %validation_clks) #5
  %5 = call ptr @memset(ptr %validation_clks, i32 0, i32 12)
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %get_clock_by_type = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 49
  %8 = ptrtoint ptr %get_clock_by_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_clock_by_type, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true.if.end12_crit_edge, label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %switch.tableidx = add i32 %clk_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 10
  br i1 %10, label %switch.hole_check, label %if.then.sw.default.i_crit_edge

if.then.sw.default.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

sw.default.i:                                     ; preds = %switch.hole_check.sw.default.i_crit_edge, %if.then.sw.default.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %clk_type) #5
  br label %dc_to_pp_clock_type.exit

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 991, %switch.maskindex
  %11 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %switch.lobit.not = icmp eq i16 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i_crit_edge, label %switch.lookup

switch.hole_check.sw.default.i_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.dm_pp_get_clock_levels_by_type, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dc_to_pp_clock_type.exit

dc_to_pp_clock_type.exit:                         ; preds = %switch.lookup, %sw.default.i
  %amd_pp_clk_type.0.i = phi i32 [ 0, %sw.default.i ], [ %switch.load, %switch.lookup ]
  %call9 = call i32 %9(ptr noundef %3, i32 noundef %amd_pp_clk_type.0.i, ptr noundef nonnull %pp_clks) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %dc_to_pp_clock_type.exit.if.end12_crit_edge, label %if.then11

dc_to_pp_clock_type.exit.if.end12_crit_edge:      ; preds = %dc_to_pp_clock_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %dc_to_pp_clock_type.exit
  %13 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_type, label %sw.default.i142 [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i140
    i32 3, label %sw.bb7.i141
  ]

sw.bb.i:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dc_clks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %dc_clks, align 4
  %clocks_in_khz.i = getelementptr inbounds %struct.dm_pp_clock_levels, ptr %dc_clks, i32 0, i32 1
  %15 = call ptr @memcpy(ptr %clocks_in_khz.i, ptr @__const.get_default_clock_levels.disp_clks_in_khz, i32 24)
  br label %cleanup

sw.bb2.i140:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dc_clks to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %dc_clks, align 4
  %clocks_in_khz4.i = getelementptr inbounds %struct.dm_pp_clock_levels, ptr %dc_clks, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %clocks_in_khz4.i, ptr @__const.get_default_clock_levels.sclks_in_khz, i32 24)
  br label %cleanup

sw.bb7.i141:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dc_clks to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %dc_clks, align 4
  %clocks_in_khz9.i = getelementptr inbounds %struct.dm_pp_clock_levels, ptr %dc_clks, i32 0, i32 1
  %19 = ptrtoint ptr %clocks_in_khz9.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 1430224110368000, ptr %clocks_in_khz9.i, align 4
  br label %cleanup

sw.default.i142:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dc_clks to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dc_clks, align 4
  br label %cleanup

if.end12:                                         ; preds = %dc_to_pp_clock_type.exit.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %21 = ptrtoint ptr %pp_clks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pp_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %22)
  %cmp.i = icmp ugt i32 %22, 16
  br i1 %cmp.i, label %do.end.i, label %if.end12.do.end49.i_crit_edge

if.end12.do.end49.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end49.i

do.end.i:                                         ; preds = %if.end12
  %switch.tableidx163 = add i32 %clk_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx163)
  %23 = icmp ult i32 %switch.tableidx163, 9
  br i1 %23, label %switch.lookup162, label %cond.false25.i

cond.false25.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %clk_type)
  %cmp26.i = icmp eq i32 %clk_type, 10
  %cond.i = select i1 %cmp26.i, ptr @.str.34, ptr @.str.35
  br label %cond.end42.i

switch.lookup162:                                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep164 = getelementptr inbounds [9 x ptr], ptr @switch.table.dm_pp_get_clock_levels_by_type.52, i32 0, i32 %switch.tableidx163
  %24 = ptrtoint ptr %switch.gep164 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load165 = load ptr, ptr %switch.gep164, align 4
  br label %cond.end42.i

cond.end42.i:                                     ; preds = %switch.lookup162, %cond.false25.i
  %cond43.i = phi ptr [ %cond.i, %cond.false25.i ], [ %switch.load165, %switch.lookup162 ]
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %cond43.i, i32 noundef %22, i32 noundef 16) #8
  br label %do.end49.i

do.end49.i:                                       ; preds = %cond.end42.i, %if.end12.do.end49.i_crit_edge
  %storemerge.i = phi i32 [ 16, %cond.end42.i ], [ %22, %if.end12.do.end49.i_crit_edge ]
  %25 = ptrtoint ptr %dc_clks to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge.i, ptr %dc_clks, align 4
  %switch.tableidx167 = add i32 %clk_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx167)
  %26 = icmp ult i32 %switch.tableidx167, 9
  br i1 %26, label %switch.lookup166, label %cond.false77.i

cond.false77.i:                                   ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %clk_type)
  %cmp78.i = icmp eq i32 %clk_type, 10
  %cond79.i = select i1 %cmp78.i, ptr @.str.34, ptr @.str.35
  br label %cond.end96.i

switch.lookup166:                                 ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep168 = getelementptr inbounds [9 x ptr], ptr @switch.table.dm_pp_get_clock_levels_by_type.53, i32 0, i32 %switch.tableidx167
  %27 = ptrtoint ptr %switch.gep168 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load169 = load ptr, ptr %switch.gep168, align 4
  br label %cond.end96.i

cond.end96.i:                                     ; preds = %switch.lookup166, %cond.false77.i
  %cond97.i = phi ptr [ %cond79.i, %cond.false77.i ], [ %switch.load169, %switch.lookup166 ]
  %call98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %cond97.i) #8
  %28 = ptrtoint ptr %dc_clks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dc_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp100153.not.i = icmp eq i32 %29, 0
  br i1 %cmp100153.not.i, label %cond.end96.i.pp_to_dc_clock_levels.exit_crit_edge, label %cond.end96.i.do.end103.i_crit_edge

cond.end96.i.do.end103.i_crit_edge:               ; preds = %cond.end96.i
  br label %do.end103.i

cond.end96.i.pp_to_dc_clock_levels.exit_crit_edge: ; preds = %cond.end96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pp_to_dc_clock_levels.exit

do.end103.i:                                      ; preds = %do.end103.i.do.end103.i_crit_edge, %cond.end96.i.do.end103.i_crit_edge
  %i.0154.i = phi i32 [ %inc.i, %do.end103.i.do.end103.i_crit_edge ], [ 0, %cond.end96.i.do.end103.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amd_pp_clocks, ptr %pp_clks, i32 0, i32 1, i32 %i.0154.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %call105.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %31) #8
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %arrayidx108.i = getelementptr %struct.dm_pp_clock_levels, ptr %dc_clks, i32 0, i32 1, i32 %i.0154.i
  %34 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx108.i, align 4
  %inc.i = add nuw i32 %i.0154.i, 1
  %35 = ptrtoint ptr %dc_clks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dc_clks, align 4
  %cmp100.i = icmp ult i32 %inc.i, %36
  br i1 %cmp100.i, label %do.end103.i.do.end103.i_crit_edge, label %do.end103.i.pp_to_dc_clock_levels.exit_crit_edge

do.end103.i.pp_to_dc_clock_levels.exit_crit_edge: ; preds = %do.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pp_to_dc_clock_levels.exit

do.end103.i.do.end103.i_crit_edge:                ; preds = %do.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end103.i

pp_to_dc_clock_levels.exit:                       ; preds = %do.end103.i.pp_to_dc_clock_levels.exit_crit_edge, %cond.end96.i.pp_to_dc_clock_levels.exit_crit_edge
  %37 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pp_funcs, align 4
  %tobool15.not = icmp eq ptr %38, null
  br i1 %tobool15.not, label %pp_to_dc_clock_levels.exit.do.end32_crit_edge, label %land.lhs.true16

pp_to_dc_clock_levels.exit.do.end32_crit_edge:    ; preds = %pp_to_dc_clock_levels.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

land.lhs.true16:                                  ; preds = %pp_to_dc_clock_levels.exit
  %get_display_mode_validation_clocks = getelementptr inbounds %struct.amd_pm_funcs, ptr %38, i32 0, i32 54
  %39 = ptrtoint ptr %get_display_mode_validation_clocks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_display_mode_validation_clocks, align 4
  %tobool19.not = icmp eq ptr %40, null
  br i1 %tobool19.not, label %land.lhs.true16.do.end32_crit_edge, label %if.then20

land.lhs.true16.do.end32_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

if.then20:                                        ; preds = %land.lhs.true16
  %call24 = call i32 %40(ptr noundef %3, ptr noundef nonnull %validation_clks) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then20.do.end32_crit_edge, label %do.end

if.then20.do.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  %41 = ptrtoint ptr %validation_clks to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 72000, ptr %validation_clks, align 4
  %memory_max_clock = getelementptr inbounds %struct.amd_pp_simple_clock_info, ptr %validation_clks, i32 0, i32 1
  %42 = ptrtoint ptr %memory_max_clock to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 80000, ptr %memory_max_clock, align 4
  %level = getelementptr inbounds %struct.amd_pp_simple_clock_info, ptr %validation_clks, i32 0, i32 2
  %43 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %level, align 4
  br label %do.end32

do.end32:                                         ; preds = %do.end, %if.then20.do.end32_crit_edge, %land.lhs.true16.do.end32_crit_edge, %pp_to_dc_clock_levels.exit.do.end32_crit_edge
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  %44 = ptrtoint ptr %validation_clks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %validation_clks, align 4
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %45) #8
  %memory_max_clock45 = getelementptr inbounds %struct.amd_pp_simple_clock_info, ptr %validation_clks, i32 0, i32 1
  %46 = ptrtoint ptr %memory_max_clock45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %memory_max_clock45, align 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %47) #8
  %level51 = getelementptr inbounds %struct.amd_pp_simple_clock_info, ptr %validation_clks, i32 0, i32 2
  %48 = ptrtoint ptr %level51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %level51, align 4
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %49) #8
  %50 = ptrtoint ptr %validation_clks to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %validation_clks, align 4
  %mul = mul i32 %51, 10
  store i32 %mul, ptr %validation_clks, align 4
  %52 = ptrtoint ptr %memory_max_clock45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %memory_max_clock45, align 4
  %mul55 = mul i32 %53, 10
  store i32 %mul55, ptr %memory_max_clock45, align 4
  %54 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %clk_type, label %do.end32.cleanup_crit_edge [
    i32 2, label %for.cond.preheader
    i32 3, label %for.cond72.preheader
  ]

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond72.preheader:                             ; preds = %do.end32
  %55 = ptrtoint ptr %dc_clks to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dc_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp74148.not = icmp eq i32 %56, 0
  br i1 %cmp74148.not, label %for.cond72.preheader.cleanup_crit_edge, label %for.cond72.preheader.for.body75_crit_edge

for.cond72.preheader.for.body75_crit_edge:        ; preds = %for.cond72.preheader
  br label %for.body75

for.cond72.preheader.cleanup_crit_edge:           ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end32
  %57 = ptrtoint ptr %dc_clks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dc_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp57150.not = icmp eq i32 %58, 0
  br i1 %cmp57150.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0151 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dm_pp_clock_levels, ptr %dc_clks, i32 0, i32 1, i32 %i.0151
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %mul)
  %cmp59 = icmp ugt i32 %60, %mul
  br i1 %cmp59, label %do.end63, label %for.inc

do.end63:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %58, i32 noundef %i.0151) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0151)
  %cmp67.not = icmp eq i32 %i.0151, 0
  %spec.select = select i1 %cmp67.not, i32 1, i32 %i.0151
  %61 = ptrtoint ptr %dc_clks to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select, ptr %dc_clks, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0151, 1
  %exitcond155.not = icmp eq i32 %inc, %58
  br i1 %exitcond155.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body75:                                       ; preds = %for.inc94.for.body75_crit_edge, %for.cond72.preheader.for.body75_crit_edge
  %i.1149 = phi i32 [ %inc95, %for.inc94.for.body75_crit_edge ], [ 0, %for.cond72.preheader.for.body75_crit_edge ]
  %arrayidx77 = getelementptr %struct.dm_pp_clock_levels, ptr %dc_clks, i32 0, i32 1, i32 %i.1149
  %62 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %mul55)
  %cmp79 = icmp ugt i32 %63, %mul55
  br i1 %cmp79, label %do.end83, label %for.inc94

do.end83:                                         ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #7
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %56, i32 noundef %i.1149) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1149)
  %cmp87.not = icmp eq i32 %i.1149, 0
  %spec.select139 = select i1 %cmp87.not, i32 1, i32 %i.1149
  %64 = ptrtoint ptr %dc_clks to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %spec.select139, ptr %dc_clks, align 4
  br label %cleanup

for.inc94:                                        ; preds = %for.body75
  %inc95 = add nuw i32 %i.1149, 1
  %exitcond.not = icmp eq i32 %inc95, %56
  br i1 %exitcond.not, label %for.inc94.cleanup_crit_edge, label %for.inc94.for.body75_crit_edge

for.inc94.for.body75_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body75

for.inc94.cleanup_crit_edge:                      ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc94.cleanup_crit_edge, %do.end83, %for.inc.cleanup_crit_edge, %do.end63, %for.cond.preheader.cleanup_crit_edge, %for.cond72.preheader.cleanup_crit_edge, %do.end32.cleanup_crit_edge, %sw.default.i142, %sw.bb7.i141, %sw.bb2.i140, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %validation_clks) #5
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %pp_clks) #5
  ret i1 true
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_pp_get_clock_levels_by_type_with_latency(ptr nocapture noundef readonly %ctx, i32 noundef %clk_type, ptr nocapture noundef %clk_level_info) local_unnamed_addr #0 align 64 {
entry:
  %pp_clks = alloca %struct.pp_clock_levels_with_latency, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %pp_clks) #5
  %4 = call ptr @memset(ptr %pp_clks, i32 0, i32 132)
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %5 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %get_clock_by_type_with_latency = getelementptr inbounds %struct.amd_pm_funcs, ptr %6, i32 0, i32 50
  %7 = ptrtoint ptr %get_clock_by_type_with_latency to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_clock_by_type_with_latency, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %switch.tableidx = add i32 %clk_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 10
  br i1 %9, label %switch.hole_check, label %if.then.sw.default.i_crit_edge

if.then.sw.default.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

sw.default.i:                                     ; preds = %switch.hole_check.sw.default.i_crit_edge, %if.then.sw.default.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %clk_type) #5
  br label %dc_to_pp_clock_type.exit

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 991, %switch.maskindex
  %10 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit.not = icmp eq i16 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i_crit_edge, label %switch.lookup

switch.hole_check.sw.default.i_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.dm_pp_get_clock_levels_by_type_with_latency, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dc_to_pp_clock_type.exit

dc_to_pp_clock_type.exit:                         ; preds = %switch.lookup, %sw.default.i
  %amd_pp_clk_type.0.i = phi i32 [ 0, %sw.default.i ], [ %switch.load, %switch.lookup ]
  %call6 = call i32 %8(ptr noundef %3, i32 noundef %amd_pp_clk_type.0.i, ptr noundef nonnull %pp_clks) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %dc_to_pp_clock_type.exit.if.end9_crit_edge, label %dc_to_pp_clock_type.exit.cleanup_crit_edge

dc_to_pp_clock_type.exit.cleanup_crit_edge:       ; preds = %dc_to_pp_clock_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dc_to_pp_clock_type.exit.if.end9_crit_edge:       ; preds = %dc_to_pp_clock_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %dc_to_pp_clock_type.exit.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %12 = ptrtoint ptr %pp_clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pp_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp.i = icmp ugt i32 %13, 16
  br i1 %cmp.i, label %do.end.i, label %if.end9.if.end.i_crit_edge

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %if.end9
  %switch.tableidx20 = add i32 %clk_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx20)
  %14 = icmp ult i32 %switch.tableidx20, 9
  br i1 %14, label %switch.lookup19, label %cond.false25.i

cond.false25.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %clk_type)
  %cmp26.i = icmp eq i32 %clk_type, 10
  %cond.i = select i1 %cmp26.i, ptr @.str.34, ptr @.str.35
  br label %cond.end42.i

switch.lookup19:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep21 = getelementptr inbounds [9 x ptr], ptr @switch.table.dm_pp_get_clock_levels_by_type_with_latency.54, i32 0, i32 %switch.tableidx20
  %15 = ptrtoint ptr %switch.gep21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load22 = load ptr, ptr %switch.gep21, align 4
  br label %cond.end42.i

cond.end42.i:                                     ; preds = %switch.lookup19, %cond.false25.i
  %cond43.i = phi ptr [ %cond.i, %cond.false25.i ], [ %switch.load22, %switch.lookup19 ]
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %cond43.i, i32 noundef %13, i32 noundef 16) #8
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end42.i, %if.end9.if.end.i_crit_edge
  %storemerge.i = phi i32 [ 16, %cond.end42.i ], [ %13, %if.end9.if.end.i_crit_edge ]
  %16 = ptrtoint ptr %clk_level_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge.i, ptr %clk_level_info, align 4
  %switch.tableidx24 = add i32 %clk_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx24)
  %17 = icmp ult i32 %switch.tableidx24, 9
  br i1 %17, label %switch.lookup23, label %cond.false74.i

cond.false74.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %clk_type)
  %cmp75.i = icmp eq i32 %clk_type, 10
  %cond76.i = select i1 %cmp75.i, ptr @.str.34, ptr @.str.35
  br label %cond.end93.i

switch.lookup23:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep25 = getelementptr inbounds [9 x ptr], ptr @switch.table.dm_pp_get_clock_levels_by_type_with_latency.55, i32 0, i32 %switch.tableidx24
  %18 = ptrtoint ptr %switch.gep25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load26 = load ptr, ptr %switch.gep25, align 4
  br label %cond.end93.i

cond.end93.i:                                     ; preds = %switch.lookup23, %cond.false74.i
  %cond94.i = phi ptr [ %cond76.i, %cond.false74.i ], [ %switch.load26, %switch.lookup23 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond94.i) #5
  %19 = ptrtoint ptr %clk_level_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_level_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp96156.not.i = icmp eq i32 %20, 0
  br i1 %cmp96156.not.i, label %cond.end93.i.cleanup_crit_edge, label %cond.end93.i.for.body.i_crit_edge

cond.end93.i.for.body.i_crit_edge:                ; preds = %cond.end93.i
  br label %for.body.i

cond.end93.i.cleanup_crit_edge:                   ; preds = %cond.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.end93.i.for.body.i_crit_edge
  %i.0157.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %cond.end93.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pp_clock_levels_with_latency, ptr %pp_clks, i32 0, i32 1, i32 %i.0157.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef %22) #5
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %arrayidx101.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %clk_level_info, i32 0, i32 1, i32 %i.0157.i
  %25 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx101.i, align 4
  %latency_in_us.i = getelementptr %struct.pp_clock_levels_with_latency, ptr %pp_clks, i32 0, i32 1, i32 %i.0157.i, i32 1
  %26 = ptrtoint ptr %latency_in_us.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %latency_in_us.i, align 4
  %latency_in_us107.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %clk_level_info, i32 0, i32 1, i32 %i.0157.i, i32 1
  %28 = ptrtoint ptr %latency_in_us107.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %latency_in_us107.i, align 4
  %inc.i = add nuw i32 %i.0157.i, 1
  %29 = ptrtoint ptr %clk_level_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clk_level_info, align 4
  %cmp96.i = icmp ult i32 %inc.i, %30
  br i1 %cmp96.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %cond.end93.i.cleanup_crit_edge, %dc_to_pp_clock_type.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %dc_to_pp_clock_type.exit.cleanup_crit_edge ], [ true, %cond.end93.i.cleanup_crit_edge ], [ true, %for.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %pp_clks) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_pp_get_clock_levels_by_type_with_voltage(ptr nocapture noundef readonly %ctx, i32 noundef %clk_type, ptr nocapture noundef %clk_level_info) local_unnamed_addr #0 align 64 {
entry:
  %pp_clk_info = alloca %struct.pp_clock_levels_with_voltage, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %pp_clk_info) #5
  %4 = call ptr @memset(ptr %pp_clk_info, i32 0, i32 132)
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %5 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %get_clock_by_type_with_voltage = getelementptr inbounds %struct.amd_pm_funcs, ptr %6, i32 0, i32 51
  %7 = ptrtoint ptr %get_clock_by_type_with_voltage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_clock_by_type_with_voltage, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %switch.tableidx = add i32 %clk_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 10
  br i1 %9, label %switch.hole_check, label %if.then.sw.default.i_crit_edge

if.then.sw.default.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

sw.default.i:                                     ; preds = %switch.hole_check.sw.default.i_crit_edge, %if.then.sw.default.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %clk_type) #5
  br label %dc_to_pp_clock_type.exit

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 991, %switch.maskindex
  %10 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit.not = icmp eq i16 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i_crit_edge, label %switch.lookup

switch.hole_check.sw.default.i_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.dm_pp_get_clock_levels_by_type_with_voltage, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dc_to_pp_clock_type.exit

dc_to_pp_clock_type.exit:                         ; preds = %switch.lookup, %sw.default.i
  %amd_pp_clk_type.0.i = phi i32 [ 0, %sw.default.i ], [ %switch.load, %switch.lookup ]
  %call6 = call i32 %8(ptr noundef %3, i32 noundef %amd_pp_clk_type.0.i, ptr noundef nonnull %pp_clk_info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %dc_to_pp_clock_type.exit.if.end9_crit_edge, label %dc_to_pp_clock_type.exit.cleanup_crit_edge

dc_to_pp_clock_type.exit.cleanup_crit_edge:       ; preds = %dc_to_pp_clock_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dc_to_pp_clock_type.exit.if.end9_crit_edge:       ; preds = %dc_to_pp_clock_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %dc_to_pp_clock_type.exit.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %12 = ptrtoint ptr %pp_clk_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pp_clk_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp.i = icmp ugt i32 %13, 16
  br i1 %cmp.i, label %do.end.i, label %if.end9.do.end50.i_crit_edge

if.end9.do.end50.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.i

do.end.i:                                         ; preds = %if.end9
  %switch.tableidx20 = add i32 %clk_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx20)
  %14 = icmp ult i32 %switch.tableidx20, 9
  br i1 %14, label %switch.lookup19, label %cond.false25.i

cond.false25.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %clk_type)
  %cmp26.i = icmp eq i32 %clk_type, 10
  %cond.i = select i1 %cmp26.i, ptr @.str.34, ptr @.str.35
  br label %cond.end42.i

switch.lookup19:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep21 = getelementptr inbounds [9 x ptr], ptr @switch.table.dm_pp_get_clock_levels_by_type_with_voltage.56, i32 0, i32 %switch.tableidx20
  %15 = ptrtoint ptr %switch.gep21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load22 = load ptr, ptr %switch.gep21, align 4
  br label %cond.end42.i

cond.end42.i:                                     ; preds = %switch.lookup19, %cond.false25.i
  %cond43.i = phi ptr [ %cond.i, %cond.false25.i ], [ %switch.load22, %switch.lookup19 ]
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %cond43.i, i32 noundef %13, i32 noundef 16) #8
  br label %do.end50.i

do.end50.i:                                       ; preds = %cond.end42.i, %if.end9.do.end50.i_crit_edge
  %storemerge.i = phi i32 [ 16, %cond.end42.i ], [ %13, %if.end9.do.end50.i_crit_edge ]
  %16 = ptrtoint ptr %clk_level_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge.i, ptr %clk_level_info, align 4
  %switch.tableidx24 = add i32 %clk_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx24)
  %17 = icmp ult i32 %switch.tableidx24, 9
  br i1 %17, label %switch.lookup23, label %cond.false78.i

cond.false78.i:                                   ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %clk_type)
  %cmp79.i = icmp eq i32 %clk_type, 10
  %cond80.i = select i1 %cmp79.i, ptr @.str.34, ptr @.str.35
  br label %cond.end97.i

switch.lookup23:                                  ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep25 = getelementptr inbounds [9 x ptr], ptr @switch.table.dm_pp_get_clock_levels_by_type_with_voltage.57, i32 0, i32 %switch.tableidx24
  %18 = ptrtoint ptr %switch.gep25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load26 = load ptr, ptr %switch.gep25, align 4
  br label %cond.end97.i

cond.end97.i:                                     ; preds = %switch.lookup23, %cond.false78.i
  %cond98.i = phi ptr [ %cond80.i, %cond.false78.i ], [ %switch.load26, %switch.lookup23 ]
  %call99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %cond98.i) #8
  %19 = ptrtoint ptr %clk_level_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_level_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp101171.not.i = icmp eq i32 %20, 0
  br i1 %cmp101171.not.i, label %cond.end97.i.cleanup_crit_edge, label %cond.end97.i.do.end104.i_crit_edge

cond.end97.i.do.end104.i_crit_edge:               ; preds = %cond.end97.i
  br label %do.end104.i

cond.end97.i.cleanup_crit_edge:                   ; preds = %cond.end97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end104.i:                                      ; preds = %do.end104.i.do.end104.i_crit_edge, %cond.end97.i.do.end104.i_crit_edge
  %i.0172.i = phi i32 [ %inc.i, %do.end104.i.do.end104.i_crit_edge ], [ 0, %cond.end97.i.do.end104.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pp_clock_levels_with_voltage, ptr %pp_clk_info, i32 0, i32 1, i32 %i.0172.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %voltage_in_mv.i = getelementptr %struct.pp_clock_levels_with_voltage, ptr %pp_clk_info, i32 0, i32 1, i32 %i.0172.i, i32 1
  %23 = ptrtoint ptr %voltage_in_mv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %voltage_in_mv.i, align 4
  %call108.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %22, i32 noundef %24) #8
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %arrayidx113.i = getelementptr %struct.dm_pp_clock_levels_with_voltage, ptr %clk_level_info, i32 0, i32 1, i32 %i.0172.i
  %27 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx113.i, align 4
  %28 = ptrtoint ptr %voltage_in_mv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %voltage_in_mv.i, align 4
  %voltage_in_mv120.i = getelementptr %struct.dm_pp_clock_levels_with_voltage, ptr %clk_level_info, i32 0, i32 1, i32 %i.0172.i, i32 1
  %30 = ptrtoint ptr %voltage_in_mv120.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %voltage_in_mv120.i, align 4
  %inc.i = add nuw i32 %i.0172.i, 1
  %31 = ptrtoint ptr %clk_level_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %clk_level_info, align 4
  %cmp101.i = icmp ult i32 %inc.i, %32
  br i1 %cmp101.i, label %do.end104.i.do.end104.i_crit_edge, label %do.end104.i.cleanup_crit_edge

do.end104.i.cleanup_crit_edge:                    ; preds = %do.end104.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end104.i.do.end104.i_crit_edge:                ; preds = %do.end104.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end104.i

cleanup:                                          ; preds = %do.end104.i.cleanup_crit_edge, %cond.end97.i.cleanup_crit_edge, %dc_to_pp_clock_type.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %dc_to_pp_clock_type.exit.cleanup_crit_edge ], [ true, %cond.end97.i.cleanup_crit_edge ], [ true, %do.end104.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %pp_clk_info) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_pp_notify_wm_clock_changes(ptr nocapture noundef readonly %ctx, ptr noundef %wm_with_clock_ranges) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %4 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp_funcs3, align 4
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type, align 8
  %8 = add i32 %7, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %8)
  %9 = icmp ult i32 %8, -4
  %tobool.not = icmp eq ptr %5, null
  %or.cond22 = select i1 %9, i1 true, i1 %tobool.not
  br i1 %or.cond22, label %entry.if.end12_crit_edge, label %land.lhs.true7

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true7:                                   ; preds = %entry
  %set_watermarks_for_clocks_ranges = getelementptr inbounds %struct.amd_pm_funcs, ptr %5, i32 0, i32 52
  %10 = ptrtoint ptr %set_watermarks_for_clocks_ranges to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_watermarks_for_clocks_ranges, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %land.lhs.true7.if.end12_crit_edge, label %if.then

land.lhs.true7.if.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true7
  %call = tail call i32 %11(ptr noundef %3, ptr noundef %wm_with_clock_ranges) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then.cleanup_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.then.if.end12_crit_edge, %land.lhs.true7.if.end12_crit_edge, %entry.if.end12_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end12 ], [ true, %if.then.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dm_pp_apply_power_level_change_request(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %level_change_req) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_pp_apply_clock_for_voltage_request(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %clock_for_voltage_req) local_unnamed_addr #0 align 64 {
entry:
  %pp_clock_request = alloca %struct.pp_display_clock_request, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_context, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pp_clock_request) #5
  %2 = ptrtoint ptr %clock_for_voltage_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_for_voltage_req, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 10
  br i1 %4, label %switch.hole_check, label %entry.dc_to_pp_clock_type.exit_crit_edge

entry.dc_to_pp_clock_type.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_to_pp_clock_type.exit

dc_to_pp_clock_type.exit:                         ; preds = %switch.hole_check.dc_to_pp_clock_type.exit_crit_edge, %entry.dc_to_pp_clock_type.exit_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %3) #5
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 991, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.dc_to_pp_clock_type.exit_crit_edge, label %switch.lookup

switch.hole_check.dc_to_pp_clock_type.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_to_pp_clock_type.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.dm_pp_apply_clock_for_voltage_request, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = ptrtoint ptr %pp_clock_request to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %pp_clock_request, align 8
  %clocks_in_khz24 = getelementptr inbounds %struct.dm_pp_clock_for_voltage_req, ptr %clock_for_voltage_req, i32 0, i32 1
  %8 = ptrtoint ptr %clocks_in_khz24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clocks_in_khz24, align 4
  %clock_freq_in_khz25 = getelementptr inbounds %struct.pp_display_clock_request, ptr %pp_clock_request, i32 0, i32 1
  %10 = ptrtoint ptr %clock_freq_in_khz25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %clock_freq_in_khz25, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %11 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pp_funcs, align 4
  %tobool2.not = icmp eq ptr %12, null
  br i1 %tobool2.not, label %switch.lookup.cleanup_crit_edge, label %land.lhs.true

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %switch.lookup
  %display_clock_voltage_request = getelementptr inbounds %struct.amd_pm_funcs, ptr %12, i32 0, i32 53
  %13 = ptrtoint ptr %display_clock_voltage_request to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %display_clock_voltage_request, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %powerplay, align 8
  %call11 = call i32 %14(ptr noundef %16, ptr noundef nonnull %pp_clock_request) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %phi.cmp = icmp eq i32 %call11, 0
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %dc_to_pp_clock_type.exit
  %retval.0 = phi i1 [ false, %dc_to_pp_clock_type.exit ], [ %phi.cmp, %if.then6 ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %switch.lookup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pp_clock_request) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_pp_get_static_clocks(ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %static_clk_info) local_unnamed_addr #0 align 64 {
entry:
  %pp_clk_info = alloca %struct.amd_pp_clock_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_context, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pp_clk_info) #5
  %2 = call ptr @memset(ptr %pp_clk_info, i32 0, i32 36)
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %3 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pp_funcs, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %get_current_clocks = getelementptr inbounds %struct.amd_pm_funcs, ptr %4, i32 0, i32 48
  %5 = ptrtoint ptr %get_current_clocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_current_clocks, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %powerplay, align 8
  %call = call i32 %6(ptr noundef %8, ptr noundef nonnull %pp_clk_info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.then
  %max_clocks_state = getelementptr inbounds %struct.amd_pp_clock_info, ptr %pp_clk_info, i32 0, i32 8
  %9 = ptrtoint ptr %max_clocks_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_clocks_state, align 4
  %switch.tableidx = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 8
  br i1 %11, label %if.end10.pp_to_dc_powerlevel_state.exit_crit_edge, label %sw.default.i

if.end10.pp_to_dc_powerlevel_state.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %pp_to_dc_powerlevel_state.exit

sw.default.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i32 noundef %10) #5
  br label %pp_to_dc_powerlevel_state.exit

pp_to_dc_powerlevel_state.exit:                   ; preds = %sw.default.i, %if.end10.pp_to_dc_powerlevel_state.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ %10, %if.end10.pp_to_dc_powerlevel_state.exit_crit_edge ]
  %max_clocks_state12 = getelementptr inbounds %struct.dm_pp_static_clock_info, ptr %static_clk_info, i32 0, i32 2
  %12 = ptrtoint ptr %max_clocks_state12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %max_clocks_state12, align 4
  %max_memory_clock = getelementptr inbounds %struct.amd_pp_clock_info, ptr %pp_clk_info, i32 0, i32 3
  %13 = ptrtoint ptr %max_memory_clock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_memory_clock, align 4
  %mul = mul i32 %14, 10
  %max_mclk_khz = getelementptr inbounds %struct.dm_pp_static_clock_info, ptr %static_clk_info, i32 0, i32 1
  %15 = ptrtoint ptr %max_mclk_khz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %max_mclk_khz, align 4
  %max_engine_clock = getelementptr inbounds %struct.amd_pp_clock_info, ptr %pp_clk_info, i32 0, i32 1
  %16 = ptrtoint ptr %max_engine_clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_engine_clock, align 4
  %mul13 = mul i32 %17, 10
  %18 = ptrtoint ptr %static_clk_info to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul13, ptr %static_clk_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %pp_to_dc_powerlevel_state.exit, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %pp_to_dc_powerlevel_state.exit ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pp_clk_info) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_pp_get_funcs(ptr noundef %ctx, ptr noundef writeonly %funcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dce_version = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %dce_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dce_version, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %sw.default [
    i32 13, label %entry.sw.bb_crit_edge
    i32 14, label %entry.sw.bb_crit_edge44
    i32 15, label %sw.bb2
    i32 17, label %sw.bb12
  ]

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge44
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %funcs, align 4
  %dm = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %dm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctx, ptr %dm, align 4
  %set_wm_ranges = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %set_wm_ranges to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pp_rv_set_wm_ranges, ptr %set_wm_ranges, align 4
  %set_pme_wa_enable = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 7
  %6 = ptrtoint ptr %set_pme_wa_enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pp_rv_set_pme_wa_enable, ptr %set_pme_wa_enable, align 4
  %set_display_count = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %set_display_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pp_rv_set_active_display_count, ptr %set_display_count, align 4
  %set_min_deep_sleep_dcfclk = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %set_min_deep_sleep_dcfclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pp_rv_set_min_deep_sleep_dcfclk, ptr %set_min_deep_sleep_dcfclk, align 4
  %set_hard_min_dcfclk_by_freq = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %set_hard_min_dcfclk_by_freq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pp_rv_set_hard_min_dcefclk_by_freq, ptr %set_hard_min_dcfclk_by_freq, align 4
  %set_hard_min_fclk_by_freq = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %set_hard_min_fclk_by_freq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pp_rv_set_hard_min_fclk_by_freq, ptr %set_hard_min_fclk_by_freq, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %funcs, align 4
  %dm6 = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %dm6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ctx, ptr %dm6, align 4
  %set_display_count7 = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %set_display_count7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @pp_nv_set_display_count, ptr %set_display_count7, align 4
  %set_hard_min_dcfclk_by_freq8 = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %set_hard_min_dcfclk_by_freq8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @pp_nv_set_hard_min_dcefclk_by_freq, ptr %set_hard_min_dcfclk_by_freq8, align 4
  %set_min_deep_sleep_dcfclk9 = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %set_min_deep_sleep_dcfclk9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @pp_nv_set_min_deep_sleep_dcfclk, ptr %set_min_deep_sleep_dcfclk9, align 4
  %set_voltage_by_freq = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 7
  %16 = ptrtoint ptr %set_voltage_by_freq to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @pp_nv_set_voltage_by_freq, ptr %set_voltage_by_freq, align 4
  %set_wm_ranges10 = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 8
  %17 = ptrtoint ptr %set_wm_ranges10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pp_nv_set_wm_ranges, ptr %set_wm_ranges10, align 4
  %set_pme_wa_enable11 = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 6
  %18 = ptrtoint ptr %set_pme_wa_enable11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %set_pme_wa_enable11, align 4
  %set_hard_min_uclk_by_freq = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %set_hard_min_uclk_by_freq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pp_nv_set_hard_min_uclk_by_freq, ptr %set_hard_min_uclk_by_freq, align 4
  %get_maximum_sustainable_clocks = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 9
  %20 = ptrtoint ptr %get_maximum_sustainable_clocks to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pp_nv_get_maximum_sustainable_clocks, ptr %get_maximum_sustainable_clocks, align 4
  %get_uclk_dpm_states = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 10
  %21 = ptrtoint ptr %get_uclk_dpm_states to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pp_nv_get_uclk_dpm_states, ptr %get_uclk_dpm_states, align 4
  %set_pstate_handshake_support = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 11
  %22 = ptrtoint ptr %set_pstate_handshake_support to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pp_nv_set_pstate_handshake_support, ptr %set_pstate_handshake_support, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %funcs, align 4
  %dm16 = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %dm16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ctx, ptr %dm16, align 4
  %set_wm_ranges17 = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %set_wm_ranges17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pp_rn_set_wm_ranges, ptr %set_wm_ranges17, align 4
  %get_dpm_clock_table = getelementptr inbounds %struct.pp_smu_funcs, ptr %funcs, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %get_dpm_clock_table to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @pp_rn_get_dpm_clock_table, ptr %get_dpm_clock_table, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_rv_set_wm_ranges(ptr nocapture noundef readonly %pp, ptr nocapture noundef readonly %ranges) #0 align 64 {
entry:
  %wm_with_clock_ranges = alloca %struct.dm_pp_wm_sets_with_clock_ranges_soc15, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %wm_with_clock_ranges) #5
  %8 = getelementptr inbounds i8, ptr %wm_with_clock_ranges, i32 8
  %9 = call ptr @memset(ptr %8, i32 255, i32 160)
  %wm_dmif_clocks_ranges = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 2
  %wm_mcif_clocks_ranges = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 3
  %10 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ranges, align 4
  %12 = ptrtoint ptr %wm_with_clock_ranges to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %wm_with_clock_ranges, align 4
  %num_writer_wm_sets = getelementptr inbounds %struct.pp_smu_wm_range_sets, ptr %ranges, i32 0, i32 2
  %13 = ptrtoint ptr %num_writer_wm_sets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_writer_wm_sets, align 4
  %num_wm_mcif_sets = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 1
  %15 = ptrtoint ptr %num_wm_mcif_sets to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %num_wm_mcif_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp142.not = icmp eq i32 %11, 0
  br i1 %cmp142.not, label %entry.for.cond34.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond34.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond34.preheader

for.cond34.preheaderthread-pre-split:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %num_wm_mcif_sets to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %num_wm_mcif_sets, align 4
  br label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond34.preheaderthread-pre-split, %entry.for.cond34.preheader_crit_edge
  %17 = phi i32 [ %.pr, %for.cond34.preheaderthread-pre-split ], [ %14, %entry.for.cond34.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp36144.not = icmp eq i32 %17, 0
  br i1 %cmp36144.not, label %for.cond34.preheader.for.end83_crit_edge, label %for.cond34.preheader.for.body38_crit_edge

for.cond34.preheader.for.body38_crit_edge:        ; preds = %for.cond34.preheader
  br label %for.body38

for.cond34.preheader.for.end83_crit_edge:         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end83

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0143 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pp_smu_wm_range_sets, ptr %ranges, i32 0, i32 1, i32 %i.0143
  %wm_inst = getelementptr %struct.pp_smu_wm_range_sets, ptr %ranges, i32 0, i32 1, i32 %i.0143, i32 4
  %18 = ptrtoint ptr %wm_inst to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wm_inst, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp6 = icmp ugt i8 %19, 3
  %narrow = select i1 %cmp6, i8 0, i8 %19
  %spec.select = zext i8 %narrow to i32
  %20 = getelementptr %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, ptr %wm_dmif_clocks_ranges, i32 %i.0143
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %20, align 4
  %max_drain_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %ranges, i32 0, i32 1, i32 %i.0143, i32 3
  %22 = ptrtoint ptr %max_drain_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %max_drain_clk_mhz, align 2
  %conv17 = zext i16 %23 to i32
  %mul = mul nuw nsw i32 %conv17, 1000
  %wm_max_dcfclk_clk_in_khz = getelementptr %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, ptr %wm_dmif_clocks_ranges, i32 %i.0143, i32 2
  %24 = ptrtoint ptr %wm_max_dcfclk_clk_in_khz to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %wm_max_dcfclk_clk_in_khz, align 4
  %min_drain_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %ranges, i32 0, i32 1, i32 %i.0143, i32 2
  %25 = ptrtoint ptr %min_drain_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %min_drain_clk_mhz, align 2
  %conv21 = zext i16 %26 to i32
  %mul22 = mul nuw nsw i32 %conv21, 1000
  %wm_min_dcfclk_clk_in_khz = getelementptr %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, ptr %wm_dmif_clocks_ranges, i32 %i.0143, i32 1
  %27 = ptrtoint ptr %wm_min_dcfclk_clk_in_khz to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul22, ptr %wm_min_dcfclk_clk_in_khz, align 4
  %max_fill_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %ranges, i32 0, i32 1, i32 %i.0143, i32 1
  %28 = ptrtoint ptr %max_fill_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max_fill_clk_mhz, align 2
  %conv26 = zext i16 %29 to i32
  %mul27 = mul nuw nsw i32 %conv26, 1000
  %wm_max_mem_clk_in_khz = getelementptr %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, ptr %wm_dmif_clocks_ranges, i32 %i.0143, i32 4
  %30 = ptrtoint ptr %wm_max_mem_clk_in_khz to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul27, ptr %wm_max_mem_clk_in_khz, align 4
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 2
  %conv31 = zext i16 %32 to i32
  %mul32 = mul nuw nsw i32 %conv31, 1000
  %wm_min_mem_clk_in_khz = getelementptr %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, ptr %wm_dmif_clocks_ranges, i32 %i.0143, i32 3
  %33 = ptrtoint ptr %wm_min_mem_clk_in_khz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul32, ptr %wm_min_mem_clk_in_khz, align 4
  %inc = add nuw i32 %i.0143, 1
  %34 = ptrtoint ptr %wm_with_clock_ranges to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wm_with_clock_ranges, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond34.preheaderthread-pre-split

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.cond34.preheader.for.body38_crit_edge
  %i.1145 = phi i32 [ %inc82, %for.body38.for.body38_crit_edge ], [ 0, %for.cond34.preheader.for.body38_crit_edge ]
  %arrayidx39 = getelementptr %struct.pp_smu_wm_range_sets, ptr %ranges, i32 0, i32 3, i32 %i.1145
  %wm_inst40 = getelementptr %struct.pp_smu_wm_range_sets, ptr %ranges, i32 0, i32 3, i32 %i.1145, i32 4
  %36 = ptrtoint ptr %wm_inst40 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %wm_inst40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp42 = icmp ugt i8 %37, 3
  %narrow147 = select i1 %cmp42, i8 0, i8 %37
  %spec.select146 = zext i8 %narrow147 to i32
  %38 = getelementptr %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, ptr %wm_mcif_clocks_ranges, i32 %i.1145
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select146, ptr %38, align 4
  %max_fill_clk_mhz57 = getelementptr %struct.pp_smu_wm_range_sets, ptr %ranges, i32 0, i32 3, i32 %i.1145, i32 1
  %40 = ptrtoint ptr %max_fill_clk_mhz57 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %max_fill_clk_mhz57, align 2
  %conv58 = zext i16 %41 to i32
  %mul59 = mul nuw nsw i32 %conv58, 1000
  %wm_max_socclk_clk_in_khz = getelementptr %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, ptr %wm_mcif_clocks_ranges, i32 %i.1145, i32 2
  %42 = ptrtoint ptr %wm_max_socclk_clk_in_khz to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul59, ptr %wm_max_socclk_clk_in_khz, align 4
  %43 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx39, align 2
  %conv64 = zext i16 %44 to i32
  %mul65 = mul nuw nsw i32 %conv64, 1000
  %wm_min_socclk_clk_in_khz = getelementptr %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, ptr %wm_mcif_clocks_ranges, i32 %i.1145, i32 1
  %45 = ptrtoint ptr %wm_min_socclk_clk_in_khz to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul65, ptr %wm_min_socclk_clk_in_khz, align 4
  %max_drain_clk_mhz69 = getelementptr %struct.pp_smu_wm_range_sets, ptr %ranges, i32 0, i32 3, i32 %i.1145, i32 3
  %46 = ptrtoint ptr %max_drain_clk_mhz69 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %max_drain_clk_mhz69, align 2
  %conv70 = zext i16 %47 to i32
  %mul71 = mul nuw nsw i32 %conv70, 1000
  %wm_max_mem_clk_in_khz73 = getelementptr %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, ptr %wm_mcif_clocks_ranges, i32 %i.1145, i32 4
  %48 = ptrtoint ptr %wm_max_mem_clk_in_khz73 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul71, ptr %wm_max_mem_clk_in_khz73, align 4
  %min_drain_clk_mhz76 = getelementptr %struct.pp_smu_wm_range_sets, ptr %ranges, i32 0, i32 3, i32 %i.1145, i32 2
  %49 = ptrtoint ptr %min_drain_clk_mhz76 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %min_drain_clk_mhz76, align 2
  %conv77 = zext i16 %50 to i32
  %mul78 = mul nuw nsw i32 %conv77, 1000
  %wm_min_mem_clk_in_khz80 = getelementptr %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, ptr %wm_mcif_clocks_ranges, i32 %i.1145, i32 3
  %51 = ptrtoint ptr %wm_min_mem_clk_in_khz80 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul78, ptr %wm_min_mem_clk_in_khz80, align 4
  %inc82 = add nuw i32 %i.1145, 1
  %52 = ptrtoint ptr %num_wm_mcif_sets to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_wm_mcif_sets, align 4
  %cmp36 = icmp ult i32 %inc82, %53
  br i1 %cmp36, label %for.body38.for.body38_crit_edge, label %for.body38.for.end83_crit_edge

for.body38.for.end83_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end83

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body38

for.end83:                                        ; preds = %for.body38.for.end83_crit_edge, %for.cond34.preheader.for.end83_crit_edge
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.end83.if.end87_crit_edge, label %land.lhs.true

for.end83.if.end87_crit_edge:                     ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

land.lhs.true:                                    ; preds = %for.end83
  %set_watermarks_for_clocks_ranges = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 52
  %54 = ptrtoint ptr %set_watermarks_for_clocks_ranges to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_watermarks_for_clocks_ranges, align 4
  %tobool84.not = icmp eq ptr %55, null
  br i1 %tobool84.not, label %land.lhs.true.if.end87_crit_edge, label %if.then85

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then85:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = call i32 %55(ptr noundef %5, ptr noundef nonnull %wm_with_clock_ranges) #5
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %land.lhs.true.if.end87_crit_edge, %for.end83.if.end87_crit_edge
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %wm_with_clock_ranges) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_rv_set_pme_wa_enable(ptr nocapture noundef readonly %pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %notify_smu_enable_pwe = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 55
  %8 = ptrtoint ptr %notify_smu_enable_pwe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notify_smu_enable_pwe, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_rv_set_active_display_count(ptr nocapture noundef readonly %pp, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %set_active_display_count = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 57
  %8 = ptrtoint ptr %set_active_display_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_active_display_count, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5, i32 noundef %count) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_rv_set_min_deep_sleep_dcfclk(ptr nocapture noundef readonly %pp, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %set_min_deep_sleep_dcefclk = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 60
  %8 = ptrtoint ptr %set_min_deep_sleep_dcefclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_min_deep_sleep_dcefclk, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5, i32 noundef %clock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_rv_set_hard_min_dcefclk_by_freq(ptr nocapture noundef readonly %pp, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %set_hard_min_dcefclk_by_freq = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 58
  %8 = ptrtoint ptr %set_hard_min_dcefclk_by_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_hard_min_dcefclk_by_freq, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5, i32 noundef %clock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_rv_set_hard_min_fclk_by_freq(ptr nocapture noundef readonly %pp, i32 noundef %mhz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %set_hard_min_fclk_by_freq = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 59
  %8 = ptrtoint ptr %set_hard_min_fclk_by_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_hard_min_fclk_by_freq, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5, i32 noundef %mhz) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_nv_set_display_count(ptr nocapture noundef readonly %pp, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %set_active_display_count = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 57
  %8 = ptrtoint ptr %set_active_display_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_active_display_count, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  %. = select i1 %tobool6.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %lor.lhs.false.cleanup_crit_edge ], [ 3, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_nv_set_hard_min_dcefclk_by_freq(ptr nocapture noundef readonly %pp, i32 noundef %mhz) #0 align 64 {
entry:
  %clock_req = alloca %struct.pp_display_clock_request, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clock_req) #5
  %8 = getelementptr inbounds %struct.pp_display_clock_request, ptr %clock_req, i32 0, i32 1
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %display_clock_voltage_request = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 53
  %9 = ptrtoint ptr %display_clock_voltage_request to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %display_clock_voltage_request, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %clock_req to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %clock_req, align 4
  %mul = mul i32 %mhz, 1000
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %8, align 4
  %call = call i32 %10(ptr noundef %5, ptr noundef nonnull %clock_req) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  %. = select i1 %tobool6.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %lor.lhs.false.cleanup_crit_edge ], [ 3, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clock_req) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_nv_set_min_deep_sleep_dcfclk(ptr nocapture noundef readonly %pp, i32 noundef %mhz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %set_min_deep_sleep_dcefclk = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 60
  %8 = ptrtoint ptr %set_min_deep_sleep_dcefclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_min_deep_sleep_dcefclk, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5, i32 noundef %mhz) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  %. = select i1 %tobool6.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %lor.lhs.false.cleanup_crit_edge ], [ 3, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_nv_set_voltage_by_freq(ptr nocapture noundef readonly %pp, i32 noundef %clock_id, i32 noundef %mhz) #0 align 64 {
entry:
  %clock_req = alloca %struct.pp_display_clock_request, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clock_req) #5
  %8 = ptrtoint ptr %clock_req to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %clock_req, align 4, !annotation !89
  %9 = getelementptr inbounds %struct.pp_display_clock_request, ptr %clock_req, i32 0, i32 1
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %display_clock_voltage_request = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 53
  %10 = ptrtoint ptr %display_clock_voltage_request to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %display_clock_voltage_request, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = zext i32 %clock_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %clock_id, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %clock_req to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %clock_req, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %clock_req to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %clock_req, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %clock_req to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %clock_req, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb, %if.end.sw.epilog_crit_edge
  %mul = mul i32 %mhz, 1000
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %9, align 4
  %17 = ptrtoint ptr %display_clock_voltage_request to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %display_clock_voltage_request, align 4
  %call = call i32 %18(ptr noundef %5, ptr noundef nonnull %clock_req) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  %. = select i1 %tobool10.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %lor.lhs.false.cleanup_crit_edge ], [ 3, %entry.cleanup_crit_edge ], [ %., %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clock_req) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_nv_set_wm_ranges(ptr nocapture noundef readonly %pp, ptr noundef %ranges) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %set_watermarks_for_clocks_ranges = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 52
  %8 = ptrtoint ptr %set_watermarks_for_clocks_ranges to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_watermarks_for_clocks_ranges, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5, ptr noundef %ranges) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_nv_set_hard_min_uclk_by_freq(ptr nocapture noundef readonly %pp, i32 noundef %mhz) #0 align 64 {
entry:
  %clock_req = alloca %struct.pp_display_clock_request, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clock_req) #5
  %8 = getelementptr inbounds %struct.pp_display_clock_request, ptr %clock_req, i32 0, i32 1
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %display_clock_voltage_request = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 53
  %9 = ptrtoint ptr %display_clock_voltage_request to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %display_clock_voltage_request, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %clock_req to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %clock_req, align 4
  %mul = mul i32 %mhz, 1000
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %8, align 4
  %call = call i32 %10(ptr noundef %5, ptr noundef nonnull %clock_req) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  %. = select i1 %tobool6.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %lor.lhs.false.cleanup_crit_edge ], [ 3, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clock_req) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_nv_get_maximum_sustainable_clocks(ptr nocapture noundef readonly %pp, ptr noundef %max_clocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %get_max_sustainable_clocks_by_dc = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 72
  %8 = ptrtoint ptr %get_max_sustainable_clocks_by_dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_max_sustainable_clocks_by_dc, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5, ptr noundef %max_clocks) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  %. = select i1 %tobool6.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %lor.lhs.false.cleanup_crit_edge ], [ 3, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_nv_get_uclk_dpm_states(ptr nocapture noundef readonly %pp, ptr noundef %clock_values_in_khz, ptr noundef %num_states) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %get_uclk_dpm_states = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 73
  %8 = ptrtoint ptr %get_uclk_dpm_states to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_uclk_dpm_states, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5, ptr noundef %clock_values_in_khz, ptr noundef %num_states) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  %. = select i1 %tobool6.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %lor.lhs.false.cleanup_crit_edge ], [ 3, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_nv_set_pstate_handshake_support(ptr nocapture noundef readonly %pp, i1 noundef zeroext %pstate_handshake_supported) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %display_disable_memory_clock_switch = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 71
  %8 = ptrtoint ptr %display_disable_memory_clock_switch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %display_disable_memory_clock_switch, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %lnot = xor i1 %pstate_handshake_supported, true
  %call = tail call i32 %9(ptr noundef %5, i1 noundef zeroext %lnot) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_rn_set_wm_ranges(ptr nocapture noundef readonly %pp, ptr noundef %ranges) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %set_watermarks_for_clocks_ranges = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 52
  %8 = ptrtoint ptr %set_watermarks_for_clocks_ranges to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_watermarks_for_clocks_ranges, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5, ptr noundef %ranges) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_rn_get_dpm_clock_table(ptr nocapture noundef readonly %pp, ptr noundef %clock_table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.pp_smu, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_context, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %6 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %get_dpm_clock_table = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 74
  %8 = ptrtoint ptr %get_dpm_clock_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_dpm_clock_table, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %9(ptr noundef %5, ptr noundef %clock_table) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  %. = select i1 %tobool6.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %lor.lhs.false.cleanup_crit_edge ], [ 3, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !69, !70, !72, !73, !75, !76, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 321, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_pp_get_clock_levels_by_type._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_pp_get_clock_levels_by_type._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 328, i32 2}
!8 = !{ptr @dm_pp_get_clock_levels_by_type._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dm_pp_get_clock_levels_by_type._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 329, i32 2}
!12 = !{ptr @dm_pp_get_clock_levels_by_type._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dm_pp_get_clock_levels_by_type._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 331, i32 2}
!16 = !{ptr @dm_pp_get_clock_levels_by_type._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dm_pp_get_clock_levels_by_type._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 333, i32 2}
!20 = !{ptr @dm_pp_get_clock_levels_by_type._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dm_pp_get_clock_levels_by_type._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 347, i32 5}
!24 = !{ptr @dm_pp_get_clock_levels_by_type._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dm_pp_get_clock_levels_by_type._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 356, i32 5}
!28 = !{ptr @dm_pp_get_clock_levels_by_type._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @dm_pp_get_clock_levels_by_type._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 874, i32 3}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 179, i32 3}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 222, i32 3}
!36 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pp_to_dc_clock_levels._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pp_to_dc_clock_levels._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.26, !35, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.27, !35, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.28, !35, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.29, !35, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.30, !35, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.31, !35, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.32, !35, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.33, !35, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.34, !35, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.35, !35, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.37, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 231, i32 2}
!52 = !{ptr @pp_to_dc_clock_levels._entry.36, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pp_to_dc_clock_levels._entry_ptr.38, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.40, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 235, i32 3}
!56 = !{ptr @pp_to_dc_clock_levels._entry.39, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pp_to_dc_clock_levels._entry_ptr.41, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.42, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 248, i32 3}
!60 = !{ptr @pp_to_dc_clock_levels_with_latency._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pp_to_dc_clock_levels_with_latency._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.43, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 257, i32 2}
!64 = !{ptr @.str.44, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 261, i32 3}
!66 = !{ptr @.str.45, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 275, i32 3}
!68 = !{ptr @pp_to_dc_clock_levels_with_voltage._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @pp_to_dc_clock_levels_with_voltage._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @pp_to_dc_clock_levels_with_voltage._entry.46, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 284, i32 2}
!72 = !{ptr @pp_to_dc_clock_levels_with_voltage._entry_ptr.47, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.49, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 288, i32 3}
!75 = !{ptr @pp_to_dc_clock_levels_with_voltage._entry.48, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @pp_to_dc_clock_levels_with_voltage._entry_ptr.50, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.51, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c", i32 208, i32 3}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i8 0, i8 2}
!89 = !{!"auto-init"}
