; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.amdgpu_umc_funcs = type { ptr }
%struct.amdgpu_umc_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmhub_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmhub_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_gfxhub_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_hdp_ras_funcs = type { ptr, ptr, ptr, ptr }
%struct.amdgpu_mca_funcs = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.soc15_reg_golden = type { i32, i32, i32, i32, i32, i32 }
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_smuio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_df_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.amdgpu_hdp_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.kiq_pm4_funcs = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_bo_va_mapping = type { ptr, %struct.list_head, %struct.rb_node, i64, i64, i64, i64, i64 }
%struct.amdgpu_bo_va = type { %struct.amdgpu_vm_bo_base, i32, ptr, %struct.list_head, %struct.list_head, i8, i8 }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gmc_v9_0\00", [23 x i8] zeroinitializer }, align 32
@gmc_v9_0_ip_funcs = dso_local constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str.1, ptr @gmc_v9_0_early_init, ptr @gmc_v9_0_late_init, ptr @gmc_v9_0_sw_init, ptr @gmc_v9_0_sw_fini, ptr null, ptr @gmc_v9_0_hw_init, ptr @gmc_v9_0_hw_fini, ptr null, ptr @gmc_v9_0_suspend, ptr @gmc_v9_0_resume, ptr @gmc_v9_0_is_idle, ptr @gmc_v9_0_wait_for_idle, ptr null, ptr null, ptr @gmc_v9_0_soft_reset, ptr null, ptr @gmc_v9_0_set_clockgating_state, ptr @gmc_v9_0_set_powergating_state, ptr @gmc_v9_0_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@gmc_v9_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 1, i32 9, i32 0, i32 0, ptr @gmc_v9_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@gmc_v9_0_gmc_funcs = internal constant { %struct.amdgpu_gmc_funcs, [60 x i8] } { %struct.amdgpu_gmc_funcs { ptr @gmc_v9_0_flush_gpu_tlb, ptr @gmc_v9_0_flush_gpu_tlb_pasid, ptr @gmc_v9_0_emit_flush_gpu_tlb, ptr @gmc_v9_0_emit_pasid_mapping, ptr null, ptr @gmc_v9_0_map_mtype, ptr @gmc_v9_0_get_vm_pde, ptr @gmc_v9_0_get_vm_pte, ptr @gmc_v9_0_get_vbios_fb_size }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Timeout waiting for sem acquire in VM flush!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Timeout waiting for VM flush ACK!\0A\00", [61 x i8] zeroinitializer }, align 32
@gmc_v9_0_flush_gpu_tlb_pasid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 938, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: wait for kiq fence error: %ld.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gmc_v9_0_flush_gpu_tlb_pasid\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gmc_v9_0_flush_gpu_tlb_pasid._entry_ptr = internal global ptr @gmc_v9_0_flush_gpu_tlb_pasid._entry, section ".printk_index", align 4
@gmc_v9_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gmc_v9_0_vm_fault_interrupt_state, ptr @gmc_v9_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@gmc_v9_0_ecc_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gmc_v9_0_ecc_interrupt_state, ptr @amdgpu_umc_process_ecc_irq }, [24 x i8] zeroinitializer }, align 32
@__func__.gmc_v9_0_process_interrupt = private unnamed_addr constant [27 x i8] c"gmc_v9_0_process_interrupt\00", align 1
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mmhub0\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mmhub1\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gfxhub0\00", [24 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.gmc_v9_0_process_interrupt, ptr @.str, i32 589, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"amdgpu: [%s] %s page fault (src_id:%u ring:%u vmid:%u pasid:%u, for process %s pid %d thread %s pid %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry_ptr = internal global ptr @gmc_v9_0_process_interrupt._entry, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"retry\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no-retry\00", [23 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.gmc_v9_0_process_interrupt, ptr @.str, i32 592, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"amdgpu:   in page starting at address 0x%016llx from IH client 0x%x (%s)\0A\00", [54 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry_ptr.16 = internal global ptr @gmc_v9_0_process_interrupt._entry.14, section ".printk_index", align 4
@soc15_ih_clientid_name = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gmc_v9_0_process_interrupt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.gmc_v9_0_process_interrupt, ptr @.str, i32 614, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: VM_L2_PROTECTION_FAULT_STATUS:0x%08X\0A\00", [50 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry_ptr.19 = internal global ptr @gmc_v9_0_process_interrupt._entry.17, section ".printk_index", align 4
@gmc_v9_0_process_interrupt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.gmc_v9_0_process_interrupt, ptr @.str, i32 619, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: \09 Faulty UTCL2 client ID: %s (0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry_ptr.22 = internal global ptr @gmc_v9_0_process_interrupt._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@gfxhub_client_ids = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [44 x i8] zeroinitializer }, align 32
@mmhub_client_ids_vega10 = internal constant { [47 x [2 x ptr]], [72 x i8] } { [47 x [2 x ptr]] [[2 x ptr] [ptr @.str.54, ptr @.str.54], [2 x ptr] [ptr @.str.55, ptr @.str.55], [2 x ptr] [ptr @.str.56, ptr @.str.56], [2 x ptr] [ptr @.str.57, ptr @.str.58], [2 x ptr] [ptr null, ptr @.str.57], [2 x ptr] [ptr null, ptr @.str.59], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.60, ptr null], [2 x ptr] [ptr @.str.61, ptr @.str.61], [2 x ptr] [ptr @.str.62, ptr @.str.63], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.64, ptr @.str.64], [2 x ptr] [ptr @.str.65, ptr @.str.65], [2 x ptr] [ptr @.str.66, ptr @.str.66], [2 x ptr] [ptr @.str.67, ptr @.str.67], [2 x ptr] [ptr @.str.68, ptr @.str.69], [2 x ptr] [ptr null, ptr @.str.68], [2 x ptr] [ptr null, ptr @.str.70], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.63, ptr @.str.62]], [72 x i8] zeroinitializer }, align 32
@mmhub_client_ids_vega12 = internal constant { [48 x [2 x ptr]], [96 x i8] } { [48 x [2 x ptr]] [[2 x ptr] [ptr @.str.54, ptr @.str.54], [2 x ptr] [ptr @.str.64, ptr @.str.64], [2 x ptr] [ptr @.str.65, ptr @.str.65], [2 x ptr] [ptr @.str.57, ptr @.str.58], [2 x ptr] [ptr null, ptr @.str.57], [2 x ptr] [ptr null, ptr @.str.59], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.60, ptr null], [2 x ptr] [ptr @.str.61, ptr @.str.61], [2 x ptr] [ptr @.str.62, ptr @.str.63], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.67, ptr @.str.67], [2 x ptr] [ptr @.str.66, ptr @.str.69], [2 x ptr] [ptr @.str.55, ptr @.str.66], [2 x ptr] [ptr @.str.56, ptr @.str.55], [2 x ptr] [ptr @.str.68, ptr @.str.56], [2 x ptr] [ptr null, ptr @.str.68], [2 x ptr] [ptr null, ptr @.str.70], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.63, ptr @.str.62]], [96 x i8] zeroinitializer }, align 32
@mmhub_client_ids_vega20 = internal constant { [47 x [2 x ptr]], [72 x i8] } { [47 x [2 x ptr]] [[2 x ptr] [ptr @.str.66, ptr @.str.66], [2 x ptr] [ptr @.str.67, ptr @.str.67], [2 x ptr] [ptr @.str.64, ptr @.str.69], [2 x ptr] [ptr @.str.65, ptr @.str.64], [2 x ptr] [ptr @.str.55, ptr @.str.65], [2 x ptr] [ptr @.str.71, ptr @.str.72], [2 x ptr] [ptr null, ptr @.str.71], [2 x ptr] [ptr null, ptr @.str.58], [2 x ptr] [ptr null, ptr @.str.59], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.61, ptr @.str.61], [2 x ptr] [ptr @.str.57, ptr @.str.57], [2 x ptr] [ptr @.str.63, ptr @.str.63], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.55, ptr @.str.55], [2 x ptr] [ptr @.str.56, ptr @.str.56], [2 x ptr] [ptr @.str.68, ptr @.str.70], [2 x ptr] [ptr @.str.54, ptr @.str.68], [2 x ptr] [ptr null, ptr @.str.54], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.60, ptr null], [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.62, ptr @.str.62]], [72 x i8] zeroinitializer }, align 32
@mmhub_client_ids_arcturus = internal constant { [385 x [2 x ptr]], [792 x i8] } { [385 x [2 x ptr]] [[2 x ptr] [ptr @.str.70, ptr @.str.70], [2 x ptr] [ptr @.str.59, ptr @.str.59], [2 x ptr] [ptr @.str.68, ptr @.str.68], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.57, ptr @.str.57], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.73, ptr @.str.73], [2 x ptr] [ptr @.str.74, ptr @.str.74], [2 x ptr] [ptr @.str.75, ptr @.str.75], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.76, ptr @.str.76], [2 x ptr] [ptr @.str.77, ptr @.str.77], [2 x ptr] [ptr @.str.78, ptr @.str.78], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.63, ptr @.str.63], [2 x ptr] [ptr @.str.62, ptr @.str.62], [2 x ptr] [ptr @.str.79, ptr @.str.79], [2 x ptr] [ptr @.str.80, ptr @.str.80], [2 x ptr] [ptr @.str.81, ptr @.str.81], [2 x ptr] [ptr @.str.82, ptr @.str.82], [2 x ptr] [ptr @.str.83, ptr @.str.83], [2 x ptr] [ptr @.str.84, ptr @.str.84], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.61, ptr @.str.61]], [792 x i8] zeroinitializer }, align 32
@mmhub_client_ids_raven = internal constant { [28 x [2 x ptr]], [32 x i8] } { [28 x [2 x ptr]] [[2 x ptr] [ptr @.str.68, ptr @.str.68], [2 x ptr] [ptr @.str.54, ptr @.str.54], [2 x ptr] [ptr @.str.74, ptr @.str.74], [2 x ptr] [ptr @.str.75, ptr @.str.75], [2 x ptr] [ptr @.str.57, ptr @.str.57], [2 x ptr] [ptr @.str.67, ptr @.str.59], [2 x ptr] [ptr null, ptr @.str.58], [2 x ptr] [ptr null, ptr @.str.67], [2 x ptr] [ptr null, ptr @.str.85], [2 x ptr] [ptr null, ptr @.str.86], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.60, ptr null], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.87, ptr null], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.61, ptr @.str.61], [2 x ptr] [ptr @.str.63, ptr @.str.63]], [32 x i8] zeroinitializer }, align 32
@mmhub_client_ids_renoir = internal constant { [31 x [2 x ptr]], [40 x i8] } { [31 x [2 x ptr]] [[2 x ptr] [ptr @.str.68, ptr @.str.68], [2 x ptr] [ptr @.str.54, ptr @.str.54], [2 x ptr] [ptr @.str.57, ptr @.str.57], [2 x ptr] [ptr null, ptr @.str.59], [2 x ptr] [ptr @.str.88, ptr null], [2 x ptr] [ptr @.str.89, ptr null], [2 x ptr] [ptr null, ptr @.str.58], [2 x ptr] [ptr null, ptr @.str.88], [2 x ptr] [ptr null, ptr @.str.89], [2 x ptr] [ptr null, ptr @.str.69], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.60, ptr null], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.87, ptr null], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.61, ptr @.str.61], [2 x ptr] [ptr @.str.63, ptr @.str.63], [2 x ptr] [ptr @.str.74, ptr @.str.74], [2 x ptr] [ptr @.str.75, ptr @.str.75], [2 x ptr] [ptr @.str.73, ptr @.str.73]], [40 x i8] zeroinitializer }, align 32
@mmhub_client_ids_aldebaran = internal constant { [385 x [2 x ptr]], [792 x i8] } { [385 x [2 x ptr]] [[2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.68, ptr @.str.68], [2 x ptr] [ptr @.str.54, ptr @.str.54], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.90, ptr @.str.90], [2 x ptr] [ptr @.str.91, ptr @.str.91], [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.92, ptr @.str.92], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.93, ptr @.str.93], [2 x ptr] [ptr @.str.94, ptr @.str.94], [2 x ptr] [ptr @.str.95, ptr @.str.95], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.76, ptr @.str.76], [2 x ptr] [ptr @.str.77, ptr @.str.77], [2 x ptr] [ptr @.str.96, ptr @.str.96], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.59, ptr @.str.59], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.57, ptr @.str.57], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.63, ptr @.str.63], [2 x ptr] [ptr @.str.62, ptr @.str.62], [2 x ptr] [ptr @.str.79, ptr @.str.79], [2 x ptr] [ptr @.str.80, ptr @.str.80], [2 x ptr] [ptr @.str.81, ptr @.str.81], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.61, ptr @.str.61]], [792 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.gmc_v9_0_process_interrupt, ptr @.str, i32 650, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry_ptr.25 = internal global ptr @gmc_v9_0_process_interrupt._entry.24, section ".printk_index", align 4
@gmc_v9_0_process_interrupt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.gmc_v9_0_process_interrupt, ptr @.str, i32 654, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: \09 MORE_FAULTS: 0x%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry_ptr.28 = internal global ptr @gmc_v9_0_process_interrupt._entry.26, section ".printk_index", align 4
@gmc_v9_0_process_interrupt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.gmc_v9_0_process_interrupt, ptr @.str, i32 657, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: \09 WALKER_ERROR: 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry_ptr.31 = internal global ptr @gmc_v9_0_process_interrupt._entry.29, section ".printk_index", align 4
@gmc_v9_0_process_interrupt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.gmc_v9_0_process_interrupt, ptr @.str, i32 660, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: \09 PERMISSION_FAULTS: 0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry_ptr.34 = internal global ptr @gmc_v9_0_process_interrupt._entry.32, section ".printk_index", align 4
@gmc_v9_0_process_interrupt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.gmc_v9_0_process_interrupt, ptr @.str, i32 663, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: \09 MAPPING_ERROR: 0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry_ptr.37 = internal global ptr @gmc_v9_0_process_interrupt._entry.35, section ".printk_index", align 4
@gmc_v9_0_process_interrupt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.gmc_v9_0_process_interrupt, ptr @.str, i32 664, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu: \09 RW: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@gmc_v9_0_process_interrupt._entry_ptr.40 = internal global ptr @gmc_v9_0_process_interrupt._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CB\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DB\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IA\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WD\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPF\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPC\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPG\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RLC\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCP\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SQC (inst)\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SQC (data)\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SQG\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PA\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP0\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UVD\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UVDU\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HDP\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBGU0\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XDP\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UTCL2\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OSS\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA1\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA0\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VCE0\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCE0U\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XDMA\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCE\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP1\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCEDWB\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBGU1\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UVD1U\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UVD1\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JPEG\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCN\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VCNU\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"JPEG1\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VCN1\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCN1U\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA2\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA3\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA4\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA5\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA6\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA7\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DCEDWB0\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DCEDWB1\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TLS\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCEDMC\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCEVGA\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DBGU_IO0\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DBGU_IO2\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MPIO\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"JPEG0\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VCN0\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCNU0\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCNU1\00", [26 x i8] zeroinitializer }, align 32
@ecc_umc_mcumc_ctrl_addrs = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 82880, i32 84928, i32 86976, i32 89024, i32 345024, i32 347072, i32 349120, i32 351168, i32 607168, i32 609216, i32 611264, i32 613312, i32 869312, i32 871360, i32 873408, i32 875456, i32 1131456, i32 1133504, i32 1135552, i32 1137600, i32 1393600, i32 1395648, i32 1397696, i32 1399744, i32 1655744, i32 1657792, i32 1659840, i32 1661888, i32 1917888, i32 1919936, i32 1921984, i32 1924032], [32 x i8] zeroinitializer }, align 32
@ecc_umc_mcumc_ctrl_mask_addrs = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 82912, i32 84960, i32 87008, i32 89056, i32 345056, i32 347104, i32 349152, i32 351200, i32 607200, i32 609248, i32 611296, i32 613344, i32 869344, i32 871392, i32 873440, i32 875488, i32 1131488, i32 1133536, i32 1135584, i32 1137632, i32 1393632, i32 1395680, i32 1397728, i32 1399776, i32 1655776, i32 1657824, i32 1659872, i32 1661920, i32 1917920, i32 1919968, i32 1922016, i32 1924064], [32 x i8] zeroinitializer }, align 32
@umc_v6_0_funcs = external dso_local constant %struct.amdgpu_umc_funcs, align 4
@umc_v6_1_channel_idx_tbl = external dso_local constant [8 x [4 x i32]], align 4
@umc_v6_1_ras_funcs = external dso_local constant %struct.amdgpu_umc_ras_funcs, align 4
@umc_v6_7_ras_funcs = external dso_local constant %struct.amdgpu_umc_ras_funcs, align 4
@umc_v6_7_channel_idx_tbl_first = external dso_local constant [4 x [8 x i32]], align 4
@umc_v6_7_channel_idx_tbl_second = external dso_local constant [4 x [8 x i32]], align 4
@mmhub_v9_4_funcs = external dso_local constant %struct.amdgpu_mmhub_funcs, align 4
@mmhub_v1_7_funcs = external dso_local constant %struct.amdgpu_mmhub_funcs, align 4
@mmhub_v1_0_funcs = external dso_local constant %struct.amdgpu_mmhub_funcs, align 4
@mmhub_v1_0_ras_funcs = external dso_local constant %struct.amdgpu_mmhub_ras_funcs, align 4
@mmhub_v9_4_ras_funcs = external dso_local constant %struct.amdgpu_mmhub_ras_funcs, align 4
@mmhub_v1_7_ras_funcs = external dso_local constant %struct.amdgpu_mmhub_ras_funcs, align 4
@gfxhub_v1_0_funcs = external dso_local constant %struct.amdgpu_gfxhub_funcs, align 4
@hdp_v4_0_ras_funcs = external dso_local constant %struct.amdgpu_hdp_ras_funcs, align 4
@mca_v3_0_funcs = external dso_local constant %struct.amdgpu_mca_funcs, align 4
@gmc_v9_0_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&adev->gmc.invalidate_lock\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_emu_mode = external dso_local local_unnamed_addr global i32, align 4
@gmc_v9_0_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str, i32 1638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014amdgpu: No suitable DMA available.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gmc_v9_0_sw_init\00", [47 x i8] zeroinitializer }, align 32
@gmc_v9_0_sw_init._entry_ptr = internal global ptr @gmc_v9_0_sw_init._entry, section ".printk_index", align 4
@amdgpu_gart_size = external dso_local local_unnamed_addr global i32, align 4
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VEGA10 PCIE GART already initialized\0A\00", [58 x i8] zeroinitializer }, align 32
@amdgpu_vm_fault_stop = external dso_local local_unnamed_addr global i32, align 4
@golden_settings_mmhub_1_0_0 = internal constant { [2 x %struct.soc15_reg_golden], [48 x i8] } { [2 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 11, i32 0, i32 0, i32 174, i32 7, i32 -27270918 }, %struct.soc15_reg_golden { i32 11, i32 0, i32 0, i32 578, i32 48, i32 1431655781 }], [48 x i8] zeroinitializer }, align 32
@golden_settings_athub_1_0_0 = internal constant { [2 x %struct.soc15_reg_golden], [48 x i8] } { [2 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 12, i32 0, i32 0, i32 210, i32 65280, i32 2048 }, %struct.soc15_reg_golden { i32 12, i32 0, i32 0, i32 211, i32 16711935, i32 524296 }], [48 x i8] zeroinitializer }, align 32
@gmc_v9_0_gart_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str, i32 1751, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: No VRAM object for PCIE GART.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gmc_v9_0_gart_enable\00", [43 x i8] zeroinitializer }, align 32
@gmc_v9_0_gart_enable._entry_ptr = internal global ptr @gmc_v9_0_gart_enable._entry, section ".printk_index", align 4
@gmc_v9_0_gart_enable._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str, i32 1772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[drm] PCIE GART of %uM enabled.\0A\00", [61 x i8] zeroinitializer }, align 32
@gmc_v9_0_gart_enable._entry_ptr.105 = internal global ptr @gmc_v9_0_gart_enable._entry.103, section ".printk_index", align 4
@gmc_v9_0_gart_enable._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[drm] PDB0 located at 0x%016llX\0A\00", [61 x i8] zeroinitializer }, align 32
@gmc_v9_0_gart_enable._entry_ptr.108 = internal global ptr @gmc_v9_0_gart_enable._entry.106, section ".printk_index", align 4
@gmc_v9_0_gart_enable._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.102, ptr @.str, i32 1777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] PTB located at 0x%016llX\0A\00", [62 x i8] zeroinitializer }, align 32
@gmc_v9_0_gart_enable._entry_ptr.111 = internal global ptr @gmc_v9_0_gart_enable._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"For SRIOV client, shouldn't do anything.\0A\00", [54 x i8] zeroinitializer }, align 32
@switch.table.gmc_v9_0_early_init = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @mmhub_v1_0_ras_funcs, ptr @mmhub_v9_4_ras_funcs, ptr @mmhub_v1_7_ras_funcs], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 23]
@__sancov_gen_cov_switch_values.113 = internal global [6 x i64] [i64 4, i64 32, i64 393216, i64 393473, i64 393474, i64 395008]
@__sancov_gen_cov_switch_values.114 = internal global [10 x i64] [i64 8, i64 32, i64 589825, i64 590080, i64 590337, i64 590338, i64 590592, i64 590848, i64 590849, i64 590850]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 590080, i64 590338, i64 590592]
@__sancov_gen_cov_switch_values.116 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 65536, i64 65537, i64 131328]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 18]
@__sancov_gen_cov_switch_values.123 = internal global [11 x i64] [i64 9, i64 32, i64 66816, i64 132096, i64 589824, i64 590080, i64 590336, i64 590592, i64 590848, i64 590849, i64 590850]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1733, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1931, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"gmc_v9_0_ip_funcs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1930, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"gmc_v9_0_ip_block\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1948, i32 38 }
@___asan_gen_.137 = private unnamed_addr constant [19 x i8] c"gmc_v9_0_gmc_funcs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1177, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 824, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 875, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 938, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"gmc_v9_0_irq_funcs\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 668, i32 42 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"gmc_v9_0_ecc_funcs\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 674, i32 42 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 570, i32 14 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 573, i32 14 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 576, i32 14 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 583, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 590, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 612, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 616, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [18 x i8] c"gfxhub_client_ids\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 79, i32 20 }
@___asan_gen_.212 = private unnamed_addr constant [24 x i8] c"mmhub_client_ids_vega10\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 148, i32 20 }
@___asan_gen_.215 = private unnamed_addr constant [24 x i8] c"mmhub_client_ids_vega12\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 180, i32 20 }
@___asan_gen_.218 = private unnamed_addr constant [24 x i8] c"mmhub_client_ids_vega20\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 212, i32 20 }
@___asan_gen_.221 = private unnamed_addr constant [26 x i8] c"mmhub_client_ids_arcturus\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 248, i32 20 }
@___asan_gen_.224 = private unnamed_addr constant [23 x i8] c"mmhub_client_ids_raven\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 95, i32 20 }
@___asan_gen_.227 = private unnamed_addr constant [24 x i8] c"mmhub_client_ids_renoir\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 120, i32 20 }
@___asan_gen_.230 = private unnamed_addr constant [27 x i8] c"mmhub_client_ids_aldebaran\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 289, i32 20 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 649, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 652, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 655, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 658, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 661, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 664, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 80, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 81, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 82, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 83, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 84, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 85, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 86, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 87, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 88, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 89, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 90, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 91, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 92, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 149, i32 11 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 150, i32 11 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 151, i32 11 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 152, i32 11 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 165, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 167, i32 11 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 153, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 154, i32 12 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 155, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 169, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 156, i32 14 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 157, i32 14 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 158, i32 14 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 159, i32 14 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 160, i32 14 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 174, i32 14 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 176, i32 14 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 218, i32 11 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 233, i32 11 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 253, i32 13 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 254, i32 13 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 255, i32 13 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 256, i32 13 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 257, i32 13 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 258, i32 13 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 261, i32 13 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 262, i32 13 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 263, i32 13 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 264, i32 13 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 265, i32 13 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 266, i32 13 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 114, i32 11 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 115, i32 11 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 103, i32 12 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 124, i32 11 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 125, i32 11 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 292, i32 14 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 293, i32 14 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 294, i32 14 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 295, i32 15 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 296, i32 15 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 297, i32 15 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 300, i32 16 }
@___asan_gen_.434 = private unnamed_addr constant [25 x i8] c"ecc_umc_mcumc_ctrl_addrs\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 342, i32 23 }
@___asan_gen_.437 = private unnamed_addr constant [30 x i8] c"ecc_umc_mcumc_ctrl_mask_addrs\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 377, i32 23 }
@___asan_gen_.440 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1529, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1638, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1472, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant [28 x i8] c"golden_settings_mmhub_1_0_0\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 330, i32 38 }
@___asan_gen_.461 = private unnamed_addr constant [28 x i8] c"golden_settings_athub_1_0_0\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 336, i32 38 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1751, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1771, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1774, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1776, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.492 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1846, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant [33 x i8] c"switch.table.gmc_v9_0_early_init\00", align 1
@llvm.compiler.used = appending global [140 x ptr] [ptr @gmc_v9_0_flush_gpu_tlb_pasid._entry, ptr @gmc_v9_0_flush_gpu_tlb_pasid._entry_ptr, ptr @gmc_v9_0_gart_enable._entry, ptr @gmc_v9_0_gart_enable._entry.103, ptr @gmc_v9_0_gart_enable._entry.106, ptr @gmc_v9_0_gart_enable._entry.109, ptr @gmc_v9_0_gart_enable._entry_ptr, ptr @gmc_v9_0_gart_enable._entry_ptr.105, ptr @gmc_v9_0_gart_enable._entry_ptr.108, ptr @gmc_v9_0_gart_enable._entry_ptr.111, ptr @gmc_v9_0_process_interrupt._entry, ptr @gmc_v9_0_process_interrupt._entry.14, ptr @gmc_v9_0_process_interrupt._entry.17, ptr @gmc_v9_0_process_interrupt._entry.20, ptr @gmc_v9_0_process_interrupt._entry.24, ptr @gmc_v9_0_process_interrupt._entry.26, ptr @gmc_v9_0_process_interrupt._entry.29, ptr @gmc_v9_0_process_interrupt._entry.32, ptr @gmc_v9_0_process_interrupt._entry.35, ptr @gmc_v9_0_process_interrupt._entry.38, ptr @gmc_v9_0_process_interrupt._entry_ptr, ptr @gmc_v9_0_process_interrupt._entry_ptr.16, ptr @gmc_v9_0_process_interrupt._entry_ptr.19, ptr @gmc_v9_0_process_interrupt._entry_ptr.22, ptr @gmc_v9_0_process_interrupt._entry_ptr.25, ptr @gmc_v9_0_process_interrupt._entry_ptr.28, ptr @gmc_v9_0_process_interrupt._entry_ptr.31, ptr @gmc_v9_0_process_interrupt._entry_ptr.34, ptr @gmc_v9_0_process_interrupt._entry_ptr.37, ptr @gmc_v9_0_process_interrupt._entry_ptr.40, ptr @gmc_v9_0_sw_init._entry, ptr @gmc_v9_0_sw_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @gmc_v9_0_ip_funcs, ptr @gmc_v9_0_ip_block, ptr @gmc_v9_0_gmc_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @gmc_v9_0_irq_funcs, ptr @gmc_v9_0_ecc_funcs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @gfxhub_client_ids, ptr @mmhub_client_ids_vega10, ptr @mmhub_client_ids_vega12, ptr @mmhub_client_ids_vega20, ptr @mmhub_client_ids_arcturus, ptr @mmhub_client_ids_raven, ptr @mmhub_client_ids_renoir, ptr @mmhub_client_ids_aldebaran, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @ecc_umc_mcumc_ctrl_addrs, ptr @ecc_umc_mcumc_ctrl_mask_addrs, ptr @gmc_v9_0_sw_init.__key, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @golden_settings_mmhub_1_0_0, ptr @golden_settings_athub_1_0_0, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @switch.table.gmc_v9_0_early_init], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_gmc_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_flush_gpu_tlb_pasid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_ecc_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_process_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_process_interrupt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_process_interrupt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_process_interrupt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_client_ids to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_client_ids_vega10 to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_client_ids_vega12 to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_client_ids_vega20 to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_client_ids_arcturus to i32), i32 3080, i32 3872, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_client_ids_raven to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_client_ids_renoir to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_client_ids_aldebaran to i32), i32 3080, i32 3872, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_process_interrupt._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_process_interrupt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_process_interrupt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_process_interrupt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_process_interrupt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_process_interrupt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecc_umc_mcumc_ctrl_addrs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecc_umc_mcumc_ctrl_mask_addrs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_mmhub_1_0_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_athub_1_0_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_gart_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_gart_enable._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_gart_enable._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v9_0_gart_enable._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gmc_v9_0_early_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gmc_v9_0_restore_registers(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 20
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %2)
  %switch = icmp eq i32 %2, 65536
  br i1 %switch, label %if.then, label %entry.if.end81_crit_edge

