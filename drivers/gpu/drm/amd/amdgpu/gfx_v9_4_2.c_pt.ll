; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.soc15_reg_entry = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.soc15_reg_golden = type { i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_gfx_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.soc15_ras_field_entry = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gfx_v9_4_2_utc_block = type { i32, i32, i32, i32, %struct.soc15_reg, %struct.soc15_reg, i32, i32, i32, i32, i32 }
%struct.soc15_reg = type { i32, i32, i32, i32 }
%struct.amdgpu_watchdog_timer = type { i8, i32 }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ta_ras_trigger_error_input = type { i32, i32, i32, i64, i64 }
%struct.ras_common_if = type { i32, i32, i32, [32 x i8] }
%struct.ras_inject_if = type { %struct.ras_common_if, i64, i64 }
%struct.ras_err_data = type { i32, i32, i32, ptr }

@vgpr_init_regs_aldebaran = dso_local constant { [15 x %struct.soc15_reg_entry], [124 x i8] } { [15 x %struct.soc15_reg_entry] [%struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3605, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3591, i32 64, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3592, i32 4, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3593, i32 1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3602, i32 191, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3603, i32 4194310, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3629, i32 63, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3606, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3607, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3609, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3610, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3621, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3622, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3623, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3624, i32 -1, i32 0, i32 0 }], [124 x i8] zeroinitializer }, align 32
@sgpr112_init_regs_aldebaran = dso_local constant { [15 x %struct.soc15_reg_entry], [124 x i8] } { [15 x %struct.soc15_reg_entry] [%struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3605, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3591, i32 64, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3592, i32 8, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3593, i32 1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3602, i32 832, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3603, i32 6, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3629, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3606, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3607, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3609, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3610, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3621, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3622, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3623, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3624, i32 -1, i32 0, i32 0 }], [124 x i8] zeroinitializer }, align 32
@sgpr96_init_regs_aldebaran = dso_local constant { [15 x %struct.soc15_reg_entry], [124 x i8] } { [15 x %struct.soc15_reg_entry] [%struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3605, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3591, i32 64, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3592, i32 12, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3593, i32 1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3602, i32 704, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3603, i32 6, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3629, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3606, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3607, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3609, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3610, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3621, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3622, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3623, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3624, i32 -1, i32 0, i32 0 }], [124 x i8] zeroinitializer }, align 32
@sgpr64_init_regs_aldebaran = dso_local constant { [15 x %struct.soc15_reg_entry], [124 x i8] } { [15 x %struct.soc15_reg_entry] [%struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3605, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3591, i32 64, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3592, i32 16, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3593, i32 1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3602, i32 448, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3603, i32 6, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3629, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3606, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3607, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3609, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3610, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3621, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3622, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3623, i32 -1, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3624, i32 -1, i32 0, i32 0 }], [124 x i8] zeroinitializer }, align 32
@golden_settings_gc_9_4_2_alde = internal constant { [4 x %struct.soc15_reg_golden], [32 x i8] } { [4 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1598, i32 -34817, i32 705773634 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1346, i32 -273, i32 17498112 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 4789, i32 -1, i32 813696000 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2909, i32 255, i32 32 }], [32 x i8] zeroinitializer }, align 32
@golden_settings_gc_9_4_2_alde_die_0 = internal constant { [6 x %struct.soc15_reg_golden], [48 x i8] } { [6 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2819, i32 1073741823, i32 337496352 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2820, i32 1073741823, i32 994413459 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2825, i32 1073741823, i32 441406851 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2826, i32 1073741823, i32 829888502 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2827, i32 1073741823, i32 276611558 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2828, i32 1023, i32 849 }], [48 x i8] zeroinitializer }, align 32
@golden_settings_gc_9_4_2_alde_die_1 = internal constant { [6 x %struct.soc15_reg_golden], [48 x i8] } { [6 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2819, i32 1073741823, i32 630303288 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2820, i32 1073741823, i32 181004427 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2825, i32 1073741823, i32 734213787 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2826, i32 1073741823, i32 16479470 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2827, i32 1073741823, i32 569418494 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2828, i32 1023, i32 73 }], [48 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_init_golden_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 746, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"amdgpu: invalid die id %d, ignore channel fabricid remap settings\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gfx_v9_4_2_init_golden_registers\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_init_golden_registers._entry_ptr = internal global ptr @gfx_v9_4_2_init_golden_registers._entry, section ".printk_index", align 4
@gfx_v9_4_2_ras_funcs = dso_local constant { %struct.amdgpu_gfx_ras_funcs, [32 x i8] } { %struct.amdgpu_gfx_ras_funcs { ptr @amdgpu_gfx_ras_late_init, ptr @amdgpu_gfx_ras_fini, ptr @gfx_v9_4_2_ras_error_inject, ptr @gfx_v9_4_2_query_ras_error_count, ptr @gfx_v9_4_2_reset_ras_error_count, ptr @gfx_v9_4_2_query_ras_error_status, ptr @gfx_v9_4_2_reset_ras_error_status, ptr @gfx_v9_4_2_enable_watchdog_timer }, [32 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 510, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: failed to get ib (%d) for wb\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gfx_v9_4_2_do_sgprs_init\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry, section ".printk_index", align 4
@sgpr112_init_compute_shader_aldebaran = internal constant { [133 x i32], [140 x i8] } { [133 x i32] [i32 -1199306492, i32 -1199236604, i32 -1199172796, i32 -1199368188, i32 -1844904186, i32 640, i32 -1844860923, i32 -1844803068, i32 -2130179832, i32 -2130179576, i32 -2130181368, i32 -1912110584, i32 -2130213881, i32 -1069481856, i32 7, i32 -1081344000, i32 -1081212865, i32 -1073544704, i32 0, i32 -1081344000, i32 -1090060536, i32 -559038801, i32 -1081802759, i32 -2130542334, i32 -1069481856, i32 7, i32 -1081344000, i32 -1081475072, i32 -1090781056, i32 -1091960704, i32 -1091895168, i32 -1090456960, i32 -1092222848, i32 -1092157312, i32 -1092091776, i32 -1092026240, i32 -1090649984, i32 -1090584448, i32 -1098383232, i32 -1098317696, i32 -1098252160, i32 -1098186624, i32 -1098121088, i32 -1098055552, i32 -1097990016, i32 -1097924480, i32 -1097858944, i32 -1097793408, i32 -1097727872, i32 -1097662336, i32 -1097596800, i32 -1097531264, i32 -1097465728, i32 -1097400192, i32 -1097334656, i32 -1097269120, i32 -1097203584, i32 -1097138048, i32 -1097072512, i32 -1097006976, i32 -1096941440, i32 -1096875904, i32 -1096810368, i32 -1096744832, i32 -1096679296, i32 -1096613760, i32 -1096548224, i32 -1096482688, i32 -1096417152, i32 -1096351616, i32 -1096286080, i32 -1096220544, i32 -1096155008, i32 -1096089472, i32 -1096023936, i32 -1095958400, i32 -1095892864, i32 -1095827328, i32 -1095761792, i32 -1095696256, i32 -1095630720, i32 -1095565184, i32 -1095499648, i32 -1095434112, i32 -1095368576, i32 -1095303040, i32 -1095237504, i32 -1095171968, i32 -1095106432, i32 -1095040896, i32 -1094975360, i32 -1094909824, i32 -1094844288, i32 -1094778752, i32 -1094713216, i32 -1094647680, i32 -1094582144, i32 -1094516608, i32 -1094451072, i32 -1094385536, i32 -1094320000, i32 -1094254464, i32 -1094188928, i32 -1094123392, i32 -1094057856, i32 -1093992320, i32 -1093926784, i32 -1093861248, i32 -1093795712, i32 -1093730176, i32 -1093664640, i32 -1093599104, i32 -1093533568, i32 -1093468032, i32 -1093402496, i32 -1093336960, i32 -1093271424, i32 -1093205888, i32 -1093140352, i32 -1093074816, i32 -1093009280, i32 -1092943744, i32 -1092878208, i32 -1092812672, i32 -1092747136, i32 -1092681600, i32 -1092616064, i32 -1092550528, i32 -1092484992, i32 -1092419456, i32 -1092353920, i32 -1092288384, i32 -1082064896], [140 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 525, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: failed to clear first 224 sgprs\0A\00", [55 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr.10 = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry.8, section ".printk_index", align 4
@gfx_v9_4_2_do_sgprs_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 535, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: wave coverage failed when clear first 224 sgprs\0A\00", [39 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr.13 = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry.11, section ".printk_index", align 4
@sgpr96_init_compute_shader_aldebaran = internal constant { [121 x i32], [124 x i8] } { [121 x i32] [i32 -1199306492, i32 -1199236604, i32 -1199172796, i32 -1199368188, i32 -1844904186, i32 640, i32 -1844860923, i32 -1844803068, i32 -2130179832, i32 -2130179576, i32 -2130181368, i32 -1912110584, i32 -2130213881, i32 -1069481856, i32 7, i32 -1081344000, i32 -1081212865, i32 -1073544704, i32 0, i32 -1081344000, i32 -1090060536, i32 -559038801, i32 -1081802759, i32 -2130542334, i32 -1069481856, i32 7, i32 -1081344000, i32 -1081475072, i32 -1090781056, i32 -1091960704, i32 -1091895168, i32 -1090456960, i32 -1092222848, i32 -1092157312, i32 -1092091776, i32 -1092026240, i32 -1090649984, i32 -1090584448, i32 -1098383232, i32 -1098317696, i32 -1098252160, i32 -1098186624, i32 -1098121088, i32 -1098055552, i32 -1097990016, i32 -1097924480, i32 -1097858944, i32 -1097793408, i32 -1097727872, i32 -1097662336, i32 -1097596800, i32 -1097531264, i32 -1097465728, i32 -1097400192, i32 -1097334656, i32 -1097269120, i32 -1097203584, i32 -1097138048, i32 -1097072512, i32 -1097006976, i32 -1096941440, i32 -1096875904, i32 -1096810368, i32 -1096744832, i32 -1096679296, i32 -1096613760, i32 -1096548224, i32 -1096482688, i32 -1096417152, i32 -1096351616, i32 -1096286080, i32 -1096220544, i32 -1096155008, i32 -1096089472, i32 -1096023936, i32 -1095958400, i32 -1095892864, i32 -1095827328, i32 -1095761792, i32 -1095696256, i32 -1095630720, i32 -1095565184, i32 -1095499648, i32 -1095434112, i32 -1095368576, i32 -1095303040, i32 -1095237504, i32 -1095171968, i32 -1095106432, i32 -1095040896, i32 -1094975360, i32 -1094909824, i32 -1094844288, i32 -1094778752, i32 -1094713216, i32 -1094647680, i32 -1094582144, i32 -1094516608, i32 -1094451072, i32 -1094385536, i32 -1094320000, i32 -1094254464, i32 -1094188928, i32 -1094123392, i32 -1094057856, i32 -1093992320, i32 -1093926784, i32 -1093861248, i32 -1093795712, i32 -1093730176, i32 -1093664640, i32 -1093599104, i32 -1093533568, i32 -1093468032, i32 -1093402496, i32 -1093336960, i32 -1093271424, i32 -1093205888, i32 -1093140352, i32 -1093074816, i32 -1082064896], [124 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 550, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: failed to clear next 576 sgprs\0A\00", [56 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr.16 = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry.14, section ".printk_index", align 4
@gfx_v9_4_2_do_sgprs_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 559, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: wave coverage failed when clear first 576 sgprs\0A\00", [39 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr.19 = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry.17, section ".printk_index", align 4
@gfx_v9_4_2_do_sgprs_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.2, i32 569, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: timeout to clear first 224 sgprs\0A\00", [54 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr.22 = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry.20, section ".printk_index", align 4
@gfx_v9_4_2_do_sgprs_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.6, ptr @.str.2, i32 575, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: timeout to clear first 576 sgprs\0A\00", [54 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr.25 = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry.23, section ".printk_index", align 4
@sgpr64_init_compute_shader_aldebaran = internal constant { [89 x i32], [92 x i8] } { [89 x i32] [i32 -1199306492, i32 -1199236604, i32 -1199172796, i32 -1199368188, i32 -1844904186, i32 640, i32 -1844860923, i32 -1844803068, i32 -2130179832, i32 -2130179576, i32 -2130181368, i32 -1912110584, i32 -2130213881, i32 -1069481856, i32 7, i32 -1081344000, i32 -1081212865, i32 -1073544704, i32 0, i32 -1081344000, i32 -1090060536, i32 -559038801, i32 -1081802759, i32 -2130542334, i32 -1069481856, i32 7, i32 -1081344000, i32 -1081475072, i32 -1090781056, i32 -1091960704, i32 -1091895168, i32 -1090456960, i32 -1092222848, i32 -1092157312, i32 -1092091776, i32 -1092026240, i32 -1090649984, i32 -1090584448, i32 -1098383232, i32 -1098317696, i32 -1098252160, i32 -1098186624, i32 -1098121088, i32 -1098055552, i32 -1097990016, i32 -1097924480, i32 -1097858944, i32 -1097793408, i32 -1097727872, i32 -1097662336, i32 -1097596800, i32 -1097531264, i32 -1097465728, i32 -1097400192, i32 -1097334656, i32 -1097269120, i32 -1097203584, i32 -1097138048, i32 -1097072512, i32 -1097006976, i32 -1096941440, i32 -1096875904, i32 -1096810368, i32 -1096744832, i32 -1096679296, i32 -1096613760, i32 -1096548224, i32 -1096482688, i32 -1096417152, i32 -1096351616, i32 -1096286080, i32 -1096220544, i32 -1096155008, i32 -1096089472, i32 -1096023936, i32 -1095958400, i32 -1095892864, i32 -1095827328, i32 -1095761792, i32 -1095696256, i32 -1095630720, i32 -1095565184, i32 -1095499648, i32 -1095434112, i32 -1095368576, i32 -1095303040, i32 -1095237504, i32 -1095171968, i32 -1082064896], [92 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.6, ptr @.str.2, i32 590, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: failed to clear first 256 sgprs\0A\00", [55 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr.28 = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry.26, section ".printk_index", align 4
@gfx_v9_4_2_do_sgprs_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.6, ptr @.str.2, i32 600, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: wave coverage failed when clear first 256 sgprs\0A\00", [39 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr.31 = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry.29, section ".printk_index", align 4
@gfx_v9_4_2_do_sgprs_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.6, ptr @.str.2, i32 609, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: timeout to clear first 256 sgprs\0A\00", [54 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr.34 = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry.32, section ".printk_index", align 4
@gfx_v9_4_2_do_sgprs_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.6, ptr @.str.2, i32 626, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: Init SGPRS Failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr.38 = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry.35, section ".printk_index", align 4
@gfx_v9_4_2_do_sgprs_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.6, ptr @.str.2, i32 628, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: Init SGPRS Successfully\0A\00", [63 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_sgprs_init._entry_ptr.41 = internal global ptr @gfx_v9_4_2_do_sgprs_init._entry.39, section ".printk_index", align 4
@gfx_v9_4_2_run_shader._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 368, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: failed to get ib (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gfx_v9_4_2_run_shader\00", [42 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_run_shader._entry_ptr = internal global ptr @gfx_v9_4_2_run_shader._entry, section ".printk_index", align 4
@gfx_v9_4_2_run_shader._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 414, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: ib submit failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_run_shader._entry_ptr.46 = internal global ptr @gfx_v9_4_2_run_shader._entry.44, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gfx_v9_4_2_wait_for_waves_assigned._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 483, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: actual wave num: %d, expected wave num: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"gfx_v9_4_2_wait_for_waves_assigned\00", [61 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_wait_for_waves_assigned._entry_ptr = internal global ptr @gfx_v9_4_2_wait_for_waves_assigned._entry, section ".printk_index", align 4
@gfx_v9_4_2_log_wave_assignment.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gfx_v9_4_2_log_wave_assignment\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: wave assignment:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SE[%02d]CU[%02d]: \00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_wave_assignment.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.50, ptr @.str.2, ptr @.str.56, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amdgpu: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gfx_v9_4_2_do_vgprs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 653, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: failed to get ib (%d) for wb.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gfx_v9_4_2_do_vgprs_init\00", [39 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_vgprs_init._entry_ptr = internal global ptr @gfx_v9_4_2_do_vgprs_init._entry, section ".printk_index", align 4
@vgpr_init_compute_shader_aldebaran = internal constant { [565 x i32], [556 x i8] } { [565 x i32] [i32 -1199306492, i32 -1199236604, i32 -1199172796, i32 -1199368188, i32 -1844904186, i32 640, i32 -1844860923, i32 -1844803068, i32 -2130179832, i32 -2130179576, i32 -2130181368, i32 -1912110584, i32 -2130213881, i32 -1069481856, i32 7, i32 -1081344000, i32 -1081475072, i32 -740737024, i32 402653312, i32 -740737023, i32 402653312, i32 -740737022, i32 402653312, i32 -740737021, i32 402653312, i32 -740737020, i32 402653312, i32 -740737019, i32 402653312, i32 -740737018, i32 402653312, i32 -740737017, i32 402653312, i32 -740737016, i32 402653312, i32 -740737015, i32 402653312, i32 -740737014, i32 402653312, i32 -740737013, i32 402653312, i32 -740737012, i32 402653312, i32 -740737011, i32 402653312, i32 -740737010, i32 402653312, i32 -740737009, i32 402653312, i32 -740737008, i32 402653312, i32 -740737007, i32 402653312, i32 -740737006, i32 402653312, i32 -740737005, i32 402653312, i32 -740737004, i32 402653312, i32 -740737003, i32 402653312, i32 -740737002, i32 402653312, i32 -740737001, i32 402653312, i32 -740737000, i32 402653312, i32 -740736999, i32 402653312, i32 -740736998, i32 402653312, i32 -740736997, i32 402653312, i32 -740736996, i32 402653312, i32 -740736995, i32 402653312, i32 -740736994, i32 402653312, i32 -740736993, i32 402653312, i32 -740736992, i32 402653312, i32 -740736991, i32 402653312, i32 -740736990, i32 402653312, i32 -740736989, i32 402653312, i32 -740736988, i32 402653312, i32 -740736987, i32 402653312, i32 -740736986, i32 402653312, i32 -740736985, i32 402653312, i32 -740736984, i32 402653312, i32 -740736983, i32 402653312, i32 -740736982, i32 402653312, i32 -740736981, i32 402653312, i32 -740736980, i32 402653312, i32 -740736979, i32 402653312, i32 -740736978, i32 402653312, i32 -740736977, i32 402653312, i32 -740736976, i32 402653312, i32 -740736975, i32 402653312, i32 -740736974, i32 402653312, i32 -740736973, i32 402653312, i32 -740736972, i32 402653312, i32 -740736971, i32 402653312, i32 -740736970, i32 402653312, i32 -740736969, i32 402653312, i32 -740736968, i32 402653312, i32 -740736967, i32 402653312, i32 -740736966, i32 402653312, i32 -740736965, i32 402653312, i32 -740736964, i32 402653312, i32 -740736963, i32 402653312, i32 -740736962, i32 402653312, i32 -740736961, i32 402653312, i32 -740736960, i32 402653312, i32 -740736959, i32 402653312, i32 -740736958, i32 402653312, i32 -740736957, i32 402653312, i32 -740736956, i32 402653312, i32 -740736955, i32 402653312, i32 -740736954, i32 402653312, i32 -740736953, i32 402653312, i32 -740736952, i32 402653312, i32 -740736951, i32 402653312, i32 -740736950, i32 402653312, i32 -740736949, i32 402653312, i32 -740736948, i32 402653312, i32 -740736947, i32 402653312, i32 -740736946, i32 402653312, i32 -740736945, i32 402653312, i32 -740736944, i32 402653312, i32 -740736943, i32 402653312, i32 -740736942, i32 402653312, i32 -740736941, i32 402653312, i32 -740736940, i32 402653312, i32 -740736939, i32 402653312, i32 -740736938, i32 402653312, i32 -740736937, i32 402653312, i32 -740736936, i32 402653312, i32 -740736935, i32 402653312, i32 -740736934, i32 402653312, i32 -740736933, i32 402653312, i32 -740736932, i32 402653312, i32 -740736931, i32 402653312, i32 -740736930, i32 402653312, i32 -740736929, i32 402653312, i32 -740736928, i32 402653312, i32 -740736927, i32 402653312, i32 -740736926, i32 402653312, i32 -740736925, i32 402653312, i32 -740736924, i32 402653312, i32 -740736923, i32 402653312, i32 -740736922, i32 402653312, i32 -740736921, i32 402653312, i32 -740736920, i32 402653312, i32 -740736919, i32 402653312, i32 -740736918, i32 402653312, i32 -740736917, i32 402653312, i32 -740736916, i32 402653312, i32 -740736915, i32 402653312, i32 -740736914, i32 402653312, i32 -740736913, i32 402653312, i32 -740736912, i32 402653312, i32 -740736911, i32 402653312, i32 -740736910, i32 402653312, i32 -740736909, i32 402653312, i32 -740736908, i32 402653312, i32 -740736907, i32 402653312, i32 -740736906, i32 402653312, i32 -740736905, i32 402653312, i32 -740736904, i32 402653312, i32 -740736903, i32 402653312, i32 -740736902, i32 402653312, i32 -740736901, i32 402653312, i32 -740736900, i32 402653312, i32 -740736899, i32 402653312, i32 -740736898, i32 402653312, i32 -740736897, i32 402653312, i32 -740736896, i32 402653312, i32 -740736895, i32 402653312, i32 -740736894, i32 402653312, i32 -740736893, i32 402653312, i32 -740736892, i32 402653312, i32 -740736891, i32 402653312, i32 -740736890, i32 402653312, i32 -740736889, i32 402653312, i32 -740736888, i32 402653312, i32 -740736887, i32 402653312, i32 -740736886, i32 402653312, i32 -740736885, i32 402653312, i32 -740736884, i32 402653312, i32 -740736883, i32 402653312, i32 -740736882, i32 402653312, i32 -740736881, i32 402653312, i32 -740736880, i32 402653312, i32 -740736879, i32 402653312, i32 -740736878, i32 402653312, i32 -740736877, i32 402653312, i32 -740736876, i32 402653312, i32 -740736875, i32 402653312, i32 -740736874, i32 402653312, i32 -740736873, i32 402653312, i32 -740736872, i32 402653312, i32 -740736871, i32 402653312, i32 -740736870, i32 402653312, i32 -740736869, i32 402653312, i32 -740736868, i32 402653312, i32 -740736867, i32 402653312, i32 -740736866, i32 402653312, i32 -740736865, i32 402653312, i32 -740736864, i32 402653312, i32 -740736863, i32 402653312, i32 -740736862, i32 402653312, i32 -740736861, i32 402653312, i32 -740736860, i32 402653312, i32 -740736859, i32 402653312, i32 -740736858, i32 402653312, i32 -740736857, i32 402653312, i32 -740736856, i32 402653312, i32 -740736855, i32 402653312, i32 -740736854, i32 402653312, i32 -740736853, i32 402653312, i32 -740736852, i32 402653312, i32 -740736851, i32 402653312, i32 -740736850, i32 402653312, i32 -740736849, i32 402653312, i32 -740736848, i32 402653312, i32 -740736847, i32 402653312, i32 -740736846, i32 402653312, i32 -740736845, i32 402653312, i32 -740736844, i32 402653312, i32 -740736843, i32 402653312, i32 -740736842, i32 402653312, i32 -740736841, i32 402653312, i32 -740736840, i32 402653312, i32 -740736839, i32 402653312, i32 -740736838, i32 402653312, i32 -740736837, i32 402653312, i32 -740736836, i32 402653312, i32 -740736835, i32 402653312, i32 -740736834, i32 402653312, i32 -740736833, i32 402653312, i32 -740736832, i32 402653312, i32 -740736831, i32 402653312, i32 -740736830, i32 402653312, i32 -740736829, i32 402653312, i32 -740736828, i32 402653312, i32 -740736827, i32 402653312, i32 -740736826, i32 402653312, i32 -740736825, i32 402653312, i32 -740736824, i32 402653312, i32 -740736823, i32 402653312, i32 -740736822, i32 402653312, i32 -740736821, i32 402653312, i32 -740736820, i32 402653312, i32 -740736819, i32 402653312, i32 -740736818, i32 402653312, i32 -740736817, i32 402653312, i32 -740736816, i32 402653312, i32 -740736815, i32 402653312, i32 -740736814, i32 402653312, i32 -740736813, i32 402653312, i32 -740736812, i32 402653312, i32 -740736811, i32 402653312, i32 -740736810, i32 402653312, i32 -740736809, i32 402653312, i32 -740736808, i32 402653312, i32 -740736807, i32 402653312, i32 -740736806, i32 402653312, i32 -740736805, i32 402653312, i32 -740736804, i32 402653312, i32 -740736803, i32 402653312, i32 -740736802, i32 402653312, i32 -740736801, i32 402653312, i32 -740736800, i32 402653312, i32 -740736799, i32 402653312, i32 -740736798, i32 402653312, i32 -740736797, i32 402653312, i32 -740736796, i32 402653312, i32 -740736795, i32 402653312, i32 -740736794, i32 402653312, i32 -740736793, i32 402653312, i32 -740736792, i32 402653312, i32 -740736791, i32 402653312, i32 -740736790, i32 402653312, i32 -740736789, i32 402653312, i32 -740736788, i32 402653312, i32 -740736787, i32 402653312, i32 -740736786, i32 402653312, i32 -740736785, i32 402653312, i32 -740736784, i32 402653312, i32 -740736783, i32 402653312, i32 -740736782, i32 402653312, i32 -740736781, i32 402653312, i32 -740736780, i32 402653312, i32 -740736779, i32 402653312, i32 -740736778, i32 402653312, i32 -740736777, i32 402653312, i32 -740736776, i32 402653312, i32 -740736775, i32 402653312, i32 -740736774, i32 402653312, i32 -740736773, i32 402653312, i32 -740736772, i32 402653312, i32 -740736771, i32 402653312, i32 -740736770, i32 402653312, i32 -740736769, i32 402653312, i32 -1334050816, i32 -1098252033, i32 248, i32 -1089402870, i32 2113929856, i32 2114060928, i32 2114192000, i32 2114323072, i32 2114454144, i32 2114585216, i32 2114716288, i32 2114847360, i32 -2138404854, i32 -1098894838, i32 -1081802763, i32 -1080295424, i32 -762576895, i32 65663, i32 -762511359, i32 131710, i32 268567176, i32 -1098186748, i32 -1215610880, i32 -786863615, i32 5889, i32 -1098252153, i32 -1090780991, i32 -660848640, i32 131585, i32 -660815744, i32 263169, i32 838992639, i32 2048, i32 -2138406646, i32 -1081802760, i32 -1082064896], [556 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_vgprs_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 668, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: failed to clear vgprs\0A\00", [33 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_vgprs_init._entry_ptr.61 = internal global ptr @gfx_v9_4_2_do_vgprs_init._entry.59, section ".printk_index", align 4
@gfx_v9_4_2_do_vgprs_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 675, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: timeout to clear vgprs\0A\00", [32 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_vgprs_init._entry_ptr.64 = internal global ptr @gfx_v9_4_2_do_vgprs_init._entry.62, section ".printk_index", align 4
@gfx_v9_4_2_do_vgprs_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 685, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: failed to cover all simds when clearing vgprs\0A\00", [41 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_vgprs_init._entry_ptr.67 = internal global ptr @gfx_v9_4_2_do_vgprs_init._entry.65, section ".printk_index", align 4
@gfx_v9_4_2_do_vgprs_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.2, i32 696, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: Init VGPRS Failed\0A\00", [37 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_vgprs_init._entry_ptr.70 = internal global ptr @gfx_v9_4_2_do_vgprs_init._entry.68, section ".printk_index", align 4
@gfx_v9_4_2_do_vgprs_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.58, ptr @.str.2, i32 698, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: Init VGPRS Successfully\0A\00", [63 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_do_vgprs_init._entry_ptr.73 = internal global ptr @gfx_v9_4_2_do_vgprs_init._entry.71, section ".printk_index", align 4
@amdgpu_ras_block_to_ta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RAS ERROR: unexpected block id %d\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_ras_error_to_ta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RAS ERROR: unexpected error type %d\0A\00", [59 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_edc_counter_regs = internal constant { [32 x %struct.soc15_reg_entry], [224 x i8] } { [32 x %struct.soc15_reg_entry] [%struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4490, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4489, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4494, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4495, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4497, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4498, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 4499, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1477, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1478, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1479, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1483, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1484, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 1, i32 19776, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 1, i32 19777, i32 0, i32 1, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1093, i32 0, i32 8, i32 1 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 930, i32 0, i32 8, i32 7 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 812, i32 0, i32 8, i32 7 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 813, i32 0, i32 8, i32 7 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 814, i32 0, i32 8, i32 7 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 934, i32 0, i32 8, i32 14 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 2840, i32 0, i32 8, i32 14 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 2912, i32 0, i32 1, i32 69 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 2946, i32 0, i32 1, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 2947, i32 0, i32 1, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3013, i32 0, i32 1, i32 2 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3017, i32 0, i32 1, i32 2 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 3018, i32 0, i32 1, i32 2 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1326, i32 0, i32 8, i32 14 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1414, i32 0, i32 8, i32 14 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1798, i32 0, i32 1, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1799, i32 0, i32 1, i32 16 }, %struct.soc15_reg_entry { i32 1, i32 0, i32 0, i32 1819, i32 0, i32 1, i32 16 }], [224 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_ras_fields = internal constant { [164 x %struct.soc15_ras_field_entry], [1488 x i8] } { [164 x %struct.soc15_ras_field_entry] [%struct.soc15_ras_field_entry { ptr @.str.82, i32 1, i32 0, i32 0, i32 4490, i32 192, i32 6, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.83, i32 1, i32 0, i32 0, i32 4490, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.84, i32 1, i32 0, i32 0, i32 4489, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.85, i32 1, i32 0, i32 0, i32 4494, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.86, i32 1, i32 0, i32 0, i32 4495, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.87, i32 1, i32 0, i32 0, i32 4497, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.88, i32 1, i32 0, i32 0, i32 4498, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.89, i32 1, i32 0, i32 0, i32 4499, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.90, i32 1, i32 0, i32 0, i32 4498, i32 192, i32 6, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.91, i32 1, i32 0, i32 0, i32 4499, i32 192, i32 6, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.92, i32 1, i32 0, i32 0, i32 1478, i32 12, i32 2, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.93, i32 1, i32 0, i32 0, i32 1477, i32 48, i32 4, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.94, i32 1, i32 0, i32 0, i32 1483, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.95, i32 1, i32 0, i32 0, i32 1483, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.96, i32 1, i32 0, i32 0, i32 1483, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.97, i32 1, i32 0, i32 0, i32 1484, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.98, i32 1, i32 0, i32 0, i32 1484, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.99, i32 1, i32 0, i32 0, i32 1484, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.100, i32 1, i32 0, i32 0, i32 1484, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.101, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 1, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.102, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 2, i32 1 }, %struct.soc15_ras_field_entry { ptr @.str.103, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 4, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.104, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 8, i32 3 }, %struct.soc15_ras_field_entry { ptr @.str.105, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 16, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.106, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 32, i32 5 }, %struct.soc15_ras_field_entry { ptr @.str.107, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 64, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.108, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 128, i32 7 }, %struct.soc15_ras_field_entry { ptr @.str.109, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 256, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.110, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 512, i32 9 }, %struct.soc15_ras_field_entry { ptr @.str.111, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 1024, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.112, i32 1, i32 0, i32 0, i32 1479, i32 0, i32 0, i32 2048, i32 11 }, %struct.soc15_ras_field_entry { ptr @.str.113, i32 1, i32 0, i32 1, i32 19776, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.114, i32 1, i32 0, i32 1, i32 19776, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.115, i32 1, i32 0, i32 1, i32 19776, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.116, i32 1, i32 0, i32 1, i32 19776, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.117, i32 1, i32 0, i32 1, i32 19776, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.118, i32 1, i32 0, i32 1, i32 19776, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.119, i32 1, i32 0, i32 1, i32 19776, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.120, i32 1, i32 0, i32 1, i32 19776, i32 805306368, i32 28, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.121, i32 1, i32 0, i32 1, i32 19777, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.122, i32 1, i32 0, i32 1, i32 19777, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.123, i32 1, i32 0, i32 1, i32 19777, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.124, i32 1, i32 0, i32 1, i32 19777, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.125, i32 1, i32 0, i32 1, i32 19777, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.126, i32 1, i32 0, i32 1, i32 19777, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.127, i32 1, i32 0, i32 1, i32 19777, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.128, i32 1, i32 0, i32 1, i32 19777, i32 805306368, i32 28, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.129, i32 1, i32 0, i32 0, i32 1093, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.130, i32 1, i32 0, i32 0, i32 1093, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.131, i32 1, i32 0, i32 0, i32 1093, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.132, i32 1, i32 0, i32 0, i32 1093, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.133, i32 1, i32 0, i32 0, i32 930, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.134, i32 1, i32 0, i32 0, i32 930, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.135, i32 1, i32 0, i32 0, i32 930, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.136, i32 1, i32 0, i32 0, i32 930, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.137, i32 1, i32 0, i32 0, i32 930, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.138, i32 1, i32 0, i32 0, i32 930, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.139, i32 1, i32 0, i32 0, i32 930, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.140, i32 1, i32 0, i32 0, i32 930, i32 805306368, i32 28, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.141, i32 1, i32 0, i32 0, i32 812, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.142, i32 1, i32 0, i32 0, i32 812, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.143, i32 1, i32 0, i32 0, i32 812, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.144, i32 1, i32 0, i32 0, i32 812, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.145, i32 1, i32 0, i32 0, i32 812, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.146, i32 1, i32 0, i32 0, i32 812, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.147, i32 1, i32 0, i32 0, i32 813, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.148, i32 1, i32 0, i32 0, i32 813, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.149, i32 1, i32 0, i32 0, i32 813, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.150, i32 1, i32 0, i32 0, i32 813, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.151, i32 1, i32 0, i32 0, i32 813, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.152, i32 1, i32 0, i32 0, i32 814, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.153, i32 1, i32 0, i32 0, i32 814, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.154, i32 1, i32 0, i32 0, i32 814, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.155, i32 1, i32 0, i32 0, i32 814, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.156, i32 1, i32 0, i32 0, i32 814, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.157, i32 1, i32 0, i32 0, i32 814, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.158, i32 1, i32 0, i32 0, i32 814, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.159, i32 1, i32 0, i32 0, i32 814, i32 805306368, i32 28, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.160, i32 1, i32 0, i32 0, i32 934, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.161, i32 1, i32 0, i32 0, i32 934, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.162, i32 1, i32 0, i32 0, i32 934, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.163, i32 1, i32 0, i32 0, i32 934, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.164, i32 1, i32 0, i32 0, i32 934, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.165, i32 1, i32 0, i32 0, i32 934, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.166, i32 1, i32 0, i32 0, i32 934, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.167, i32 1, i32 0, i32 0, i32 2840, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.168, i32 1, i32 0, i32 0, i32 2840, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.169, i32 1, i32 0, i32 0, i32 2840, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.170, i32 1, i32 0, i32 0, i32 2840, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.171, i32 1, i32 0, i32 0, i32 2840, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.172, i32 1, i32 0, i32 0, i32 2840, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.173, i32 1, i32 0, i32 0, i32 2840, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.174, i32 1, i32 0, i32 0, i32 2912, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.175, i32 1, i32 0, i32 0, i32 2946, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.176, i32 1, i32 0, i32 0, i32 2946, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.177, i32 1, i32 0, i32 0, i32 2946, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.178, i32 1, i32 0, i32 0, i32 2946, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.179, i32 1, i32 0, i32 0, i32 2946, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.180, i32 1, i32 0, i32 0, i32 2946, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.181, i32 1, i32 0, i32 0, i32 2946, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.182, i32 1, i32 0, i32 0, i32 2947, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.183, i32 1, i32 0, i32 0, i32 2947, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.184, i32 1, i32 0, i32 0, i32 2947, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.185, i32 1, i32 0, i32 0, i32 2947, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.186, i32 1, i32 0, i32 0, i32 2947, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.187, i32 1, i32 0, i32 0, i32 2947, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.188, i32 1, i32 0, i32 0, i32 2947, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.189, i32 1, i32 0, i32 0, i32 2947, i32 805306368, i32 28, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.190, i32 1, i32 0, i32 0, i32 3013, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.191, i32 1, i32 0, i32 0, i32 3013, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.192, i32 1, i32 0, i32 0, i32 3017, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.193, i32 1, i32 0, i32 0, i32 3017, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.194, i32 1, i32 0, i32 0, i32 3017, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.195, i32 1, i32 0, i32 0, i32 3017, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.196, i32 1, i32 0, i32 0, i32 3017, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.197, i32 1, i32 0, i32 0, i32 3017, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.198, i32 1, i32 0, i32 0, i32 3017, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.199, i32 1, i32 0, i32 0, i32 3017, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.200, i32 1, i32 0, i32 0, i32 3017, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.201, i32 1, i32 0, i32 0, i32 3017, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.202, i32 1, i32 0, i32 0, i32 3017, i32 -1073741824, i32 30, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.203, i32 1, i32 0, i32 0, i32 3018, i32 3, i32 0, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.204, i32 1, i32 0, i32 0, i32 3018, i32 12, i32 2, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.205, i32 1, i32 0, i32 0, i32 3018, i32 48, i32 4, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.206, i32 1, i32 0, i32 0, i32 3018, i32 192, i32 6, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.207, i32 1, i32 0, i32 0, i32 1326, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.208, i32 1, i32 0, i32 0, i32 1326, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.209, i32 1, i32 0, i32 0, i32 1326, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.210, i32 1, i32 0, i32 0, i32 1414, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.211, i32 1, i32 0, i32 0, i32 1414, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.212, i32 1, i32 0, i32 0, i32 1414, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.213, i32 1, i32 0, i32 0, i32 1414, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.214, i32 1, i32 0, i32 0, i32 1414, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.215, i32 1, i32 0, i32 0, i32 1414, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.216, i32 1, i32 0, i32 0, i32 1798, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.217, i32 1, i32 0, i32 0, i32 1798, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.218, i32 1, i32 0, i32 0, i32 1798, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.219, i32 1, i32 0, i32 0, i32 1798, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.220, i32 1, i32 0, i32 0, i32 1798, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.221, i32 1, i32 0, i32 0, i32 1798, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.222, i32 1, i32 0, i32 0, i32 1798, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.223, i32 1, i32 0, i32 0, i32 1798, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.224, i32 1, i32 0, i32 0, i32 1798, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.225, i32 1, i32 0, i32 0, i32 1798, i32 -1073741824, i32 30, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.226, i32 1, i32 0, i32 0, i32 1799, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.227, i32 1, i32 0, i32 0, i32 1799, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.228, i32 1, i32 0, i32 0, i32 1799, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.229, i32 1, i32 0, i32 0, i32 1799, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.230, i32 1, i32 0, i32 0, i32 1799, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.231, i32 1, i32 0, i32 0, i32 1799, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.232, i32 1, i32 0, i32 0, i32 1799, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.233, i32 1, i32 0, i32 0, i32 1799, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.234, i32 1, i32 0, i32 0, i32 1799, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.222, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.223, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.224, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.225, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.229, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.230, i32 1, i32 0, i32 0, i32 1819, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.235, i32 1, i32 0, i32 0, i32 1819, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.236, i32 1, i32 0, i32 0, i32 1819, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.237, i32 1, i32 0, i32 0, i32 1819, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.238, i32 1, i32 0, i32 0, i32 1819, i32 50331648, i32 24, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.239, i32 1, i32 0, i32 0, i32 1819, i32 805306368, i32 28, i32 -1073741824, i32 30 }], [1488 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_get_reg_error_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 1470, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: GFX SubBlock %s, Instance[%d][%d], SEC %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gfx_v9_4_2_get_reg_error_count\00", [33 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_get_reg_error_count._entry_ptr = internal global ptr @gfx_v9_4_2_get_reg_error_count._entry, section ".printk_index", align 4
@gfx_v9_4_2_get_reg_error_count._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 1480, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: GFX SubBlock %s, Instance[%d][%d], DED %d\0A\00", [45 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_get_reg_error_count._entry_ptr.81 = internal global ptr @gfx_v9_4_2_get_reg_error_count._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPF_ROQ_ME2\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPF_ROQ_ME1\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPF_TCIU_TAG\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPC_SCRATCH\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CPC_UCODE\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CPC_DC_STATE_RAM_ME1\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CPC_DC_CSINVOC_RAM_ME1\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CPC_DC_RESTORE_RAM_ME1\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CPC_DC_CSINVOC_RAM1_ME1\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CPC_DC_RESTORE_RAM1_ME1\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GDS_GRBM\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GDS_MEM\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GDS_PHY_CMD_RAM_MEM\00", [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GDS_PHY_DATA_RAM_MEM\00", [43 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GDS_ME0_CS_PIPE_MEM\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GDS_ME1_PIPE0_PIPE_MEM\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GDS_ME1_PIPE1_PIPE_MEM\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GDS_ME1_PIPE2_PIPE_MEM\00", [41 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GDS_ME1_PIPE3_PIPE_MEM\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GDS_ME0_GFXHP3D_PIX_DED\00", [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GDS_ME0_GFXHP3D_VTX_DED\00", [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GDS_ME0_CS_DED\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GDS_ME0_GFXHP3D_GS_DED\00", [41 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GDS_ME1_PIPE0_DED\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GDS_ME1_PIPE1_DED\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GDS_ME1_PIPE2_DED\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GDS_ME1_PIPE3_DED\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GDS_ME2_PIPE0_DED\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GDS_ME2_PIPE1_DED\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GDS_ME2_PIPE2_DED\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GDS_ME2_PIPE3_DED\00", [46 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RLCG_INSTR_RAM\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RLCG_SCRATCH_RAM\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RLCV_INSTR_RAM\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RLCV_SCRATCH_RAM\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RLC_TCTAG_RAM\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RLC_SPM_SCRATCH_RAM\00", [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RLC_SRM_DATA_RAM\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RLC_SRM_ADDR_RAM\00", [47 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE0_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE1_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE2_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE3_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE4_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE5_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE6_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RLC_SPM_SE7_SCRATCH_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPI_SR_MEM\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPI_GDS_EXPREQ\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPI_WB_GRANT_30\00", [16 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPI_LIFE_CNT\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SQC_DATA_CU0_WRITE_DATA_BUF\00", [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_DATA_CU0_UTCL1_LFIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SQC_DATA_CU1_WRITE_DATA_BUF\00", [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_DATA_CU1_UTCL1_LFIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SQC_DATA_CU2_WRITE_DATA_BUF\00", [36 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_DATA_CU2_UTCL1_LFIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SQC_DATA_CU3_WRITE_DATA_BUF\00", [36 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_DATA_CU3_UTCL1_LFIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SQC_INST_BANKA_TAG_RAM\00", [41 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_INST_BANKA_BANK_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SQC_DATA_BANKA_TAG_RAM\00", [41 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_DATA_BANKA_BANK_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SQC_INST_UTCL1_LFIFO\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SQC_DATA_BANKA_DIRTY_BIT_RAM\00", [35 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SQC_INST_BANKB_TAG_RAM\00", [41 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_INST_BANKB_BANK_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SQC_DATA_BANKB_TAG_RAM\00", [41 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_DATA_BANKB_BANK_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SQC_DATA_BANKB_DIRTY_BIT_RAM\00", [35 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SQC_INST_BANKA_UTCL1_MISS_FIFO\00", [33 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_INST_BANKA_MISS_FIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_DATA_BANKA_HIT_FIFO\00", [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_DATA_BANKA_MISS_FIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SQC_INST_BANKB_UTCL1_MISS_FIFO\00", [33 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_INST_BANKB_MISS_FIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SQC_DATA_BANKB_HIT_FIFO\00", [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SQC_DATA_BANKB_MISS_FIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_LDS_D\00", [23 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_LDS_I\00", [23 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SQ_SGPR\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_VGPR0\00", [23 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_VGPR1\00", [23 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_VGPR2\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SQ_VGPR3\00", [23 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCP_CACHE_RAM\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCP_LFIFO_RAM\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCP_CMD_FIFO\00", [19 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCP_VM_FIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCP_DB_RAM\00", [21 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCP_UTCL1_LFIFO0\00", [47 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCP_UTCL1_LFIFO1\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCI_WRITE_RAM\00", [18 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCC_CACHE_DATA\00", [17 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCC_CACHE_DIRTY\00", [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TCC_HIGH_RATE_TAG\00", [46 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCC_LOW_RATE_TAG\00", [47 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCC_SRC_FIFO\00", [19 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCC_LATENCY_FIFO\00", [47 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TCC_LATENCY_FIFO_NEXT_RAM\00", [38 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TCC_CACHE_TAG_PROBE_FIFO\00", [39 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TCC_UC_ATOMIC_FIFO\00", [45 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TCC_WRITE_CACHE_READ\00", [43 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TCC_RETURN_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TCC_IN_USE_TRANSFER\00", [44 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCC_IN_USE_DEC\00", [17 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TCC_WRITE_RETURN\00", [47 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TCC_RETURN_DATA\00", [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TCA_HOLE_FIFO\00", [18 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCA_REQ_FIFO\00", [19 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCX_GROUP0\00", [21 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCX_GROUP1\00", [21 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCX_GROUP2\00", [21 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCX_GROUP3\00", [21 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCX_GROUP4\00", [21 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCX_GROUP5\00", [21 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCX_GROUP6\00", [21 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCX_GROUP7\00", [21 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCX_GROUP8\00", [21 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TCX_GROUP9\00", [21 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCX_GROUP10\00", [20 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCX_GROUP11\00", [20 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCX_GROUP12\00", [20 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCX_GROUP13\00", [20 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TCX_GROUP14\00", [20 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TD_SS_FIFO_LO\00", [18 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TD_SS_FIFO_HI\00", [18 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TD_CS_FIFO\00", [21 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TA_FS_DFIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TA_FS_AFIFO_LO\00", [17 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TA_FL_LFIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TA_FX_LFIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TA_FS_CFIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TA_FS_AFIFO_HI\00", [17 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EA_DRAMRD_CMDMEM\00", [47 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EA_DRAMWR_CMDMEM\00", [47 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EA_DRAMWR_DATAMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EA_RRET_TAGMEM\00", [17 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EA_WRET_TAGMEM\00", [17 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EA_IOWR_DATAMEM\00", [16 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EA_DRAMRD_PAGEMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EA_DRAMWR_PAGEMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EA_IORD_CMDMEM\00", [17 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EA_IOWR_CMDMEM\00", [17 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EA_GMIRD_CMDMEM\00", [16 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EA_GMIWR_CMDMEM\00", [16 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EA_GMIWR_DATAMEM\00", [47 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EA_GMIRD_PAGEMEM\00", [47 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EA_GMIWR_PAGEMEM\00", [47 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_D0MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_D1MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_D2MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_D3MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_A0MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_A1MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_A2MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_A3MEM\00", [19 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EA_MAM_AFMEM\00", [19 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_utc_blocks = internal constant { [6 x %struct.gfx_v9_4_2_utc_block], [104 x i8] } { [6 x %struct.gfx_v9_4_2_utc_block] [%struct.gfx_v9_4_2_utc_block { i32 0, i32 8, i32 2, i32 2, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2145 }, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2148 }, i32 12288, i32 12, i32 49152, i32 14, i32 65536 }, %struct.gfx_v9_4_2_utc_block { i32 1, i32 10, i32 1, i32 1, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2146 }, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2149 }, i32 12288, i32 12, i32 49152, i32 14, i32 65536 }, %struct.gfx_v9_4_2_utc_block { i32 2, i32 18, i32 1, i32 2, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2147 }, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2150 }, i32 12288, i32 12, i32 49152, i32 14, i32 65536 }, %struct.gfx_v9_4_2_utc_block { i32 3, i32 8, i32 2, i32 1, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2064 }, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2067 }, i32 24576, i32 13, i32 98304, i32 15, i32 4096 }, %struct.gfx_v9_4_2_utc_block { i32 4, i32 8, i32 2, i32 2, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2063 }, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2066 }, i32 24576, i32 13, i32 98304, i32 15, i32 4096 }, %struct.gfx_v9_4_2_utc_block { i32 5, i32 8, i32 2, i32 8, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2062 }, %struct.soc15_reg { i32 1, i32 0, i32 0, i32 2065 }, i32 24576, i32 13, i32 98304, i32 15, i32 4096 }], [104 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_utc_edc_count.vml2_way_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.240, ptr @.str.241], [24 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BIGK\00", [27 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4K\00", [29 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_utc_edc_count.utcl2_rounter_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.242, ptr @.str.243], [24 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VMC\00", [28 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"APT\00", [28 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_utc_edc_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.245, ptr @.str.2, i32 1560, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"amdgpu: GFX SubBlock UTC_VML2_BANK_CACHE_%d_%s_MEM%d, SED %d, DED %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gfx_v9_4_2_log_utc_edc_count\00", [35 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_utc_edc_count._entry_ptr = internal global ptr @gfx_v9_4_2_log_utc_edc_count._entry, section ".printk_index", align 4
@gfx_v9_4_2_log_utc_edc_count._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.245, ptr @.str.2, i32 1564, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: GFX SubBlock %s, SED %d, DED %d\0A\00", [55 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_utc_edc_count._entry_ptr.248 = internal global ptr @gfx_v9_4_2_log_utc_edc_count._entry.246, section ".printk_index", align 4
@vml2_walker_mems = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270], [56 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_utc_edc_count._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.245, ptr @.str.2, i32 1570, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"amdgpu: GFX SubBlock UTCL2_ROUTER_IFIF%d_GROUP0_%s, SED %d, DED %d\0A\00", [60 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_utc_edc_count._entry_ptr.251 = internal global ptr @gfx_v9_4_2_log_utc_edc_count._entry.249, section ".printk_index", align 4
@gfx_v9_4_2_log_utc_edc_count._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.245, ptr @.str.2, i32 1576, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"amdgpu: GFX SubBlock UTC_ATCL2_CACHE_2M_BANK%d_WAY%d_MEM, SED %d, DED %d\0A\00", [54 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_utc_edc_count._entry_ptr.254 = internal global ptr @gfx_v9_4_2_log_utc_edc_count._entry.252, section ".printk_index", align 4
@gfx_v9_4_2_log_utc_edc_count._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.245, ptr @.str.2, i32 1582, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"amdgpu: GFX SubBlock UTC_ATCL2_CACHE_32K_BANK%d_WAY%d_MEM%d, SED %d, DED %d\0A\00", [51 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_utc_edc_count._entry_ptr.257 = internal global ptr @gfx_v9_4_2_log_utc_edc_count._entry.255, section ".printk_index", align 4
@gfx_v9_4_2_log_utc_edc_count._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.245, ptr @.str.2, i32 1588, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"amdgpu: GFX SubBlock UTC_ATCL2_CACHE_4K_BANK%d_WAY%d_MEM%d, SED %d, DED %d\0A\00", [52 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_utc_edc_count._entry_ptr.260 = internal global ptr @gfx_v9_4_2_log_utc_edc_count._entry.258, section ".printk_index", align 4
@.str.261 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE0_MEM0\00", [39 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE0_MEM1\00", [39 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE1_MEM0\00", [39 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE1_MEM1\00", [39 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE2_MEM0\00", [39 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UTC_VML2_CACHE_PDE2_MEM1\00", [39 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UTC_VML2_RDIF_ARADDRS\00", [42 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UTC_VML2_RDIF_LOG_FIFO\00", [41 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UTC_VML2_QUEUE_REQ\00", [45 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UTC_VML2_QUEUE_RET\00", [45 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_query_ea_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.272, ptr @.str.2, i32 1743, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: GCEA err detected at instance: %d, status: 0x%x!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gfx_v9_4_2_query_ea_err_status\00", [33 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_query_ea_err_status._entry_ptr = internal global ptr @gfx_v9_4_2_query_ea_err_status._entry, section ".printk_index", align 4
@gfx_v9_4_2_query_utc_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.274, ptr @.str.2, i32 1762, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: GFX UTCL2 Mem Ecc Status: 0x%x!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gfx_v9_4_2_query_utc_err_status\00", [32 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_query_utc_err_status._entry_ptr = internal global ptr @gfx_v9_4_2_query_utc_err_status._entry, section ".printk_index", align 4
@gfx_v9_4_2_query_utc_err_status._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.274, ptr @.str.2, i32 1768, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: GFX VML2 Mem Ecc Status: 0x%x!\0A\00", [56 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_query_utc_err_status._entry_ptr.277 = internal global ptr @gfx_v9_4_2_query_utc_err_status._entry.275, section ".printk_index", align 4
@gfx_v9_4_2_query_utc_err_status._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.274, ptr @.str.2, i32 1774, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: GFX VML2 Walker Mem Ecc Status: 0x%x!\0A\00", [49 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_query_utc_err_status._entry_ptr.280 = internal global ptr @gfx_v9_4_2_query_utc_err_status._entry.278, section ".printk_index", align 4
@gfx_v9_4_2_query_sq_timeout_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.282, ptr @.str.2, i32 1899, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: GFX Watchdog Timeout: SE %d, SH %d, CU %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"gfx_v9_4_2_query_sq_timeout_status\00", [61 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_query_sq_timeout_status._entry_ptr = internal global ptr @gfx_v9_4_2_query_sq_timeout_status._entry, section ".printk_index", align 4
@gfx_v9_4_2_log_cu_timeout_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.284, ptr @.str.2, i32 1874, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"amdgpu: \09 SIMD %d, Wave %d: status 0x%x, pc 0x%llx, exec 0x%llx, inst 0x%llx, ib_sts 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gfx_v9_4_2_log_cu_timeout_status\00", [63 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_log_cu_timeout_status._entry_ptr = internal global ptr @gfx_v9_4_2_log_cu_timeout_status._entry, section ".printk_index", align 4
@wave_read_ind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.286, ptr @.str.2, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013amdgpu: timeout: rlcg program reg:0x%05x failed !\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wave_read_ind\00", [18 x i8] zeroinitializer }, align 32
@wave_read_ind._entry_ptr = internal global ptr @wave_read_ind._entry, section ".printk_index", align 4
@amdgpu_watchdog_timer = external dso_local local_unnamed_addr global %struct.amdgpu_watchdog_timer, align 4
@gfx_v9_4_2_enable_watchdog_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.2, i32 1811, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Watchdog period range is 1 to 0x23\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gfx_v9_4_2_enable_watchdog_timer\00", [63 x i8] zeroinitializer }, align 32
@gfx_v9_4_2_enable_watchdog_timer._entry_ptr = internal global ptr @gfx_v9_4_2_enable_watchdog_timer._entry, section ".printk_index", align 4
@switch.table.gfx_v9_4_2_ras_error_inject = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.289 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.290 = private unnamed_addr constant [25 x i8] c"vgpr_init_regs_aldebaran\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 191, i32 30 }
@___asan_gen_.293 = private unnamed_addr constant [28 x i8] c"sgpr112_init_regs_aldebaran\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 245, i32 30 }
@___asan_gen_.296 = private unnamed_addr constant [27 x i8] c"sgpr96_init_regs_aldebaran\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 287, i32 30 }
@___asan_gen_.299 = private unnamed_addr constant [27 x i8] c"sgpr64_init_regs_aldebaran\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 328, i32 30 }
@___asan_gen_.302 = private unnamed_addr constant [30 x i8] c"golden_settings_gc_9_4_2_alde\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 81, i32 38 }
@___asan_gen_.305 = private unnamed_addr constant [36 x i8] c"golden_settings_gc_9_4_2_alde_die_0\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 63, i32 38 }
@___asan_gen_.308 = private unnamed_addr constant [36 x i8] c"golden_settings_gc_9_4_2_alde_die_1\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 72, i32 38 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 744, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [21 x i8] c"gfx_v9_4_2_ras_funcs\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1934, i32 35 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 510, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [38 x i8] c"sgpr112_init_compute_shader_aldebaran\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 219, i32 18 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 525, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 535, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [37 x i8] c"sgpr96_init_compute_shader_aldebaran\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 263, i32 18 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 550, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 559, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 569, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 575, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [37 x i8] c"sgpr64_init_compute_shader_aldebaran\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 310, i32 18 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 590, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 600, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 609, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 626, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 628, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 368, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 414, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 482, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 431, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 436, i32 24 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 440, i32 34 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 445, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 653, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [35 x i8] c"vgpr_init_compute_shader_aldebaran\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 93, i32 18 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 668, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 675, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 685, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 696, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 698, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 573, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 592, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant [28 x i8] c"gfx_v9_4_2_edc_counter_regs\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 796, i32 37 }
@___asan_gen_.518 = private unnamed_addr constant [22 x i8] c"gfx_v9_4_2_ras_fields\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 873, i32 43 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1467, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1477, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 875, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 878, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 881, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 886, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 889, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 892, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 895, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 899, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 903, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 907, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 913, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 916, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 919, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 922, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 925, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 928, i32 4 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 932, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 936, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 940, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 944, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 947, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 950, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 953, i32 4 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 956, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 959, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 962, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 965, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 968, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 971, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 974, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 977, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 982, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 985, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 988, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 991, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 994, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 997, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1000, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1003, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1006, i32 4 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1009, i32 4 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1012, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1015, i32 4 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1018, i32 4 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1021, i32 4 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1024, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1027, i32 4 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1032, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1035, i32 4 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1038, i32 4 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1041, i32 4 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1046, i32 4 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1049, i32 4 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1052, i32 4 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1055, i32 4 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1058, i32 4 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1061, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1064, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1067, i32 4 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1072, i32 4 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1075, i32 4 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1078, i32 4 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1081, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1084, i32 4 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1087, i32 4 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1092, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1095, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1098, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1101, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1104, i32 4 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1109, i32 4 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1112, i32 4 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1115, i32 4 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1118, i32 4 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1121, i32 4 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1124, i32 4 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1127, i32 4 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1130, i32 4 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1135, i32 4 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1138, i32 4 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1141, i32 4 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1144, i32 4 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1147, i32 4 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1150, i32 4 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1153, i32 4 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1158, i32 4 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1161, i32 4 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1164, i32 4 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1167, i32 4 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1170, i32 4 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1173, i32 4 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1176, i32 4 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1181, i32 4 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1186, i32 4 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1189, i32 4 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1192, i32 4 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1195, i32 4 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1198, i32 4 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1201, i32 4 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1204, i32 4 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1207, i32 4 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1210, i32 4 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1213, i32 4 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1216, i32 4 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1219, i32 4 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1222, i32 4 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1225, i32 4 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1228, i32 4 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1233, i32 4 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1236, i32 4 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1241, i32 4 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1244, i32 4 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1247, i32 4 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1250, i32 4 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1253, i32 4 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1256, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1258, i32 4 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1260, i32 4 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1262, i32 4 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1264, i32 4 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1266, i32 4 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1268, i32 4 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1270, i32 4 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1272, i32 4 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1274, i32 4 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1278, i32 4 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1281, i32 4 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1284, i32 4 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1289, i32 4 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1292, i32 4 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1295, i32 4 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1298, i32 4 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1301, i32 4 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1304, i32 4 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1309, i32 4 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1312, i32 4 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1315, i32 4 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1318, i32 4 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1321, i32 4 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1324, i32 4 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1327, i32 4 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1329, i32 4 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1331, i32 4 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1333, i32 4 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1337, i32 4 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1340, i32 4 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1343, i32 4 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1346, i32 4 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1348, i32 4 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1350, i32 4 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1353, i32 4 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1356, i32 4 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1359, i32 4 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1376, i32 4 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1379, i32 4 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1382, i32 4 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1385, i32 4 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1388, i32 4 }
@___asan_gen_.1010 = private unnamed_addr constant [22 x i8] c"gfx_v9_4_2_utc_blocks\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1406, i32 36 }
@___asan_gen_.1013 = private unnamed_addr constant [13 x i8] c"vml2_way_str\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1548, i32 21 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1548, i32 40 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1548, i32 48 }
@___asan_gen_.1022 = private unnamed_addr constant [18 x i8] c"utcl2_rounter_str\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1549, i32 21 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1549, i32 45 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1549, i32 52 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1557, i32 3 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1563, i32 3 }
@___asan_gen_.1046 = private unnamed_addr constant [17 x i8] c"vml2_walker_mems\00", align 1
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1393, i32 27 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1567, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1573, i32 3 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1579, i32 3 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1585, i32 3 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1394, i32 2 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1395, i32 2 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1396, i32 2 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1397, i32 2 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1398, i32 2 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1399, i32 2 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1400, i32 2 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1401, i32 2 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1402, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1403, i32 2 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1742, i32 5 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1762, i32 3 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1768, i32 3 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1774, i32 3 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1896, i32 6 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1867, i32 3 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1828, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1167 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c\00", align 1
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1167, i32 1811, i32 3 }
@___asan_gen_.1169 = private unnamed_addr constant [41 x i8] c"switch.table.gfx_v9_4_2_ras_error_inject\00", align 1
@llvm.compiler.used = appending global [332 x ptr] [ptr @gfx_v9_4_2_do_sgprs_init._entry, ptr @gfx_v9_4_2_do_sgprs_init._entry.11, ptr @gfx_v9_4_2_do_sgprs_init._entry.14, ptr @gfx_v9_4_2_do_sgprs_init._entry.17, ptr @gfx_v9_4_2_do_sgprs_init._entry.20, ptr @gfx_v9_4_2_do_sgprs_init._entry.23, ptr @gfx_v9_4_2_do_sgprs_init._entry.26, ptr @gfx_v9_4_2_do_sgprs_init._entry.29, ptr @gfx_v9_4_2_do_sgprs_init._entry.32, ptr @gfx_v9_4_2_do_sgprs_init._entry.35, ptr @gfx_v9_4_2_do_sgprs_init._entry.39, ptr @gfx_v9_4_2_do_sgprs_init._entry.8, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.10, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.13, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.16, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.19, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.22, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.25, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.28, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.31, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.34, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.38, ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.41, ptr @gfx_v9_4_2_do_vgprs_init._entry, ptr @gfx_v9_4_2_do_vgprs_init._entry.59, ptr @gfx_v9_4_2_do_vgprs_init._entry.62, ptr @gfx_v9_4_2_do_vgprs_init._entry.65, ptr @gfx_v9_4_2_do_vgprs_init._entry.68, ptr @gfx_v9_4_2_do_vgprs_init._entry.71, ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr, ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr.61, ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr.64, ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr.67, ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr.70, ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr.73, ptr @gfx_v9_4_2_enable_watchdog_timer._entry, ptr @gfx_v9_4_2_enable_watchdog_timer._entry_ptr, ptr @gfx_v9_4_2_get_reg_error_count._entry, ptr @gfx_v9_4_2_get_reg_error_count._entry.79, ptr @gfx_v9_4_2_get_reg_error_count._entry_ptr, ptr @gfx_v9_4_2_get_reg_error_count._entry_ptr.81, ptr @gfx_v9_4_2_init_golden_registers._entry, ptr @gfx_v9_4_2_init_golden_registers._entry_ptr, ptr @gfx_v9_4_2_log_cu_timeout_status._entry, ptr @gfx_v9_4_2_log_cu_timeout_status._entry_ptr, ptr @gfx_v9_4_2_log_utc_edc_count._entry, ptr @gfx_v9_4_2_log_utc_edc_count._entry.246, ptr @gfx_v9_4_2_log_utc_edc_count._entry.249, ptr @gfx_v9_4_2_log_utc_edc_count._entry.252, ptr @gfx_v9_4_2_log_utc_edc_count._entry.255, ptr @gfx_v9_4_2_log_utc_edc_count._entry.258, ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr, ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr.248, ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr.251, ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr.254, ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr.257, ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr.260, ptr @gfx_v9_4_2_query_ea_err_status._entry, ptr @gfx_v9_4_2_query_ea_err_status._entry_ptr, ptr @gfx_v9_4_2_query_sq_timeout_status._entry, ptr @gfx_v9_4_2_query_sq_timeout_status._entry_ptr, ptr @gfx_v9_4_2_query_utc_err_status._entry, ptr @gfx_v9_4_2_query_utc_err_status._entry.275, ptr @gfx_v9_4_2_query_utc_err_status._entry.278, ptr @gfx_v9_4_2_query_utc_err_status._entry_ptr, ptr @gfx_v9_4_2_query_utc_err_status._entry_ptr.277, ptr @gfx_v9_4_2_query_utc_err_status._entry_ptr.280, ptr @gfx_v9_4_2_run_shader._entry, ptr @gfx_v9_4_2_run_shader._entry.44, ptr @gfx_v9_4_2_run_shader._entry_ptr, ptr @gfx_v9_4_2_run_shader._entry_ptr.46, ptr @gfx_v9_4_2_wait_for_waves_assigned._entry, ptr @gfx_v9_4_2_wait_for_waves_assigned._entry_ptr, ptr @wave_read_ind._entry, ptr @wave_read_ind._entry_ptr, ptr @vgpr_init_regs_aldebaran, ptr @sgpr112_init_regs_aldebaran, ptr @sgpr96_init_regs_aldebaran, ptr @sgpr64_init_regs_aldebaran, ptr @golden_settings_gc_9_4_2_alde, ptr @golden_settings_gc_9_4_2_alde_die_0, ptr @golden_settings_gc_9_4_2_alde_die_1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gfx_v9_4_2_ras_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sgpr112_init_compute_shader_aldebaran, ptr @.str.9, ptr @.str.12, ptr @sgpr96_init_compute_shader_aldebaran, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @sgpr64_init_compute_shader_aldebaran, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @vgpr_init_compute_shader_aldebaran, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @gfx_v9_4_2_edc_counter_regs, ptr @gfx_v9_4_2_ras_fields, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @gfx_v9_4_2_utc_blocks, ptr @gfx_v9_4_2_log_utc_edc_count.vml2_way_str, ptr @.str.240, ptr @.str.241, ptr @gfx_v9_4_2_log_utc_edc_count.utcl2_rounter_str, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.247, ptr @vml2_walker_mems, ptr @.str.250, ptr @.str.253, ptr @.str.256, ptr @.str.259, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.276, ptr @.str.279, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @switch.table.gfx_v9_4_2_ras_error_inject], section "llvm.metadata"
@0 = internal global [294 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgpr_init_regs_aldebaran to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpr112_init_regs_aldebaran to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpr96_init_regs_aldebaran to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpr64_init_regs_aldebaran to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_gc_9_4_2_alde to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_gc_9_4_2_alde_die_0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_gc_9_4_2_alde_die_1 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_init_golden_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_ras_funcs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpr112_init_compute_shader_aldebaran to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpr96_init_compute_shader_aldebaran to i32), i32 484, i32 608, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpr64_init_compute_shader_aldebaran to i32), i32 356, i32 448, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_sgprs_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_run_shader._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_run_shader._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_wait_for_waves_assigned._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_vgprs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgpr_init_compute_shader_aldebaran to i32), i32 2260, i32 2816, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_vgprs_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_vgprs_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_vgprs_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_vgprs_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_do_vgprs_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_edc_counter_regs to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_ras_fields to i32), i32 5904, i32 7392, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_get_reg_error_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_get_reg_error_count._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_utc_blocks to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_log_utc_edc_count.vml2_way_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_log_utc_edc_count.utcl2_rounter_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_log_utc_edc_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_log_utc_edc_count._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vml2_walker_mems to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_log_utc_edc_count._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_log_utc_edc_count._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_log_utc_edc_count._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_log_utc_edc_count._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_query_ea_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_query_utc_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_query_utc_err_status._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_query_utc_err_status._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_query_sq_timeout_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_log_cu_timeout_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wave_read_ind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v9_4_2_enable_watchdog_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v9_4_2_ras_error_inject to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfx_v9_4_2_do_edc_gpr_workarounds(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %wb_ib.i11 = alloca %struct.amdgpu_ib, align 8
  %disp_ib.i = alloca %struct.amdgpu_ib, align 8
  %fence.i = alloca ptr, align 4
  %wb_ib.i = alloca %struct.amdgpu_ib, align 8
  %disp_ibs.i = alloca [3 x %struct.amdgpu_ib], align 8
  %fences.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %amdgpu_ras_is_supported.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.return_crit_edge, label %if.end

amdgpu_ras_is_supported.exit.return_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  %config.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wb_ib.i) #8
  %9 = getelementptr inbounds %struct.amdgpu_ib, ptr %wb_ib.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.amdgpu_ib, ptr %wb_ib.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %disp_ibs.i) #8
  %11 = call ptr @memset(ptr %disp_ibs.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fences.i) #8
  %12 = ptrtoint ptr %fences.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %fences.i, align 4, !annotation !584
  %13 = getelementptr inbounds [3 x ptr], ptr %fences.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %13, align 4, !annotation !584
  %15 = getelementptr inbounds [3 x ptr], ptr %fences.i, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %15, align 4, !annotation !584
  %compute_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38
  %ready.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 0, i32 3, i32 17
  %17 = ptrtoint ptr %ready.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ready.i, align 4, !range !585
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i10 = icmp eq i8 %18, 0
  br i1 %tobool.not.i10, label %if.end4.gfx_v9_4_2_do_sgprs_init.exit_crit_edge, label %lor.lhs.false.i

if.end4.gfx_v9_4_2_do_sgprs_init.exit_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_do_sgprs_init.exit

lor.lhs.false.i:                                  ; preds = %if.end4
  %arrayidx6.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 1
  %ready8.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 1, i32 3, i32 17
  %19 = ptrtoint ptr %ready8.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ready8.i, align 4, !range !585
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool9.not.i = icmp eq i8 %20, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.gfx_v9_4_2_do_sgprs_init.exit_crit_edge, label %if.end.i

lor.lhs.false.i.gfx_v9_4_2_do_sgprs_init.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_do_sgprs_init.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %21 = call ptr @memset(ptr %wb_ib.i, i32 0, i32 24)
  %add.i = mul i32 %8, 2560
  %mul10.i = or i32 %add.i, 4
  %call.i = call i32 @amdgpu_ib_get(ptr noundef %adev, ptr noundef null, i32 noundef %mul10.i, i32 noundef 2, ptr noundef nonnull %wb_ib.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.5, i32 noundef %call.i) #11
  br label %gfx_v9_4_2_do_sgprs_init.exit

if.end13.i:                                       ; preds = %if.end.i
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %10, align 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 %mul10.i)
  %number.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 5
  %27 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %number.i, align 4
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %9, align 8
  %call23.i = call fastcc i32 @gfx_v9_4_2_run_shader(ptr noundef %adev, ptr noundef %compute_ring.i, ptr noundef nonnull %disp_ibs.i, ptr noundef nonnull @sgpr112_init_compute_shader_aldebaran, i32 noundef 532, ptr noundef nonnull @sgpr112_init_regs_aldebaran, i32 noundef %28, i64 noundef %30, i32 noundef 1, ptr noundef nonnull %fences.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end30.i, label %pro_end.thread.i

pro_end.thread.i:                                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.9) #11
  call void @amdgpu_ib_free(ptr noundef %adev, ptr noundef nonnull %wb_ib.i, ptr noundef null) #8
  br label %do.end166.i

if.end30.i:                                       ; preds = %if.end13.i
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %10, align 8
  %arrayidx32.i = getelementptr i32, ptr %34, i32 1
  %35 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %number.i, align 4
  %mul38.i = shl i32 %36, 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end24.i.do.body.i_crit_edge, %if.end30.i
  %loop.0.i = phi i32 [ 0, %if.end30.i ], [ %inc25.i, %if.end24.i.do.body.i_crit_edge ]
  %37 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %config.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp59.not.i = icmp eq i32 %38, 0
  br i1 %cmp59.not.i, label %do.body.i.for.end21.i_crit_edge, label %do.body.i.for.cond1.preheader.i_crit_edge

do.body.i.for.cond1.preheader.i_crit_edge:        ; preds = %do.body.i
  br label %for.cond1.preheader.i

do.body.i.for.end21.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21.i

for.cond1.preheader.i:                            ; preds = %for.inc19.i.for.cond1.preheader.i_crit_edge, %do.body.i.for.cond1.preheader.i_crit_edge
  %offset.062.i = phi i32 [ %59, %for.inc19.i.for.cond1.preheader.i_crit_edge ], [ 0, %do.body.i.for.cond1.preheader.i_crit_edge ]
  %wave_cnt.061.i = phi i32 [ %spec.select.1.i.3, %for.inc19.i.for.cond1.preheader.i_crit_edge ], [ 0, %do.body.i.for.cond1.preheader.i_crit_edge ]
  %se.060.i = phi i32 [ %inc20.i, %for.inc19.i.for.cond1.preheader.i_crit_edge ], [ 0, %do.body.i.for.cond1.preheader.i_crit_edge ]
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.cond4.preheader.i.for.cond4.preheader.i_crit_edge, %for.cond1.preheader.i
  %offset.158.i = phi i32 [ %offset.062.i, %for.cond1.preheader.i ], [ %58, %for.cond4.preheader.i.for.cond4.preheader.i_crit_edge ]
  %wave_cnt.157.i = phi i32 [ %wave_cnt.061.i, %for.cond1.preheader.i ], [ %spec.select.1.i.3, %for.cond4.preheader.i.for.cond4.preheader.i_crit_edge ]
  %cu.056.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc17.i, %for.cond4.preheader.i.for.cond4.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %arrayidx32.i, i32 %offset.158.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp10.i = icmp eq i32 %40, 1
  %inc.i = zext i1 %cmp10.i to i32
  %spec.select.i = add i32 %wave_cnt.157.i, %inc.i
  %inc11.i = or i32 %offset.158.i, 1
  %arrayidx.1.i = getelementptr i32, ptr %arrayidx32.i, i32 %inc11.i
  %41 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp10.1.i = icmp eq i32 %42, 1
  %inc.1.i = zext i1 %cmp10.1.i to i32
  %spec.select.1.i = add i32 %spec.select.i, %inc.1.i
  %43 = add i32 %offset.158.i, 10
  %arrayidx.i.1 = getelementptr i32, ptr %arrayidx32.i, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp10.i.1 = icmp eq i32 %45, 1
  %inc.i.1 = zext i1 %cmp10.i.1 to i32
  %spec.select.i.1 = add i32 %spec.select.1.i, %inc.i.1
  %inc11.i.1 = or i32 %43, 1
  %arrayidx.1.i.1 = getelementptr i32, ptr %arrayidx32.i, i32 %inc11.i.1
  %46 = ptrtoint ptr %arrayidx.1.i.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.1.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp10.1.i.1 = icmp eq i32 %47, 1
  %inc.1.i.1 = zext i1 %cmp10.1.i.1 to i32
  %spec.select.1.i.1 = add i32 %spec.select.i.1, %inc.1.i.1
  %48 = add i32 %offset.158.i, 20
  %arrayidx.i.2 = getelementptr i32, ptr %arrayidx32.i, i32 %48
  %49 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp10.i.2 = icmp eq i32 %50, 1
  %inc.i.2 = zext i1 %cmp10.i.2 to i32
  %spec.select.i.2 = add i32 %spec.select.1.i.1, %inc.i.2
  %inc11.i.2 = or i32 %48, 1
  %arrayidx.1.i.2 = getelementptr i32, ptr %arrayidx32.i, i32 %inc11.i.2
  %51 = ptrtoint ptr %arrayidx.1.i.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.1.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp10.1.i.2 = icmp eq i32 %52, 1
  %inc.1.i.2 = zext i1 %cmp10.1.i.2 to i32
  %spec.select.1.i.2 = add i32 %spec.select.i.2, %inc.1.i.2
  %53 = add i32 %offset.158.i, 30
  %arrayidx.i.3 = getelementptr i32, ptr %arrayidx32.i, i32 %53
  %54 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp10.i.3 = icmp eq i32 %55, 1
  %inc.i.3 = zext i1 %cmp10.i.3 to i32
  %spec.select.i.3 = add i32 %spec.select.1.i.2, %inc.i.3
  %inc11.i.3 = or i32 %53, 1
  %arrayidx.1.i.3 = getelementptr i32, ptr %arrayidx32.i, i32 %inc11.i.3
  %56 = ptrtoint ptr %arrayidx.1.i.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.1.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp10.1.i.3 = icmp eq i32 %57, 1
  %inc.1.i.3 = zext i1 %cmp10.1.i.3 to i32
  %spec.select.1.i.3 = add i32 %spec.select.i.3, %inc.1.i.3
  %58 = add i32 %offset.158.i, 40
  %inc17.i = add nuw nsw i32 %cu.056.i, 1
  %exitcond64.not.i = icmp eq i32 %inc17.i, 16
  br i1 %exitcond64.not.i, label %for.inc19.i, label %for.cond4.preheader.i.for.cond4.preheader.i_crit_edge

for.cond4.preheader.i.for.cond4.preheader.i_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader.i

for.inc19.i:                                      ; preds = %for.cond4.preheader.i
  %59 = add i32 %offset.062.i, 640
  %inc20.i = add nuw i32 %se.060.i, 1
  %exitcond65.not.i = icmp eq i32 %inc20.i, %38
  br i1 %exitcond65.not.i, label %for.inc19.i.for.end21.i_crit_edge, label %for.inc19.i.for.cond1.preheader.i_crit_edge

for.inc19.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i

for.inc19.i.for.end21.i_crit_edge:                ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21.i

for.end21.i:                                      ; preds = %for.inc19.i.for.end21.i_crit_edge, %do.body.i.for.end21.i_crit_edge
  %wave_cnt.0.lcssa.i = phi i32 [ 0, %do.body.i.for.end21.i_crit_edge ], [ %spec.select.1.i.3, %for.inc19.i.for.end21.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wave_cnt.0.lcssa.i, i32 %mul38.i)
  %cmp22.i = icmp eq i32 %wave_cnt.0.lcssa.i, %mul38.i
  br i1 %cmp22.i, label %if.end48.i, label %if.end24.i

if.end24.i:                                       ; preds = %for.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 214748000) #8
  %inc25.i = add nuw nsw i32 %loop.0.i, 1
  %exitcond.not = icmp eq i32 %inc25.i, 2000
  br i1 %exitcond.not, label %do.end44.i, label %if.end24.i.do.body.i_crit_edge

if.end24.i.do.body.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end44.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.47, i32 noundef %wave_cnt.0.lcssa.i, i32 noundef %mul38.i) #11
  call fastcc void @gfx_v9_4_2_log_wave_assignment(ptr noundef %adev, ptr noundef %arrayidx32.i) #8
  %63 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.12) #11
  %65 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %10, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -559038801, ptr %66, align 4
  br label %pro_end.i

if.end48.i:                                       ; preds = %for.end21.i
  %arrayidx52.i = getelementptr inbounds [3 x %struct.amdgpu_ib], ptr %disp_ibs.i, i32 0, i32 1
  %68 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %number.i, align 4
  %mul56.i = shl i32 %69, 1
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %9, align 8
  %call60.i = call fastcc i32 @gfx_v9_4_2_run_shader(ptr noundef %adev, ptr noundef %arrayidx6.i, ptr noundef %arrayidx52.i, ptr noundef nonnull @sgpr96_init_compute_shader_aldebaran, i32 noundef 484, ptr noundef nonnull @sgpr96_init_regs_aldebaran, i32 noundef %mul56.i, i64 noundef %71, i32 noundef 5, ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end67.i, label %do.end65.i

do.end65.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.15) #11
  br label %pro_end.i

if.end67.i:                                       ; preds = %if.end48.i
  %74 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %10, align 8
  %arrayidx69.i = getelementptr i32, ptr %75, i32 1
  %76 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %number.i, align 4
  %mul75.i = mul i32 %77, 24
  %call76.i = call fastcc i32 @gfx_v9_4_2_wait_for_waves_assigned(ptr noundef %adev, ptr noundef %arrayidx69.i, i32 noundef 252, i32 noundef 5, i32 noundef %mul75.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.end85.i, label %do.end81.i

do.end81.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.18) #11
  %80 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %10, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -559038801, ptr %81, align 4
  br label %disp1_failed.i

if.end85.i:                                       ; preds = %if.end67.i
  %83 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %10, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -559038801, ptr %84, align 4
  %86 = ptrtoint ptr %fences.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fences.i, align 4
  %call.i.i = call i32 @dma_fence_wait_timeout(ptr noundef %87, i1 noundef zeroext false, i32 noundef 2147483647) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool90.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool90.not.i, label %if.end96.i, label %do.end94.i

do.end94.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.21) #11
  br label %disp1_failed.i

if.end96.i:                                       ; preds = %if.end85.i
  %90 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %13, align 4
  %call.i1.i = call i32 @dma_fence_wait_timeout(ptr noundef %91, i1 noundef zeroext false, i32 noundef 2147483647) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1.i)
  %tobool99.not.i = icmp sgt i32 %call.i1.i, -1
  br i1 %tobool99.not.i, label %if.end105.i, label %do.end103.i

do.end103.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.24) #11
  br label %disp1_failed.i

if.end105.i:                                      ; preds = %if.end96.i
  %94 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %10, align 8
  %96 = call ptr @memset(ptr %95, i32 0, i32 %mul10.i)
  %arrayidx112.i = getelementptr inbounds [3 x %struct.amdgpu_ib], ptr %disp_ibs.i, i32 0, i32 2
  %97 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %number.i, align 4
  %99 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %9, align 8
  %call119.i = call fastcc i32 @gfx_v9_4_2_run_shader(ptr noundef %adev, ptr noundef %compute_ring.i, ptr noundef %arrayidx112.i, ptr noundef nonnull @sgpr64_init_compute_shader_aldebaran, i32 noundef 356, ptr noundef nonnull @sgpr64_init_regs_aldebaran, i32 noundef %98, i64 noundef %100, i32 noundef 10, ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %tobool120.not.i = icmp eq i32 %call119.i, 0
  br i1 %tobool120.not.i, label %if.end126.i, label %do.end124.i

do.end124.i:                                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.27) #11
  br label %disp1_failed.i

if.end126.i:                                      ; preds = %if.end105.i
  %103 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %10, align 8
  %arrayidx128.i = getelementptr i32, ptr %104, i32 1
  %105 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %number.i, align 4
  %mul134.i = shl i32 %106, 4
  %call135.i = call fastcc i32 @gfx_v9_4_2_wait_for_waves_assigned(ptr noundef %adev, ptr noundef %arrayidx128.i, i32 noundef 15, i32 noundef 10, i32 noundef %mul134.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135.i)
  %tobool136.not.i = icmp eq i32 %call135.i, 0
  br i1 %tobool136.not.i, label %if.end144.i, label %do.end140.i

do.end140.i:                                      ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.30) #11
  %109 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %10, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -559038801, ptr %110, align 4
  br label %disp2_failed.i

if.end144.i:                                      ; preds = %if.end126.i
  %112 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %10, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -559038801, ptr %113, align 4
  %115 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %15, align 4
  %call.i2.i = call i32 @dma_fence_wait_timeout(ptr noundef %116, i1 noundef zeroext false, i32 noundef 2147483647) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i2.i)
  %tobool149.not.i = icmp sgt i32 %call.i2.i, -1
  br i1 %tobool149.not.i, label %if.end144.i.disp2_failed.i_crit_edge, label %do.end153.i

if.end144.i.disp2_failed.i_crit_edge:             ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disp2_failed.i

do.end153.i:                                      ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.33) #11
  br label %disp2_failed.i

disp2_failed.i:                                   ; preds = %do.end153.i, %if.end144.i.disp2_failed.i_crit_edge, %do.end140.i
  %r.0.i = phi i32 [ %call135.i, %do.end140.i ], [ %call.i2.i, %do.end153.i ], [ 0, %if.end144.i.disp2_failed.i_crit_edge ]
  call void @amdgpu_ib_free(ptr noundef %adev, ptr noundef %arrayidx112.i, ptr noundef null) #8
  %119 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %15, align 4
  %tobool.not.i38 = icmp eq ptr %120, null
  br i1 %tobool.not.i38, label %disp2_failed.i.disp1_failed.i_crit_edge, label %if.then.i43

disp2_failed.i.disp1_failed.i_crit_edge:          ; preds = %disp2_failed.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disp1_failed.i

if.then.i43:                                      ; preds = %disp2_failed.i
  %refcount.i39 = getelementptr inbounds %struct.dma_fence, ptr %120, i32 0, i32 6
  %call.i.i.i.i.i.i.i40 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i39, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !586
  call void @llvm.prefetch.p0(ptr %refcount.i39, i32 1, i32 3, i32 1) #8
  %121 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i39, ptr %refcount.i39, i32 1, ptr elementtype(i32) %refcount.i39) #8, !srcloc !587
  %asmresult.i.i.i.i.i.i.i.i41 = extractvalue { i32, i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i41)
  %cmp.i.i.i.i.i42 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i41, 1
  br i1 %cmp.i.i.i.i.i42, label %if.then.i.i47, label %if.end5.i.i.i.i.i45

if.end5.i.i.i.i.i45:                              ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i41)
  %.not.i.i.i.i.i44 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i41, 0
  br i1 %.not.i.i.i.i.i44, label %if.end5.i.i.i.i.i45.disp1_failed.i_crit_edge, label %if.then10.i.i.i.i.i46, !prof !588

if.end5.i.i.i.i.i45.disp1_failed.i_crit_edge:     ; preds = %if.end5.i.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %disp1_failed.i

if.then10.i.i.i.i.i46:                            ; preds = %if.end5.i.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i39, i32 noundef 3) #8
  br label %disp1_failed.i

if.then.i.i47:                                    ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !589
  call void @dma_fence_release(ptr noundef %refcount.i39) #8
  br label %disp1_failed.i

disp1_failed.i:                                   ; preds = %if.then.i.i47, %if.then10.i.i.i.i.i46, %if.end5.i.i.i.i.i45.disp1_failed.i_crit_edge, %disp2_failed.i.disp1_failed.i_crit_edge, %do.end124.i, %do.end103.i, %do.end94.i, %do.end81.i
  %r.1.i = phi i32 [ %call76.i, %do.end81.i ], [ %call.i.i, %do.end94.i ], [ %call.i1.i, %do.end103.i ], [ %call119.i, %do.end124.i ], [ %r.0.i, %disp2_failed.i.disp1_failed.i_crit_edge ], [ %r.0.i, %if.end5.i.i.i.i.i45.disp1_failed.i_crit_edge ], [ %r.0.i, %if.then10.i.i.i.i.i46 ], [ %r.0.i, %if.then.i.i47 ]
  call void @amdgpu_ib_free(ptr noundef %adev, ptr noundef %arrayidx52.i, ptr noundef null) #8
  %122 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %13, align 4
  %tobool.not.i26 = icmp eq ptr %123, null
  br i1 %tobool.not.i26, label %disp1_failed.i.pro_end.i_crit_edge, label %if.then.i31

disp1_failed.i.pro_end.i_crit_edge:               ; preds = %disp1_failed.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pro_end.i

if.then.i31:                                      ; preds = %disp1_failed.i
  %refcount.i27 = getelementptr inbounds %struct.dma_fence, ptr %123, i32 0, i32 6
  %call.i.i.i.i.i.i.i28 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i27, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !586
  call void @llvm.prefetch.p0(ptr %refcount.i27, i32 1, i32 3, i32 1) #8
  %124 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i27, ptr %refcount.i27, i32 1, ptr elementtype(i32) %refcount.i27) #8, !srcloc !587
  %asmresult.i.i.i.i.i.i.i.i29 = extractvalue { i32, i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i29)
  %cmp.i.i.i.i.i30 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i29, 1
  br i1 %cmp.i.i.i.i.i30, label %if.then.i.i35, label %if.end5.i.i.i.i.i33

if.end5.i.i.i.i.i33:                              ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i29)
  %.not.i.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i29, 0
  br i1 %.not.i.i.i.i.i32, label %if.end5.i.i.i.i.i33.pro_end.i_crit_edge, label %if.then10.i.i.i.i.i34, !prof !588

if.end5.i.i.i.i.i33.pro_end.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %pro_end.i

if.then10.i.i.i.i.i34:                            ; preds = %if.end5.i.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i27, i32 noundef 3) #8
  br label %pro_end.i

if.then.i.i35:                                    ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !589
  call void @dma_fence_release(ptr noundef %refcount.i27) #8
  br label %pro_end.i

pro_end.i:                                        ; preds = %if.then.i.i35, %if.then10.i.i.i.i.i34, %if.end5.i.i.i.i.i33.pro_end.i_crit_edge, %disp1_failed.i.pro_end.i_crit_edge, %do.end65.i, %do.end44.i
  %r.2.i = phi i32 [ 1, %do.end44.i ], [ 1, %do.end65.i ], [ %r.1.i, %disp1_failed.i.pro_end.i_crit_edge ], [ %r.1.i, %if.end5.i.i.i.i.i33.pro_end.i_crit_edge ], [ %r.1.i, %if.then10.i.i.i.i.i34 ], [ %r.1.i, %if.then.i.i35 ]
  call void @amdgpu_ib_free(ptr noundef %adev, ptr noundef nonnull %disp_ibs.i, ptr noundef null) #8
  %125 = ptrtoint ptr %fences.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %fences.i, align 4
  %tobool.not.i24 = icmp eq ptr %126, null
  br i1 %tobool.not.i24, label %pro_end.i.dma_fence_put.exit_crit_edge, label %if.then.i

pro_end.i.dma_fence_put.exit_crit_edge:           ; preds = %pro_end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %pro_end.i
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %126, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !586
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %127 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !587
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %127, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !588

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !589
  call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %pro_end.i.dma_fence_put.exit_crit_edge
  call void @amdgpu_ib_free(ptr noundef %adev, ptr noundef nonnull %wb_ib.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.2.i)
  %tobool162.not.i = icmp eq i32 %r.2.i, 0
  br i1 %tobool162.not.i, label %do.end170.i, label %dma_fence_put.exit.do.end166.i_crit_edge

dma_fence_put.exit.do.end166.i_crit_edge:         ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end166.i

do.end166.i:                                      ; preds = %dma_fence_put.exit.do.end166.i_crit_edge, %pro_end.thread.i
  %128 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %129, ptr noundef nonnull @.str.36) #11
  br label %gfx_v9_4_2_do_sgprs_init.exit

do.end170.i:                                      ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %131, ptr noundef nonnull @.str.40) #11
  br label %gfx_v9_4_2_do_sgprs_init.exit

gfx_v9_4_2_do_sgprs_init.exit:                    ; preds = %do.end170.i, %do.end166.i, %do.end.i, %lor.lhs.false.i.gfx_v9_4_2_do_sgprs_init.exit_crit_edge, %if.end4.gfx_v9_4_2_do_sgprs_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fences.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %disp_ibs.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wb_ib.i) #8
  %132 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %config.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wb_ib.i11) #8
  %134 = getelementptr inbounds %struct.amdgpu_ib, ptr %wb_ib.i11, i32 0, i32 2
  %135 = getelementptr inbounds %struct.amdgpu_ib, ptr %wb_ib.i11, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %disp_ib.i) #8
  %136 = call ptr @memset(ptr %disp_ib.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence.i) #8
  %137 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence.i, align 4, !annotation !584
  %138 = ptrtoint ptr %ready.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %ready.i, align 4, !range !585
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i15 = icmp eq i8 %139, 0
  br i1 %tobool.not.i15, label %gfx_v9_4_2_do_sgprs_init.exit.gfx_v9_4_2_do_vgprs_init.exit_crit_edge, label %if.end.i18

gfx_v9_4_2_do_sgprs_init.exit.gfx_v9_4_2_do_vgprs_init.exit_crit_edge: ; preds = %gfx_v9_4_2_do_sgprs_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_do_vgprs_init.exit

if.end.i18:                                       ; preds = %gfx_v9_4_2_do_sgprs_init.exit
  %140 = call ptr @memset(ptr %wb_ib.i11, i32 0, i32 24)
  %add.i16 = mul i32 %133, 2560
  %mul4.i = or i32 %add.i16, 4
  %call.i17 = call i32 @amdgpu_ib_get(ptr noundef %adev, ptr noundef null, i32 noundef %mul4.i, i32 noundef 2, ptr noundef nonnull %wb_ib.i11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool5.not.i = icmp eq i32 %call.i17, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end.i19

do.end.i19:                                       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.57, i32 noundef %call.i17) #11
  br label %gfx_v9_4_2_do_vgprs_init.exit

if.end7.i:                                        ; preds = %if.end.i18
  %143 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %135, align 8
  %145 = call ptr @memset(ptr %144, i32 0, i32 %mul4.i)
  %number.i20 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 5
  %146 = ptrtoint ptr %number.i20 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %number.i20, align 4
  %148 = ptrtoint ptr %134 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %134, align 8
  %call14.i = call fastcc i32 @gfx_v9_4_2_run_shader(ptr noundef %adev, ptr noundef %compute_ring.i, ptr noundef nonnull %disp_ib.i, ptr noundef nonnull @vgpr_init_compute_shader_aldebaran, i32 noundef 2260, ptr noundef nonnull @vgpr_init_regs_aldebaran, i32 noundef %147, i64 noundef %149, i32 noundef 10, ptr noundef nonnull %fence.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end21.i, label %pro_end.thread.i21

pro_end.thread.i21:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.60) #11
  br label %do.end48.i

if.end21.i:                                       ; preds = %if.end7.i
  %152 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %fence.i, align 4
  %call.i.i22 = call i32 @dma_fence_wait_timeout(ptr noundef %153, i1 noundef zeroext false, i32 noundef 2147483647) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i22)
  %tobool23.not.i = icmp sgt i32 %call.i.i22, -1
  br i1 %tobool23.not.i, label %if.end29.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end21.i
  %154 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.63) #11
  call void @amdgpu_ib_free(ptr noundef %adev, ptr noundef nonnull %disp_ib.i, ptr noundef null) #8
  %156 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %fence.i, align 4
  %tobool.not.i114 = icmp eq ptr %157, null
  br i1 %tobool.not.i114, label %do.end27.i.do.end48.i_crit_edge, label %if.then.i119

do.end27.i.do.end48.i_crit_edge:                  ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

if.then.i119:                                     ; preds = %do.end27.i
  %refcount.i115 = getelementptr inbounds %struct.dma_fence, ptr %157, i32 0, i32 6
  %call.i.i.i.i.i.i.i116 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i115, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !586
  call void @llvm.prefetch.p0(ptr %refcount.i115, i32 1, i32 3, i32 1) #8
  %158 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i115, ptr %refcount.i115, i32 1, ptr elementtype(i32) %refcount.i115) #8, !srcloc !587
  %asmresult.i.i.i.i.i.i.i.i117 = extractvalue { i32, i32, i32 } %158, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i117)
  %cmp.i.i.i.i.i118 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i117, 1
  br i1 %cmp.i.i.i.i.i118, label %if.then.i.i123, label %if.end5.i.i.i.i.i121

if.end5.i.i.i.i.i121:                             ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i117)
  %.not.i.i.i.i.i120 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i117, 0
  br i1 %.not.i.i.i.i.i120, label %if.end5.i.i.i.i.i121.do.end48.i_crit_edge, label %if.then10.i.i.i.i.i122, !prof !588

if.end5.i.i.i.i.i121.do.end48.i_crit_edge:        ; preds = %if.end5.i.i.i.i.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

if.then10.i.i.i.i.i122:                           ; preds = %if.end5.i.i.i.i.i121
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i115, i32 noundef 3) #8
  br label %do.end48.i

if.then.i.i123:                                   ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !589
  call void @dma_fence_release(ptr noundef %refcount.i115) #8
  br label %do.end48.i

if.end29.i:                                       ; preds = %if.end21.i
  %159 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %135, align 8
  %arrayidx31.i = getelementptr i32, ptr %160, i32 1
  %161 = ptrtoint ptr %number.i20 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %number.i20, align 4
  %mul35.i = shl i32 %162, 2
  %163 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %config.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp59.not.i78 = icmp eq i32 %164, 0
  br i1 %cmp59.not.i78, label %if.end29.i.for.end21.i107_crit_edge, label %if.end29.i.for.cond1.preheader.i83_crit_edge

if.end29.i.for.cond1.preheader.i83_crit_edge:     ; preds = %if.end29.i
  br label %for.cond1.preheader.i83

if.end29.i.for.end21.i107_crit_edge:              ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21.i107

for.cond1.preheader.i83:                          ; preds = %for.inc19.i104.for.cond1.preheader.i83_crit_edge, %if.end29.i.for.cond1.preheader.i83_crit_edge
  %offset.062.i80 = phi i32 [ %177, %for.inc19.i104.for.cond1.preheader.i83_crit_edge ], [ 0, %if.end29.i.for.cond1.preheader.i83_crit_edge ]
  %wave_cnt.061.i81 = phi i32 [ %spec.select.i95.3, %for.inc19.i104.for.cond1.preheader.i83_crit_edge ], [ 0, %if.end29.i.for.cond1.preheader.i83_crit_edge ]
  %se.060.i82 = phi i32 [ %inc20.i102, %for.inc19.i104.for.cond1.preheader.i83_crit_edge ], [ 0, %if.end29.i.for.cond1.preheader.i83_crit_edge ]
  br label %for.cond4.preheader.i87

for.cond4.preheader.i87:                          ; preds = %for.cond4.preheader.i87.for.cond4.preheader.i87_crit_edge, %for.cond1.preheader.i83
  %offset.158.i84 = phi i32 [ %offset.062.i80, %for.cond1.preheader.i83 ], [ %176, %for.cond4.preheader.i87.for.cond4.preheader.i87_crit_edge ]
  %wave_cnt.157.i85 = phi i32 [ %wave_cnt.061.i81, %for.cond1.preheader.i83 ], [ %spec.select.i95.3, %for.cond4.preheader.i87.for.cond4.preheader.i87_crit_edge ]
  %cu.056.i86 = phi i32 [ 0, %for.cond1.preheader.i83 ], [ %inc17.i99, %for.cond4.preheader.i87.for.cond4.preheader.i87_crit_edge ]
  %arrayidx.i92 = getelementptr i32, ptr %arrayidx31.i, i32 %offset.158.i84
  %165 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %166)
  %cmp10.i93 = icmp eq i32 %166, 10
  %inc.i94 = zext i1 %cmp10.i93 to i32
  %spec.select.i95 = add i32 %wave_cnt.157.i85, %inc.i94
  %167 = add i32 %offset.158.i84, 10
  %arrayidx.i92.1 = getelementptr i32, ptr %arrayidx31.i, i32 %167
  %168 = ptrtoint ptr %arrayidx.i92.1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i92.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %169)
  %cmp10.i93.1 = icmp eq i32 %169, 10
  %inc.i94.1 = zext i1 %cmp10.i93.1 to i32
  %spec.select.i95.1 = add i32 %spec.select.i95, %inc.i94.1
  %170 = add i32 %offset.158.i84, 20
  %arrayidx.i92.2 = getelementptr i32, ptr %arrayidx31.i, i32 %170
  %171 = ptrtoint ptr %arrayidx.i92.2 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.i92.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %172)
  %cmp10.i93.2 = icmp eq i32 %172, 10
  %inc.i94.2 = zext i1 %cmp10.i93.2 to i32
  %spec.select.i95.2 = add i32 %spec.select.i95.1, %inc.i94.2
  %173 = add i32 %offset.158.i84, 30
  %arrayidx.i92.3 = getelementptr i32, ptr %arrayidx31.i, i32 %173
  %174 = ptrtoint ptr %arrayidx.i92.3 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx.i92.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %175)
  %cmp10.i93.3 = icmp eq i32 %175, 10
  %inc.i94.3 = zext i1 %cmp10.i93.3 to i32
  %spec.select.i95.3 = add i32 %spec.select.i95.2, %inc.i94.3
  %176 = add i32 %offset.158.i84, 40
  %inc17.i99 = add nuw nsw i32 %cu.056.i86, 1
  %exitcond64.not.i100 = icmp eq i32 %inc17.i99, 16
  br i1 %exitcond64.not.i100, label %for.inc19.i104, label %for.cond4.preheader.i87.for.cond4.preheader.i87_crit_edge

for.cond4.preheader.i87.for.cond4.preheader.i87_crit_edge: ; preds = %for.cond4.preheader.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader.i87

for.inc19.i104:                                   ; preds = %for.cond4.preheader.i87
  %177 = add i32 %offset.062.i80, 640
  %inc20.i102 = add nuw i32 %se.060.i82, 1
  %exitcond65.not.i103 = icmp eq i32 %inc20.i102, %164
  br i1 %exitcond65.not.i103, label %for.inc19.i104.for.end21.i107_crit_edge, label %for.inc19.i104.for.cond1.preheader.i83_crit_edge

for.inc19.i104.for.cond1.preheader.i83_crit_edge: ; preds = %for.inc19.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i83

for.inc19.i104.for.end21.i107_crit_edge:          ; preds = %for.inc19.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21.i107

for.end21.i107:                                   ; preds = %for.inc19.i104.for.end21.i107_crit_edge, %if.end29.i.for.end21.i107_crit_edge
  %wave_cnt.0.lcssa.i105 = phi i32 [ 0, %if.end29.i.for.end21.i107_crit_edge ], [ %spec.select.i95.3, %for.inc19.i104.for.end21.i107_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wave_cnt.0.lcssa.i105, i32 %mul35.i)
  %cmp22.i106 = icmp eq i32 %wave_cnt.0.lcssa.i105, %mul35.i
  br i1 %cmp22.i106, label %pro_end.i23, label %do.end41.i

do.end41.i:                                       ; preds = %for.end21.i107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %178(i32 noundef 214748000) #8
  %179 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.47, i32 noundef %wave_cnt.0.lcssa.i105, i32 noundef %mul35.i) #11
  call fastcc void @gfx_v9_4_2_log_wave_assignment(ptr noundef %adev, ptr noundef %arrayidx31.i) #8
  %181 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull @.str.66) #11
  call void @amdgpu_ib_free(ptr noundef %adev, ptr noundef nonnull %disp_ib.i, ptr noundef null) #8
  %183 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %fence.i, align 4
  %tobool.not.i64 = icmp eq ptr %184, null
  br i1 %tobool.not.i64, label %do.end41.i.do.end48.i_crit_edge, label %if.then.i69

do.end41.i.do.end48.i_crit_edge:                  ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

if.then.i69:                                      ; preds = %do.end41.i
  %refcount.i65 = getelementptr inbounds %struct.dma_fence, ptr %184, i32 0, i32 6
  %call.i.i.i.i.i.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i65, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !586
  call void @llvm.prefetch.p0(ptr %refcount.i65, i32 1, i32 3, i32 1) #8
  %185 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i65, ptr %refcount.i65, i32 1, ptr elementtype(i32) %refcount.i65) #8, !srcloc !587
  %asmresult.i.i.i.i.i.i.i.i67 = extractvalue { i32, i32, i32 } %185, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i67)
  %cmp.i.i.i.i.i68 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i67, 1
  br i1 %cmp.i.i.i.i.i68, label %if.then.i.i73, label %if.end5.i.i.i.i.i71

if.end5.i.i.i.i.i71:                              ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i67)
  %.not.i.i.i.i.i70 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i67, 0
  br i1 %.not.i.i.i.i.i70, label %if.end5.i.i.i.i.i71.do.end48.i_crit_edge, label %if.then10.i.i.i.i.i72, !prof !588

if.end5.i.i.i.i.i71.do.end48.i_crit_edge:         ; preds = %if.end5.i.i.i.i.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

if.then10.i.i.i.i.i72:                            ; preds = %if.end5.i.i.i.i.i71
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i65, i32 noundef 3) #8
  br label %do.end48.i

if.then.i.i73:                                    ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !589
  call void @dma_fence_release(ptr noundef %refcount.i65) #8
  br label %do.end48.i

pro_end.i23:                                      ; preds = %for.end21.i107
  call void @amdgpu_ib_free(ptr noundef %adev, ptr noundef nonnull %disp_ib.i, ptr noundef null) #8
  %186 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %fence.i, align 4
  %tobool.not.i52 = icmp eq ptr %187, null
  br i1 %tobool.not.i52, label %pro_end.i23.dma_fence_put.exit63_crit_edge, label %if.then.i57

pro_end.i23.dma_fence_put.exit63_crit_edge:       ; preds = %pro_end.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit63

if.then.i57:                                      ; preds = %pro_end.i23
  %refcount.i53 = getelementptr inbounds %struct.dma_fence, ptr %187, i32 0, i32 6
  %call.i.i.i.i.i.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i53, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !586
  call void @llvm.prefetch.p0(ptr %refcount.i53, i32 1, i32 3, i32 1) #8
  %188 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i53, ptr %refcount.i53, i32 1, ptr elementtype(i32) %refcount.i53) #8, !srcloc !587
  %asmresult.i.i.i.i.i.i.i.i55 = extractvalue { i32, i32, i32 } %188, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i55)
  %cmp.i.i.i.i.i56 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i55, 1
  br i1 %cmp.i.i.i.i.i56, label %if.then.i.i61, label %if.end5.i.i.i.i.i59

if.end5.i.i.i.i.i59:                              ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i55)
  %.not.i.i.i.i.i58 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i55, 0
  br i1 %.not.i.i.i.i.i58, label %if.end5.i.i.i.i.i59.dma_fence_put.exit63_crit_edge, label %if.then10.i.i.i.i.i60, !prof !588

if.end5.i.i.i.i.i59.dma_fence_put.exit63_crit_edge: ; preds = %if.end5.i.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit63

if.then10.i.i.i.i.i60:                            ; preds = %if.end5.i.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i53, i32 noundef 3) #8
  br label %dma_fence_put.exit63

if.then.i.i61:                                    ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !589
  call void @dma_fence_release(ptr noundef %refcount.i53) #8
  br label %dma_fence_put.exit63

dma_fence_put.exit63:                             ; preds = %if.then.i.i61, %if.then10.i.i.i.i.i60, %if.end5.i.i.i.i.i59.dma_fence_put.exit63_crit_edge, %pro_end.i23.dma_fence_put.exit63_crit_edge
  call void @amdgpu_ib_free(ptr noundef %adev, ptr noundef nonnull %wb_ib.i11, ptr noundef null) #8
  %189 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %190, ptr noundef nonnull @.str.72) #11
  br label %gfx_v9_4_2_do_vgprs_init.exit

do.end48.i:                                       ; preds = %if.then.i.i73, %if.then10.i.i.i.i.i72, %if.end5.i.i.i.i.i71.do.end48.i_crit_edge, %do.end41.i.do.end48.i_crit_edge, %if.then.i.i123, %if.then10.i.i.i.i.i122, %if.end5.i.i.i.i.i121.do.end48.i_crit_edge, %do.end27.i.do.end48.i_crit_edge, %pro_end.thread.i21
  call void @amdgpu_ib_free(ptr noundef %adev, ptr noundef nonnull %wb_ib.i11, ptr noundef null) #8
  %191 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %192, ptr noundef nonnull @.str.69) #11
  br label %gfx_v9_4_2_do_vgprs_init.exit

gfx_v9_4_2_do_vgprs_init.exit:                    ; preds = %do.end48.i, %dma_fence_put.exit63, %do.end.i19, %gfx_v9_4_2_do_sgprs_init.exit.gfx_v9_4_2_do_vgprs_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %disp_ib.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wb_ib.i11) #8
  br label %return

return:                                           ; preds = %gfx_v9_4_2_do_vgprs_init.exit, %if.end.return_crit_edge, %amdgpu_ras_is_supported.exit.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfx_v9_4_2_init_golden_registers(ptr noundef %adev, i32 noundef %die_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @soc15_program_register_sequence(ptr noundef %adev, ptr noundef nonnull @golden_settings_gc_9_4_2_alde, i32 noundef 4) #8
  %0 = zext i32 %die_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %die_id, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @soc15_program_register_sequence(ptr noundef %adev, ptr noundef nonnull @golden_settings_gc_9_4_2_alde_die_0, i32 noundef 6) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @soc15_program_register_sequence(ptr noundef %adev, ptr noundef nonnull @golden_settings_gc_9_4_2_alde_die_1, i32 noundef 6) #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %die_id) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc15_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfx_v9_4_2_debug_trap_config_init(ptr noundef %adev, i32 noundef %first_vmid, i32 noundef %last_vmid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %srbm_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %first_vmid, i32 %last_vmid)
  %cmp18 = icmp ult i32 %first_vmid, %last_vmid
  br i1 %cmp18, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ %first_vmid, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @soc15_grbm_select(ptr noundef %adev, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.019) #8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 4563
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef 8, i32 noundef 0) #8
  %inc = add i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %last_vmid
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @soc15_grbm_select(ptr noundef %adev, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %srbm_mutex) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc15_grbm_select(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfx_v9_4_2_set_power_brake_sequence(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gfx_v9_0_select_se_sh(ptr noundef %adev, i32 noundef -1, i32 noundef -1, i32 noundef -1) #8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and1 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 4763
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef 8, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add18 = add i32 %13, 4763
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add18, i32 noundef 8, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and23 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cond.end.cond.false46_crit_edge, label %land.lhs.true25

cond.end.cond.false46_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false46

land.lhs.true25:                                  ; preds = %cond.end
  %funcs28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false46_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false46_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false46

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_wreg34 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg34, align 4
  %tobool35.not = icmp eq ptr %19, null
  br i1 %tobool35.not, label %land.lhs.true30.cond.false46_crit_edge, label %cond.true36

land.lhs.true30.cond.false46_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false46

cond.true36:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx42, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add45 = add i32 %23, 4754
  tail call void %19(ptr noundef %adev, i32 noundef %add45, i32 noundef 1048576, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end52

cond.false46:                                     ; preds = %land.lhs.true30.cond.false46_crit_edge, %land.lhs.true25.cond.false46_crit_edge, %cond.end.cond.false46_crit_edge
  %arrayidx48 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx48, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add51 = add i32 %27, 4754
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add51, i32 noundef 1048576, i32 noundef 0) #8
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false46, %cond.true36
  %28 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt, align 8
  %and55 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %cond.end52.cond.false78_crit_edge, label %land.lhs.true57

cond.end52.cond.false78_crit_edge:                ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false78

land.lhs.true57:                                  ; preds = %cond.end52
  %funcs60 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %30 = ptrtoint ptr %funcs60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs60, align 4
  %tobool61.not = icmp eq ptr %31, null
  br i1 %tobool61.not, label %land.lhs.true57.cond.false78_crit_edge, label %land.lhs.true62

land.lhs.true57.cond.false78_crit_edge:           ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false78

land.lhs.true62:                                  ; preds = %land.lhs.true57
  %sriov_wreg66 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %sriov_wreg66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_wreg66, align 4
  %tobool67.not = icmp eq ptr %33, null
  br i1 %tobool67.not, label %land.lhs.true62.cond.false78_crit_edge, label %cond.true68

land.lhs.true62.cond.false78_crit_edge:           ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false78

cond.true68:                                      ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx74 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %34 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx74, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add77 = add i32 %37, 4764
  tail call void %33(ptr noundef %adev, i32 noundef %add77, i32 noundef 323, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end84

cond.false78:                                     ; preds = %land.lhs.true62.cond.false78_crit_edge, %land.lhs.true57.cond.false78_crit_edge, %cond.end52.cond.false78_crit_edge
  %arrayidx80 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %38 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx80, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add83 = add i32 %41, 4764
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add83, i32 noundef 323, i32 noundef 0) #8
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false78, %cond.true68
  %42 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %virt, align 8
  %and89 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %cond.end84.cond.false112_crit_edge, label %land.lhs.true91

cond.end84.cond.false112_crit_edge:               ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false112

land.lhs.true91:                                  ; preds = %cond.end84
  %funcs94 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %44 = ptrtoint ptr %funcs94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs94, align 4
  %tobool95.not = icmp eq ptr %45, null
  br i1 %tobool95.not, label %land.lhs.true91.cond.false112_crit_edge, label %land.lhs.true96

land.lhs.true91.cond.false112_crit_edge:          ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false112

land.lhs.true96:                                  ; preds = %land.lhs.true91
  %sriov_wreg100 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %sriov_wreg100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sriov_wreg100, align 4
  %tobool101.not = icmp eq ptr %47, null
  br i1 %tobool101.not, label %land.lhs.true96.cond.false112_crit_edge, label %cond.true102

land.lhs.true96.cond.false112_crit_edge:          ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false112

cond.true102:                                     ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx108 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %48 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx108, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add111 = add i32 %51, 4765
  tail call void %47(ptr noundef %adev, i32 noundef %add111, i32 noundef 589824, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end118

cond.false112:                                    ; preds = %land.lhs.true96.cond.false112_crit_edge, %land.lhs.true91.cond.false112_crit_edge, %cond.end84.cond.false112_crit_edge
  %arrayidx114 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %52 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx114, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add117 = add i32 %55, 4765
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add117, i32 noundef 589824, i32 noundef 0) #8
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false112, %cond.true102
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfx_v9_0_select_se_sh(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gfx_ras_late_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_ras_fini(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v9_4_2_ras_error_inject(ptr noundef %adev, ptr nocapture noundef readonly %inject_if) #0 align 64 {
entry:
  %block_info = alloca %struct.ta_ras_trigger_error_input, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_info) #8
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  %7 = ptrtoint ptr %inject_if to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inject_if, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %8)
  %9 = icmp ult i32 %8, 15
  br i1 %9, label %if.end.amdgpu_ras_block_to_ta.exit_crit_edge, label %land.end.i

if.end.amdgpu_ras_block_to_ta.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ras_block_to_ta.exit

land.end.i:                                       ; preds = %if.end
  %.b50.i = load i1, ptr @amdgpu_ras_block_to_ta.__already_done, align 1
  br i1 %.b50.i, label %land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge, label %if.then.i, !prof !588

land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ras_block_to_ta.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @amdgpu_ras_block_to_ta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 573, i32 noundef 9, ptr noundef nonnull @.str.75, i32 noundef %8) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i23

land.end.i23:                                     ; preds = %switch.hole_check.land.end.i23_crit_edge, %amdgpu_ras_block_to_ta.exit.land.end.i23_crit_edge
  %.b40.i = load i1, ptr @amdgpu_ras_error_to_ta.__already_done, align 1
  br i1 %.b40.i, label %land.end.i23.amdgpu_ras_error_to_ta.exit_crit_edge, label %if.then.i24, !prof !588

land.end.i23.amdgpu_ras_error_to_ta.exit_crit_edge: ; preds = %land.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ras_error_to_ta.exit

if.then.i24:                                      ; preds = %land.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @amdgpu_ras_error_to_ta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 592, i32 noundef 9, ptr noundef nonnull @.str.76, i32 noundef %15) #8
  br label %amdgpu_ras_error_to_ta.exit

switch.hole_check:                                ; preds = %amdgpu_ras_block_to_ta.exit
  %switch.maskindex = trunc i32 %15 to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %17 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %switch.lobit.not = icmp eq i16 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i23_crit_edge, label %switch.lookup

switch.hole_check.land.end.i23_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i23

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.gfx_v9_4_2_ras_error_inject, i32 0, i32 %15
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
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #8
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %call8 = call i32 @psp_ras_trigger_error(ptr noundef %psp, ptr noundef nonnull %block_info) #8
  call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_ras_error_to_ta.exit, %amdgpu_ras_is_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %amdgpu_ras_error_to_ta.exit ], [ -22, %amdgpu_ras_is_supported.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v9_4_2_query_ras_error_count(ptr noundef %adev, ptr nocapture noundef %ras_error_status) #0 align 64 {
entry:
  %sec_count = alloca i32, align 4
  %ded_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sec_count) #8
  %0 = ptrtoint ptr %sec_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sec_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ded_count) #8
  %1 = ptrtoint ptr %ded_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ded_count, align 4
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %2 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %amdgpu_ras_is_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ras_error_status, align 4
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 1
  %8 = ptrtoint ptr %ce_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ce_count, align 4
  call fastcc void @gfx_v9_4_2_query_sram_edc_count(ptr noundef %adev, ptr noundef nonnull %sec_count, ptr noundef nonnull %ded_count)
  %9 = ptrtoint ptr %sec_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sec_count, align 4
  %11 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ce_count, align 4
  %add = add i32 %12, %10
  store i32 %add, ptr %ce_count, align 4
  %13 = ptrtoint ptr %ded_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ded_count, align 4
  %15 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ras_error_status, align 4
  %add4 = add i32 %16, %14
  store i32 %add4, ptr %ras_error_status, align 4
  call fastcc void @gfx_v9_4_2_query_utc_edc_count(ptr noundef %adev, ptr noundef nonnull %sec_count, ptr noundef nonnull %ded_count)
  %17 = ptrtoint ptr %sec_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sec_count, align 4
  %19 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ce_count, align 4
  %add7 = add i32 %20, %18
  store i32 %add7, ptr %ce_count, align 4
  %21 = ptrtoint ptr %ded_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ded_count, align 4
  %23 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ras_error_status, align 4
  %add9 = add i32 %24, %22
  store i32 %add9, ptr %ras_error_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %amdgpu_ras_is_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %amdgpu_ras_is_supported.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ded_count) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sec_count) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v9_4_2_reset_ras_error_count(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %amdgpu_ras_is_supported.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.return_crit_edge, label %if.end

amdgpu_ras_is_supported.exit.return_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @gfx_v9_4_2_query_sram_edc_count(ptr noundef %adev, ptr noundef null, ptr noundef null)
  tail call fastcc void @gfx_v9_4_2_query_utc_edc_count(ptr noundef %adev, ptr noundef null, ptr noundef null)
  br label %return

return:                                           ; preds = %if.end, %amdgpu_ras_is_supported.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v9_4_2_query_ras_error_status(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %amdgpu_ras_is_supported.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.return_crit_edge, label %if.end

amdgpu_ras_is_supported.exit.return_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  %grbm_idx_mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i, i32 noundef 0) #8
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %virt.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  br label %for.body3.i

for.body3.i:                                      ; preds = %if.end.i.for.body3.i_crit_edge, %if.end
  %j.051.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body3.i_crit_edge ]
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx22.i.i = getelementptr i32, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx22.i.i, align 4
  %9 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virt.i.i, align 8
  %11 = and i32 %10, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %if.then28.i.i, label %for.body3.i.gfx_v9_4_2_select_se_sh.exit.i_crit_edge

for.body3.i.gfx_v9_4_2_select_se_sh.exit.i_crit_edge: ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_select_se_sh.exit.i

if.then28.i.i:                                    ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %6, align 4
  %15 = add i32 %8, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %14)
  %cmp49.i.i = icmp eq i32 %15, %14
  %..i.i = select i1 %cmp49.i.i, i32 8258, i32 8259
  %add38.i.i = add i32 %..i.i, %8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i.i, i32 noundef %j.051.i, i32 noundef 0) #8
  br label %gfx_v9_4_2_select_se_sh.exit.i

gfx_v9_4_2_select_se_sh.exit.i:                   ; preds = %if.then28.i.i, %for.body3.i.gfx_v9_4_2_select_se_sh.exit.i_crit_edge
  %add.i.i = add i32 %8, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i.i, i32 noundef %j.051.i, i32 noundef 0) #8
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add.i = add i32 %19, 1810
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0) #8
  %20 = and i32 %call.i, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %gfx_v9_4_2_select_se_sh.exit.i.if.end.i_crit_edge, label %do.end.i

gfx_v9_4_2_select_se_sh.exit.i.if.end.i_crit_edge: ; preds = %gfx_v9_4_2_select_se_sh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %gfx_v9_4_2_select_se_sh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.271, i32 noundef %j.051.i, i32 noundef %call.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %gfx_v9_4_2_select_se_sh.exit.i.if.end.i_crit_edge
  %or.i = or i32 %call.i, 2048
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add18.i = add i32 %27, 1810
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add18.i, i32 noundef %or.i, i32 noundef 0) #8
  %inc.i = add nuw nsw i32 %j.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end21.i, label %if.end.i.for.body3.i_crit_edge

if.end.i.for.body3.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i

for.end21.i:                                      ; preds = %if.end.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx22.i43.i = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx22.i43.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22.i43.i, align 4
  %32 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %virt.i.i, align 8
  %34 = and i32 %33, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %if.then28.i48.i, label %for.end21.i.gfx_v9_4_2_query_ea_err_status.exit_crit_edge

for.end21.i.gfx_v9_4_2_query_ea_err_status.exit_crit_edge: ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_query_ea_err_status.exit

if.then28.i48.i:                                  ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %29, align 4
  %38 = add i32 %31, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %37)
  %cmp49.i45.i = icmp eq i32 %38, %37
  %..i46.i = select i1 %cmp49.i45.i, i32 8258, i32 8259
  %add38.i47.i = add i32 %..i46.i, %31
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i47.i, i32 noundef -536870912, i32 noundef 0) #8
  br label %gfx_v9_4_2_query_ea_err_status.exit

