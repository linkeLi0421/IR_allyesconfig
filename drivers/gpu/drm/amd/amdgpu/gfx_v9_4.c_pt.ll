; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_gfx_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc15_reg_entry = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.soc15_ras_field_entry = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ta_ras_trigger_error_input = type { i32, i32, i32, i64, i64 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.ras_common_if = type { i32, i32, i32, [32 x i8] }
%struct.ras_inject_if = type { %struct.ras_common_if, i64, i64 }
%struct.ras_err_data = type { i32, i32, i32, ptr }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gfx_v9_4_ras_funcs = dso_local constant { %struct.amdgpu_gfx_ras_funcs, [32 x i8] } { %struct.amdgpu_gfx_ras_funcs { ptr @amdgpu_gfx_ras_late_init, ptr @amdgpu_gfx_ras_fini, ptr @gfx_v9_4_ras_error_inject, ptr @gfx_v9_4_query_ras_error_count, ptr @gfx_v9_4_reset_ras_error_count, ptr @gfx_v9_4_query_ras_error_status, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_ras_block_to_ta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RAS ERROR: unexpected block id %d\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_ras_error_to_ta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RAS ERROR: unexpected error type %d\0A\00", [59 x i8] zeroinitializer }, align 32
@gfx_v9_4_edc_counter_regs = internal constant { [35 x %struct.soc15_reg_entry], [236 x i8] } { [35 x %struct.soc15_reg_entry] [%struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4494, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4495, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4497, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4498, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4499, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4490, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4489, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1477, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1478, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1479, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1483, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1484, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1093, i32 0, i32 4, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 934, i32 0, i32 8, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 932, i32 0, i32 8, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 933, i32 0, i32 8, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 931, i32 0, i32 8, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 930, i32 0, i32 4, i32 6 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 812, i32 0, i32 4, i32 6 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 813, i32 0, i32 4, i32 6 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 814, i32 0, i32 4, i32 6 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1414, i32 0, i32 4, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3013, i32 0, i32 1, i32 2 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 2946, i32 0, i32 1, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 2947, i32 0, i32 1, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 2912, i32 0, i32 1, i32 72 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 2840, i32 0, i32 4, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4785, i32 0, i32 4, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 2839, i32 0, i32 4, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1326, i32 0, i32 4, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1798, i32 0, i32 1, i32 32 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1799, i32 0, i32 1, i32 32 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1819, i32 0, i32 1, i32 32 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 1, i32 19776, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 1, i32 19777, i32 0, i32 1, i32 1 }], [236 x i8] zeroinitializer }, align 32
@gfx_v9_4_ras_fields = internal constant { [135 x %struct.soc15_ras_field_entry], [1188 x i8] } { [135 x %struct.soc15_ras_field_entry] [%struct.soc15_ras_field_entry { ptr @.str.11, i32 1, i32 0, i32 0, i32 4494, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.12, i32 1, i32 0, i32 0, i32 4495, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.13, i32 1, i32 0, i32 0, i32 4497, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.14, i32 1, i32 0, i32 0, i32 4498, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.15, i32 1, i32 0, i32 0, i32 4499, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.16, i32 1, i32 0, i32 0, i32 4498, i32 192, i32 6, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.17, i32 1, i32 0, i32 0, i32 4499, i32 192, i32 6, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.18, i32 1, i32 0, i32 0, i32 4490, i32 192, i32 6, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.19, i32 1, i32 0, i32 0, i32 4490, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.20, i32 1, i32 0, i32 0, i32 4489, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.21, i32 1, i32 0, i32 0, i32 1478, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.22, i32 1, i32 0, i32 0, i32 1477, i32 48, i32 4, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.23, i32 1, i32 0, i32 0, i32 1483, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.24, i32 1, i32 0, i32 0, i32 1483, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.25, i32 1, i32 0, i32 0, i32 1483, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.26, i32 1, i32 0, i32 0, i32 1484, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.27, i32 1, i32 0, i32 0, i32 1484, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.28, i32 1, i32 0, i32 0, i32 1484, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.29, i32 1, i32 0, i32 0, i32 1484, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.30, i32 1, i32 0, i32 0, i32 1093, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.31, i32 1, i32 0, i32 0, i32 1093, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.32, i32 1, i32 0, i32 0, i32 1093, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.33, i32 1, i32 0, i32 0, i32 1093, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.34, i32 1, i32 0, i32 0, i32 1093, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.35, i32 1, i32 0, i32 0, i32 934, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.36, i32 1, i32 0, i32 0, i32 934, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.37, i32 1, i32 0, i32 0, i32 934, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.38, i32 1, i32 0, i32 0, i32 934, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.39, i32 1, i32 0, i32 0, i32 934, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.40, i32 1, i32 0, i32 0, i32 934, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.41, i32 1, i32 0, i32 0, i32 934, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.42, i32 1, i32 0, i32 0, i32 812, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.43, i32 1, i32 0, i32 0, i32 930, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.44, i32 1, i32 0, i32 0, i32 930, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.45, i32 1, i32 0, i32 0, i32 930, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.46, i32 1, i32 0, i32 0, i32 930, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.47, i32 1, i32 0, i32 0, i32 930, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.48, i32 1, i32 0, i32 0, i32 930, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.49, i32 1, i32 0, i32 0, i32 812, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.50, i32 1, i32 0, i32 0, i32 814, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.51, i32 1, i32 0, i32 0, i32 814, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.52, i32 1, i32 0, i32 0, i32 812, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.53, i32 1, i32 0, i32 0, i32 812, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.54, i32 1, i32 0, i32 0, i32 814, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.55, i32 1, i32 0, i32 0, i32 814, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.56, i32 1, i32 0, i32 0, i32 812, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.57, i32 1, i32 0, i32 0, i32 813, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.58, i32 1, i32 0, i32 0, i32 814, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.59, i32 1, i32 0, i32 0, i32 814, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.60, i32 1, i32 0, i32 0, i32 813, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.61, i32 1, i32 0, i32 0, i32 813, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.62, i32 1, i32 0, i32 0, i32 814, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.63, i32 1, i32 0, i32 0, i32 814, i32 805306368, i32 28, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.64, i32 1, i32 0, i32 0, i32 813, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.65, i32 1, i32 0, i32 0, i32 1414, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.66, i32 1, i32 0, i32 0, i32 1414, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.67, i32 1, i32 0, i32 0, i32 1414, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.68, i32 1, i32 0, i32 0, i32 1414, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.69, i32 1, i32 0, i32 0, i32 1414, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.70, i32 1, i32 0, i32 0, i32 3013, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.71, i32 1, i32 0, i32 0, i32 3013, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.72, i32 1, i32 0, i32 0, i32 2946, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.73, i32 1, i32 0, i32 0, i32 2946, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.74, i32 1, i32 0, i32 0, i32 2946, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.75, i32 1, i32 0, i32 0, i32 2946, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.76, i32 1, i32 0, i32 0, i32 2947, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.77, i32 1, i32 0, i32 0, i32 2947, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.78, i32 1, i32 0, i32 0, i32 2947, i32 805306368, i32 28, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.79, i32 1, i32 0, i32 0, i32 2947, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.80, i32 1, i32 0, i32 0, i32 2947, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.81, i32 1, i32 0, i32 0, i32 2947, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.82, i32 1, i32 0, i32 0, i32 2947, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.83, i32 1, i32 0, i32 0, i32 2946, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.84, i32 1, i32 0, i32 0, i32 2947, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.85, i32 1, i32 0, i32 0, i32 2946, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.86, i32 1, i32 0, i32 0, i32 2946, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.87, i32 1, i32 0, i32 0, i32 2912, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.88, i32 1, i32 0, i32 0, i32 2840, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.89, i32 1, i32 0, i32 0, i32 2840, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.90, i32 1, i32 0, i32 0, i32 2840, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.91, i32 1, i32 0, i32 0, i32 2840, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.92, i32 1, i32 0, i32 0, i32 2840, i32 196608, i32 16, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.93, i32 1, i32 0, i32 0, i32 2840, i32 786432, i32 18, i32 3145728, i32 20 }, %struct.soc15_ras_field_entry { ptr @.str.94, i32 1, i32 0, i32 0, i32 2840, i32 12582912, i32 22, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.95, i32 1, i32 0, i32 0, i32 1326, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.96, i32 1, i32 0, i32 0, i32 1326, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.97, i32 1, i32 0, i32 0, i32 1326, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.98, i32 1, i32 0, i32 0, i32 1798, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.99, i32 1, i32 0, i32 0, i32 1798, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.100, i32 1, i32 0, i32 0, i32 1798, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.101, i32 1, i32 0, i32 0, i32 1798, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.102, i32 1, i32 0, i32 0, i32 1798, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.103, i32 1, i32 0, i32 0, i32 1799, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.104, i32 1, i32 0, i32 0, i32 1799, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.105, i32 1, i32 0, i32 0, i32 1799, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.106, i32 1, i32 0, i32 0, i32 1798, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.106, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.107, i32 1, i32 0, i32 0, i32 1798, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.107, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.108, i32 1, i32 0, i32 0, i32 1798, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.108, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.109, i32 1, i32 0, i32 0, i32 1798, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.109, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.110, i32 1, i32 0, i32 0, i32 1798, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.110, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.111, i32 1, i32 0, i32 0, i32 1799, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.111, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.112, i32 1, i32 0, i32 0, i32 1799, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.112, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 12288, i32 12 }, %struct.soc15_ras_field_entry { ptr @.str.113, i32 1, i32 0, i32 0, i32 1799, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.114, i32 1, i32 0, i32 0, i32 1799, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.115, i32 1, i32 0, i32 0, i32 1799, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.116, i32 1, i32 0, i32 0, i32 1799, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.117, i32 1, i32 0, i32 0, i32 1819, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.118, i32 1, i32 0, i32 0, i32 1819, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.119, i32 1, i32 0, i32 0, i32 1819, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.120, i32 1, i32 0, i32 0, i32 1819, i32 805306368, i32 28, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.121, i32 1, i32 0, i32 0, i32 1798, i32 -1073741824, i32 30, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.121, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.122, i32 1, i32 0, i32 1, i32 19776, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.123, i32 1, i32 0, i32 1, i32 19776, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.124, i32 1, i32 0, i32 1, i32 19776, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.125, i32 1, i32 0, i32 1, i32 19776, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.126, i32 1, i32 0, i32 1, i32 19776, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.127, i32 1, i32 0, i32 1, i32 19776, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.128, i32 1, i32 0, i32 1, i32 19776, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.129, i32 1, i32 0, i32 1, i32 19776, i32 805306368, i32 28, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.130, i32 1, i32 0, i32 1, i32 19777, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.131, i32 1, i32 0, i32 1, i32 19777, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.132, i32 1, i32 0, i32 1, i32 19777, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.133, i32 1, i32 0, i32 1, i32 19777, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.134, i32 1, i32 0, i32 1, i32 19777, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.135, i32 1, i32 0, i32 1, i32 19777, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.136, i32 1, i32 0, i32 1, i32 19777, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.137, i32 1, i32 0, i32 1, i32 19777, i32 805306368, i32 28, i32 -1073741824, i32 30 }], [1188 x i8] zeroinitializer }, align 32
@gfx_v9_4_ras_error_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 848, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: GFX SubBlock %s, Instance[%d][%d], SEC %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gfx_v9_4_ras_error_count\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gfx_v9_4_ras_error_count._entry_ptr = internal global ptr @gfx_v9_4_ras_error_count._entry, section ".printk_index", align 4
@gfx_v9_4_ras_error_count._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 858, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: GFX SubBlock %s, Instance[%d][%d], DED %d\0A\00", [45 x i8] zeroinitializer }, align 32
@gfx_v9_4_ras_error_count._entry_ptr.10 = internal global ptr @gfx_v9_4_ras_error_count._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPC_SCRATCH\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CPC_UCODE\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CPC_DC_STATE_RAM_ME1\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CPC_DC_CSINVOC_RAM_ME1\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CPC_DC_RESTORE_RAM_ME1\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CPC_DC_CSINVOC_RAM1_ME1\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CPC_DC_RESTORE_RAM1_ME1\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPF_ROQ_ME2\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPF_ROQ_ME1\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPF_TCIU_TAG\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GDS_GRBM\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GDS_MEM\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GDS_PHY_CMD_RAM_MEM\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GDS_PHY_DATA_RAM_MEM\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GDS_ME0_CS_PIPE_MEM\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GDS_ME1_PIPE0_PIPE_MEM\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GDS_ME1_PIPE1_PIPE_MEM\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GDS_ME1_PIPE2_PIPE_MEM\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GDS_ME1_PIPE3_PIPE_MEM\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPI_SR_MEM\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPI_GDS_EXPREQ\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPI_WB_GRANT_30\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPI_WB_GRANT_61\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPI_LIFE_CNT\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SQ_SGPR\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_LDS_D\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_LDS_I\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_VGPR0\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_VGPR1\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_VGPR2\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_VGPR3\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SQC_INST_UTCL1_LFIFO\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SQC_DATA_CU0_WRITE_DATA_BUF\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_DATA_CU0_UTCL1_LFIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SQC_DATA_CU1_WRITE_DATA_BUF\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_DATA_CU1_UTCL1_LFIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SQC_DATA_CU2_WRITE_DATA_BUF\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_DATA_CU2_UTCL1_LFIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SQC_INST_BANKA_TAG_RAM\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SQC_INST_BANKA_UTCL1_MISS_FIFO\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_INST_BANKA_MISS_FIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_INST_BANKA_BANK_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SQC_DATA_BANKA_TAG_RAM\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_DATA_BANKA_HIT_FIFO\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_DATA_BANKA_MISS_FIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_DATA_BANKA_BANK_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SQC_INST_BANKB_TAG_RAM\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SQC_INST_BANKB_UTCL1_MISS_FIFO\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_INST_BANKB_MISS_FIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_INST_BANKB_BANK_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SQC_DATA_BANKB_TAG_RAM\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_DATA_BANKB_HIT_FIFO\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_DATA_BANKB_MISS_FIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_DATA_BANKB_BANK_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TA_FS_DFIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TA_FS_AFIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TA_FL_LFIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TA_FX_LFIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TA_FS_CFIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCA_HOLE_FIFO\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCA_REQ_FIFO\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCC_CACHE_DATA\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCC_CACHE_DIRTY\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TCC_HIGH_RATE_TAG\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCC_LOW_RATE_TAG\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCC_IN_USE_DEC\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TCC_IN_USE_TRANSFER\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCC_RETURN_DATA\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TCC_RETURN_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TCC_UC_ATOMIC_FIFO\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCC_WRITE_RETURN\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCC_WRITE_CACHE_READ\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCC_SRC_FIFO\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TCC_CACHE_TAG_PROBE_FIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCC_LATENCY_FIFO\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TCC_LATENCY_FIFO_NEXT_RAM\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCI_WRITE_RAM\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCP_CACHE_RAM\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCP_LFIFO_RAM\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCP_CMD_FIFO\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCP_VM_FIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCP_DB_RAM\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCP_UTCL1_LFIFO0\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCP_UTCL1_LFIFO1\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TD_SS_FIFO_LO\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TD_SS_FIFO_HI\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TD_CS_FIFO\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EA_DRAMRD_CMDMEM\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EA_DRAMWR_CMDMEM\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EA_DRAMWR_DATAMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EA_RRET_TAGMEM\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EA_WRET_TAGMEM\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EA_GMIRD_CMDMEM\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EA_GMIWR_CMDMEM\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EA_GMIWR_DATAMEM\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EA_DRAMRD_PAGEMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EA_DRAMWR_PAGEMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EA_IORD_CMDMEM\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EA_IOWR_CMDMEM\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EA_IOWR_DATAMEM\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EA_GMIRD_PAGEMEM\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EA_GMIWR_PAGEMEM\00", [47 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_D0MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_D1MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_D2MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_D3MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_A0MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_A1MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_A2MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_A3MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_AFMEM\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RLCG_INSTR_RAM\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RLCG_SCRATCH_RAM\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RLCV_INSTR_RAM\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RLCV_SCRATCH_RAM\00", [47 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RLC_TCTAG_RAM\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RLC_SPM_SCRATCH_RAM\00", [44 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RLC_SRM_DATA_RAM\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RLC_SRM_ADDR_RAM\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE0_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE1_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE2_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE3_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE4_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE5_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE6_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE7_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.5, i32 715, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: Instance[%d]: SubBlock %s, SEC %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gfx_v9_4_query_utc_edc_status\00", [34 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry_ptr = internal global ptr @gfx_v9_4_query_utc_edc_status._entry, section ".printk_index", align 4
@vml2_mems = internal constant { [41 x ptr], [60 x i8] } { [41 x ptr] [ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199], [60 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.5, i32 723, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: Instance[%d]: SubBlock %s, DED %d\0A\00", [53 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry_ptr.142 = internal global ptr @gfx_v9_4_query_utc_edc_status._entry.140, section ".printk_index", align 4
@gfx_v9_4_query_utc_edc_status._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.5, i32 737, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry_ptr.144 = internal global ptr @gfx_v9_4_query_utc_edc_status._entry.143, section ".printk_index", align 4
@vml2_walker_mems = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209], [56 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.5, i32 746, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry_ptr.146 = internal global ptr @gfx_v9_4_query_utc_edc_status._entry.145, section ".printk_index", align 4
@gfx_v9_4_query_utc_edc_status._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.5, i32 759, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry_ptr.148 = internal global ptr @gfx_v9_4_query_utc_edc_status._entry.147, section ".printk_index", align 4
@utcl2_router_mems = internal constant { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234], [60 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.5, i32 767, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry_ptr.150 = internal global ptr @gfx_v9_4_query_utc_edc_status._entry.149, section ".printk_index", align 4
@gfx_v9_4_query_utc_edc_status._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.5, i32 781, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry_ptr.152 = internal global ptr @gfx_v9_4_query_utc_edc_status._entry.151, section ".printk_index", align 4
@atc_l2_cache_2m_mems = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238], [16 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.5, i32 790, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry_ptr.154 = internal global ptr @gfx_v9_4_query_utc_edc_status._entry.153, section ".printk_index", align 4
@gfx_v9_4_query_utc_edc_status._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.5, i32 804, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry_ptr.156 = internal global ptr @gfx_v9_4_query_utc_edc_status._entry.155, section ".printk_index", align 4
@atc_l2_cache_4k_mems = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270], [32 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.5, i32 813, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_utc_edc_status._entry_ptr.158 = internal global ptr @gfx_v9_4_query_utc_edc_status._entry.157, section ".printk_index", align 4
@.str.159 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UTC_VML2_BANK_CACHE_0_BIGK_MEM0\00", [32 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UTC_VML2_BANK_CACHE_0_BIGK_MEM1\00", [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"UTC_VML2_BANK_CACHE_0_4K_MEM0\00", [34 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"UTC_VML2_BANK_CACHE_0_4K_MEM1\00", [34 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UTC_VML2_BANK_CACHE_1_BIGK_MEM0\00", [32 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UTC_VML2_BANK_CACHE_1_BIGK_MEM1\00", [32 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"UTC_VML2_BANK_CACHE_1_4K_MEM0\00", [34 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"UTC_VML2_BANK_CACHE_1_4K_MEM1\00", [34 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UTC_VML2_BANK_CACHE_2_BIGK_MEM0\00", [32 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UTC_VML2_BANK_CACHE_2_BIGK_MEM1\00", [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"UTC_VML2_BANK_CACHE_2_4K_MEM0\00", [34 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"UTC_VML2_BANK_CACHE_2_4K_MEM1\00", [34 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UTC_VML2_BANK_CACHE_3_BIGK_MEM0\00", [32 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UTC_VML2_BANK_CACHE_3_BIGK_MEM1\00", [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"UTC_VML2_BANK_CACHE_3_4K_MEM0\00", [34 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"UTC_VML2_BANK_CACHE_3_4K_MEM1\00", [34 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_IFIFO_GROUP0\00", [42 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_IFIFO_GROUP1\00", [42 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_IFIFO_GROUP2\00", [42 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_IFIFO_GROUP3\00", [42 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_IFIFO_GROUP4\00", [42 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_IFIFO_GROUP5\00", [42 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_IFIFO_GROUP6\00", [42 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_IFIFO_GROUP7\00", [42 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_IFIFO_GROUP8\00", [42 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_IFIFO_GROUP9\00", [42 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP10\00", [41 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP11\00", [41 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP12\00", [41 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP13\00", [41 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP14\00", [41 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP15\00", [41 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP16\00", [41 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP17\00", [41 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP18\00", [41 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP19\00", [41 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP20\00", [41 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP21\00", [41 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP22\00", [41 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP23\00", [41 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_IFIFO_GROUP24\00", [41 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE0_MEM0\00", [39 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE0_MEM1\00", [39 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE1_MEM0\00", [39 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE1_MEM1\00", [39 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE2_MEM0\00", [39 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE2_MEM1\00", [39 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_RDIF_ARADDRS\00", [42 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_RDIF_LOG_FIFO\00", [41 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UTC_VML2_QUEUE_REQ\00", [45 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UTC_VML2_QUEUE_RET\00", [45 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTCL2_ROUTER_GROUP0_VML2_REQ_FIFO0\00", [61 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTCL2_ROUTER_GROUP1_VML2_REQ_FIFO1\00", [61 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTCL2_ROUTER_GROUP2_VML2_REQ_FIFO2\00", [61 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTCL2_ROUTER_GROUP3_VML2_REQ_FIFO3\00", [61 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTCL2_ROUTER_GROUP4_VML2_REQ_FIFO4\00", [61 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTCL2_ROUTER_GROUP5_VML2_REQ_FIFO5\00", [61 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTCL2_ROUTER_GROUP6_VML2_REQ_FIFO6\00", [61 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTCL2_ROUTER_GROUP7_VML2_REQ_FIFO7\00", [61 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTCL2_ROUTER_GROUP8_VML2_REQ_FIFO8\00", [61 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTCL2_ROUTER_GROUP9_VML2_REQ_FIFO9\00", [61 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP10_VML2_REQ_FIFO10\00", [59 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP11_VML2_REQ_FIFO11\00", [59 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP12_VML2_REQ_FIFO12\00", [59 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP13_VML2_REQ_FIFO13\00", [59 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP14_VML2_REQ_FIFO14\00", [59 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP15_VML2_REQ_FIFO15\00", [59 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP16_VML2_REQ_FIFO16\00", [59 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP17_VML2_REQ_FIFO17\00", [59 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP18_VML2_REQ_FIFO18\00", [59 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP19_VML2_REQ_FIFO19\00", [59 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP20_VML2_REQ_FIFO20\00", [59 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP21_VML2_REQ_FIFO21\00", [59 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP22_VML2_REQ_FIFO22\00", [59 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP23_VML2_REQ_FIFO23\00", [59 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UTCL2_ROUTER_GROUP24_VML2_REQ_FIFO24\00", [59 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UTC_ATCL2_CACHE_2M_BANK0_WAY0_MEM\00", [62 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UTC_ATCL2_CACHE_2M_BANK0_WAY1_MEM\00", [62 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UTC_ATCL2_CACHE_2M_BANK1_WAY0_MEM\00", [62 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UTC_ATCL2_CACHE_2M_BANK1_WAY1_MEM\00", [62 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY0_MEM0\00", [61 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY0_MEM1\00", [61 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY0_MEM2\00", [61 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY0_MEM3\00", [61 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY0_MEM4\00", [61 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY0_MEM5\00", [61 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY0_MEM6\00", [61 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY0_MEM7\00", [61 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY1_MEM0\00", [61 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY1_MEM1\00", [61 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY1_MEM2\00", [61 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY1_MEM3\00", [61 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY1_MEM4\00", [61 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY1_MEM5\00", [61 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY1_MEM6\00", [61 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK0_WAY1_MEM7\00", [61 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY0_MEM0\00", [61 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY0_MEM1\00", [61 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY0_MEM2\00", [61 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY0_MEM3\00", [61 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY0_MEM4\00", [61 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY0_MEM5\00", [61 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY0_MEM6\00", [61 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY0_MEM7\00", [61 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY1_MEM0\00", [61 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY1_MEM1\00", [61 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY1_MEM2\00", [61 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY1_MEM3\00", [61 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY1_MEM4\00", [61 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY1_MEM5\00", [61 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY1_MEM6\00", [61 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UTC_ATCL2_CACHE_4K_BANK1_WAY1_MEM7\00", [61 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_ras_error_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.272, ptr @.str.5, i32 1023, ptr @.str.273, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: GCEA err detected at instance: %d, status: 0x%x!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gfx_v9_4_query_ras_error_status\00", [32 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gfx_v9_4_query_ras_error_status._entry_ptr = internal global ptr @gfx_v9_4_query_ras_error_status._entry, section ".printk_index", align 4
@switch.table.gfx_v9_4_ras_error_inject = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.274 = private unnamed_addr constant [19 x i8] c"gfx_v9_4_ras_funcs\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1032, i32 35 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 573, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 592, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [26 x i8] c"gfx_v9_4_edc_counter_regs\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 40, i32 37 }
@___asan_gen_.289 = private unnamed_addr constant [20 x i8] c"gfx_v9_4_ras_fields\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 120, i32 43 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 845, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 855, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 122, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 125, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 128, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 131, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 135, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 139, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 143, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 149, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 152, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 155, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 160, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 163, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 166, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 169, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 172, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 175, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 179, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 183, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 187, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 193, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 196, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 199, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 202, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 205, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 210, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 213, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 216, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 219, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 222, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 225, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 228, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 233, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 236, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 239, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 242, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 245, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 248, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 251, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 254, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 257, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 263, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 268, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 271, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 274, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 278, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 283, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 286, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 289, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 295, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 300, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 303, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 306, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 310, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 315, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 320, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 323, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 326, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 329, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 332, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 337, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 340, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 345, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 348, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 351, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 354, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 357, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 360, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 363, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 366, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 369, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 372, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 375, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 378, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 381, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 384, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 387, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 392, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 397, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 400, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 403, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 406, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 409, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 411, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 414, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 419, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 422, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 425, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 430, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 433, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 436, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 439, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 442, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 445, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 448, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 451, i32 4 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 454, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 458, i32 4 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 462, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 466, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 470, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 474, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 478, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 482, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 485, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 488, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 491, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 494, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 497, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 500, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 503, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 506, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 512, i32 4 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 515, i32 4 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 518, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 521, i32 4 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 524, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 527, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 530, i32 4 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 533, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 536, i32 4 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 539, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 542, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 545, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 548, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 551, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 554, i32 4 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 557, i32 4 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 713, i32 4 }
@___asan_gen_.706 = private unnamed_addr constant [10 x i8] c"vml2_mems\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 562, i32 27 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 721, i32 4 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 735, i32 4 }
@___asan_gen_.718 = private unnamed_addr constant [17 x i8] c"vml2_walker_mems\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 606, i32 27 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 744, i32 4 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 757, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant [18 x i8] c"utcl2_router_mems\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 619, i32 27 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 765, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 779, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant [21 x i8] c"atc_l2_cache_2m_mems\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 647, i32 27 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 788, i32 4 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 802, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant [21 x i8] c"atc_l2_cache_4k_mems\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 654, i32 27 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 811, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 563, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 564, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 565, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 566, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 567, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 568, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 569, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 570, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 571, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 572, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 573, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 574, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 575, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 576, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 577, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 578, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 579, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 580, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 581, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 582, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 583, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 584, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 585, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 586, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 587, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 588, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 589, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 590, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 591, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 592, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 593, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 594, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 595, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 596, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 597, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 598, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 599, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 600, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 601, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 602, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 603, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 607, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 608, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 609, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 610, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 611, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 612, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 613, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 614, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 615, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 616, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 620, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 621, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 622, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 623, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 624, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 625, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 626, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 627, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 628, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 629, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 630, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 631, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 632, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 633, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 634, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 635, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 636, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 637, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 638, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 639, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 640, i32 2 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 641, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 642, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 643, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 644, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 648, i32 2 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 649, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 650, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 651, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 655, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 656, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 657, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 658, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 659, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 660, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 661, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 662, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 663, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 664, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 665, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 666, i32 2 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 667, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 668, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 669, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 670, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 671, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 672, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 673, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 674, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 675, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 676, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 677, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 678, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 679, i32 2 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 680, i32 2 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 681, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 682, i32 2 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 683, i32 2 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 684, i32 2 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 685, i32 2 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 686, i32 2 }
@___asan_gen_.1087 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1096 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1097 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c\00", align 1
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1022, i32 5 }
@___asan_gen_.1099 = private unnamed_addr constant [39 x i8] c"switch.table.gfx_v9_4_ras_error_inject\00", align 1
@llvm.compiler.used = appending global [289 x ptr] [ptr @gfx_v9_4_query_ras_error_status._entry, ptr @gfx_v9_4_query_ras_error_status._entry_ptr, ptr @gfx_v9_4_query_utc_edc_status._entry, ptr @gfx_v9_4_query_utc_edc_status._entry.140, ptr @gfx_v9_4_query_utc_edc_status._entry.143, ptr @gfx_v9_4_query_utc_edc_status._entry.145, ptr @gfx_v9_4_query_utc_edc_status._entry.147, ptr @gfx_v9_4_query_utc_edc_status._entry.149, ptr @gfx_v9_4_query_utc_edc_status._entry.151, ptr @gfx_v9_4_query_utc_edc_status._entry.153, ptr @gfx_v9_4_query_utc_edc_status._entry.155, ptr @gfx_v9_4_query_utc_edc_status._entry.157, ptr @gfx_v9_4_query_utc_edc_status._entry_ptr, ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.142, ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.144, ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.146, ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.148, ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.150, ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.152, ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.154, ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.156, ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.158, ptr @gfx_v9_4_ras_error_count._entry, ptr @gfx_v9_4_ras_error_count._entry.8, ptr @gfx_v9_4_ras_error_count._entry_ptr, ptr @gfx_v9_4_ras_error_count._entry_ptr.10, ptr @gfx_v9_4_ras_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gfx_v9_4_edc_counter_regs, ptr @gfx_v9_4_ras_fields, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @vml2_mems, ptr @.str.141, ptr @vml2_walker_mems, ptr @utcl2_router_mems, ptr @atc_l2_cache_2m_mems, ptr @atc_l2_cache_4k_mems, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @switch.table.gfx_v9_4_ras_error_inject], section "llvm.metadata"
@0 = internal global [276 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_ras_funcs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_edc_counter_regs to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_ras_fields to i32), i32 4860, i32 6048, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_ras_error_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_ras_error_count._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_query_utc_edc_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vml2_mems to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_query_utc_edc_status._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_query_utc_edc_status._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vml2_walker_mems to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_query_utc_edc_status._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_query_utc_edc_status._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utcl2_router_mems to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_query_utc_edc_status._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_query_utc_edc_status._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_l2_cache_2m_mems to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_query_utc_edc_status._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_query_utc_edc_status._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc_l2_cache_4k_mems to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_query_utc_edc_status._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_query_ras_error_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v9_4_ras_error_inject to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gfx_ras_late_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_ras_fini(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v9_4_ras_error_inject(ptr noundef %adev, ptr nocapture noundef readonly %inject_if) #1 align 64 {
entry:
  %block_info = alloca %struct.ta_ras_trigger_error_input, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_info) #5
  %0 = getelementptr inbounds i8, ptr %block_info, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %0, align 8
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %2 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %amdgpu_ras_is_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %4 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ras_enabled.i, align 8
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.cleanup_crit_edge, label %if.end

amdgpu_ras_is_supported.exit.cleanup_crit_edge:   ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  %7 = ptrtoint ptr %inject_if to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inject_if, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %8)
  %9 = icmp ult i32 %8, 15
  br i1 %9, label %if.end.amdgpu_ras_block_to_ta.exit_crit_edge, label %land.end.i

if.end.amdgpu_ras_block_to_ta.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ras_block_to_ta.exit

land.end.i:                                       ; preds = %if.end
  %.b50.i = load i1, ptr @amdgpu_ras_block_to_ta.__already_done, align 1
  br i1 %.b50.i, label %land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge, label %if.then.i, !prof !563

land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ras_block_to_ta.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @amdgpu_ras_block_to_ta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 573, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %8) #5
  br label %amdgpu_ras_block_to_ta.exit

amdgpu_ras_block_to_ta.exit:                      ; preds = %if.then.i, %land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge, %if.end.amdgpu_ras_block_to_ta.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ 0, %land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge ], [ %8, %if.end.amdgpu_ras_block_to_ta.exit_crit_edge ]
  %10 = ptrtoint ptr %block_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %block_info, align 8
  %sub_block_index = getelementptr inbounds %struct.ras_common_if, ptr %inject_if, i32 0, i32 2
  %11 = ptrtoint ptr %sub_block_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sub_block_index, align 8
  %sub_block_index3 = getelementptr inbounds %struct.ta_ras_trigger_error_input, ptr %block_info, i32 0, i32 2
  %13 = ptrtoint ptr %sub_block_index3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sub_block_index3, align 8
  %type = getelementptr inbounds %struct.ras_common_if, ptr %inject_if, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %15)
  %16 = icmp ult i32 %15, 9
  br i1 %16, label %switch.hole_check, label %amdgpu_ras_block_to_ta.exit.land.end.i23_crit_edge

amdgpu_ras_block_to_ta.exit.land.end.i23_crit_edge: ; preds = %amdgpu_ras_block_to_ta.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i23

land.end.i23:                                     ; preds = %switch.hole_check.land.end.i23_crit_edge, %amdgpu_ras_block_to_ta.exit.land.end.i23_crit_edge
  %.b40.i = load i1, ptr @amdgpu_ras_error_to_ta.__already_done, align 1
  br i1 %.b40.i, label %land.end.i23.amdgpu_ras_error_to_ta.exit_crit_edge, label %if.then.i24, !prof !563

land.end.i23.amdgpu_ras_error_to_ta.exit_crit_edge: ; preds = %land.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ras_error_to_ta.exit

if.then.i24:                                      ; preds = %land.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @amdgpu_ras_error_to_ta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 592, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %15) #5
  br label %amdgpu_ras_error_to_ta.exit

switch.hole_check:                                ; preds = %amdgpu_ras_block_to_ta.exit
  %switch.maskindex = trunc i32 %15 to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %17 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %switch.lobit.not = icmp eq i16 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i23_crit_edge, label %switch.lookup

switch.hole_check.land.end.i23_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i23

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.gfx_v9_4_ras_error_inject, i32 0, i32 %15
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %amdgpu_ras_error_to_ta.exit

amdgpu_ras_error_to_ta.exit:                      ; preds = %switch.lookup, %if.then.i24, %land.end.i23.amdgpu_ras_error_to_ta.exit_crit_edge
  %retval.0.i25 = phi i32 [ 0, %if.then.i24 ], [ 0, %land.end.i23.amdgpu_ras_error_to_ta.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %inject_error_type = getelementptr inbounds %struct.ta_ras_trigger_error_input, ptr %block_info, i32 0, i32 1
  %19 = ptrtoint ptr %inject_error_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i25, ptr %inject_error_type, align 4
  %address = getelementptr inbounds %struct.ras_inject_if, ptr %inject_if, i32 0, i32 1
  %20 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %address, align 8
  %address6 = getelementptr inbounds %struct.ta_ras_trigger_error_input, ptr %block_info, i32 0, i32 3
  %22 = ptrtoint ptr %address6 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %address6, align 8
  %value = getelementptr inbounds %struct.ras_inject_if, ptr %inject_if, i32 0, i32 2
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %value, align 8
  %value7 = getelementptr inbounds %struct.ta_ras_trigger_error_input, ptr %block_info, i32 0, i32 4
  %25 = ptrtoint ptr %value7 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %value7, align 8
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #5
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %call8 = call i32 @psp_ras_trigger_error(ptr noundef %psp, ptr noundef nonnull %block_info) #5
  call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_ras_error_to_ta.exit, %amdgpu_ras_is_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %amdgpu_ras_error_to_ta.exit ], [ -22, %amdgpu_ras_is_supported.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_info) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v9_4_query_ras_error_count(ptr noundef %adev, ptr nocapture noundef %ras_error_status) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %amdgpu_ras_is_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.cleanup_crit_edge, label %if.end

amdgpu_ras_is_supported.exit.cleanup_crit_edge:   ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  %5 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ras_error_status, align 4
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 1
  %6 = ptrtoint ptr %ce_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ce_count, align 4
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #5
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  br label %for.cond4.preheader.lr.ph

for.cond4.preheader.lr.ph:                        ; preds = %for.inc25.for.cond4.preheader.lr.ph_crit_edge, %if.end
  %i.0127 = phi i32 [ 0, %if.end ], [ %inc26, %for.inc25.for.cond4.preheader.lr.ph_crit_edge ]
  %ded_count.0126 = phi i32 [ 0, %if.end ], [ %ded_count.5, %for.inc25.for.cond4.preheader.lr.ph_crit_edge ]
  %sec_count.0125 = phi i32 [ 0, %if.end ], [ %sec_count.6, %for.inc25.for.cond4.preheader.lr.ph_crit_edge ]
  %arrayidx = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.0127
  %se_num = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.0127, i32 5
  %7 = ptrtoint ptr %se_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %se_num, align 4
  %instance = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.0127, i32 6
  %9 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %instance, align 4
  %inst = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.0127, i32 1
  %seg = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.0127, i32 2
  %reg_offset15 = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.0127, i32 3
  %umax = call i32 @llvm.umax.i32(i32 %10, i32 1)
  %umax129 = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %for.body7.lr.ph

for.body7.lr.ph:                                  ; preds = %for.inc22.for.body7.lr.ph_crit_edge, %for.cond4.preheader.lr.ph
  %j.0121 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %inc23, %for.inc22.for.body7.lr.ph_crit_edge ]
  %ded_count.1120 = phi i32 [ %ded_count.0126, %for.cond4.preheader.lr.ph ], [ %ded_count.5, %for.inc22.for.body7.lr.ph_crit_edge ]
  %sec_count.1119 = phi i32 [ %sec_count.0125, %for.cond4.preheader.lr.ph ], [ %sec_count.6, %for.inc22.for.body7.lr.ph_crit_edge ]
  %shl7.i = shl i32 %j.0121, 16
  %and8.i = and i32 %shl7.i, 16711680
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body7.lr.ph
  %k.0115 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %for.inc.for.body7_crit_edge ]
  %ded_count.2114 = phi i32 [ %ded_count.1120, %for.body7.lr.ph ], [ %ded_count.5, %for.inc.for.body7_crit_edge ]
  %sec_count.2113 = phi i32 [ %sec_count.1119, %for.body7.lr.ph ], [ %sec_count.6, %for.inc.for.body7_crit_edge ]
  %and.i67 = and i32 %k.0115, 255
  %data.1.i = or i32 %and.i67, %and8.i
  %11 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %virt.i, align 8
  %and21.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool.not.i68 = icmp eq i32 %and21.i, 0
  br i1 %tobool.not.i68, label %for.body7.cond.false.i_crit_edge, label %land.lhs.true.i

for.body7.cond.false.i_crit_edge:                 ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %for.body7
  %13 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs.i, align 4
  %tobool22.not.i = icmp eq ptr %14, null
  br i1 %tobool22.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true23.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true23.i:                                ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool27.not.i = icmp eq ptr %16, null
  br i1 %tobool27.not.i, label %land.lhs.true23.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true23.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx33.i = getelementptr i32, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx33.i, align 4
  %add.i = add i32 %20, 8704
  tail call void %16(ptr noundef %adev, i32 noundef %add.i, i32 noundef %data.1.i, i32 noundef 4, i32 noundef 1) #5
  br label %gfx_v9_4_select_se_sh.exit

cond.false.i:                                     ; preds = %land.lhs.true23.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %for.body7.cond.false.i_crit_edge
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx37.i, align 4
  %add38.i = add i32 %24, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i, i32 noundef %data.1.i, i32 noundef 0) #5
  br label %gfx_v9_4_select_se_sh.exit

gfx_v9_4_select_se_sh.exit:                       ; preds = %cond.false.i, %cond.true.i
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inst, align 4
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %26, i32 %28
  %29 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx11, align 4
  %31 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %seg, align 4
  %arrayidx13 = getelementptr i32, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx13, align 4
  %35 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_offset15, align 4
  %add = add i32 %36, %34
  %call16 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %gfx_v9_4_select_se_sh.exit.for.inc_crit_edge, label %if.then18

gfx_v9_4_select_se_sh.exit.for.inc_crit_edge:     ; preds = %gfx_v9_4_select_se_sh.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then18:                                        ; preds = %gfx_v9_4_select_se_sh.exit
  %37 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_offset15, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then18
  %sec_count.3 = phi i32 [ %sec_count.2113, %if.then18 ], [ %sec_count.5, %for.inc.i.for.body.i_crit_edge ]
  %ded_count.3 = phi i32 [ %ded_count.2114, %if.then18 ], [ %ded_count.4, %for.inc.i.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.then18 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i69 = getelementptr [135 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_ras_fields, i32 0, i32 %i.01.i
  %reg_offset.i = getelementptr [135 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 4
  %39 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp2.not.i = icmp eq i32 %40, %38
  br i1 %cmp2.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %seg.i = getelementptr [135 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 3
  %41 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %seg.i, align 4
  %43 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %seg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp5.not.i = icmp eq i32 %42, %44
  br i1 %cmp5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %inst.i = getelementptr [135 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 2
  %45 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %inst.i, align 4
  %47 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %inst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp9.not.i = icmp eq i32 %46, %48
  br i1 %cmp9.not.i, label %if.end.i, label %lor.lhs.false6.i.for.inc.i_crit_edge

lor.lhs.false6.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false6.i
  %sec_count_mask.i = getelementptr [135 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 5
  %49 = ptrtoint ptr %sec_count_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sec_count_mask.i, align 4
  %and.i70 = and i32 %50, %call16
  %sec_count_shift.i = getelementptr [135 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 6
  %51 = ptrtoint ptr %sec_count_shift.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sec_count_shift.i, align 4
  %shr.i = lshr i32 %and.i70, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i71 = icmp eq i32 %shr.i, 0
  br i1 %tobool.not.i71, label %if.end.i.if.end14.i_crit_edge, label %do.end.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adev, align 8
  %55 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i69, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.3, ptr noundef %56, i32 noundef %j.0121, i32 noundef %k.0115, i32 noundef %shr.i) #8
  %add.i72 = add i32 %shr.i, %sec_count.3
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i, %if.end.i.if.end14.i_crit_edge
  %sec_count.4 = phi i32 [ %sec_count.3, %if.end.i.if.end14.i_crit_edge ], [ %add.i72, %do.end.i ]
  %ded_count_mask.i = getelementptr [135 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 7
  %57 = ptrtoint ptr %ded_count_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ded_count_mask.i, align 4
  %and16.i = and i32 %58, %call16
  %ded_count_shift.i = getelementptr [135 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 8
  %59 = ptrtoint ptr %ded_count_shift.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ded_count_shift.i, align 4
  %shr18.i = lshr i32 %and16.i, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr18.i)
  %tobool19.not.i = icmp eq i32 %shr18.i, 0
  br i1 %tobool19.not.i, label %if.end14.i.for.inc.i_crit_edge, label %do.end23.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end23.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adev, align 8
  %63 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i69, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.9, ptr noundef %64, i32 noundef %j.0121, i32 noundef %k.0115, i32 noundef %shr18.i) #8
  %add27.i = add i32 %shr18.i, %ded_count.3
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end23.i, %if.end14.i.for.inc.i_crit_edge, %lor.lhs.false6.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %sec_count.5 = phi i32 [ %sec_count.4, %if.end14.i.for.inc.i_crit_edge ], [ %sec_count.4, %do.end23.i ], [ %sec_count.3, %lor.lhs.false6.i.for.inc.i_crit_edge ], [ %sec_count.3, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %sec_count.3, %for.body.i.for.inc.i_crit_edge ]
  %ded_count.4 = phi i32 [ %ded_count.3, %if.end14.i.for.inc.i_crit_edge ], [ %add27.i, %do.end23.i ], [ %ded_count.3, %lor.lhs.false6.i.for.inc.i_crit_edge ], [ %ded_count.3, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %ded_count.3, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 135
  br i1 %exitcond.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %gfx_v9_4_select_se_sh.exit.for.inc_crit_edge
  %sec_count.6 = phi i32 [ %sec_count.2113, %gfx_v9_4_select_se_sh.exit.for.inc_crit_edge ], [ %sec_count.5, %for.inc.i.for.inc_crit_edge ]
  %ded_count.5 = phi i32 [ %ded_count.2114, %gfx_v9_4_select_se_sh.exit.for.inc_crit_edge ], [ %ded_count.4, %for.inc.i.for.inc_crit_edge ]
  %inc = add nuw i32 %k.0115, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc22, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7

for.inc22:                                        ; preds = %for.inc
  %inc23 = add nuw i32 %j.0121, 1
  %exitcond130.not = icmp eq i32 %inc23, %umax129
  br i1 %exitcond130.not, label %for.inc25, label %for.inc22.for.body7.lr.ph_crit_edge

for.inc22.for.body7.lr.ph_crit_edge:              ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.lr.ph

for.inc25:                                        ; preds = %for.inc22
  %inc26 = add nuw nsw i32 %i.0127, 1
  %exitcond131.not = icmp eq i32 %inc26, 35
  br i1 %exitcond131.not, label %for.end27, label %for.inc25.for.cond4.preheader.lr.ph_crit_edge

for.inc25.for.cond4.preheader.lr.ph_crit_edge:    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader.lr.ph

for.end27:                                        ; preds = %for.inc25
  %65 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ce_count, align 4
  %add29 = add i32 %66, %sec_count.6
  store i32 %add29, ptr %ce_count, align 4
  %67 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ras_error_status, align 4
  %add31 = add i32 %68, %ded_count.5
  store i32 %add31, ptr %ras_error_status, align 4
  %69 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %virt.i, align 8
  %and21.i74 = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i74)
  %tobool.not.i75 = icmp eq i32 %and21.i74, 0
  br i1 %tobool.not.i75, label %for.end27.cond.false.i89_crit_edge, label %land.lhs.true.i78

for.end27.cond.false.i89_crit_edge:               ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i89

land.lhs.true.i78:                                ; preds = %for.end27
  %71 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %funcs.i, align 4
  %tobool22.not.i77 = icmp eq ptr %72, null
  br i1 %tobool22.not.i77, label %land.lhs.true.i78.cond.false.i89_crit_edge, label %land.lhs.true23.i81

land.lhs.true.i78.cond.false.i89_crit_edge:       ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i89

land.lhs.true23.i81:                              ; preds = %land.lhs.true.i78
  %sriov_wreg.i79 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %sriov_wreg.i79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sriov_wreg.i79, align 4
  %tobool27.not.i80 = icmp eq ptr %74, null
  br i1 %tobool27.not.i80, label %land.lhs.true23.i81.cond.false.i89_crit_edge, label %cond.true.i85

land.lhs.true23.i81.cond.false.i89_crit_edge:     ; preds = %land.lhs.true23.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i89

cond.true.i85:                                    ; preds = %land.lhs.true23.i81
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx33.i83 = getelementptr i32, ptr %76, i32 1
  %77 = ptrtoint ptr %arrayidx33.i83 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx33.i83, align 4
  %add.i84 = add i32 %78, 8704
  tail call void %74(ptr noundef %adev, i32 noundef %add.i84, i32 noundef -536870912, i32 noundef 4, i32 noundef 1) #5
  br label %gfx_v9_4_select_se_sh.exit90

cond.false.i89:                                   ; preds = %land.lhs.true23.i81.cond.false.i89_crit_edge, %land.lhs.true.i78.cond.false.i89_crit_edge, %for.end27.cond.false.i89_crit_edge
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx37.i87 = getelementptr i32, ptr %80, i32 1
  %81 = ptrtoint ptr %arrayidx37.i87 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx37.i87, align 4
  %add38.i88 = add i32 %82, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i88, i32 noundef -536870912, i32 noundef 0) #5
  br label %gfx_v9_4_select_se_sh.exit90

gfx_v9_4_select_se_sh.exit90:                     ; preds = %cond.false.i89, %cond.true.i85
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #5
  %83 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %virt.i, align 8
  %and.i92 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.not.i93 = icmp eq i32 %and.i92, 0
  br i1 %tobool.not.i93, label %gfx_v9_4_select_se_sh.exit90.cond.false.i100_crit_edge, label %land.lhs.true.i95

gfx_v9_4_select_se_sh.exit90.cond.false.i100_crit_edge: ; preds = %gfx_v9_4_select_se_sh.exit90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i100

land.lhs.true.i95:                                ; preds = %gfx_v9_4_select_se_sh.exit90
  %85 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %86, null
  br i1 %tobool1.not.i, label %land.lhs.true.i95.cond.false.i100_crit_edge, label %land.lhs.true2.i

land.lhs.true.i95.cond.false.i100_crit_edge:      ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i100

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i95
  %sriov_wreg.i96 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %86, i32 0, i32 12
  %87 = ptrtoint ptr %sriov_wreg.i96 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sriov_wreg.i96, align 4
  %tobool6.not.i = icmp eq ptr %88, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i100_crit_edge, label %cond.true.i99

land.lhs.true2.i.cond.false.i100_crit_edge:       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i100

cond.true.i99:                                    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %add.i98 = add i32 %92, 2144
  tail call void %88(ptr noundef %adev, i32 noundef %add.i98, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end.i

cond.false.i100:                                  ; preds = %land.lhs.true2.i.cond.false.i100_crit_edge, %land.lhs.true.i95.cond.false.i100_crit_edge, %gfx_v9_4_select_se_sh.exit90.cond.false.i100_crit_edge
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %add17.i = add i32 %96, 2144
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i100, %cond.true.i99
  %97 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %virt.i, align 8
  %and20.i = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %cond.end.i.cond.false43.i_crit_edge, label %land.lhs.true22.i

cond.end.i.cond.false43.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43.i

land.lhs.true22.i:                                ; preds = %cond.end.i
  %99 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %funcs.i, align 4
  %tobool26.not.i = icmp eq ptr %100, null
  br i1 %tobool26.not.i, label %land.lhs.true22.i.cond.false43.i_crit_edge, label %land.lhs.true27.i

land.lhs.true22.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43.i

land.lhs.true27.i:                                ; preds = %land.lhs.true22.i
  %sriov_wreg31.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %100, i32 0, i32 12
  %101 = ptrtoint ptr %sriov_wreg31.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sriov_wreg31.i, align 4
  %tobool32.not.i = icmp eq ptr %102, null
  br i1 %tobool32.not.i, label %land.lhs.true27.i.cond.false43.i_crit_edge, label %cond.true33.i

land.lhs.true27.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43.i

cond.true33.i:                                    ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %add42.i = add i32 %106, 2147
  tail call void %102(ptr noundef %adev, i32 noundef %add42.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end49.i

cond.false43.i:                                   ; preds = %land.lhs.true27.i.cond.false43.i_crit_edge, %land.lhs.true22.i.cond.false43.i_crit_edge, %cond.end.i.cond.false43.i_crit_edge
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %add48.i = add i32 %110, 2147
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end49.i

cond.end49.i:                                     ; preds = %cond.false43.i, %cond.true33.i
  %111 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %virt.i, align 8
  %and52.i = and i32 %112, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %cond.end49.i.cond.false75.i_crit_edge, label %land.lhs.true54.i

cond.end49.i.cond.false75.i_crit_edge:            ; preds = %cond.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false75.i

land.lhs.true54.i:                                ; preds = %cond.end49.i
  %113 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %funcs.i, align 4
  %tobool58.not.i = icmp eq ptr %114, null
  br i1 %tobool58.not.i, label %land.lhs.true54.i.cond.false75.i_crit_edge, label %land.lhs.true59.i

land.lhs.true54.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false75.i

land.lhs.true59.i:                                ; preds = %land.lhs.true54.i
  %sriov_wreg63.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %114, i32 0, i32 12
  %115 = ptrtoint ptr %sriov_wreg63.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sriov_wreg63.i, align 4
  %tobool64.not.i = icmp eq ptr %116, null
  br i1 %tobool64.not.i, label %land.lhs.true59.i.cond.false75.i_crit_edge, label %cond.true65.i

land.lhs.true59.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false75.i

cond.true65.i:                                    ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i, align 8
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 4
  %add74.i = add i32 %120, 2145
  tail call void %116(ptr noundef %adev, i32 noundef %add74.i, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end81.i

cond.false75.i:                                   ; preds = %land.lhs.true59.i.cond.false75.i_crit_edge, %land.lhs.true54.i.cond.false75.i_crit_edge, %cond.end49.i.cond.false75.i_crit_edge
  %121 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %add80.i = add i32 %124, 2145
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add80.i, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end81.i

cond.end81.i:                                     ; preds = %cond.false75.i, %cond.true65.i
  %125 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %virt.i, align 8
  %and84.i = and i32 %126, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %cond.end81.i.cond.false107.i_crit_edge, label %land.lhs.true86.i

cond.end81.i.cond.false107.i_crit_edge:           ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false107.i

land.lhs.true86.i:                                ; preds = %cond.end81.i
  %127 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %funcs.i, align 4
  %tobool90.not.i = icmp eq ptr %128, null
  br i1 %tobool90.not.i, label %land.lhs.true86.i.cond.false107.i_crit_edge, label %land.lhs.true91.i

land.lhs.true86.i.cond.false107.i_crit_edge:      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false107.i

land.lhs.true91.i:                                ; preds = %land.lhs.true86.i
  %sriov_wreg95.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %128, i32 0, i32 12
  %129 = ptrtoint ptr %sriov_wreg95.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sriov_wreg95.i, align 4
  %tobool96.not.i = icmp eq ptr %130, null
  br i1 %tobool96.not.i, label %land.lhs.true91.i.cond.false107.i_crit_edge, label %cond.true97.i

land.lhs.true91.i.cond.false107.i_crit_edge:      ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false107.i

cond.true97.i:                                    ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i, align 8
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 4
  %add106.i = add i32 %134, 2148
  tail call void %130(ptr noundef %adev, i32 noundef %add106.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end113.i

cond.false107.i:                                  ; preds = %land.lhs.true91.i.cond.false107.i_crit_edge, %land.lhs.true86.i.cond.false107.i_crit_edge, %cond.end81.i.cond.false107.i_crit_edge
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i, align 8
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %add112.i = add i32 %138, 2148
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add112.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end113.i

cond.end113.i:                                    ; preds = %cond.false107.i, %cond.true97.i
  %139 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %virt.i, align 8
  %and116.i = and i32 %140, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %cond.end113.i.cond.false139.i_crit_edge, label %land.lhs.true118.i

cond.end113.i.cond.false139.i_crit_edge:          ; preds = %cond.end113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false139.i

land.lhs.true118.i:                               ; preds = %cond.end113.i
  %141 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %funcs.i, align 4
  %tobool122.not.i = icmp eq ptr %142, null
  br i1 %tobool122.not.i, label %land.lhs.true118.i.cond.false139.i_crit_edge, label %land.lhs.true123.i

land.lhs.true118.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false139.i

land.lhs.true123.i:                               ; preds = %land.lhs.true118.i
  %sriov_wreg127.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %142, i32 0, i32 12
  %143 = ptrtoint ptr %sriov_wreg127.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sriov_wreg127.i, align 4
  %tobool128.not.i = icmp eq ptr %144, null
  br i1 %tobool128.not.i, label %land.lhs.true123.i.cond.false139.i_crit_edge, label %cond.true129.i

land.lhs.true123.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false139.i

cond.true129.i:                                   ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #7
  %145 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i, align 8
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 4
  %add138.i = add i32 %148, 2146
  tail call void %144(ptr noundef %adev, i32 noundef %add138.i, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end145.i

cond.false139.i:                                  ; preds = %land.lhs.true123.i.cond.false139.i_crit_edge, %land.lhs.true118.i.cond.false139.i_crit_edge, %cond.end113.i.cond.false139.i_crit_edge
  %149 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i, align 8
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %150, align 4
  %add144.i = add i32 %152, 2146
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add144.i, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end145.i

cond.end145.i:                                    ; preds = %cond.false139.i, %cond.true129.i
  %153 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %virt.i, align 8
  %and148.i = and i32 %154, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %cond.end145.i.cond.false171.i_crit_edge, label %land.lhs.true150.i

cond.end145.i.cond.false171.i_crit_edge:          ; preds = %cond.end145.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false171.i

land.lhs.true150.i:                               ; preds = %cond.end145.i
  %155 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %funcs.i, align 4
  %tobool154.not.i = icmp eq ptr %156, null
  br i1 %tobool154.not.i, label %land.lhs.true150.i.cond.false171.i_crit_edge, label %land.lhs.true155.i

land.lhs.true150.i.cond.false171.i_crit_edge:     ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false171.i

land.lhs.true155.i:                               ; preds = %land.lhs.true150.i
  %sriov_wreg159.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %156, i32 0, i32 12
  %157 = ptrtoint ptr %sriov_wreg159.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %sriov_wreg159.i, align 4
  %tobool160.not.i = icmp eq ptr %158, null
  br i1 %tobool160.not.i, label %land.lhs.true155.i.cond.false171.i_crit_edge, label %cond.true161.i

land.lhs.true155.i.cond.false171.i_crit_edge:     ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false171.i

cond.true161.i:                                   ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #7
  %159 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i, align 8
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  %add170.i = add i32 %162, 2149
  tail call void %158(ptr noundef %adev, i32 noundef %add170.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end177.i

cond.false171.i:                                  ; preds = %land.lhs.true155.i.cond.false171.i_crit_edge, %land.lhs.true150.i.cond.false171.i_crit_edge, %cond.end145.i.cond.false171.i_crit_edge
  %163 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx.i, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  %add176.i = add i32 %166, 2149
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add176.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end177.i

cond.end177.i:                                    ; preds = %cond.false171.i, %cond.true161.i
  %167 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %virt.i, align 8
  %and180.i = and i32 %168, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180.i)
  %tobool181.not.i = icmp eq i32 %and180.i, 0
  br i1 %tobool181.not.i, label %cond.end177.i.cond.false203.i_crit_edge, label %land.lhs.true182.i

cond.end177.i.cond.false203.i_crit_edge:          ; preds = %cond.end177.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false203.i

land.lhs.true182.i:                               ; preds = %cond.end177.i
  %169 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %funcs.i, align 4
  %tobool186.not.i = icmp eq ptr %170, null
  br i1 %tobool186.not.i, label %land.lhs.true182.i.cond.false203.i_crit_edge, label %land.lhs.true187.i

land.lhs.true182.i.cond.false203.i_crit_edge:     ; preds = %land.lhs.true182.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false203.i

land.lhs.true187.i:                               ; preds = %land.lhs.true182.i
  %sriov_wreg191.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %170, i32 0, i32 12
  %171 = ptrtoint ptr %sriov_wreg191.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sriov_wreg191.i, align 4
  %tobool192.not.i = icmp eq ptr %172, null
  br i1 %tobool192.not.i, label %land.lhs.true187.i.cond.false203.i_crit_edge, label %cond.true193.i

land.lhs.true187.i.cond.false203.i_crit_edge:     ; preds = %land.lhs.true187.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false203.i

cond.true193.i:                                   ; preds = %land.lhs.true187.i
  call void @__sanitizer_cov_trace_pc() #7
  %173 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.i, align 8
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  %add202.i = add i32 %176, 2063
  tail call void %172(ptr noundef %adev, i32 noundef %add202.i, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end209.i

cond.false203.i:                                  ; preds = %land.lhs.true187.i.cond.false203.i_crit_edge, %land.lhs.true182.i.cond.false203.i_crit_edge, %cond.end177.i.cond.false203.i_crit_edge
  %177 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx.i, align 8
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 4
  %add208.i = add i32 %180, 2063
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add208.i, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end209.i

cond.end209.i:                                    ; preds = %cond.false203.i, %cond.true193.i
  %181 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %virt.i, align 8
  %and212.i = and i32 %182, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212.i)
  %tobool213.not.i = icmp eq i32 %and212.i, 0
  br i1 %tobool213.not.i, label %cond.end209.i.cond.false235.i_crit_edge, label %land.lhs.true214.i

cond.end209.i.cond.false235.i_crit_edge:          ; preds = %cond.end209.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false235.i

land.lhs.true214.i:                               ; preds = %cond.end209.i
  %183 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %funcs.i, align 4
  %tobool218.not.i = icmp eq ptr %184, null
  br i1 %tobool218.not.i, label %land.lhs.true214.i.cond.false235.i_crit_edge, label %land.lhs.true219.i

land.lhs.true214.i.cond.false235.i_crit_edge:     ; preds = %land.lhs.true214.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false235.i

land.lhs.true219.i:                               ; preds = %land.lhs.true214.i
  %sriov_wreg223.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %184, i32 0, i32 12
  %185 = ptrtoint ptr %sriov_wreg223.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %sriov_wreg223.i, align 4
  %tobool224.not.i = icmp eq ptr %186, null
  br i1 %tobool224.not.i, label %land.lhs.true219.i.cond.false235.i_crit_edge, label %cond.true225.i

land.lhs.true219.i.cond.false235.i_crit_edge:     ; preds = %land.lhs.true219.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false235.i

cond.true225.i:                                   ; preds = %land.lhs.true219.i
  call void @__sanitizer_cov_trace_pc() #7
  %187 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.i, align 8
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %188, align 4
  %add234.i = add i32 %190, 2065
  tail call void %186(ptr noundef %adev, i32 noundef %add234.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end241.i

cond.false235.i:                                  ; preds = %land.lhs.true219.i.cond.false235.i_crit_edge, %land.lhs.true214.i.cond.false235.i_crit_edge, %cond.end209.i.cond.false235.i_crit_edge
  %191 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i, align 8
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %192, align 4
  %add240.i = add i32 %194, 2065
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add240.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end241.i

cond.end241.i:                                    ; preds = %cond.false235.i, %cond.true225.i
  %195 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %virt.i, align 8
  %and244.i = and i32 %196, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244.i)
  %tobool245.not.i = icmp eq i32 %and244.i, 0
  br i1 %tobool245.not.i, label %cond.end241.i.cond.false267.i_crit_edge, label %land.lhs.true246.i

cond.end241.i.cond.false267.i_crit_edge:          ; preds = %cond.end241.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false267.i

land.lhs.true246.i:                               ; preds = %cond.end241.i
  %197 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %funcs.i, align 4
  %tobool250.not.i = icmp eq ptr %198, null
  br i1 %tobool250.not.i, label %land.lhs.true246.i.cond.false267.i_crit_edge, label %land.lhs.true251.i

land.lhs.true246.i.cond.false267.i_crit_edge:     ; preds = %land.lhs.true246.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false267.i

land.lhs.true251.i:                               ; preds = %land.lhs.true246.i
  %sriov_wreg255.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %198, i32 0, i32 12
  %199 = ptrtoint ptr %sriov_wreg255.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %sriov_wreg255.i, align 4
  %tobool256.not.i = icmp eq ptr %200, null
  br i1 %tobool256.not.i, label %land.lhs.true251.i.cond.false267.i_crit_edge, label %cond.true257.i

land.lhs.true251.i.cond.false267.i_crit_edge:     ; preds = %land.lhs.true251.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false267.i

cond.true257.i:                                   ; preds = %land.lhs.true251.i
  call void @__sanitizer_cov_trace_pc() #7
  %201 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i, align 8
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 4
  %add266.i = add i32 %204, 2062
  tail call void %200(ptr noundef %adev, i32 noundef %add266.i, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end273.i

cond.false267.i:                                  ; preds = %land.lhs.true251.i.cond.false267.i_crit_edge, %land.lhs.true246.i.cond.false267.i_crit_edge, %cond.end241.i.cond.false267.i_crit_edge
  %205 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx.i, align 8
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %206, align 4
  %add272.i = add i32 %208, 2062
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add272.i, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end273.i

cond.end273.i:                                    ; preds = %cond.false267.i, %cond.true257.i
  %209 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %virt.i, align 8
  %and276.i = and i32 %210, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276.i)
  %tobool277.not.i = icmp eq i32 %and276.i, 0
  br i1 %tobool277.not.i, label %cond.end273.i.cond.false299.i_crit_edge, label %land.lhs.true278.i

cond.end273.i.cond.false299.i_crit_edge:          ; preds = %cond.end273.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false299.i

land.lhs.true278.i:                               ; preds = %cond.end273.i
  %211 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %funcs.i, align 4
  %tobool282.not.i = icmp eq ptr %212, null
  br i1 %tobool282.not.i, label %land.lhs.true278.i.cond.false299.i_crit_edge, label %land.lhs.true283.i

land.lhs.true278.i.cond.false299.i_crit_edge:     ; preds = %land.lhs.true278.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false299.i

land.lhs.true283.i:                               ; preds = %land.lhs.true278.i
  %sriov_wreg287.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %212, i32 0, i32 12
  %213 = ptrtoint ptr %sriov_wreg287.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sriov_wreg287.i, align 4
  %tobool288.not.i = icmp eq ptr %214, null
  br i1 %tobool288.not.i, label %land.lhs.true283.i.cond.false299.i_crit_edge, label %cond.true289.i

land.lhs.true283.i.cond.false299.i_crit_edge:     ; preds = %land.lhs.true283.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false299.i

cond.true289.i:                                   ; preds = %land.lhs.true283.i
  call void @__sanitizer_cov_trace_pc() #7
  %215 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx.i, align 8
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %216, align 4
  %add298.i = add i32 %218, 2065
  tail call void %214(ptr noundef %adev, i32 noundef %add298.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  br label %for.body.i102.preheader

cond.false299.i:                                  ; preds = %land.lhs.true283.i.cond.false299.i_crit_edge, %land.lhs.true278.i.cond.false299.i_crit_edge, %cond.end273.i.cond.false299.i_crit_edge
  %219 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx.i, align 8
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %220, align 4
  %add304.i = add i32 %222, 2065
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add304.i, i32 noundef 0, i32 noundef 0) #5
  br label %for.body.i102.preheader

for.body.i102.preheader:                          ; preds = %cond.false299.i, %cond.true289.i
  br label %for.body.i102

for.body.i102:                                    ; preds = %for.inc.i108.for.body.i102_crit_edge, %for.body.i102.preheader
  %i.01.i101 = phi i32 [ %inc.i106, %for.inc.i108.for.body.i102_crit_edge ], [ 0, %for.body.i102.preheader ]
  %223 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %virt.i, align 8
  %and308.i = and i32 %224, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and308.i)
  %tobool309.not.i = icmp eq i32 %and308.i, 0
  br i1 %tobool309.not.i, label %for.body.i102.cond.false331.i_crit_edge, label %land.lhs.true310.i

for.body.i102.cond.false331.i_crit_edge:          ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false331.i

land.lhs.true310.i:                               ; preds = %for.body.i102
  %225 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %funcs.i, align 4
  %tobool314.not.i = icmp eq ptr %226, null
  br i1 %tobool314.not.i, label %land.lhs.true310.i.cond.false331.i_crit_edge, label %land.lhs.true315.i

land.lhs.true310.i.cond.false331.i_crit_edge:     ; preds = %land.lhs.true310.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false331.i

land.lhs.true315.i:                               ; preds = %land.lhs.true310.i
  %sriov_wreg319.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %226, i32 0, i32 12
  %227 = ptrtoint ptr %sriov_wreg319.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %sriov_wreg319.i, align 4
  %tobool320.not.i = icmp eq ptr %228, null
  br i1 %tobool320.not.i, label %land.lhs.true315.i.cond.false331.i_crit_edge, label %cond.true321.i

land.lhs.true315.i.cond.false331.i_crit_edge:     ; preds = %land.lhs.true315.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false331.i

cond.true321.i:                                   ; preds = %land.lhs.true315.i
  call void @__sanitizer_cov_trace_pc() #7
  %229 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx.i, align 8
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %230, align 4
  %add330.i = add i32 %232, 2144
  tail call void %228(ptr noundef %adev, i32 noundef %add330.i, i32 noundef %i.01.i101, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end337.i

cond.false331.i:                                  ; preds = %land.lhs.true315.i.cond.false331.i_crit_edge, %land.lhs.true310.i.cond.false331.i_crit_edge, %for.body.i102.cond.false331.i_crit_edge
  %233 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx.i, align 8
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %234, align 4
  %add336.i = add i32 %236, 2144
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add336.i, i32 noundef %i.01.i101, i32 noundef 0) #5
  br label %cond.end337.i

cond.end337.i:                                    ; preds = %cond.false331.i, %cond.true321.i
  %237 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %virt.i, align 8
  %and340.i = and i32 %238, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340.i)
  %tobool341.not.i = icmp eq i32 %and340.i, 0
  br i1 %tobool341.not.i, label %cond.end337.i.cond.false362.i_crit_edge, label %land.lhs.true342.i

cond.end337.i.cond.false362.i_crit_edge:          ; preds = %cond.end337.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false362.i

land.lhs.true342.i:                               ; preds = %cond.end337.i
  %239 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %funcs.i, align 4
  %tobool346.not.i = icmp eq ptr %240, null
  br i1 %tobool346.not.i, label %land.lhs.true342.i.cond.false362.i_crit_edge, label %land.lhs.true347.i

land.lhs.true342.i.cond.false362.i_crit_edge:     ; preds = %land.lhs.true342.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false362.i

land.lhs.true347.i:                               ; preds = %land.lhs.true342.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %240, i32 0, i32 13
  %241 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool351.not.i = icmp eq ptr %242, null
  br i1 %tobool351.not.i, label %land.lhs.true347.i.cond.false362.i_crit_edge, label %cond.true352.i

land.lhs.true347.i.cond.false362.i_crit_edge:     ; preds = %land.lhs.true347.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false362.i

cond.true352.i:                                   ; preds = %land.lhs.true347.i
  call void @__sanitizer_cov_trace_pc() #7
  %243 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %arrayidx.i, align 8
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %244, align 4
  %add361.i = add i32 %246, 2147
  %call.i = tail call i32 %242(ptr noundef %adev, i32 noundef %add361.i, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end369.i

cond.false362.i:                                  ; preds = %land.lhs.true347.i.cond.false362.i_crit_edge, %land.lhs.true342.i.cond.false362.i_crit_edge, %cond.end337.i.cond.false362.i_crit_edge
  %247 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx.i, align 8
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %248, align 4
  %add367.i = add i32 %250, 2147
  %call368.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add367.i, i32 noundef 0) #5
  br label %cond.end369.i

cond.end369.i:                                    ; preds = %cond.false362.i, %cond.true352.i
  %cond.i = phi i32 [ %call.i, %cond.true352.i ], [ %call368.i, %cond.false362.i ]
  %and370.i = lshr i32 %cond.i, 12
  %shr.i103 = and i32 %and370.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i103)
  %tobool371.not.i = icmp eq i32 %shr.i103, 0
  br i1 %tobool371.not.i, label %cond.end369.i.if.end.i105_crit_edge, label %do.end.i104

cond.end369.i.if.end.i105_crit_edge:              ; preds = %cond.end369.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i105

do.end.i104:                                      ; preds = %cond.end369.i
  call void @__sanitizer_cov_trace_pc() #7
  %251 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %adev, align 8
  %arrayidx372.i = getelementptr [41 x ptr], ptr @vml2_mems, i32 0, i32 %i.01.i101
  %253 = ptrtoint ptr %arrayidx372.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %arrayidx372.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %252, ptr noundef nonnull @.str.138, i32 noundef %i.01.i101, ptr noundef %254, i32 noundef %shr.i103) #8
  %255 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %ce_count, align 4
  %add373.i = add i32 %256, %shr.i103
  store i32 %add373.i, ptr %ce_count, align 4
  br label %if.end.i105

if.end.i105:                                      ; preds = %do.end.i104, %cond.end369.i.if.end.i105_crit_edge
  %and374.i = lshr i32 %cond.i, 14
  %shr375.i = and i32 %and374.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr375.i)
  %tobool376.not.i = icmp eq i32 %shr375.i, 0
  br i1 %tobool376.not.i, label %if.end.i105.for.inc.i108_crit_edge, label %do.end380.i

if.end.i105.for.inc.i108_crit_edge:               ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i108

do.end380.i:                                      ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #7
  %257 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %adev, align 8
  %arrayidx382.i = getelementptr [41 x ptr], ptr @vml2_mems, i32 0, i32 %i.01.i101
  %259 = ptrtoint ptr %arrayidx382.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx382.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %258, ptr noundef nonnull @.str.141, i32 noundef %i.01.i101, ptr noundef %260, i32 noundef %shr375.i) #8
  %261 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %ras_error_status, align 4
  %add383.i = add i32 %262, %shr375.i
  store i32 %add383.i, ptr %ras_error_status, align 4
  br label %for.inc.i108

for.inc.i108:                                     ; preds = %do.end380.i, %if.end.i105.for.inc.i108_crit_edge
  %inc.i106 = add nuw nsw i32 %i.01.i101, 1
  %exitcond.not.i107 = icmp eq i32 %inc.i106, 41
  br i1 %exitcond.not.i107, label %for.inc.i108.for.body387.i_crit_edge, label %for.inc.i108.for.body.i102_crit_edge

for.inc.i108.for.body.i102_crit_edge:             ; preds = %for.inc.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i102

for.inc.i108.for.body387.i_crit_edge:             ; preds = %for.inc.i108
  br label %for.body387.i

for.body387.i:                                    ; preds = %for.inc479.i.for.body387.i_crit_edge, %for.inc.i108.for.body387.i_crit_edge
  %i.16.i = phi i32 [ %inc480.i, %for.inc479.i.for.body387.i_crit_edge ], [ 0, %for.inc.i108.for.body387.i_crit_edge ]
  %263 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %virt.i, align 8
  %and390.i = and i32 %264, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390.i)
  %tobool391.not.i = icmp eq i32 %and390.i, 0
  br i1 %tobool391.not.i, label %for.body387.i.cond.false413.i_crit_edge, label %land.lhs.true392.i

for.body387.i.cond.false413.i_crit_edge:          ; preds = %for.body387.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false413.i

land.lhs.true392.i:                               ; preds = %for.body387.i
  %265 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %funcs.i, align 4
  %tobool396.not.i = icmp eq ptr %266, null
  br i1 %tobool396.not.i, label %land.lhs.true392.i.cond.false413.i_crit_edge, label %land.lhs.true397.i

land.lhs.true392.i.cond.false413.i_crit_edge:     ; preds = %land.lhs.true392.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false413.i

land.lhs.true397.i:                               ; preds = %land.lhs.true392.i
  %sriov_wreg401.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %266, i32 0, i32 12
  %267 = ptrtoint ptr %sriov_wreg401.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %sriov_wreg401.i, align 4
  %tobool402.not.i = icmp eq ptr %268, null
  br i1 %tobool402.not.i, label %land.lhs.true397.i.cond.false413.i_crit_edge, label %cond.true403.i

land.lhs.true397.i.cond.false413.i_crit_edge:     ; preds = %land.lhs.true397.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false413.i

cond.true403.i:                                   ; preds = %land.lhs.true397.i
  call void @__sanitizer_cov_trace_pc() #7
  %269 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx.i, align 8
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %270, align 4
  %add412.i = add i32 %272, 2145
  tail call void %268(ptr noundef %adev, i32 noundef %add412.i, i32 noundef %i.16.i, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end419.i

cond.false413.i:                                  ; preds = %land.lhs.true397.i.cond.false413.i_crit_edge, %land.lhs.true392.i.cond.false413.i_crit_edge, %for.body387.i.cond.false413.i_crit_edge
  %273 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %arrayidx.i, align 8
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %274, align 4
  %add418.i = add i32 %276, 2145
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add418.i, i32 noundef %i.16.i, i32 noundef 0) #5
  br label %cond.end419.i

cond.end419.i:                                    ; preds = %cond.false413.i, %cond.true403.i
  %277 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %virt.i, align 8
  %and422.i = and i32 %278, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and422.i)
  %tobool423.not.i = icmp eq i32 %and422.i, 0
  br i1 %tobool423.not.i, label %cond.end419.i.cond.false446.i_crit_edge, label %land.lhs.true424.i

cond.end419.i.cond.false446.i_crit_edge:          ; preds = %cond.end419.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false446.i

land.lhs.true424.i:                               ; preds = %cond.end419.i
  %279 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %funcs.i, align 4
  %tobool428.not.i = icmp eq ptr %280, null
  br i1 %tobool428.not.i, label %land.lhs.true424.i.cond.false446.i_crit_edge, label %land.lhs.true429.i

land.lhs.true424.i.cond.false446.i_crit_edge:     ; preds = %land.lhs.true424.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false446.i

land.lhs.true429.i:                               ; preds = %land.lhs.true424.i
  %sriov_rreg433.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %280, i32 0, i32 13
  %281 = ptrtoint ptr %sriov_rreg433.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %sriov_rreg433.i, align 4
  %tobool434.not.i = icmp eq ptr %282, null
  br i1 %tobool434.not.i, label %land.lhs.true429.i.cond.false446.i_crit_edge, label %cond.true435.i

land.lhs.true429.i.cond.false446.i_crit_edge:     ; preds = %land.lhs.true429.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false446.i

cond.true435.i:                                   ; preds = %land.lhs.true429.i
  call void @__sanitizer_cov_trace_pc() #7
  %283 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %arrayidx.i, align 8
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %284, align 4
  %add444.i = add i32 %286, 2148
  %call445.i = tail call i32 %282(ptr noundef %adev, i32 noundef %add444.i, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end453.i

cond.false446.i:                                  ; preds = %land.lhs.true429.i.cond.false446.i_crit_edge, %land.lhs.true424.i.cond.false446.i_crit_edge, %cond.end419.i.cond.false446.i_crit_edge
  %287 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %arrayidx.i, align 8
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %288, align 4
  %add451.i = add i32 %290, 2148
  %call452.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add451.i, i32 noundef 0) #5
  br label %cond.end453.i

cond.end453.i:                                    ; preds = %cond.false446.i, %cond.true435.i
  %cond454.i = phi i32 [ %call445.i, %cond.true435.i ], [ %call452.i, %cond.false446.i ]
  %and455.i = lshr i32 %cond454.i, 12
  %shr456.i = and i32 %and455.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr456.i)
  %tobool457.not.i = icmp eq i32 %shr456.i, 0
  br i1 %tobool457.not.i, label %cond.end453.i.if.end466.i_crit_edge, label %do.end461.i

cond.end453.i.if.end466.i_crit_edge:              ; preds = %cond.end453.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end466.i

do.end461.i:                                      ; preds = %cond.end453.i
  call void @__sanitizer_cov_trace_pc() #7
  %291 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %adev, align 8
  %arrayidx463.i = getelementptr [10 x ptr], ptr @vml2_walker_mems, i32 0, i32 %i.16.i
  %293 = ptrtoint ptr %arrayidx463.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx463.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %292, ptr noundef nonnull @.str.138, i32 noundef %i.16.i, ptr noundef %294, i32 noundef %shr456.i) #8
  %295 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %ce_count, align 4
  %add465.i = add i32 %296, %shr456.i
  store i32 %add465.i, ptr %ce_count, align 4
  br label %if.end466.i

if.end466.i:                                      ; preds = %do.end461.i, %cond.end453.i.if.end466.i_crit_edge
  %and467.i = lshr i32 %cond454.i, 14
  %shr468.i = and i32 %and467.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr468.i)
  %tobool469.not.i = icmp eq i32 %shr468.i, 0
  br i1 %tobool469.not.i, label %if.end466.i.for.inc479.i_crit_edge, label %do.end473.i

if.end466.i.for.inc479.i_crit_edge:               ; preds = %if.end466.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc479.i

do.end473.i:                                      ; preds = %if.end466.i
  call void @__sanitizer_cov_trace_pc() #7
  %297 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %adev, align 8
  %arrayidx475.i = getelementptr [10 x ptr], ptr @vml2_walker_mems, i32 0, i32 %i.16.i
  %299 = ptrtoint ptr %arrayidx475.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %arrayidx475.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %298, ptr noundef nonnull @.str.141, i32 noundef %i.16.i, ptr noundef %300, i32 noundef %shr468.i) #8
  %301 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %ras_error_status, align 4
  %add477.i = add i32 %302, %shr468.i
  store i32 %add477.i, ptr %ras_error_status, align 4
  br label %for.inc479.i

for.inc479.i:                                     ; preds = %do.end473.i, %if.end466.i.for.inc479.i_crit_edge
  %inc480.i = add nuw nsw i32 %i.16.i, 1
  %exitcond26.not.i = icmp eq i32 %inc480.i, 10
  br i1 %exitcond26.not.i, label %for.inc479.i.for.body484.i_crit_edge, label %for.inc479.i.for.body387.i_crit_edge

for.inc479.i.for.body387.i_crit_edge:             ; preds = %for.inc479.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body387.i

for.inc479.i.for.body484.i_crit_edge:             ; preds = %for.inc479.i
  br label %for.body484.i

for.body484.i:                                    ; preds = %for.inc576.i.for.body484.i_crit_edge, %for.inc479.i.for.body484.i_crit_edge
  %i.211.i = phi i32 [ %inc577.i, %for.inc576.i.for.body484.i_crit_edge ], [ 0, %for.inc479.i.for.body484.i_crit_edge ]
  %303 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %virt.i, align 8
  %and487.i = and i32 %304, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and487.i)
  %tobool488.not.i = icmp eq i32 %and487.i, 0
  br i1 %tobool488.not.i, label %for.body484.i.cond.false510.i_crit_edge, label %land.lhs.true489.i

for.body484.i.cond.false510.i_crit_edge:          ; preds = %for.body484.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false510.i

land.lhs.true489.i:                               ; preds = %for.body484.i
  %305 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %funcs.i, align 4
  %tobool493.not.i = icmp eq ptr %306, null
  br i1 %tobool493.not.i, label %land.lhs.true489.i.cond.false510.i_crit_edge, label %land.lhs.true494.i

land.lhs.true489.i.cond.false510.i_crit_edge:     ; preds = %land.lhs.true489.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false510.i

land.lhs.true494.i:                               ; preds = %land.lhs.true489.i
  %sriov_wreg498.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %306, i32 0, i32 12
  %307 = ptrtoint ptr %sriov_wreg498.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %sriov_wreg498.i, align 4
  %tobool499.not.i = icmp eq ptr %308, null
  br i1 %tobool499.not.i, label %land.lhs.true494.i.cond.false510.i_crit_edge, label %cond.true500.i

land.lhs.true494.i.cond.false510.i_crit_edge:     ; preds = %land.lhs.true494.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false510.i

cond.true500.i:                                   ; preds = %land.lhs.true494.i
  call void @__sanitizer_cov_trace_pc() #7
  %309 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %arrayidx.i, align 8
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %310, align 4
  %add509.i = add i32 %312, 2146
  tail call void %308(ptr noundef %adev, i32 noundef %add509.i, i32 noundef %i.211.i, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end516.i

cond.false510.i:                                  ; preds = %land.lhs.true494.i.cond.false510.i_crit_edge, %land.lhs.true489.i.cond.false510.i_crit_edge, %for.body484.i.cond.false510.i_crit_edge
  %313 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %arrayidx.i, align 8
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %314, align 4
  %add515.i = add i32 %316, 2146
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add515.i, i32 noundef %i.211.i, i32 noundef 0) #5
  br label %cond.end516.i

cond.end516.i:                                    ; preds = %cond.false510.i, %cond.true500.i
  %317 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %virt.i, align 8
  %and519.i = and i32 %318, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and519.i)
  %tobool520.not.i = icmp eq i32 %and519.i, 0
  br i1 %tobool520.not.i, label %cond.end516.i.cond.false543.i_crit_edge, label %land.lhs.true521.i

cond.end516.i.cond.false543.i_crit_edge:          ; preds = %cond.end516.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false543.i

land.lhs.true521.i:                               ; preds = %cond.end516.i
  %319 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %funcs.i, align 4
  %tobool525.not.i = icmp eq ptr %320, null
  br i1 %tobool525.not.i, label %land.lhs.true521.i.cond.false543.i_crit_edge, label %land.lhs.true526.i

land.lhs.true521.i.cond.false543.i_crit_edge:     ; preds = %land.lhs.true521.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false543.i

land.lhs.true526.i:                               ; preds = %land.lhs.true521.i
  %sriov_rreg530.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %320, i32 0, i32 13
  %321 = ptrtoint ptr %sriov_rreg530.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %sriov_rreg530.i, align 4
  %tobool531.not.i = icmp eq ptr %322, null
  br i1 %tobool531.not.i, label %land.lhs.true526.i.cond.false543.i_crit_edge, label %cond.true532.i

land.lhs.true526.i.cond.false543.i_crit_edge:     ; preds = %land.lhs.true526.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false543.i

cond.true532.i:                                   ; preds = %land.lhs.true526.i
  call void @__sanitizer_cov_trace_pc() #7
  %323 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %arrayidx.i, align 8
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %324, align 4
  %add541.i = add i32 %326, 2149
  %call542.i = tail call i32 %322(ptr noundef %adev, i32 noundef %add541.i, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end550.i

cond.false543.i:                                  ; preds = %land.lhs.true526.i.cond.false543.i_crit_edge, %land.lhs.true521.i.cond.false543.i_crit_edge, %cond.end516.i.cond.false543.i_crit_edge
  %327 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %arrayidx.i, align 8
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %328, align 4
  %add548.i = add i32 %330, 2149
  %call549.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add548.i, i32 noundef 0) #5
  br label %cond.end550.i

cond.end550.i:                                    ; preds = %cond.false543.i, %cond.true532.i
  %cond551.i = phi i32 [ %call542.i, %cond.true532.i ], [ %call549.i, %cond.false543.i ]
  %and552.i = lshr i32 %cond551.i, 12
  %shr553.i = and i32 %and552.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr553.i)
  %tobool554.not.i = icmp eq i32 %shr553.i, 0
  br i1 %tobool554.not.i, label %cond.end550.i.if.end563.i_crit_edge, label %do.end558.i

cond.end550.i.if.end563.i_crit_edge:              ; preds = %cond.end550.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end563.i

do.end558.i:                                      ; preds = %cond.end550.i
  call void @__sanitizer_cov_trace_pc() #7
  %331 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %adev, align 8
  %arrayidx560.i = getelementptr [25 x ptr], ptr @utcl2_router_mems, i32 0, i32 %i.211.i
  %333 = ptrtoint ptr %arrayidx560.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %arrayidx560.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %332, ptr noundef nonnull @.str.138, i32 noundef %i.211.i, ptr noundef %334, i32 noundef %shr553.i) #8
  %335 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %ce_count, align 4
  %add562.i = add i32 %336, %shr553.i
  store i32 %add562.i, ptr %ce_count, align 4
  br label %if.end563.i

if.end563.i:                                      ; preds = %do.end558.i, %cond.end550.i.if.end563.i_crit_edge
  %and564.i = lshr i32 %cond551.i, 14
  %shr565.i = and i32 %and564.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr565.i)
  %tobool566.not.i = icmp eq i32 %shr565.i, 0
  br i1 %tobool566.not.i, label %if.end563.i.for.inc576.i_crit_edge, label %do.end570.i

if.end563.i.for.inc576.i_crit_edge:               ; preds = %if.end563.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc576.i

do.end570.i:                                      ; preds = %if.end563.i
  call void @__sanitizer_cov_trace_pc() #7
  %337 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %adev, align 8
  %arrayidx572.i = getelementptr [25 x ptr], ptr @utcl2_router_mems, i32 0, i32 %i.211.i
  %339 = ptrtoint ptr %arrayidx572.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %arrayidx572.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %338, ptr noundef nonnull @.str.141, i32 noundef %i.211.i, ptr noundef %340, i32 noundef %shr565.i) #8
  %341 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %ras_error_status, align 4
  %add574.i = add i32 %342, %shr565.i
  store i32 %add574.i, ptr %ras_error_status, align 4
  br label %for.inc576.i

for.inc576.i:                                     ; preds = %do.end570.i, %if.end563.i.for.inc576.i_crit_edge
  %inc577.i = add nuw nsw i32 %i.211.i, 1
  %exitcond27.not.i = icmp eq i32 %inc577.i, 25
  br i1 %exitcond27.not.i, label %for.inc576.i.for.body581.i_crit_edge, label %for.inc576.i.for.body484.i_crit_edge

for.inc576.i.for.body484.i_crit_edge:             ; preds = %for.inc576.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body484.i

for.inc576.i.for.body581.i_crit_edge:             ; preds = %for.inc576.i
  br label %for.body581.i

for.body581.i:                                    ; preds = %for.inc673.i.for.body581.i_crit_edge, %for.inc576.i.for.body581.i_crit_edge
  %i.316.i = phi i32 [ %inc674.i, %for.inc673.i.for.body581.i_crit_edge ], [ 0, %for.inc576.i.for.body581.i_crit_edge ]
  %343 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %virt.i, align 8
  %and584.i = and i32 %344, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and584.i)
  %tobool585.not.i = icmp eq i32 %and584.i, 0
  br i1 %tobool585.not.i, label %for.body581.i.cond.false607.i_crit_edge, label %land.lhs.true586.i

for.body581.i.cond.false607.i_crit_edge:          ; preds = %for.body581.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false607.i

land.lhs.true586.i:                               ; preds = %for.body581.i
  %345 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %funcs.i, align 4
  %tobool590.not.i = icmp eq ptr %346, null
  br i1 %tobool590.not.i, label %land.lhs.true586.i.cond.false607.i_crit_edge, label %land.lhs.true591.i

land.lhs.true586.i.cond.false607.i_crit_edge:     ; preds = %land.lhs.true586.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false607.i

land.lhs.true591.i:                               ; preds = %land.lhs.true586.i
  %sriov_wreg595.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %346, i32 0, i32 12
  %347 = ptrtoint ptr %sriov_wreg595.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %sriov_wreg595.i, align 4
  %tobool596.not.i = icmp eq ptr %348, null
  br i1 %tobool596.not.i, label %land.lhs.true591.i.cond.false607.i_crit_edge, label %cond.true597.i

land.lhs.true591.i.cond.false607.i_crit_edge:     ; preds = %land.lhs.true591.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false607.i

cond.true597.i:                                   ; preds = %land.lhs.true591.i
  call void @__sanitizer_cov_trace_pc() #7
  %349 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %arrayidx.i, align 8
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %350, align 4
  %add606.i = add i32 %352, 2063
  tail call void %348(ptr noundef %adev, i32 noundef %add606.i, i32 noundef %i.316.i, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end613.i

cond.false607.i:                                  ; preds = %land.lhs.true591.i.cond.false607.i_crit_edge, %land.lhs.true586.i.cond.false607.i_crit_edge, %for.body581.i.cond.false607.i_crit_edge
  %353 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx.i, align 8
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %354, align 4
  %add612.i = add i32 %356, 2063
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add612.i, i32 noundef %i.316.i, i32 noundef 0) #5
  br label %cond.end613.i

cond.end613.i:                                    ; preds = %cond.false607.i, %cond.true597.i
  %357 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %virt.i, align 8
  %and616.i = and i32 %358, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and616.i)
  %tobool617.not.i = icmp eq i32 %and616.i, 0
  br i1 %tobool617.not.i, label %cond.end613.i.cond.false640.i_crit_edge, label %land.lhs.true618.i

cond.end613.i.cond.false640.i_crit_edge:          ; preds = %cond.end613.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false640.i

land.lhs.true618.i:                               ; preds = %cond.end613.i
  %359 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %funcs.i, align 4
  %tobool622.not.i = icmp eq ptr %360, null
  br i1 %tobool622.not.i, label %land.lhs.true618.i.cond.false640.i_crit_edge, label %land.lhs.true623.i

land.lhs.true618.i.cond.false640.i_crit_edge:     ; preds = %land.lhs.true618.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false640.i

land.lhs.true623.i:                               ; preds = %land.lhs.true618.i
  %sriov_rreg627.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %360, i32 0, i32 13
  %361 = ptrtoint ptr %sriov_rreg627.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %sriov_rreg627.i, align 4
  %tobool628.not.i = icmp eq ptr %362, null
  br i1 %tobool628.not.i, label %land.lhs.true623.i.cond.false640.i_crit_edge, label %cond.true629.i

land.lhs.true623.i.cond.false640.i_crit_edge:     ; preds = %land.lhs.true623.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false640.i

cond.true629.i:                                   ; preds = %land.lhs.true623.i
  call void @__sanitizer_cov_trace_pc() #7
  %363 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %arrayidx.i, align 8
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %364, align 4
  %add638.i = add i32 %366, 2065
  %call639.i = tail call i32 %362(ptr noundef %adev, i32 noundef %add638.i, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end647.i

cond.false640.i:                                  ; preds = %land.lhs.true623.i.cond.false640.i_crit_edge, %land.lhs.true618.i.cond.false640.i_crit_edge, %cond.end613.i.cond.false640.i_crit_edge
  %367 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %arrayidx.i, align 8
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %368, align 4
  %add645.i = add i32 %370, 2065
  %call646.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add645.i, i32 noundef 0) #5
  br label %cond.end647.i

cond.end647.i:                                    ; preds = %cond.false640.i, %cond.true629.i
  %cond648.i = phi i32 [ %call639.i, %cond.true629.i ], [ %call646.i, %cond.false640.i ]
  %and649.i = lshr i32 %cond648.i, 13
  %shr650.i = and i32 %and649.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr650.i)
  %tobool651.not.i = icmp eq i32 %shr650.i, 0
  br i1 %tobool651.not.i, label %cond.end647.i.if.end660.i_crit_edge, label %do.end655.i

cond.end647.i.if.end660.i_crit_edge:              ; preds = %cond.end647.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end660.i

do.end655.i:                                      ; preds = %cond.end647.i
  call void @__sanitizer_cov_trace_pc() #7
  %371 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %adev, align 8
  %arrayidx657.i = getelementptr [4 x ptr], ptr @atc_l2_cache_2m_mems, i32 0, i32 %i.316.i
  %373 = ptrtoint ptr %arrayidx657.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %arrayidx657.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %372, ptr noundef nonnull @.str.138, i32 noundef %i.316.i, ptr noundef %374, i32 noundef %shr650.i) #8
  %375 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %ce_count, align 4
  %add659.i = add i32 %376, %shr650.i
  store i32 %add659.i, ptr %ce_count, align 4
  br label %if.end660.i

if.end660.i:                                      ; preds = %do.end655.i, %cond.end647.i.if.end660.i_crit_edge
  %and661.i = lshr i32 %cond648.i, 15
  %shr662.i = and i32 %and661.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr662.i)
  %tobool663.not.i = icmp eq i32 %shr662.i, 0
  br i1 %tobool663.not.i, label %if.end660.i.for.inc673.i_crit_edge, label %do.end667.i

if.end660.i.for.inc673.i_crit_edge:               ; preds = %if.end660.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc673.i

do.end667.i:                                      ; preds = %if.end660.i
  call void @__sanitizer_cov_trace_pc() #7
  %377 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %adev, align 8
  %arrayidx669.i = getelementptr [4 x ptr], ptr @atc_l2_cache_2m_mems, i32 0, i32 %i.316.i
  %379 = ptrtoint ptr %arrayidx669.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %arrayidx669.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %378, ptr noundef nonnull @.str.141, i32 noundef %i.316.i, ptr noundef %380, i32 noundef %shr662.i) #8
  %381 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %ras_error_status, align 4
  %add671.i = add i32 %382, %shr662.i
  store i32 %add671.i, ptr %ras_error_status, align 4
  br label %for.inc673.i

for.inc673.i:                                     ; preds = %do.end667.i, %if.end660.i.for.inc673.i_crit_edge
  %inc674.i = add nuw nsw i32 %i.316.i, 1
  %exitcond28.not.i = icmp eq i32 %inc674.i, 4
  br i1 %exitcond28.not.i, label %for.inc673.i.for.body678.i_crit_edge, label %for.inc673.i.for.body581.i_crit_edge

for.inc673.i.for.body581.i_crit_edge:             ; preds = %for.inc673.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body581.i

for.inc673.i.for.body678.i_crit_edge:             ; preds = %for.inc673.i
  br label %for.body678.i

for.body678.i:                                    ; preds = %for.inc770.i.for.body678.i_crit_edge, %for.inc673.i.for.body678.i_crit_edge
  %i.421.i = phi i32 [ %inc771.i, %for.inc770.i.for.body678.i_crit_edge ], [ 0, %for.inc673.i.for.body678.i_crit_edge ]
  %383 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %virt.i, align 8
  %and681.i = and i32 %384, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and681.i)
  %tobool682.not.i = icmp eq i32 %and681.i, 0
  br i1 %tobool682.not.i, label %for.body678.i.cond.false704.i_crit_edge, label %land.lhs.true683.i

for.body678.i.cond.false704.i_crit_edge:          ; preds = %for.body678.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false704.i

land.lhs.true683.i:                               ; preds = %for.body678.i
  %385 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %funcs.i, align 4
  %tobool687.not.i = icmp eq ptr %386, null
  br i1 %tobool687.not.i, label %land.lhs.true683.i.cond.false704.i_crit_edge, label %land.lhs.true688.i

land.lhs.true683.i.cond.false704.i_crit_edge:     ; preds = %land.lhs.true683.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false704.i

land.lhs.true688.i:                               ; preds = %land.lhs.true683.i
  %sriov_wreg692.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %386, i32 0, i32 12
  %387 = ptrtoint ptr %sriov_wreg692.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %sriov_wreg692.i, align 4
  %tobool693.not.i = icmp eq ptr %388, null
  br i1 %tobool693.not.i, label %land.lhs.true688.i.cond.false704.i_crit_edge, label %cond.true694.i

land.lhs.true688.i.cond.false704.i_crit_edge:     ; preds = %land.lhs.true688.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false704.i

cond.true694.i:                                   ; preds = %land.lhs.true688.i
  call void @__sanitizer_cov_trace_pc() #7
  %389 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %arrayidx.i, align 8
  %391 = ptrtoint ptr %390 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %390, align 4
  %add703.i = add i32 %392, 2062
  tail call void %388(ptr noundef %adev, i32 noundef %add703.i, i32 noundef %i.421.i, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end710.i

cond.false704.i:                                  ; preds = %land.lhs.true688.i.cond.false704.i_crit_edge, %land.lhs.true683.i.cond.false704.i_crit_edge, %for.body678.i.cond.false704.i_crit_edge
  %393 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %arrayidx.i, align 8
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %394, align 4
  %add709.i = add i32 %396, 2062
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add709.i, i32 noundef %i.421.i, i32 noundef 0) #5
  br label %cond.end710.i

cond.end710.i:                                    ; preds = %cond.false704.i, %cond.true694.i
  %397 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %virt.i, align 8
  %and713.i = and i32 %398, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and713.i)
  %tobool714.not.i = icmp eq i32 %and713.i, 0
  br i1 %tobool714.not.i, label %cond.end710.i.cond.false737.i_crit_edge, label %land.lhs.true715.i

cond.end710.i.cond.false737.i_crit_edge:          ; preds = %cond.end710.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false737.i

land.lhs.true715.i:                               ; preds = %cond.end710.i
  %399 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %funcs.i, align 4
  %tobool719.not.i = icmp eq ptr %400, null
  br i1 %tobool719.not.i, label %land.lhs.true715.i.cond.false737.i_crit_edge, label %land.lhs.true720.i

land.lhs.true715.i.cond.false737.i_crit_edge:     ; preds = %land.lhs.true715.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false737.i

land.lhs.true720.i:                               ; preds = %land.lhs.true715.i
  %sriov_rreg724.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %400, i32 0, i32 13
  %401 = ptrtoint ptr %sriov_rreg724.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %sriov_rreg724.i, align 4
  %tobool725.not.i = icmp eq ptr %402, null
  br i1 %tobool725.not.i, label %land.lhs.true720.i.cond.false737.i_crit_edge, label %cond.true726.i

land.lhs.true720.i.cond.false737.i_crit_edge:     ; preds = %land.lhs.true720.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false737.i

cond.true726.i:                                   ; preds = %land.lhs.true720.i
  call void @__sanitizer_cov_trace_pc() #7
  %403 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %arrayidx.i, align 8
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %404, align 4
  %add735.i = add i32 %406, 2064
  %call736.i = tail call i32 %402(ptr noundef %adev, i32 noundef %add735.i, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end744.i

cond.false737.i:                                  ; preds = %land.lhs.true720.i.cond.false737.i_crit_edge, %land.lhs.true715.i.cond.false737.i_crit_edge, %cond.end710.i.cond.false737.i_crit_edge
  %407 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %arrayidx.i, align 8
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %408, align 4
  %add742.i = add i32 %410, 2064
  %call743.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add742.i, i32 noundef 0) #5
  br label %cond.end744.i

cond.end744.i:                                    ; preds = %cond.false737.i, %cond.true726.i
  %cond745.i = phi i32 [ %call736.i, %cond.true726.i ], [ %call743.i, %cond.false737.i ]
  %and746.i = lshr i32 %cond745.i, 13
  %shr747.i = and i32 %and746.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr747.i)
  %tobool748.not.i = icmp eq i32 %shr747.i, 0
  br i1 %tobool748.not.i, label %cond.end744.i.if.end757.i_crit_edge, label %do.end752.i

cond.end744.i.if.end757.i_crit_edge:              ; preds = %cond.end744.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end757.i

do.end752.i:                                      ; preds = %cond.end744.i
  call void @__sanitizer_cov_trace_pc() #7
  %411 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %adev, align 8
  %arrayidx754.i = getelementptr [32 x ptr], ptr @atc_l2_cache_4k_mems, i32 0, i32 %i.421.i
  %413 = ptrtoint ptr %arrayidx754.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %arrayidx754.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %412, ptr noundef nonnull @.str.138, i32 noundef %i.421.i, ptr noundef %414, i32 noundef %shr747.i) #8
  %415 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %ce_count, align 4
  %add756.i = add i32 %416, %shr747.i
  store i32 %add756.i, ptr %ce_count, align 4
  br label %if.end757.i

if.end757.i:                                      ; preds = %do.end752.i, %cond.end744.i.if.end757.i_crit_edge
  %and758.i = lshr i32 %cond745.i, 15
  %shr759.i = and i32 %and758.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr759.i)
  %tobool760.not.i = icmp eq i32 %shr759.i, 0
  br i1 %tobool760.not.i, label %if.end757.i.for.inc770.i_crit_edge, label %do.end764.i

if.end757.i.for.inc770.i_crit_edge:               ; preds = %if.end757.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc770.i

do.end764.i:                                      ; preds = %if.end757.i
  call void @__sanitizer_cov_trace_pc() #7
  %417 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %adev, align 8
  %arrayidx766.i = getelementptr [32 x ptr], ptr @atc_l2_cache_4k_mems, i32 0, i32 %i.421.i
  %419 = ptrtoint ptr %arrayidx766.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %arrayidx766.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %418, ptr noundef nonnull @.str.141, i32 noundef %i.421.i, ptr noundef %420, i32 noundef %shr759.i) #8
  %421 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %ras_error_status, align 4
  %add768.i = add i32 %422, %shr759.i
  store i32 %add768.i, ptr %ras_error_status, align 4
  br label %for.inc770.i

for.inc770.i:                                     ; preds = %do.end764.i, %if.end757.i.for.inc770.i_crit_edge
  %inc771.i = add nuw nsw i32 %i.421.i, 1
  %exitcond29.not.i = icmp eq i32 %inc771.i, 32
  br i1 %exitcond29.not.i, label %for.end772.i, label %for.inc770.i.for.body678.i_crit_edge

for.inc770.i.for.body678.i_crit_edge:             ; preds = %for.inc770.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body678.i

for.end772.i:                                     ; preds = %for.inc770.i
  %423 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %virt.i, align 8
  %and775.i = and i32 %424, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and775.i)
  %tobool776.not.i = icmp eq i32 %and775.i, 0
  br i1 %tobool776.not.i, label %for.end772.i.cond.false798.i_crit_edge, label %land.lhs.true777.i

for.end772.i.cond.false798.i_crit_edge:           ; preds = %for.end772.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false798.i

land.lhs.true777.i:                               ; preds = %for.end772.i
  %425 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %funcs.i, align 4
  %tobool781.not.i = icmp eq ptr %426, null
  br i1 %tobool781.not.i, label %land.lhs.true777.i.cond.false798.i_crit_edge, label %land.lhs.true782.i

land.lhs.true777.i.cond.false798.i_crit_edge:     ; preds = %land.lhs.true777.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false798.i

land.lhs.true782.i:                               ; preds = %land.lhs.true777.i
  %sriov_wreg786.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %426, i32 0, i32 12
  %427 = ptrtoint ptr %sriov_wreg786.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %sriov_wreg786.i, align 4
  %tobool787.not.i = icmp eq ptr %428, null
  br i1 %tobool787.not.i, label %land.lhs.true782.i.cond.false798.i_crit_edge, label %cond.true788.i

land.lhs.true782.i.cond.false798.i_crit_edge:     ; preds = %land.lhs.true782.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false798.i

cond.true788.i:                                   ; preds = %land.lhs.true782.i
  call void @__sanitizer_cov_trace_pc() #7
  %429 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %arrayidx.i, align 8
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %430, align 4
  %add797.i = add i32 %432, 2144
  tail call void %428(ptr noundef %adev, i32 noundef %add797.i, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end804.i

cond.false798.i:                                  ; preds = %land.lhs.true782.i.cond.false798.i_crit_edge, %land.lhs.true777.i.cond.false798.i_crit_edge, %for.end772.i.cond.false798.i_crit_edge
  %433 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %arrayidx.i, align 8
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %434, align 4
  %add803.i = add i32 %436, 2144
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add803.i, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end804.i

cond.end804.i:                                    ; preds = %cond.false798.i, %cond.true788.i
  %437 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %virt.i, align 8
  %and807.i = and i32 %438, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and807.i)
  %tobool808.not.i = icmp eq i32 %and807.i, 0
  br i1 %tobool808.not.i, label %cond.end804.i.cond.false830.i_crit_edge, label %land.lhs.true809.i

cond.end804.i.cond.false830.i_crit_edge:          ; preds = %cond.end804.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false830.i

land.lhs.true809.i:                               ; preds = %cond.end804.i
  %439 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %funcs.i, align 4
  %tobool813.not.i = icmp eq ptr %440, null
  br i1 %tobool813.not.i, label %land.lhs.true809.i.cond.false830.i_crit_edge, label %land.lhs.true814.i

land.lhs.true809.i.cond.false830.i_crit_edge:     ; preds = %land.lhs.true809.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false830.i

land.lhs.true814.i:                               ; preds = %land.lhs.true809.i
  %sriov_wreg818.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %440, i32 0, i32 12
  %441 = ptrtoint ptr %sriov_wreg818.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %sriov_wreg818.i, align 4
  %tobool819.not.i = icmp eq ptr %442, null
  br i1 %tobool819.not.i, label %land.lhs.true814.i.cond.false830.i_crit_edge, label %cond.true820.i

land.lhs.true814.i.cond.false830.i_crit_edge:     ; preds = %land.lhs.true814.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false830.i

cond.true820.i:                                   ; preds = %land.lhs.true814.i
  call void @__sanitizer_cov_trace_pc() #7
  %443 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %arrayidx.i, align 8
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %444, align 4
  %add829.i = add i32 %446, 2145
  tail call void %442(ptr noundef %adev, i32 noundef %add829.i, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end836.i

cond.false830.i:                                  ; preds = %land.lhs.true814.i.cond.false830.i_crit_edge, %land.lhs.true809.i.cond.false830.i_crit_edge, %cond.end804.i.cond.false830.i_crit_edge
  %447 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %arrayidx.i, align 8
  %449 = ptrtoint ptr %448 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %448, align 4
  %add835.i = add i32 %450, 2145
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add835.i, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end836.i

cond.end836.i:                                    ; preds = %cond.false830.i, %cond.true820.i
  %451 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %virt.i, align 8
  %and839.i = and i32 %452, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and839.i)
  %tobool840.not.i = icmp eq i32 %and839.i, 0
  br i1 %tobool840.not.i, label %cond.end836.i.cond.false862.i_crit_edge, label %land.lhs.true841.i

cond.end836.i.cond.false862.i_crit_edge:          ; preds = %cond.end836.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false862.i

land.lhs.true841.i:                               ; preds = %cond.end836.i
  %453 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %funcs.i, align 4
  %tobool845.not.i = icmp eq ptr %454, null
  br i1 %tobool845.not.i, label %land.lhs.true841.i.cond.false862.i_crit_edge, label %land.lhs.true846.i

land.lhs.true841.i.cond.false862.i_crit_edge:     ; preds = %land.lhs.true841.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false862.i

land.lhs.true846.i:                               ; preds = %land.lhs.true841.i
  %sriov_wreg850.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %454, i32 0, i32 12
  %455 = ptrtoint ptr %sriov_wreg850.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %sriov_wreg850.i, align 4
  %tobool851.not.i = icmp eq ptr %456, null
  br i1 %tobool851.not.i, label %land.lhs.true846.i.cond.false862.i_crit_edge, label %cond.true852.i

land.lhs.true846.i.cond.false862.i_crit_edge:     ; preds = %land.lhs.true846.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false862.i

cond.true852.i:                                   ; preds = %land.lhs.true846.i
  call void @__sanitizer_cov_trace_pc() #7
  %457 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %arrayidx.i, align 8
  %459 = ptrtoint ptr %458 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %458, align 4
  %add861.i = add i32 %460, 2146
  tail call void %456(ptr noundef %adev, i32 noundef %add861.i, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end868.i

cond.false862.i:                                  ; preds = %land.lhs.true846.i.cond.false862.i_crit_edge, %land.lhs.true841.i.cond.false862.i_crit_edge, %cond.end836.i.cond.false862.i_crit_edge
  %461 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %arrayidx.i, align 8
  %463 = ptrtoint ptr %462 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %462, align 4
  %add867.i = add i32 %464, 2146
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add867.i, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end868.i

cond.end868.i:                                    ; preds = %cond.false862.i, %cond.true852.i
  %465 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %virt.i, align 8
  %and871.i = and i32 %466, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and871.i)
  %tobool872.not.i = icmp eq i32 %and871.i, 0
  br i1 %tobool872.not.i, label %cond.end868.i.cond.false894.i_crit_edge, label %land.lhs.true873.i

cond.end868.i.cond.false894.i_crit_edge:          ; preds = %cond.end868.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false894.i

land.lhs.true873.i:                               ; preds = %cond.end868.i
  %467 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %funcs.i, align 4
  %tobool877.not.i = icmp eq ptr %468, null
  br i1 %tobool877.not.i, label %land.lhs.true873.i.cond.false894.i_crit_edge, label %land.lhs.true878.i

land.lhs.true873.i.cond.false894.i_crit_edge:     ; preds = %land.lhs.true873.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false894.i

land.lhs.true878.i:                               ; preds = %land.lhs.true873.i
  %sriov_wreg882.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %468, i32 0, i32 12
  %469 = ptrtoint ptr %sriov_wreg882.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %sriov_wreg882.i, align 4
  %tobool883.not.i = icmp eq ptr %470, null
  br i1 %tobool883.not.i, label %land.lhs.true878.i.cond.false894.i_crit_edge, label %cond.true884.i

land.lhs.true878.i.cond.false894.i_crit_edge:     ; preds = %land.lhs.true878.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false894.i

cond.true884.i:                                   ; preds = %land.lhs.true878.i
  call void @__sanitizer_cov_trace_pc() #7
  %471 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %arrayidx.i, align 8
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %472, align 4
  %add893.i = add i32 %474, 2063
  tail call void %470(ptr noundef %adev, i32 noundef %add893.i, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end900.i

cond.false894.i:                                  ; preds = %land.lhs.true878.i.cond.false894.i_crit_edge, %land.lhs.true873.i.cond.false894.i_crit_edge, %cond.end868.i.cond.false894.i_crit_edge
  %475 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %arrayidx.i, align 8
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %476, align 4
  %add899.i = add i32 %478, 2063
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add899.i, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end900.i

cond.end900.i:                                    ; preds = %cond.false894.i, %cond.true884.i
  %479 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %virt.i, align 8
  %and903.i = and i32 %480, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and903.i)
  %tobool904.not.i = icmp eq i32 %and903.i, 0
  br i1 %tobool904.not.i, label %cond.end900.i.cond.false926.i_crit_edge, label %land.lhs.true905.i

cond.end900.i.cond.false926.i_crit_edge:          ; preds = %cond.end900.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false926.i

land.lhs.true905.i:                               ; preds = %cond.end900.i
  %481 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %funcs.i, align 4
  %tobool909.not.i = icmp eq ptr %482, null
  br i1 %tobool909.not.i, label %land.lhs.true905.i.cond.false926.i_crit_edge, label %land.lhs.true910.i

land.lhs.true905.i.cond.false926.i_crit_edge:     ; preds = %land.lhs.true905.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false926.i

land.lhs.true910.i:                               ; preds = %land.lhs.true905.i
  %sriov_wreg914.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %482, i32 0, i32 12
  %483 = ptrtoint ptr %sriov_wreg914.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %sriov_wreg914.i, align 4
  %tobool915.not.i = icmp eq ptr %484, null
  br i1 %tobool915.not.i, label %land.lhs.true910.i.cond.false926.i_crit_edge, label %cond.true916.i

land.lhs.true910.i.cond.false926.i_crit_edge:     ; preds = %land.lhs.true910.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false926.i

cond.true916.i:                                   ; preds = %land.lhs.true910.i
  call void @__sanitizer_cov_trace_pc() #7
  %485 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %arrayidx.i, align 8
  %487 = ptrtoint ptr %486 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %486, align 4
  %add925.i = add i32 %488, 2062
  tail call void %484(ptr noundef %adev, i32 noundef %add925.i, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cleanup

cond.false926.i:                                  ; preds = %land.lhs.true910.i.cond.false926.i_crit_edge, %land.lhs.true905.i.cond.false926.i_crit_edge, %cond.end900.i.cond.false926.i_crit_edge
  %489 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %arrayidx.i, align 8
  %491 = ptrtoint ptr %490 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %490, align 4
  %add931.i = add i32 %492, 2062
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add931.i, i32 noundef 255, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false926.i, %cond.true916.i, %amdgpu_ras_is_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %amdgpu_ras_is_supported.exit.cleanup_crit_edge ], [ 0, %cond.true916.i ], [ 0, %cond.false926.i ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v9_4_reset_ras_error_count(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %amdgpu_ras_is_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.cleanup_crit_edge, label %if.end

amdgpu_ras_is_supported.exit.cleanup_crit_edge:   ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #5
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  br label %for.cond4.preheader.lr.ph

for.cond4.preheader.lr.ph:                        ; preds = %for.inc20.for.cond4.preheader.lr.ph_crit_edge, %if.end
  %i.01193 = phi i32 [ 0, %if.end ], [ %inc21, %for.inc20.for.cond4.preheader.lr.ph_crit_edge ]
  %arrayidx = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.01193
  %se_num = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.01193, i32 5
  %5 = ptrtoint ptr %se_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %se_num, align 4
  %instance = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.01193, i32 6
  %7 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %instance, align 4
  %inst = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.01193, i32 1
  %seg = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.01193, i32 2
  %reg_offset15 = getelementptr [35 x %struct.soc15_reg_entry], ptr @gfx_v9_4_edc_counter_regs, i32 0, i32 %i.01193, i32 3
  %umax = call i32 @llvm.umax.i32(i32 %8, i32 1)
  %umax1210 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %for.body7.lr.ph

for.body7.lr.ph:                                  ; preds = %for.inc17.for.body7.lr.ph_crit_edge, %for.cond4.preheader.lr.ph
  %j.01191 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %inc18, %for.inc17.for.body7.lr.ph_crit_edge ]
  %shl7.i = shl i32 %j.01191, 16
  %and8.i = and i32 %shl7.i, 16711680
  br label %for.body7

for.body7:                                        ; preds = %gfx_v9_4_select_se_sh.exit.for.body7_crit_edge, %for.body7.lr.ph
  %k.01189 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %gfx_v9_4_select_se_sh.exit.for.body7_crit_edge ]
  %and.i1185 = and i32 %k.01189, 255
  %data.1.i = or i32 %and.i1185, %and8.i
  %9 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virt.i, align 8
  %and21.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool.not.i1186 = icmp eq i32 %and21.i, 0
  br i1 %tobool.not.i1186, label %for.body7.cond.false.i_crit_edge, label %land.lhs.true.i

for.body7.cond.false.i_crit_edge:                 ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %for.body7
  %11 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs.i, align 4
  %tobool22.not.i = icmp eq ptr %12, null
  br i1 %tobool22.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true23.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true23.i:                                ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool27.not.i = icmp eq ptr %14, null
  br i1 %tobool27.not.i, label %land.lhs.true23.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true23.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx33.i = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx33.i, align 4
  %add.i = add i32 %18, 8704
  tail call void %14(ptr noundef %adev, i32 noundef %add.i, i32 noundef %data.1.i, i32 noundef 4, i32 noundef 1) #5
  br label %gfx_v9_4_select_se_sh.exit

cond.false.i:                                     ; preds = %land.lhs.true23.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %for.body7.cond.false.i_crit_edge
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx37.i, align 4
  %add38.i = add i32 %22, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i, i32 noundef %data.1.i, i32 noundef 0) #5
  br label %gfx_v9_4_select_se_sh.exit

gfx_v9_4_select_se_sh.exit:                       ; preds = %cond.false.i, %cond.true.i
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inst, align 4
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %24, i32 %26
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx11, align 4
  %29 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seg, align 4
  %arrayidx13 = getelementptr i32, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx13, align 4
  %33 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg_offset15, align 4
  %add = add i32 %34, %32
  %call16 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #5
  %inc = add nuw i32 %k.01189, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc17, label %gfx_v9_4_select_se_sh.exit.for.body7_crit_edge

gfx_v9_4_select_se_sh.exit.for.body7_crit_edge:   ; preds = %gfx_v9_4_select_se_sh.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7

for.inc17:                                        ; preds = %gfx_v9_4_select_se_sh.exit
  %inc18 = add nuw i32 %j.01191, 1
  %exitcond1211.not = icmp eq i32 %inc18, %umax1210
  br i1 %exitcond1211.not, label %for.inc20, label %for.inc17.for.body7.lr.ph_crit_edge

for.inc17.for.body7.lr.ph_crit_edge:              ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.lr.ph

for.inc20:                                        ; preds = %for.inc17
  %inc21 = add nuw nsw i32 %i.01193, 1
  %exitcond1212.not = icmp eq i32 %inc21, 35
  br i1 %exitcond1212.not, label %for.end22, label %for.inc20.for.cond4.preheader.lr.ph_crit_edge

for.inc20.for.cond4.preheader.lr.ph_crit_edge:    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader.lr.ph

for.end22:                                        ; preds = %for.inc20
  %35 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %virt.i, align 8
  %and = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %for.end22.cond.false_crit_edge, label %land.lhs.true

for.end22.cond.false_crit_edge:                   ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %for.end22
  %37 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %funcs.i, align 4
  %tobool24.not = icmp eq ptr %38, null
  br i1 %tobool24.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true25

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true25:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sriov_wreg, align 4
  %tobool29.not = icmp eq ptr %40, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false_crit_edge, label %cond.true

land.lhs.true25.cond.false_crit_edge:             ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx37 = getelementptr i32, ptr %42, i32 1
  %43 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx37, align 4
  %add38 = add i32 %44, 8704
  tail call void %40(ptr noundef %adev, i32 noundef %add38, i32 noundef -536870912, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true25.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %for.end22.cond.false_crit_edge
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx42 = getelementptr i32, ptr %46, i32 1
  %47 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %48, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add43, i32 noundef -536870912, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #5
  %49 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %virt.i, align 8
  %and47 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %cond.end.cond.false70_crit_edge, label %land.lhs.true49

cond.end.cond.false70_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false70

land.lhs.true49:                                  ; preds = %cond.end
  %51 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %funcs.i, align 4
  %tobool53.not = icmp eq ptr %52, null
  br i1 %tobool53.not, label %land.lhs.true49.cond.false70_crit_edge, label %land.lhs.true54

land.lhs.true49.cond.false70_crit_edge:           ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false70

land.lhs.true54:                                  ; preds = %land.lhs.true49
  %sriov_wreg58 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %sriov_wreg58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sriov_wreg58, align 4
  %tobool59.not = icmp eq ptr %54, null
  br i1 %tobool59.not, label %land.lhs.true54.cond.false70_crit_edge, label %cond.true60

land.lhs.true54.cond.false70_crit_edge:           ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false70

cond.true60:                                      ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add69 = add i32 %58, 2144
  tail call void %54(ptr noundef %adev, i32 noundef %add69, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end76

cond.false70:                                     ; preds = %land.lhs.true54.cond.false70_crit_edge, %land.lhs.true49.cond.false70_crit_edge, %cond.end.cond.false70_crit_edge
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %add75 = add i32 %62, 2144
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add75, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false70, %cond.true60
  %63 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %virt.i, align 8
  %and79 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %cond.end76.cond.false102_crit_edge, label %land.lhs.true81

cond.end76.cond.false102_crit_edge:               ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false102

land.lhs.true81:                                  ; preds = %cond.end76
  %65 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %funcs.i, align 4
  %tobool85.not = icmp eq ptr %66, null
  br i1 %tobool85.not, label %land.lhs.true81.cond.false102_crit_edge, label %land.lhs.true86

land.lhs.true81.cond.false102_crit_edge:          ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false102

land.lhs.true86:                                  ; preds = %land.lhs.true81
  %sriov_wreg90 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %66, i32 0, i32 12
  %67 = ptrtoint ptr %sriov_wreg90 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sriov_wreg90, align 4
  %tobool91.not = icmp eq ptr %68, null
  br i1 %tobool91.not, label %land.lhs.true86.cond.false102_crit_edge, label %cond.true92

land.lhs.true86.cond.false102_crit_edge:          ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false102

cond.true92:                                      ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %add101 = add i32 %72, 2147
  tail call void %68(ptr noundef %adev, i32 noundef %add101, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end108

cond.false102:                                    ; preds = %land.lhs.true86.cond.false102_crit_edge, %land.lhs.true81.cond.false102_crit_edge, %cond.end76.cond.false102_crit_edge
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %add107 = add i32 %76, 2147
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add107, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end108

cond.end108:                                      ; preds = %cond.false102, %cond.true92
  %77 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %virt.i, align 8
  %and111 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %cond.end108.cond.false134_crit_edge, label %land.lhs.true113

cond.end108.cond.false134_crit_edge:              ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false134

land.lhs.true113:                                 ; preds = %cond.end108
  %79 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %funcs.i, align 4
  %tobool117.not = icmp eq ptr %80, null
  br i1 %tobool117.not, label %land.lhs.true113.cond.false134_crit_edge, label %land.lhs.true118

land.lhs.true113.cond.false134_crit_edge:         ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false134

land.lhs.true118:                                 ; preds = %land.lhs.true113
  %sriov_wreg122 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %sriov_wreg122 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sriov_wreg122, align 4
  %tobool123.not = icmp eq ptr %82, null
  br i1 %tobool123.not, label %land.lhs.true118.cond.false134_crit_edge, label %cond.true124

land.lhs.true118.cond.false134_crit_edge:         ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false134

cond.true124:                                     ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %add133 = add i32 %86, 2145
  tail call void %82(ptr noundef %adev, i32 noundef %add133, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end140

cond.false134:                                    ; preds = %land.lhs.true118.cond.false134_crit_edge, %land.lhs.true113.cond.false134_crit_edge, %cond.end108.cond.false134_crit_edge
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %add139 = add i32 %90, 2145
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add139, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end140

cond.end140:                                      ; preds = %cond.false134, %cond.true124
  %91 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %virt.i, align 8
  %and143 = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %cond.end140.cond.false166_crit_edge, label %land.lhs.true145

cond.end140.cond.false166_crit_edge:              ; preds = %cond.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false166

land.lhs.true145:                                 ; preds = %cond.end140
  %93 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %funcs.i, align 4
  %tobool149.not = icmp eq ptr %94, null
  br i1 %tobool149.not, label %land.lhs.true145.cond.false166_crit_edge, label %land.lhs.true150

land.lhs.true145.cond.false166_crit_edge:         ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false166

land.lhs.true150:                                 ; preds = %land.lhs.true145
  %sriov_wreg154 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %94, i32 0, i32 12
  %95 = ptrtoint ptr %sriov_wreg154 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sriov_wreg154, align 4
  %tobool155.not = icmp eq ptr %96, null
  br i1 %tobool155.not, label %land.lhs.true150.cond.false166_crit_edge, label %cond.true156

land.lhs.true150.cond.false166_crit_edge:         ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false166

cond.true156:                                     ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #7
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %add165 = add i32 %100, 2148
  tail call void %96(ptr noundef %adev, i32 noundef %add165, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end172

cond.false166:                                    ; preds = %land.lhs.true150.cond.false166_crit_edge, %land.lhs.true145.cond.false166_crit_edge, %cond.end140.cond.false166_crit_edge
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %add171 = add i32 %104, 2148
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add171, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end172

cond.end172:                                      ; preds = %cond.false166, %cond.true156
  %105 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %virt.i, align 8
  %and175 = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %cond.end172.cond.false198_crit_edge, label %land.lhs.true177

cond.end172.cond.false198_crit_edge:              ; preds = %cond.end172
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false198

land.lhs.true177:                                 ; preds = %cond.end172
  %107 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %funcs.i, align 4
  %tobool181.not = icmp eq ptr %108, null
  br i1 %tobool181.not, label %land.lhs.true177.cond.false198_crit_edge, label %land.lhs.true182

land.lhs.true177.cond.false198_crit_edge:         ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false198

land.lhs.true182:                                 ; preds = %land.lhs.true177
  %sriov_wreg186 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %108, i32 0, i32 12
  %109 = ptrtoint ptr %sriov_wreg186 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sriov_wreg186, align 4
  %tobool187.not = icmp eq ptr %110, null
  br i1 %tobool187.not, label %land.lhs.true182.cond.false198_crit_edge, label %cond.true188

land.lhs.true182.cond.false198_crit_edge:         ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false198

cond.true188:                                     ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %add197 = add i32 %114, 2146
  tail call void %110(ptr noundef %adev, i32 noundef %add197, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end204

cond.false198:                                    ; preds = %land.lhs.true182.cond.false198_crit_edge, %land.lhs.true177.cond.false198_crit_edge, %cond.end172.cond.false198_crit_edge
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %add203 = add i32 %118, 2146
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add203, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false198, %cond.true188
  %119 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %virt.i, align 8
  %and207 = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %cond.end204.cond.false230_crit_edge, label %land.lhs.true209

cond.end204.cond.false230_crit_edge:              ; preds = %cond.end204
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false230

land.lhs.true209:                                 ; preds = %cond.end204
  %121 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %funcs.i, align 4
  %tobool213.not = icmp eq ptr %122, null
  br i1 %tobool213.not, label %land.lhs.true209.cond.false230_crit_edge, label %land.lhs.true214

land.lhs.true209.cond.false230_crit_edge:         ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false230

land.lhs.true214:                                 ; preds = %land.lhs.true209
  %sriov_wreg218 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %122, i32 0, i32 12
  %123 = ptrtoint ptr %sriov_wreg218 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sriov_wreg218, align 4
  %tobool219.not = icmp eq ptr %124, null
  br i1 %tobool219.not, label %land.lhs.true214.cond.false230_crit_edge, label %cond.true220

land.lhs.true214.cond.false230_crit_edge:         ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false230

cond.true220:                                     ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #7
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i, align 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  %add229 = add i32 %128, 2149
  tail call void %124(ptr noundef %adev, i32 noundef %add229, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end236

cond.false230:                                    ; preds = %land.lhs.true214.cond.false230_crit_edge, %land.lhs.true209.cond.false230_crit_edge, %cond.end204.cond.false230_crit_edge
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %add235 = add i32 %132, 2149
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add235, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end236

cond.end236:                                      ; preds = %cond.false230, %cond.true220
  %133 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %virt.i, align 8
  %and239 = and i32 %134, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %cond.end236.cond.false262_crit_edge, label %land.lhs.true241

cond.end236.cond.false262_crit_edge:              ; preds = %cond.end236
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false262

land.lhs.true241:                                 ; preds = %cond.end236
  %135 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %funcs.i, align 4
  %tobool245.not = icmp eq ptr %136, null
  br i1 %tobool245.not, label %land.lhs.true241.cond.false262_crit_edge, label %land.lhs.true246

land.lhs.true241.cond.false262_crit_edge:         ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false262

land.lhs.true246:                                 ; preds = %land.lhs.true241
  %sriov_wreg250 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %136, i32 0, i32 12
  %137 = ptrtoint ptr %sriov_wreg250 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sriov_wreg250, align 4
  %tobool251.not = icmp eq ptr %138, null
  br i1 %tobool251.not, label %land.lhs.true246.cond.false262_crit_edge, label %cond.true252

land.lhs.true246.cond.false262_crit_edge:         ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false262

cond.true252:                                     ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx.i, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  %add261 = add i32 %142, 2063
  tail call void %138(ptr noundef %adev, i32 noundef %add261, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end268

cond.false262:                                    ; preds = %land.lhs.true246.cond.false262_crit_edge, %land.lhs.true241.cond.false262_crit_edge, %cond.end236.cond.false262_crit_edge
  %143 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 4
  %add267 = add i32 %146, 2063
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add267, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end268

cond.end268:                                      ; preds = %cond.false262, %cond.true252
  %147 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %virt.i, align 8
  %and271 = and i32 %148, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271)
  %tobool272.not = icmp eq i32 %and271, 0
  br i1 %tobool272.not, label %cond.end268.cond.false294_crit_edge, label %land.lhs.true273

cond.end268.cond.false294_crit_edge:              ; preds = %cond.end268
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false294

land.lhs.true273:                                 ; preds = %cond.end268
  %149 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %funcs.i, align 4
  %tobool277.not = icmp eq ptr %150, null
  br i1 %tobool277.not, label %land.lhs.true273.cond.false294_crit_edge, label %land.lhs.true278

land.lhs.true273.cond.false294_crit_edge:         ; preds = %land.lhs.true273
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false294

land.lhs.true278:                                 ; preds = %land.lhs.true273
  %sriov_wreg282 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %150, i32 0, i32 12
  %151 = ptrtoint ptr %sriov_wreg282 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %sriov_wreg282, align 4
  %tobool283.not = icmp eq ptr %152, null
  br i1 %tobool283.not, label %land.lhs.true278.cond.false294_crit_edge, label %cond.true284

land.lhs.true278.cond.false294_crit_edge:         ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false294

cond.true284:                                     ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #7
  %153 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx.i, align 8
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %add293 = add i32 %156, 2065
  tail call void %152(ptr noundef %adev, i32 noundef %add293, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end300

cond.false294:                                    ; preds = %land.lhs.true278.cond.false294_crit_edge, %land.lhs.true273.cond.false294_crit_edge, %cond.end268.cond.false294_crit_edge
  %157 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx.i, align 8
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %add299 = add i32 %160, 2065
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add299, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end300

cond.end300:                                      ; preds = %cond.false294, %cond.true284
  %161 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %virt.i, align 8
  %and303 = and i32 %162, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303)
  %tobool304.not = icmp eq i32 %and303, 0
  br i1 %tobool304.not, label %cond.end300.cond.false326_crit_edge, label %land.lhs.true305

cond.end300.cond.false326_crit_edge:              ; preds = %cond.end300
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false326

land.lhs.true305:                                 ; preds = %cond.end300
  %163 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %funcs.i, align 4
  %tobool309.not = icmp eq ptr %164, null
  br i1 %tobool309.not, label %land.lhs.true305.cond.false326_crit_edge, label %land.lhs.true310

land.lhs.true305.cond.false326_crit_edge:         ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false326

land.lhs.true310:                                 ; preds = %land.lhs.true305
  %sriov_wreg314 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %164, i32 0, i32 12
  %165 = ptrtoint ptr %sriov_wreg314 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %sriov_wreg314, align 4
  %tobool315.not = icmp eq ptr %166, null
  br i1 %tobool315.not, label %land.lhs.true310.cond.false326_crit_edge, label %cond.true316

land.lhs.true310.cond.false326_crit_edge:         ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false326

cond.true316:                                     ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #7
  %167 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 4
  %add325 = add i32 %170, 2062
  tail call void %166(ptr noundef %adev, i32 noundef %add325, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end332

cond.false326:                                    ; preds = %land.lhs.true310.cond.false326_crit_edge, %land.lhs.true305.cond.false326_crit_edge, %cond.end300.cond.false326_crit_edge
  %171 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx.i, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 4
  %add331 = add i32 %174, 2062
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add331, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end332

cond.end332:                                      ; preds = %cond.false326, %cond.true316
  %175 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %virt.i, align 8
  %and335 = and i32 %176, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335)
  %tobool336.not = icmp eq i32 %and335, 0
  br i1 %tobool336.not, label %cond.end332.cond.false358_crit_edge, label %land.lhs.true337

cond.end332.cond.false358_crit_edge:              ; preds = %cond.end332
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false358

land.lhs.true337:                                 ; preds = %cond.end332
  %177 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %funcs.i, align 4
  %tobool341.not = icmp eq ptr %178, null
  br i1 %tobool341.not, label %land.lhs.true337.cond.false358_crit_edge, label %land.lhs.true342

land.lhs.true337.cond.false358_crit_edge:         ; preds = %land.lhs.true337
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false358

land.lhs.true342:                                 ; preds = %land.lhs.true337
  %sriov_wreg346 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %178, i32 0, i32 12
  %179 = ptrtoint ptr %sriov_wreg346 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %sriov_wreg346, align 4
  %tobool347.not = icmp eq ptr %180, null
  br i1 %tobool347.not, label %land.lhs.true342.cond.false358_crit_edge, label %cond.true348

land.lhs.true342.cond.false358_crit_edge:         ; preds = %land.lhs.true342
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false358

cond.true348:                                     ; preds = %land.lhs.true342
  call void @__sanitizer_cov_trace_pc() #7
  %181 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx.i, align 8
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %182, align 4
  %add357 = add i32 %184, 2065
  tail call void %180(ptr noundef %adev, i32 noundef %add357, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  br label %for.body367.preheader

cond.false358:                                    ; preds = %land.lhs.true342.cond.false358_crit_edge, %land.lhs.true337.cond.false358_crit_edge, %cond.end332.cond.false358_crit_edge
  %185 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx.i, align 8
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 4
  %add363 = add i32 %188, 2065
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add363, i32 noundef 0, i32 noundef 0) #5
  br label %for.body367.preheader

for.body367.preheader:                            ; preds = %cond.false358, %cond.true348
  br label %for.body367

for.body367:                                      ; preds = %for.inc433.for.body367_crit_edge, %for.body367.preheader
  %i.11195 = phi i32 [ %inc434, %for.inc433.for.body367_crit_edge ], [ 0, %for.body367.preheader ]
  %189 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %virt.i, align 8
  %and370 = and i32 %190, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and370)
  %tobool371.not = icmp eq i32 %and370, 0
  br i1 %tobool371.not, label %for.body367.cond.false393_crit_edge, label %land.lhs.true372

for.body367.cond.false393_crit_edge:              ; preds = %for.body367
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false393

land.lhs.true372:                                 ; preds = %for.body367
  %191 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %funcs.i, align 4
  %tobool376.not = icmp eq ptr %192, null
  br i1 %tobool376.not, label %land.lhs.true372.cond.false393_crit_edge, label %land.lhs.true377

land.lhs.true372.cond.false393_crit_edge:         ; preds = %land.lhs.true372
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false393

land.lhs.true377:                                 ; preds = %land.lhs.true372
  %sriov_wreg381 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %192, i32 0, i32 12
  %193 = ptrtoint ptr %sriov_wreg381 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %sriov_wreg381, align 4
  %tobool382.not = icmp eq ptr %194, null
  br i1 %tobool382.not, label %land.lhs.true377.cond.false393_crit_edge, label %cond.true383

land.lhs.true377.cond.false393_crit_edge:         ; preds = %land.lhs.true377
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false393

cond.true383:                                     ; preds = %land.lhs.true377
  call void @__sanitizer_cov_trace_pc() #7
  %195 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx.i, align 8
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %196, align 4
  %add392 = add i32 %198, 2144
  tail call void %194(ptr noundef %adev, i32 noundef %add392, i32 noundef %i.11195, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end399

cond.false393:                                    ; preds = %land.lhs.true377.cond.false393_crit_edge, %land.lhs.true372.cond.false393_crit_edge, %for.body367.cond.false393_crit_edge
  %199 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx.i, align 8
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 4
  %add398 = add i32 %202, 2144
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add398, i32 noundef %i.11195, i32 noundef 0) #5
  br label %cond.end399

cond.end399:                                      ; preds = %cond.false393, %cond.true383
  %203 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %virt.i, align 8
  %and402 = and i32 %204, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and402)
  %tobool403.not = icmp eq i32 %and402, 0
  br i1 %tobool403.not, label %cond.end399.cond.false425_crit_edge, label %land.lhs.true404

cond.end399.cond.false425_crit_edge:              ; preds = %cond.end399
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false425

land.lhs.true404:                                 ; preds = %cond.end399
  %205 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %funcs.i, align 4
  %tobool408.not = icmp eq ptr %206, null
  br i1 %tobool408.not, label %land.lhs.true404.cond.false425_crit_edge, label %land.lhs.true409

land.lhs.true404.cond.false425_crit_edge:         ; preds = %land.lhs.true404
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false425

land.lhs.true409:                                 ; preds = %land.lhs.true404
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %206, i32 0, i32 13
  %207 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %sriov_rreg, align 4
  %tobool413.not = icmp eq ptr %208, null
  br i1 %tobool413.not, label %land.lhs.true409.cond.false425_crit_edge, label %cond.true414

land.lhs.true409.cond.false425_crit_edge:         ; preds = %land.lhs.true409
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false425

cond.true414:                                     ; preds = %land.lhs.true409
  call void @__sanitizer_cov_trace_pc() #7
  %209 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx.i, align 8
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %210, align 4
  %add423 = add i32 %212, 2147
  %call424 = tail call i32 %208(ptr noundef %adev, i32 noundef %add423, i32 noundef 0, i32 noundef 1) #5
  br label %for.inc433

cond.false425:                                    ; preds = %land.lhs.true409.cond.false425_crit_edge, %land.lhs.true404.cond.false425_crit_edge, %cond.end399.cond.false425_crit_edge
  %213 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx.i, align 8
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %214, align 4
  %add430 = add i32 %216, 2147
  %call431 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add430, i32 noundef 0) #5
  br label %for.inc433

for.inc433:                                       ; preds = %cond.false425, %cond.true414
  %inc434 = add nuw nsw i32 %i.11195, 1
  %exitcond1213.not = icmp eq i32 %inc434, 41
  br i1 %exitcond1213.not, label %for.inc433.for.body438_crit_edge, label %for.inc433.for.body367_crit_edge

for.inc433.for.body367_crit_edge:                 ; preds = %for.inc433
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body367

for.inc433.for.body438_crit_edge:                 ; preds = %for.inc433
  br label %for.body438

for.body438:                                      ; preds = %for.inc506.for.body438_crit_edge, %for.inc433.for.body438_crit_edge
  %i.21198 = phi i32 [ %inc507, %for.inc506.for.body438_crit_edge ], [ 0, %for.inc433.for.body438_crit_edge ]
  %217 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %virt.i, align 8
  %and441 = and i32 %218, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and441)
  %tobool442.not = icmp eq i32 %and441, 0
  br i1 %tobool442.not, label %for.body438.cond.false464_crit_edge, label %land.lhs.true443

for.body438.cond.false464_crit_edge:              ; preds = %for.body438
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false464

land.lhs.true443:                                 ; preds = %for.body438
  %219 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %funcs.i, align 4
  %tobool447.not = icmp eq ptr %220, null
  br i1 %tobool447.not, label %land.lhs.true443.cond.false464_crit_edge, label %land.lhs.true448

land.lhs.true443.cond.false464_crit_edge:         ; preds = %land.lhs.true443
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false464

land.lhs.true448:                                 ; preds = %land.lhs.true443
  %sriov_wreg452 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %220, i32 0, i32 12
  %221 = ptrtoint ptr %sriov_wreg452 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %sriov_wreg452, align 4
  %tobool453.not = icmp eq ptr %222, null
  br i1 %tobool453.not, label %land.lhs.true448.cond.false464_crit_edge, label %cond.true454

land.lhs.true448.cond.false464_crit_edge:         ; preds = %land.lhs.true448
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false464

cond.true454:                                     ; preds = %land.lhs.true448
  call void @__sanitizer_cov_trace_pc() #7
  %223 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx.i, align 8
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %224, align 4
  %add463 = add i32 %226, 2145
  tail call void %222(ptr noundef %adev, i32 noundef %add463, i32 noundef %i.21198, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end470

cond.false464:                                    ; preds = %land.lhs.true448.cond.false464_crit_edge, %land.lhs.true443.cond.false464_crit_edge, %for.body438.cond.false464_crit_edge
  %227 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx.i, align 8
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  %add469 = add i32 %230, 2145
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add469, i32 noundef %i.21198, i32 noundef 0) #5
  br label %cond.end470

cond.end470:                                      ; preds = %cond.false464, %cond.true454
  %231 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %virt.i, align 8
  %and473 = and i32 %232, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and473)
  %tobool474.not = icmp eq i32 %and473, 0
  br i1 %tobool474.not, label %cond.end470.cond.false497_crit_edge, label %land.lhs.true475

cond.end470.cond.false497_crit_edge:              ; preds = %cond.end470
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false497

land.lhs.true475:                                 ; preds = %cond.end470
  %233 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %funcs.i, align 4
  %tobool479.not = icmp eq ptr %234, null
  br i1 %tobool479.not, label %land.lhs.true475.cond.false497_crit_edge, label %land.lhs.true480

land.lhs.true475.cond.false497_crit_edge:         ; preds = %land.lhs.true475
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false497

land.lhs.true480:                                 ; preds = %land.lhs.true475
  %sriov_rreg484 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %234, i32 0, i32 13
  %235 = ptrtoint ptr %sriov_rreg484 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %sriov_rreg484, align 4
  %tobool485.not = icmp eq ptr %236, null
  br i1 %tobool485.not, label %land.lhs.true480.cond.false497_crit_edge, label %cond.true486

land.lhs.true480.cond.false497_crit_edge:         ; preds = %land.lhs.true480
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false497

cond.true486:                                     ; preds = %land.lhs.true480
  call void @__sanitizer_cov_trace_pc() #7
  %237 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx.i, align 8
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %238, align 4
  %add495 = add i32 %240, 2148
  %call496 = tail call i32 %236(ptr noundef %adev, i32 noundef %add495, i32 noundef 0, i32 noundef 1) #5
  br label %for.inc506

cond.false497:                                    ; preds = %land.lhs.true480.cond.false497_crit_edge, %land.lhs.true475.cond.false497_crit_edge, %cond.end470.cond.false497_crit_edge
  %241 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx.i, align 8
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %242, align 4
  %add502 = add i32 %244, 2148
  %call503 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add502, i32 noundef 0) #5
  br label %for.inc506

for.inc506:                                       ; preds = %cond.false497, %cond.true486
  %inc507 = add nuw nsw i32 %i.21198, 1
  %exitcond1214.not = icmp eq i32 %inc507, 10
  br i1 %exitcond1214.not, label %for.inc506.for.body511_crit_edge, label %for.inc506.for.body438_crit_edge

for.inc506.for.body438_crit_edge:                 ; preds = %for.inc506
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body438

for.inc506.for.body511_crit_edge:                 ; preds = %for.inc506
  br label %for.body511

for.body511:                                      ; preds = %for.inc579.for.body511_crit_edge, %for.inc506.for.body511_crit_edge
  %i.31201 = phi i32 [ %inc580, %for.inc579.for.body511_crit_edge ], [ 0, %for.inc506.for.body511_crit_edge ]
  %245 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %virt.i, align 8
  %and514 = and i32 %246, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and514)
  %tobool515.not = icmp eq i32 %and514, 0
  br i1 %tobool515.not, label %for.body511.cond.false537_crit_edge, label %land.lhs.true516

for.body511.cond.false537_crit_edge:              ; preds = %for.body511
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false537

land.lhs.true516:                                 ; preds = %for.body511
  %247 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %funcs.i, align 4
  %tobool520.not = icmp eq ptr %248, null
  br i1 %tobool520.not, label %land.lhs.true516.cond.false537_crit_edge, label %land.lhs.true521

land.lhs.true516.cond.false537_crit_edge:         ; preds = %land.lhs.true516
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false537

land.lhs.true521:                                 ; preds = %land.lhs.true516
  %sriov_wreg525 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %248, i32 0, i32 12
  %249 = ptrtoint ptr %sriov_wreg525 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %sriov_wreg525, align 4
  %tobool526.not = icmp eq ptr %250, null
  br i1 %tobool526.not, label %land.lhs.true521.cond.false537_crit_edge, label %cond.true527

land.lhs.true521.cond.false537_crit_edge:         ; preds = %land.lhs.true521
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false537

cond.true527:                                     ; preds = %land.lhs.true521
  call void @__sanitizer_cov_trace_pc() #7
  %251 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %arrayidx.i, align 8
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %252, align 4
  %add536 = add i32 %254, 2146
  tail call void %250(ptr noundef %adev, i32 noundef %add536, i32 noundef %i.31201, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end543

cond.false537:                                    ; preds = %land.lhs.true521.cond.false537_crit_edge, %land.lhs.true516.cond.false537_crit_edge, %for.body511.cond.false537_crit_edge
  %255 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %arrayidx.i, align 8
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %256, align 4
  %add542 = add i32 %258, 2146
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add542, i32 noundef %i.31201, i32 noundef 0) #5
  br label %cond.end543

cond.end543:                                      ; preds = %cond.false537, %cond.true527
  %259 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %virt.i, align 8
  %and546 = and i32 %260, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and546)
  %tobool547.not = icmp eq i32 %and546, 0
  br i1 %tobool547.not, label %cond.end543.cond.false570_crit_edge, label %land.lhs.true548

cond.end543.cond.false570_crit_edge:              ; preds = %cond.end543
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false570

land.lhs.true548:                                 ; preds = %cond.end543
  %261 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %funcs.i, align 4
  %tobool552.not = icmp eq ptr %262, null
  br i1 %tobool552.not, label %land.lhs.true548.cond.false570_crit_edge, label %land.lhs.true553

land.lhs.true548.cond.false570_crit_edge:         ; preds = %land.lhs.true548
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false570

land.lhs.true553:                                 ; preds = %land.lhs.true548
  %sriov_rreg557 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %262, i32 0, i32 13
  %263 = ptrtoint ptr %sriov_rreg557 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %sriov_rreg557, align 4
  %tobool558.not = icmp eq ptr %264, null
  br i1 %tobool558.not, label %land.lhs.true553.cond.false570_crit_edge, label %cond.true559

land.lhs.true553.cond.false570_crit_edge:         ; preds = %land.lhs.true553
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false570

cond.true559:                                     ; preds = %land.lhs.true553
  call void @__sanitizer_cov_trace_pc() #7
  %265 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %arrayidx.i, align 8
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %266, align 4
  %add568 = add i32 %268, 2149
  %call569 = tail call i32 %264(ptr noundef %adev, i32 noundef %add568, i32 noundef 0, i32 noundef 1) #5
  br label %for.inc579

cond.false570:                                    ; preds = %land.lhs.true553.cond.false570_crit_edge, %land.lhs.true548.cond.false570_crit_edge, %cond.end543.cond.false570_crit_edge
  %269 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx.i, align 8
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %270, align 4
  %add575 = add i32 %272, 2149
  %call576 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add575, i32 noundef 0) #5
  br label %for.inc579

for.inc579:                                       ; preds = %cond.false570, %cond.true559
  %inc580 = add nuw nsw i32 %i.31201, 1
  %exitcond1215.not = icmp eq i32 %inc580, 25
  br i1 %exitcond1215.not, label %for.inc579.for.body584_crit_edge, label %for.inc579.for.body511_crit_edge

for.inc579.for.body511_crit_edge:                 ; preds = %for.inc579
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body511

for.inc579.for.body584_crit_edge:                 ; preds = %for.inc579
  br label %for.body584

for.body584:                                      ; preds = %for.inc652.for.body584_crit_edge, %for.inc579.for.body584_crit_edge
  %i.41204 = phi i32 [ %inc653, %for.inc652.for.body584_crit_edge ], [ 0, %for.inc579.for.body584_crit_edge ]
  %273 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %virt.i, align 8
  %and587 = and i32 %274, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and587)
  %tobool588.not = icmp eq i32 %and587, 0
  br i1 %tobool588.not, label %for.body584.cond.false610_crit_edge, label %land.lhs.true589

for.body584.cond.false610_crit_edge:              ; preds = %for.body584
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false610

land.lhs.true589:                                 ; preds = %for.body584
  %275 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %funcs.i, align 4
  %tobool593.not = icmp eq ptr %276, null
  br i1 %tobool593.not, label %land.lhs.true589.cond.false610_crit_edge, label %land.lhs.true594

land.lhs.true589.cond.false610_crit_edge:         ; preds = %land.lhs.true589
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false610

land.lhs.true594:                                 ; preds = %land.lhs.true589
  %sriov_wreg598 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %276, i32 0, i32 12
  %277 = ptrtoint ptr %sriov_wreg598 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %sriov_wreg598, align 4
  %tobool599.not = icmp eq ptr %278, null
  br i1 %tobool599.not, label %land.lhs.true594.cond.false610_crit_edge, label %cond.true600

land.lhs.true594.cond.false610_crit_edge:         ; preds = %land.lhs.true594
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false610

cond.true600:                                     ; preds = %land.lhs.true594
  call void @__sanitizer_cov_trace_pc() #7
  %279 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %arrayidx.i, align 8
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %280, align 4
  %add609 = add i32 %282, 2063
  tail call void %278(ptr noundef %adev, i32 noundef %add609, i32 noundef %i.41204, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end616

cond.false610:                                    ; preds = %land.lhs.true594.cond.false610_crit_edge, %land.lhs.true589.cond.false610_crit_edge, %for.body584.cond.false610_crit_edge
  %283 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %arrayidx.i, align 8
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %284, align 4
  %add615 = add i32 %286, 2063
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add615, i32 noundef %i.41204, i32 noundef 0) #5
  br label %cond.end616

cond.end616:                                      ; preds = %cond.false610, %cond.true600
  %287 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %virt.i, align 8
  %and619 = and i32 %288, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and619)
  %tobool620.not = icmp eq i32 %and619, 0
  br i1 %tobool620.not, label %cond.end616.cond.false643_crit_edge, label %land.lhs.true621

cond.end616.cond.false643_crit_edge:              ; preds = %cond.end616
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false643

land.lhs.true621:                                 ; preds = %cond.end616
  %289 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %funcs.i, align 4
  %tobool625.not = icmp eq ptr %290, null
  br i1 %tobool625.not, label %land.lhs.true621.cond.false643_crit_edge, label %land.lhs.true626

land.lhs.true621.cond.false643_crit_edge:         ; preds = %land.lhs.true621
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false643

land.lhs.true626:                                 ; preds = %land.lhs.true621
  %sriov_rreg630 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %290, i32 0, i32 13
  %291 = ptrtoint ptr %sriov_rreg630 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %sriov_rreg630, align 4
  %tobool631.not = icmp eq ptr %292, null
  br i1 %tobool631.not, label %land.lhs.true626.cond.false643_crit_edge, label %cond.true632

land.lhs.true626.cond.false643_crit_edge:         ; preds = %land.lhs.true626
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false643

cond.true632:                                     ; preds = %land.lhs.true626
  call void @__sanitizer_cov_trace_pc() #7
  %293 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx.i, align 8
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %294, align 4
  %add641 = add i32 %296, 2065
  %call642 = tail call i32 %292(ptr noundef %adev, i32 noundef %add641, i32 noundef 0, i32 noundef 1) #5
  br label %for.inc652

cond.false643:                                    ; preds = %land.lhs.true626.cond.false643_crit_edge, %land.lhs.true621.cond.false643_crit_edge, %cond.end616.cond.false643_crit_edge
  %297 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %arrayidx.i, align 8
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %298, align 4
  %add648 = add i32 %300, 2065
  %call649 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add648, i32 noundef 0) #5
  br label %for.inc652

for.inc652:                                       ; preds = %cond.false643, %cond.true632
  %inc653 = add nuw nsw i32 %i.41204, 1
  %exitcond1216.not = icmp eq i32 %inc653, 4
  br i1 %exitcond1216.not, label %for.inc652.for.body657_crit_edge, label %for.inc652.for.body584_crit_edge

for.inc652.for.body584_crit_edge:                 ; preds = %for.inc652
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body584

for.inc652.for.body657_crit_edge:                 ; preds = %for.inc652
  br label %for.body657

for.body657:                                      ; preds = %for.inc725.for.body657_crit_edge, %for.inc652.for.body657_crit_edge
  %i.51207 = phi i32 [ %inc726, %for.inc725.for.body657_crit_edge ], [ 0, %for.inc652.for.body657_crit_edge ]
  %301 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %virt.i, align 8
  %and660 = and i32 %302, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and660)
  %tobool661.not = icmp eq i32 %and660, 0
  br i1 %tobool661.not, label %for.body657.cond.false683_crit_edge, label %land.lhs.true662

for.body657.cond.false683_crit_edge:              ; preds = %for.body657
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false683

land.lhs.true662:                                 ; preds = %for.body657
  %303 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %funcs.i, align 4
  %tobool666.not = icmp eq ptr %304, null
  br i1 %tobool666.not, label %land.lhs.true662.cond.false683_crit_edge, label %land.lhs.true667

land.lhs.true662.cond.false683_crit_edge:         ; preds = %land.lhs.true662
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false683

land.lhs.true667:                                 ; preds = %land.lhs.true662
  %sriov_wreg671 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %304, i32 0, i32 12
  %305 = ptrtoint ptr %sriov_wreg671 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %sriov_wreg671, align 4
  %tobool672.not = icmp eq ptr %306, null
  br i1 %tobool672.not, label %land.lhs.true667.cond.false683_crit_edge, label %cond.true673

land.lhs.true667.cond.false683_crit_edge:         ; preds = %land.lhs.true667
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false683

cond.true673:                                     ; preds = %land.lhs.true667
  call void @__sanitizer_cov_trace_pc() #7
  %307 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %arrayidx.i, align 8
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %308, align 4
  %add682 = add i32 %310, 2062
  tail call void %306(ptr noundef %adev, i32 noundef %add682, i32 noundef %i.51207, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end689

cond.false683:                                    ; preds = %land.lhs.true667.cond.false683_crit_edge, %land.lhs.true662.cond.false683_crit_edge, %for.body657.cond.false683_crit_edge
  %311 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx.i, align 8
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %312, align 4
  %add688 = add i32 %314, 2062
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add688, i32 noundef %i.51207, i32 noundef 0) #5
  br label %cond.end689

cond.end689:                                      ; preds = %cond.false683, %cond.true673
  %315 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %virt.i, align 8
  %and692 = and i32 %316, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and692)
  %tobool693.not = icmp eq i32 %and692, 0
  br i1 %tobool693.not, label %cond.end689.cond.false716_crit_edge, label %land.lhs.true694

cond.end689.cond.false716_crit_edge:              ; preds = %cond.end689
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false716

land.lhs.true694:                                 ; preds = %cond.end689
  %317 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %funcs.i, align 4
  %tobool698.not = icmp eq ptr %318, null
  br i1 %tobool698.not, label %land.lhs.true694.cond.false716_crit_edge, label %land.lhs.true699

land.lhs.true694.cond.false716_crit_edge:         ; preds = %land.lhs.true694
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false716

land.lhs.true699:                                 ; preds = %land.lhs.true694
  %sriov_rreg703 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %318, i32 0, i32 13
  %319 = ptrtoint ptr %sriov_rreg703 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %sriov_rreg703, align 4
  %tobool704.not = icmp eq ptr %320, null
  br i1 %tobool704.not, label %land.lhs.true699.cond.false716_crit_edge, label %cond.true705

land.lhs.true699.cond.false716_crit_edge:         ; preds = %land.lhs.true699
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false716

cond.true705:                                     ; preds = %land.lhs.true699
  call void @__sanitizer_cov_trace_pc() #7
  %321 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %arrayidx.i, align 8
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %322, align 4
  %add714 = add i32 %324, 2064
  %call715 = tail call i32 %320(ptr noundef %adev, i32 noundef %add714, i32 noundef 0, i32 noundef 1) #5
  br label %for.inc725

cond.false716:                                    ; preds = %land.lhs.true699.cond.false716_crit_edge, %land.lhs.true694.cond.false716_crit_edge, %cond.end689.cond.false716_crit_edge
  %325 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %arrayidx.i, align 8
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %326, align 4
  %add721 = add i32 %328, 2064
  %call722 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add721, i32 noundef 0) #5
  br label %for.inc725

for.inc725:                                       ; preds = %cond.false716, %cond.true705
  %inc726 = add nuw nsw i32 %i.51207, 1
  %exitcond1217.not = icmp eq i32 %inc726, 32
  br i1 %exitcond1217.not, label %for.end727, label %for.inc725.for.body657_crit_edge

for.inc725.for.body657_crit_edge:                 ; preds = %for.inc725
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body657

for.end727:                                       ; preds = %for.inc725
  %329 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %virt.i, align 8
  %and730 = and i32 %330, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and730)
  %tobool731.not = icmp eq i32 %and730, 0
  br i1 %tobool731.not, label %for.end727.cond.false753_crit_edge, label %land.lhs.true732

for.end727.cond.false753_crit_edge:               ; preds = %for.end727
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false753

land.lhs.true732:                                 ; preds = %for.end727
  %331 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %funcs.i, align 4
  %tobool736.not = icmp eq ptr %332, null
  br i1 %tobool736.not, label %land.lhs.true732.cond.false753_crit_edge, label %land.lhs.true737

land.lhs.true732.cond.false753_crit_edge:         ; preds = %land.lhs.true732
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false753

land.lhs.true737:                                 ; preds = %land.lhs.true732
  %sriov_wreg741 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %332, i32 0, i32 12
  %333 = ptrtoint ptr %sriov_wreg741 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %sriov_wreg741, align 4
  %tobool742.not = icmp eq ptr %334, null
  br i1 %tobool742.not, label %land.lhs.true737.cond.false753_crit_edge, label %cond.true743

land.lhs.true737.cond.false753_crit_edge:         ; preds = %land.lhs.true737
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false753

cond.true743:                                     ; preds = %land.lhs.true737
  call void @__sanitizer_cov_trace_pc() #7
  %335 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %arrayidx.i, align 8
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %336, align 4
  %add752 = add i32 %338, 2144
  tail call void %334(ptr noundef %adev, i32 noundef %add752, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end759

cond.false753:                                    ; preds = %land.lhs.true737.cond.false753_crit_edge, %land.lhs.true732.cond.false753_crit_edge, %for.end727.cond.false753_crit_edge
  %339 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %arrayidx.i, align 8
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %340, align 4
  %add758 = add i32 %342, 2144
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add758, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end759

cond.end759:                                      ; preds = %cond.false753, %cond.true743
  %343 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %virt.i, align 8
  %and762 = and i32 %344, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and762)
  %tobool763.not = icmp eq i32 %and762, 0
  br i1 %tobool763.not, label %cond.end759.cond.false785_crit_edge, label %land.lhs.true764

cond.end759.cond.false785_crit_edge:              ; preds = %cond.end759
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false785

land.lhs.true764:                                 ; preds = %cond.end759
  %345 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %funcs.i, align 4
  %tobool768.not = icmp eq ptr %346, null
  br i1 %tobool768.not, label %land.lhs.true764.cond.false785_crit_edge, label %land.lhs.true769

land.lhs.true764.cond.false785_crit_edge:         ; preds = %land.lhs.true764
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false785

land.lhs.true769:                                 ; preds = %land.lhs.true764
  %sriov_wreg773 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %346, i32 0, i32 12
  %347 = ptrtoint ptr %sriov_wreg773 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %sriov_wreg773, align 4
  %tobool774.not = icmp eq ptr %348, null
  br i1 %tobool774.not, label %land.lhs.true769.cond.false785_crit_edge, label %cond.true775

land.lhs.true769.cond.false785_crit_edge:         ; preds = %land.lhs.true769
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false785

cond.true775:                                     ; preds = %land.lhs.true769
  call void @__sanitizer_cov_trace_pc() #7
  %349 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %arrayidx.i, align 8
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %350, align 4
  %add784 = add i32 %352, 2145
  tail call void %348(ptr noundef %adev, i32 noundef %add784, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end791

cond.false785:                                    ; preds = %land.lhs.true769.cond.false785_crit_edge, %land.lhs.true764.cond.false785_crit_edge, %cond.end759.cond.false785_crit_edge
  %353 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx.i, align 8
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %354, align 4
  %add790 = add i32 %356, 2145
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add790, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end791

cond.end791:                                      ; preds = %cond.false785, %cond.true775
  %357 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %virt.i, align 8
  %and794 = and i32 %358, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and794)
  %tobool795.not = icmp eq i32 %and794, 0
  br i1 %tobool795.not, label %cond.end791.cond.false817_crit_edge, label %land.lhs.true796

cond.end791.cond.false817_crit_edge:              ; preds = %cond.end791
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false817

land.lhs.true796:                                 ; preds = %cond.end791
  %359 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %funcs.i, align 4
  %tobool800.not = icmp eq ptr %360, null
  br i1 %tobool800.not, label %land.lhs.true796.cond.false817_crit_edge, label %land.lhs.true801

land.lhs.true796.cond.false817_crit_edge:         ; preds = %land.lhs.true796
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false817

land.lhs.true801:                                 ; preds = %land.lhs.true796
  %sriov_wreg805 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %360, i32 0, i32 12
  %361 = ptrtoint ptr %sriov_wreg805 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %sriov_wreg805, align 4
  %tobool806.not = icmp eq ptr %362, null
  br i1 %tobool806.not, label %land.lhs.true801.cond.false817_crit_edge, label %cond.true807

land.lhs.true801.cond.false817_crit_edge:         ; preds = %land.lhs.true801
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false817

cond.true807:                                     ; preds = %land.lhs.true801
  call void @__sanitizer_cov_trace_pc() #7
  %363 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %arrayidx.i, align 8
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %364, align 4
  %add816 = add i32 %366, 2146
  tail call void %362(ptr noundef %adev, i32 noundef %add816, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end823

cond.false817:                                    ; preds = %land.lhs.true801.cond.false817_crit_edge, %land.lhs.true796.cond.false817_crit_edge, %cond.end791.cond.false817_crit_edge
  %367 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %arrayidx.i, align 8
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %368, align 4
  %add822 = add i32 %370, 2146
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add822, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end823

cond.end823:                                      ; preds = %cond.false817, %cond.true807
  %371 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %virt.i, align 8
  %and826 = and i32 %372, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and826)
  %tobool827.not = icmp eq i32 %and826, 0
  br i1 %tobool827.not, label %cond.end823.cond.false849_crit_edge, label %land.lhs.true828

cond.end823.cond.false849_crit_edge:              ; preds = %cond.end823
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false849

land.lhs.true828:                                 ; preds = %cond.end823
  %373 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %funcs.i, align 4
  %tobool832.not = icmp eq ptr %374, null
  br i1 %tobool832.not, label %land.lhs.true828.cond.false849_crit_edge, label %land.lhs.true833

land.lhs.true828.cond.false849_crit_edge:         ; preds = %land.lhs.true828
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false849

land.lhs.true833:                                 ; preds = %land.lhs.true828
  %sriov_wreg837 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %374, i32 0, i32 12
  %375 = ptrtoint ptr %sriov_wreg837 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %sriov_wreg837, align 4
  %tobool838.not = icmp eq ptr %376, null
  br i1 %tobool838.not, label %land.lhs.true833.cond.false849_crit_edge, label %cond.true839

land.lhs.true833.cond.false849_crit_edge:         ; preds = %land.lhs.true833
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false849

cond.true839:                                     ; preds = %land.lhs.true833
  call void @__sanitizer_cov_trace_pc() #7
  %377 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %arrayidx.i, align 8
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %378, align 4
  %add848 = add i32 %380, 2063
  tail call void %376(ptr noundef %adev, i32 noundef %add848, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end855

cond.false849:                                    ; preds = %land.lhs.true833.cond.false849_crit_edge, %land.lhs.true828.cond.false849_crit_edge, %cond.end823.cond.false849_crit_edge
  %381 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %arrayidx.i, align 8
  %383 = ptrtoint ptr %382 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %382, align 4
  %add854 = add i32 %384, 2063
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add854, i32 noundef 255, i32 noundef 0) #5
  br label %cond.end855

cond.end855:                                      ; preds = %cond.false849, %cond.true839
  %385 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %virt.i, align 8
  %and858 = and i32 %386, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and858)
  %tobool859.not = icmp eq i32 %and858, 0
  br i1 %tobool859.not, label %cond.end855.cond.false881_crit_edge, label %land.lhs.true860

cond.end855.cond.false881_crit_edge:              ; preds = %cond.end855
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false881

land.lhs.true860:                                 ; preds = %cond.end855
  %387 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %funcs.i, align 4
  %tobool864.not = icmp eq ptr %388, null
  br i1 %tobool864.not, label %land.lhs.true860.cond.false881_crit_edge, label %land.lhs.true865

land.lhs.true860.cond.false881_crit_edge:         ; preds = %land.lhs.true860
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false881

land.lhs.true865:                                 ; preds = %land.lhs.true860
  %sriov_wreg869 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %388, i32 0, i32 12
  %389 = ptrtoint ptr %sriov_wreg869 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %sriov_wreg869, align 4
  %tobool870.not = icmp eq ptr %390, null
  br i1 %tobool870.not, label %land.lhs.true865.cond.false881_crit_edge, label %cond.true871

land.lhs.true865.cond.false881_crit_edge:         ; preds = %land.lhs.true865
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false881

cond.true871:                                     ; preds = %land.lhs.true865
  call void @__sanitizer_cov_trace_pc() #7
  %391 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %arrayidx.i, align 8
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %392, align 4
  %add880 = add i32 %394, 2062
  tail call void %390(ptr noundef %adev, i32 noundef %add880, i32 noundef 255, i32 noundef 0, i32 noundef 1) #5
  br label %cleanup

cond.false881:                                    ; preds = %land.lhs.true865.cond.false881_crit_edge, %land.lhs.true860.cond.false881_crit_edge, %cond.end855.cond.false881_crit_edge
  %395 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %arrayidx.i, align 8
  %397 = ptrtoint ptr %396 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %396, align 4
  %add886 = add i32 %398, 2062
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add886, i32 noundef 255, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false881, %cond.true871, %amdgpu_ras_is_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v9_4_query_ras_error_status(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %amdgpu_ras_is_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.cleanup_crit_edge, label %if.end

amdgpu_ras_is_supported.exit.cleanup_crit_edge:   ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #5
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %if.end
  %j.060 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body3_crit_edge ]
  %5 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virt.i, align 8
  %and21.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool.not.i40 = icmp eq i32 %and21.i, 0
  br i1 %tobool.not.i40, label %for.body3.cond.false.i_crit_edge, label %land.lhs.true.i

for.body3.cond.false.i_crit_edge:                 ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %for.body3
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs.i, align 4
  %tobool22.not.i = icmp eq ptr %8, null
  br i1 %tobool22.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true23.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true23.i:                                ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool27.not.i = icmp eq ptr %10, null
  br i1 %tobool27.not.i, label %land.lhs.true23.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true23.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx33.i = getelementptr i32, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx33.i, align 4
  %add.i = add i32 %14, 8704
  tail call void %10(ptr noundef %adev, i32 noundef %add.i, i32 noundef %j.060, i32 noundef 4, i32 noundef 1) #5
  br label %gfx_v9_4_select_se_sh.exit

cond.false.i:                                     ; preds = %land.lhs.true23.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %for.body3.cond.false.i_crit_edge
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx37.i, align 4
  %add38.i = add i32 %18, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i, i32 noundef %j.060, i32 noundef 0) #5
  br label %gfx_v9_4_select_se_sh.exit

gfx_v9_4_select_se_sh.exit:                       ; preds = %cond.false.i, %cond.true.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add = add i32 %22, 1810
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #5
  %23 = and i32 %call6, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %gfx_v9_4_select_se_sh.exit.for.inc_crit_edge, label %do.end

gfx_v9_4_select_se_sh.exit.for.inc_crit_edge:     ; preds = %gfx_v9_4_select_se_sh.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %gfx_v9_4_select_se_sh.exit
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.271, i32 noundef %j.060, i32 noundef %call6) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end, %gfx_v9_4_select_se_sh.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.060, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end19, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.end19:                                        ; preds = %for.inc
  %27 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %virt.i, align 8
  %and21.i42 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i42)
  %tobool.not.i43 = icmp eq i32 %and21.i42, 0
  br i1 %tobool.not.i43, label %for.end19.cond.false.i57_crit_edge, label %land.lhs.true.i46

for.end19.cond.false.i57_crit_edge:               ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i57

land.lhs.true.i46:                                ; preds = %for.end19
  %29 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %funcs.i, align 4
  %tobool22.not.i45 = icmp eq ptr %30, null
  br i1 %tobool22.not.i45, label %land.lhs.true.i46.cond.false.i57_crit_edge, label %land.lhs.true23.i49

land.lhs.true.i46.cond.false.i57_crit_edge:       ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i57

land.lhs.true23.i49:                              ; preds = %land.lhs.true.i46
  %sriov_wreg.i47 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %sriov_wreg.i47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sriov_wreg.i47, align 4
  %tobool27.not.i48 = icmp eq ptr %32, null
  br i1 %tobool27.not.i48, label %land.lhs.true23.i49.cond.false.i57_crit_edge, label %cond.true.i53

land.lhs.true23.i49.cond.false.i57_crit_edge:     ; preds = %land.lhs.true23.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i57

cond.true.i53:                                    ; preds = %land.lhs.true23.i49
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx33.i51 = getelementptr i32, ptr %34, i32 1
  %35 = ptrtoint ptr %arrayidx33.i51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx33.i51, align 4
  %add.i52 = add i32 %36, 8704
  tail call void %32(ptr noundef %adev, i32 noundef %add.i52, i32 noundef -536870912, i32 noundef 4, i32 noundef 1) #5
  br label %gfx_v9_4_select_se_sh.exit58

cond.false.i57:                                   ; preds = %land.lhs.true23.i49.cond.false.i57_crit_edge, %land.lhs.true.i46.cond.false.i57_crit_edge, %for.end19.cond.false.i57_crit_edge
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx37.i55 = getelementptr i32, ptr %38, i32 1
  %39 = ptrtoint ptr %arrayidx37.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx37.i55, align 4
  %add38.i56 = add i32 %40, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i56, i32 noundef -536870912, i32 noundef 0) #5
  br label %gfx_v9_4_select_se_sh.exit58

gfx_v9_4_select_se_sh.exit58:                     ; preds = %cond.false.i57, %cond.true.i53
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %gfx_v9_4_select_se_sh.exit58, %amdgpu_ras_is_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_ras_trigger_error(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 276)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 276)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !282, !283, !284, !286, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !549, !550, !551, !552}
!llvm.module.flags = !{!554, !555, !556, !557, !558, !559, !560, !561}
!llvm.ident = !{!562}

!0 = !{ptr @gfx_v9_4_ras_funcs, !1, !"gfx_v9_4_ras_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 1032, i32 35}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h", i32 573, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h", i32 592, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @gfx_v9_4_edc_counter_regs, !10, !"gfx_v9_4_edc_counter_regs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 40, i32 37}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 845, i32 4}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gfx_v9_4_ras_error_count._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @gfx_v9_4_ras_error_count._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 855, i32 4}
!21 = !{ptr @gfx_v9_4_ras_error_count._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @gfx_v9_4_ras_error_count._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 122, i32 4}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 125, i32 4}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 128, i32 4}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 131, i32 4}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 135, i32 4}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 139, i32 4}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 143, i32 4}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 149, i32 4}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 152, i32 4}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 155, i32 4}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 160, i32 4}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 163, i32 4}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 166, i32 4}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 169, i32 4}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 172, i32 4}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 175, i32 4}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 179, i32 4}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 183, i32 4}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 187, i32 4}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 193, i32 4}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 196, i32 4}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 199, i32 4}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 202, i32 4}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 205, i32 4}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 210, i32 4}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 213, i32 4}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 216, i32 4}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 219, i32 4}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 222, i32 4}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 225, i32 4}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 228, i32 4}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 233, i32 4}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 236, i32 4}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 239, i32 4}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 242, i32 4}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 245, i32 4}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 248, i32 4}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 251, i32 4}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 254, i32 4}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 257, i32 4}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 263, i32 4}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 268, i32 4}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 271, i32 4}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 274, i32 4}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 278, i32 4}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 283, i32 4}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 286, i32 4}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 289, i32 4}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 295, i32 4}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 300, i32 4}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 303, i32 4}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 306, i32 4}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 310, i32 4}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 315, i32 4}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 320, i32 4}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 323, i32 4}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 326, i32 4}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 329, i32 4}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 332, i32 4}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 337, i32 4}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 340, i32 4}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 345, i32 4}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 348, i32 4}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 351, i32 4}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 354, i32 4}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 357, i32 4}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 360, i32 4}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 363, i32 4}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 366, i32 4}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 369, i32 4}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 372, i32 4}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 375, i32 4}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 378, i32 4}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 381, i32 4}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 384, i32 4}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 387, i32 4}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 392, i32 4}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 397, i32 4}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 400, i32 4}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 403, i32 4}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 406, i32 4}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 409, i32 4}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 411, i32 4}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 414, i32 4}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 419, i32 4}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 422, i32 4}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 425, i32 4}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 430, i32 4}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 433, i32 4}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 436, i32 4}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 439, i32 4}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 442, i32 4}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 445, i32 4}
!209 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 448, i32 4}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 451, i32 4}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 454, i32 4}
!215 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 458, i32 4}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 462, i32 4}
!219 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 466, i32 4}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 470, i32 4}
!223 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 474, i32 4}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 478, i32 4}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 482, i32 4}
!229 = !{ptr @.str.114, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 485, i32 4}
!231 = !{ptr @.str.115, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 488, i32 4}
!233 = !{ptr @.str.116, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 491, i32 4}
!235 = !{ptr @.str.117, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 494, i32 4}
!237 = !{ptr @.str.118, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 497, i32 4}
!239 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 500, i32 4}
!241 = !{ptr @.str.120, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 503, i32 4}
!243 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 506, i32 4}
!245 = !{ptr @.str.122, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 512, i32 4}
!247 = !{ptr @.str.123, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 515, i32 4}
!249 = !{ptr @.str.124, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 518, i32 4}
!251 = !{ptr @.str.125, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 521, i32 4}
!253 = !{ptr @.str.126, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 524, i32 4}
!255 = !{ptr @.str.127, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 527, i32 4}
!257 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 530, i32 4}
!259 = !{ptr @.str.129, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 533, i32 4}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 536, i32 4}
!263 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 539, i32 4}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 542, i32 4}
!267 = !{ptr @.str.133, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 545, i32 4}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 548, i32 4}
!271 = !{ptr @.str.135, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 551, i32 4}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 554, i32 4}
!275 = !{ptr @.str.137, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 557, i32 4}
!277 = !{ptr @gfx_v9_4_ras_fields, !278, !"gfx_v9_4_ras_fields", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 120, i32 43}
!279 = !{ptr @.str.138, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 713, i32 4}
!281 = !{ptr @.str.139, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @gfx_v9_4_query_utc_edc_status._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @gfx_v9_4_query_utc_edc_status._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.141, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 721, i32 4}
!286 = !{ptr @gfx_v9_4_query_utc_edc_status._entry.140, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.142, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @gfx_v9_4_query_utc_edc_status._entry.143, !289, !"_entry", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 735, i32 4}
!290 = !{ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.144, !289, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @gfx_v9_4_query_utc_edc_status._entry.145, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 744, i32 4}
!293 = !{ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.146, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @gfx_v9_4_query_utc_edc_status._entry.147, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 757, i32 4}
!296 = !{ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.148, !295, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @gfx_v9_4_query_utc_edc_status._entry.149, !298, !"_entry", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 765, i32 4}
!299 = !{ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.150, !298, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @gfx_v9_4_query_utc_edc_status._entry.151, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 779, i32 4}
!302 = !{ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.152, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @gfx_v9_4_query_utc_edc_status._entry.153, !304, !"_entry", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 788, i32 4}
!305 = !{ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.154, !304, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @gfx_v9_4_query_utc_edc_status._entry.155, !307, !"_entry", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 802, i32 4}
!308 = !{ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.156, !307, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @gfx_v9_4_query_utc_edc_status._entry.157, !310, !"_entry", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 811, i32 4}
!311 = !{ptr @gfx_v9_4_query_utc_edc_status._entry_ptr.158, !310, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.159, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 563, i32 2}
!314 = !{ptr @.str.160, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 564, i32 2}
!316 = !{ptr @.str.161, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 565, i32 2}
!318 = !{ptr @.str.162, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 566, i32 2}
!320 = !{ptr @.str.163, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 567, i32 2}
!322 = !{ptr @.str.164, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 568, i32 2}
!324 = !{ptr @.str.165, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 569, i32 2}
!326 = !{ptr @.str.166, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 570, i32 2}
!328 = !{ptr @.str.167, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 571, i32 2}
!330 = !{ptr @.str.168, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 572, i32 2}
!332 = !{ptr @.str.169, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 573, i32 2}
!334 = !{ptr @.str.170, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 574, i32 2}
!336 = !{ptr @.str.171, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 575, i32 2}
!338 = !{ptr @.str.172, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 576, i32 2}
!340 = !{ptr @.str.173, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 577, i32 2}
!342 = !{ptr @.str.174, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 578, i32 2}
!344 = !{ptr @.str.175, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 579, i32 2}
!346 = !{ptr @.str.176, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 580, i32 2}
!348 = !{ptr @.str.177, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 581, i32 2}
!350 = !{ptr @.str.178, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 582, i32 2}
!352 = !{ptr @.str.179, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 583, i32 2}
!354 = !{ptr @.str.180, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 584, i32 2}
!356 = !{ptr @.str.181, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 585, i32 2}
!358 = !{ptr @.str.182, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 586, i32 2}
!360 = !{ptr @.str.183, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 587, i32 2}
!362 = !{ptr @.str.184, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 588, i32 2}
!364 = !{ptr @.str.185, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 589, i32 2}
!366 = !{ptr @.str.186, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 590, i32 2}
!368 = !{ptr @.str.187, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 591, i32 2}
!370 = !{ptr @.str.188, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 592, i32 2}
!372 = !{ptr @.str.189, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 593, i32 2}
!374 = !{ptr @.str.190, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 594, i32 2}
!376 = !{ptr @.str.191, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 595, i32 2}
!378 = !{ptr @.str.192, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 596, i32 2}
!380 = !{ptr @.str.193, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 597, i32 2}
!382 = !{ptr @.str.194, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 598, i32 2}
!384 = !{ptr @.str.195, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 599, i32 2}
!386 = !{ptr @.str.196, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 600, i32 2}
!388 = !{ptr @.str.197, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 601, i32 2}
!390 = !{ptr @.str.198, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 602, i32 2}
!392 = !{ptr @.str.199, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 603, i32 2}
!394 = !{ptr @vml2_mems, !395, !"vml2_mems", i1 false, i1 false}
!395 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 562, i32 27}
!396 = !{ptr @.str.200, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 607, i32 2}
!398 = !{ptr @.str.201, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 608, i32 2}
!400 = !{ptr @.str.202, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 609, i32 2}
!402 = !{ptr @.str.203, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 610, i32 2}
!404 = !{ptr @.str.204, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 611, i32 2}
!406 = !{ptr @.str.205, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 612, i32 2}
!408 = !{ptr @.str.206, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 613, i32 2}
!410 = !{ptr @.str.207, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 614, i32 2}
!412 = !{ptr @.str.208, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 615, i32 2}
!414 = !{ptr @.str.209, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 616, i32 2}
!416 = !{ptr @vml2_walker_mems, !417, !"vml2_walker_mems", i1 false, i1 false}
!417 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 606, i32 27}
!418 = !{ptr @.str.210, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 620, i32 2}
!420 = !{ptr @.str.211, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 621, i32 2}
!422 = !{ptr @.str.212, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 622, i32 2}
!424 = !{ptr @.str.213, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 623, i32 2}
!426 = !{ptr @.str.214, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 624, i32 2}
!428 = !{ptr @.str.215, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 625, i32 2}
!430 = !{ptr @.str.216, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 626, i32 2}
!432 = !{ptr @.str.217, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 627, i32 2}
!434 = !{ptr @.str.218, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 628, i32 2}
!436 = !{ptr @.str.219, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 629, i32 2}
!438 = !{ptr @.str.220, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 630, i32 2}
!440 = !{ptr @.str.221, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 631, i32 2}
!442 = !{ptr @.str.222, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 632, i32 2}
!444 = !{ptr @.str.223, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 633, i32 2}
!446 = !{ptr @.str.224, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 634, i32 2}
!448 = !{ptr @.str.225, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 635, i32 2}
!450 = !{ptr @.str.226, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 636, i32 2}
!452 = !{ptr @.str.227, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 637, i32 2}
!454 = !{ptr @.str.228, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 638, i32 2}
!456 = !{ptr @.str.229, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 639, i32 2}
!458 = !{ptr @.str.230, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 640, i32 2}
!460 = !{ptr @.str.231, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 641, i32 2}
!462 = !{ptr @.str.232, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 642, i32 2}
!464 = !{ptr @.str.233, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 643, i32 2}
!466 = !{ptr @.str.234, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 644, i32 2}
!468 = !{ptr @utcl2_router_mems, !469, !"utcl2_router_mems", i1 false, i1 false}
!469 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 619, i32 27}
!470 = !{ptr @.str.235, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 648, i32 2}
!472 = !{ptr @.str.236, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 649, i32 2}
!474 = !{ptr @.str.237, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 650, i32 2}
!476 = !{ptr @.str.238, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 651, i32 2}
!478 = !{ptr @atc_l2_cache_2m_mems, !479, !"atc_l2_cache_2m_mems", i1 false, i1 false}
!479 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 647, i32 27}
!480 = !{ptr @.str.239, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 655, i32 2}
!482 = !{ptr @.str.240, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 656, i32 2}
!484 = !{ptr @.str.241, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 657, i32 2}
!486 = !{ptr @.str.242, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 658, i32 2}
!488 = !{ptr @.str.243, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 659, i32 2}
!490 = !{ptr @.str.244, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 660, i32 2}
!492 = !{ptr @.str.245, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 661, i32 2}
!494 = !{ptr @.str.246, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 662, i32 2}
!496 = !{ptr @.str.247, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 663, i32 2}
!498 = !{ptr @.str.248, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 664, i32 2}
!500 = !{ptr @.str.249, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 665, i32 2}
!502 = !{ptr @.str.250, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 666, i32 2}
!504 = !{ptr @.str.251, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 667, i32 2}
!506 = !{ptr @.str.252, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 668, i32 2}
!508 = !{ptr @.str.253, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 669, i32 2}
!510 = !{ptr @.str.254, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 670, i32 2}
!512 = !{ptr @.str.255, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 671, i32 2}
!514 = !{ptr @.str.256, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 672, i32 2}
!516 = !{ptr @.str.257, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 673, i32 2}
!518 = !{ptr @.str.258, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 674, i32 2}
!520 = !{ptr @.str.259, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 675, i32 2}
!522 = !{ptr @.str.260, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 676, i32 2}
!524 = !{ptr @.str.261, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 677, i32 2}
!526 = !{ptr @.str.262, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 678, i32 2}
!528 = !{ptr @.str.263, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 679, i32 2}
!530 = !{ptr @.str.264, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 680, i32 2}
!532 = !{ptr @.str.265, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 681, i32 2}
!534 = !{ptr @.str.266, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 682, i32 2}
!536 = !{ptr @.str.267, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 683, i32 2}
!538 = !{ptr @.str.268, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 684, i32 2}
!540 = !{ptr @.str.269, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 685, i32 2}
!542 = !{ptr @.str.270, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 686, i32 2}
!544 = !{ptr @atc_l2_cache_4k_mems, !545, !"atc_l2_cache_4k_mems", i1 false, i1 false}
!545 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 654, i32 27}
!546 = !{ptr @.str.271, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 1022, i32 5}
!548 = !{ptr @.str.272, !547, !"<string literal>", i1 false, i1 false}
!549 = !{ptr @.str.273, !547, !"<string literal>", i1 false, i1 false}
!550 = !{ptr @gfx_v9_4_query_ras_error_status._entry, !547, !"_entry", i1 false, i1 false}
!551 = !{ptr @gfx_v9_4_query_ras_error_status._entry_ptr, !547, !"_entry_ptr", i1 false, i1 false}
!552 = distinct !{null, !553, !"gfx_v9_4_ea_err_status_regs", i1 false, i1 false}
!553 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c", i32 997, i32 37}
!554 = !{i32 1, !"wchar_size", i32 2}
!555 = !{i32 1, !"min_enum_size", i32 4}
!556 = !{i32 8, !"branch-target-enforcement", i32 0}
!557 = !{i32 8, !"sign-return-address", i32 0}
!558 = !{i32 8, !"sign-return-address-all", i32 0}
!559 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!560 = !{i32 7, !"uwtable", i32 1}
!561 = !{i32 7, !"frame-pointer", i32 2}
!562 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!563 = !{!"branch_weights", i32 2000, i32 1}