entry.if.end81_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then:                                          ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true7

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sriov_wreg, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false_crit_edge, label %cond.true

land.lhs.true7.cond.false_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx16, align 8
  %arrayidx18 = getelementptr i32, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx18, align 4
  %add = add i32 %12, 1181
  %sdpif_register = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 25
  %13 = ptrtoint ptr %sdpif_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sdpif_register, align 4
  tail call void %8(ptr noundef %adev, i32 noundef %add, i32 noundef %14, i32 noundef 0, i32 noundef 20) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true7.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx20, align 8
  %arrayidx22 = getelementptr i32, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 %18, 1181
  %sdpif_register25 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 25
  %19 = ptrtoint ptr %sdpif_register25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sdpif_register25, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add23, i32 noundef %20, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %sdpif_register27 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 25
  %21 = ptrtoint ptr %sdpif_register27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sdpif_register27, align 4
  %23 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %virt, align 8
  %and30 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %cond.end.cond.false52_crit_edge, label %land.lhs.true32

cond.end.cond.false52_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false52

land.lhs.true32:                                  ; preds = %cond.end
  %funcs35 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %25 = ptrtoint ptr %funcs35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs35, align 4
  %tobool36.not = icmp eq ptr %26, null
  br i1 %tobool36.not, label %land.lhs.true32.cond.false52_crit_edge, label %land.lhs.true37

land.lhs.true32.cond.false52_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false52

land.lhs.true37:                                  ; preds = %land.lhs.true32
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sriov_rreg, align 4
  %tobool41.not = icmp eq ptr %28, null
  br i1 %tobool41.not, label %land.lhs.true37.cond.false52_crit_edge, label %cond.true42

land.lhs.true37.cond.false52_crit_edge:           ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false52

cond.true42:                                      ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx48 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %29 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx48, align 8
  %arrayidx50 = getelementptr i32, ptr %30, i32 2
  %31 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %32, 1181
  %call = tail call i32 %28(ptr noundef %adev, i32 noundef %add51, i32 noundef 0, i32 noundef 20) #8
  br label %cond.end59

cond.false52:                                     ; preds = %land.lhs.true37.cond.false52_crit_edge, %land.lhs.true32.cond.false52_crit_edge, %cond.end.cond.false52_crit_edge
  %arrayidx54 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %33 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx54, align 8
  %arrayidx56 = getelementptr i32, ptr %34, i32 2
  %35 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx56, align 4
  %add57 = add i32 %36, 1181
  %call58 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add57, i32 noundef 0) #8
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false52, %cond.true42
  %cond = phi i32 [ %call, %cond.true42 ], [ %call58, %cond.false52 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %cond)
  %cmp60.not = icmp eq i32 %22, %cond
  br i1 %cmp60.not, label %cond.end59.if.end81_crit_edge, label %do.end, !prof !249

cond.end59.if.end81_crit_edge:                    ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

do.end:                                           ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1734, i32 noundef 9, ptr noundef null) #8
  br label %if.end81

if.end81:                                         ; preds = %do.end, %cond.end59.if.end81_crit_edge, %entry.if.end81_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 21, label %entry.if.then_crit_edge
    i32 23, label %entry.if.then_crit_edge57
  ]

entry.if.then_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge57
  %supported = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 6
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %supported, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 29
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 393472, i32 %5)
  %cmp4 = icmp eq i32 %5, 393472
  br i1 %cmp4, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %supported8 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 6
  %6 = ptrtoint ptr %supported8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %supported8, align 8
  %smuio = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 103
  %7 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smuio, align 4
  %is_host_gpu_xgmi_supported = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %is_host_gpu_xgmi_supported to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %is_host_gpu_xgmi_supported, align 4
  %call = tail call zeroext i1 %10(ptr noundef %handle) #8
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 8
  %frombool = zext i1 %call to i8
  %11 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %connected_to_cpu, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  %gmc_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 38
  %12 = ptrtoint ptr %gmc_funcs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gmc_v9_0_gmc_funcs, ptr %gmc_funcs.i, align 4
  %vm_fault.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %13 = ptrtoint ptr %vm_fault.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %vm_fault.i, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20, i32 2
  %14 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @gmc_v9_0_irq_funcs, ptr %funcs.i, align 8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %15 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end11.gmc_v9_0_set_irq_funcs.exit_crit_edge

if.end11.gmc_v9_0_set_irq_funcs.exit_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_set_irq_funcs.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %connected_to_cpu.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 8
  %17 = ptrtoint ptr %connected_to_cpu.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %connected_to_cpu.i, align 8, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not.i = icmp eq i8 %18, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.gmc_v9_0_set_irq_funcs.exit_crit_edge

land.lhs.true.i.gmc_v9_0_set_irq_funcs.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_set_irq_funcs.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %ecc_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 40
  %19 = ptrtoint ptr %ecc_irq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ecc_irq.i, align 8
  %funcs9.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 40, i32 2
  %20 = ptrtoint ptr %funcs9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @gmc_v9_0_ecc_funcs, ptr %funcs9.i, align 8
  br label %gmc_v9_0_set_irq_funcs.exit

gmc_v9_0_set_irq_funcs.exit:                      ; preds = %if.then.i, %land.lhs.true.i.gmc_v9_0_set_irq_funcs.exit_crit_edge, %if.end11.gmc_v9_0_set_irq_funcs.exit_crit_edge
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 27
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %22, label %gmc_v9_0_set_irq_funcs.exit.gmc_v9_0_set_umc_funcs.exit_crit_edge [
    i32 393216, label %sw.bb.i
    i32 393473, label %sw.bb2.i
    i32 393474, label %sw.bb9.i
    i32 395008, label %sw.bb22.i
  ]

gmc_v9_0_set_irq_funcs.exit.gmc_v9_0_set_umc_funcs.exit_crit_edge: ; preds = %gmc_v9_0_set_irq_funcs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_set_umc_funcs.exit

sw.bb.i:                                          ; preds = %gmc_v9_0_set_irq_funcs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %funcs.i43 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 6
  %24 = ptrtoint ptr %funcs.i43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @umc_v6_0_funcs, ptr %funcs.i43, align 8
  br label %gmc_v9_0_set_umc_funcs.exit

sw.bb2.i:                                         ; preds = %gmc_v9_0_set_irq_funcs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %umc3.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116
  %25 = ptrtoint ptr %umc3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32, ptr %umc3.i, align 8
  %channel_inst_num.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 1
  %26 = ptrtoint ptr %channel_inst_num.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %channel_inst_num.i, align 4
  %umc_inst_num.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 2
  %27 = ptrtoint ptr %umc_inst_num.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %umc_inst_num.i, align 8
  %channel_offs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 3
  %28 = ptrtoint ptr %channel_offs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2048, ptr %channel_offs.i, align 4
  %channel_idx_tbl.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 4
  %29 = ptrtoint ptr %channel_idx_tbl.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @umc_v6_1_channel_idx_tbl, ptr %channel_idx_tbl.i, align 8
  %ras_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 7
  %30 = ptrtoint ptr %ras_funcs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @umc_v6_1_ras_funcs, ptr %ras_funcs.i, align 4
  br label %gmc_v9_0_set_umc_funcs.exit

sw.bb9.i:                                         ; preds = %gmc_v9_0_set_irq_funcs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %umc10.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116
  %31 = ptrtoint ptr %umc10.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %umc10.i, align 8
  %channel_inst_num13.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 1
  %32 = ptrtoint ptr %channel_inst_num13.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %channel_inst_num13.i, align 4
  %umc_inst_num15.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 2
  %33 = ptrtoint ptr %umc_inst_num15.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %umc_inst_num15.i, align 8
  %channel_offs17.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 3
  %34 = ptrtoint ptr %channel_offs17.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1024, ptr %channel_offs17.i, align 4
  %channel_idx_tbl19.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 4
  %35 = ptrtoint ptr %channel_idx_tbl19.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @umc_v6_1_channel_idx_tbl, ptr %channel_idx_tbl19.i, align 8
  %ras_funcs21.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 7
  %36 = ptrtoint ptr %ras_funcs21.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @umc_v6_1_ras_funcs, ptr %ras_funcs21.i, align 4
  br label %gmc_v9_0_set_umc_funcs.exit

sw.bb22.i:                                        ; preds = %gmc_v9_0_set_irq_funcs.exit
  %umc23.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116
  %37 = ptrtoint ptr %umc23.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 32, ptr %umc23.i, align 8
  %channel_inst_num26.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 1
  %38 = ptrtoint ptr %channel_inst_num26.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %channel_inst_num26.i, align 4
  %umc_inst_num28.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 2
  %39 = ptrtoint ptr %umc_inst_num28.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %umc_inst_num28.i, align 8
  %channel_offs30.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 3
  %40 = ptrtoint ptr %channel_offs30.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1024, ptr %channel_offs30.i, align 4
  %connected_to_cpu.i44 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 8
  %41 = ptrtoint ptr %connected_to_cpu.i44 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %connected_to_cpu.i44, align 8, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i45 = icmp eq i8 %42, 0
  br i1 %tobool.not.i45, label %if.then.i46, label %sw.bb22.i.if.end.i_crit_edge

sw.bb22.i.if.end.i_crit_edge:                     ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i46:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #10
  %ras_funcs32.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 7
  %43 = ptrtoint ptr %ras_funcs32.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @umc_v6_7_ras_funcs, ptr %ras_funcs32.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i46, %sw.bb22.i.if.end.i_crit_edge
  %smuio.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 103
  %44 = ptrtoint ptr %smuio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %smuio.i, align 4
  %get_die_id.i = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %get_die_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_die_id.i, align 4
  %call.i = tail call i32 %47(ptr noundef %handle) #8
  %and.i47 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool34.not.i = icmp eq i32 %and.i47, 0
  %channel_idx_tbl39.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 4
  br i1 %tobool34.not.i, label %if.else.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %channel_idx_tbl39.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @umc_v6_7_channel_idx_tbl_first, ptr %channel_idx_tbl39.i, align 8
  br label %gmc_v9_0_set_umc_funcs.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %channel_idx_tbl39.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @umc_v6_7_channel_idx_tbl_second, ptr %channel_idx_tbl39.i, align 8
  br label %gmc_v9_0_set_umc_funcs.exit

gmc_v9_0_set_umc_funcs.exit:                      ; preds = %if.else.i, %if.then35.i, %sw.bb9.i, %sw.bb2.i, %sw.bb.i, %gmc_v9_0_set_irq_funcs.exit.gmc_v9_0_set_umc_funcs.exit_crit_edge
  %arrayidx.i48 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 11
  %50 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 590850, i32 %51)
  %switch.selectcmp.i = icmp eq i32 %51, 590850
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @mmhub_v1_7_funcs, ptr @mmhub_v1_0_funcs
  call void @__sanitizer_cov_trace_const_cmp4(i32 590849, i32 %51)
  %switch.selectcmp10.i = icmp eq i32 %51, 590849
  %switch.select11.i = select i1 %switch.selectcmp10.i, ptr @mmhub_v9_4_funcs, ptr %switch.select.i
  %funcs6.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %52 = ptrtoint ptr %funcs6.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %switch.select11.i, ptr %funcs6.i, align 4
  %switch.tableidx = add i32 %51, -590848
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %53 = icmp ult i32 %switch.tableidx, 3
  br i1 %53, label %switch.lookup, label %gmc_v9_0_set_umc_funcs.exit.gmc_v9_0_set_mmhub_ras_funcs.exit_crit_edge

gmc_v9_0_set_umc_funcs.exit.gmc_v9_0_set_mmhub_ras_funcs.exit_crit_edge: ; preds = %gmc_v9_0_set_umc_funcs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_set_mmhub_ras_funcs.exit

switch.lookup:                                    ; preds = %gmc_v9_0_set_umc_funcs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.gmc_v9_0_early_init, i32 0, i32 %switch.tableidx
  %54 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %54)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %ras_funcs7.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 2
  %55 = ptrtoint ptr %ras_funcs7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %switch.load, ptr %ras_funcs7.i, align 8
  br label %gmc_v9_0_set_mmhub_ras_funcs.exit

gmc_v9_0_set_mmhub_ras_funcs.exit:                ; preds = %switch.lookup, %gmc_v9_0_set_umc_funcs.exit.gmc_v9_0_set_mmhub_ras_funcs.exit_crit_edge
  %gfxhub.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 105
  %56 = ptrtoint ptr %gfxhub.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @gfxhub_v1_0_funcs, ptr %gfxhub.i, align 4
  %ras_funcs.i51 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 102, i32 2
  %57 = ptrtoint ptr %ras_funcs.i51 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @hdp_v4_0_ras_funcs, ptr %ras_funcs.i51, align 8
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 395008, i32 %59)
  %cond.i = icmp eq i32 %59, 395008
  br i1 %cond.i, label %sw.bb.i55, label %gmc_v9_0_set_mmhub_ras_funcs.exit.gmc_v9_0_set_mca_funcs.exit_crit_edge

gmc_v9_0_set_mmhub_ras_funcs.exit.gmc_v9_0_set_mca_funcs.exit_crit_edge: ; preds = %gmc_v9_0_set_mmhub_ras_funcs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_set_mca_funcs.exit

sw.bb.i55:                                        ; preds = %gmc_v9_0_set_mmhub_ras_funcs.exit
  %connected_to_cpu.i53 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 8
  %60 = ptrtoint ptr %connected_to_cpu.i53 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %connected_to_cpu.i53, align 8, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i54 = icmp eq i8 %61, 0
  br i1 %tobool.not.i54, label %if.then.i56, label %sw.bb.i55.gmc_v9_0_set_mca_funcs.exit_crit_edge

sw.bb.i55.gmc_v9_0_set_mca_funcs.exit_crit_edge:  ; preds = %sw.bb.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_set_mca_funcs.exit

if.then.i56:                                      ; preds = %sw.bb.i55
  call void @__sanitizer_cov_trace_pc() #10
  %mca.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 121
  %62 = ptrtoint ptr %mca.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @mca_v3_0_funcs, ptr %mca.i, align 8
  br label %gmc_v9_0_set_mca_funcs.exit