gfx_v9_4_2_query_ea_err_status.exit:              ; preds = %if.then28.i48.i, %for.end21.i.gfx_v9_4_2_query_ea_err_status.exit_crit_edge
  %add.i49.i = add i32 %31, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i49.i, i32 noundef -536870912, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i) #8
  %39 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %virt.i.i, align 8
  %and.i4 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %gfx_v9_4_2_query_ea_err_status.exit.cond.false.i_crit_edge, label %land.lhs.true.i

gfx_v9_4_2_query_ea_err_status.exit.cond.false.i_crit_edge: ; preds = %gfx_v9_4_2_query_ea_err_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %gfx_v9_4_2_query_ea_err_status.exit
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %41 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %42, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %42, i32 0, i32 13
  %43 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool6.not.i = icmp eq ptr %44, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true2.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add.i6 = add i32 %48, 2153
  %call.i7 = tail call i32 %44(ptr noundef %adev, i32 noundef %add.i6, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %gfx_v9_4_2_query_ea_err_status.exit.cond.false.i_crit_edge
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add17.i = add i32 %52, 2153
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef 0) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i7, %cond.true.i ], [ %call18.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool19.not.i = icmp eq i32 %cond.i, 0
  br i1 %tobool19.not.i, label %cond.end.i.if.end.i9_crit_edge, label %do.end.i8

cond.end.i.if.end.i9_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i9

do.end.i8:                                        ; preds = %cond.end.i
  %53 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.273, i32 noundef %cond.i) #11
  %55 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %virt.i.i, align 8
  %and22.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %do.end.i8.cond.false44.i_crit_edge, label %land.lhs.true24.i