gmc_v9_0_set_mca_funcs.exit:                      ; preds = %if.then.i56, %sw.bb.i55.gmc_v9_0_set_mca_funcs.exit_crit_edge, %gmc_v9_0_set_mmhub_ras_funcs.exit.gmc_v9_0_set_mca_funcs.exit_crit_edge
  %shared_aperture_start = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 26
  %63 = ptrtoint ptr %shared_aperture_start to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 2305843009213693952, ptr %shared_aperture_start, align 8
  %shared_aperture_end = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 27
  %64 = ptrtoint ptr %shared_aperture_end to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 2305843013508661247, ptr %shared_aperture_end, align 8
  %private_aperture_start = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 28
  %65 = ptrtoint ptr %private_aperture_start to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 1152921504606846976, ptr %private_aperture_start, align 8
  %private_aperture_end = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 29
  %66 = ptrtoint ptr %private_aperture_end to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 1152921508901814271, ptr %private_aperture_end, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_late_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_gmc_allocate_vm_inv_eng(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 27
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %3)
  %cmp = icmp eq i32 %3, 393216
  br i1 %cmp, label %if.then3, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then3:                                         ; preds = %land.lhs.true
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 167
  %4 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ras_enabled, align 8
  %and4 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.then3.if.end18_crit_edge

if.then3.if.end18_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then6:                                         ; preds = %if.then3
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 120, i32 1
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.then6.if.end18_crit_edge, label %land.lhs.true8

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true8:                                   ; preds = %if.then6
  %enable_ecc_force_par_wr_rmw = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %enable_ecc_force_par_wr_rmw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_ecc_force_par_wr_rmw, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %land.lhs.true8.if.end18_crit_edge, label %if.then12

land.lhs.true8.if.end18_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %handle, i1 noundef zeroext false) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %land.lhs.true8.if.end18_crit_edge, %if.then6.if.end18_crit_edge, %if.then3.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %call19 = tail call i32 @amdgpu_persistent_edc_harvesting_supported(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end18.if.end44_crit_edge

if.end18.if.end44_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then21:                                        ; preds = %if.end18
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 2
  %10 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ras_funcs, align 8
  %tobool22.not = icmp eq ptr %11, null
  br i1 %tobool22.not, label %if.then21.if.end31_crit_edge, label %land.lhs.true23

if.then21.if.end31_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true23:                                  ; preds = %if.then21
  %reset_ras_error_count = getelementptr inbounds %struct.amdgpu_mmhub_ras_funcs, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %reset_ras_error_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_ras_error_count, align 4
  %tobool26.not = icmp eq ptr %13, null
  br i1 %tobool26.not, label %land.lhs.true23.if.end31_crit_edge, label %if.then27

land.lhs.true23.if.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %handle) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %land.lhs.true23.if.end31_crit_edge, %if.then21.if.end31_crit_edge
  %ras_funcs32 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 102, i32 2
  %14 = ptrtoint ptr %ras_funcs32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ras_funcs32, align 8
  %tobool33.not = icmp eq ptr %15, null
  br i1 %tobool33.not, label %if.end31.if.end44_crit_edge, label %land.lhs.true34

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true34:                                  ; preds = %if.end31
  %reset_ras_error_count37 = getelementptr inbounds %struct.amdgpu_hdp_ras_funcs, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %reset_ras_error_count37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset_ras_error_count37, align 4
  %tobool38.not = icmp eq ptr %17, null
  br i1 %tobool38.not, label %land.lhs.true34.if.end44_crit_edge, label %if.then39

land.lhs.true34.if.end44_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then39:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %17(ptr noundef %handle) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %land.lhs.true34.if.end44_crit_edge, %if.end31.if.end44_crit_edge, %if.end18.if.end44_crit_edge
  %call45 = tail call i32 @amdgpu_gmc_ras_late_init(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call49 = tail call i32 @amdgpu_irq_get(ptr noundef %handle, ptr noundef %vm_fault, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end44.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %if.end48 ], [ %call, %entry.cleanup_crit_edge ], [ %call45, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  %vram_width = alloca i32, align 4
  %vram_type = alloca i32, align 4
  %vram_vendor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vram_width) #8
  %0 = ptrtoint ptr %vram_width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %vram_width, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vram_type) #8
  %1 = ptrtoint ptr %vram_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %vram_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vram_vendor) #8
  %2 = ptrtoint ptr %vram_vendor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vram_vendor, align 4
  %gfxhub = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 105
  %3 = ptrtoint ptr %gfxhub to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gfxhub, align 4
  %init = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init, align 4
  tail call void %6(ptr noundef %handle) #8
  %funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %7 = ptrtoint ptr %funcs1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs1, align 4
  %init2 = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %init2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init2, align 4
  tail call void %10(ptr noundef %handle) #8
  %mca = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 121
  %11 = ptrtoint ptr %mca to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mca, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void %14(ptr noundef %handle) #8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %invalidate_lock = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %invalidate_lock, ptr noundef nonnull @.str.97, ptr noundef nonnull @gmc_v9_0_sw_init.__key, i16 noundef signext 3) #8
  %call7 = call i32 @amdgpu_atomfirmware_get_vram_info(ptr noundef %handle, ptr noundef nonnull %vram_width, ptr noundef nonnull %vram_type, ptr noundef nonnull %vram_vendor) #8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %15 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %virt, align 8
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %do.body.if.end16.sink.split_crit_edge

do.body.if.end16.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split

if.else:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_emu_mode to i32))
  %17 = load i32, ptr @amdgpu_emu_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not = icmp eq i32 %17, 1
  br i1 %cmp.not, label %if.else.if.end16_crit_edge, label %if.then12

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %vram_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vram_width, align 4
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then12, %do.body.if.end16.sink.split_crit_edge
  %.sink = phi i32 [ %19, %if.then12 ], [ 2048, %do.body.if.end16.sink.split_crit_edge ]
  %vram_width14 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 14
  %20 = ptrtoint ptr %vram_width14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %vram_width14, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else.if.end16_crit_edge
  %vram_width18 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 14
  %21 = ptrtoint ptr %vram_width18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vram_width18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not = icmp eq i32 %22, 0
  br i1 %tobool19.not, label %if.then20, label %if.end16.if.end39_crit_edge

if.end16.if.end39_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then20:                                        ; preds = %if.end16
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 8
  %and21 = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %. = select i1 %tobool22.not, i32 128, i32 64
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 120, i32 1
  %25 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %26, null
  br i1 %tobool27.not, label %if.then20.if.end39_crit_edge, label %land.lhs.true

if.then20.if.end39_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.lhs.true:                                    ; preds = %if.then20
  %get_hbm_channel_number = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %get_hbm_channel_number to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_hbm_channel_number, align 4
  %tobool30.not = icmp eq ptr %28, null
  br i1 %tobool30.not, label %land.lhs.true.if.end39_crit_edge, label %if.then31

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = call i32 %28(ptr noundef %handle) #8
  %mul = mul i32 %call35, %.
  %29 = ptrtoint ptr %vram_width18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %vram_width18, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %land.lhs.true.if.end39_crit_edge, %if.then20.if.end39_crit_edge, %if.end16.if.end39_crit_edge
  %30 = ptrtoint ptr %vram_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vram_type, align 4
  %vram_type41 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 21
  %32 = ptrtoint ptr %vram_type41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %vram_type41, align 4
  %33 = ptrtoint ptr %vram_vendor to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vram_vendor, align 4
  %conv = trunc i32 %34 to i8
  %vram_vendor43 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 22
  %35 = ptrtoint ptr %vram_vendor43 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv, ptr %vram_vendor43, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 1
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %37, label %if.end39.sw.epilog_crit_edge [
    i32 590080, label %if.end39.sw.bb_crit_edge
    i32 590338, label %if.end39.sw.bb_crit_edge224
    i32 589825, label %if.end39.sw.bb56_crit_edge
    i32 590337, label %if.end39.sw.bb56_crit_edge225
    i32 590848, label %if.end39.sw.bb56_crit_edge226
    i32 590592, label %if.end39.sw.bb56_crit_edge227
    i32 590850, label %if.end39.sw.bb56_crit_edge228
    i32 590849, label %sw.bb65
  ]

if.end39.sw.bb56_crit_edge228:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb56

if.end39.sw.bb56_crit_edge227:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb56

if.end39.sw.bb56_crit_edge226:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb56

if.end39.sw.bb56_crit_edge225:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb56

if.end39.sw.bb56_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb56

if.end39.sw.bb_crit_edge224:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end39.sw.bb_crit_edge:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end39.sw.epilog_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end39.sw.bb_crit_edge, %if.end39.sw.bb_crit_edge224
  %num_vmhubs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 67
  %39 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %num_vmhubs, align 8
  %rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 7
  %40 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %switch = icmp ult i32 %41, 2
  br i1 %switch, label %if.then50, label %if.else51

if.then50:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_vm_adjust_size(ptr noundef %handle, i32 noundef 262144, i32 noundef 9, i32 noundef 3, i32 noundef 48) #8
  br label %sw.epilog

if.else51:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_vm_adjust_size(ptr noundef %handle, i32 noundef 131584, i32 noundef 9, i32 noundef 2, i32 noundef 48) #8
  %num_level = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 6
  %42 = ptrtoint ptr %num_level to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp52 = icmp ugt i32 %43, 1
  %translate_further = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 31
  %frombool = zext i1 %cmp52 to i8
  %44 = ptrtoint ptr %translate_further to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool, ptr %translate_further, align 4
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end39.sw.bb56_crit_edge, %if.end39.sw.bb56_crit_edge225, %if.end39.sw.bb56_crit_edge226, %if.end39.sw.bb56_crit_edge227, %if.end39.sw.bb56_crit_edge228
  %num_vmhubs57 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 67
  %45 = ptrtoint ptr %num_vmhubs57 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %num_vmhubs57, align 8
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %virt, align 8
  %and60 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else63, label %if.then62

if.then62:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_vm_adjust_size(ptr noundef %handle, i32 noundef 262144, i32 noundef 9, i32 noundef 3, i32 noundef 47) #8
  br label %sw.epilog

if.else63:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_vm_adjust_size(ptr noundef %handle, i32 noundef 262144, i32 noundef 9, i32 noundef 3, i32 noundef 48) #8
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %num_vmhubs66 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 67
  %48 = ptrtoint ptr %num_vmhubs66 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %num_vmhubs66, align 8
  call void @amdgpu_vm_adjust_size(ptr noundef %handle, i32 noundef 262144, i32 noundef 9, i32 noundef 3, i32 noundef 48) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb65, %if.else63, %if.then62, %if.else51, %if.then50, %if.end39.sw.epilog_crit_edge
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call68 = call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 18, i32 noundef 0, ptr noundef %vm_fault) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %sw.epilog
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 590849, i32 %50)
  %cmp75 = icmp eq i32 %50, 590849
  br i1 %cmp75, label %if.then77, label %if.end71.if.end84_crit_edge

if.end71.if.end84_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then77:                                        ; preds = %if.end71
  %call80 = call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 6, i32 noundef 0, ptr noundef %vm_fault) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then77.if.end84_crit_edge, label %if.then77.cleanup_crit_edge

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then77.if.end84_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.end84:                                         ; preds = %if.then77.if.end84_crit_edge, %if.end71.if.end84_crit_edge
  %call87 = call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 27, i32 noundef 0, ptr noundef %vm_fault) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end90:                                         ; preds = %if.end84
  %51 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %virt, align 8
  %and93 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %land.lhs.true95, label %if.end90.if.end104_crit_edge

if.end90.if.end104_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

land.lhs.true95:                                  ; preds = %if.end90
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 8
  %53 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %connected_to_cpu, align 8, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool97.not = icmp eq i8 %54, 0
  br i1 %tobool97.not, label %if.then98, label %land.lhs.true95.if.end104_crit_edge

land.lhs.true95.if.end104_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then98:                                        ; preds = %land.lhs.true95
  %ecc_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 40
  %call100 = call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 23, i32 noundef 0, ptr noundef %ecc_irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then98.if.end104_crit_edge, label %if.then98.cleanup_crit_edge

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then98.if.end104_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.end104:                                        ; preds = %if.then98.if.end104_crit_edge, %land.lhs.true95.if.end104_crit_edge, %if.end90.if.end104_crit_edge
  %mc_mask = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 17
  %55 = ptrtoint ptr %mc_mask to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 281474976710655, ptr %mc_mask, align 8
  %56 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %handle, align 8
  %call.i = call i32 @dma_set_mask(ptr noundef %57, i64 noundef 17592186044415) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end113, label %do.end111

do.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #11
  br label %cleanup

if.end113:                                        ; preds = %if.end104
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %57, i64 noundef 17592186044415) #8
  %call114 = call zeroext i1 @drm_need_swiotlb(i32 noundef 44) #8
  %need_swiotlb = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 14
  %frombool115 = zext i1 %call114 to i8
  %58 = ptrtoint ptr %need_swiotlb to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %frombool115, ptr %need_swiotlb, align 1
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %59 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %funcs.i, align 8
  %get_memsize.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %get_memsize.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %get_memsize.i, align 4
  %call.i219 = call i32 %62(ptr noundef %handle) #8
  %conv.i = zext i32 %call.i219 to i64
  %mul1.i = shl nuw nsw i64 %conv.i, 20
  %gmc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62
  %mc_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 2
  %63 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %mul1.i, ptr %mc_vram_size.i, align 8
  %real_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 15
  %64 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %mul1.i, ptr %real_vram_size.i, align 8
  %flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %66, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end113.if.end10.i_crit_edge

if.end113.if.end10.i_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end113
  %connected_to_cpu.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 8
  %67 = ptrtoint ptr %connected_to_cpu.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %connected_to_cpu.i, align 8, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool6.not.i = icmp eq i8 %68, 0
  br i1 %tobool6.not.i, label %if.then.i220, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then.i220:                                     ; preds = %land.lhs.true.i
  %call7.i = call i32 @amdgpu_device_resize_fb_bar(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then.i220.if.end10.i_crit_edge, label %if.then.i220.cleanup_crit_edge

if.then.i220.cleanup_crit_edge:                   ; preds = %if.then.i220
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i220.if.end10.i_crit_edge:                ; preds = %if.then.i220
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i220.if.end10.i_crit_edge, %land.lhs.true.i.if.end10.i_crit_edge, %if.end113.if.end10.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %69 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 47
  %71 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %resource.i, align 8
  %aper_base.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 1
  %73 = ptrtoint ptr %aper_base.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %aper_base.i, align 4
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 47, i32 0, i32 1
  %74 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i221 = icmp eq i32 %75, 0
  br i1 %cmp.i221, label %if.end10.i.cond.end.i_crit_edge, label %cond.false.i

if.end10.i.cond.end.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %resource.i, align 8
  %sub.i = add i32 %75, 1
  %add.i = sub i32 %sub.i, %77
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end10.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end10.i.cond.end.i_crit_edge ]
  %78 = ptrtoint ptr %gmc.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %cond.i, ptr %gmc.i, align 8
  %conv27.i = zext i32 %cond.i to i64
  %visible_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 3
  %79 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %real_vram_size.i, align 8
  %81 = call i64 @llvm.umin.i64(i64 %80, i64 %conv27.i) #8
  %82 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %visible_vram_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_gart_size to i32))
  %83 = load i32, ptr @amdgpu_gart_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp41.i = icmp eq i32 %83, -1
  br i1 %cmp41.i, label %if.then43.i, label %if.else.i

if.then43.i:                                      ; preds = %cond.end.i
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %85, label %if.then43.i.if.end53.i_crit_edge [
    i32 590592, label %if.then43.i.sw.bb47.i_crit_edge
    i32 590338, label %if.then43.i.sw.bb47.i_crit_edge229
    i32 590080, label %if.then43.i.sw.bb47.i_crit_edge230
  ]

if.then43.i.sw.bb47.i_crit_edge230:               ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47.i

if.then43.i.sw.bb47.i_crit_edge229:               ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47.i

if.then43.i.sw.bb47.i_crit_edge:                  ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47.i

if.then43.i.if.end53.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

sw.bb47.i:                                        ; preds = %if.then43.i.sw.bb47.i_crit_edge, %if.then43.i.sw.bb47.i_crit_edge229, %if.then43.i.sw.bb47.i_crit_edge230
  br label %if.end53.i

if.else.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv50.i = sext i32 %83 to i64
  %shl.i = shl nsw i64 %conv50.i, 20
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else.i, %sw.bb47.i, %if.then43.i.if.end53.i_crit_edge
  %.sink.i = phi i64 [ 1073741824, %sw.bb47.i ], [ %shl.i, %if.else.i ], [ 536870912, %if.then43.i.if.end53.i_crit_edge ]
  %gart_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %smu_prv_buffer_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 21
  %87 = ptrtoint ptr %smu_prv_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %smu_prv_buffer_size.i, align 4
  %conv54.i = zext i32 %88 to i64
  %add57.i = add nsw i64 %.sink.i, %conv54.i
  %89 = ptrtoint ptr %gart_size.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %add57.i, ptr %gart_size.i, align 8
  %90 = ptrtoint ptr %funcs1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %funcs1, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %call.i.i = call i64 %93(ptr noundef %handle) #8
  %physical_node_id.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 3
  %node_segment_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 2
  %connected_to_cpu.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 8
  %94 = ptrtoint ptr %connected_to_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %connected_to_cpu.i.i, align 8, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i.i = icmp eq i8 %95, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_gmc_sysvm_location(ptr noundef %handle, ptr noundef %gmc.i) #8
  br label %if.end119

if.else.i.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %node_segment_size.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %node_segment_size.i.i, align 8
  %98 = ptrtoint ptr %physical_node_id.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %physical_node_id.i.i, align 8
  %conv.i.i = zext i32 %99 to i64
  %mul.i.i = mul i64 %97, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %call.i.i
  call void @amdgpu_gmc_vram_location(ptr noundef %handle, ptr noundef %gmc.i, i64 noundef %add.i.i) #8
  call void @amdgpu_gmc_gart_location(ptr noundef %handle, ptr noundef %gmc.i) #8
  call void @amdgpu_gmc_agp_location(ptr noundef %handle, ptr noundef %gmc.i) #8
  br label %if.end119

if.end119:                                        ; preds = %if.else.i.i, %if.then.i.i
  %100 = ptrtoint ptr %gfxhub to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %gfxhub, align 4
  %get_mc_fb_offset.i.i = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %get_mc_fb_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %get_mc_fb_offset.i.i, align 4
  %call6.i.i = call i64 %103(ptr noundef %handle) #8
  %vram_base_offset.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 10
  %104 = ptrtoint ptr %physical_node_id.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %physical_node_id.i.i, align 8
  %conv10.i.i = zext i32 %105 to i64
  %106 = ptrtoint ptr %node_segment_size.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %node_segment_size.i.i, align 8
  %mul14.i.i = mul i64 %107, %conv10.i.i
  %add17.i.i = add i64 %mul14.i.i, %call6.i.i
  %108 = ptrtoint ptr %vram_base_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %add17.i.i, ptr %vram_base_offset.i.i, align 8
  call void @amdgpu_gmc_get_vbios_allocations(ptr noundef %handle) #8
  %call120 = call i32 @amdgpu_bo_init(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end119.cleanup_crit_edge

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end123:                                        ; preds = %if.end119
  %call124 = call fastcc i32 @gmc_v9_0_gart_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.cleanup_crit_edge

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end127:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx, align 4
  %111 = add i32 %110, -590849
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %112 = icmp ult i32 %111, 2
  %113 = select i1 %112, i32 3, i32 8
  %first_kfd_vmid = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 1
  %114 = ptrtoint ptr %first_kfd_vmid to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %first_kfd_vmid, align 8
  call void @amdgpu_vm_manager_init(ptr noundef %handle) #8
  call fastcc void @gmc_v9_0_save_registers(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %if.end123.cleanup_crit_edge, %if.end119.cleanup_crit_edge, %if.then.i220.cleanup_crit_edge, %do.end111, %if.then98.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.then77.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end111 ], [ 0, %if.end127 ], [ %call68, %sw.epilog.cleanup_crit_edge ], [ %call80, %if.then77.cleanup_crit_edge ], [ %call87, %if.end84.cleanup_crit_edge ], [ %call100, %if.then98.cleanup_crit_edge ], [ %call120, %if.end119.cleanup_crit_edge ], [ %call124, %if.end123.cleanup_crit_edge ], [ %call7.i, %if.then.i220.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_vendor) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_type) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_width) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_gmc_ras_fini(ptr noundef %handle) #8
  tail call void @amdgpu_gem_force_release(ptr noundef %handle) #8
  tail call void @amdgpu_vm_manager_fini(ptr noundef %handle) #8
  tail call void @amdgpu_gart_table_vram_free(ptr noundef %handle) #8
  %pdb0_bo = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 44
  tail call void @amdgpu_bo_unref(ptr noundef %pdb0_bo) #8
  tail call void @amdgpu_bo_fini(ptr noundef %handle) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 11
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = add i32 %1, -589824
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 24) #8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %3, label %entry.gmc_v9_0_init_golden_registers.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 4, label %entry.sw.bb2.i_crit_edge
    i32 1, label %entry.sw.epilog.sink.split.i_crit_edge
    i32 2, label %entry.sw.epilog.sink.split.i_crit_edge337
  ]

entry.sw.epilog.sink.split.i_crit_edge337:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

entry.sw.epilog.sink.split.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

entry.gmc_v9_0_init_golden_registers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_init_golden_registers.exit

sw.bb.i:                                          ; preds = %entry
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %5 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.bb2.i_crit_edge, label %sw.bb.i.gmc_v9_0_init_golden_registers.exit_crit_edge

sw.bb.i.gmc_v9_0_init_golden_registers.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_init_golden_registers.exit

sw.bb.i.sw.bb2.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_mmhub_1_0_0, i32 noundef 2) #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %entry.sw.epilog.sink.split.i_crit_edge, %entry.sw.epilog.sink.split.i_crit_edge337
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_athub_1_0_0, i32 noundef 2) #8
  br label %gmc_v9_0_init_golden_registers.exit

gmc_v9_0_init_golden_registers.exit:              ; preds = %sw.epilog.sink.split.i, %sw.bb.i.gmc_v9_0_init_golden_registers.exit_crit_edge, %entry.gmc_v9_0_init_golden_registers.exit_crit_edge
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %7 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %gmc_v9_0_init_golden_registers.exit.if.end_crit_edge, label %if.then

gmc_v9_0_init_golden_registers.exit.if.end_crit_edge: ; preds = %gmc_v9_0_init_golden_registers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %gmc_v9_0_init_golden_registers.exit
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virt, align 8
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.cond.false77.sink.split_crit_edge, label %land.lhs.true

if.then.cond.false77.sink.split_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false77.sink.split

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %12, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false77.sink.split_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false77.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false77.sink.split

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %land.lhs.true55, label %cond.true

cond.true:                                        ; preds = %land.lhs.true3
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 20
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 8
  %arrayidx13 = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %18, 10
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %12, i32 0, i32 13
  %19 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sriov_rreg, align 4
  %tobool27.not = icmp eq ptr %20, null
  br i1 %tobool27.not, label %cond.false, label %cond.true28

cond.true28:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %20(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 20) #8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true28
  %cond = phi i32 [ %call, %cond.true28 ], [ %call43, %cond.false ]
  %or = or i32 %cond, 16
  tail call void %14(ptr noundef %handle, i32 noundef %add, i32 noundef %or, i32 noundef 0, i32 noundef 20) #8
  br label %cond.end88

land.lhs.true55:                                  ; preds = %land.lhs.true3
  %21 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load ptr, ptr %funcs, align 4
  %arrayidx47319 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 20
  %22 = ptrtoint ptr %arrayidx47319 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx47319, align 8
  %arrayidx49320 = getelementptr i32, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx49320 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx49320, align 4
  %add50321 = add i32 %25, 10
  %tobool59.not = icmp eq ptr %.pr, null
  br i1 %tobool59.not, label %land.lhs.true55.cond.false77_crit_edge, label %land.lhs.true60

land.lhs.true55.cond.false77_crit_edge:           ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false77

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %sriov_rreg64 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %26 = ptrtoint ptr %sriov_rreg64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sriov_rreg64, align 4
  %tobool65.not = icmp eq ptr %27, null
  br i1 %tobool65.not, label %land.lhs.true60.cond.false77_crit_edge, label %cond.true66

land.lhs.true60.cond.false77_crit_edge:           ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false77

cond.true66:                                      ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = tail call i32 %27(ptr noundef %handle, i32 noundef %add50321, i32 noundef 0, i32 noundef 20) #8
  br label %cond.end84

cond.false77.sink.split:                          ; preds = %land.lhs.true.cond.false77.sink.split_crit_edge, %if.then.cond.false77.sink.split_crit_edge
  %arrayidx47319329 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 20
  %28 = ptrtoint ptr %arrayidx47319329 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx47319329, align 8
  %arrayidx49320330 = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx49320330 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx49320330, align 4
  %add50321331 = add i32 %31, 10
  br label %cond.false77

cond.false77:                                     ; preds = %cond.false77.sink.split, %land.lhs.true60.cond.false77_crit_edge, %land.lhs.true55.cond.false77_crit_edge
  %add50324 = phi i32 [ %add50321, %land.lhs.true60.cond.false77_crit_edge ], [ %add50321, %land.lhs.true55.cond.false77_crit_edge ], [ %add50321331, %cond.false77.sink.split ]
  %call83 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add50324, i32 noundef 0) #8
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false77, %cond.true66
  %add50322 = phi i32 [ %add50321, %cond.true66 ], [ %add50324, %cond.false77 ]
  %cond85 = phi i32 [ %call76, %cond.true66 ], [ %call83, %cond.false77 ]
  %or87 = or i32 %cond85, 16
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add50322, i32 noundef %or87, i32 noundef 0) #8
  br label %cond.end88

cond.end88:                                       ; preds = %cond.end84, %cond.end
  %32 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %virt, align 8
  %and91 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %cond.end88.cond.false183.sink.split_crit_edge, label %land.lhs.true93

cond.end88.cond.false183.sink.split_crit_edge:    ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false183.sink.split

land.lhs.true93:                                  ; preds = %cond.end88
  %funcs96 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %34 = ptrtoint ptr %funcs96 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs96, align 4
  %tobool97.not = icmp eq ptr %35, null
  br i1 %tobool97.not, label %land.lhs.true93.cond.false183.sink.split_crit_edge, label %land.lhs.true98

land.lhs.true93.cond.false183.sink.split_crit_edge: ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false183.sink.split

land.lhs.true98:                                  ; preds = %land.lhs.true93
  %sriov_wreg102 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sriov_wreg102 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_wreg102, align 4
  %tobool103.not = icmp eq ptr %37, null
  br i1 %tobool103.not, label %land.lhs.true161, label %cond.true104

cond.true104:                                     ; preds = %land.lhs.true98
  %arrayidx110 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 20
  %38 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx110, align 8
  %arrayidx112 = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx112, align 4
  %sriov_rreg127 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 13
  %42 = ptrtoint ptr %sriov_rreg127 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sriov_rreg127, align 4
  %tobool128.not = icmp eq ptr %43, null
  br i1 %tobool128.not, label %cond.false140, label %cond.true129

cond.true129:                                     ; preds = %cond.true104
  call void @__sanitizer_cov_trace_pc() #10
  %call139 = tail call i32 %43(ptr noundef %handle, i32 noundef %41, i32 noundef 0, i32 noundef 20) #8
  br label %cond.end147

cond.false140:                                    ; preds = %cond.true104
  call void @__sanitizer_cov_trace_pc() #10
  %call146 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %41, i32 noundef 0) #8
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false140, %cond.true129
  %cond148 = phi i32 [ %call139, %cond.true129 ], [ %call146, %cond.false140 ]
  %and149 = and i32 %cond148, -196609
  tail call void %37(ptr noundef %handle, i32 noundef %41, i32 noundef %and149, i32 noundef 0, i32 noundef 20) #8
  br label %if.end

land.lhs.true161:                                 ; preds = %land.lhs.true98
  %44 = ptrtoint ptr %funcs96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr333 = load ptr, ptr %funcs96, align 4
  %arrayidx153325 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 20
  %45 = ptrtoint ptr %arrayidx153325 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx153325, align 8
  %arrayidx155326 = getelementptr i32, ptr %46, i32 1
  %47 = ptrtoint ptr %arrayidx155326 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx155326, align 4
  %tobool165.not = icmp eq ptr %.pr333, null
  br i1 %tobool165.not, label %land.lhs.true161.cond.false183_crit_edge, label %land.lhs.true166

land.lhs.true161.cond.false183_crit_edge:         ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false183

land.lhs.true166:                                 ; preds = %land.lhs.true161
  %sriov_rreg170 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr333, i32 0, i32 13
  %49 = ptrtoint ptr %sriov_rreg170 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sriov_rreg170, align 4
  %tobool171.not = icmp eq ptr %50, null
  br i1 %tobool171.not, label %land.lhs.true166.cond.false183_crit_edge, label %cond.true172

land.lhs.true166.cond.false183_crit_edge:         ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false183

cond.true172:                                     ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #10
  %call182 = tail call i32 %50(ptr noundef %handle, i32 noundef %48, i32 noundef 0, i32 noundef 20) #8
  br label %cond.end190

cond.false183.sink.split:                         ; preds = %land.lhs.true93.cond.false183.sink.split_crit_edge, %cond.end88.cond.false183.sink.split_crit_edge
  %arrayidx153325334 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 20
  %51 = ptrtoint ptr %arrayidx153325334 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx153325334, align 8
  %arrayidx155326335 = getelementptr i32, ptr %52, i32 1
  %53 = ptrtoint ptr %arrayidx155326335 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx155326335, align 4
  br label %cond.false183

cond.false183:                                    ; preds = %cond.false183.sink.split, %land.lhs.true166.cond.false183_crit_edge, %land.lhs.true161.cond.false183_crit_edge
  %55 = phi i32 [ %48, %land.lhs.true166.cond.false183_crit_edge ], [ %48, %land.lhs.true161.cond.false183_crit_edge ], [ %54, %cond.false183.sink.split ]
  %call189 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %55, i32 noundef 0) #8
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false183, %cond.true172
  %56 = phi i32 [ %48, %cond.true172 ], [ %55, %cond.false183 ]
  %cond191 = phi i32 [ %call182, %cond.true172 ], [ %call189, %cond.false183 ]
  %and192 = and i32 %cond191, -196609
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %56, i32 noundef %and192, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.end190, %cond.end147, %gmc_v9_0_init_golden_registers.exit.if.end_crit_edge
  %funcs195 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %57 = ptrtoint ptr %funcs195 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %funcs195, align 4
  %update_power_gating = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %update_power_gating to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %update_power_gating, align 4
  %tobool196.not = icmp eq ptr %60, null
  br i1 %tobool196.not, label %if.end.if.end201_crit_edge, label %if.then197

if.end.if.end201_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

if.then197:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %60(ptr noundef %handle, i1 noundef zeroext true) #8
  br label %if.end201

if.end201:                                        ; preds = %if.then197, %if.end.if.end201_crit_edge
  %funcs202 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 102, i32 1
  %61 = ptrtoint ptr %funcs202 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %funcs202, align 4
  %init_registers = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %init_registers to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_registers, align 4
  tail call void %64(ptr noundef %handle) #8
  %65 = ptrtoint ptr %funcs202 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %funcs202, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  tail call void %68(ptr noundef %handle, ptr noundef null) #8
  %virt207 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %69 = ptrtoint ptr %virt207 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %virt207, align 8
  %and209 = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.then211, label %if.end201.if.end218_crit_edge

if.end201.if.end218_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end218

if.then211:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %71 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp = icmp ne i32 %71, 2
  %gfxhub = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 105
  %72 = ptrtoint ptr %gfxhub to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %gfxhub, align 4
  %set_fault_enable_default = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %set_fault_enable_default to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_fault_enable_default, align 4
  tail call void %75(ptr noundef %handle, i1 noundef zeroext %cmp) #8
  %76 = ptrtoint ptr %funcs195 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %funcs195, align 4
  %set_fault_enable_default216 = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %set_fault_enable_default216 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_fault_enable_default216, align 4
  tail call void %79(ptr noundef %handle, i1 noundef zeroext %cmp) #8
  br label %if.end218

if.end218:                                        ; preds = %if.then211, %if.end201.if.end218_crit_edge
  %num_vmhubs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 67
  %80 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_vmhubs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp219327.not = icmp eq i32 %81, 0
  br i1 %cmp219327.not, label %if.end218.for.end_crit_edge, label %if.end218.for.body_crit_edge

if.end218.for.body_crit_edge:                     ; preds = %if.end218
  br label %for.body

if.end218.for.end_crit_edge:                      ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end218.for.body_crit_edge
  %i.0328 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end218.for.body_crit_edge ]
  tail call void @gmc_v9_0_flush_gpu_tlb(ptr noundef %handle, i32 noundef 0, i32 noundef %i.0328, i32 noundef 0)
  %inc = add nuw i32 %i.0328, 1
  %82 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_vmhubs, align 8
  %cmp219 = icmp ult i32 %inc, %83
  br i1 %cmp219, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end218.for.end_crit_edge
  %funcs220 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 6
  %84 = ptrtoint ptr %funcs220 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %funcs220, align 8
  %tobool221.not = icmp eq ptr %85, null
  br i1 %tobool221.not, label %for.end.if.end231_crit_edge, label %land.lhs.true222

for.end.if.end231_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

land.lhs.true222:                                 ; preds = %for.end
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %tobool226.not = icmp eq ptr %87, null
  br i1 %tobool226.not, label %land.lhs.true222.if.end231_crit_edge, label %if.then227

land.lhs.true222.if.end231_crit_edge:             ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then227:                                       ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %87(ptr noundef %handle) #8
  br label %if.end231

if.end231:                                        ; preds = %if.then227, %land.lhs.true222.if.end231_crit_edge, %for.end.if.end231_crit_edge
  %connected_to_cpu.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 8
  %88 = ptrtoint ptr %connected_to_cpu.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %connected_to_cpu.i, align 8, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i316 = icmp eq i8 %89, 0
  br i1 %tobool.not.i316, label %if.end231.if.end.i_crit_edge, label %if.then.i

if.end231.if.end.i_crit_edge:                     ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_gmc_init_pdb0(ptr noundef %handle) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end231.if.end.i_crit_edge
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 63
  %90 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %gart.i, align 8
  %cmp.i = icmp eq ptr %91, null
  br i1 %cmp.i, label %do.end.i, label %if.end2.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.101) #11
  br label %gmc_v9_0_gart_enable.exit

if.end2.i:                                        ; preds = %if.end.i
  %94 = ptrtoint ptr %virt207 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %virt207, align 8
  %and.i318 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i318)
  %tobool3.not.i = icmp eq i32 %and.i318, 0
  br i1 %tobool3.not.i, label %if.end2.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end2.i.if.end6.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end2.i
  %in_gpu_reset.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 141
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i.i, i32 noundef 4) #8
  %96 = ptrtoint ptr %in_gpu_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %in_gpu_reset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool4.not.i = icmp eq i32 %97, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end6.i_crit_edge, label %land.lhs.true.i.skip_pin_bo.i_crit_edge

land.lhs.true.i.skip_pin_bo.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_pin_bo.i

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end2.i.if.end6.i_crit_edge
  %gtt_mgr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 9
  %call7.i = tail call i32 @amdgpu_gtt_mgr_recover(ptr noundef %gtt_mgr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.skip_pin_bo.i_crit_edge, label %if.end6.i.gmc_v9_0_gart_enable.exit_crit_edge

if.end6.i.gmc_v9_0_gart_enable.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_gart_enable.exit

if.end6.i.skip_pin_bo.i_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_pin_bo.i

skip_pin_bo.i:                                    ; preds = %if.end6.i.skip_pin_bo.i_crit_edge, %land.lhs.true.i.skip_pin_bo.i_crit_edge
  %gfxhub.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 105
  %98 = ptrtoint ptr %gfxhub.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %gfxhub.i, align 4
  %gart_enable.i = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %gart_enable.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %gart_enable.i, align 4
  %call11.i = tail call i32 %101(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %skip_pin_bo.i.gmc_v9_0_gart_enable.exit_crit_edge

skip_pin_bo.i.gmc_v9_0_gart_enable.exit_crit_edge: ; preds = %skip_pin_bo.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_gart_enable.exit

if.end14.i:                                       ; preds = %skip_pin_bo.i
  %102 = ptrtoint ptr %funcs195 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %funcs195, align 4
  %gart_enable16.i = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %gart_enable16.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %gart_enable16.i, align 4
  %call17.i = tail call i32 %105(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %do.end23.i, label %if.end14.i.gmc_v9_0_gart_enable.exit_crit_edge

if.end14.i.gmc_v9_0_gart_enable.exit_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_gart_enable.exit

do.end23.i:                                       ; preds = %if.end14.i
  %gart_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %106 = ptrtoint ptr %gart_size.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %gart_size.i, align 8
  %shr.i = lshr i64 %107, 20
  %conv.i = trunc i64 %shr.i to i32
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %conv.i) #11
  %pdb0_bo.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 44
  %108 = ptrtoint ptr %pdb0_bo.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdb0_bo.i, align 8
  %tobool27.not.i = icmp eq ptr %109, null
  br i1 %tobool27.not.i, label %do.end23.i.do.end40.i_crit_edge, label %do.end31.i

do.end23.i.do.end40.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i

do.end31.i:                                       ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %call35.i = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef nonnull %109) #8
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i64 noundef %call35.i) #11
  br label %do.end40.i

do.end40.i:                                       ; preds = %do.end31.i, %do.end23.i.do.end40.i_crit_edge
  %110 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %gart.i, align 8
  %call44.i = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %111) #8
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i64 noundef %call44.i) #11
  %ready.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 63, i32 5
  %112 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %ready.i, align 4
  br label %gmc_v9_0_gart_enable.exit

gmc_v9_0_gart_enable.exit:                        ; preds = %do.end40.i, %if.end14.i.gmc_v9_0_gart_enable.exit_crit_edge, %skip_pin_bo.i.gmc_v9_0_gart_enable.exit_crit_edge, %if.end6.i.gmc_v9_0_gart_enable.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %do.end40.i ], [ %call7.i, %if.end6.i.gmc_v9_0_gart_enable.exit_crit_edge ], [ %call11.i, %skip_pin_bo.i.gmc_v9_0_gart_enable.exit_crit_edge ], [ %call17.i, %if.end14.i.gmc_v9_0_gart_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gfxhub.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 105
  %0 = ptrtoint ptr %gfxhub.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gfxhub.i, align 4
  %gart_disable.i = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gart_disable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gart_disable.i, align 4
  tail call void %3(ptr noundef %handle) #8
  %funcs1.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %4 = ptrtoint ptr %funcs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs1.i, align 4
  %gart_disable2.i = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gart_disable2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gart_disable2.i, align 4
  tail call void %7(ptr noundef %handle) #8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.112) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %funcs1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs1.i, align 4
  %update_power_gating = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %update_power_gating to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %update_power_gating, align 4
  %tobool1.not = icmp eq ptr %13, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %handle, i1 noundef zeroext false) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %ecc_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 40
  %call = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %ecc_irq, i32 noundef 0) #8
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call8 = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %vm_fault, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gfxhub.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 105
  %0 = ptrtoint ptr %gfxhub.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gfxhub.i.i, align 4
  %gart_disable.i.i = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gart_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gart_disable.i.i, align 4
  tail call void %3(ptr noundef %handle) #8
  %funcs1.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %4 = ptrtoint ptr %funcs1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs1.i.i, align 4
  %gart_disable2.i.i = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gart_disable2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gart_disable2.i.i, align 4
  tail call void %7(ptr noundef %handle) #8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %8 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.112) #8
  br label %gmc_v9_0_hw_fini.exit

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %funcs1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs1.i.i, align 4
  %update_power_gating.i = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %update_power_gating.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %update_power_gating.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %handle, i1 noundef zeroext false) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  %ecc_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 40
  %call.i = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %ecc_irq.i, i32 noundef 0) #8
  %vm_fault.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call8.i = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %vm_fault.i, i32 noundef 0) #8
  br label %gmc_v9_0_hw_fini.exit

gmc_v9_0_hw_fini.exit:                            ; preds = %if.end6.i, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gmc_v9_0_hw_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_vmid_reset_all(ptr noundef %handle) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gmc_v9_0_is_idle(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v9_0_wait_for_idle(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v9_0_soft_reset(ptr nocapture noundef readnone %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %set_clockgating = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %set_clockgating to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_clockgating, align 4
  %call = tail call i32 %3(ptr noundef %handle, i32 noundef %state) #8
  %call1 = tail call i32 @athub_v1_0_set_clockgating(ptr noundef %handle, i32 noundef %state) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v9_0_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v9_0_get_clockgating_state(ptr noundef %handle, ptr noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %get_clockgating = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %get_clockgating to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_clockgating, align 4
  tail call void %3(ptr noundef %handle, ptr noundef %flags) #8
  tail call void @athub_v1_0_get_clockgating(ptr noundef %handle, ptr noundef %flags) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v9_0_flush_gpu_tlb(ptr noundef %adev, i32 noundef %vmid, i32 noundef %vmhub, i32 noundef %flush_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 590850, i32 %1)
  %cmp.i = icmp ne i32 %1, 590850
  %vmhub.off.i = add i32 %vmhub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %vmhub.off.i)
  %switch.i = icmp ult i32 %vmhub.off.i, 2
  %or.cond.i = and i1 %switch.i, %cmp.i
  br i1 %or.cond.i, label %land.lhs.true.i, label %entry.gmc_v9_0_use_invalidate_semaphore.exit_crit_edge

entry.gmc_v9_0_use_invalidate_semaphore.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_use_invalidate_semaphore.exit

land.lhs.true.i:                                  ; preds = %entry
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %land.lhs.true.i.gmc_v9_0_use_invalidate_semaphore.exit_crit_edge

land.lhs.true.i.gmc_v9_0_use_invalidate_semaphore.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_use_invalidate_semaphore.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %apu_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 10
  %4 = ptrtoint ptr %apu_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %apu_flags.i, align 4
  %6 = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ne i32 %6, 4
  br label %gmc_v9_0_use_invalidate_semaphore.exit

gmc_v9_0_use_invalidate_semaphore.exit:           ; preds = %land.rhs.i, %land.lhs.true.i.gmc_v9_0_use_invalidate_semaphore.exit_crit_edge, %entry.gmc_v9_0_use_invalidate_semaphore.exit_crit_edge
  %retval.0.i = phi i1 [ false, %entry.gmc_v9_0_use_invalidate_semaphore.exit_crit_edge ], [ false, %land.lhs.true.i.gmc_v9_0_use_invalidate_semaphore.exit_crit_edge ], [ %7, %land.rhs.i ]
  %num_vmhubs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 67
  %8 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_vmhubs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %vmhub)
  %cmp.not = icmp ugt i32 %9, %vmhub
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !249

do.body2:                                         ; preds = %gmc_v9_0_use_invalidate_semaphore.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 767, 0\0A.popsection", ""() #8, !srcloc !251
  unreachable

do.end7:                                          ; preds = %gmc_v9_0_use_invalidate_semaphore.exit
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 4
  %10 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_physical_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 590848, i32 %1)
  %cmp12 = icmp eq i32 %1, 590848
  %or.cond504 = select i1 %tobool9.not, i1 %cmp12, i1 false
  %shl.i = shl nuw i32 1, %vmid
  %and2.i = and i32 %shl.i, 65535
  br i1 %or.cond504, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i = or i32 %and2.i, 131072
  %shl4.i = shl i32 %flush_type, 16
  %and5.i = and i32 %shl4.i, 196608
  %or6.i496 = or i32 %and2.i, %and5.i
  %or16.i497 = or i32 %or6.i496, 8126464
  br label %if.end17

if.else:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  %shl4.i500 = shl i32 %flush_type, 16
  %and5.i501 = and i32 %shl4.i500, 196608
  %or6.i502 = or i32 %and5.i501, %and2.i
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then13
  %inv_req.0.in = phi i32 [ %or6.i, %if.then13 ], [ %or6.i502, %if.else ]
  %inv_req2.0 = phi i32 [ %or16.i497, %if.then13 ], [ 0, %if.else ]
  %inv_req.0 = or i32 %inv_req.0.in, 8126464
  %ready = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 3, i32 17
  %12 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ready, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not = icmp eq i8 %13, 0
  br i1 %tobool18.not, label %if.end17.if.end33_crit_edge, label %land.lhs.true19

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true19:                                  ; preds = %if.end17
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %16 = and i32 %15, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %.not = icmp eq i32 %16, 4
  br i1 %.not, label %land.lhs.true19.if.end33_crit_edge, label %land.lhs.true25

land.lhs.true19.if.end33_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true25:                                  ; preds = %land.lhs.true19
  %reset_sem = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 143
  %call26 = tail call i32 @down_read_trylock(ptr noundef %reset_sem) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.end33_crit_edge, label %if.then28

land.lhs.true25.if.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  %vm_inv_eng0_req = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 3
  %17 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_inv_eng0_req, align 4
  %eng_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 10
  %19 = ptrtoint ptr %eng_distance to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eng_distance, align 4
  %mul = mul i32 %20, 17
  %add = add i32 %mul, %18
  %vm_inv_eng0_ack = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 4
  %21 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_inv_eng0_ack, align 4
  %add31 = add i32 %22, %mul
  %shl = shl nuw i32 1, %vmid
  tail call void @amdgpu_virt_kiq_reg_write_reg_wait(ptr noundef %adev, i32 noundef %add, i32 noundef %add31, i32 noundef %inv_req.0, i32 noundef %shl) #8
  tail call void @up_read(ptr noundef %reset_sem) #8
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true25.if.end33_crit_edge, %land.lhs.true19.if.end33_crit_edge, %if.end17.if.end33_crit_edge
  %invalidate_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 30
  tail call void @_raw_spin_lock(ptr noundef %invalidate_lock) #8
  br i1 %retval.0.i, label %for.cond.preheader, label %if.end33.if.end108_crit_edge

if.end33.if.end108_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

for.cond.preheader:                               ; preds = %if.end33
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %23 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp37505.not = icmp eq i32 %24, 0
  br i1 %cmp37505.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vmhub)
  %cmp38 = icmp eq i32 %vmhub, 0
  %virt66 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs73 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %vm_inv_eng0_sem86 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 2
  %eng_distance87 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end103.for.body_crit_edge, %for.body.lr.ph
  %j.0506 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end103.for.body_crit_edge ]
  %25 = ptrtoint ptr %virt66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %virt66, align 8
  %and42 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %cmp38, label %if.then39, label %if.else65