do.end.i8.cond.false44.i_crit_edge:               ; preds = %do.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44.i

land.lhs.true24.i:                                ; preds = %do.end.i8
  %funcs27.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %57 = ptrtoint ptr %funcs27.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %funcs27.i, align 4
  %tobool28.not.i = icmp eq ptr %58, null
  br i1 %tobool28.not.i, label %land.lhs.true24.i.cond.false44.i_crit_edge, label %land.lhs.true29.i

land.lhs.true24.i.cond.false44.i_crit_edge:       ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44.i

land.lhs.true29.i:                                ; preds = %land.lhs.true24.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %58, i32 0, i32 12
  %59 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool33.not.i = icmp eq ptr %60, null
  br i1 %tobool33.not.i, label %land.lhs.true29.i.cond.false44.i_crit_edge, label %cond.true34.i

land.lhs.true29.i.cond.false44.i_crit_edge:       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44.i

cond.true34.i:                                    ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %add43.i = add i32 %64, 2153
  tail call void %60(ptr noundef %adev, i32 noundef %add43.i, i32 noundef 3, i32 noundef 0, i32 noundef 1) #8
  br label %if.end.i9

cond.false44.i:                                   ; preds = %land.lhs.true29.i.cond.false44.i_crit_edge, %land.lhs.true24.i.cond.false44.i_crit_edge, %do.end.i8.cond.false44.i_crit_edge
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add49.i = add i32 %68, 2153
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add49.i, i32 noundef 3, i32 noundef 0) #8
  br label %if.end.i9