if.then39:                                        ; preds = %for.body
  br i1 %tobool43.not, label %if.then39.cond.false_crit_edge, label %land.lhs.true44

if.then39.cond.false_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true44:                                  ; preds = %if.then39
  %27 = ptrtoint ptr %funcs73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs73, align 4
  %tobool46.not = icmp eq ptr %28, null
  br i1 %tobool46.not, label %land.lhs.true44.cond.false_crit_edge, label %land.lhs.true47

land.lhs.true44.cond.false_crit_edge:             ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sriov_rreg, align 4
  %tobool51.not = icmp eq ptr %30, null
  br i1 %tobool51.not, label %land.lhs.true47.cond.false_crit_edge, label %cond.true

land.lhs.true47.cond.false_crit_edge:             ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %vm_inv_eng0_sem86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm_inv_eng0_sem86, align 4
  %33 = ptrtoint ptr %eng_distance87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %eng_distance87, align 4
  %mul57 = mul i32 %34, 17
  %add58 = add i32 %mul57, %32
  %call59 = tail call i32 %30(ptr noundef %adev, i32 noundef %add58, i32 noundef 2, i32 noundef 1) #8
  br label %if.end99

cond.false:                                       ; preds = %land.lhs.true47.cond.false_crit_edge, %land.lhs.true44.cond.false_crit_edge, %if.then39.cond.false_crit_edge
  %35 = ptrtoint ptr %vm_inv_eng0_sem86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vm_inv_eng0_sem86, align 4
  %37 = ptrtoint ptr %eng_distance87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %eng_distance87, align 4
  %mul62 = mul i32 %38, 17
  %add63 = add i32 %mul62, %36
  %call64 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add63, i32 noundef 0) #8
  br label %if.end99

if.else65:                                        ; preds = %for.body
  br i1 %tobool43.not, label %if.else65.cond.false91_crit_edge, label %land.lhs.true70

if.else65.cond.false91_crit_edge:                 ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false91

land.lhs.true70:                                  ; preds = %if.else65
  %39 = ptrtoint ptr %funcs73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %funcs73, align 4
  %tobool74.not = icmp eq ptr %40, null
  br i1 %tobool74.not, label %land.lhs.true70.cond.false91_crit_edge, label %land.lhs.true75

land.lhs.true70.cond.false91_crit_edge:           ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false91

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %sriov_rreg79 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %sriov_rreg79 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sriov_rreg79, align 4
  %tobool80.not = icmp eq ptr %42, null
  br i1 %tobool80.not, label %land.lhs.true75.cond.false91_crit_edge, label %cond.true81

land.lhs.true75.cond.false91_crit_edge:           ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false91

cond.true81:                                      ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %vm_inv_eng0_sem86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vm_inv_eng0_sem86, align 4
  %45 = ptrtoint ptr %eng_distance87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eng_distance87, align 4
  %mul88 = mul i32 %46, 17
  %add89 = add i32 %mul88, %44
  %call90 = tail call i32 %42(ptr noundef %adev, i32 noundef %add89, i32 noundef 2, i32 noundef 11) #8
  br label %if.end99

cond.false91:                                     ; preds = %land.lhs.true75.cond.false91_crit_edge, %land.lhs.true70.cond.false91_crit_edge, %if.else65.cond.false91_crit_edge
  %47 = ptrtoint ptr %vm_inv_eng0_sem86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vm_inv_eng0_sem86, align 4
  %49 = ptrtoint ptr %eng_distance87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %eng_distance87, align 4
  %mul94 = mul i32 %50, 17
  %add95 = add i32 %mul94, %48
  %call96 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add95, i32 noundef 0) #8
  br label %if.end99

if.end99:                                         ; preds = %cond.false91, %cond.true81, %cond.false, %cond.true
  %tmp.0 = phi i32 [ %call59, %cond.true ], [ %call64, %cond.false ], [ %call90, %cond.true81 ], [ %call96, %cond.false91 ]
  %and100 = and i32 %tmp.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end99.for.end_crit_edge

if.end99.for.end_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end103:                                        ; preds = %if.end99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #8
  %inc = add nuw i32 %j.0506, 1
  %52 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %usec_timeout, align 8
  %cmp37 = icmp ult i32 %inc, %53
  br i1 %cmp37, label %if.end103.for.body_crit_edge, label %if.end103.for.end_crit_edge

if.end103.for.end_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end103.for.body_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end103.for.end_crit_edge, %if.end99.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %j.0506, %if.end99.for.end_crit_edge ], [ %inc, %if.end103.for.end_crit_edge ]
  %54 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %55)
  %cmp105.not = icmp ult i32 %j.0.lcssa, %55
  br i1 %cmp105.not, label %for.end.if.end108_crit_edge, label %if.then106

for.end.if.end108_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then106:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #8
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %for.end.if.end108_crit_edge, %if.end33.if.end108_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vmhub)
  %cmp110 = icmp eq i32 %vmhub, 0
  %virt142 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs149 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %vm_inv_eng0_req162 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 3
  %eng_distance163 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 10
  %usec_timeout187 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %vm_inv_eng0_ack246 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 4
  %shl260 = shl nuw i32 1, %vmid
  br label %do.body109

do.body109:                                       ; preds = %for.end267.do.body109_crit_edge, %if.end108
  %inv_req.1 = phi i32 [ %inv_req.0, %if.end108 ], [ %inv_req2.1, %for.end267.do.body109_crit_edge ]
  %inv_req2.1 = phi i32 [ %inv_req2.0, %if.end108 ], [ 0, %for.end267.do.body109_crit_edge ]
  %56 = ptrtoint ptr %virt142 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt142, align 8
  %and114 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %cmp110, label %if.then111, label %if.else141

if.then111:                                       ; preds = %do.body109
  br i1 %tobool115.not, label %if.then111.cond.false135_crit_edge, label %land.lhs.true116

if.then111.cond.false135_crit_edge:               ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false135

land.lhs.true116:                                 ; preds = %if.then111
  %58 = ptrtoint ptr %funcs149 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs149, align 4
  %tobool120.not = icmp eq ptr %59, null
  br i1 %tobool120.not, label %land.lhs.true116.cond.false135_crit_edge, label %land.lhs.true121

land.lhs.true116.cond.false135_crit_edge:         ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false135

land.lhs.true121:                                 ; preds = %land.lhs.true116
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sriov_wreg, align 4
  %tobool125.not = icmp eq ptr %61, null
  br i1 %tobool125.not, label %land.lhs.true121.cond.false135_crit_edge, label %cond.true126

land.lhs.true121.cond.false135_crit_edge:         ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false135

cond.true126:                                     ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %vm_inv_eng0_req162 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vm_inv_eng0_req162, align 4
  %64 = ptrtoint ptr %eng_distance163 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %eng_distance163, align 4
  %mul133 = mul i32 %65, 17
  %add134 = add i32 %mul133, %63
  tail call void %61(ptr noundef %adev, i32 noundef %add134, i32 noundef %inv_req.1, i32 noundef 2, i32 noundef 1) #8
  br label %land.lhs.true174

cond.false135:                                    ; preds = %land.lhs.true121.cond.false135_crit_edge, %land.lhs.true116.cond.false135_crit_edge, %if.then111.cond.false135_crit_edge
  %66 = ptrtoint ptr %vm_inv_eng0_req162 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vm_inv_eng0_req162, align 4
  %68 = ptrtoint ptr %eng_distance163 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %eng_distance163, align 4
  %mul138 = mul i32 %69, 17
  %add139 = add i32 %mul138, %67
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add139, i32 noundef %inv_req.1, i32 noundef 0) #8
  br label %land.lhs.true174

if.else141:                                       ; preds = %do.body109
  br i1 %tobool115.not, label %if.else141.cond.false166_crit_edge, label %land.lhs.true146

if.else141.cond.false166_crit_edge:               ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false166

land.lhs.true146:                                 ; preds = %if.else141
  %70 = ptrtoint ptr %funcs149 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %funcs149, align 4
  %tobool150.not = icmp eq ptr %71, null
  br i1 %tobool150.not, label %land.lhs.true146.cond.false166_crit_edge, label %land.lhs.true151

land.lhs.true146.cond.false166_crit_edge:         ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false166

land.lhs.true151:                                 ; preds = %land.lhs.true146
  %sriov_wreg155 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %sriov_wreg155 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sriov_wreg155, align 4
  %tobool156.not = icmp eq ptr %73, null
  br i1 %tobool156.not, label %land.lhs.true151.cond.false166_crit_edge, label %cond.true157

land.lhs.true151.cond.false166_crit_edge:         ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false166

cond.true157:                                     ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %vm_inv_eng0_req162 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vm_inv_eng0_req162, align 4
  %76 = ptrtoint ptr %eng_distance163 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %eng_distance163, align 4
  %mul164 = mul i32 %77, 17
  %add165 = add i32 %mul164, %75
  tail call void %73(ptr noundef %adev, i32 noundef %add165, i32 noundef %inv_req.1, i32 noundef 2, i32 noundef 11) #8
  br label %if.end185

cond.false166:                                    ; preds = %land.lhs.true151.cond.false166_crit_edge, %land.lhs.true146.cond.false166_crit_edge, %if.else141.cond.false166_crit_edge
  %78 = ptrtoint ptr %vm_inv_eng0_req162 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vm_inv_eng0_req162, align 4
  %80 = ptrtoint ptr %eng_distance163 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %eng_distance163, align 4
  %mul169 = mul i32 %81, 17
  %add170 = add i32 %mul169, %79
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add170, i32 noundef %inv_req.1, i32 noundef 0) #8
  br label %if.end185

land.lhs.true174:                                 ; preds = %cond.false135, %cond.true126
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 590850, i32 %83)
  %cmp178 = icmp ult i32 %83, 590850
  br i1 %cmp178, label %if.then179, label %land.lhs.true174.if.end185_crit_edge

land.lhs.true174.if.end185_crit_edge:             ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.then179:                                       ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %vm_inv_eng0_req162 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vm_inv_eng0_req162, align 4
  %86 = ptrtoint ptr %eng_distance163 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %eng_distance163, align 4
  %mul182 = mul i32 %87, 17
  %add183 = add i32 %mul182, %85
  %call184 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add183, i32 noundef 2) #8
  br label %if.end185

if.end185:                                        ; preds = %if.then179, %land.lhs.true174.if.end185_crit_edge, %cond.false166, %cond.true157
  %88 = ptrtoint ptr %usec_timeout187 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %usec_timeout187, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp188508.not = icmp eq i32 %89, 0
  br i1 %cmp188508.not, label %if.end185.for.end267_crit_edge, label %if.end185.for.body189_crit_edge

if.end185.for.body189_crit_edge:                  ; preds = %if.end185
  br label %for.body189

if.end185.for.end267_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end267

for.body189:                                      ; preds = %if.end264.for.body189_crit_edge, %if.end185.for.body189_crit_edge
  %j.1509 = phi i32 [ %inc266, %if.end264.for.body189_crit_edge ], [ 0, %if.end185.for.body189_crit_edge ]
  %90 = ptrtoint ptr %virt142 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %virt142, align 8
  %and194 = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %cmp110, label %if.then191, label %if.else225

if.then191:                                       ; preds = %for.body189
  br i1 %tobool195.not, label %if.then191.cond.false217_crit_edge, label %land.lhs.true196

if.then191.cond.false217_crit_edge:               ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false217

land.lhs.true196:                                 ; preds = %if.then191
  %92 = ptrtoint ptr %funcs149 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %funcs149, align 4
  %tobool200.not = icmp eq ptr %93, null
  br i1 %tobool200.not, label %land.lhs.true196.cond.false217_crit_edge, label %land.lhs.true201

land.lhs.true196.cond.false217_crit_edge:         ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false217

land.lhs.true201:                                 ; preds = %land.lhs.true196
  %sriov_rreg205 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %93, i32 0, i32 13
  %94 = ptrtoint ptr %sriov_rreg205 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sriov_rreg205, align 4
  %tobool206.not = icmp eq ptr %95, null
  br i1 %tobool206.not, label %land.lhs.true201.cond.false217_crit_edge, label %cond.true207

land.lhs.true201.cond.false217_crit_edge:         ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false217

cond.true207:                                     ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %vm_inv_eng0_ack246 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %vm_inv_eng0_ack246, align 4
  %98 = ptrtoint ptr %eng_distance163 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %eng_distance163, align 4
  %mul214 = mul i32 %99, 17
  %add215 = add i32 %mul214, %97
  %call216 = tail call i32 %95(ptr noundef %adev, i32 noundef %add215, i32 noundef 2, i32 noundef 1) #8
  br label %if.end259

cond.false217:                                    ; preds = %land.lhs.true201.cond.false217_crit_edge, %land.lhs.true196.cond.false217_crit_edge, %if.then191.cond.false217_crit_edge
  %100 = ptrtoint ptr %vm_inv_eng0_ack246 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vm_inv_eng0_ack246, align 4
  %102 = ptrtoint ptr %eng_distance163 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %eng_distance163, align 4
  %mul220 = mul i32 %103, 17
  %add221 = add i32 %mul220, %101
  %call222 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add221, i32 noundef 0) #8
  br label %if.end259

if.else225:                                       ; preds = %for.body189
  br i1 %tobool195.not, label %if.else225.cond.false251_crit_edge, label %land.lhs.true230

if.else225.cond.false251_crit_edge:               ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false251

land.lhs.true230:                                 ; preds = %if.else225
  %104 = ptrtoint ptr %funcs149 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %funcs149, align 4
  %tobool234.not = icmp eq ptr %105, null
  br i1 %tobool234.not, label %land.lhs.true230.cond.false251_crit_edge, label %land.lhs.true235

land.lhs.true230.cond.false251_crit_edge:         ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false251

land.lhs.true235:                                 ; preds = %land.lhs.true230
  %sriov_rreg239 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %105, i32 0, i32 13
  %106 = ptrtoint ptr %sriov_rreg239 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sriov_rreg239, align 4
  %tobool240.not = icmp eq ptr %107, null
  br i1 %tobool240.not, label %land.lhs.true235.cond.false251_crit_edge, label %cond.true241

land.lhs.true235.cond.false251_crit_edge:         ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false251

cond.true241:                                     ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %vm_inv_eng0_ack246 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %vm_inv_eng0_ack246, align 4
  %110 = ptrtoint ptr %eng_distance163 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %eng_distance163, align 4
  %mul248 = mul i32 %111, 17
  %add249 = add i32 %mul248, %109
  %call250 = tail call i32 %107(ptr noundef %adev, i32 noundef %add249, i32 noundef 2, i32 noundef 11) #8
  br label %if.end259

cond.false251:                                    ; preds = %land.lhs.true235.cond.false251_crit_edge, %land.lhs.true230.cond.false251_crit_edge, %if.else225.cond.false251_crit_edge
  %112 = ptrtoint ptr %vm_inv_eng0_ack246 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %vm_inv_eng0_ack246, align 4
  %114 = ptrtoint ptr %eng_distance163 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %eng_distance163, align 4
  %mul254 = mul i32 %115, 17
  %add255 = add i32 %mul254, %113
  %call256 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add255, i32 noundef 0) #8
  br label %if.end259

if.end259:                                        ; preds = %cond.false251, %cond.true241, %cond.false217, %cond.true207
  %tmp.1 = phi i32 [ %call216, %cond.true207 ], [ %call222, %cond.false217 ], [ %call250, %cond.true241 ], [ %call256, %cond.false251 ]
  %and261 = and i32 %tmp.1, %shl260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261)
  %tobool262.not = icmp eq i32 %and261, 0
  br i1 %tobool262.not, label %if.end264, label %if.end259.for.end267_crit_edge

if.end259.for.end267_crit_edge:                   ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end267

if.end264:                                        ; preds = %if.end259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748) #8
  %inc266 = add nuw i32 %j.1509, 1
  %117 = ptrtoint ptr %usec_timeout187 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %usec_timeout187, align 8
  %cmp188 = icmp ult i32 %inc266, %118
  br i1 %cmp188, label %if.end264.for.body189_crit_edge, label %if.end264.for.end267_crit_edge

if.end264.for.end267_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end267

if.end264.for.body189_crit_edge:                  ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body189

for.end267:                                       ; preds = %if.end264.for.end267_crit_edge, %if.end259.for.end267_crit_edge, %if.end185.for.end267_crit_edge
  %j.1.lcssa = phi i32 [ 0, %if.end185.for.end267_crit_edge ], [ %j.1509, %if.end259.for.end267_crit_edge ], [ %inc266, %if.end264.for.end267_crit_edge ]
  %tobool269.not = icmp eq i32 %inv_req2.1, 0
  br i1 %tobool269.not, label %do.end270, label %for.end267.do.body109_crit_edge

for.end267.do.body109_crit_edge:                  ; preds = %for.end267
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body109

do.end270:                                        ; preds = %for.end267
  br i1 %retval.0.i, label %if.then272, label %do.end270.if.end337_crit_edge

do.end270.if.end337_crit_edge:                    ; preds = %do.end270
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end337

if.then272:                                       ; preds = %do.end270
  %119 = ptrtoint ptr %virt142 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %virt142, align 8
  %and277 = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %cmp110, label %if.then274, label %if.else305

if.then274:                                       ; preds = %if.then272
  br i1 %tobool278.not, label %if.then274.cond.false299_crit_edge, label %land.lhs.true279

if.then274.cond.false299_crit_edge:               ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false299

land.lhs.true279:                                 ; preds = %if.then274
  %121 = ptrtoint ptr %funcs149 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %funcs149, align 4
  %tobool283.not = icmp eq ptr %122, null
  br i1 %tobool283.not, label %land.lhs.true279.cond.false299_crit_edge, label %land.lhs.true284

land.lhs.true279.cond.false299_crit_edge:         ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false299

land.lhs.true284:                                 ; preds = %land.lhs.true279
  %sriov_wreg288 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %122, i32 0, i32 12
  %123 = ptrtoint ptr %sriov_wreg288 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sriov_wreg288, align 4
  %tobool289.not = icmp eq ptr %124, null
  br i1 %tobool289.not, label %land.lhs.true284.cond.false299_crit_edge, label %cond.true290

land.lhs.true284.cond.false299_crit_edge:         ; preds = %land.lhs.true284
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false299

cond.true290:                                     ; preds = %land.lhs.true284
  call void @__sanitizer_cov_trace_pc() #10
  %vm_inv_eng0_sem295 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 2
  %125 = ptrtoint ptr %vm_inv_eng0_sem295 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %vm_inv_eng0_sem295, align 4
  %eng_distance296 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 10
  %127 = ptrtoint ptr %eng_distance296 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %eng_distance296, align 4
  %mul297 = mul i32 %128, 17
  %add298 = add i32 %mul297, %126
  tail call void %124(ptr noundef %adev, i32 noundef %add298, i32 noundef 0, i32 noundef 2, i32 noundef 1) #8
  br label %if.end337

cond.false299:                                    ; preds = %land.lhs.true284.cond.false299_crit_edge, %land.lhs.true279.cond.false299_crit_edge, %if.then274.cond.false299_crit_edge
  %vm_inv_eng0_sem300 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 2
  %129 = ptrtoint ptr %vm_inv_eng0_sem300 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %vm_inv_eng0_sem300, align 4
  %eng_distance301 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 10
  %131 = ptrtoint ptr %eng_distance301 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %eng_distance301, align 4
  %mul302 = mul i32 %132, 17
  %add303 = add i32 %mul302, %130
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add303, i32 noundef 0, i32 noundef 0) #8
  br label %if.end337