if.end.i9:                                        ; preds = %cond.false44.i, %cond.true34.i, %cond.end.i.if.end.i9_crit_edge
  %69 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %virt.i.i, align 8
  %and53.i = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end.i9.cond.false77.i_crit_edge, label %land.lhs.true55.i

if.end.i9.cond.false77.i_crit_edge:               ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false77.i

land.lhs.true55.i:                                ; preds = %if.end.i9
  %funcs58.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %71 = ptrtoint ptr %funcs58.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %funcs58.i, align 4
  %tobool59.not.i = icmp eq ptr %72, null
  br i1 %tobool59.not.i, label %land.lhs.true55.i.cond.false77.i_crit_edge, label %land.lhs.true60.i

land.lhs.true55.i.cond.false77.i_crit_edge:       ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false77.i

land.lhs.true60.i:                                ; preds = %land.lhs.true55.i
  %sriov_rreg64.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %72, i32 0, i32 13
  %73 = ptrtoint ptr %sriov_rreg64.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sriov_rreg64.i, align 4
  %tobool65.not.i = icmp eq ptr %74, null
  br i1 %tobool65.not.i, label %land.lhs.true60.i.cond.false77.i_crit_edge, label %cond.true66.i

land.lhs.true60.i.cond.false77.i_crit_edge:       ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false77.i