if.else305:                                       ; preds = %if.then272
  br i1 %tobool278.not, label %if.else305.cond.false330_crit_edge, label %land.lhs.true310

if.else305.cond.false330_crit_edge:               ; preds = %if.else305
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false330

land.lhs.true310:                                 ; preds = %if.else305
  %133 = ptrtoint ptr %funcs149 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %funcs149, align 4
  %tobool314.not = icmp eq ptr %134, null
  br i1 %tobool314.not, label %land.lhs.true310.cond.false330_crit_edge, label %land.lhs.true315

land.lhs.true310.cond.false330_crit_edge:         ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false330

land.lhs.true315:                                 ; preds = %land.lhs.true310
  %sriov_wreg319 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %134, i32 0, i32 12
  %135 = ptrtoint ptr %sriov_wreg319 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sriov_wreg319, align 4
  %tobool320.not = icmp eq ptr %136, null
  br i1 %tobool320.not, label %land.lhs.true315.cond.false330_crit_edge, label %cond.true321

land.lhs.true315.cond.false330_crit_edge:         ; preds = %land.lhs.true315
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false330

cond.true321:                                     ; preds = %land.lhs.true315
  call void @__sanitizer_cov_trace_pc() #10
  %vm_inv_eng0_sem326 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 2
  %137 = ptrtoint ptr %vm_inv_eng0_sem326 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %vm_inv_eng0_sem326, align 4
  %139 = ptrtoint ptr %eng_distance163 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %eng_distance163, align 4
  %mul328 = mul i32 %140, 17
  %add329 = add i32 %mul328, %138
  tail call void %136(ptr noundef %adev, i32 noundef %add329, i32 noundef 0, i32 noundef 2, i32 noundef 11) #8
  br label %if.end337

cond.false330:                                    ; preds = %land.lhs.true315.cond.false330_crit_edge, %land.lhs.true310.cond.false330_crit_edge, %if.else305.cond.false330_crit_edge
  %vm_inv_eng0_sem331 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 2
  %141 = ptrtoint ptr %vm_inv_eng0_sem331 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %vm_inv_eng0_sem331, align 4
  %143 = ptrtoint ptr %eng_distance163 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %eng_distance163, align 4
  %mul333 = mul i32 %144, 17
  %add334 = add i32 %mul333, %142
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add334, i32 noundef 0, i32 noundef 0) #8
  br label %if.end337

if.end337:                                        ; preds = %cond.false330, %cond.true321, %cond.false299, %cond.true290, %do.end270.if.end337_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %invalidate_lock) #8
  %145 = ptrtoint ptr %usec_timeout187 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %usec_timeout187, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.lcssa, i32 %146)
  %cmp341 = icmp ult i32 %j.1.lcssa, %146
  br i1 %cmp341, label %if.end337.cleanup_crit_edge, label %if.end343

if.end337.cleanup_crit_edge:                      ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end343:                                        ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end343, %if.end337.cleanup_crit_edge, %if.then28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_flush_gpu_tlb_pasid(ptr noundef %adev, i16 noundef zeroext %pasid, i32 noundef %flush_type, i1 noundef zeroext %all_hub) #0 align 64 {
entry:
  %seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq) #8
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %seq, align 4, !annotation !252
  %ring1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #8
  %1 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup70_crit_edge

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup70

if.end:                                           ; preds = %entry
  %ready = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 3, i32 17
  %3 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ready, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.end.if.end47_crit_edge, label %land.lhs.true

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end
  %reset_sem = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 143
  %call6 = tail call i32 @down_read_trylock(ptr noundef %reset_sem) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end47_crit_edge, label %if.then8

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then8:                                         ; preds = %land.lhs.true
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 4
  %5 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_physical_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %pmf121 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 5
  %7 = ptrtoint ptr %pmf121 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pmf121, align 4
  %invalidate_tlbs_size122 = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %invalidate_tlbs_size122 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %invalidate_tlbs_size122, align 4
  %add123 = add i32 %10, 8
  br label %17

land.end:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 590848, i32 %12)
  %cmp = icmp eq i32 %12, 590848
  %pmf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 5
  %13 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pmf, align 4
  %invalidate_tlbs_size = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %invalidate_tlbs_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %invalidate_tlbs_size, align 4
  %add = add i32 %16, 8
  %add16 = select i1 %cmp, i32 %16, i32 0
  %spec.select126 = add i32 %add, %add16
  br label %17

17:                                               ; preds = %land.end, %land.end.thread
  %pmf125 = phi ptr [ %pmf121, %land.end.thread ], [ %pmf, %land.end ]
  %18 = phi i1 [ false, %land.end.thread ], [ %cmp, %land.end ]
  %19 = phi i32 [ %add123, %land.end.thread ], [ %spec.select126, %land.end ]
  %ring_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 2
  tail call void @_raw_spin_lock(ptr noundef %ring_lock) #8
  %call20 = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring1, i32 noundef %19) #8
  br i1 %18, label %if.then22, label %.if.end25_crit_edge

.if.end25_crit_edge:                              ; preds = %17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %17
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %pmf125 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmf125, align 4
  %kiq_invalidate_tlbs = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %kiq_invalidate_tlbs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kiq_invalidate_tlbs, align 4
  tail call void %23(ptr noundef %ring1, i16 noundef zeroext %pasid, i32 noundef 2, i1 noundef zeroext %all_hub) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %.if.end25_crit_edge
  %24 = ptrtoint ptr %pmf125 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pmf125, align 4
  %kiq_invalidate_tlbs27 = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %kiq_invalidate_tlbs27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kiq_invalidate_tlbs27, align 4
  tail call void %27(ptr noundef %ring1, i16 noundef zeroext %pasid, i32 noundef %flush_type, i1 noundef zeroext %all_hub) #8
  %call29 = call i32 @amdgpu_fence_emit_polling(ptr noundef %ring1, ptr noundef nonnull %seq, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %if.then31

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_ring_undo(ptr noundef %ring1) #8
  call void @_raw_spin_unlock(ptr noundef %ring_lock) #8
  call void @up_read(ptr noundef %reset_sem) #8
  br label %cleanup70

if.end36:                                         ; preds = %if.end25
  call void @amdgpu_ring_commit(ptr noundef %ring1) #8
  call void @_raw_spin_unlock(ptr noundef %ring_lock) #8
  %28 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seq, align 4
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %30 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout, align 8
  %call40 = call i32 @amdgpu_fence_wait_polling(ptr noundef %ring1, i32 noundef %29, i32 noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 1
  br i1 %cmp41, label %do.end, label %if.end44

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.4, i32 noundef %call40) #11
  call void @up_read(ptr noundef %reset_sem) #8
  br label %cleanup70

if.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef %reset_sem) #8
  br label %cleanup70

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.end.if.end47_crit_edge
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc67.for.body_crit_edge, %if.end47
  %vmid.0129 = phi i32 [ 1, %if.end47 ], [ %inc68, %for.inc67.for.body_crit_edge ]
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add.i = add nuw nsw i32 %vmid.0129, 12
  %add3.i = add i32 %add.i, %37
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add3.i, i32 noundef 0) #8
  %conv4.i = trunc i32 %call.i to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %conv4.i, i16 %pasid)
  %cmp56 = icmp eq i16 %conv4.i, %pasid
  %or.cond = and i1 %tobool.i, %cmp56
  br i1 %or.cond, label %if.then58, label %for.inc67

if.then58:                                        ; preds = %for.body
  br i1 %all_hub, label %for.cond61.preheader, label %if.else

for.cond61.preheader:                             ; preds = %if.then58
  %num_vmhubs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 67
  %38 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_vmhubs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp62130.not = icmp eq i32 %39, 0
  br i1 %cmp62130.not, label %for.cond61.preheader.cleanup70_crit_edge, label %for.cond61.preheader.for.body64_crit_edge

for.cond61.preheader.for.body64_crit_edge:        ; preds = %for.cond61.preheader
  br label %for.body64

for.cond61.preheader.cleanup70_crit_edge:         ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup70

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %for.cond61.preheader.for.body64_crit_edge
  %i.0131 = phi i32 [ %inc, %for.body64.for.body64_crit_edge ], [ 0, %for.cond61.preheader.for.body64_crit_edge ]
  tail call void @gmc_v9_0_flush_gpu_tlb(ptr noundef %adev, i32 noundef %vmid.0129, i32 noundef %i.0131, i32 noundef %flush_type)
  %inc = add nuw i32 %i.0131, 1
  %40 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_vmhubs, align 8
  %cmp62 = icmp ult i32 %inc, %41
  br i1 %cmp62, label %for.body64.for.body64_crit_edge, label %for.body64.cleanup70_crit_edge

for.body64.cleanup70_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup70

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body64

if.else:                                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gmc_v9_0_flush_gpu_tlb(ptr noundef %adev, i32 noundef %vmid.0129, i32 noundef 0, i32 noundef %flush_type)
  br label %cleanup70

for.inc67:                                        ; preds = %for.body
  %inc68 = add nuw nsw i32 %vmid.0129, 1
  %exitcond.not = icmp eq i32 %inc68, 16
  br i1 %exitcond.not, label %for.inc67.cleanup70_crit_edge, label %for.inc67.for.body_crit_edge

for.inc67.for.body_crit_edge:                     ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc67.cleanup70_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup70

cleanup70:                                        ; preds = %for.inc67.cleanup70_crit_edge, %if.else, %for.body64.cleanup70_crit_edge, %for.cond61.preheader.cleanup70_crit_edge, %if.end44, %do.end, %if.then31, %entry.cleanup70_crit_edge
  %retval.1 = phi i32 [ -5, %entry.cleanup70_crit_edge ], [ -62, %if.then31 ], [ -62, %do.end ], [ 0, %if.end44 ], [ 0, %if.else ], [ 0, %for.cond61.preheader.cleanup70_crit_edge ], [ 0, %for.body64.cleanup70_crit_edge ], [ 0, %for.inc67.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gmc_v9_0_emit_flush_gpu_tlb(ptr noundef %ring, i32 noundef %vmid, i64 noundef returned %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %vmhub = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vmhub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmhub, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 590850, i32 %7)
  %cmp.i = icmp ne i32 %7, 590850
  %vmhub.off.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %vmhub.off.i)
  %switch.i = icmp ult i32 %vmhub.off.i, 2
  %or.cond.i = and i1 %switch.i, %cmp.i
  br i1 %or.cond.i, label %land.lhs.true.i, label %entry.gmc_v9_0_use_invalidate_semaphore.exit.thread_crit_edge

entry.gmc_v9_0_use_invalidate_semaphore.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_use_invalidate_semaphore.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %8 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %gmc_v9_0_use_invalidate_semaphore.exit, label %land.lhs.true.i.gmc_v9_0_use_invalidate_semaphore.exit.thread_crit_edge

land.lhs.true.i.gmc_v9_0_use_invalidate_semaphore.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gmc_v9_0_use_invalidate_semaphore.exit.thread

gmc_v9_0_use_invalidate_semaphore.exit.thread:    ; preds = %land.lhs.true.i.gmc_v9_0_use_invalidate_semaphore.exit.thread_crit_edge, %entry.gmc_v9_0_use_invalidate_semaphore.exit.thread_crit_edge
  %vm_inv_eng73 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 37
  %10 = ptrtoint ptr %vm_inv_eng73 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_inv_eng73, align 4
  br label %if.end

gmc_v9_0_use_invalidate_semaphore.exit:           ; preds = %land.lhs.true.i
  %apu_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %apu_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %apu_flags.i, align 4
  %14 = and i32 %13, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %.not = icmp eq i32 %14, 4
  %vm_inv_eng = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 37
  %15 = ptrtoint ptr %vm_inv_eng to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_inv_eng, align 4
  br i1 %.not, label %gmc_v9_0_use_invalidate_semaphore.exit.if.end_crit_edge, label %if.then