cond.true66.i:                                    ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %add75.i = add i32 %78, 2151
  %call76.i = tail call i32 %74(ptr noundef %adev, i32 noundef %add75.i, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end84.i

cond.false77.i:                                   ; preds = %land.lhs.true60.i.cond.false77.i_crit_edge, %land.lhs.true55.i.cond.false77.i_crit_edge, %if.end.i9.cond.false77.i_crit_edge
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add82.i = add i32 %82, 2151
  %call83.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add82.i, i32 noundef 0) #8
  br label %cond.end84.i

cond.end84.i:                                     ; preds = %cond.false77.i, %cond.true66.i
  %cond85.i = phi i32 [ %call76.i, %cond.true66.i ], [ %call83.i, %cond.false77.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond85.i)
  %tobool86.not.i = icmp eq i32 %cond85.i, 0
  br i1 %tobool86.not.i, label %cond.end84.i.if.end124.i_crit_edge, label %do.end90.i

cond.end84.i.if.end124.i_crit_edge:               ; preds = %cond.end84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124.i

do.end90.i:                                       ; preds = %cond.end84.i
  %83 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.276, i32 noundef %cond85.i) #11
  %85 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %virt.i.i, align 8
  %and94.i = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %do.end90.i.cond.false117.i_crit_edge, label %land.lhs.true96.i

do.end90.i.cond.false117.i_crit_edge:             ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false117.i

land.lhs.true96.i:                                ; preds = %do.end90.i
  %funcs99.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %87 = ptrtoint ptr %funcs99.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %funcs99.i, align 4
  %tobool100.not.i = icmp eq ptr %88, null
  br i1 %tobool100.not.i, label %land.lhs.true96.i.cond.false117.i_crit_edge, label %land.lhs.true101.i

land.lhs.true96.i.cond.false117.i_crit_edge:      ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false117.i

land.lhs.true101.i:                               ; preds = %land.lhs.true96.i
  %sriov_wreg105.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %sriov_wreg105.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sriov_wreg105.i, align 4
  %tobool106.not.i = icmp eq ptr %90, null
  br i1 %tobool106.not.i, label %land.lhs.true101.i.cond.false117.i_crit_edge, label %cond.true107.i

land.lhs.true101.i.cond.false117.i_crit_edge:     ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false117.i

cond.true107.i:                                   ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i.i, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %add116.i = add i32 %94, 2151
  tail call void %90(ptr noundef %adev, i32 noundef %add116.i, i32 noundef 3, i32 noundef 0, i32 noundef 1) #8
  br label %if.end124.i

cond.false117.i:                                  ; preds = %land.lhs.true101.i.cond.false117.i_crit_edge, %land.lhs.true96.i.cond.false117.i_crit_edge, %do.end90.i.cond.false117.i_crit_edge
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.i, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %add122.i = add i32 %98, 2151
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add122.i, i32 noundef 3, i32 noundef 0) #8
  br label %if.end124.i

if.end124.i:                                      ; preds = %cond.false117.i, %cond.true107.i, %cond.end84.i.if.end124.i_crit_edge
  %99 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %virt.i.i, align 8
  %and127.i = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp eq i32 %and127.i, 0
  br i1 %tobool128.not.i, label %if.end124.i.cond.false151.i_crit_edge, label %land.lhs.true129.i

if.end124.i.cond.false151.i_crit_edge:            ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false151.i

land.lhs.true129.i:                               ; preds = %if.end124.i
  %funcs132.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %101 = ptrtoint ptr %funcs132.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %funcs132.i, align 4
  %tobool133.not.i = icmp eq ptr %102, null
  br i1 %tobool133.not.i, label %land.lhs.true129.i.cond.false151.i_crit_edge, label %land.lhs.true134.i

land.lhs.true129.i.cond.false151.i_crit_edge:     ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false151.i

land.lhs.true134.i:                               ; preds = %land.lhs.true129.i
  %sriov_rreg138.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %102, i32 0, i32 13
  %103 = ptrtoint ptr %sriov_rreg138.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sriov_rreg138.i, align 4
  %tobool139.not.i = icmp eq ptr %104, null
  br i1 %tobool139.not.i, label %land.lhs.true134.i.cond.false151.i_crit_edge, label %cond.true140.i

land.lhs.true134.i.cond.false151.i_crit_edge:     ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false151.i

cond.true140.i:                                   ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %add149.i = add i32 %108, 2152
  %call150.i = tail call i32 %104(ptr noundef %adev, i32 noundef %add149.i, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end158.i

cond.false151.i:                                  ; preds = %land.lhs.true134.i.cond.false151.i_crit_edge, %land.lhs.true129.i.cond.false151.i_crit_edge, %if.end124.i.cond.false151.i_crit_edge
  %109 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i.i, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %add156.i = add i32 %112, 2152
  %call157.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add156.i, i32 noundef 0) #8
  br label %cond.end158.i

cond.end158.i:                                    ; preds = %cond.false151.i, %cond.true140.i
  %cond159.i = phi i32 [ %call150.i, %cond.true140.i ], [ %call157.i, %cond.false151.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond159.i)
  %tobool160.not.i = icmp eq i32 %cond159.i, 0
  br i1 %tobool160.not.i, label %cond.end158.i.gfx_v9_4_2_query_utc_err_status.exit_crit_edge, label %do.end164.i

cond.end158.i.gfx_v9_4_2_query_utc_err_status.exit_crit_edge: ; preds = %cond.end158.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_query_utc_err_status.exit

do.end164.i:                                      ; preds = %cond.end158.i
  %113 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %114, ptr noundef nonnull @.str.279, i32 noundef %cond159.i) #11
  %115 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %virt.i.i, align 8
  %and168.i = and i32 %116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168.i)
  %tobool169.not.i = icmp eq i32 %and168.i, 0
  br i1 %tobool169.not.i, label %do.end164.i.cond.false191.i_crit_edge, label %land.lhs.true170.i

do.end164.i.cond.false191.i_crit_edge:            ; preds = %do.end164.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false191.i

land.lhs.true170.i:                               ; preds = %do.end164.i
  %funcs173.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %117 = ptrtoint ptr %funcs173.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %funcs173.i, align 4
  %tobool174.not.i = icmp eq ptr %118, null
  br i1 %tobool174.not.i, label %land.lhs.true170.i.cond.false191.i_crit_edge, label %land.lhs.true175.i

land.lhs.true170.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true170.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false191.i

land.lhs.true175.i:                               ; preds = %land.lhs.true170.i
  %sriov_wreg179.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %118, i32 0, i32 12
  %119 = ptrtoint ptr %sriov_wreg179.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sriov_wreg179.i, align 4
  %tobool180.not.i = icmp eq ptr %120, null
  br i1 %tobool180.not.i, label %land.lhs.true175.i.cond.false191.i_crit_edge, label %cond.true181.i

land.lhs.true175.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false191.i

cond.true181.i:                                   ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i.i, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %add190.i = add i32 %124, 2152
  tail call void %120(ptr noundef %adev, i32 noundef %add190.i, i32 noundef 3, i32 noundef 0, i32 noundef 1) #8
  br label %gfx_v9_4_2_query_utc_err_status.exit

cond.false191.i:                                  ; preds = %land.lhs.true175.i.cond.false191.i_crit_edge, %land.lhs.true170.i.cond.false191.i_crit_edge, %do.end164.i.cond.false191.i_crit_edge
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i, align 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  %add196.i = add i32 %128, 2152
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add196.i, i32 noundef 3, i32 noundef 0) #8
  br label %gfx_v9_4_2_query_utc_err_status.exit

gfx_v9_4_2_query_utc_err_status.exit:             ; preds = %cond.false191.i, %cond.true181.i, %cond.end158.i.gfx_v9_4_2_query_utc_err_status.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i, i32 noundef 0) #8
  %config.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %129 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %config.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp123.not.i = icmp eq i32 %130, 0
  br i1 %cmp123.not.i, label %gfx_v9_4_2_query_utc_err_status.exit.for.end67.i_crit_edge, label %for.cond1.preheader.lr.ph.i

gfx_v9_4_2_query_utc_err_status.exit.for.end67.i_crit_edge: ; preds = %gfx_v9_4_2_query_utc_err_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end67.i

for.cond1.preheader.lr.ph.i:                      ; preds = %gfx_v9_4_2_query_utc_err_status.exit
  %max_sh_per_se.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %max_cu_per_sh.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %funcs.i13 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %max_waves_per_simd.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 1
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc65.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %se_idx.0124.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc66.i, %for.inc65.i.for.cond1.preheader.i_crit_edge ]
  %131 = ptrtoint ptr %max_sh_per_se.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %max_sh_per_se.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp4120.not.i = icmp eq i32 %132, 0
  br i1 %cmp4120.not.i, label %for.cond1.preheader.i.for.inc65.i_crit_edge, label %for.cond6.preheader.lr.ph.i

for.cond1.preheader.i.for.inc65.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65.i

for.cond6.preheader.lr.ph.i:                      ; preds = %for.cond1.preheader.i
  %shl7.i.i = shl i32 %se_idx.0124.i, 16
  %and8.i.i = and i32 %shl7.i.i, 16711680
  br label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %for.inc62.i.for.cond6.preheader.i_crit_edge, %for.cond6.preheader.lr.ph.i
  %sh_idx.0121.i = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %inc63.i, %for.inc62.i.for.cond6.preheader.i_crit_edge ]
  %133 = ptrtoint ptr %max_cu_per_sh.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_cu_per_sh.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp9117.not.i = icmp eq i32 %134, 0
  br i1 %cmp9117.not.i, label %for.cond6.preheader.i.for.inc62.i_crit_edge, label %for.body10.lr.ph.i

for.cond6.preheader.i.for.inc62.i_crit_edge:      ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.i

for.body10.lr.ph.i:                               ; preds = %for.cond6.preheader.i
  %shl17.i.i = shl i32 %sh_idx.0121.i, 8
  %and18.i.i = and i32 %shl17.i.i, 65280
  %data.1.i.i = or i32 %and18.i.i, %and8.i.i
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %cu_idx.0118.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i34, %for.inc.i.for.body10.i_crit_edge ]
  %and.i.i = and i32 %cu_idx.0118.i, 255
  %data.2.i.i = or i32 %data.1.i.i, %and.i.i
  %135 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx22.i.i14 = getelementptr i32, ptr %136, i32 1
  %137 = ptrtoint ptr %arrayidx22.i.i14 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx22.i.i14, align 4
  %139 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %virt.i.i, align 8
  %141 = and i32 %140, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %141)
  %142 = icmp eq i32 %141, 4
  br i1 %142, label %if.then28.i.i18, label %for.body10.i.gfx_v9_4_2_select_se_sh.exit.i22_crit_edge

for.body10.i.gfx_v9_4_2_select_se_sh.exit.i22_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_select_se_sh.exit.i22

if.then28.i.i18:                                  ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %136, align 4
  %145 = add i32 %138, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %144)
  %cmp49.i.i15 = icmp eq i32 %145, %144
  %..i.i16 = select i1 %cmp49.i.i15, i32 8258, i32 8259
  %add38.i.i17 = add i32 %..i.i16, %138
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i.i17, i32 noundef %data.2.i.i, i32 noundef 0) #8
  br label %gfx_v9_4_2_select_se_sh.exit.i22

gfx_v9_4_2_select_se_sh.exit.i22:                 ; preds = %if.then28.i.i18, %for.body10.i.gfx_v9_4_2_select_se_sh.exit.i22_crit_edge
  %add.i.i19 = add i32 %138, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i.i19, i32 noundef %data.2.i.i, i32 noundef 0) #8
  %146 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %virt.i.i, align 8
  %and.i20 = and i32 %147, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %gfx_v9_4_2_select_se_sh.exit.i22.cond.false.i28_crit_edge, label %land.lhs.true.i23

gfx_v9_4_2_select_se_sh.exit.i22.cond.false.i28_crit_edge: ; preds = %gfx_v9_4_2_select_se_sh.exit.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i28

land.lhs.true.i23:                                ; preds = %gfx_v9_4_2_select_se_sh.exit.i22
  %148 = ptrtoint ptr %funcs.i13 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %funcs.i13, align 4
  %tobool12.not.i = icmp eq ptr %149, null
  br i1 %tobool12.not.i, label %land.lhs.true.i23.cond.false.i28_crit_edge, label %land.lhs.true13.i

land.lhs.true.i23.cond.false.i28_crit_edge:       ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i28

land.lhs.true13.i:                                ; preds = %land.lhs.true.i23
  %sriov_rreg.i24 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %149, i32 0, i32 13
  %150 = ptrtoint ptr %sriov_rreg.i24 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sriov_rreg.i24, align 4
  %tobool17.not.i = icmp eq ptr %151, null
  br i1 %tobool17.not.i, label %land.lhs.true13.i.cond.false.i28_crit_edge, label %cond.true.i27

land.lhs.true13.i.cond.false.i28_crit_edge:       ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i28

cond.true.i27:                                    ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i.i, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  %add.i25 = add i32 %155, 780
  %call.i26 = tail call i32 %151(ptr noundef %adev, i32 noundef %add.i25, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end.i30

cond.false.i28:                                   ; preds = %land.lhs.true13.i.cond.false.i28_crit_edge, %land.lhs.true.i23.cond.false.i28_crit_edge, %gfx_v9_4_2_select_se_sh.exit.i22.cond.false.i28_crit_edge
  %156 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx.i.i, align 8
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %157, align 4
  %add28.i = add i32 %159, 780
  %call29.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add28.i, i32 noundef 0) #8
  br label %cond.end.i30

cond.end.i30:                                     ; preds = %cond.false.i28, %cond.true.i27
  %cond.i29 = phi i32 [ %call.i26, %cond.true.i27 ], [ %call29.i, %cond.false.i28 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i29)
  %cmp30.not.i = icmp eq i32 %cond.i29, 0
  br i1 %cmp30.not.i, label %cond.end.i30.if.end.i32_crit_edge, label %do.end.i31

cond.end.i30.if.end.i32_crit_edge:                ; preds = %cond.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i32

do.end.i31:                                       ; preds = %cond.end.i30
  %160 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %161, ptr noundef nonnull @.str.281, i32 noundef %se_idx.0124.i, i32 noundef %sh_idx.0121.i, i32 noundef %cu_idx.0118.i) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i31
  %i.050.i.i = phi i32 [ 0, %do.end.i31 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 %i.050.i.i, 1
  %and.i106.i = and i32 %shl.i.i, %cond.i29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i)
  %tobool.not.i.i = icmp eq i32 %and.i106.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %max_waves_per_simd.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %max_waves_per_simd.i.i, align 4
  %i.050.i.i.frozen = freeze i32 %i.050.i.i
  %.frozen = freeze i32 %163
  %div.i.i = udiv i32 %i.050.i.i.frozen, %.frozen
  %164 = mul i32 %div.i.i, %.frozen
  %rem.i.i.decomposed = sub i32 %i.050.i.i.frozen, %164
  %call.i.i = tail call fastcc i32 @wave_read_ind(ptr noundef %adev, i32 noundef %div.i.i, i32 noundef %rem.i.i.decomposed, i32 noundef 18) #8
  %call3.i.i = tail call fastcc i32 @wave_read_ind(ptr noundef %adev, i32 noundef %div.i.i, i32 noundef %rem.i.i.decomposed, i32 noundef 24) #8
  %call4.i.i = tail call fastcc i32 @wave_read_ind(ptr noundef %adev, i32 noundef %div.i.i, i32 noundef %rem.i.i.decomposed, i32 noundef 25) #8
  %call5.i.i = tail call fastcc i32 @wave_read_ind(ptr noundef %adev, i32 noundef %div.i.i, i32 noundef %rem.i.i.decomposed, i32 noundef 638) #8
  %call6.i.i = tail call fastcc i32 @wave_read_ind(ptr noundef %adev, i32 noundef %div.i.i, i32 noundef %rem.i.i.decomposed, i32 noundef 639) #8
  %call7.i.i = tail call fastcc i32 @wave_read_ind(ptr noundef %adev, i32 noundef %div.i.i, i32 noundef %rem.i.i.decomposed, i32 noundef 26) #8
  %call8.i.i = tail call fastcc i32 @wave_read_ind(ptr noundef %adev, i32 noundef %div.i.i, i32 noundef %rem.i.i.decomposed, i32 noundef 27) #8
  %call9.i.i = tail call fastcc i32 @wave_read_ind(ptr noundef %adev, i32 noundef %div.i.i, i32 noundef %rem.i.i.decomposed, i32 noundef 23) #8
  %165 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %adev, align 8
  %conv.i.i = zext i32 %call4.i.i to i64
  %shl10.i.i = shl nuw i64 %conv.i.i, 32
  %conv11.i.i = zext i32 %call3.i.i to i64
  %or.i.i = or i64 %shl10.i.i, %conv11.i.i
  %conv12.i.i = zext i32 %call6.i.i to i64
  %shl13.i.i = shl nuw i64 %conv12.i.i, 32
  %conv14.i.i = zext i32 %call5.i.i to i64
  %or15.i.i = or i64 %shl13.i.i, %conv14.i.i
  %conv16.i.i = zext i32 %call8.i.i to i64
  %shl17.i107.i = shl nuw i64 %conv16.i.i, 32
  %conv18.i.i = zext i32 %call7.i.i to i64
  %or19.i.i = or i64 %shl17.i107.i, %conv18.i.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %166, ptr noundef nonnull @.str.283, i32 noundef %div.i.i, i32 noundef %rem.i.i.decomposed, i32 noundef %call.i.i, i64 noundef %or.i.i, i64 noundef %or15.i.i, i64 noundef %or19.i.i, i32 noundef %call9.i.i) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.050.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i32_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.end.i32_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i32

if.end.i32:                                       ; preds = %for.inc.i.i.if.end.i32_crit_edge, %cond.end.i30.if.end.i32_crit_edge
  %167 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %virt.i.i, align 8
  %and33.i = and i32 %168, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end.i32.cond.false55.i_crit_edge, label %land.lhs.true35.i

if.end.i32.cond.false55.i_crit_edge:              ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false55.i

land.lhs.true35.i:                                ; preds = %if.end.i32
  %169 = ptrtoint ptr %funcs.i13 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %funcs.i13, align 4
  %tobool39.not.i = icmp eq ptr %170, null
  br i1 %tobool39.not.i, label %land.lhs.true35.i.cond.false55.i_crit_edge, label %land.lhs.true40.i

land.lhs.true35.i.cond.false55.i_crit_edge:       ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false55.i

land.lhs.true40.i:                                ; preds = %land.lhs.true35.i
  %sriov_wreg.i33 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %170, i32 0, i32 12
  %171 = ptrtoint ptr %sriov_wreg.i33 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sriov_wreg.i33, align 4
  %tobool44.not.i = icmp eq ptr %172, null
  br i1 %tobool44.not.i, label %land.lhs.true40.i.cond.false55.i_crit_edge, label %cond.true45.i

land.lhs.true40.i.cond.false55.i_crit_edge:       ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false55.i

cond.true45.i:                                    ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #10
  %173 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.i.i, align 8
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  %add54.i = add i32 %176, 780
  tail call void %172(ptr noundef %adev, i32 noundef %add54.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #8
  br label %for.inc.i

cond.false55.i:                                   ; preds = %land.lhs.true40.i.cond.false55.i_crit_edge, %land.lhs.true35.i.cond.false55.i_crit_edge, %if.end.i32.cond.false55.i_crit_edge
  %177 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx.i.i, align 8
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 4
  %add60.i = add i32 %180, 780
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add60.i, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false55.i, %cond.true45.i
  %inc.i34 = add nuw i32 %cu_idx.0118.i, 1
  %181 = ptrtoint ptr %max_cu_per_sh.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %max_cu_per_sh.i, align 8
  %cmp9.i = icmp ult i32 %inc.i34, %182
  br i1 %cmp9.i, label %for.inc.i.for.body10.i_crit_edge, label %for.inc.i.for.inc62.i_crit_edge

for.inc.i.for.inc62.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.i

for.inc.i.for.body10.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

for.inc62.i:                                      ; preds = %for.inc.i.for.inc62.i_crit_edge, %for.cond6.preheader.i.for.inc62.i_crit_edge
  %inc63.i = add nuw i32 %sh_idx.0121.i, 1
  %183 = ptrtoint ptr %max_sh_per_se.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %max_sh_per_se.i, align 4
  %cmp4.i = icmp ult i32 %inc63.i, %184
  br i1 %cmp4.i, label %for.inc62.i.for.cond6.preheader.i_crit_edge, label %for.inc62.i.for.inc65.i_crit_edge

for.inc62.i.for.inc65.i_crit_edge:                ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65.i

for.inc62.i.for.cond6.preheader.i_crit_edge:      ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.preheader.i

for.inc65.i:                                      ; preds = %for.inc62.i.for.inc65.i_crit_edge, %for.cond1.preheader.i.for.inc65.i_crit_edge
  %inc66.i = add nuw i32 %se_idx.0124.i, 1
  %185 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %config.i, align 8
  %cmp.i = icmp ult i32 %inc66.i, %186
  br i1 %cmp.i, label %for.inc65.i.for.cond1.preheader.i_crit_edge, label %for.inc65.i.for.end67.i_crit_edge

for.inc65.i.for.end67.i_crit_edge:                ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end67.i

for.inc65.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i

for.end67.i:                                      ; preds = %for.inc65.i.for.end67.i_crit_edge, %gfx_v9_4_2_query_utc_err_status.exit.for.end67.i_crit_edge
  %187 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx22.i109.i = getelementptr i32, ptr %188, i32 1
  %189 = ptrtoint ptr %arrayidx22.i109.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx22.i109.i, align 4
  %191 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %virt.i.i, align 8
  %193 = and i32 %192, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %193)
  %194 = icmp eq i32 %193, 4
  br i1 %194, label %if.then28.i114.i, label %for.end67.i.gfx_v9_4_2_query_sq_timeout_status.exit_crit_edge

for.end67.i.gfx_v9_4_2_query_sq_timeout_status.exit_crit_edge: ; preds = %for.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_query_sq_timeout_status.exit

if.then28.i114.i:                                 ; preds = %for.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %188, align 4
  %197 = add i32 %190, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %196)
  %cmp49.i111.i = icmp eq i32 %197, %196
  %..i112.i = select i1 %cmp49.i111.i, i32 8258, i32 8259
  %add38.i113.i = add i32 %..i112.i, %190
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i113.i, i32 noundef -536870912, i32 noundef 0) #8
  br label %gfx_v9_4_2_query_sq_timeout_status.exit

gfx_v9_4_2_query_sq_timeout_status.exit:          ; preds = %if.then28.i114.i, %for.end67.i.gfx_v9_4_2_query_sq_timeout_status.exit_crit_edge
  %add.i115.i = add i32 %190, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i115.i, i32 noundef -536870912, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i) #8
  br label %return

return:                                           ; preds = %gfx_v9_4_2_query_sq_timeout_status.exit, %amdgpu_ras_is_supported.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v9_4_2_reset_ras_error_status(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %amdgpu_ras_is_supported.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.return_crit_edge, label %if.end

amdgpu_ras_is_supported.exit.return_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %5 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virt.i, align 8
  %and.i4 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %if.end.cond.false.i_crit_edge, label %land.lhs.true.i

if.end.cond.false.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool6.not.i = icmp eq ptr %10, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true2.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add.i = add i32 %14, 2153
  tail call void %10(ptr noundef %adev, i32 noundef %add.i, i32 noundef 3, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end.cond.false.i_crit_edge
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add17.i = add i32 %18, 2153
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef 3, i32 noundef 0) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %19 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %virt.i, align 8
  %and20.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %cond.end.i.cond.false43.i_crit_edge, label %land.lhs.true22.i

cond.end.i.cond.false43.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false43.i

land.lhs.true22.i:                                ; preds = %cond.end.i
  %funcs25.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %21 = ptrtoint ptr %funcs25.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs25.i, align 4
  %tobool26.not.i = icmp eq ptr %22, null
  br i1 %tobool26.not.i, label %land.lhs.true22.i.cond.false43.i_crit_edge, label %land.lhs.true27.i

land.lhs.true22.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false43.i

land.lhs.true27.i:                                ; preds = %land.lhs.true22.i
  %sriov_wreg31.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %sriov_wreg31.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sriov_wreg31.i, align 4
  %tobool32.not.i = icmp eq ptr %24, null
  br i1 %tobool32.not.i, label %land.lhs.true27.i.cond.false43.i_crit_edge, label %cond.true33.i

land.lhs.true27.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false43.i

cond.true33.i:                                    ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx39.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %25 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx39.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add42.i = add i32 %28, 2151
  tail call void %24(ptr noundef %adev, i32 noundef %add42.i, i32 noundef 3, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end49.i

cond.false43.i:                                   ; preds = %land.lhs.true27.i.cond.false43.i_crit_edge, %land.lhs.true22.i.cond.false43.i_crit_edge, %cond.end.i.cond.false43.i_crit_edge
  %arrayidx45.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %29 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx45.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add48.i = add i32 %32, 2151
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48.i, i32 noundef 3, i32 noundef 0) #8
  br label %cond.end49.i

cond.end49.i:                                     ; preds = %cond.false43.i, %cond.true33.i
  %33 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %virt.i, align 8
  %and52.i = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %cond.end49.i.cond.false75.i_crit_edge, label %land.lhs.true54.i

cond.end49.i.cond.false75.i_crit_edge:            ; preds = %cond.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false75.i

land.lhs.true54.i:                                ; preds = %cond.end49.i
  %funcs57.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %35 = ptrtoint ptr %funcs57.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %funcs57.i, align 4
  %tobool58.not.i = icmp eq ptr %36, null
  br i1 %tobool58.not.i, label %land.lhs.true54.i.cond.false75.i_crit_edge, label %land.lhs.true59.i

land.lhs.true54.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false75.i

land.lhs.true59.i:                                ; preds = %land.lhs.true54.i
  %sriov_wreg63.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %sriov_wreg63.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sriov_wreg63.i, align 4
  %tobool64.not.i = icmp eq ptr %38, null
  br i1 %tobool64.not.i, label %land.lhs.true59.i.cond.false75.i_crit_edge, label %cond.true65.i

land.lhs.true59.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false75.i

cond.true65.i:                                    ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx71.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %39 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx71.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add74.i = add i32 %42, 2152
  tail call void %38(ptr noundef %adev, i32 noundef %add74.i, i32 noundef 3, i32 noundef 0, i32 noundef 1) #8
  br label %gfx_v9_4_2_reset_utc_err_status.exit

cond.false75.i:                                   ; preds = %land.lhs.true59.i.cond.false75.i_crit_edge, %land.lhs.true54.i.cond.false75.i_crit_edge, %cond.end49.i.cond.false75.i_crit_edge
  %arrayidx77.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %43 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx77.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add80.i = add i32 %46, 2152
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add80.i, i32 noundef 3, i32 noundef 0) #8
  br label %gfx_v9_4_2_reset_utc_err_status.exit

gfx_v9_4_2_reset_utc_err_status.exit:             ; preds = %cond.false75.i, %cond.true65.i
  %grbm_idx_mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i, i32 noundef 0) #8
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  br label %for.body3.i

for.body3.i:                                      ; preds = %gfx_v9_4_2_select_se_sh.exit.i.for.body3.i_crit_edge, %gfx_v9_4_2_reset_utc_err_status.exit
  %j.036.i = phi i32 [ 0, %gfx_v9_4_2_reset_utc_err_status.exit ], [ %inc.i, %gfx_v9_4_2_select_se_sh.exit.i.for.body3.i_crit_edge ]
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx22.i.i = getelementptr i32, ptr %48, i32 1
  %49 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx22.i.i, align 4
  %51 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %virt.i, align 8
  %53 = and i32 %52, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %if.then28.i.i, label %for.body3.i.gfx_v9_4_2_select_se_sh.exit.i_crit_edge

for.body3.i.gfx_v9_4_2_select_se_sh.exit.i_crit_edge: ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_select_se_sh.exit.i

if.then28.i.i:                                    ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %48, align 4
  %57 = add i32 %50, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %56)
  %cmp49.i.i = icmp eq i32 %57, %56
  %..i.i = select i1 %cmp49.i.i, i32 8258, i32 8259
  %add38.i.i = add i32 %..i.i, %50
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i.i, i32 noundef %j.036.i, i32 noundef 0) #8
  br label %gfx_v9_4_2_select_se_sh.exit.i

gfx_v9_4_2_select_se_sh.exit.i:                   ; preds = %if.then28.i.i, %for.body3.i.gfx_v9_4_2_select_se_sh.exit.i_crit_edge
  %add.i.i = add i32 %50, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i.i, i32 noundef %j.036.i, i32 noundef 0) #8
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add.i6 = add i32 %61, 1810
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i6, i32 noundef 0) #8
  %or.i = or i32 %call.i, 2048
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add10.i = add i32 %65, 1810
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add10.i, i32 noundef %or.i, i32 noundef 0) #8
  %inc.i = add nuw nsw i32 %j.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end13.i, label %gfx_v9_4_2_select_se_sh.exit.i.for.body3.i_crit_edge

gfx_v9_4_2_select_se_sh.exit.i.for.body3.i_crit_edge: ; preds = %gfx_v9_4_2_select_se_sh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i

for.end13.i:                                      ; preds = %gfx_v9_4_2_select_se_sh.exit.i
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx22.i28.i = getelementptr i32, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx22.i28.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx22.i28.i, align 4
  %70 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %virt.i, align 8
  %72 = and i32 %71, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %if.then28.i33.i, label %for.end13.i.gfx_v9_4_2_reset_ea_err_status.exit_crit_edge

for.end13.i.gfx_v9_4_2_reset_ea_err_status.exit_crit_edge: ; preds = %for.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_reset_ea_err_status.exit

if.then28.i33.i:                                  ; preds = %for.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %67, align 4
  %76 = add i32 %69, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %75)
  %cmp49.i30.i = icmp eq i32 %76, %75
  %..i31.i = select i1 %cmp49.i30.i, i32 8258, i32 8259
  %add38.i32.i = add i32 %..i31.i, %69
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i32.i, i32 noundef -536870912, i32 noundef 0) #8
  br label %gfx_v9_4_2_reset_ea_err_status.exit

gfx_v9_4_2_reset_ea_err_status.exit:              ; preds = %if.then28.i33.i, %for.end13.i.gfx_v9_4_2_reset_ea_err_status.exit_crit_edge
  %add.i34.i = add i32 %69, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i34.i, i32 noundef -536870912, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i) #8
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i, i32 noundef 0) #8
  %config.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %77 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %config.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp71.not.i = icmp eq i32 %78, 0
  br i1 %cmp71.not.i, label %gfx_v9_4_2_reset_ea_err_status.exit.for.end34.i_crit_edge, label %for.cond1.preheader.lr.ph.i

gfx_v9_4_2_reset_ea_err_status.exit.for.end34.i_crit_edge: ; preds = %gfx_v9_4_2_reset_ea_err_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34.i

for.cond1.preheader.lr.ph.i:                      ; preds = %gfx_v9_4_2_reset_ea_err_status.exit
  %max_sh_per_se.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %max_cu_per_sh.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %funcs.i10 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc32.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %se_idx.072.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc33.i, %for.inc32.i.for.cond1.preheader.i_crit_edge ]
  %79 = ptrtoint ptr %max_sh_per_se.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_sh_per_se.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp468.not.i = icmp eq i32 %80, 0
  br i1 %cmp468.not.i, label %for.cond1.preheader.i.for.inc32.i_crit_edge, label %for.cond6.preheader.lr.ph.i

for.cond1.preheader.i.for.inc32.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32.i

for.cond6.preheader.lr.ph.i:                      ; preds = %for.cond1.preheader.i
  %shl7.i.i = shl i32 %se_idx.072.i, 16
  %and8.i.i = and i32 %shl7.i.i, 16711680
  br label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %for.inc29.i.for.cond6.preheader.i_crit_edge, %for.cond6.preheader.lr.ph.i
  %sh_idx.069.i = phi i32 [ 0, %for.cond6.preheader.lr.ph.i ], [ %inc30.i, %for.inc29.i.for.cond6.preheader.i_crit_edge ]
  %81 = ptrtoint ptr %max_cu_per_sh.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_cu_per_sh.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp966.not.i = icmp eq i32 %82, 0
  br i1 %cmp966.not.i, label %for.cond6.preheader.i.for.inc29.i_crit_edge, label %for.body10.lr.ph.i

for.cond6.preheader.i.for.inc29.i_crit_edge:      ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc29.i

for.body10.lr.ph.i:                               ; preds = %for.cond6.preheader.i
  %shl17.i.i = shl i32 %sh_idx.069.i, 8
  %and18.i.i = and i32 %shl17.i.i, 65280
  %data.1.i.i = or i32 %and18.i.i, %and8.i.i
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %cu_idx.067.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i25, %for.inc.i.for.body10.i_crit_edge ]
  %and.i.i = and i32 %cu_idx.067.i, 255
  %data.2.i.i = or i32 %data.1.i.i, %and.i.i
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx22.i.i11 = getelementptr i32, ptr %84, i32 1
  %85 = ptrtoint ptr %arrayidx22.i.i11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx22.i.i11, align 4
  %87 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %virt.i, align 8
  %89 = and i32 %88, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %89)
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %if.then28.i.i15, label %for.body10.i.gfx_v9_4_2_select_se_sh.exit.i19_crit_edge

for.body10.i.gfx_v9_4_2_select_se_sh.exit.i19_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_select_se_sh.exit.i19

if.then28.i.i15:                                  ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %84, align 4
  %93 = add i32 %86, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %92)
  %cmp49.i.i12 = icmp eq i32 %93, %92
  %..i.i13 = select i1 %cmp49.i.i12, i32 8258, i32 8259
  %add38.i.i14 = add i32 %..i.i13, %86
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i.i14, i32 noundef %data.2.i.i, i32 noundef 0) #8
  br label %gfx_v9_4_2_select_se_sh.exit.i19

gfx_v9_4_2_select_se_sh.exit.i19:                 ; preds = %if.then28.i.i15, %for.body10.i.gfx_v9_4_2_select_se_sh.exit.i19_crit_edge
  %add.i.i16 = add i32 %86, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i.i16, i32 noundef %data.2.i.i, i32 noundef 0) #8
  %94 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %virt.i, align 8
  %and.i17 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %gfx_v9_4_2_select_se_sh.exit.i19.cond.false.i24_crit_edge, label %land.lhs.true.i20

gfx_v9_4_2_select_se_sh.exit.i19.cond.false.i24_crit_edge: ; preds = %gfx_v9_4_2_select_se_sh.exit.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i24

land.lhs.true.i20:                                ; preds = %gfx_v9_4_2_select_se_sh.exit.i19
  %96 = ptrtoint ptr %funcs.i10 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %funcs.i10, align 4
  %tobool12.not.i = icmp eq ptr %97, null
  br i1 %tobool12.not.i, label %land.lhs.true.i20.cond.false.i24_crit_edge, label %land.lhs.true13.i

land.lhs.true.i20.cond.false.i24_crit_edge:       ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i24

land.lhs.true13.i:                                ; preds = %land.lhs.true.i20
  %sriov_wreg.i21 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %sriov_wreg.i21 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sriov_wreg.i21, align 4
  %tobool17.not.i = icmp eq ptr %99, null
  br i1 %tobool17.not.i, label %land.lhs.true13.i.cond.false.i24_crit_edge, label %cond.true.i23

land.lhs.true13.i.cond.false.i24_crit_edge:       ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i24

cond.true.i23:                                    ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add.i22 = add i32 %103, 780
  tail call void %99(ptr noundef %adev, i32 noundef %add.i22, i32 noundef 0, i32 noundef 0, i32 noundef 1) #8
  br label %for.inc.i

cond.false.i24:                                   ; preds = %land.lhs.true13.i.cond.false.i24_crit_edge, %land.lhs.true.i20.cond.false.i24_crit_edge, %gfx_v9_4_2_select_se_sh.exit.i19.cond.false.i24_crit_edge
  %104 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i.i, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %add28.i = add i32 %107, 780
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add28.i, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false.i24, %cond.true.i23
  %inc.i25 = add nuw i32 %cu_idx.067.i, 1
  %108 = ptrtoint ptr %max_cu_per_sh.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_cu_per_sh.i, align 8
  %cmp9.i = icmp ult i32 %inc.i25, %109
  br i1 %cmp9.i, label %for.inc.i.for.body10.i_crit_edge, label %for.inc.i.for.inc29.i_crit_edge

for.inc.i.for.inc29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc29.i

for.inc.i.for.body10.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

for.inc29.i:                                      ; preds = %for.inc.i.for.inc29.i_crit_edge, %for.cond6.preheader.i.for.inc29.i_crit_edge
  %inc30.i = add nuw i32 %sh_idx.069.i, 1
  %110 = ptrtoint ptr %max_sh_per_se.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max_sh_per_se.i, align 4
  %cmp4.i = icmp ult i32 %inc30.i, %111
  br i1 %cmp4.i, label %for.inc29.i.for.cond6.preheader.i_crit_edge, label %for.inc29.i.for.inc32.i_crit_edge

for.inc29.i.for.inc32.i_crit_edge:                ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32.i

for.inc29.i.for.cond6.preheader.i_crit_edge:      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.preheader.i

for.inc32.i:                                      ; preds = %for.inc29.i.for.inc32.i_crit_edge, %for.cond1.preheader.i.for.inc32.i_crit_edge
  %inc33.i = add nuw i32 %se_idx.072.i, 1
  %112 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %config.i, align 8
  %cmp.i = icmp ult i32 %inc33.i, %113
  br i1 %cmp.i, label %for.inc32.i.for.cond1.preheader.i_crit_edge, label %for.inc32.i.for.end34.i_crit_edge

for.inc32.i.for.end34.i_crit_edge:                ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34.i

for.inc32.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i

for.end34.i:                                      ; preds = %for.inc32.i.for.end34.i_crit_edge, %gfx_v9_4_2_reset_ea_err_status.exit.for.end34.i_crit_edge
  %114 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx22.i58.i = getelementptr i32, ptr %115, i32 1
  %116 = ptrtoint ptr %arrayidx22.i58.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx22.i58.i, align 4
  %118 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %virt.i, align 8
  %120 = and i32 %119, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %120)
  %121 = icmp eq i32 %120, 4
  br i1 %121, label %if.then28.i63.i, label %for.end34.i.gfx_v9_4_2_reset_sq_timeout_status.exit_crit_edge

for.end34.i.gfx_v9_4_2_reset_sq_timeout_status.exit_crit_edge: ; preds = %for.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_reset_sq_timeout_status.exit

if.then28.i63.i:                                  ; preds = %for.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %115, align 4
  %124 = add i32 %117, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %123)
  %cmp49.i60.i = icmp eq i32 %124, %123
  %..i61.i = select i1 %cmp49.i60.i, i32 8258, i32 8259
  %add38.i62.i = add i32 %..i61.i, %117
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i62.i, i32 noundef -536870912, i32 noundef 0) #8
  br label %gfx_v9_4_2_reset_sq_timeout_status.exit

gfx_v9_4_2_reset_sq_timeout_status.exit:          ; preds = %if.then28.i63.i, %for.end34.i.gfx_v9_4_2_reset_sq_timeout_status.exit_crit_edge
  %add.i64.i = add i32 %117, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i64.i, i32 noundef -536870912, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i) #8
  br label %return

return:                                           ; preds = %gfx_v9_4_2_reset_sq_timeout_status.exit, %amdgpu_ras_is_supported.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v9_4_2_enable_watchdog_timer(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @amdgpu_watchdog_timer to i32))
  %0 = load i8, ptr @amdgpu_watchdog_timer, align 4, !range !585
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %shl = select i1 %tobool.not, i32 0, i32 64
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.amdgpu_watchdog_timer, ptr @amdgpu_watchdog_timer, i32 0, i32 1) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.amdgpu_watchdog_timer, ptr @amdgpu_watchdog_timer, i32 0, i32 1), align 4
  %2 = add i32 %1, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %2)
  %3 = icmp ult i32 %2, -35
  br i1 %3, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.287) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.amdgpu_watchdog_timer, ptr @amdgpu_watchdog_timer, i32 0, i32 1) to i32))
  store i32 35, ptr getelementptr inbounds (%struct.amdgpu_watchdog_timer, ptr @amdgpu_watchdog_timer, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.amdgpu_watchdog_timer, ptr @amdgpu_watchdog_timer, i32 0, i32 1) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.amdgpu_watchdog_timer, ptr @amdgpu_watchdog_timer, i32 0, i32 1), align 4
  %and5 = and i32 %6, 63
  %or6 = or i32 %and5, %shl
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #8
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp758.not = icmp eq i32 %8, 0
  br i1 %cmp758.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl7.i = shl i32 %i.059, 16
  %and8.i = and i32 %shl7.i, 16711680
  %data.2.i = or i32 %and8.i, 1610612736
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx22.i = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx22.i, align 4
  %13 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %virt.i, align 8
  %15 = and i32 %14, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %if.then28.i, label %for.body.gfx_v9_4_2_select_se_sh.exit_crit_edge

for.body.gfx_v9_4_2_select_se_sh.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_select_se_sh.exit

if.then28.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %10, align 4
  %19 = add i32 %12, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %18)
  %cmp49.i = icmp eq i32 %19, %18
  %..i = select i1 %cmp49.i, i32 8258, i32 8259
  %add38.i = add i32 %..i, %12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i, i32 noundef %data.2.i, i32 noundef 0) #8
  br label %gfx_v9_4_2_select_se_sh.exit

gfx_v9_4_2_select_se_sh.exit:                     ; preds = %if.then28.i, %for.body.gfx_v9_4_2_select_se_sh.exit_crit_edge
  %add.i = add i32 %12, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef %data.2.i, i32 noundef 0) #8
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt.i, align 8
  %and8 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %gfx_v9_4_2_select_se_sh.exit.cond.false_crit_edge, label %land.lhs.true10

gfx_v9_4_2_select_se_sh.exit.cond.false_crit_edge: ; preds = %gfx_v9_4_2_select_se_sh.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true10:                                  ; preds = %gfx_v9_4_2_select_se_sh.exit
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 4
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %land.lhs.true10.cond.false_crit_edge, label %land.lhs.true13

land.lhs.true10.cond.false_crit_edge:             ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg, align 4
  %tobool17.not = icmp eq ptr %25, null
  br i1 %tobool17.not, label %land.lhs.true13.cond.false_crit_edge, label %cond.true

land.lhs.true13.cond.false_crit_edge:             ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add = add i32 %29, 779
  tail call void %25(ptr noundef %adev, i32 noundef %add, i32 noundef %or6, i32 noundef 0, i32 noundef 1) #8
  br label %for.inc

cond.false:                                       ; preds = %land.lhs.true13.cond.false_crit_edge, %land.lhs.true10.cond.false_crit_edge, %gfx_v9_4_2_select_se_sh.exit.cond.false_crit_edge
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add28 = add i32 %33, 779
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add28, i32 noundef %or6, i32 noundef 0) #8
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %cond.true
  %inc = add nuw i32 %i.059, 1
  %34 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %config, align 8
  %cmp7 = icmp ult i32 %inc, %35
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %arrayidx.i49 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %36 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i49, align 8
  %arrayidx22.i50 = getelementptr i32, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx22.i50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx22.i50, align 4
  %virt.i51 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %40 = ptrtoint ptr %virt.i51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %virt.i51, align 8
  %42 = and i32 %41, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %if.then28.i55, label %for.end.gfx_v9_4_2_select_se_sh.exit57_crit_edge

for.end.gfx_v9_4_2_select_se_sh.exit57_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_select_se_sh.exit57

if.then28.i55:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %37, align 4
  %46 = add i32 %39, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %45)
  %cmp49.i52 = icmp eq i32 %46, %45
  %..i53 = select i1 %cmp49.i52, i32 8258, i32 8259
  %add38.i54 = add i32 %..i53, %39
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i54, i32 noundef -536870912, i32 noundef 0) #8
  br label %gfx_v9_4_2_select_se_sh.exit57

gfx_v9_4_2_select_se_sh.exit57:                   ; preds = %if.then28.i55, %for.end.gfx_v9_4_2_select_se_sh.exit57_crit_edge
  %add.i56 = add i32 %39, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i56, i32 noundef -536870912, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfx_v9_4_2_run_shader(ptr noundef %adev, ptr noundef %ring, ptr noundef %ib, ptr nocapture noundef readonly %shader_ptr, i32 noundef %shader_size, ptr nocapture noundef readonly %init_regs, i32 noundef %compute_dim_x, i64 noundef %wb_gpu_addr, i32 noundef %pattern, ptr noundef %fence_ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %shader_size, 511
  %add7 = and i32 %0, -256
  %1 = call ptr @memset(ptr %ib, i32 0, i32 24)
  %call = tail call i32 @amdgpu_ib_get(ptr noundef %adev, ptr noundef null, i32 noundef %add7, i32 noundef 2, ptr noundef %ib) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shader_size)
  %cmp2.not = icmp ult i32 %shader_size, 4
  br i1 %cmp2.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div1 = lshr i32 %shader_size, 2
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef %call) #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %shader_ptr, i32 %i.03
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr, align 8
  %add9 = add nuw nsw i32 %i.03, 64
  %arrayidx10 = getelementptr i32, ptr %7, i32 %add9
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %arrayidx10, align 4
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %div1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %9 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %length_dw, align 4
  %ptr14 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.end
  %i.14 = phi i32 [ 0, %for.end ], [ %inc37, %for.body13.for.body13_crit_edge ]
  %10 = ptrtoint ptr %ptr14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptr14, align 8
  %12 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length_dw, align 4
  %inc16 = add i32 %13, 1
  store i32 %inc16, ptr %length_dw, align 4
  %arrayidx17 = getelementptr i32, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1073646080, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr %struct.soc15_reg_entry, ptr %init_regs, i32 %i.14
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx18, align 4
  %inst = getelementptr %struct.soc15_reg_entry, ptr %init_regs, i32 %i.14, i32 1
  %17 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inst, align 4
  %arrayidx21 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %16, i32 %18
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx21, align 4
  %seg = getelementptr %struct.soc15_reg_entry, ptr %init_regs, i32 %i.14, i32 2
  %21 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %seg, align 4
  %arrayidx23 = getelementptr i32, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx23, align 4
  %reg_offset25 = getelementptr %struct.soc15_reg_entry, ptr %init_regs, i32 %i.14, i32 3
  %25 = ptrtoint ptr %reg_offset25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_offset25, align 4
  %add26 = add i32 %24, -11264
  %sub = add i32 %add26, %26
  %27 = load ptr, ptr %ptr14, align 8
  %28 = load i32, ptr %length_dw, align 4
  %inc29 = add i32 %28, 1
  store i32 %inc29, ptr %length_dw, align 4
  %arrayidx30 = getelementptr i32, ptr %27, i32 %28
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %arrayidx30, align 4
  %reg_value = getelementptr %struct.soc15_reg_entry, ptr %init_regs, i32 %i.14, i32 4
  %30 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_value, align 4
  %32 = load ptr, ptr %ptr14, align 8
  %33 = load i32, ptr %length_dw, align 4
  %inc34 = add i32 %33, 1
  store i32 %inc34, ptr %length_dw, align 4
  %arrayidx35 = getelementptr i32, ptr %32, i32 %33
  %34 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %arrayidx35, align 4
  %inc37 = add nuw nsw i32 %i.14, 1
  %exitcond5.not = icmp eq i32 %inc37, 15
  br i1 %exitcond5.not, label %for.end38, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

for.end38:                                        ; preds = %for.body13
  %gpu_addr39 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %35 = ptrtoint ptr %gpu_addr39 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %gpu_addr39, align 8
  %add40 = add i64 %36, 256
  %shr = lshr i64 %add40, 8
  %37 = ptrtoint ptr %ptr14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ptr14, align 8
  %39 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length_dw, align 4
  %inc43 = add i32 %40, 1
  store i32 %inc43, ptr %length_dw, align 4
  %arrayidx44 = getelementptr i32, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1073580544, ptr %arrayidx44, align 4
  %arrayidx46 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %42 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx46, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %sub50 = add i32 %45, -7668
  %46 = load ptr, ptr %ptr14, align 8
  %47 = load i32, ptr %length_dw, align 4
  %inc53 = add i32 %47, 1
  store i32 %inc53, ptr %length_dw, align 4
  %arrayidx54 = getelementptr i32, ptr %46, i32 %47
  %48 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub50, ptr %arrayidx54, align 4
  %conv56 = trunc i64 %shr to i32
  %49 = load ptr, ptr %ptr14, align 8
  %50 = load i32, ptr %length_dw, align 4
  %inc59 = add i32 %50, 1
  store i32 %inc59, ptr %length_dw, align 4
  %arrayidx60 = getelementptr i32, ptr %49, i32 %50
  %51 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv56, ptr %arrayidx60, align 4
  %shr61 = lshr i64 %add40, 40
  %conv63 = trunc i64 %shr61 to i32
  %52 = load ptr, ptr %ptr14, align 8
  %53 = load i32, ptr %length_dw, align 4
  %inc66 = add i32 %53, 1
  store i32 %inc66, ptr %length_dw, align 4
  %arrayidx67 = getelementptr i32, ptr %52, i32 %53
  %54 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv63, ptr %arrayidx67, align 4
  %55 = load ptr, ptr %ptr14, align 8
  %56 = load i32, ptr %length_dw, align 4
  %inc70 = add i32 %56, 1
  store i32 %inc70, ptr %length_dw, align 4
  %arrayidx71 = getelementptr i32, ptr %55, i32 %56
  %57 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1073515008, ptr %arrayidx71, align 4
  %58 = load ptr, ptr %arrayidx46, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %sub77 = add i32 %60, -7616
  %61 = load ptr, ptr %ptr14, align 8
  %62 = load i32, ptr %length_dw, align 4
  %inc80 = add i32 %62, 1
  store i32 %inc80, ptr %length_dw, align 4
  %arrayidx81 = getelementptr i32, ptr %61, i32 %62
  %63 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub77, ptr %arrayidx81, align 4
  %conv83 = trunc i64 %wb_gpu_addr to i32
  %64 = load ptr, ptr %ptr14, align 8
  %65 = load i32, ptr %length_dw, align 4
  %inc86 = add i32 %65, 1
  store i32 %inc86, ptr %length_dw, align 4
  %arrayidx87 = getelementptr i32, ptr %64, i32 %65
  %66 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv83, ptr %arrayidx87, align 4
  %shr88 = lshr i64 %wb_gpu_addr, 32
  %conv90 = trunc i64 %shr88 to i32
  %67 = load ptr, ptr %ptr14, align 8
  %68 = load i32, ptr %length_dw, align 4
  %inc93 = add i32 %68, 1
  store i32 %inc93, ptr %length_dw, align 4
  %arrayidx94 = getelementptr i32, ptr %67, i32 %68
  %69 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv90, ptr %arrayidx94, align 4
  %70 = load ptr, ptr %ptr14, align 8
  %71 = load i32, ptr %length_dw, align 4
  %inc97 = add i32 %71, 1
  store i32 %inc97, ptr %length_dw, align 4
  %arrayidx98 = getelementptr i32, ptr %70, i32 %71
  %72 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %pattern, ptr %arrayidx98, align 4
  %73 = load ptr, ptr %ptr14, align 8
  %74 = load i32, ptr %length_dw, align 4
  %inc101 = add i32 %74, 1
  store i32 %inc101, ptr %length_dw, align 4
  %arrayidx102 = getelementptr i32, ptr %73, i32 %74
  %75 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1073539840, ptr %arrayidx102, align 4
  %76 = load ptr, ptr %ptr14, align 8
  %77 = load i32, ptr %length_dw, align 4
  %inc105 = add i32 %77, 1
  store i32 %inc105, ptr %length_dw, align 4
  %arrayidx106 = getelementptr i32, ptr %76, i32 %77
  %78 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %compute_dim_x, ptr %arrayidx106, align 4
  %79 = load ptr, ptr %ptr14, align 8
  %80 = load i32, ptr %length_dw, align 4
  %inc109 = add i32 %80, 1
  store i32 %inc109, ptr %length_dw, align 4
  %arrayidx110 = getelementptr i32, ptr %79, i32 %80
  %81 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %arrayidx110, align 4
  %82 = load ptr, ptr %ptr14, align 8
  %83 = load i32, ptr %length_dw, align 4
  %inc113 = add i32 %83, 1
  store i32 %inc113, ptr %length_dw, align 4
  %arrayidx114 = getelementptr i32, ptr %82, i32 %83
  %84 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %arrayidx114, align 4
  %85 = load ptr, ptr %ptr14, align 8
  %86 = load i32, ptr %length_dw, align 4
  %inc117 = add i32 %86, 1
  store i32 %inc117, ptr %length_dw, align 4
  %arrayidx118 = getelementptr i32, ptr %85, i32 %86
  %87 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %arrayidx118, align 4
  %call119 = tail call i32 @amdgpu_ib_schedule(ptr noundef %ring, i32 noundef 1, ptr noundef %ib, ptr noundef null, ptr noundef %fence_ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %for.end38.cleanup_crit_edge, label %do.end124

for.end38.cleanup_crit_edge:                      ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end124:                                        ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.45, i32 noundef %call119) #11
  tail call void @amdgpu_ib_free(ptr noundef %adev, ptr noundef %ib, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end124, %for.end38.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call119, %do.end124 ], [ 0, %for.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfx_v9_4_2_wait_for_waves_assigned(ptr nocapture noundef readonly %adev, ptr nocapture noundef readonly %wb_ptr, i32 noundef %mask, i32 noundef %pattern, i32 noundef %num_wave, i1 noundef zeroext %wait) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %and = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.1 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %and.2 = and i32 %mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %and.3 = and i32 %mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %and.4 = and i32 %mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %and.5 = and i32 %mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  %and.6 = and i32 %mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %and.7 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %and.8 = and i32 %mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  %and.9 = and i32 %mask, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br label %do.body

do.body:                                          ; preds = %if.end24.do.body_crit_edge, %entry
  %loop.0 = phi i32 [ 0, %entry ], [ %inc25, %if.end24.do.body_crit_edge ]
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp59.not = icmp eq i32 %1, 0
  br i1 %cmp59.not, label %do.body.for.end21_crit_edge, label %do.body.for.cond1.preheader_crit_edge

do.body.for.cond1.preheader_crit_edge:            ; preds = %do.body
  br label %for.cond1.preheader

do.body.for.end21_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.cond1.preheader:                              ; preds = %for.inc19.for.cond1.preheader_crit_edge, %do.body.for.cond1.preheader_crit_edge
  %offset.062 = phi i32 [ %24, %for.inc19.for.cond1.preheader_crit_edge ], [ 0, %do.body.for.cond1.preheader_crit_edge ]
  %wave_cnt.061 = phi i32 [ %wave_cnt.4.9, %for.inc19.for.cond1.preheader_crit_edge ], [ 0, %do.body.for.cond1.preheader_crit_edge ]
  %se.060 = phi i32 [ %inc20, %for.inc19.for.cond1.preheader_crit_edge ], [ 0, %do.body.for.cond1.preheader_crit_edge ]
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc16.for.cond4.preheader_crit_edge, %for.cond1.preheader
  %offset.158 = phi i32 [ %offset.062, %for.cond1.preheader ], [ %23, %for.inc16.for.cond4.preheader_crit_edge ]
  %wave_cnt.157 = phi i32 [ %wave_cnt.061, %for.cond1.preheader ], [ %wave_cnt.4.9, %for.inc16.for.cond4.preheader_crit_edge ]
  %cu.056 = phi i32 [ 0, %for.cond1.preheader ], [ %inc17, %for.inc16.for.cond4.preheader_crit_edge ]
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %if.end.9.for.cond7.preheader_crit_edge, %for.cond4.preheader
  %offset.255 = phi i32 [ %offset.158, %for.cond4.preheader ], [ %22, %if.end.9.for.cond7.preheader_crit_edge ]
  %wave_cnt.254 = phi i32 [ %wave_cnt.157, %for.cond4.preheader ], [ %wave_cnt.4.9, %if.end.9.for.cond7.preheader_crit_edge ]
  %simd.053 = phi i32 [ 0, %for.cond4.preheader ], [ %inc14, %if.end.9.for.cond7.preheader_crit_edge ]
  br i1 %tobool.not, label %for.cond7.preheader.if.end_crit_edge, label %land.lhs.true

for.cond7.preheader.if.end_crit_edge:             ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i32, ptr %wb_ptr, i32 %offset.255
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pattern)
  %cmp10 = icmp eq i32 %3, %pattern
  %inc = zext i1 %cmp10 to i32
  %spec.select = add i32 %wave_cnt.254, %inc
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.cond7.preheader.if.end_crit_edge
  %wave_cnt.4 = phi i32 [ %wave_cnt.254, %for.cond7.preheader.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %land.lhs.true.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc11 = or i32 %offset.255, 1
  %arrayidx.1 = getelementptr i32, ptr %wb_ptr, i32 %inc11
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pattern)
  %cmp10.1 = icmp eq i32 %5, %pattern
  %inc.1 = zext i1 %cmp10.1 to i32
  %spec.select.1 = add i32 %wave_cnt.4, %inc.1
  br label %if.end.1

if.end.1:                                         ; preds = %land.lhs.true.1, %if.end.if.end.1_crit_edge
  %wave_cnt.4.1 = phi i32 [ %wave_cnt.4, %if.end.if.end.1_crit_edge ], [ %spec.select.1, %land.lhs.true.1 ]
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %land.lhs.true.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2

land.lhs.true.2:                                  ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %inc11.1 = add i32 %offset.255, 2
  %arrayidx.2 = getelementptr i32, ptr %wb_ptr, i32 %inc11.1
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pattern)
  %cmp10.2 = icmp eq i32 %7, %pattern
  %inc.2 = zext i1 %cmp10.2 to i32
  %spec.select.2 = add i32 %wave_cnt.4.1, %inc.2
  br label %if.end.2