gmc_v9_0_use_invalidate_semaphore.exit.if.end_crit_edge: ; preds = %gmc_v9_0_use_invalidate_semaphore.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %gmc_v9_0_use_invalidate_semaphore.exit
  call void @__sanitizer_cov_trace_pc() #10
  %emit_reg_wait = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 34
  %17 = ptrtoint ptr %emit_reg_wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %emit_reg_wait, align 4
  %vm_inv_eng0_sem = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 2
  %19 = ptrtoint ptr %vm_inv_eng0_sem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_inv_eng0_sem, align 4
  %eng_distance = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 10
  %21 = ptrtoint ptr %eng_distance to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eng_distance, align 4
  %mul = mul i32 %22, %16
  %add = add i32 %mul, %20
  tail call void %18(ptr noundef %ring, i32 noundef %add, i32 noundef 1, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %gmc_v9_0_use_invalidate_semaphore.exit.if.end_crit_edge, %gmc_v9_0_use_invalidate_semaphore.exit.thread
  %23 = phi i32 [ %11, %gmc_v9_0_use_invalidate_semaphore.exit.thread ], [ %16, %if.then ], [ %16, %gmc_v9_0_use_invalidate_semaphore.exit.if.end_crit_edge ]
  %retval.0.i74 = phi i1 [ false, %gmc_v9_0_use_invalidate_semaphore.exit.thread ], [ true, %if.then ], [ false, %gmc_v9_0_use_invalidate_semaphore.exit.if.end_crit_edge ]
  %arrayidx75 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5
  %shl.i76 = shl nuw i32 1, %vmid
  %or16.i77.in = and i32 %shl.i76, 65535
  %or16.i77 = or i32 %or16.i77.in, 8126464
  %24 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %emit_wreg, align 4
  %28 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx75, align 4
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 9
  %30 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctx_addr_distance, align 4
  %mul9 = mul i32 %31, %vmid
  %add10 = add i32 %mul9, %29
  %conv = trunc i64 %pd_addr to i32
  tail call void %27(ptr noundef %ring, i32 noundef %add10, i32 noundef %conv) #8
  %32 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs, align 4
  %emit_wreg12 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %emit_wreg12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %emit_wreg12, align 4
  %ctx0_ptb_addr_hi32 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 1
  %36 = ptrtoint ptr %ctx0_ptb_addr_hi32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctx0_ptb_addr_hi32, align 4
  %38 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctx_addr_distance, align 4
  %mul14 = mul i32 %39, %vmid
  %add15 = add i32 %mul14, %37
  %shr = lshr i64 %pd_addr, 32
  %conv17 = trunc i64 %shr to i32
  tail call void %35(ptr noundef %ring, i32 noundef %add15, i32 noundef %conv17) #8
  %40 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs, align 4
  %emit_reg_write_reg_wait = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %41, i32 0, i32 35
  %42 = ptrtoint ptr %emit_reg_write_reg_wait to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %emit_reg_write_reg_wait, align 4
  %vm_inv_eng0_req = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 3
  %44 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vm_inv_eng0_req, align 4
  %eng_distance19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 10
  %46 = ptrtoint ptr %eng_distance19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %eng_distance19, align 4
  %mul20 = mul i32 %47, %23
  %add21 = add i32 %mul20, %45
  %vm_inv_eng0_ack = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 4
  %48 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vm_inv_eng0_ack, align 4
  %add24 = add i32 %49, %mul20
  tail call void %43(ptr noundef %ring, i32 noundef %add21, i32 noundef %add24, i32 noundef %or16.i77, i32 noundef %shl.i76) #8
  br i1 %retval.0.i74, label %if.then26, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %funcs, align 4
  %emit_wreg28 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %51, i32 0, i32 33
  %52 = ptrtoint ptr %emit_wreg28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %emit_wreg28, align 4
  %vm_inv_eng0_sem29 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 2
  %54 = ptrtoint ptr %vm_inv_eng0_sem29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vm_inv_eng0_sem29, align 4
  %56 = ptrtoint ptr %eng_distance19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %eng_distance19, align 4
  %mul31 = mul i32 %57, %23
  %add32 = add i32 %mul31, %55
  tail call void %53(ptr noundef %ring, i32 noundef %add32, i32 noundef 0) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end.if.end33_crit_edge
  ret i64 %pd_addr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v9_0_emit_pasid_mapping(ptr noundef %ring, i32 noundef %vmid, i32 noundef %pasid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %vmhub = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vmhub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmhub, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %5, label %if.else [
    i32 2, label %entry.cleanup_crit_edge
    i32 0, label %if.then5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 21
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 21
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx10, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add13 = add i32 %14, 16
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5
  %.pn = phi i32 [ %10, %if.then5 ], [ %add13, %if.else ]
  %reg.0 = add i32 %.pn, %vmid
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 33
  %15 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %emit_wreg, align 4
  tail call void %16(ptr noundef %ring, i32 noundef %reg.0, i32 noundef %pasid) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @gmc_v9_0_map_mtype(ptr nocapture noundef readnone %adev, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %flags, i32 %flags, i32 27)
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %0, label %entry.return_crit_edge [
    i32 4, label %sw.bb5
    i32 3, label %sw.bb4
    i32 2, label %sw.bb2
    i32 5, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %entry.return_crit_edge
  %retval.0 = phi i64 [ 432345564227567616, %sw.bb5 ], [ 288230376151711744, %sw.bb4 ], [ 144115188075855872, %sw.bb3 ], [ 144115188075855872, %sw.bb2 ], [ 0, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v9_0_get_vm_pde(ptr noundef %adev, i32 noundef %level, ptr nocapture noundef %addr, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %2 = and i64 %1, 18014398509481986
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %addr, align 8
  %call = tail call i64 @amdgpu_gmc_vram_mc2pa(ptr noundef %adev, i64 noundef %5) #8
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call, ptr %addr, align 8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %addr, align 8
  %and3 = and i64 %8, -281474976710593
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %do.end12, label %do.body8, !prof !249

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1092, 0\0A.popsection", ""() #8, !srcloc !253
  unreachable

do.end12:                                         ; preds = %do.body
  %translate_further = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %9 = ptrtoint ptr %translate_further to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %translate_further, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %do.end12.if.end31_crit_edge, label %if.end15

do.end12.if.end31_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end15:                                         ; preds = %do.end12
  %11 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %level, label %if.end15.if.end31_crit_edge [
    i32 1, label %if.then16
    i32 2, label %if.then22
  ]

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then16:                                        ; preds = %if.end15
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %flags, align 8
  %and17 = and i64 %13, 18014398509481984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.then16.if.end31_crit_edge

if.then16.if.end31_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i64 %13, 5188146770730811392
  br label %if.end31.sink.split

if.then22:                                        ; preds = %if.end15
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %flags, align 8
  %and23 = and i64 %15, 18014398509481984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23)
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %and26 = and i64 %15, -18014398509481985
  br label %if.end31.sink.split

if.else27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %or28 = or i64 %15, 72057594037927936
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.else27, %if.then25, %if.then19
  %or28.sink = phi i64 [ %or28, %if.else27 ], [ %and26, %if.then25 ], [ %or, %if.then19 ]
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or28.sink, ptr %flags, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.then16.if.end31_crit_edge, %if.end15.if.end31_crit_edge, %do.end12.if.end31_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gmc_v9_0_get_vm_pte(ptr nocapture noundef readonly %adev, ptr nocapture noundef readonly %mapping, ptr nocapture noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %and = and i64 %1, -17
  store i64 %and, ptr %flags, align 8
  %flags1 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 7
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags1, align 8
  %and2 = and i64 %3, 16
  %and.masked = and i64 %1, -432345564227567633
  %and3 = or i64 %and2, %and.masked
  store i64 %and3, ptr %flags, align 8
  %4 = load i64, ptr %flags1, align 8
  %and5 = and i64 %4, 432345564227567616
  %or6 = or i64 %and5, %and3
  store i64 %or6, ptr %flags, align 8
  %5 = load i64, ptr %flags1, align 8
  %and8 = and i64 %5, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool.not = icmp eq i64 %and8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or9 = and i64 %or6, -2251799813685250
  %and10 = or i64 %or9, 2251799813685248
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %and10, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %.off = add i32 %8, -590849
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %flags, align 8
  %and16 = and i64 %10, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true18:                                  ; preds = %land.lhs.true
  %11 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapping, align 8
  %is_xgmi = getelementptr inbounds %struct.amdgpu_bo_va, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %is_xgmi to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_xgmi, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  br i1 %tobool19.not, label %land.lhs.true18.if.end22_crit_edge, label %if.then20

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  %or21 = or i64 %10, 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or21, ptr %flags, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true18.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 590850, i32 %.pr)
  %cmp26 = icmp eq i32 %.pr, 590850
  br i1 %cmp26, label %if.then27, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %flags1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %flags1, align 8
  %and29 = and i64 %18, 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %flags, align 8
  %or30 = or i64 %20, %and29
  store i64 %or30, ptr %flags, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end22.if.end31_crit_edge, %if.end.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_get_vbios_fb_size(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 12
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 20) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %13, 12
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = and i32 %cond, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %cond.end
  %arrayidx21 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 20
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx21, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %15, label %sw.default [
    i32 65536, label %if.else.sw.bb_crit_edge
    i32 65537, label %if.else.sw.bb_crit_edge190
    i32 131328, label %sw.bb63
  ]

if.else.sw.bb_crit_edge190:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.else.sw.bb_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.else.sw.bb_crit_edge, %if.else.sw.bb_crit_edge190
  %17 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %virt, align 8
  %and25 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %sw.bb.cond.false49_crit_edge, label %land.lhs.true27

sw.bb.cond.false49_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false49

land.lhs.true27:                                  ; preds = %sw.bb
  %funcs30 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %19 = ptrtoint ptr %funcs30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs30, align 4
  %tobool31.not = icmp eq ptr %20, null
  br i1 %tobool31.not, label %land.lhs.true27.cond.false49_crit_edge, label %land.lhs.true32

land.lhs.true27.cond.false49_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false49

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %sriov_rreg36 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %sriov_rreg36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sriov_rreg36, align 4
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %land.lhs.true32.cond.false49_crit_edge, label %cond.true38

land.lhs.true32.cond.false49_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false49

cond.true38:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46 = getelementptr i32, ptr %24, i32 2
  %25 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %26, 1373
  %call48 = tail call i32 %22(ptr noundef %adev, i32 noundef %add47, i32 noundef 0, i32 noundef 20) #8
  br label %sw.epilog

cond.false49:                                     ; preds = %land.lhs.true32.cond.false49_crit_edge, %land.lhs.true27.cond.false49_crit_edge, %sw.bb.cond.false49_crit_edge
  %arrayidx51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr i32, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx53, align 4
  %add54 = add i32 %30, 1373
  %call55 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add54, i32 noundef 0) #8
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.else
  %31 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %virt, align 8
  %and66 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %sw.bb63.cond.false90_crit_edge, label %land.lhs.true68

sw.bb63.cond.false90_crit_edge:                   ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false90

land.lhs.true68:                                  ; preds = %sw.bb63
  %funcs71 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %33 = ptrtoint ptr %funcs71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs71, align 4
  %tobool72.not = icmp eq ptr %34, null
  br i1 %tobool72.not, label %land.lhs.true68.cond.false90_crit_edge, label %land.lhs.true73

land.lhs.true68.cond.false90_crit_edge:           ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false90

land.lhs.true73:                                  ; preds = %land.lhs.true68
  %sriov_rreg77 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %sriov_rreg77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_rreg77, align 4
  %tobool78.not = icmp eq ptr %36, null
  br i1 %tobool78.not, label %land.lhs.true73.cond.false90_crit_edge, label %cond.true79

land.lhs.true73.cond.false90_crit_edge:           ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false90

cond.true79:                                      ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx85 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %37 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx85, align 8
  %arrayidx87 = getelementptr i32, ptr %38, i32 2
  %39 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx87, align 4
  %add88 = add i32 %40, 1514
  %call89 = tail call i32 %36(ptr noundef %adev, i32 noundef %add88, i32 noundef 0, i32 noundef 20) #8
  br label %sw.epilog

cond.false90:                                     ; preds = %land.lhs.true73.cond.false90_crit_edge, %land.lhs.true68.cond.false90_crit_edge, %sw.bb63.cond.false90_crit_edge
  %arrayidx92 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %41 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx92, align 8
  %arrayidx94 = getelementptr i32, ptr %42, i32 2
  %43 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx94, align 4
  %add95 = add i32 %44, 1514
  %call96 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add95, i32 noundef 0) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %virt, align 8
  %and107 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %sw.default.cond.false131_crit_edge, label %land.lhs.true109

sw.default.cond.false131_crit_edge:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false131

land.lhs.true109:                                 ; preds = %sw.default
  %funcs112 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %47 = ptrtoint ptr %funcs112 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %funcs112, align 4
  %tobool113.not = icmp eq ptr %48, null
  br i1 %tobool113.not, label %land.lhs.true109.cond.false131_crit_edge, label %land.lhs.true114

land.lhs.true109.cond.false131_crit_edge:         ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false131

land.lhs.true114:                                 ; preds = %land.lhs.true109
  %sriov_rreg118 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %sriov_rreg118 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sriov_rreg118, align 4
  %tobool119.not = icmp eq ptr %50, null
  br i1 %tobool119.not, label %land.lhs.true114.cond.false131_crit_edge, label %cond.true120

land.lhs.true114.cond.false131_crit_edge:         ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false131

cond.true120:                                     ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx126 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %51 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx126, align 8
  %arrayidx128 = getelementptr i32, ptr %52, i32 2
  %53 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx128, align 4
  %add129 = add i32 %54, 1712
  %call130 = tail call i32 %50(ptr noundef %adev, i32 noundef %add129, i32 noundef 0, i32 noundef 20) #8
  br label %sw.epilog

cond.false131:                                    ; preds = %land.lhs.true114.cond.false131_crit_edge, %land.lhs.true109.cond.false131_crit_edge, %sw.default.cond.false131_crit_edge
  %arrayidx133 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %55 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx133, align 8
  %arrayidx135 = getelementptr i32, ptr %56, i32 2
  %57 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx135, align 4
  %add136 = add i32 %58, 1712
  %call137 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add136, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false131, %cond.true120, %cond.false90, %cond.true79, %cond.false49, %cond.true38
  %and140.sink.in = phi i32 [ %call48, %cond.true38 ], [ %call55, %cond.false49 ], [ %call89, %cond.true79 ], [ %call96, %cond.false90 ], [ %call130, %cond.true120 ], [ %call137, %cond.false131 ]
  %shr143.sink.in = lshr i32 %and140.sink.in, 16
  %shr143.sink = and i32 %shr143.sink.in, 16383
  %and140.sink = and i32 %and140.sink.in, 16383
  %mul144 = mul nuw nsw i32 %shr143.sink, %and140.sink
  %size.0 = shl nuw nsw i32 %mul144, 2
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %cond.end.if.end_crit_edge
  %size.1 = phi i32 [ %size.0, %sw.epilog ], [ 9437184, %cond.end.if.end_crit_edge ]
  ret i32 %size.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_virt_kiq_reg_write_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_emit_polling(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_undo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_wait_polling(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_vram_mc2pa(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_vm_fault_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %for.cond93.preheader
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond93.preheader:                             ; preds = %entry
  %num_vmhubs94 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 67
  %1 = ptrtoint ptr %num_vmhubs94 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_vmhubs94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp95330.not = icmp eq i32 %2, 0
  br i1 %cmp95330.not, label %for.cond93.preheader.sw.epilog_crit_edge, label %for.cond99.preheader.lr.ph

for.cond93.preheader.sw.epilog_crit_edge:         ; preds = %for.cond93.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond99.preheader.lr.ph:                       ; preds = %for.cond93.preheader
  %virt132 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs139 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  br label %for.cond99.preheader

for.cond.preheader:                               ; preds = %entry
  %num_vmhubs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 67
  %3 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_vmhubs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp333.not = icmp eq i32 %4, 0
  br i1 %cmp333.not, label %for.cond.preheader.sw.epilog_crit_edge, label %for.cond1.preheader.lr.ph

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %virt16 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs23 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc89.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %j.0334 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc90, %for.inc89.for.cond1.preheader_crit_edge ]
  %vm_context0_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %j.0334, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0334)
  %cmp4 = icmp eq i32 %j.0334, 0
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.cond1.preheader
  %i.0332 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.inc.for.body3_crit_edge ]
  %5 = ptrtoint ptr %vm_context0_cntl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_context0_cntl, align 4
  %add = add i32 %6, %i.0332
  %7 = ptrtoint ptr %virt16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virt16, align 8
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %9 = ptrtoint ptr %funcs23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs23, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sriov_rreg, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %12(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 1) #8
  br label %if.then43

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %call15 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #8
  br label %if.then43

if.else:                                          ; preds = %for.body3
  br i1 %tobool.not, label %if.else.cond.false37_crit_edge, label %land.lhs.true20

if.else.cond.false37_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false37

land.lhs.true20:                                  ; preds = %if.else
  %13 = ptrtoint ptr %funcs23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs23, align 4
  %tobool24.not = icmp eq ptr %14, null
  br i1 %tobool24.not, label %land.lhs.true20.cond.false37_crit_edge, label %land.lhs.true25

land.lhs.true20.cond.false37_crit_edge:           ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false37

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %sriov_rreg29 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %sriov_rreg29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sriov_rreg29, align 4
  %tobool30.not = icmp eq ptr %16, null
  br i1 %tobool30.not, label %land.lhs.true25.cond.false37_crit_edge, label %cond.true31

land.lhs.true25.cond.false37_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false37

cond.true31:                                      ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 %16(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 11) #8
  br label %if.else65

cond.false37:                                     ; preds = %land.lhs.true25.cond.false37_crit_edge, %land.lhs.true20.cond.false37_crit_edge, %if.else.cond.false37_crit_edge
  %call38 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #8
  br label %if.else65

if.then43:                                        ; preds = %cond.false, %cond.true
  %tmp.0.ph = phi i32 [ %call15, %cond.false ], [ %call, %cond.true ]
  %and41319 = and i32 %tmp.0.ph, -2796033
  %17 = ptrtoint ptr %virt16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %virt16, align 8
  %and46 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then43.cond.false63_crit_edge, label %land.lhs.true48

if.then43.cond.false63_crit_edge:                 ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false63

land.lhs.true48:                                  ; preds = %if.then43
  %19 = ptrtoint ptr %funcs23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs23, align 4
  %tobool52.not = icmp eq ptr %20, null
  br i1 %tobool52.not, label %land.lhs.true48.cond.false63_crit_edge, label %land.lhs.true53

land.lhs.true48.cond.false63_crit_edge:           ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false63

land.lhs.true53:                                  ; preds = %land.lhs.true48
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sriov_wreg, align 4
  %tobool57.not = icmp eq ptr %22, null
  br i1 %tobool57.not, label %land.lhs.true53.cond.false63_crit_edge, label %cond.true58

land.lhs.true53.cond.false63_crit_edge:           ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false63

cond.true58:                                      ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %22(ptr noundef %adev, i32 noundef %add, i32 noundef %and41319, i32 noundef 0, i32 noundef 1) #8
  br label %for.inc

cond.false63:                                     ; preds = %land.lhs.true53.cond.false63_crit_edge, %land.lhs.true48.cond.false63_crit_edge, %if.then43.cond.false63_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %and41319, i32 noundef 0) #8
  br label %for.inc

if.else65:                                        ; preds = %cond.false37, %cond.true31
  %tmp.0 = phi i32 [ %call36, %cond.true31 ], [ %call38, %cond.false37 ]
  %and41 = and i32 %tmp.0, -2796033
  %23 = ptrtoint ptr %virt16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %virt16, align 8
  %and68 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else65.cond.false86_crit_edge, label %land.lhs.true70

if.else65.cond.false86_crit_edge:                 ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false86

land.lhs.true70:                                  ; preds = %if.else65
  %25 = ptrtoint ptr %funcs23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs23, align 4
  %tobool74.not = icmp eq ptr %26, null
  br i1 %tobool74.not, label %land.lhs.true70.cond.false86_crit_edge, label %land.lhs.true75

land.lhs.true70.cond.false86_crit_edge:           ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false86

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %sriov_wreg79 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %sriov_wreg79 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sriov_wreg79, align 4
  %tobool80.not = icmp eq ptr %28, null
  br i1 %tobool80.not, label %land.lhs.true75.cond.false86_crit_edge, label %cond.true81

land.lhs.true75.cond.false86_crit_edge:           ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false86

cond.true81:                                      ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %28(ptr noundef %adev, i32 noundef %add, i32 noundef %and41, i32 noundef 0, i32 noundef 11) #8
  br label %for.inc

cond.false86:                                     ; preds = %land.lhs.true75.cond.false86_crit_edge, %land.lhs.true70.cond.false86_crit_edge, %if.else65.cond.false86_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %and41, i32 noundef 0) #8
  br label %for.inc

for.inc:                                          ; preds = %cond.false86, %cond.true81, %cond.false63, %cond.true58
  %inc = add nuw nsw i32 %i.0332, 1
  %exitcond336.not = icmp eq i32 %inc, 16
  br i1 %exitcond336.not, label %for.inc89, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.inc89:                                        ; preds = %for.inc
  %inc90 = add nuw i32 %j.0334, 1
  %29 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_vmhubs, align 8
  %cmp = icmp ult i32 %inc90, %30
  br i1 %cmp, label %for.inc89.for.cond1.preheader_crit_edge, label %for.inc89.sw.epilog_crit_edge

for.inc89.sw.epilog_crit_edge:                    ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc89.for.cond1.preheader_crit_edge:          ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.cond99.preheader:                             ; preds = %for.inc209.for.cond99.preheader_crit_edge, %for.cond99.preheader.lr.ph
  %j.1331 = phi i32 [ 0, %for.cond99.preheader.lr.ph ], [ %inc210, %for.inc209.for.cond99.preheader_crit_edge ]
  %vm_context0_cntl102 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %j.1331, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1331)
  %cmp104 = icmp eq i32 %j.1331, 0
  br label %for.body101

for.body101:                                      ; preds = %for.inc206.for.body101_crit_edge, %for.cond99.preheader
  %i.1329 = phi i32 [ 0, %for.cond99.preheader ], [ %inc207, %for.inc206.for.body101_crit_edge ]
  %31 = ptrtoint ptr %vm_context0_cntl102 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm_context0_cntl102, align 4
  %add103 = add i32 %32, %i.1329
  %33 = ptrtoint ptr %virt132 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %virt132, align 8
  %and108 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %cmp104, label %if.then105, label %if.else131

if.then105:                                       ; preds = %for.body101
  br i1 %tobool109.not, label %if.then105.cond.false127_crit_edge, label %land.lhs.true110

if.then105.cond.false127_crit_edge:               ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false127

land.lhs.true110:                                 ; preds = %if.then105
  %35 = ptrtoint ptr %funcs139 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %funcs139, align 4
  %tobool114.not = icmp eq ptr %36, null
  br i1 %tobool114.not, label %land.lhs.true110.cond.false127_crit_edge, label %land.lhs.true115

land.lhs.true110.cond.false127_crit_edge:         ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false127

land.lhs.true115:                                 ; preds = %land.lhs.true110
  %sriov_rreg119 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %sriov_rreg119 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sriov_rreg119, align 4
  %tobool120.not = icmp eq ptr %38, null
  br i1 %tobool120.not, label %land.lhs.true115.cond.false127_crit_edge, label %cond.true121

land.lhs.true115.cond.false127_crit_edge:         ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false127

cond.true121:                                     ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #10
  %call126 = tail call i32 %38(ptr noundef %adev, i32 noundef %add103, i32 noundef 0, i32 noundef 1) #8
  br label %if.then159

cond.false127:                                    ; preds = %land.lhs.true115.cond.false127_crit_edge, %land.lhs.true110.cond.false127_crit_edge, %if.then105.cond.false127_crit_edge
  %call128 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add103, i32 noundef 0) #8
  br label %if.then159

if.else131:                                       ; preds = %for.body101
  br i1 %tobool109.not, label %if.else131.cond.false153_crit_edge, label %land.lhs.true136

if.else131.cond.false153_crit_edge:               ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false153

land.lhs.true136:                                 ; preds = %if.else131
  %39 = ptrtoint ptr %funcs139 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %funcs139, align 4
  %tobool140.not = icmp eq ptr %40, null
  br i1 %tobool140.not, label %land.lhs.true136.cond.false153_crit_edge, label %land.lhs.true141

land.lhs.true136.cond.false153_crit_edge:         ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false153

land.lhs.true141:                                 ; preds = %land.lhs.true136
  %sriov_rreg145 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %sriov_rreg145 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sriov_rreg145, align 4
  %tobool146.not = icmp eq ptr %42, null
  br i1 %tobool146.not, label %land.lhs.true141.cond.false153_crit_edge, label %cond.true147

land.lhs.true141.cond.false153_crit_edge:         ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false153

cond.true147:                                     ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #10
  %call152 = tail call i32 %42(ptr noundef %adev, i32 noundef %add103, i32 noundef 0, i32 noundef 11) #8
  br label %if.else182

cond.false153:                                    ; preds = %land.lhs.true141.cond.false153_crit_edge, %land.lhs.true136.cond.false153_crit_edge, %if.else131.cond.false153_crit_edge
  %call154 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add103, i32 noundef 0) #8
  br label %if.else182

if.then159:                                       ; preds = %cond.false127, %cond.true121
  %tmp.1.ph = phi i32 [ %call128, %cond.false127 ], [ %call126, %cond.true121 ]
  %or324 = or i32 %tmp.1.ph, 2796032
  %43 = ptrtoint ptr %virt132 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %virt132, align 8
  %and162 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.then159.cond.false180_crit_edge, label %land.lhs.true164

if.then159.cond.false180_crit_edge:               ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false180

land.lhs.true164:                                 ; preds = %if.then159
  %45 = ptrtoint ptr %funcs139 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %funcs139, align 4
  %tobool168.not = icmp eq ptr %46, null
  br i1 %tobool168.not, label %land.lhs.true164.cond.false180_crit_edge, label %land.lhs.true169

land.lhs.true164.cond.false180_crit_edge:         ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false180

land.lhs.true169:                                 ; preds = %land.lhs.true164
  %sriov_wreg173 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %sriov_wreg173 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sriov_wreg173, align 4
  %tobool174.not = icmp eq ptr %48, null
  br i1 %tobool174.not, label %land.lhs.true169.cond.false180_crit_edge, label %cond.true175

land.lhs.true169.cond.false180_crit_edge:         ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false180

cond.true175:                                     ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %48(ptr noundef %adev, i32 noundef %add103, i32 noundef %or324, i32 noundef 0, i32 noundef 1) #8
  br label %for.inc206

cond.false180:                                    ; preds = %land.lhs.true169.cond.false180_crit_edge, %land.lhs.true164.cond.false180_crit_edge, %if.then159.cond.false180_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add103, i32 noundef %or324, i32 noundef 0) #8
  br label %for.inc206

if.else182:                                       ; preds = %cond.false153, %cond.true147
  %tmp.1 = phi i32 [ %call152, %cond.true147 ], [ %call154, %cond.false153 ]
  %or = or i32 %tmp.1, 2796032
  %49 = ptrtoint ptr %virt132 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %virt132, align 8
  %and185 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.else182.cond.false203_crit_edge, label %land.lhs.true187

if.else182.cond.false203_crit_edge:               ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false203

land.lhs.true187:                                 ; preds = %if.else182
  %51 = ptrtoint ptr %funcs139 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %funcs139, align 4
  %tobool191.not = icmp eq ptr %52, null
  br i1 %tobool191.not, label %land.lhs.true187.cond.false203_crit_edge, label %land.lhs.true192

land.lhs.true187.cond.false203_crit_edge:         ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false203

land.lhs.true192:                                 ; preds = %land.lhs.true187
  %sriov_wreg196 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %sriov_wreg196 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sriov_wreg196, align 4
  %tobool197.not = icmp eq ptr %54, null
  br i1 %tobool197.not, label %land.lhs.true192.cond.false203_crit_edge, label %cond.true198

land.lhs.true192.cond.false203_crit_edge:         ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false203

cond.true198:                                     ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %54(ptr noundef %adev, i32 noundef %add103, i32 noundef %or, i32 noundef 0, i32 noundef 11) #8
  br label %for.inc206

cond.false203:                                    ; preds = %land.lhs.true192.cond.false203_crit_edge, %land.lhs.true187.cond.false203_crit_edge, %if.else182.cond.false203_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add103, i32 noundef %or, i32 noundef 0) #8
  br label %for.inc206

for.inc206:                                       ; preds = %cond.false203, %cond.true198, %cond.false180, %cond.true175
  %inc207 = add nuw nsw i32 %i.1329, 1
  %exitcond.not = icmp eq i32 %inc207, 16
  br i1 %exitcond.not, label %for.inc209, label %for.inc206.for.body101_crit_edge

for.inc206.for.body101_crit_edge:                 ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body101

for.inc209:                                       ; preds = %for.inc206
  %inc210 = add nuw i32 %j.1331, 1
  %55 = ptrtoint ptr %num_vmhubs94 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_vmhubs94, align 8
  %cmp95 = icmp ult i32 %inc210, %56
  br i1 %cmp95, label %for.inc209.for.cond99.preheader_crit_edge, label %for.inc209.sw.epilog_crit_edge

for.inc209.sw.epilog_crit_edge:                   ; preds = %for.inc209
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc209.for.cond99.preheader_crit_edge:        ; preds = %for.inc209
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond99.preheader

sw.epilog:                                        ; preds = %for.inc209.sw.epilog_crit_edge, %for.inc89.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %for.cond93.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr noundef %entry1) #0 align 64 {
entry:
  %task_info = alloca %struct.amdgpu_task_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %arrayidx = getelementptr %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6 = icmp ne i32 %and5, 0
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %task_info) #8
  %2 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_data, align 4
  %conv = zext i32 %3 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %4 = and i32 %1, 15
  %and15 = zext i32 %4 to i64
  %shl16 = shl nuw nsw i64 %and15, 44
  %or = or i64 %shl, %shl16
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry1, align 8
  %ih_soft = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 8
  %cmp.not = icmp eq ptr %6, %ih_soft
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %pasid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 8
  %7 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pasid, align 4
  %conv20 = trunc i32 %8 to i16
  %timestamp = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 6
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timestamp, align 8
  %call = tail call zeroext i1 @amdgpu_gmc_filter_faults(ptr noundef %adev, ptr noundef %6, i64 noundef %or, i16 noundef zeroext %conv20, i64 noundef %10) #8
  br i1 %call, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry1, align 8
  %ih25 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 5
  %cmp26 = icmp eq ptr %12, %ih25
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_irq_delegate(ptr noundef %adev, ptr noundef %entry1, i32 noundef 8) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %pasid30 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 8
  %13 = ptrtoint ptr %pasid30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pasid30, align 4
  %call32 = tail call zeroext i1 @amdgpu_vm_handle_fault(ptr noundef %adev, i32 noundef %14, i64 noundef %or, i1 noundef zeroext %tobool6) #8
  br i1 %call32, label %if.end29.cleanup_crit_edge, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end29.if.end35_crit_edge, %entry.if.end35_crit_edge
  %call36 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.gmc_v9_0_process_interrupt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.end39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %15 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %client_id, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %16, label %if.else50 [
    i32 18, label %if.then42
    i32 6, label %if.then47
  ]

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx43 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1
  br label %if.end54

if.then47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2
  br label %if.end54

if.else50:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %vmhub51 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66
  br label %if.end54