if.end.2:                                         ; preds = %land.lhs.true.2, %if.end.1.if.end.2_crit_edge
  %wave_cnt.4.2 = phi i32 [ %wave_cnt.4.1, %if.end.1.if.end.2_crit_edge ], [ %spec.select.2, %land.lhs.true.2 ]
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %land.lhs.true.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.3

land.lhs.true.3:                                  ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %inc11.2 = add i32 %offset.255, 3
  %arrayidx.3 = getelementptr i32, ptr %wb_ptr, i32 %inc11.2
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %pattern)
  %cmp10.3 = icmp eq i32 %9, %pattern
  %inc.3 = zext i1 %cmp10.3 to i32
  %spec.select.3 = add i32 %wave_cnt.4.2, %inc.3
  br label %if.end.3

if.end.3:                                         ; preds = %land.lhs.true.3, %if.end.2.if.end.3_crit_edge
  %wave_cnt.4.3 = phi i32 [ %wave_cnt.4.2, %if.end.2.if.end.3_crit_edge ], [ %spec.select.3, %land.lhs.true.3 ]
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %land.lhs.true.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.4

land.lhs.true.4:                                  ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  %inc11.3 = add i32 %offset.255, 4
  %arrayidx.4 = getelementptr i32, ptr %wb_ptr, i32 %inc11.3
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %pattern)
  %cmp10.4 = icmp eq i32 %11, %pattern
  %inc.4 = zext i1 %cmp10.4 to i32
  %spec.select.4 = add i32 %wave_cnt.4.3, %inc.4
  br label %if.end.4

if.end.4:                                         ; preds = %land.lhs.true.4, %if.end.3.if.end.4_crit_edge
  %wave_cnt.4.4 = phi i32 [ %wave_cnt.4.3, %if.end.3.if.end.4_crit_edge ], [ %spec.select.4, %land.lhs.true.4 ]
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %land.lhs.true.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.5

land.lhs.true.5:                                  ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  %inc11.4 = add i32 %offset.255, 5
  %arrayidx.5 = getelementptr i32, ptr %wb_ptr, i32 %inc11.4
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %pattern)
  %cmp10.5 = icmp eq i32 %13, %pattern
  %inc.5 = zext i1 %cmp10.5 to i32
  %spec.select.5 = add i32 %wave_cnt.4.4, %inc.5
  br label %if.end.5

if.end.5:                                         ; preds = %land.lhs.true.5, %if.end.4.if.end.5_crit_edge
  %wave_cnt.4.5 = phi i32 [ %wave_cnt.4.4, %if.end.4.if.end.5_crit_edge ], [ %spec.select.5, %land.lhs.true.5 ]
  br i1 %tobool.not.6, label %if.end.5.if.end.6_crit_edge, label %land.lhs.true.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.6

land.lhs.true.6:                                  ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  %inc11.5 = add i32 %offset.255, 6
  %arrayidx.6 = getelementptr i32, ptr %wb_ptr, i32 %inc11.5
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %pattern)
  %cmp10.6 = icmp eq i32 %15, %pattern
  %inc.6 = zext i1 %cmp10.6 to i32
  %spec.select.6 = add i32 %wave_cnt.4.5, %inc.6
  br label %if.end.6

if.end.6:                                         ; preds = %land.lhs.true.6, %if.end.5.if.end.6_crit_edge
  %wave_cnt.4.6 = phi i32 [ %wave_cnt.4.5, %if.end.5.if.end.6_crit_edge ], [ %spec.select.6, %land.lhs.true.6 ]
  br i1 %tobool.not.7, label %if.end.6.if.end.7_crit_edge, label %land.lhs.true.7

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.7

land.lhs.true.7:                                  ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  %inc11.6 = add i32 %offset.255, 7
  %arrayidx.7 = getelementptr i32, ptr %wb_ptr, i32 %inc11.6
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %pattern)
  %cmp10.7 = icmp eq i32 %17, %pattern
  %inc.7 = zext i1 %cmp10.7 to i32
  %spec.select.7 = add i32 %wave_cnt.4.6, %inc.7
  br label %if.end.7

if.end.7:                                         ; preds = %land.lhs.true.7, %if.end.6.if.end.7_crit_edge
  %wave_cnt.4.7 = phi i32 [ %wave_cnt.4.6, %if.end.6.if.end.7_crit_edge ], [ %spec.select.7, %land.lhs.true.7 ]
  br i1 %tobool.not.8, label %if.end.7.if.end.8_crit_edge, label %land.lhs.true.8

if.end.7.if.end.8_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.8

land.lhs.true.8:                                  ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #10
  %inc11.7 = add i32 %offset.255, 8
  %arrayidx.8 = getelementptr i32, ptr %wb_ptr, i32 %inc11.7
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %pattern)
  %cmp10.8 = icmp eq i32 %19, %pattern
  %inc.8 = zext i1 %cmp10.8 to i32
  %spec.select.8 = add i32 %wave_cnt.4.7, %inc.8
  br label %if.end.8

if.end.8:                                         ; preds = %land.lhs.true.8, %if.end.7.if.end.8_crit_edge
  %wave_cnt.4.8 = phi i32 [ %wave_cnt.4.7, %if.end.7.if.end.8_crit_edge ], [ %spec.select.8, %land.lhs.true.8 ]
  br i1 %tobool.not.9, label %if.end.8.if.end.9_crit_edge, label %land.lhs.true.9

if.end.8.if.end.9_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.9

land.lhs.true.9:                                  ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #10
  %inc11.8 = add i32 %offset.255, 9
  %arrayidx.9 = getelementptr i32, ptr %wb_ptr, i32 %inc11.8
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %pattern)
  %cmp10.9 = icmp eq i32 %21, %pattern
  %inc.9 = zext i1 %cmp10.9 to i32
  %spec.select.9 = add i32 %wave_cnt.4.8, %inc.9
  br label %if.end.9

if.end.9:                                         ; preds = %land.lhs.true.9, %if.end.8.if.end.9_crit_edge
  %wave_cnt.4.9 = phi i32 [ %wave_cnt.4.8, %if.end.8.if.end.9_crit_edge ], [ %spec.select.9, %land.lhs.true.9 ]
  %22 = add i32 %offset.255, 10
  %inc14 = add nuw nsw i32 %simd.053, 1
  %exitcond.not = icmp eq i32 %inc14, 4
  br i1 %exitcond.not, label %for.inc16, label %if.end.9.for.cond7.preheader_crit_edge

if.end.9.for.cond7.preheader_crit_edge:           ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond7.preheader

for.inc16:                                        ; preds = %if.end.9
  %23 = add i32 %offset.158, 40
  %inc17 = add nuw nsw i32 %cu.056, 1
  %exitcond64.not = icmp eq i32 %inc17, 16
  br i1 %exitcond64.not, label %for.inc19, label %for.inc16.for.cond4.preheader_crit_edge

for.inc16.for.cond4.preheader_crit_edge:          ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader

for.inc19:                                        ; preds = %for.inc16
  %24 = add i32 %offset.062, 640
  %inc20 = add nuw i32 %se.060, 1
  %exitcond65.not = icmp eq i32 %inc20, %1
  br i1 %exitcond65.not, label %for.inc19.for.end21_crit_edge, label %for.inc19.for.cond1.preheader_crit_edge

for.inc19.for.cond1.preheader_crit_edge:          ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.inc19.for.end21_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.end21:                                        ; preds = %for.inc19.for.end21_crit_edge, %do.body.for.end21_crit_edge
  %wave_cnt.0.lcssa = phi i32 [ 0, %do.body.for.end21_crit_edge ], [ %wave_cnt.4.9, %for.inc19.for.end21_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wave_cnt.0.lcssa, i32 %num_wave)
  %cmp22 = icmp eq i32 %wave_cnt.0.lcssa, %num_wave
  br i1 %cmp22, label %for.end21.cleanup_crit_edge, label %if.end24

for.end21.cleanup_crit_edge:                      ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %for.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #8
  %inc25 = add nuw nsw i32 %loop.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %loop.0)
  %cmp26 = icmp ult i32 %loop.0, 1999
  %26 = and i1 %cmp26, %wait
  br i1 %26, label %if.end24.do.body_crit_edge, label %do.end30

if.end24.do.body_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.47, i32 noundef %wave_cnt.0.lcssa, i32 noundef %num_wave) #11
  tail call fastcc void @gfx_v9_4_2_log_wave_assignment(ptr noundef %adev, ptr noundef %wb_ptr)
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %for.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ -57, %do.end30 ], [ 0, %for.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ib_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_schedule(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v9_4_2_log_wave_assignment(ptr nocapture noundef readonly %adev, ptr nocapture noundef readonly %wb_ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 256) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfx_v9_4_2_log_wave_assignment.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gfx_v9_4_2_log_wave_assignment, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !590

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gfx_v9_4_2_log_wave_assignment.__UNIQUE_ID_ddebug343, ptr noundef %2, ptr noundef nonnull @.str.51) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp91.not = icmp eq i32 %4, 0
  br i1 %cmp91.not, label %do.end.for.end50_crit_edge, label %do.end.for.cond7.preheader_crit_edge

do.end.for.cond7.preheader_crit_edge:             ; preds = %do.end
  br label %for.cond7.preheader

do.end.for.end50_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.cond7.preheader:                              ; preds = %for.inc48.for.cond7.preheader_crit_edge, %do.end.for.cond7.preheader_crit_edge
  %se.093 = phi i32 [ %inc49, %for.inc48.for.cond7.preheader_crit_edge ], [ 0, %do.end.for.cond7.preheader_crit_edge ]
  %offset.092 = phi i32 [ %inc.9, %for.inc48.for.cond7.preheader_crit_edge ], [ 0, %do.end.for.cond7.preheader_crit_edge ]
  br label %for.body9

for.body9:                                        ; preds = %for.inc45.for.body9_crit_edge, %for.cond7.preheader
  %cu.090 = phi i32 [ 0, %for.cond7.preheader ], [ %inc46, %for.inc45.for.body9_crit_edge ]
  %offset.189 = phi i32 [ %offset.092, %for.cond7.preheader ], [ %inc.9, %for.inc45.for.body9_crit_edge ]
  %5 = call ptr @memset(ptr %call7.i, i32 0, i32 256)
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.52, i32 noundef %se.093, i32 noundef %cu.090)
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body9
  %simd.088 = phi i32 [ 0, %for.body9 ], [ %inc26, %for.body13.for.body13_crit_edge ]
  %size.087 = phi i32 [ %call10, %for.body9 ], [ %add24, %for.body13.for.body13_crit_edge ]
  %offset.286 = phi i32 [ %offset.189, %for.body9 ], [ %inc.9, %for.body13.for.body13_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %size.087
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 23296, ptr %add.ptr, align 1
  %add = add i32 %size.087, 1
  %add.ptr18 = getelementptr i8, ptr %call7.i, i32 %add
  %arrayidx = getelementptr i32, ptr %wb_ptr, i32 %offset.286
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr18, ptr noundef nonnull @.str.54, i32 noundef %8)
  %add20 = add i32 %call19, %add
  %inc = add i32 %offset.286, 1
  %add.ptr18.1 = getelementptr i8, ptr %call7.i, i32 %add20
  %arrayidx.1 = getelementptr i32, ptr %wb_ptr, i32 %inc
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1, align 4
  %call19.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr18.1, ptr noundef nonnull @.str.54, i32 noundef %10)
  %add20.1 = add i32 %call19.1, %add20
  %inc.1 = add i32 %offset.286, 2
  %add.ptr18.2 = getelementptr i8, ptr %call7.i, i32 %add20.1
  %arrayidx.2 = getelementptr i32, ptr %wb_ptr, i32 %inc.1
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.2, align 4
  %call19.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr18.2, ptr noundef nonnull @.str.54, i32 noundef %12)
  %add20.2 = add i32 %call19.2, %add20.1
  %inc.2 = add i32 %offset.286, 3
  %add.ptr18.3 = getelementptr i8, ptr %call7.i, i32 %add20.2
  %arrayidx.3 = getelementptr i32, ptr %wb_ptr, i32 %inc.2
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.3, align 4
  %call19.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr18.3, ptr noundef nonnull @.str.54, i32 noundef %14)
  %add20.3 = add i32 %call19.3, %add20.2
  %inc.3 = add i32 %offset.286, 4
  %add.ptr18.4 = getelementptr i8, ptr %call7.i, i32 %add20.3
  %arrayidx.4 = getelementptr i32, ptr %wb_ptr, i32 %inc.3
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.4, align 4
  %call19.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr18.4, ptr noundef nonnull @.str.54, i32 noundef %16)
  %add20.4 = add i32 %call19.4, %add20.3
  %inc.4 = add i32 %offset.286, 5
  %add.ptr18.5 = getelementptr i8, ptr %call7.i, i32 %add20.4
  %arrayidx.5 = getelementptr i32, ptr %wb_ptr, i32 %inc.4
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.5, align 4
  %call19.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr18.5, ptr noundef nonnull @.str.54, i32 noundef %18)
  %add20.5 = add i32 %call19.5, %add20.4
  %inc.5 = add i32 %offset.286, 6
  %add.ptr18.6 = getelementptr i8, ptr %call7.i, i32 %add20.5
  %arrayidx.6 = getelementptr i32, ptr %wb_ptr, i32 %inc.5
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.6, align 4
  %call19.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr18.6, ptr noundef nonnull @.str.54, i32 noundef %20)
  %add20.6 = add i32 %call19.6, %add20.5
  %inc.6 = add i32 %offset.286, 7
  %add.ptr18.7 = getelementptr i8, ptr %call7.i, i32 %add20.6
  %arrayidx.7 = getelementptr i32, ptr %wb_ptr, i32 %inc.6
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.7, align 4
  %call19.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr18.7, ptr noundef nonnull @.str.54, i32 noundef %22)
  %add20.7 = add i32 %call19.7, %add20.6
  %inc.7 = add i32 %offset.286, 8
  %add.ptr18.8 = getelementptr i8, ptr %call7.i, i32 %add20.7
  %arrayidx.8 = getelementptr i32, ptr %wb_ptr, i32 %inc.7
  %23 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.8, align 4
  %call19.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr18.8, ptr noundef nonnull @.str.54, i32 noundef %24)
  %add20.8 = add i32 %call19.8, %add20.7
  %inc.8 = add i32 %offset.286, 9
  %add.ptr18.9 = getelementptr i8, ptr %call7.i, i32 %add20.8
  %arrayidx.9 = getelementptr i32, ptr %wb_ptr, i32 %inc.8
  %25 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.9, align 4
  %call19.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr18.9, ptr noundef nonnull @.str.54, i32 noundef %26)
  %add20.9 = add i32 %call19.9, %add20.8
  %inc.9 = add i32 %offset.286, 10
  %add.ptr22 = getelementptr i8, ptr %call7.i, i32 %add20.9
  %27 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 1562386432, ptr %add.ptr22, align 1
  %add24 = add i32 %add20.9, 3
  %inc26 = add nuw nsw i32 %simd.088, 1
  %exitcond.not = icmp eq i32 %inc26, 4
  br i1 %exitcond.not, label %do.body28, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

do.body28:                                        ; preds = %for.body13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfx_v9_4_2_log_wave_assignment.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gfx_v9_4_2_log_wave_assignment, %if.then40)) #8
          to label %for.inc45 [label %if.then40], !srcloc !590

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gfx_v9_4_2_log_wave_assignment.__UNIQUE_ID_ddebug344, ptr noundef %29, ptr noundef nonnull @.str.56, ptr noundef nonnull %call7.i) #8
  br label %for.inc45

for.inc45:                                        ; preds = %if.then40, %do.body28
  %inc46 = add nuw nsw i32 %cu.090, 1
  %exitcond94.not = icmp eq i32 %inc46, 16
  br i1 %exitcond94.not, label %for.inc48, label %for.inc45.for.body9_crit_edge

for.inc45.for.body9_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.inc48:                                        ; preds = %for.inc45
  %inc49 = add nuw i32 %se.093, 1
  %30 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %config, align 8
  %cmp = icmp ult i32 %inc49, %31
  br i1 %cmp, label %for.inc48.for.cond7.preheader_crit_edge, label %for.inc48.for.end50_crit_edge

for.inc48.for.end50_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.inc48.for.cond7.preheader_crit_edge:          ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond7.preheader

for.end50:                                        ; preds = %for.inc48.for.end50_crit_edge, %do.end.for.end50_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end50, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_ras_trigger_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v9_4_2_query_sram_edc_count(ptr noundef %adev, ptr noundef %sec_count, ptr noundef %ded_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sec_count, null
  %tobool1.not = icmp eq ptr %ded_count, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %sec_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sec_count, align 4
  %1 = ptrtoint ptr %ded_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ded_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  br label %for.cond5.preheader.lr.ph

for.cond5.preheader.lr.ph:                        ; preds = %for.inc55.for.cond5.preheader.lr.ph_crit_edge, %if.end
  %i.032 = phi i32 [ 0, %if.end ], [ %inc56, %for.inc55.for.cond5.preheader.lr.ph_crit_edge ]
  %ded_cnt.031 = phi i32 [ 0, %if.end ], [ %ded_cnt.5, %for.inc55.for.cond5.preheader.lr.ph_crit_edge ]
  %sec_cnt.030 = phi i32 [ 0, %if.end ], [ %sec_cnt.6, %for.inc55.for.cond5.preheader.lr.ph_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.soc15_reg_entry], ptr @gfx_v9_4_2_edc_counter_regs, i32 0, i32 %i.032
  %se_num = getelementptr [32 x %struct.soc15_reg_entry], ptr @gfx_v9_4_2_edc_counter_regs, i32 0, i32 %i.032, i32 5
  %2 = ptrtoint ptr %se_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %se_num, align 4
  %instance = getelementptr [32 x %struct.soc15_reg_entry], ptr @gfx_v9_4_2_edc_counter_regs, i32 0, i32 %i.032, i32 6
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance, align 4
  %inst26 = getelementptr [32 x %struct.soc15_reg_entry], ptr @gfx_v9_4_2_edc_counter_regs, i32 0, i32 %i.032, i32 1
  %seg29 = getelementptr [32 x %struct.soc15_reg_entry], ptr @gfx_v9_4_2_edc_counter_regs, i32 0, i32 %i.032, i32 2
  %reg_offset32 = getelementptr [32 x %struct.soc15_reg_entry], ptr @gfx_v9_4_2_edc_counter_regs, i32 0, i32 %i.032, i32 3
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 1)
  %umax34 = call i32 @llvm.umax.i32(i32 %3, i32 1)
  br label %for.body8.lr.ph

for.body8.lr.ph:                                  ; preds = %for.inc52.for.body8.lr.ph_crit_edge, %for.cond5.preheader.lr.ph
  %j.026 = phi i32 [ 0, %for.cond5.preheader.lr.ph ], [ %inc53, %for.inc52.for.body8.lr.ph_crit_edge ]
  %ded_cnt.125 = phi i32 [ %ded_cnt.031, %for.cond5.preheader.lr.ph ], [ %ded_cnt.5, %for.inc52.for.body8.lr.ph_crit_edge ]
  %sec_cnt.124 = phi i32 [ %sec_cnt.030, %for.cond5.preheader.lr.ph ], [ %sec_cnt.6, %for.inc52.for.body8.lr.ph_crit_edge ]
  %shl7.i = shl i32 %j.026, 16
  %and8.i = and i32 %shl7.i, 16711680
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.lr.ph
  %k.020 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.inc.for.body8_crit_edge ]
  %ded_cnt.219 = phi i32 [ %ded_cnt.125, %for.body8.lr.ph ], [ %ded_cnt.5, %for.inc.for.body8_crit_edge ]
  %sec_cnt.218 = phi i32 [ %sec_cnt.124, %for.body8.lr.ph ], [ %sec_cnt.6, %for.inc.for.body8_crit_edge ]
  %and.i = and i32 %k.020, 255
  %data.1.i = or i32 %and.i, %and8.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx22.i = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx22.i, align 4
  %10 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %virt.i, align 8
  %12 = and i32 %11, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %if.then28.i, label %for.body8.gfx_v9_4_2_select_se_sh.exit_crit_edge

for.body8.gfx_v9_4_2_select_se_sh.exit_crit_edge: ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_select_se_sh.exit

if.then28.i:                                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %7, align 4
  %16 = add i32 %9, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %15)
  %cmp49.i = icmp eq i32 %16, %15
  %..i = select i1 %cmp49.i, i32 8258, i32 8259
  %add38.i = add i32 %..i, %9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i, i32 noundef %data.1.i, i32 noundef 0) #8
  br label %gfx_v9_4_2_select_se_sh.exit

gfx_v9_4_2_select_se_sh.exit:                     ; preds = %if.then28.i, %for.body8.gfx_v9_4_2_select_se_sh.exit_crit_edge
  %add.i = add i32 %9, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef %data.1.i, i32 noundef 0) #8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %inst26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inst26, align 4
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %18, i32 %20
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx15, align 4
  %23 = ptrtoint ptr %seg29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %seg29, align 4
  %arrayidx17 = getelementptr i32, ptr %22, i32 %24
  %25 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx17, align 4
  %27 = ptrtoint ptr %reg_offset32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_offset32, align 4
  %add = add i32 %28, %26
  br i1 %or.cond, label %gfx_v9_4_2_select_se_sh.exit.for.inc.sink.split_crit_edge, label %if.end20

gfx_v9_4_2_select_se_sh.exit.for.inc.sink.split_crit_edge: ; preds = %gfx_v9_4_2_select_se_sh.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.end20:                                         ; preds = %gfx_v9_4_2_select_se_sh.exit
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool34.not = icmp eq i32 %call, 0
  br i1 %tobool34.not, label %if.end20.for.inc_crit_edge, label %if.end36

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end36:                                         ; preds = %if.end20
  %29 = ptrtoint ptr %reg_offset32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_offset32, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end36
  %sec_cnt.3 = phi i32 [ %sec_cnt.218, %if.end36 ], [ %sec_cnt.5, %for.inc.i.for.body.i_crit_edge ]
  %ded_cnt.3 = phi i32 [ %ded_cnt.219, %if.end36 ], [ %ded_cnt.4, %for.inc.i.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.end36 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i3 = getelementptr [164 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_2_ras_fields, i32 0, i32 %i.01.i
  %reg_offset.i = getelementptr [164 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_2_ras_fields, i32 0, i32 %i.01.i, i32 4
  %31 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp2.not.i = icmp eq i32 %32, %30
  br i1 %cmp2.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %seg.i = getelementptr [164 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_2_ras_fields, i32 0, i32 %i.01.i, i32 3
  %33 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seg.i, align 4
  %35 = ptrtoint ptr %seg29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %seg29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp5.not.i = icmp eq i32 %34, %36
  br i1 %cmp5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %inst.i = getelementptr [164 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_2_ras_fields, i32 0, i32 %i.01.i, i32 2
  %37 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %inst.i, align 4
  %39 = ptrtoint ptr %inst26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %inst26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp9.not.i = icmp eq i32 %38, %40
  br i1 %cmp9.not.i, label %if.end.i, label %lor.lhs.false6.i.for.inc.i_crit_edge

lor.lhs.false6.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false6.i
  %sec_count_mask.i = getelementptr [164 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_2_ras_fields, i32 0, i32 %i.01.i, i32 5
  %41 = ptrtoint ptr %sec_count_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sec_count_mask.i, align 4
  %and.i4 = and i32 %42, %call
  %sec_count_shift.i = getelementptr [164 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_2_ras_fields, i32 0, i32 %i.01.i, i32 6
  %43 = ptrtoint ptr %sec_count_shift.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sec_count_shift.i, align 4
  %shr.i = lshr i32 %and.i4, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end14.i_crit_edge, label %do.end.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adev, align 8
  %47 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.77, ptr noundef %48, i32 noundef %j.026, i32 noundef %k.020, i32 noundef %shr.i) #11
  %add.i5 = add i32 %shr.i, %sec_cnt.3
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i, %if.end.i.if.end14.i_crit_edge
  %sec_cnt.4 = phi i32 [ %sec_cnt.3, %if.end.i.if.end14.i_crit_edge ], [ %add.i5, %do.end.i ]
  %ded_count_mask.i = getelementptr [164 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_2_ras_fields, i32 0, i32 %i.01.i, i32 7
  %49 = ptrtoint ptr %ded_count_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ded_count_mask.i, align 4
  %and16.i = and i32 %50, %call
  %ded_count_shift.i = getelementptr [164 x %struct.soc15_ras_field_entry], ptr @gfx_v9_4_2_ras_fields, i32 0, i32 %i.01.i, i32 8
  %51 = ptrtoint ptr %ded_count_shift.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ded_count_shift.i, align 4
  %shr18.i = lshr i32 %and16.i, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr18.i)
  %tobool19.not.i = icmp eq i32 %shr18.i, 0
  br i1 %tobool19.not.i, label %if.end14.i.for.inc.i_crit_edge, label %do.end23.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end23.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adev, align 8
  %55 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.80, ptr noundef %56, i32 noundef %j.026, i32 noundef %k.020, i32 noundef %shr18.i) #11
  %add27.i = add i32 %shr18.i, %ded_cnt.3
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end23.i, %if.end14.i.for.inc.i_crit_edge, %lor.lhs.false6.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %sec_cnt.5 = phi i32 [ %sec_cnt.4, %if.end14.i.for.inc.i_crit_edge ], [ %sec_cnt.4, %do.end23.i ], [ %sec_cnt.3, %lor.lhs.false6.i.for.inc.i_crit_edge ], [ %sec_cnt.3, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %sec_cnt.3, %for.body.i.for.inc.i_crit_edge ]
  %ded_cnt.4 = phi i32 [ %ded_cnt.3, %if.end14.i.for.inc.i_crit_edge ], [ %add27.i, %do.end23.i ], [ %ded_cnt.3, %lor.lhs.false6.i.for.inc.i_crit_edge ], [ %ded_cnt.3, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %ded_cnt.3, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 164
  br i1 %exitcond.not.i, label %gfx_v9_4_2_get_reg_error_count.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

gfx_v9_4_2_get_reg_error_count.exit:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx15, align 4
  %arrayidx48 = getelementptr i32, ptr %58, i32 %24
  %59 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx48, align 4
  %add51 = add i32 %60, %28
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %gfx_v9_4_2_get_reg_error_count.exit, %gfx_v9_4_2_select_se_sh.exit.for.inc.sink.split_crit_edge
  %add51.sink = phi i32 [ %add51, %gfx_v9_4_2_get_reg_error_count.exit ], [ %add, %gfx_v9_4_2_select_se_sh.exit.for.inc.sink.split_crit_edge ]
  %sec_cnt.6.ph = phi i32 [ %sec_cnt.5, %gfx_v9_4_2_get_reg_error_count.exit ], [ %sec_cnt.218, %gfx_v9_4_2_select_se_sh.exit.for.inc.sink.split_crit_edge ]
  %ded_cnt.5.ph = phi i32 [ %ded_cnt.4, %gfx_v9_4_2_get_reg_error_count.exit ], [ %ded_cnt.219, %gfx_v9_4_2_select_se_sh.exit.for.inc.sink.split_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add51.sink, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end20.for.inc_crit_edge
  %sec_cnt.6 = phi i32 [ %sec_cnt.218, %if.end20.for.inc_crit_edge ], [ %sec_cnt.6.ph, %for.inc.sink.split ]
  %ded_cnt.5 = phi i32 [ %ded_cnt.219, %if.end20.for.inc_crit_edge ], [ %ded_cnt.5.ph, %for.inc.sink.split ]
  %inc = add nuw i32 %k.020, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc52, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8

for.inc52:                                        ; preds = %for.inc
  %inc53 = add nuw i32 %j.026, 1
  %exitcond35.not = icmp eq i32 %inc53, %umax34
  br i1 %exitcond35.not, label %for.inc55, label %for.inc52.for.body8.lr.ph_crit_edge

for.inc52.for.body8.lr.ph_crit_edge:              ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.lr.ph

for.inc55:                                        ; preds = %for.inc52
  %inc56 = add nuw nsw i32 %i.032, 1
  %exitcond36.not = icmp eq i32 %inc56, 32
  br i1 %exitcond36.not, label %for.end57, label %for.inc55.for.cond5.preheader.lr.ph_crit_edge

for.inc55.for.cond5.preheader.lr.ph_crit_edge:    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond5.preheader.lr.ph

for.end57:                                        ; preds = %for.inc55
  br i1 %or.cond, label %for.end57.if.end64_crit_edge, label %if.then61

for.end57.if.end64_crit_edge:                     ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then61:                                        ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %sec_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sec_count, align 4
  %add62 = add i32 %62, %sec_cnt.6
  store i32 %add62, ptr %sec_count, align 4
  %63 = ptrtoint ptr %ded_count to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ded_count, align 4
  %add63 = add i32 %64, %ded_cnt.5
  store i32 %add63, ptr %ded_count, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %for.end57.if.end64_crit_edge
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx22.i7 = getelementptr i32, ptr %66, i32 1
  %67 = ptrtoint ptr %arrayidx22.i7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx22.i7, align 4
  %69 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %virt.i, align 8
  %71 = and i32 %70, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %71)
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %if.then28.i12, label %if.end64.gfx_v9_4_2_select_se_sh.exit14_crit_edge

if.end64.gfx_v9_4_2_select_se_sh.exit14_crit_edge: ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %gfx_v9_4_2_select_se_sh.exit14

if.then28.i12:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %66, align 4
  %75 = add i32 %68, 8670
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %74)
  %cmp49.i9 = icmp eq i32 %75, %74
  %..i10 = select i1 %cmp49.i9, i32 8258, i32 8259
  %add38.i11 = add i32 %..i10, %68
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add38.i11, i32 noundef -536870912, i32 noundef 0) #8
  br label %gfx_v9_4_2_select_se_sh.exit14

gfx_v9_4_2_select_se_sh.exit14:                   ; preds = %if.then28.i12, %if.end64.gfx_v9_4_2_select_se_sh.exit14_crit_edge
  %add.i13 = add i32 %68, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i13, i32 noundef -536870912, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v9_4_2_query_utc_edc_count(ptr noundef %adev, ptr noundef %sec_count, ptr noundef %ded_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sec_count, null
  %tobool1.not = icmp eq ptr %ded_count, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %sec_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sec_count, align 4
  %1 = ptrtoint ptr %ded_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ded_count, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc68.for.body_crit_edge, %for.body.preheader
  %i.06 = phi i32 [ %inc69, %for.inc68.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06
  %num_banks = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 1
  %2 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_banks, align 4
  %num_ways = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 2
  %4 = ptrtoint ptr %num_ways to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ways, align 4
  %mul = mul i32 %5, %3
  %num_mem_blocks = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 3
  %6 = ptrtoint ptr %num_mem_blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_mem_blocks, align 4
  %mul2 = mul i32 %mul, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul2)
  %cmp43.not = icmp eq i32 %mul2, 0
  br i1 %cmp43.not, label %for.body.for.inc68_crit_edge, label %for.body5.lr.ph

for.body.for.inc68_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc68

for.body5.lr.ph:                                  ; preds = %for.body
  %idx_reg = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 4
  %inst = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 4, i32 1
  %seg = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 4, i32 2
  %reg_offset12 = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 4, i32 3
  %data_reg30 = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 5
  %inst34 = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 5, i32 1
  %seg37 = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 5, i32 2
  %reg_offset40 = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 5, i32 3
  %sec_count_mask = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 6
  %sec_count_shift = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 7
  %ded_count_mask = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 8
  %ded_count_shift = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 9
  %clear62 = getelementptr [6 x %struct.gfx_v9_4_2_utc_block], ptr @gfx_v9_4_2_utc_blocks, i32 0, i32 %i.06, i32 10
  %8 = ptrtoint ptr %idx_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx_reg, align 4
  %10 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inst, align 4
  %arrayidx8 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %9, i32 %11
  %12 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seg, align 4
  %14 = ptrtoint ptr %reg_offset12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_offset12, align 4
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body5.lr.ph
  %j.04 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.inc.for.body5_crit_edge ]
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr i32, ptr %17, i32 %13
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %add = add i32 %15, %19
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %j.04, i32 noundef 0) #8
  %20 = ptrtoint ptr %data_reg30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_reg30, align 4
  %22 = ptrtoint ptr %inst34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %inst34, align 4
  %arrayidx21 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %21, i32 %23
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx21, align 4
  %26 = ptrtoint ptr %seg37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %seg37, align 4
  %arrayidx24 = getelementptr i32, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx24, align 4
  %30 = ptrtoint ptr %reg_offset40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_offset40, align 4
  %add27 = add i32 %31, %29
  br i1 %or.cond, label %if.then15, label %if.end28

if.then15:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %clear62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clear62, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27, i32 noundef %33, i32 noundef 0) #8
  br label %for.inc

if.end28:                                         ; preds = %for.body5
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool42.not = icmp eq i32 %call, 0
  br i1 %tobool42.not, label %if.end28.for.inc_crit_edge, label %if.end44

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end44:                                         ; preds = %if.end28
  %34 = ptrtoint ptr %sec_count_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sec_count_mask, align 4
  %and = and i32 %35, %call
  %36 = ptrtoint ptr %sec_count_shift to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sec_count_shift, align 4
  %shr = lshr i32 %and, %37
  %38 = ptrtoint ptr %sec_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sec_count, align 4
  %add45 = add i32 %39, %shr
  store i32 %add45, ptr %sec_count, align 4
  %40 = ptrtoint ptr %ded_count_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ded_count_mask, align 4
  %and46 = and i32 %41, %call
  %42 = ptrtoint ptr %ded_count_shift to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ded_count_shift, align 4
  %shr47 = lshr i32 %and46, %43
  %44 = ptrtoint ptr %ded_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ded_count, align 4
  %add48 = add i32 %45, %shr47
  store i32 %add48, ptr %ded_count, align 4
  %46 = ptrtoint ptr %data_reg30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_reg30, align 4
  %48 = ptrtoint ptr %inst34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %inst34, align 4
  %arrayidx55 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %47, i32 %49
  %50 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx55, align 4
  %52 = ptrtoint ptr %seg37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %seg37, align 4
  %arrayidx58 = getelementptr i32, ptr %51, i32 %53
  %54 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx58, align 4
  %56 = ptrtoint ptr %reg_offset40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reg_offset40, align 4
  %add61 = add i32 %57, %55
  %58 = ptrtoint ptr %clear62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %clear62, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add61, i32 noundef %59, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool63.not = icmp eq i32 %shr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr47)
  %tobool65.not = icmp eq i32 %shr47, 0
  %or.cond2 = select i1 %tobool63.not, i1 %tobool65.not, i1 false
  br i1 %or.cond2, label %if.end44.for.inc_crit_edge, label %if.then66

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then66:                                        ; preds = %if.end44
  %60 = ptrtoint ptr %num_mem_blocks to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_mem_blocks, align 4
  %.frozen = freeze i32 %61
  %div.i = udiv i32 %j.04, %.frozen
  %62 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %j.04, %62
  %63 = ptrtoint ptr %num_ways to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_ways, align 4
  %rem2.i = urem i32 %div.i, %64
  %mul.i = mul i32 %64, %61
  %div5.i = udiv i32 %j.04, %mul.i
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.289)
  switch i32 %66, label %if.then66.for.inc_crit_edge [
    i32 0, label %do.end.i
    i32 1, label %do.end9.i
    i32 2, label %do.end15.i
    i32 3, label %do.end21.i
    i32 4, label %do.end26.i
    i32 5, label %do.end31.i
  ]

if.then66.for.inc_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adev, align 8
  %arrayidx.i = getelementptr [2 x ptr], ptr @gfx_v9_4_2_log_utc_edc_count.vml2_way_str, i32 0, i32 %rem2.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.244, i32 noundef %div5.i, ptr noundef %71, i32 noundef %rem.i.decomposed, i32 noundef %shr, i32 noundef %shr47) #11
  br label %for.inc

do.end9.i:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adev, align 8
  %arrayidx11.i = getelementptr [10 x ptr], ptr @vml2_walker_mems, i32 0, i32 %div5.i
  %74 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx11.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.247, ptr noundef %75, i32 noundef %shr, i32 noundef %shr47) #11
  br label %for.inc

do.end15.i:                                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adev, align 8
  %arrayidx17.i = getelementptr [2 x ptr], ptr @gfx_v9_4_2_log_utc_edc_count.utcl2_rounter_str, i32 0, i32 %rem.i.decomposed
  %78 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx17.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.250, i32 noundef %div5.i, ptr noundef %79, i32 noundef %shr, i32 noundef %shr47) #11
  br label %for.inc

do.end21.i:                                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.253, i32 noundef %div5.i, i32 noundef %rem2.i, i32 noundef %shr, i32 noundef %shr47) #11
  br label %for.inc

do.end26.i:                                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.256, i32 noundef %div5.i, i32 noundef %rem2.i, i32 noundef %rem.i.decomposed, i32 noundef %shr, i32 noundef %shr47) #11
  br label %for.inc

do.end31.i:                                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.259, i32 noundef %div5.i, i32 noundef %rem2.i, i32 noundef %rem.i.decomposed, i32 noundef %shr, i32 noundef %shr47) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end31.i, %do.end26.i, %do.end21.i, %do.end15.i, %do.end9.i, %do.end.i, %if.then66.for.inc_crit_edge, %if.end44.for.inc_crit_edge, %if.end28.for.inc_crit_edge, %if.then15
  %inc = add nuw i32 %j.04, 1
  %exitcond.not = icmp eq i32 %inc, %mul2
  br i1 %exitcond.not, label %for.inc.for.inc68_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

for.inc.for.inc68_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc68

for.inc68:                                        ; preds = %for.inc.for.inc68_crit_edge, %for.body.for.inc68_crit_edge
  %inc69 = add nuw nsw i32 %i.06, 1
  %exitcond8.not = icmp eq i32 %inc69, 6
  br i1 %exitcond8.not, label %for.end70, label %for.inc68.for.body_crit_edge

for.inc68.for.body_crit_edge:                     ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end70:                                        ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wave_read_ind(ptr noundef %adev, i32 noundef %simd, i32 noundef %wave, i32 noundef %address) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 888
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %6 = and i32 %5, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx11 = getelementptr i32, ptr %1, i32 1
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11, align 4
  %add12 = add i32 %9, 8256
  %add17 = add i32 %9, 8257
  %add22 = add i32 %9, 19660
  %shl23 = shl i32 %simd, 4
  %shl24 = shl i32 %address, 16
  %or = or i32 %shl23, %wave
  %or25 = or i32 %or, %shl24
  %or26 = or i32 %or25, 8192
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add12, i32 noundef %or26, i32 noundef 0) #8
  %or27 = or i32 %add, -2147483648
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17, i32 noundef %or27, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22, i32 noundef 1, i32 noundef 0) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then
  %i.0106 = phi i32 [ 0, %if.then ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool29.not = icmp sgt i32 %call, -1
  br i1 %tobool29.not, label %for.body.do.end45_crit_edge, label %for.inc

for.body.do.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

for.inc:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #8
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, 50000
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, i32 noundef %add) #11
  br label %do.end45

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl38 = shl i32 %simd, 4
  %shl40 = shl i32 %address, 16
  %or39 = or i32 %shl38, %wave
  %or41 = or i32 %or39, %shl40
  %or42 = or i32 %or41, 8192
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %or42, i32 noundef 0) #8
  br label %do.end45

do.end45:                                         ; preds = %if.else, %do.end, %for.body.do.end45_crit_edge
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %virt, align 8
  %and50 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.end45.cond.false_crit_edge, label %land.lhs.true52

do.end45.cond.false_crit_edge:                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true52:                                  ; preds = %do.end45
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 4
  %tobool53.not = icmp eq ptr %14, null
  br i1 %tobool53.not, label %land.lhs.true52.cond.false_crit_edge, label %land.lhs.true54

land.lhs.true52.cond.false_crit_edge:             ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true54:                                  ; preds = %land.lhs.true52
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sriov_rreg, align 4
  %tobool58.not = icmp eq ptr %16, null
  br i1 %tobool58.not, label %land.lhs.true54.cond.false_crit_edge, label %cond.true

land.lhs.true54.cond.false_crit_edge:             ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add67 = add i32 %20, 889
  %call68 = tail call i32 %16(ptr noundef %adev, i32 noundef %add67, i32 noundef 0, i32 noundef 1) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true54.cond.false_crit_edge, %land.lhs.true52.cond.false_crit_edge, %do.end45.cond.false_crit_edge
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add73 = add i32 %24, 889
  %call74 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add73, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call68, %cond.true ], [ %call74, %cond.false ]
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 294)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 294)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !94, !96, !98, !100, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !134, !136, !138, !140, !141, !142, !144, !145, !147, !149, !150, !151, !152, !154, !155, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !491, !492, !493, !495, !496, !497, !499, !500, !501, !503, !504, !505, !507, !508, !509, !511, !512, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !538, !539, !540, !542, !544, !545, !546, !547, !549, !550, !551, !553, !554, !555, !557, !558, !559, !560, !562, !563, !564, !565, !567, !568, !569, !570, !572, !573, !574}
!llvm.module.flags = !{!575, !576, !577, !578, !579, !580, !581, !582}
!llvm.ident = !{!583}

!0 = !{ptr @vgpr_init_regs_aldebaran, !1, !"vgpr_init_regs_aldebaran", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 191, i32 30}
!2 = !{ptr @sgpr112_init_regs_aldebaran, !3, !"sgpr112_init_regs_aldebaran", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 245, i32 30}
!4 = !{ptr @sgpr96_init_regs_aldebaran, !5, !"sgpr96_init_regs_aldebaran", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 287, i32 30}
!6 = !{ptr @sgpr64_init_regs_aldebaran, !7, !"sgpr64_init_regs_aldebaran", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 328, i32 30}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 744, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @gfx_v9_4_2_init_golden_registers._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @gfx_v9_4_2_init_golden_registers._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @gfx_v9_4_2_ras_funcs, !17, !"gfx_v9_4_2_ras_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1934, i32 35}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 510, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 525, i32 3}
!26 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 535, i32 3}
!30 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 550, i32 3}
!34 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 559, i32 3}
!38 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 569, i32 3}
!42 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 575, i32 3}
!46 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry.23, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 590, i32 3}
!50 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 600, i32 3}
!54 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 609, i32 3}
!58 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 626, i32 3}
!62 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry.35, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.38, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 628, i32 3}
!67 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry.39, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @gfx_v9_4_2_do_sgprs_init._entry_ptr.41, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 368, i32 3}
!71 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @gfx_v9_4_2_run_shader._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @gfx_v9_4_2_run_shader._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 414, i32 3}
!76 = !{ptr @gfx_v9_4_2_run_shader._entry.44, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @gfx_v9_4_2_run_shader._entry_ptr.46, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @sgpr112_init_compute_shader_aldebaran, !79, !"sgpr112_init_compute_shader_aldebaran", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 219, i32 18}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 482, i32 2}
!82 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @gfx_v9_4_2_wait_for_waves_assigned._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @gfx_v9_4_2_wait_for_waves_assigned._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 431, i32 2}
!87 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @gfx_v9_4_2_log_wave_assignment.__UNIQUE_ID_ddebug343, !86, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 436, i32 24}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 438, i32 33}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 440, i32 34}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 443, i32 33}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 445, i32 4}
!100 = !{ptr @gfx_v9_4_2_log_wave_assignment.__UNIQUE_ID_ddebug344, !99, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!101 = !{ptr @sgpr96_init_compute_shader_aldebaran, !102, !"sgpr96_init_compute_shader_aldebaran", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 263, i32 18}
!103 = !{ptr @sgpr64_init_compute_shader_aldebaran, !104, !"sgpr64_init_compute_shader_aldebaran", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 310, i32 18}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 653, i32 3}
!107 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 668, i32 3}
!112 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry.59, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr.61, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 675, i32 3}
!116 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry.62, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr.64, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 685, i32 3}
!120 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry.65, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr.67, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 696, i32 3}
!124 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry.68, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr.70, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.72, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 698, i32 3}
!128 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry.71, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @gfx_v9_4_2_do_vgprs_init._entry_ptr.73, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @vgpr_init_compute_shader_aldebaran, !131, !"vgpr_init_compute_shader_aldebaran", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 93, i32 18}
!132 = !{ptr @golden_settings_gc_9_4_2_alde, !133, !"golden_settings_gc_9_4_2_alde", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 81, i32 38}
!134 = !{ptr @golden_settings_gc_9_4_2_alde_die_0, !135, !"golden_settings_gc_9_4_2_alde_die_0", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 63, i32 38}
!136 = !{ptr @golden_settings_gc_9_4_2_alde_die_1, !137, !"golden_settings_gc_9_4_2_alde_die_1", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 72, i32 38}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h", i32 573, i32 3}
!140 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h", i32 592, i32 3}
!144 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @gfx_v9_4_2_edc_counter_regs, !146, !"gfx_v9_4_2_edc_counter_regs", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 796, i32 37}
!147 = !{ptr @.str.77, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1467, i32 4}
!149 = !{ptr @.str.78, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @gfx_v9_4_2_get_reg_error_count._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @gfx_v9_4_2_get_reg_error_count._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.80, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1477, i32 4}
!154 = !{ptr @gfx_v9_4_2_get_reg_error_count._entry.79, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @gfx_v9_4_2_get_reg_error_count._entry_ptr.81, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.82, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 875, i32 4}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 878, i32 4}
!160 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 881, i32 4}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 886, i32 4}
!164 = !{ptr @.str.86, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 889, i32 4}
!166 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 892, i32 4}
!168 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 895, i32 4}
!170 = !{ptr @.str.89, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 899, i32 4}
!172 = !{ptr @.str.90, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 903, i32 4}
!174 = !{ptr @.str.91, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 907, i32 4}
!176 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 913, i32 4}
!178 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 916, i32 4}
!180 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 919, i32 4}
!182 = !{ptr @.str.95, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 922, i32 4}
!184 = !{ptr @.str.96, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 925, i32 4}
!186 = !{ptr @.str.97, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 928, i32 4}
!188 = !{ptr @.str.98, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 932, i32 4}
!190 = !{ptr @.str.99, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 936, i32 4}
!192 = !{ptr @.str.100, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 940, i32 4}
!194 = !{ptr @.str.101, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 944, i32 4}
!196 = !{ptr @.str.102, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 947, i32 4}
!198 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 950, i32 4}
!200 = !{ptr @.str.104, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 953, i32 4}
!202 = !{ptr @.str.105, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 956, i32 4}
!204 = !{ptr @.str.106, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 959, i32 4}
!206 = !{ptr @.str.107, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 962, i32 4}
!208 = !{ptr @.str.108, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 965, i32 4}
!210 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 968, i32 4}
!212 = !{ptr @.str.110, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 971, i32 4}
!214 = !{ptr @.str.111, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 974, i32 4}
!216 = !{ptr @.str.112, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 977, i32 4}
!218 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 982, i32 4}
!220 = !{ptr @.str.114, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 985, i32 4}
!222 = !{ptr @.str.115, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 988, i32 4}
!224 = !{ptr @.str.116, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 991, i32 4}
!226 = !{ptr @.str.117, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 994, i32 4}
!228 = !{ptr @.str.118, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 997, i32 4}
!230 = !{ptr @.str.119, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1000, i32 4}
!232 = !{ptr @.str.120, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1003, i32 4}
!234 = !{ptr @.str.121, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1006, i32 4}
!236 = !{ptr @.str.122, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1009, i32 4}
!238 = !{ptr @.str.123, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1012, i32 4}
!240 = !{ptr @.str.124, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1015, i32 4}
!242 = !{ptr @.str.125, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1018, i32 4}
!244 = !{ptr @.str.126, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1021, i32 4}
!246 = !{ptr @.str.127, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1024, i32 4}
!248 = !{ptr @.str.128, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1027, i32 4}
!250 = !{ptr @.str.129, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1032, i32 4}
!252 = !{ptr @.str.130, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1035, i32 4}
!254 = !{ptr @.str.131, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1038, i32 4}
!256 = !{ptr @.str.132, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1041, i32 4}
!258 = !{ptr @.str.133, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1046, i32 4}
!260 = !{ptr @.str.134, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1049, i32 4}
!262 = !{ptr @.str.135, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1052, i32 4}
!264 = !{ptr @.str.136, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1055, i32 4}
!266 = !{ptr @.str.137, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1058, i32 4}
!268 = !{ptr @.str.138, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1061, i32 4}
!270 = !{ptr @.str.139, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1064, i32 4}
!272 = !{ptr @.str.140, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1067, i32 4}
!274 = !{ptr @.str.141, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1072, i32 4}
!276 = !{ptr @.str.142, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1075, i32 4}
!278 = !{ptr @.str.143, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1078, i32 4}
!280 = !{ptr @.str.144, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1081, i32 4}
!282 = !{ptr @.str.145, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1084, i32 4}
!284 = !{ptr @.str.146, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1087, i32 4}
!286 = !{ptr @.str.147, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1092, i32 4}
!288 = !{ptr @.str.148, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1095, i32 4}
!290 = !{ptr @.str.149, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1098, i32 4}
!292 = !{ptr @.str.150, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1101, i32 4}
!294 = !{ptr @.str.151, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1104, i32 4}
!296 = !{ptr @.str.152, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1109, i32 4}
!298 = !{ptr @.str.153, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1112, i32 4}
!300 = !{ptr @.str.154, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1115, i32 4}
!302 = !{ptr @.str.155, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1118, i32 4}
!304 = !{ptr @.str.156, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1121, i32 4}
!306 = !{ptr @.str.157, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1124, i32 4}
!308 = !{ptr @.str.158, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1127, i32 4}
!310 = !{ptr @.str.159, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1130, i32 4}
!312 = !{ptr @.str.160, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1135, i32 4}
!314 = !{ptr @.str.161, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1138, i32 4}
!316 = !{ptr @.str.162, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1141, i32 4}
!318 = !{ptr @.str.163, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1144, i32 4}
!320 = !{ptr @.str.164, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1147, i32 4}
!322 = !{ptr @.str.165, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1150, i32 4}
!324 = !{ptr @.str.166, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1153, i32 4}
!326 = !{ptr @.str.167, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1158, i32 4}
!328 = !{ptr @.str.168, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1161, i32 4}
!330 = !{ptr @.str.169, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1164, i32 4}
!332 = !{ptr @.str.170, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1167, i32 4}
!334 = !{ptr @.str.171, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1170, i32 4}
!336 = !{ptr @.str.172, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1173, i32 4}
!338 = !{ptr @.str.173, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1176, i32 4}
!340 = !{ptr @.str.174, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1181, i32 4}
!342 = !{ptr @.str.175, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1186, i32 4}
!344 = !{ptr @.str.176, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1189, i32 4}
!346 = !{ptr @.str.177, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1192, i32 4}
!348 = !{ptr @.str.178, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1195, i32 4}
!350 = !{ptr @.str.179, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1198, i32 4}
!352 = !{ptr @.str.180, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1201, i32 4}
!354 = !{ptr @.str.181, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1204, i32 4}
!356 = !{ptr @.str.182, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1207, i32 4}
!358 = !{ptr @.str.183, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1210, i32 4}
!360 = !{ptr @.str.184, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1213, i32 4}
!362 = !{ptr @.str.185, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1216, i32 4}
!364 = !{ptr @.str.186, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1219, i32 4}
!366 = !{ptr @.str.187, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1222, i32 4}
!368 = !{ptr @.str.188, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1225, i32 4}
!370 = !{ptr @.str.189, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1228, i32 4}
!372 = !{ptr @.str.190, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1233, i32 4}
!374 = !{ptr @.str.191, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1236, i32 4}
!376 = !{ptr @.str.192, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1241, i32 4}
!378 = !{ptr @.str.193, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1244, i32 4}
!380 = !{ptr @.str.194, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1247, i32 4}
!382 = !{ptr @.str.195, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1250, i32 4}
!384 = !{ptr @.str.196, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1253, i32 4}
!386 = !{ptr @.str.197, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1256, i32 4}
!388 = !{ptr @.str.198, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1258, i32 4}
!390 = !{ptr @.str.199, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1260, i32 4}
!392 = !{ptr @.str.200, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1262, i32 4}
!394 = !{ptr @.str.201, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1264, i32 4}
!396 = !{ptr @.str.202, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1266, i32 4}
!398 = !{ptr @.str.203, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1268, i32 4}
!400 = !{ptr @.str.204, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1270, i32 4}
!402 = !{ptr @.str.205, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1272, i32 4}
!404 = !{ptr @.str.206, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1274, i32 4}
!406 = !{ptr @.str.207, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1278, i32 4}
!408 = !{ptr @.str.208, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1281, i32 4}
!410 = !{ptr @.str.209, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1284, i32 4}
!412 = !{ptr @.str.210, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1289, i32 4}
!414 = !{ptr @.str.211, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1292, i32 4}
!416 = !{ptr @.str.212, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1295, i32 4}
!418 = !{ptr @.str.213, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1298, i32 4}
!420 = !{ptr @.str.214, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1301, i32 4}
!422 = !{ptr @.str.215, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1304, i32 4}
!424 = !{ptr @.str.216, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1309, i32 4}
!426 = !{ptr @.str.217, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1312, i32 4}
!428 = !{ptr @.str.218, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1315, i32 4}
!430 = !{ptr @.str.219, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1318, i32 4}
!432 = !{ptr @.str.220, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1321, i32 4}
!434 = !{ptr @.str.221, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1324, i32 4}
!436 = !{ptr @.str.222, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1327, i32 4}
!438 = !{ptr @.str.223, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1329, i32 4}
!440 = !{ptr @.str.224, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1331, i32 4}
!442 = !{ptr @.str.225, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1333, i32 4}
!444 = !{ptr @.str.226, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1337, i32 4}
!446 = !{ptr @.str.227, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1340, i32 4}
!448 = !{ptr @.str.228, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1343, i32 4}
!450 = !{ptr @.str.229, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1346, i32 4}
!452 = !{ptr @.str.230, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1348, i32 4}
!454 = !{ptr @.str.231, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1350, i32 4}
!456 = !{ptr @.str.232, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1353, i32 4}
!458 = !{ptr @.str.233, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1356, i32 4}
!460 = !{ptr @.str.234, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1359, i32 4}
!462 = !{ptr @.str.235, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1376, i32 4}
!464 = !{ptr @.str.236, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1379, i32 4}
!466 = !{ptr @.str.237, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1382, i32 4}
!468 = !{ptr @.str.238, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1385, i32 4}
!470 = !{ptr @.str.239, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1388, i32 4}
!472 = !{ptr @gfx_v9_4_2_ras_fields, !473, !"gfx_v9_4_2_ras_fields", i1 false, i1 false}
!473 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 873, i32 43}
!474 = !{ptr @gfx_v9_4_2_utc_blocks, !475, !"gfx_v9_4_2_utc_blocks", i1 false, i1 false}
!475 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1406, i32 36}
!476 = !{ptr @.str.240, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1548, i32 40}
!478 = !{ptr @.str.241, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1548, i32 48}
!480 = !{ptr @gfx_v9_4_2_log_utc_edc_count.vml2_way_str, !481, !"vml2_way_str", i1 false, i1 false}
!481 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1548, i32 21}
!482 = !{ptr @.str.242, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1549, i32 45}
!484 = !{ptr @.str.243, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1549, i32 52}
!486 = !{ptr @gfx_v9_4_2_log_utc_edc_count.utcl2_rounter_str, !487, !"utcl2_rounter_str", i1 false, i1 false}
!487 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1549, i32 21}
!488 = !{ptr @.str.244, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1557, i32 3}
!490 = !{ptr @.str.245, !489, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry, !489, !"_entry", i1 false, i1 false}
!492 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr, !489, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.247, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1563, i32 3}
!495 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry.246, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr.248, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.250, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1567, i32 3}
!499 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry.249, !498, !"_entry", i1 false, i1 false}
!500 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr.251, !498, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.253, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1573, i32 3}
!503 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry.252, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr.254, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.256, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1579, i32 3}
!507 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry.255, !506, !"_entry", i1 false, i1 false}
!508 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr.257, !506, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.259, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1585, i32 3}
!511 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry.258, !510, !"_entry", i1 false, i1 false}
!512 = !{ptr @gfx_v9_4_2_log_utc_edc_count._entry_ptr.260, !510, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @.str.261, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1394, i32 2}
!515 = !{ptr @.str.262, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1395, i32 2}
!517 = !{ptr @.str.263, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1396, i32 2}
!519 = !{ptr @.str.264, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1397, i32 2}
!521 = !{ptr @.str.265, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1398, i32 2}
!523 = !{ptr @.str.266, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1399, i32 2}
!525 = !{ptr @.str.267, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1400, i32 2}
!527 = !{ptr @.str.268, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1401, i32 2}
!529 = !{ptr @.str.269, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1402, i32 2}
!531 = !{ptr @.str.270, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1403, i32 2}
!533 = !{ptr @vml2_walker_mems, !534, !"vml2_walker_mems", i1 false, i1 false}
!534 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1393, i32 27}
!535 = !{ptr @.str.271, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1742, i32 5}
!537 = !{ptr @.str.272, !536, !"<string literal>", i1 false, i1 false}
!538 = !{ptr @gfx_v9_4_2_query_ea_err_status._entry, !536, !"_entry", i1 false, i1 false}
!539 = !{ptr @gfx_v9_4_2_query_ea_err_status._entry_ptr, !536, !"_entry_ptr", i1 false, i1 false}
!540 = distinct !{null, !541, !"gfx_v9_4_2_ea_err_status_regs", i1 false, i1 false}
!541 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1445, i32 37}
!542 = !{ptr @.str.273, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1762, i32 3}
!544 = !{ptr @.str.274, !543, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @gfx_v9_4_2_query_utc_err_status._entry, !543, !"_entry", i1 false, i1 false}
!546 = !{ptr @gfx_v9_4_2_query_utc_err_status._entry_ptr, !543, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.276, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1768, i32 3}
!549 = !{ptr @gfx_v9_4_2_query_utc_err_status._entry.275, !548, !"_entry", i1 false, i1 false}
!550 = !{ptr @gfx_v9_4_2_query_utc_err_status._entry_ptr.277, !548, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.279, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1774, i32 3}
!553 = !{ptr @gfx_v9_4_2_query_utc_err_status._entry.278, !552, !"_entry", i1 false, i1 false}
!554 = !{ptr @gfx_v9_4_2_query_utc_err_status._entry_ptr.280, !552, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.281, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1896, i32 6}
!557 = !{ptr @.str.282, !556, !"<string literal>", i1 false, i1 false}
!558 = !{ptr @gfx_v9_4_2_query_sq_timeout_status._entry, !556, !"_entry", i1 false, i1 false}
!559 = !{ptr @gfx_v9_4_2_query_sq_timeout_status._entry_ptr, !556, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @.str.283, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1867, i32 3}
!562 = !{ptr @.str.284, !561, !"<string literal>", i1 false, i1 false}
!563 = !{ptr @gfx_v9_4_2_log_cu_timeout_status._entry, !561, !"_entry", i1 false, i1 false}
!564 = !{ptr @gfx_v9_4_2_log_cu_timeout_status._entry_ptr, !561, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @.str.285, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1828, i32 2}
!567 = !{ptr @.str.286, !566, !"<string literal>", i1 false, i1 false}
!568 = !{ptr @wave_read_ind._entry, !566, !"_entry", i1 false, i1 false}
!569 = !{ptr @wave_read_ind._entry_ptr, !566, !"_entry_ptr", i1 false, i1 false}
!570 = !{ptr @.str.287, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c", i32 1811, i32 3}
!572 = !{ptr @.str.288, !571, !"<string literal>", i1 false, i1 false}
!573 = !{ptr @gfx_v9_4_2_enable_watchdog_timer._entry, !571, !"_entry", i1 false, i1 false}
!574 = !{ptr @gfx_v9_4_2_enable_watchdog_timer._entry_ptr, !571, !"_entry_ptr", i1 false, i1 false}
!575 = !{i32 1, !"wchar_size", i32 2}
!576 = !{i32 1, !"min_enum_size", i32 4}
!577 = !{i32 8, !"branch-target-enforcement", i32 0}
!578 = !{i32 8, !"sign-return-address", i32 0}
!579 = !{i32 8, !"sign-return-address-all", i32 0}
!580 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!581 = !{i32 7, !"uwtable", i32 1}
!582 = !{i32 7, !"frame-pointer", i32 2}
!583 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!584 = !{!"auto-init"}
!585 = !{i8 0, i8 2}
!586 = !{i64 2148520915}
!587 = !{i64 2148435379, i64 2148435411, i64 2148435440, i64 2148435474, i64 2148435505, i64 2148435528}
!588 = !{!"branch_weights", i32 2000, i32 1}
!589 = !{i64 2149604540}
!590 = !{i64 2149006988, i64 2149006993, i64 2149007006, i64 2149007050, i64 2149007084, i64 2149007105}