if.end54:                                         ; preds = %if.else50, %if.then47, %if.then42
  %hub.0 = phi ptr [ %arrayidx43, %if.then42 ], [ %arrayidx49, %if.then47 ], [ %vmhub51, %if.else50 ]
  %hub_name.0 = phi ptr [ @.str.8, %if.then42 ], [ @.str.9, %if.then47 ], [ @.str.10, %if.else50 ]
  %18 = call ptr @memset(ptr %task_info, i32 0, i32 40)
  %pasid55 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 8
  %19 = ptrtoint ptr %pasid55 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pasid55, align 4
  call void @amdgpu_vm_get_task_info(ptr noundef %adev, i32 noundef %20, ptr noundef nonnull %task_info) #8
  %21 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adev, align 8
  %cond = select i1 %tobool.not, ptr @.str.13, ptr @.str.12
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %23 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_id, align 8
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %25 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ring_id, align 4
  %vmid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 4
  %27 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vmid, align 8
  %29 = ptrtoint ptr %pasid55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pasid55, align 4
  %tgid = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 3
  %31 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tgid, align 4
  %task_name = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 1
  %pid = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 2
  %33 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pid, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.11, ptr noundef nonnull %hub_name.0, ptr noundef nonnull %cond, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %task_info, i32 noundef %32, ptr noundef %task_name, i32 noundef %34) #11
  %35 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adev, align 8
  %37 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %client_id, align 4
  %arrayidx66 = getelementptr [0 x ptr], ptr @soc15_ih_clientid_name, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx66, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.15, i64 noundef %or, i32 noundef %38, ptr noundef %40) #11
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %41 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %virt, align 8
  %and67 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end70:                                         ; preds = %if.end54
  %vmid_src = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 5
  %43 = ptrtoint ptr %vmid_src to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vmid_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp71 = icmp eq i32 %44, 0
  br i1 %cmp71, label %land.lhs.true73, label %if.end70.if.end80_crit_edge

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

land.lhs.true73:                                  ; preds = %if.end70
  %arrayidx74 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %45 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 590850, i32 %46)
  %cmp76 = icmp ult i32 %46, 590850
  br i1 %cmp76, label %if.then78, label %land.lhs.true73.if.end80_crit_edge

land.lhs.true73.if.end80_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then78:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  %vm_l2_pro_fault_status = getelementptr inbounds %struct.amdgpu_vmhub, ptr %hub.0, i32 0, i32 6
  %47 = ptrtoint ptr %vm_l2_pro_fault_status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vm_l2_pro_fault_status, align 4
  %call79 = call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %48, i32 noundef 0) #8
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %land.lhs.true73.if.end80_crit_edge, %if.end70.if.end80_crit_edge
  %vm_l2_pro_fault_status81 = getelementptr inbounds %struct.amdgpu_vmhub, ptr %hub.0, i32 0, i32 6
  %49 = ptrtoint ptr %vm_l2_pro_fault_status81 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vm_l2_pro_fault_status81, align 4
  %call82 = call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %50, i32 noundef 0) #8
  %and83 = lshr i32 %call82, 9
  %shr = and i32 %and83, 511
  %and84 = lshr i32 %call82, 18
  %shr85 = and i32 %and84, 1
  %vm_l2_pro_fault_cntl = getelementptr inbounds %struct.amdgpu_vmhub, ptr %hub.0, i32 0, i32 7
  %51 = ptrtoint ptr %vm_l2_pro_fault_cntl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vm_l2_pro_fault_cntl, align 4
  %call87 = call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %52, i32 noundef 0) #8
  %or89 = or i32 %call87, 1
  %53 = ptrtoint ptr %vm_l2_pro_fault_cntl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vm_l2_pro_fault_cntl, align 4
  call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %54, i32 noundef %or89, i32 noundef 0) #8
  %55 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.18, i32 noundef %call82) #11
  %vmhub97 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66
  %cmp99 = icmp eq ptr %hub.0, %vmhub97
  br i1 %cmp99, label %do.end104, label %if.else110

do.end104:                                        ; preds = %if.end80
  %57 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %shr)
  %cmp106 = icmp ugt i32 %shr, 12
  br i1 %cmp106, label %do.end104.cond.end_crit_edge, label %cond.false

do.end104.cond.end_crit_edge:                     ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx108 = getelementptr [13 x ptr], ptr @gfxhub_client_ids, i32 0, i32 %shr
  %59 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx108, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end104.cond.end_crit_edge
  %cond109 = phi ptr [ %60, %cond.false ], [ @.str.23, %do.end104.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.21, ptr noundef %cond109, i32 noundef %shr) #11
  br label %do.end146

if.else110:                                       ; preds = %if.end80
  %arrayidx112 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 11
  %61 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx112, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %62, label %if.else110.do.end136_crit_edge [
    i32 589824, label %sw.bb
    i32 590592, label %sw.bb116
    i32 590848, label %sw.bb119
    i32 590849, label %sw.bb122
    i32 590080, label %if.else110.sw.bb125_crit_edge
    i32 590336, label %if.else110.sw.bb125_crit_edge262
    i32 66816, label %if.else110.sw.bb128_crit_edge
    i32 132096, label %if.else110.sw.bb128_crit_edge263
    i32 590850, label %sw.bb131
  ]

if.else110.sw.bb128_crit_edge263:                 ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb128

if.else110.sw.bb128_crit_edge:                    ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb128

if.else110.sw.bb125_crit_edge262:                 ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb125

if.else110.sw.bb125_crit_edge:                    ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb125

if.else110.do.end136_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end136

sw.bb:                                            ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx115 = getelementptr [47 x [2 x ptr]], ptr @mmhub_client_ids_vega10, i32 0, i32 %shr, i32 %shr85
  br label %do.end136.sink.split

sw.bb116:                                         ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx118 = getelementptr [48 x [2 x ptr]], ptr @mmhub_client_ids_vega12, i32 0, i32 %shr, i32 %shr85
  br label %do.end136.sink.split

sw.bb119:                                         ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx121 = getelementptr [47 x [2 x ptr]], ptr @mmhub_client_ids_vega20, i32 0, i32 %shr, i32 %shr85
  br label %do.end136.sink.split

sw.bb122:                                         ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx124 = getelementptr [385 x [2 x ptr]], ptr @mmhub_client_ids_arcturus, i32 0, i32 %shr, i32 %shr85
  br label %do.end136.sink.split

sw.bb125:                                         ; preds = %if.else110.sw.bb125_crit_edge, %if.else110.sw.bb125_crit_edge262
  %arrayidx127 = getelementptr [28 x [2 x ptr]], ptr @mmhub_client_ids_raven, i32 0, i32 %shr, i32 %shr85
  br label %do.end136.sink.split

sw.bb128:                                         ; preds = %if.else110.sw.bb128_crit_edge, %if.else110.sw.bb128_crit_edge263
  %arrayidx130 = getelementptr [31 x [2 x ptr]], ptr @mmhub_client_ids_renoir, i32 0, i32 %shr, i32 %shr85
  br label %do.end136.sink.split

sw.bb131:                                         ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx133 = getelementptr [385 x [2 x ptr]], ptr @mmhub_client_ids_aldebaran, i32 0, i32 %shr, i32 %shr85
  br label %do.end136.sink.split

do.end136.sink.split:                             ; preds = %sw.bb131, %sw.bb128, %sw.bb125, %sw.bb122, %sw.bb119, %sw.bb116, %sw.bb
  %arrayidx115.sink = phi ptr [ %arrayidx115, %sw.bb ], [ %arrayidx118, %sw.bb116 ], [ %arrayidx121, %sw.bb119 ], [ %arrayidx124, %sw.bb122 ], [ %arrayidx127, %sw.bb125 ], [ %arrayidx130, %sw.bb128 ], [ %arrayidx133, %sw.bb131 ]
  %64 = ptrtoint ptr %arrayidx115.sink to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx115.sink, align 4
  br label %do.end136

do.end136:                                        ; preds = %do.end136.sink.split, %if.else110.do.end136_crit_edge
  %mmhub_cid.0 = phi ptr [ null, %if.else110.do.end136_crit_edge ], [ %65, %do.end136.sink.split ]
  %66 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adev, align 8
  %tobool138.not = icmp eq ptr %mmhub_cid.0, null
  %spec.select = select i1 %tobool138.not, ptr @.str.23, ptr %mmhub_cid.0
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.21, ptr noundef nonnull %spec.select, i32 noundef %shr) #11
  br label %do.end146

do.end146:                                        ; preds = %do.end136, %cond.end
  %68 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adev, align 8
  %and148 = and i32 %call82, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.27, i32 noundef %and148) #11
  %70 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adev, align 8
  %and154 = lshr i32 %call82, 1
  %shr155 = and i32 %and154, 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.30, i32 noundef %shr155) #11
  %72 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adev, align 8
  %and160 = lshr i32 %call82, 4
  %shr161 = and i32 %and160, 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.33, i32 noundef %shr161) #11
  %74 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adev, align 8
  %and166 = lshr i32 %call82, 8
  %shr167 = and i32 %and166, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.36, i32 noundef %shr167) #11
  %76 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.39, i32 noundef %shr85) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end146, %if.end54.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then28, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then28 ], [ 0, %do.end146 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end29.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %task_info) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_gmc_filter_faults(ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_irq_delegate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_vm_handle_fault(ptr noundef, i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_get_task_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v9_0_ecc_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp = icmp ugt i32 %1, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %state, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.for.body_crit_edge
    i32 1, label %if.end.for.body15_crit_edge
  ]

if.end.for.body15_crit_edge:                      ; preds = %if.end
  br label %for.body15

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %state, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i32], ptr @ecc_umc_mcumc_ctrl_addrs, i32 0, i32 %i.072
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %4, i32 noundef 0) #8
  %and = and i32 %call, -128
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %4, i32 noundef %and, i32 noundef 0) #8
  %inc = add nuw nsw i32 %i.072, 1
  %exitcond76.not = icmp eq i32 %inc, 32
  br i1 %exitcond76.not, label %for.body.for.body4_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %i.173 = phi i32 [ %inc10, %for.body4.for.body4_crit_edge ], [ 0, %for.body.for.body4_crit_edge ]
  %arrayidx5 = getelementptr [32 x i32], ptr @ecc_umc_mcumc_ctrl_mask_addrs, i32 0, i32 %i.173
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %6, i32 noundef 0) #8
  %and8 = and i32 %call6, -128
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %6, i32 noundef %and8, i32 noundef 0) #8
  %inc10 = add nuw nsw i32 %i.173, 1
  %exitcond77.not = icmp eq i32 %inc10, 32
  br i1 %exitcond77.not, label %for.body4.cleanup_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %if.end.for.body15_crit_edge
  %i.270 = phi i32 [ %inc19, %for.body15.for.body15_crit_edge ], [ 0, %if.end.for.body15_crit_edge ]
  %arrayidx16 = getelementptr [32 x i32], ptr @ecc_umc_mcumc_ctrl_addrs, i32 0, i32 %i.270
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx16, align 4
  %call17 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %8, i32 noundef 0) #8
  %or = or i32 %call17, 127
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %8, i32 noundef %or, i32 noundef 0) #8
  %inc19 = add nuw nsw i32 %i.270, 1
  %exitcond.not = icmp eq i32 %inc19, 32
  br i1 %exitcond.not, label %for.body15.for.body23_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.body15.for.body23_crit_edge:                  ; preds = %for.body15
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body15.for.body23_crit_edge
  %i.371 = phi i32 [ %inc28, %for.body23.for.body23_crit_edge ], [ 0, %for.body15.for.body23_crit_edge ]
  %arrayidx24 = getelementptr [32 x i32], ptr @ecc_umc_mcumc_ctrl_mask_addrs, i32 0, i32 %i.371
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx24, align 4
  %call25 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %10, i32 noundef 0) #8
  %or26 = or i32 %call25, 127
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %10, i32 noundef %or26, i32 noundef 0) #8
  %inc28 = add nuw nsw i32 %i.371, 1
  %exitcond75.not = icmp eq i32 %inc28, 32
  br i1 %exitcond75.not, label %for.body23.cleanup_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.body23.cleanup_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body23.cleanup_crit_edge, %for.body4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_umc_process_ecc_irq(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gmc_allocate_vm_inv_eng(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_persistent_edc_harvesting_supported(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gmc_ras_late_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atomfirmware_get_vram_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_adjust_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_need_swiotlb(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_get_vbios_allocations(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gmc_v9_0_gart_init(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gart = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %0 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gart, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end17, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1472, i32 noundef 9, ptr noundef nonnull @.str.100) #8
  br label %cleanup

if.end17:                                         ; preds = %entry
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %2 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %connected_to_cpu, align 8, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool18.not = icmp eq i8 %3, 0
  %not.tobool18.not = xor i1 %tobool18.not, true
  %spec.select = zext i1 %not.tobool18.not to i32
  %spec.select62 = select i1 %tobool18.not, i32 0, i32 12
  %4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 43
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 4
  %6 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 42
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select62, ptr %6, align 8
  %call = tail call i32 @amdgpu_gart_init(ptr noundef %adev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool27.not = icmp eq i32 %call, 0
  br i1 %tobool27.not, label %if.end29, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end17
  %num_gpu_pages = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 2
  %8 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_gpu_pages, align 8
  %mul = shl i32 %9, 3
  %table_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 4
  %10 = ptrtoint ptr %table_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %table_size, align 8
  %gart_pte_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 6
  %11 = ptrtoint ptr %gart_pte_flags to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 432345564227567632, ptr %gart_pte_flags, align 8
  %call33 = tail call i32 @amdgpu_gart_table_vram_alloc(ptr noundef %adev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %12 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %connected_to_cpu, align 8, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool40.not = icmp eq i8 %13, 0
  br i1 %tobool40.not, label %if.end36.cleanup_crit_edge, label %if.then41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 @amdgpu_gmc_pdb0_alloc(ptr noundef %adev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end36.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %if.end17.cleanup_crit_edge ], [ %call33, %if.end29.cleanup_crit_edge ], [ %call42, %if.then41 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_manager_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gmc_v9_0_save_registers(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 20
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %2)
  %switch = icmp eq i32 %2, 65536
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true7

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sriov_rreg, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false_crit_edge, label %cond.true

land.lhs.true7.cond.false_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx16, align 8
  %arrayidx18 = getelementptr i32, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx18, align 4
  %add = add i32 %12, 1181
  %call = tail call i32 %8(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 20) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true7.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx20, align 8
  %arrayidx22 = getelementptr i32, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 %16, 1181
  %call24 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add23, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call24, %cond.false ]
  %sdpif_register = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 25
  %17 = ptrtoint ptr %sdpif_register to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %sdpif_register, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_resize_fb_bar(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_sysvm_location(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_gart_location(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_agp_location(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_table_vram_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gmc_pdb0_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_ras_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gem_force_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_manager_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gart_table_vram_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc15_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_init_pdb0(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gtt_mgr_recover(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vmid_reset_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @athub_v1_0_set_clockgating(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @athub_v1_0_get_clockgating(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !210, !212, !213, !214, !215, !217, !219, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1733, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1931, i32 10}
!4 = !{ptr @gmc_v9_0_ip_funcs, !5, !"gmc_v9_0_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1930, i32 27}
!6 = !{ptr @gmc_v9_0_ip_block, !7, !"gmc_v9_0_ip_block", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1948, i32 38}
!8 = !{ptr @gmc_v9_0_gmc_funcs, !9, !"gmc_v9_0_gmc_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1177, i32 38}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 824, i32 4}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 875, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 938, i32 4}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gmc_v9_0_flush_gpu_tlb_pasid._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @gmc_v9_0_flush_gpu_tlb_pasid._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @gmc_v9_0_irq_funcs, !22, !"gmc_v9_0_irq_funcs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 668, i32 42}
!23 = !{ptr @__func__.gmc_v9_0_process_interrupt, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 566, i32 7}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 570, i32 14}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 573, i32 14}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 576, i32 14}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 583, i32 2}
!33 = !{ptr @gmc_v9_0_process_interrupt._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @gmc_v9_0_process_interrupt._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 590, i32 2}
!39 = !{ptr @gmc_v9_0_process_interrupt._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @gmc_v9_0_process_interrupt._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 612, i32 2}
!43 = !{ptr @gmc_v9_0_process_interrupt._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @gmc_v9_0_process_interrupt._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 616, i32 3}
!47 = !{ptr @gmc_v9_0_process_interrupt._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @gmc_v9_0_process_interrupt._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @gmc_v9_0_process_interrupt._entry.24, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 649, i32 3}
!52 = !{ptr @gmc_v9_0_process_interrupt._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 652, i32 2}
!55 = !{ptr @gmc_v9_0_process_interrupt._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @gmc_v9_0_process_interrupt._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 655, i32 2}
!59 = !{ptr @gmc_v9_0_process_interrupt._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @gmc_v9_0_process_interrupt._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 658, i32 2}
!63 = !{ptr @gmc_v9_0_process_interrupt._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @gmc_v9_0_process_interrupt._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 661, i32 2}
!67 = !{ptr @gmc_v9_0_process_interrupt._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @gmc_v9_0_process_interrupt._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 664, i32 2}
!71 = !{ptr @gmc_v9_0_process_interrupt._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @gmc_v9_0_process_interrupt._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 80, i32 2}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 81, i32 2}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 82, i32 2}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 83, i32 2}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 84, i32 2}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 85, i32 2}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 86, i32 2}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 87, i32 2}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 88, i32 2}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 89, i32 2}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 90, i32 2}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 91, i32 2}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 92, i32 2}
!99 = !{ptr @gfxhub_client_ids, !100, !"gfxhub_client_ids", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 79, i32 20}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 149, i32 11}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 150, i32 11}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 151, i32 11}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 152, i32 11}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 165, i32 11}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 167, i32 11}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 153, i32 12}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 154, i32 12}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 155, i32 12}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 169, i32 12}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 156, i32 14}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 157, i32 14}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 158, i32 14}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 159, i32 14}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 160, i32 14}
!131 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 174, i32 14}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 176, i32 14}
!135 = !{ptr @mmhub_client_ids_vega10, !136, !"mmhub_client_ids_vega10", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 148, i32 20}
!137 = !{ptr @mmhub_client_ids_vega12, !138, !"mmhub_client_ids_vega12", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 180, i32 20}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 218, i32 11}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 233, i32 11}
!143 = !{ptr @mmhub_client_ids_vega20, !144, !"mmhub_client_ids_vega20", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 212, i32 20}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 253, i32 13}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 254, i32 13}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 255, i32 13}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 256, i32 13}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 257, i32 13}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 258, i32 13}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 261, i32 13}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 262, i32 13}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 263, i32 13}
!163 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 264, i32 13}
!165 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 265, i32 13}
!167 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 266, i32 13}
!169 = !{ptr @mmhub_client_ids_arcturus, !170, !"mmhub_client_ids_arcturus", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 248, i32 20}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 114, i32 11}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 115, i32 11}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 103, i32 12}
!177 = !{ptr @mmhub_client_ids_raven, !178, !"mmhub_client_ids_raven", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 95, i32 20}
!179 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 124, i32 11}
!181 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 125, i32 11}
!183 = !{ptr @mmhub_client_ids_renoir, !184, !"mmhub_client_ids_renoir", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 120, i32 20}
!185 = !{ptr @.str.90, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 292, i32 14}
!187 = !{ptr @.str.91, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 293, i32 14}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 294, i32 14}
!191 = !{ptr @.str.93, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 295, i32 15}
!193 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 296, i32 15}
!195 = !{ptr @.str.95, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 297, i32 15}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 300, i32 16}
!199 = !{ptr @mmhub_client_ids_aldebaran, !200, !"mmhub_client_ids_aldebaran", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 289, i32 20}
!201 = !{ptr @gmc_v9_0_ecc_funcs, !202, !"gmc_v9_0_ecc_funcs", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 674, i32 42}
!203 = !{ptr @ecc_umc_mcumc_ctrl_addrs, !204, !"ecc_umc_mcumc_ctrl_addrs", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 342, i32 23}
!205 = !{ptr @ecc_umc_mcumc_ctrl_mask_addrs, !206, !"ecc_umc_mcumc_ctrl_mask_addrs", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 377, i32 23}
!207 = !{ptr @gmc_v9_0_sw_init.__key, !208, !"__key", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1529, i32 2}
!209 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1638, i32 3}
!212 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @gmc_v9_0_sw_init._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @gmc_v9_0_sw_init._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1472, i32 3}
!217 = !{ptr @golden_settings_mmhub_1_0_0, !218, !"golden_settings_mmhub_1_0_0", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 330, i32 38}
!219 = !{ptr @golden_settings_athub_1_0_0, !220, !"golden_settings_athub_1_0_0", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 336, i32 38}
!221 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1751, i32 3}
!223 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @gmc_v9_0_gart_enable._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @gmc_v9_0_gart_enable._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.104, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1771, i32 2}
!228 = !{ptr @gmc_v9_0_gart_enable._entry.103, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @gmc_v9_0_gart_enable._entry_ptr.105, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1774, i32 3}
!232 = !{ptr @gmc_v9_0_gart_enable._entry.106, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @gmc_v9_0_gart_enable._entry_ptr.108, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.110, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1776, i32 2}
!236 = !{ptr @gmc_v9_0_gart_enable._entry.109, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @gmc_v9_0_gart_enable._entry_ptr.111, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c", i32 1846, i32 3}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{!"branch_weights", i32 2000, i32 1}
!250 = !{i8 0, i8 2}
!251 = !{i64 2171957775, i64 2171958277, i64 2171957812, i64 2171957868, i64 2171957902, i64 2171957926, i64 2171957967, i64 2171957988, i64 2171958016, i64 2171958050}
!252 = !{!"auto-init"}
!253 = !{i64 2171968772, i64 2171969275, i64 2171968809, i64 2171968865, i64 2171968899, i64 2171968923, i64 2171968964, i64 2171968985, i64 2171969013, i64 2171969047}
