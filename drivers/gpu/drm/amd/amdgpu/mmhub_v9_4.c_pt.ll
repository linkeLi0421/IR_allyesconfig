; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_mmhub_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmhub_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc15_reg_entry = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.soc15_ras_field_entry = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ras_err_data = type { i32, i32, i32, ptr }
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mmhub_v9_4_ras_funcs = dso_local constant { %struct.amdgpu_mmhub_ras_funcs, [40 x i8] } { %struct.amdgpu_mmhub_ras_funcs { ptr @amdgpu_mmhub_ras_late_init, ptr @amdgpu_mmhub_ras_fini, ptr @mmhub_v9_4_query_ras_error_count, ptr @mmhub_v9_4_query_ras_error_status, ptr @mmhub_v9_4_reset_ras_error_count, ptr null }, [40 x i8] zeroinitializer }, align 32
@mmhub_v9_4_funcs = dso_local constant { %struct.amdgpu_mmhub_funcs, [60 x i8] } { %struct.amdgpu_mmhub_funcs { ptr @mmhub_v9_4_get_fb_location, ptr @mmhub_v9_4_init, ptr @mmhub_v9_4_gart_enable, ptr @mmhub_v9_4_set_fault_enable_default, ptr @mmhub_v9_4_gart_disable, ptr @mmhub_v9_4_set_clockgating, ptr @mmhub_v9_4_get_clockgating, ptr @mmhub_v9_4_setup_vm_pt_regs, ptr null }, [60 x i8] zeroinitializer }, align 32
@mmhub_v9_4_edc_cnt_regs = internal constant { [24 x %struct.soc15_reg_entry], [160 x i8] } { [24 x %struct.soc15_reg_entry] [%struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 902, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 903, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 916, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1222, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1223, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1236, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1542, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1543, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1556, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1862, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1863, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1876, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 2182, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 2183, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 2196, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13190, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13191, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13204, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13510, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13511, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13524, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13830, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13831, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13844, i32 0, i32 0, i32 0 }], [160 x i8] zeroinitializer }, align 32
@mmhub_v9_4_ras_fields = internal constant { [208 x %struct.soc15_ras_field_entry], [1856 x i8] } { [208 x %struct.soc15_ras_field_entry] [%struct.soc15_ras_field_entry { ptr @.str.8, i32 11, i32 0, i32 1, i32 902, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.9, i32 11, i32 0, i32 1, i32 902, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.10, i32 11, i32 0, i32 1, i32 902, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.11, i32 11, i32 0, i32 1, i32 902, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.12, i32 11, i32 0, i32 1, i32 902, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.13, i32 11, i32 0, i32 1, i32 902, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.14, i32 11, i32 0, i32 1, i32 902, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.15, i32 11, i32 0, i32 1, i32 902, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.16, i32 11, i32 0, i32 1, i32 902, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.17, i32 11, i32 0, i32 1, i32 902, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.18, i32 11, i32 0, i32 1, i32 903, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.19, i32 11, i32 0, i32 1, i32 903, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.20, i32 11, i32 0, i32 1, i32 903, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.21, i32 11, i32 0, i32 1, i32 903, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.22, i32 11, i32 0, i32 1, i32 903, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.13, i32 11, i32 0, i32 1, i32 916, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.14, i32 11, i32 0, i32 1, i32 916, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.15, i32 11, i32 0, i32 1, i32 916, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.16, i32 11, i32 0, i32 1, i32 916, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.17, i32 11, i32 0, i32 1, i32 916, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.21, i32 11, i32 0, i32 1, i32 916, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.22, i32 11, i32 0, i32 1, i32 916, i32 0, i32 0, i32 12288, i32 12 }, %struct.soc15_ras_field_entry { ptr @.str.23, i32 11, i32 0, i32 1, i32 903, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.24, i32 11, i32 0, i32 1, i32 903, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.25, i32 11, i32 0, i32 1, i32 903, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.26, i32 11, i32 0, i32 1, i32 903, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.27, i32 11, i32 0, i32 1, i32 1222, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.28, i32 11, i32 0, i32 1, i32 1222, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.29, i32 11, i32 0, i32 1, i32 1222, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.30, i32 11, i32 0, i32 1, i32 1222, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.31, i32 11, i32 0, i32 1, i32 1222, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.32, i32 11, i32 0, i32 1, i32 1222, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.33, i32 11, i32 0, i32 1, i32 1222, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.34, i32 11, i32 0, i32 1, i32 1222, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.35, i32 11, i32 0, i32 1, i32 1222, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.36, i32 11, i32 0, i32 1, i32 1222, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.37, i32 11, i32 0, i32 1, i32 1223, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.38, i32 11, i32 0, i32 1, i32 1223, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.39, i32 11, i32 0, i32 1, i32 1223, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.40, i32 11, i32 0, i32 1, i32 1223, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.41, i32 11, i32 0, i32 1, i32 1223, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.32, i32 11, i32 0, i32 1, i32 1236, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.33, i32 11, i32 0, i32 1, i32 1236, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.34, i32 11, i32 0, i32 1, i32 1236, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.35, i32 11, i32 0, i32 1, i32 1236, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.36, i32 11, i32 0, i32 1, i32 1236, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.40, i32 11, i32 0, i32 1, i32 1236, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.41, i32 11, i32 0, i32 1, i32 1236, i32 0, i32 0, i32 12288, i32 12 }, %struct.soc15_ras_field_entry { ptr @.str.42, i32 11, i32 0, i32 1, i32 1223, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.43, i32 11, i32 0, i32 1, i32 1223, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.44, i32 11, i32 0, i32 1, i32 1223, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.45, i32 11, i32 0, i32 1, i32 1223, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.46, i32 11, i32 0, i32 1, i32 1542, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.47, i32 11, i32 0, i32 1, i32 1542, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.48, i32 11, i32 0, i32 1, i32 1542, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.49, i32 11, i32 0, i32 1, i32 1542, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.50, i32 11, i32 0, i32 1, i32 1542, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.51, i32 11, i32 0, i32 1, i32 1542, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.52, i32 11, i32 0, i32 1, i32 1542, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.53, i32 11, i32 0, i32 1, i32 1542, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.54, i32 11, i32 0, i32 1, i32 1542, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.55, i32 11, i32 0, i32 1, i32 1542, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.56, i32 11, i32 0, i32 1, i32 1543, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.57, i32 11, i32 0, i32 1, i32 1543, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.58, i32 11, i32 0, i32 1, i32 1543, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.59, i32 11, i32 0, i32 1, i32 1543, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.60, i32 11, i32 0, i32 1, i32 1543, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.51, i32 11, i32 0, i32 1, i32 1556, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.52, i32 11, i32 0, i32 1, i32 1556, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.53, i32 11, i32 0, i32 1, i32 1556, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.54, i32 11, i32 0, i32 1, i32 1556, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.55, i32 11, i32 0, i32 1, i32 1556, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.59, i32 11, i32 0, i32 1, i32 1556, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.60, i32 11, i32 0, i32 1, i32 1556, i32 0, i32 0, i32 12288, i32 12 }, %struct.soc15_ras_field_entry { ptr @.str.61, i32 11, i32 0, i32 1, i32 1543, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.62, i32 11, i32 0, i32 1, i32 1543, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.63, i32 11, i32 0, i32 1, i32 1543, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.64, i32 11, i32 0, i32 1, i32 1543, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.65, i32 11, i32 0, i32 1, i32 1862, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.66, i32 11, i32 0, i32 1, i32 1862, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.67, i32 11, i32 0, i32 1, i32 1862, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.68, i32 11, i32 0, i32 1, i32 1862, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.69, i32 11, i32 0, i32 1, i32 1862, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.70, i32 11, i32 0, i32 1, i32 1862, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.71, i32 11, i32 0, i32 1, i32 1862, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.72, i32 11, i32 0, i32 1, i32 1862, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.73, i32 11, i32 0, i32 1, i32 1862, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.74, i32 11, i32 0, i32 1, i32 1862, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.75, i32 11, i32 0, i32 1, i32 1863, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.76, i32 11, i32 0, i32 1, i32 1863, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.77, i32 11, i32 0, i32 1, i32 1863, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.78, i32 11, i32 0, i32 1, i32 1863, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.79, i32 11, i32 0, i32 1, i32 1863, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.70, i32 11, i32 0, i32 1, i32 1876, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.71, i32 11, i32 0, i32 1, i32 1876, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.72, i32 11, i32 0, i32 1, i32 1876, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.73, i32 11, i32 0, i32 1, i32 1876, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.74, i32 11, i32 0, i32 1, i32 1876, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.78, i32 11, i32 0, i32 1, i32 1876, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.79, i32 11, i32 0, i32 1, i32 1876, i32 0, i32 0, i32 12288, i32 12 }, %struct.soc15_ras_field_entry { ptr @.str.80, i32 11, i32 0, i32 1, i32 1863, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.81, i32 11, i32 0, i32 1, i32 1863, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.82, i32 11, i32 0, i32 1, i32 1863, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.83, i32 11, i32 0, i32 1, i32 1863, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.84, i32 11, i32 0, i32 1, i32 2182, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.85, i32 11, i32 0, i32 1, i32 2182, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.86, i32 11, i32 0, i32 1, i32 2182, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.87, i32 11, i32 0, i32 1, i32 2182, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.88, i32 11, i32 0, i32 1, i32 2182, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.89, i32 11, i32 0, i32 1, i32 2182, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.90, i32 11, i32 0, i32 1, i32 2182, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.91, i32 11, i32 0, i32 1, i32 2182, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.92, i32 11, i32 0, i32 1, i32 2182, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.93, i32 11, i32 0, i32 1, i32 2182, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.94, i32 11, i32 0, i32 1, i32 2183, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.95, i32 11, i32 0, i32 1, i32 2183, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.96, i32 11, i32 0, i32 1, i32 2183, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.97, i32 11, i32 0, i32 1, i32 2183, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.98, i32 11, i32 0, i32 1, i32 2183, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.89, i32 11, i32 0, i32 1, i32 2196, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.90, i32 11, i32 0, i32 1, i32 2196, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.91, i32 11, i32 0, i32 1, i32 2196, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.92, i32 11, i32 0, i32 1, i32 2196, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.93, i32 11, i32 0, i32 1, i32 2196, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.97, i32 11, i32 0, i32 1, i32 2196, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.98, i32 11, i32 0, i32 1, i32 2196, i32 0, i32 0, i32 12288, i32 12 }, %struct.soc15_ras_field_entry { ptr @.str.99, i32 11, i32 0, i32 1, i32 2183, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.100, i32 11, i32 0, i32 1, i32 2183, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.101, i32 11, i32 0, i32 1, i32 2183, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.102, i32 11, i32 0, i32 1, i32 2183, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.103, i32 11, i32 0, i32 1, i32 13190, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.104, i32 11, i32 0, i32 1, i32 13190, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.105, i32 11, i32 0, i32 1, i32 13190, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.106, i32 11, i32 0, i32 1, i32 13190, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.107, i32 11, i32 0, i32 1, i32 13190, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.108, i32 11, i32 0, i32 1, i32 13190, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.109, i32 11, i32 0, i32 1, i32 13190, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.110, i32 11, i32 0, i32 1, i32 13190, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.111, i32 11, i32 0, i32 1, i32 13190, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.112, i32 11, i32 0, i32 1, i32 13190, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.113, i32 11, i32 0, i32 1, i32 13191, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.114, i32 11, i32 0, i32 1, i32 13191, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.115, i32 11, i32 0, i32 1, i32 13191, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.116, i32 11, i32 0, i32 1, i32 13191, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.117, i32 11, i32 0, i32 1, i32 13191, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.108, i32 11, i32 0, i32 1, i32 13204, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.109, i32 11, i32 0, i32 1, i32 13204, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.110, i32 11, i32 0, i32 1, i32 13204, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.111, i32 11, i32 0, i32 1, i32 13204, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.112, i32 11, i32 0, i32 1, i32 13204, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.116, i32 11, i32 0, i32 1, i32 13204, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.117, i32 11, i32 0, i32 1, i32 13204, i32 0, i32 0, i32 12288, i32 12 }, %struct.soc15_ras_field_entry { ptr @.str.118, i32 11, i32 0, i32 1, i32 13191, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.119, i32 11, i32 0, i32 1, i32 13191, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.120, i32 11, i32 0, i32 1, i32 13191, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.121, i32 11, i32 0, i32 1, i32 13191, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.122, i32 11, i32 0, i32 1, i32 13510, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.123, i32 11, i32 0, i32 1, i32 13510, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.124, i32 11, i32 0, i32 1, i32 13510, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.125, i32 11, i32 0, i32 1, i32 13510, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.126, i32 11, i32 0, i32 1, i32 13510, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.127, i32 11, i32 0, i32 1, i32 13510, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.128, i32 11, i32 0, i32 1, i32 13510, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.129, i32 11, i32 0, i32 1, i32 13510, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.130, i32 11, i32 0, i32 1, i32 13510, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.131, i32 11, i32 0, i32 1, i32 13510, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.132, i32 11, i32 0, i32 1, i32 13511, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.133, i32 11, i32 0, i32 1, i32 13511, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.134, i32 11, i32 0, i32 1, i32 13511, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.135, i32 11, i32 0, i32 1, i32 13511, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.136, i32 11, i32 0, i32 1, i32 13511, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.127, i32 11, i32 0, i32 1, i32 13524, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.128, i32 11, i32 0, i32 1, i32 13524, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.129, i32 11, i32 0, i32 1, i32 13524, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.130, i32 11, i32 0, i32 1, i32 13524, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.131, i32 11, i32 0, i32 1, i32 13524, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.135, i32 11, i32 0, i32 1, i32 13524, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.136, i32 11, i32 0, i32 1, i32 13524, i32 0, i32 0, i32 12288, i32 12 }, %struct.soc15_ras_field_entry { ptr @.str.137, i32 11, i32 0, i32 1, i32 13511, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.138, i32 11, i32 0, i32 1, i32 13511, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.139, i32 11, i32 0, i32 1, i32 13511, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.140, i32 11, i32 0, i32 1, i32 13511, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.141, i32 11, i32 0, i32 1, i32 13830, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.142, i32 11, i32 0, i32 1, i32 13830, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.143, i32 11, i32 0, i32 1, i32 13830, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.144, i32 11, i32 0, i32 1, i32 13830, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.145, i32 11, i32 0, i32 1, i32 13830, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.146, i32 11, i32 0, i32 1, i32 13830, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.147, i32 11, i32 0, i32 1, i32 13830, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.148, i32 11, i32 0, i32 1, i32 13830, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.149, i32 11, i32 0, i32 1, i32 13830, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.150, i32 11, i32 0, i32 1, i32 13830, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.151, i32 11, i32 0, i32 1, i32 13831, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.152, i32 11, i32 0, i32 1, i32 13831, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.153, i32 11, i32 0, i32 1, i32 13831, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.154, i32 11, i32 0, i32 1, i32 13831, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.155, i32 11, i32 0, i32 1, i32 13831, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.146, i32 11, i32 0, i32 1, i32 13844, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.147, i32 11, i32 0, i32 1, i32 13844, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.148, i32 11, i32 0, i32 1, i32 13844, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.149, i32 11, i32 0, i32 1, i32 13844, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.150, i32 11, i32 0, i32 1, i32 13844, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.154, i32 11, i32 0, i32 1, i32 13844, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.155, i32 11, i32 0, i32 1, i32 13844, i32 0, i32 0, i32 12288, i32 12 }, %struct.soc15_ras_field_entry { ptr @.str.156, i32 11, i32 0, i32 1, i32 13831, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.157, i32 11, i32 0, i32 1, i32 13831, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.158, i32 11, i32 0, i32 1, i32 13831, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.159, i32 11, i32 0, i32 1, i32 13831, i32 12582912, i32 22, i32 -1073741824, i32 30 }], [1856 x i8] zeroinitializer }, align 32
@mmhub_v9_4_get_ras_error_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1572, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: MMHUB SubBlock %s, SEC %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mmhub_v9_4_get_ras_error_count\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmhub_v9_4_get_ras_error_count._entry_ptr = internal global ptr @mmhub_v9_4_get_ras_error_count._entry, section ".printk_index", align 4
@mmhub_v9_4_get_ras_error_count._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1582, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: MMHUB SubBlock %s, DED %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mmhub_v9_4_get_ras_error_count._entry_ptr.7 = internal global ptr @mmhub_v9_4_get_ras_error_count._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA0_DRAMRD_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA0_DRAMWR_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA0_DRAMWR_DATAMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA0_RRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA0_WRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA0_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA0_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA0_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA0_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA0_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA0_GMIRD_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA0_GMIWR_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA0_GMIWR_DATAMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA0_GMIRD_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA0_GMIWR_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA0_MAM_D0MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA0_MAM_D1MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA0_MAM_D2MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA0_MAM_D3MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA1_DRAMRD_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA1_DRAMWR_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA1_DRAMWR_DATAMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA1_RRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA1_WRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA1_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA1_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA1_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA1_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA1_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA1_GMIRD_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA1_GMIWR_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA1_GMIWR_DATAMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA1_GMIRD_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA1_GMIWR_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA1_MAM_D0MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA1_MAM_D1MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA1_MAM_D2MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA1_MAM_D3MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA2_DRAMRD_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA2_DRAMWR_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA2_DRAMWR_DATAMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA2_RRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA2_WRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA2_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA2_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA2_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA2_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA2_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA2_GMIRD_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA2_GMIWR_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA2_GMIWR_DATAMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA2_GMIRD_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA2_GMIWR_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA2_MAM_D0MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA2_MAM_D1MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA2_MAM_D2MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA2_MAM_D3MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA3_DRAMRD_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA3_DRAMWR_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA3_DRAMWR_DATAMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA3_RRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA3_WRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA3_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA3_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA3_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA3_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA3_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA3_GMIRD_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA3_GMIWR_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA3_GMIWR_DATAMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA3_GMIRD_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA3_GMIWR_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA3_MAM_D0MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA3_MAM_D1MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA3_MAM_D2MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA3_MAM_D3MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA4_DRAMRD_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA4_DRAMWR_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA4_DRAMWR_DATAMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA4_RRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA4_WRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA4_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA4_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA4_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA4_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA4_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA4_GMIRD_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA4_GMIWR_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA4_GMIWR_DATAMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA4_GMIRD_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA4_GMIWR_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA4_MAM_D0MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA4_MAM_D1MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA4_MAM_D2MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA4_MAM_D3MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA5_DRAMRD_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA5_DRAMWR_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA5_DRAMWR_DATAMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA5_RRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA5_WRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA5_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA5_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA5_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA5_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA5_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA5_GMIRD_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA5_GMIWR_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA5_GMIWR_DATAMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA5_GMIRD_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA5_GMIWR_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA5_MAM_D0MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA5_MAM_D1MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA5_MAM_D2MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA5_MAM_D3MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA6_DRAMRD_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA6_DRAMWR_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA6_DRAMWR_DATAMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA6_RRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA6_WRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA6_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA6_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA6_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA6_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA6_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA6_GMIRD_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA6_GMIWR_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA6_GMIWR_DATAMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA6_GMIRD_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA6_GMIWR_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA6_MAM_D0MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA6_MAM_D1MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA6_MAM_D2MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA6_MAM_D3MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA7_DRAMRD_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA7_DRAMWR_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA7_DRAMWR_DATAMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA7_RRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA7_WRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA7_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA7_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA7_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA7_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA7_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA7_GMIRD_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA7_GMIWR_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA7_GMIWR_DATAMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA7_GMIRD_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA7_GMIWR_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA7_MAM_D0MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA7_MAM_D1MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA7_MAM_D2MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA7_MAM_D3MEM\00", [16 x i8] zeroinitializer }, align 32
@mmhub_v9_4_err_status_regs = internal constant { [8 x %struct.soc15_reg_entry], [32 x i8] } { [8 x %struct.soc15_reg_entry] [%struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 913, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1233, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1553, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 1873, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 2193, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13201, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13521, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 1, i32 13841, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@mmhub_v9_4_query_ras_error_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.2, i32 1653, ptr @.str.162, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"amdgpu: MMHUB EA err detected at instance: %d, status: 0x%x!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mmhub_v9_4_query_ras_error_status\00", [62 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mmhub_v9_4_query_ras_error_status._entry_ptr = internal global ptr @mmhub_v9_4_query_ras_error_status._entry, section ".printk_index", align 4
@___asan_gen_.163 = private unnamed_addr constant [21 x i8] c"mmhub_v9_4_ras_funcs\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1658, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"mmhub_v9_4_funcs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1666, i32 33 }
@___asan_gen_.169 = private unnamed_addr constant [24 x i8] c"mmhub_v9_4_edc_cnt_regs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1526, i32 37 }
@___asan_gen_.172 = private unnamed_addr constant [22 x i8] c"mmhub_v9_4_ras_fields\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 676, i32 43 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1570, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1580, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 678, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 682, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 686, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 690, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 694, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 698, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 702, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 706, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 710, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 714, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 718, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 722, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 726, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 730, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 734, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 766, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 770, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 774, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 778, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 784, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 788, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 792, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 796, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 800, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 804, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 808, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 812, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 816, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 820, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 824, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 828, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 832, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 836, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 840, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 872, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 876, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 880, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 884, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 890, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 894, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 898, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 902, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 906, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 910, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 914, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 918, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 922, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 926, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 930, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 934, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 938, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 942, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 946, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 978, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 982, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 986, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 990, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 996, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1000, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1004, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1008, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1012, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1016, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1020, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1024, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1028, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1032, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1036, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1040, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1044, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1048, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1052, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1084, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1088, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1092, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1096, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1102, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1106, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1110, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1114, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1118, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1122, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1126, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1130, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1134, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1138, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1142, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1146, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1150, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1154, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1158, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1190, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1194, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1198, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1202, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1208, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1212, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1216, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1220, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1224, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1228, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1232, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1236, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1240, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1244, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1248, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1252, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1256, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1260, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1264, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1296, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1300, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1304, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1308, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1314, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1318, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1322, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1326, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1330, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1334, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1338, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1342, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1346, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1350, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1354, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1358, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1362, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1366, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1370, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1402, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1406, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1410, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1414, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1420, i32 4 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1424, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1428, i32 4 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1432, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1436, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1440, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1444, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1448, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1452, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1456, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1460, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1464, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1468, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1472, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1476, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1508, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1512, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1516, i32 4 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1520, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant [27 x i8] c"mmhub_v9_4_err_status_regs\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1624, i32 37 }
@___asan_gen_.658 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.667 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.668 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 1652, i32 4 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @mmhub_v9_4_get_ras_error_count._entry, ptr @mmhub_v9_4_get_ras_error_count._entry.5, ptr @mmhub_v9_4_get_ras_error_count._entry_ptr, ptr @mmhub_v9_4_get_ras_error_count._entry_ptr.7, ptr @mmhub_v9_4_query_ras_error_status._entry, ptr @mmhub_v9_4_query_ras_error_status._entry_ptr, ptr @mmhub_v9_4_ras_funcs, ptr @mmhub_v9_4_funcs, ptr @mmhub_v9_4_edc_cnt_regs, ptr @mmhub_v9_4_ras_fields, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @mmhub_v9_4_err_status_regs, ptr @.str.160, ptr @.str.161, ptr @.str.162], section "llvm.metadata"
@0 = internal global [169 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v9_4_ras_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v9_4_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v9_4_edc_cnt_regs to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v9_4_ras_fields to i32), i32 7488, i32 9344, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v9_4_get_ras_error_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v9_4_get_ras_error_count._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v9_4_err_status_regs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v9_4_query_ras_error_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_mmhub_ras_late_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mmhub_ras_fini(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v9_4_query_ras_error_count(ptr noundef %adev, ptr nocapture noundef %ras_error_status) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ras_error_status, align 4
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 1
  %1 = ptrtoint ptr %ce_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ce_count, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ded_count.029 = phi i32 [ 0, %entry ], [ %ded_count.3, %for.inc.for.body_crit_edge ]
  %sec_count.028 = phi i32 [ 0, %entry ], [ %sec_count.4, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [24 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_edc_cnt_regs, i32 0, i32 %i.030
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inst = getelementptr [24 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_edc_cnt_regs, i32 0, i32 %i.030, i32 1
  %4 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inst, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %3, i32 %5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %seg = getelementptr [24 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_edc_cnt_regs, i32 0, i32 %i.030, i32 2
  %8 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seg, align 4
  %arrayidx5 = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %reg_offset7 = getelementptr [24 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_edc_cnt_regs, i32 0, i32 %i.030, i32 3
  %12 = ptrtoint ptr %reg_offset7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_offset7, align 4
  %add = add i32 %13, %11
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  %14 = ptrtoint ptr %reg_offset7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_offset7, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %sec_count.1 = phi i32 [ %sec_count.028, %if.then ], [ %sec_count.3, %for.inc.i.for.body.i_crit_edge ]
  %ded_count.1 = phi i32 [ %ded_count.029, %if.then ], [ %ded_count.2, %for.inc.i.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [208 x %struct.soc15_ras_field_entry], ptr @mmhub_v9_4_ras_fields, i32 0, i32 %i.01.i
  %reg_offset.i = getelementptr [208 x %struct.soc15_ras_field_entry], ptr @mmhub_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 4
  %16 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp2.not.i = icmp eq i32 %17, %15
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %sec_count_mask.i = getelementptr [208 x %struct.soc15_ras_field_entry], ptr @mmhub_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 5
  %18 = ptrtoint ptr %sec_count_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sec_count_mask.i, align 4
  %and.i = and i32 %19, %call
  %sec_count_shift.i = getelementptr [208 x %struct.soc15_ras_field_entry], ptr @mmhub_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 6
  %20 = ptrtoint ptr %sec_count_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sec_count_shift.i, align 4
  %shr.i = lshr i32 %and.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %do.end.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev, align 8
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef %25, i32 noundef %shr.i) #8
  %add.i = add i32 %shr.i, %sec_count.1
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %if.end.i.if.end7.i_crit_edge
  %sec_count.2 = phi i32 [ %sec_count.1, %if.end.i.if.end7.i_crit_edge ], [ %add.i, %do.end.i ]
  %ded_count_mask.i = getelementptr [208 x %struct.soc15_ras_field_entry], ptr @mmhub_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 7
  %26 = ptrtoint ptr %ded_count_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ded_count_mask.i, align 4
  %and9.i = and i32 %27, %call
  %ded_count_shift.i = getelementptr [208 x %struct.soc15_ras_field_entry], ptr @mmhub_v9_4_ras_fields, i32 0, i32 %i.01.i, i32 8
  %28 = ptrtoint ptr %ded_count_shift.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ded_count_shift.i, align 4
  %shr11.i = lshr i32 %and9.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr11.i)
  %tobool12.not.i = icmp eq i32 %shr11.i, 0
  br i1 %tobool12.not.i, label %if.end7.i.for.inc.i_crit_edge, label %do.end16.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end16.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adev, align 8
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.6, ptr noundef %33, i32 noundef %shr11.i) #8
  %add20.i = add i32 %shr11.i, %ded_count.1
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end16.i, %if.end7.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %sec_count.3 = phi i32 [ %sec_count.2, %if.end7.i.for.inc.i_crit_edge ], [ %sec_count.2, %do.end16.i ], [ %sec_count.1, %for.body.i.for.inc.i_crit_edge ]
  %ded_count.2 = phi i32 [ %ded_count.1, %if.end7.i.for.inc.i_crit_edge ], [ %add20.i, %do.end16.i ], [ %ded_count.1, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 208
  br i1 %exitcond.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %sec_count.4 = phi i32 [ %sec_count.028, %for.body.for.inc_crit_edge ], [ %sec_count.3, %for.inc.i.for.inc_crit_edge ]
  %ded_count.3 = phi i32 [ %ded_count.029, %for.body.for.inc_crit_edge ], [ %ded_count.2, %for.inc.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ce_count, align 4
  %add11 = add i32 %35, %sec_count.4
  store i32 %add11, ptr %ce_count, align 4
  %36 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ras_error_status, align 4
  %add13 = add i32 %37, %ded_count.3
  store i32 %add13, ptr %ras_error_status, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v9_4_query_ras_error_status(ptr noundef %adev) #1 align 64 {
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
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.cleanup_crit_edge, label %amdgpu_ras_is_supported.exit.for.body_crit_edge

amdgpu_ras_is_supported.exit.for.body_crit_edge:  ; preds = %amdgpu_ras_is_supported.exit
  br label %for.body

amdgpu_ras_is_supported.exit.cleanup_crit_edge:   ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %amdgpu_ras_is_supported.exit.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %amdgpu_ras_is_supported.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_err_status_regs, i32 0, i32 %i.034
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %inst = getelementptr [8 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_err_status_regs, i32 0, i32 %i.034, i32 1
  %7 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %6, i32 %8
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  %seg = getelementptr [8 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_err_status_regs, i32 0, i32 %i.034, i32 2
  %11 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seg, align 4
  %arrayidx5 = getelementptr i32, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5, align 4
  %reg_offset7 = getelementptr [8 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_err_status_regs, i32 0, i32 %i.034, i32 3
  %15 = ptrtoint ptr %reg_offset7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_offset7, align 4
  %add = add i32 %16, %14
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #5
  %17 = and i32 %call8, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.160, i32 noundef %i.034, i32 noundef %call8) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %amdgpu_ras_is_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v9_4_reset_ras_error_count(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %amdgpu_ras_is_supported.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.if.end_crit_edge, label %amdgpu_ras_is_supported.exit.for.body_crit_edge

amdgpu_ras_is_supported.exit.for.body_crit_edge:  ; preds = %amdgpu_ras_is_supported.exit
  br label %for.body

amdgpu_ras_is_supported.exit.if.end_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %amdgpu_ras_is_supported.exit.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %amdgpu_ras_is_supported.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [24 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_edc_cnt_regs, i32 0, i32 %i.017
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %inst = getelementptr [24 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_edc_cnt_regs, i32 0, i32 %i.017, i32 1
  %7 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %6, i32 %8
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  %seg = getelementptr [24 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_edc_cnt_regs, i32 0, i32 %i.017, i32 2
  %11 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seg, align 4
  %arrayidx5 = getelementptr i32, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5, align 4
  %reg_offset7 = getelementptr [24 x %struct.soc15_reg_entry], ptr @mmhub_v9_4_edc_cnt_regs, i32 0, i32 %i.017, i32 3
  %15 = ptrtoint ptr %reg_offset7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_offset7, align 4
  %add = add i32 %16, %14
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #5
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %amdgpu_ras_is_supported.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mmhub_v9_4_get_fb_location(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 2816
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %13, 2816
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and21 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cond.end.cond.false45_crit_edge, label %land.lhs.true23

cond.end.cond.false45_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false45

land.lhs.true23:                                  ; preds = %cond.end
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false45_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false45_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false45

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_rreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %sriov_rreg32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_rreg32, align 4
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false45_crit_edge, label %cond.true34

land.lhs.true28.cond.false45_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false45

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42 = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %23, 2817
  %call44 = tail call i32 %19(ptr noundef %adev, i32 noundef %add43, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end52

cond.false45:                                     ; preds = %land.lhs.true28.cond.false45_crit_edge, %land.lhs.true23.cond.false45_crit_edge, %cond.end.cond.false45_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %27, 2817
  %call51 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50, i32 noundef 0) #5
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false45, %cond.true34
  %cond53 = phi i32 [ %call44, %cond.true34 ], [ %call51, %cond.false45 ]
  %28 = and i32 %cond, 16777215
  %and55 = zext i32 %28 to i64
  %shl = shl nuw nsw i64 %and55, 24
  %29 = and i32 %cond53, 16777215
  %and56 = zext i32 %29 to i64
  %shl57 = shl nuw nsw i64 %and56, 24
  %fb_start = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %30 = ptrtoint ptr %fb_start to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %shl, ptr %fb_start, align 8
  %fb_end = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %31 = ptrtoint ptr %fb_end to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %shl57, ptr %fb_end, align 8
  ret i64 %shl
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v9_4_init(ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1
  %arrayidx2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3, align 8
  %arrayidx5 = getelementptr i32, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  %add6 = add i32 %3, 2667
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add6, ptr %arrayidx, align 4
  %5 = load i32, ptr %arrayidx5, align 4
  %add14 = add i32 %5, 2668
  %ctx0_ptb_addr_hi32 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 1
  %6 = ptrtoint ptr %ctx0_ptb_addr_hi32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add14, ptr %ctx0_ptb_addr_hi32, align 4
  %7 = load i32, ptr %arrayidx5, align 4
  %add22 = add i32 %7, 2577
  %vm_inv_eng0_sem = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 2
  %8 = ptrtoint ptr %vm_inv_eng0_sem to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add22, ptr %vm_inv_eng0_sem, align 4
  %9 = load i32, ptr %arrayidx5, align 4
  %add30 = add i32 %9, 2595
  %vm_inv_eng0_req = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 3
  %10 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add30, ptr %vm_inv_eng0_req, align 4
  %11 = load i32, ptr %arrayidx5, align 4
  %add38 = add i32 %11, 2613
  %vm_inv_eng0_ack = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 4
  %12 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add38, ptr %vm_inv_eng0_ack, align 4
  %13 = load i32, ptr %arrayidx5, align 4
  %add46 = add i32 %13, 2560
  %vm_context0_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 5
  %14 = ptrtoint ptr %vm_context0_cntl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add46, ptr %vm_context0_cntl, align 4
  %15 = load i32, ptr %arrayidx5, align 4
  %add54 = add i32 %15, 2507
  %vm_l2_pro_fault_status = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 6
  %16 = ptrtoint ptr %vm_l2_pro_fault_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add54, ptr %vm_l2_pro_fault_status, align 4
  %17 = load i32, ptr %arrayidx5, align 4
  %add62 = add i32 %17, 2503
  %vm_l2_pro_fault_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 7
  %18 = ptrtoint ptr %vm_l2_pro_fault_cntl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add62, ptr %vm_l2_pro_fault_cntl, align 4
  %ctx_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 8
  %19 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ctx_distance, align 4
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %20 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %ctx_addr_distance, align 4
  %eng_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 10
  %21 = ptrtoint ptr %eng_distance to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %eng_distance, align 4
  %eng_addr_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 11
  %22 = ptrtoint ptr %eng_addr_distance to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %eng_addr_distance, align 4
  %23 = load i32, ptr %arrayidx5, align 4
  %add6.1 = add i32 %23, 14955
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add6.1, ptr %arrayidx2, align 4
  %25 = load i32, ptr %arrayidx5, align 4
  %add14.1 = add i32 %25, 14956
  %ctx0_ptb_addr_hi32.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2, i32 1
  %26 = ptrtoint ptr %ctx0_ptb_addr_hi32.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add14.1, ptr %ctx0_ptb_addr_hi32.1, align 4
  %27 = load i32, ptr %arrayidx5, align 4
  %add22.1 = add i32 %27, 14865
  %vm_inv_eng0_sem.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2, i32 2
  %28 = ptrtoint ptr %vm_inv_eng0_sem.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add22.1, ptr %vm_inv_eng0_sem.1, align 4
  %29 = load i32, ptr %arrayidx5, align 4
  %add30.1 = add i32 %29, 14883
  %vm_inv_eng0_req.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2, i32 3
  %30 = ptrtoint ptr %vm_inv_eng0_req.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add30.1, ptr %vm_inv_eng0_req.1, align 4
  %31 = load i32, ptr %arrayidx5, align 4
  %add38.1 = add i32 %31, 14901
  %vm_inv_eng0_ack.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2, i32 4
  %32 = ptrtoint ptr %vm_inv_eng0_ack.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add38.1, ptr %vm_inv_eng0_ack.1, align 4
  %33 = load i32, ptr %arrayidx5, align 4
  %add46.1 = add i32 %33, 14848
  %vm_context0_cntl.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2, i32 5
  %34 = ptrtoint ptr %vm_context0_cntl.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add46.1, ptr %vm_context0_cntl.1, align 4
  %35 = load i32, ptr %arrayidx5, align 4
  %add54.1 = add i32 %35, 14795
  %vm_l2_pro_fault_status.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2, i32 6
  %36 = ptrtoint ptr %vm_l2_pro_fault_status.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add54.1, ptr %vm_l2_pro_fault_status.1, align 4
  %37 = load i32, ptr %arrayidx5, align 4
  %add62.1 = add i32 %37, 14791
  %vm_l2_pro_fault_cntl.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2, i32 7
  %38 = ptrtoint ptr %vm_l2_pro_fault_cntl.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add62.1, ptr %vm_l2_pro_fault_cntl.1, align 4
  %ctx_distance.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2, i32 8
  %39 = ptrtoint ptr %ctx_distance.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %ctx_distance.1, align 4
  %ctx_addr_distance.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2, i32 9
  %40 = ptrtoint ptr %ctx_addr_distance.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %ctx_addr_distance.1, align 4
  %eng_distance.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2, i32 10
  %41 = ptrtoint ptr %eng_distance.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %eng_distance.1, align 4
  %eng_addr_distance.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 2, i32 11
  %42 = ptrtoint ptr %eng_addr_distance.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %eng_addr_distance.1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmhub_v9_4_gart_enable(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %gart_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %agp_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %agp_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %fb_start155.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %fb_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 69, i32 2
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %translate_further.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %num_level.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 6
  %block_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %noretry.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 41
  %ctx_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 8
  %ctx_addr_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %eng_addr_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 11
  br label %for.body

for.body:                                         ; preds = %mmhub_v9_4_program_invalidation.exit.for.body_crit_edge, %entry
  %i.0277 = phi i32 [ 0, %entry ], [ %inc, %mmhub_v9_4_program_invalidation.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gart.i, align 8
  %call.i = tail call i64 @amdgpu_gmc_pd_addr(ptr noundef %1) #5
  tail call fastcc void @mmhub_v9_4_setup_hubid_vm_pt_regs(ptr noundef %adev, i32 noundef %i.0277, i32 noundef 0, i64 noundef %call.i) #5
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.cond.false.i_crit_edge, label %land.lhs.true.i

for.body.cond.false.i_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %for.body
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true2.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx12.i = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12.i, align 4
  %mul.i = mul nuw nsw i32 %i.0277, 12288
  %add.i = or i32 %mul.i, 2699
  %add13.i = add i32 %add.i, %11
  %12 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %gart_start.i, align 8
  %shr.i = lshr i64 %13, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void %7(ptr noundef %adev, i32 noundef %add13.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %for.body.cond.false.i_crit_edge
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx17.i = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17.i, align 4
  %mul19.i = mul nuw nsw i32 %i.0277, 12288
  %add18.i = or i32 %mul19.i, 2699
  %add20.i = add i32 %add18.i, %17
  %18 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %gart_start.i, align 8
  %shr23.i = lshr i64 %19, 12
  %conv24.i = trunc i64 %shr23.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add20.i, i32 noundef %conv24.i, i32 noundef 0) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt.i, align 8
  %and27.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %cond.end.i.cond.false56.i_crit_edge, label %land.lhs.true29.i

cond.end.i.cond.false56.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56.i

land.lhs.true29.i:                                ; preds = %cond.end.i
  %22 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs.i, align 4
  %tobool33.not.i = icmp eq ptr %23, null
  br i1 %tobool33.not.i, label %land.lhs.true29.i.cond.false56.i_crit_edge, label %land.lhs.true34.i

land.lhs.true29.i.cond.false56.i_crit_edge:       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56.i

land.lhs.true34.i:                                ; preds = %land.lhs.true29.i
  %sriov_wreg38.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg38.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg38.i, align 4
  %tobool39.not.i = icmp eq ptr %25, null
  br i1 %tobool39.not.i, label %land.lhs.true34.i.cond.false56.i_crit_edge, label %cond.true40.i

land.lhs.true34.i.cond.false56.i_crit_edge:       ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56.i

cond.true40.i:                                    ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx48.i = getelementptr i32, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx48.i, align 4
  %mul50.i = mul nuw nsw i32 %i.0277, 12288
  %add49.i = or i32 %mul50.i, 2700
  %add51.i = add i32 %add49.i, %29
  %30 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %gart_start.i, align 8
  %shr54.i = lshr i64 %31, 44
  %conv55.i = trunc i64 %shr54.i to i32
  tail call void %25(ptr noundef %adev, i32 noundef %add51.i, i32 noundef %conv55.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end68.i

cond.false56.i:                                   ; preds = %land.lhs.true34.i.cond.false56.i_crit_edge, %land.lhs.true29.i.cond.false56.i_crit_edge, %cond.end.i.cond.false56.i_crit_edge
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx60.i = getelementptr i32, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx60.i, align 4
  %mul62.i = mul nuw nsw i32 %i.0277, 12288
  %add61.i = or i32 %mul62.i, 2700
  %add63.i = add i32 %add61.i, %35
  %36 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %gart_start.i, align 8
  %shr66.i = lshr i64 %37, 44
  %conv67.i = trunc i64 %shr66.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add63.i, i32 noundef %conv67.i, i32 noundef 0) #5
  br label %cond.end68.i

cond.end68.i:                                     ; preds = %cond.false56.i, %cond.true40.i
  %38 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %virt.i, align 8
  %and71.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %cond.end68.i.cond.false99.i_crit_edge, label %land.lhs.true73.i

cond.end68.i.cond.false99.i_crit_edge:            ; preds = %cond.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false99.i

land.lhs.true73.i:                                ; preds = %cond.end68.i
  %40 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs.i, align 4
  %tobool77.not.i = icmp eq ptr %41, null
  br i1 %tobool77.not.i, label %land.lhs.true73.i.cond.false99.i_crit_edge, label %land.lhs.true78.i

land.lhs.true73.i.cond.false99.i_crit_edge:       ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false99.i

land.lhs.true78.i:                                ; preds = %land.lhs.true73.i
  %sriov_wreg82.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %sriov_wreg82.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sriov_wreg82.i, align 4
  %tobool83.not.i = icmp eq ptr %43, null
  br i1 %tobool83.not.i, label %land.lhs.true78.i.cond.false99.i_crit_edge, label %cond.true84.i

land.lhs.true78.i.cond.false99.i_crit_edge:       ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false99.i

cond.true84.i:                                    ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx92.i = getelementptr i32, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx92.i, align 4
  %mul94.i = mul nuw nsw i32 %i.0277, 12288
  %add93.i = or i32 %mul94.i, 2731
  %add95.i = add i32 %add93.i, %47
  %48 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %gart_end.i, align 8
  %shr97.i = lshr i64 %49, 12
  %conv98.i = trunc i64 %shr97.i to i32
  tail call void %43(ptr noundef %adev, i32 noundef %add95.i, i32 noundef %conv98.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end111.i

cond.false99.i:                                   ; preds = %land.lhs.true78.i.cond.false99.i_crit_edge, %land.lhs.true73.i.cond.false99.i_crit_edge, %cond.end68.i.cond.false99.i_crit_edge
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx103.i = getelementptr i32, ptr %51, i32 1
  %52 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx103.i, align 4
  %mul105.i = mul nuw nsw i32 %i.0277, 12288
  %add104.i = or i32 %mul105.i, 2731
  %add106.i = add i32 %add104.i, %53
  %54 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %gart_end.i, align 8
  %shr109.i = lshr i64 %55, 12
  %conv110.i = trunc i64 %shr109.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add106.i, i32 noundef %conv110.i, i32 noundef 0) #5
  br label %cond.end111.i

cond.end111.i:                                    ; preds = %cond.false99.i, %cond.true84.i
  %56 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt.i, align 8
  %and114.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %cond.end111.i.cond.false143.i_crit_edge, label %land.lhs.true116.i

cond.end111.i.cond.false143.i_crit_edge:          ; preds = %cond.end111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false143.i

land.lhs.true116.i:                               ; preds = %cond.end111.i
  %58 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs.i, align 4
  %tobool120.not.i = icmp eq ptr %59, null
  br i1 %tobool120.not.i, label %land.lhs.true116.i.cond.false143.i_crit_edge, label %land.lhs.true121.i

land.lhs.true116.i.cond.false143.i_crit_edge:     ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false143.i

land.lhs.true121.i:                               ; preds = %land.lhs.true116.i
  %sriov_wreg125.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %sriov_wreg125.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sriov_wreg125.i, align 4
  %tobool126.not.i = icmp eq ptr %61, null
  br i1 %tobool126.not.i, label %land.lhs.true121.i.cond.false143.i_crit_edge, label %cond.true127.i

land.lhs.true121.i.cond.false143.i_crit_edge:     ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false143.i

cond.true127.i:                                   ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx135.i = getelementptr i32, ptr %63, i32 1
  %64 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx135.i, align 4
  %mul137.i = mul nuw nsw i32 %i.0277, 12288
  %add136.i = or i32 %mul137.i, 2732
  %add138.i = add i32 %add136.i, %65
  %66 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %gart_end.i, align 8
  %shr141.i = lshr i64 %67, 44
  %conv142.i = trunc i64 %shr141.i to i32
  tail call void %61(ptr noundef %adev, i32 noundef %add138.i, i32 noundef %conv142.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v9_4_init_gart_aperture_regs.exit

cond.false143.i:                                  ; preds = %land.lhs.true121.i.cond.false143.i_crit_edge, %land.lhs.true116.i.cond.false143.i_crit_edge, %cond.end111.i.cond.false143.i_crit_edge
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx147.i = getelementptr i32, ptr %69, i32 1
  %70 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx147.i, align 4
  %mul149.i = mul nuw nsw i32 %i.0277, 12288
  %add148.i = or i32 %mul149.i, 2732
  %add150.i = add i32 %add148.i, %71
  %72 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %gart_end.i, align 8
  %shr153.i = lshr i64 %73, 44
  %conv154.i = trunc i64 %shr153.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add150.i, i32 noundef %conv154.i, i32 noundef 0) #5
  br label %mmhub_v9_4_init_gart_aperture_regs.exit

mmhub_v9_4_init_gart_aperture_regs.exit:          ; preds = %cond.false143.i, %cond.true127.i
  %74 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %virt.i, align 8
  %and.i26 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27, label %mmhub_v9_4_init_gart_aperture_regs.exit.cond.false.i45_crit_edge, label %land.lhs.true.i30

mmhub_v9_4_init_gart_aperture_regs.exit.cond.false.i45_crit_edge: ; preds = %mmhub_v9_4_init_gart_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i45

land.lhs.true.i30:                                ; preds = %mmhub_v9_4_init_gart_aperture_regs.exit
  %76 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i29 = icmp eq ptr %77, null
  br i1 %tobool1.not.i29, label %land.lhs.true.i30.cond.false.i45_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i30.cond.false.i45_crit_edge:       ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i45

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i30
  %sriov_wreg.i31 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %sriov_wreg.i31 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sriov_wreg.i31, align 4
  %tobool6.not.i32 = icmp eq ptr %79, null
  br i1 %tobool6.not.i32, label %land.lhs.true2.i33.cond.false.i45_crit_edge, label %cond.true.i39

land.lhs.true2.i33.cond.false.i45_crit_edge:      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i45

cond.true.i39:                                    ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx12.i35 = getelementptr i32, ptr %81, i32 1
  %82 = ptrtoint ptr %arrayidx12.i35 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx12.i35, align 4
  %mul.i36 = mul nuw nsw i32 %i.0277, 12288
  %add.i37 = or i32 %mul.i36, 2820
  %add13.i38 = add i32 %add.i37, %83
  tail call void %79(ptr noundef %adev, i32 noundef %add13.i38, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i46

cond.false.i45:                                   ; preds = %land.lhs.true2.i33.cond.false.i45_crit_edge, %land.lhs.true.i30.cond.false.i45_crit_edge, %mmhub_v9_4_init_gart_aperture_regs.exit.cond.false.i45_crit_edge
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx17.i41 = getelementptr i32, ptr %85, i32 1
  %86 = ptrtoint ptr %arrayidx17.i41 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx17.i41, align 4
  %mul19.i42 = mul nuw nsw i32 %i.0277, 12288
  %add18.i43 = or i32 %mul19.i42, 2820
  %add20.i44 = add i32 %add18.i43, %87
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add20.i44, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end.i46

cond.end.i46:                                     ; preds = %cond.false.i45, %cond.true.i39
  %88 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %virt.i, align 8
  %and23.i = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %cond.end.i46.cond.false48.i_crit_edge, label %land.lhs.true25.i

cond.end.i46.cond.false48.i_crit_edge:            ; preds = %cond.end.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48.i

land.lhs.true25.i:                                ; preds = %cond.end.i46
  %90 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %funcs.i, align 4
  %tobool29.not.i = icmp eq ptr %91, null
  br i1 %tobool29.not.i, label %land.lhs.true25.i.cond.false48.i_crit_edge, label %land.lhs.true30.i

land.lhs.true25.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48.i

land.lhs.true30.i:                                ; preds = %land.lhs.true25.i
  %sriov_wreg34.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %91, i32 0, i32 12
  %92 = ptrtoint ptr %sriov_wreg34.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sriov_wreg34.i, align 4
  %tobool35.not.i = icmp eq ptr %93, null
  br i1 %tobool35.not.i, label %land.lhs.true30.i.cond.false48.i_crit_edge, label %cond.true36.i

land.lhs.true30.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48.i

cond.true36.i:                                    ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx44.i = getelementptr i32, ptr %95, i32 1
  %96 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx44.i, align 4
  %mul46.i = mul nuw nsw i32 %i.0277, 12288
  %add45.i = or i32 %mul46.i, 2818
  %add47.i = add i32 %add45.i, %97
  %98 = ptrtoint ptr %agp_end.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %agp_end.i, align 8
  %shr.i47 = lshr i64 %99, 24
  %conv.i48 = trunc i64 %shr.i47 to i32
  tail call void %93(ptr noundef %adev, i32 noundef %add47.i, i32 noundef %conv.i48, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end60.i

cond.false48.i:                                   ; preds = %land.lhs.true30.i.cond.false48.i_crit_edge, %land.lhs.true25.i.cond.false48.i_crit_edge, %cond.end.i46.cond.false48.i_crit_edge
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx52.i = getelementptr i32, ptr %101, i32 1
  %102 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx52.i, align 4
  %mul54.i = mul nuw nsw i32 %i.0277, 12288
  %add53.i = or i32 %mul54.i, 2818
  %add55.i = add i32 %add53.i, %103
  %104 = ptrtoint ptr %agp_end.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %agp_end.i, align 8
  %shr58.i = lshr i64 %105, 24
  %conv59.i = trunc i64 %shr58.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add55.i, i32 noundef %conv59.i, i32 noundef 0) #5
  br label %cond.end60.i

cond.end60.i:                                     ; preds = %cond.false48.i, %cond.true36.i
  %106 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %virt.i, align 8
  %and63.i = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %cond.end60.i.cond.false91.i_crit_edge, label %land.lhs.true65.i

cond.end60.i.cond.false91.i_crit_edge:            ; preds = %cond.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91.i

land.lhs.true65.i:                                ; preds = %cond.end60.i
  %108 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %funcs.i, align 4
  %tobool69.not.i = icmp eq ptr %109, null
  br i1 %tobool69.not.i, label %land.lhs.true65.i.cond.false91.i_crit_edge, label %land.lhs.true70.i

land.lhs.true65.i.cond.false91.i_crit_edge:       ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91.i

land.lhs.true70.i:                                ; preds = %land.lhs.true65.i
  %sriov_wreg74.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %109, i32 0, i32 12
  %110 = ptrtoint ptr %sriov_wreg74.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sriov_wreg74.i, align 4
  %tobool75.not.i = icmp eq ptr %111, null
  br i1 %tobool75.not.i, label %land.lhs.true70.i.cond.false91.i_crit_edge, label %cond.true76.i

land.lhs.true70.i.cond.false91.i_crit_edge:       ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91.i

cond.true76.i:                                    ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #7
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx84.i = getelementptr i32, ptr %113, i32 1
  %114 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx84.i, align 4
  %mul86.i = mul nuw nsw i32 %i.0277, 12288
  %add85.i = or i32 %mul86.i, 2819
  %add87.i = add i32 %add85.i, %115
  %116 = ptrtoint ptr %agp_start.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %agp_start.i, align 8
  %shr89.i = lshr i64 %117, 24
  %conv90.i = trunc i64 %shr89.i to i32
  tail call void %111(ptr noundef %adev, i32 noundef %add87.i, i32 noundef %conv90.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end103.i

cond.false91.i:                                   ; preds = %land.lhs.true70.i.cond.false91.i_crit_edge, %land.lhs.true65.i.cond.false91.i_crit_edge, %cond.end60.i.cond.false91.i_crit_edge
  %118 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx95.i = getelementptr i32, ptr %119, i32 1
  %120 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx95.i, align 4
  %mul97.i = mul nuw nsw i32 %i.0277, 12288
  %add96.i = or i32 %mul97.i, 2819
  %add98.i = add i32 %add96.i, %121
  %122 = ptrtoint ptr %agp_start.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %agp_start.i, align 8
  %shr101.i = lshr i64 %123, 24
  %conv102.i = trunc i64 %shr101.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add98.i, i32 noundef %conv102.i, i32 noundef 0) #5
  br label %cond.end103.i

cond.end103.i:                                    ; preds = %cond.false91.i, %cond.true76.i
  %124 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %virt.i, align 8
  %and106.i = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %cond.false145.i, label %cond.end103.i.mmhub_v9_4_init_system_aperture_regs.exit_crit_edge

cond.end103.i.mmhub_v9_4_init_system_aperture_regs.exit_crit_edge: ; preds = %cond.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmhub_v9_4_init_system_aperture_regs.exit

cond.false145.i:                                  ; preds = %cond.end103.i
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx149.i = getelementptr i32, ptr %127, i32 1
  %128 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx149.i, align 4
  %mul151.i = mul nuw nsw i32 %i.0277, 12288
  %add150.i50 = or i32 %mul151.i, 2821
  %add152.i = add i32 %add150.i50, %129
  %130 = ptrtoint ptr %fb_start155.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %fb_start155.i, align 8
  %132 = ptrtoint ptr %agp_start.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %agp_start.i, align 8
  %134 = tail call i64 @llvm.umin.i64(i64 %131, i64 %133) #5
  %cond165.off18.v.i = lshr i64 %134, 18
  %cond165.off18.i = trunc i64 %cond165.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add152.i, i32 noundef %cond165.off18.i, i32 noundef 0) #5
  %135 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %virt.i, align 8
  %and171.i = and i32 %136, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %tobool172.not.i = icmp eq i32 %and171.i, 0
  br i1 %tobool172.not.i, label %cond.false145.i.cond.false208.i_crit_edge, label %land.lhs.true173.i

cond.false145.i.cond.false208.i_crit_edge:        ; preds = %cond.false145.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false208.i

land.lhs.true173.i:                               ; preds = %cond.false145.i
  %137 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %funcs.i, align 4
  %tobool177.not.i = icmp eq ptr %138, null
  br i1 %tobool177.not.i, label %land.lhs.true173.i.cond.false208.i_crit_edge, label %land.lhs.true178.i

land.lhs.true173.i.cond.false208.i_crit_edge:     ; preds = %land.lhs.true173.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false208.i

land.lhs.true178.i:                               ; preds = %land.lhs.true173.i
  %sriov_wreg182.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %138, i32 0, i32 12
  %139 = ptrtoint ptr %sriov_wreg182.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sriov_wreg182.i, align 4
  %tobool183.not.i = icmp eq ptr %140, null
  br i1 %tobool183.not.i, label %land.lhs.true178.i.cond.false208.i_crit_edge, label %cond.true184.i

land.lhs.true178.i.cond.false208.i_crit_edge:     ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false208.i

cond.true184.i:                                   ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx192.i = getelementptr i32, ptr %142, i32 1
  %143 = ptrtoint ptr %arrayidx192.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx192.i, align 4
  %add193.i = or i32 %mul151.i, 2822
  %add195.i = add i32 %add193.i, %144
  %145 = ptrtoint ptr %fb_end.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %fb_end.i, align 8
  %147 = ptrtoint ptr %agp_end.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %agp_end.i, align 8
  %149 = tail call i64 @llvm.umax.i64(i64 %146, i64 %148) #5
  %cond205.off18.v.i = lshr i64 %149, 18
  %cond205.off18.i = trunc i64 %cond205.off18.v.i to i32
  tail call void %140(ptr noundef %adev, i32 noundef %add195.i, i32 noundef %cond205.off18.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end231.i

cond.false208.i:                                  ; preds = %land.lhs.true178.i.cond.false208.i_crit_edge, %land.lhs.true173.i.cond.false208.i_crit_edge, %cond.false145.i.cond.false208.i_crit_edge
  %150 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx212.i = getelementptr i32, ptr %151, i32 1
  %152 = ptrtoint ptr %arrayidx212.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx212.i, align 4
  %add213.i = or i32 %mul151.i, 2822
  %add215.i = add i32 %add213.i, %153
  %154 = ptrtoint ptr %fb_end.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %fb_end.i, align 8
  %156 = ptrtoint ptr %agp_end.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %agp_end.i, align 8
  %158 = tail call i64 @llvm.umax.i64(i64 %155, i64 %157) #5
  %cond228.off18.v.i = lshr i64 %158, 18
  %cond228.off18.i = trunc i64 %cond228.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add215.i, i32 noundef %cond228.off18.i, i32 noundef 0) #5
  br label %cond.end231.i

cond.end231.i:                                    ; preds = %cond.false208.i, %cond.true184.i
  %159 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %gpu_addr.i, align 8
  %call.i51 = tail call i64 @amdgpu_gmc_vram_mc2pa(ptr noundef %adev, i64 noundef %160) #5
  %161 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %virt.i, align 8
  %and234.i = and i32 %162, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234.i)
  %tobool235.not.i = icmp eq i32 %and234.i, 0
  br i1 %tobool235.not.i, label %cond.end231.i.cond.false261.i_crit_edge, label %land.lhs.true236.i

cond.end231.i.cond.false261.i_crit_edge:          ; preds = %cond.end231.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false261.i

land.lhs.true236.i:                               ; preds = %cond.end231.i
  %163 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %funcs.i, align 4
  %tobool240.not.i = icmp eq ptr %164, null
  br i1 %tobool240.not.i, label %land.lhs.true236.i.cond.false261.i_crit_edge, label %land.lhs.true241.i

land.lhs.true236.i.cond.false261.i_crit_edge:     ; preds = %land.lhs.true236.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false261.i

land.lhs.true241.i:                               ; preds = %land.lhs.true236.i
  %sriov_wreg245.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %164, i32 0, i32 12
  %165 = ptrtoint ptr %sriov_wreg245.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %sriov_wreg245.i, align 4
  %tobool246.not.i = icmp eq ptr %166, null
  br i1 %tobool246.not.i, label %land.lhs.true241.i.cond.false261.i_crit_edge, label %cond.true247.i

land.lhs.true241.i.cond.false261.i_crit_edge:     ; preds = %land.lhs.true241.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false261.i

cond.true247.i:                                   ; preds = %land.lhs.true241.i
  call void @__sanitizer_cov_trace_pc() #7
  %167 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx255.i = getelementptr i32, ptr %168, i32 1
  %169 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx255.i, align 4
  %add256.i = or i32 %mul151.i, 2796
  %add258.i = add i32 %add256.i, %170
  %shr259.i = lshr i64 %call.i51, 12
  %conv260.i = trunc i64 %shr259.i to i32
  tail call void %166(ptr noundef %adev, i32 noundef %add258.i, i32 noundef %conv260.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end271.i

cond.false261.i:                                  ; preds = %land.lhs.true241.i.cond.false261.i_crit_edge, %land.lhs.true236.i.cond.false261.i_crit_edge, %cond.end231.i.cond.false261.i_crit_edge
  %171 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx265.i = getelementptr i32, ptr %172, i32 1
  %173 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx265.i, align 4
  %add266.i = or i32 %mul151.i, 2796
  %add268.i = add i32 %add266.i, %174
  %shr269.i = lshr i64 %call.i51, 12
  %conv270.i = trunc i64 %shr269.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add268.i, i32 noundef %conv270.i, i32 noundef 0) #5
  br label %cond.end271.i

cond.end271.i:                                    ; preds = %cond.false261.i, %cond.true247.i
  %175 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %virt.i, align 8
  %and274.i = and i32 %176, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274.i)
  %tobool275.not.i = icmp eq i32 %and274.i, 0
  br i1 %tobool275.not.i, label %cond.end271.i.cond.false301.i_crit_edge, label %land.lhs.true276.i

cond.end271.i.cond.false301.i_crit_edge:          ; preds = %cond.end271.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false301.i

land.lhs.true276.i:                               ; preds = %cond.end271.i
  %177 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %funcs.i, align 4
  %tobool280.not.i = icmp eq ptr %178, null
  br i1 %tobool280.not.i, label %land.lhs.true276.i.cond.false301.i_crit_edge, label %land.lhs.true281.i

land.lhs.true276.i.cond.false301.i_crit_edge:     ; preds = %land.lhs.true276.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false301.i

land.lhs.true281.i:                               ; preds = %land.lhs.true276.i
  %sriov_wreg285.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %178, i32 0, i32 12
  %179 = ptrtoint ptr %sriov_wreg285.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %sriov_wreg285.i, align 4
  %tobool286.not.i = icmp eq ptr %180, null
  br i1 %tobool286.not.i, label %land.lhs.true281.i.cond.false301.i_crit_edge, label %cond.true287.i

land.lhs.true281.i.cond.false301.i_crit_edge:     ; preds = %land.lhs.true281.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false301.i

cond.true287.i:                                   ; preds = %land.lhs.true281.i
  call void @__sanitizer_cov_trace_pc() #7
  %181 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx295.i = getelementptr i32, ptr %182, i32 1
  %183 = ptrtoint ptr %arrayidx295.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx295.i, align 4
  %add296.i = or i32 %mul151.i, 2797
  %add298.i = add i32 %add296.i, %184
  %shr299.i = lshr i64 %call.i51, 44
  %conv300.i = trunc i64 %shr299.i to i32
  tail call void %180(ptr noundef %adev, i32 noundef %add298.i, i32 noundef %conv300.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end311.i

cond.false301.i:                                  ; preds = %land.lhs.true281.i.cond.false301.i_crit_edge, %land.lhs.true276.i.cond.false301.i_crit_edge, %cond.end271.i.cond.false301.i_crit_edge
  %185 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx305.i = getelementptr i32, ptr %186, i32 1
  %187 = ptrtoint ptr %arrayidx305.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx305.i, align 4
  %add306.i = or i32 %mul151.i, 2797
  %add308.i = add i32 %add306.i, %188
  %shr309.i = lshr i64 %call.i51, 44
  %conv310.i = trunc i64 %shr309.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add308.i, i32 noundef %conv310.i, i32 noundef 0) #5
  br label %cond.end311.i

cond.end311.i:                                    ; preds = %cond.false301.i, %cond.true287.i
  %189 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %virt.i, align 8
  %and314.i = and i32 %190, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.i)
  %tobool315.not.i = icmp eq i32 %and314.i, 0
  br i1 %tobool315.not.i, label %cond.end311.i.cond.false340.i_crit_edge, label %land.lhs.true316.i

cond.end311.i.cond.false340.i_crit_edge:          ; preds = %cond.end311.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false340.i

land.lhs.true316.i:                               ; preds = %cond.end311.i
  %191 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %funcs.i, align 4
  %tobool320.not.i = icmp eq ptr %192, null
  br i1 %tobool320.not.i, label %land.lhs.true316.i.cond.false340.i_crit_edge, label %land.lhs.true321.i

land.lhs.true316.i.cond.false340.i_crit_edge:     ; preds = %land.lhs.true316.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false340.i

land.lhs.true321.i:                               ; preds = %land.lhs.true316.i
  %sriov_wreg325.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %192, i32 0, i32 12
  %193 = ptrtoint ptr %sriov_wreg325.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %sriov_wreg325.i, align 4
  %tobool326.not.i = icmp eq ptr %194, null
  br i1 %tobool326.not.i, label %land.lhs.true321.i.cond.false340.i_crit_edge, label %cond.true327.i

land.lhs.true321.i.cond.false340.i_crit_edge:     ; preds = %land.lhs.true321.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false340.i

cond.true327.i:                                   ; preds = %land.lhs.true321.i
  call void @__sanitizer_cov_trace_pc() #7
  %195 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx335.i = getelementptr i32, ptr %196, i32 1
  %197 = ptrtoint ptr %arrayidx335.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx335.i, align 4
  %add336.i = or i32 %mul151.i, 2510
  %add338.i = add i32 %add336.i, %198
  %199 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %dummy_page_addr.i, align 8
  %shr339.i = lshr i32 %200, 12
  tail call void %194(ptr noundef %adev, i32 noundef %add338.i, i32 noundef %shr339.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end350.i

cond.false340.i:                                  ; preds = %land.lhs.true321.i.cond.false340.i_crit_edge, %land.lhs.true316.i.cond.false340.i_crit_edge, %cond.end311.i.cond.false340.i_crit_edge
  %201 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx344.i = getelementptr i32, ptr %202, i32 1
  %203 = ptrtoint ptr %arrayidx344.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx344.i, align 4
  %add345.i = or i32 %mul151.i, 2510
  %add347.i = add i32 %add345.i, %204
  %205 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %dummy_page_addr.i, align 8
  %shr349.i = lshr i32 %206, 12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add347.i, i32 noundef %shr349.i, i32 noundef 0) #5
  br label %cond.end350.i

cond.end350.i:                                    ; preds = %cond.false340.i, %cond.true327.i
  %207 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %virt.i, align 8
  %and353.i = and i32 %208, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and353.i)
  %tobool354.not.i = icmp eq i32 %and353.i, 0
  br i1 %tobool354.not.i, label %cond.end350.i.cond.false382.i_crit_edge, label %land.lhs.true355.i

cond.end350.i.cond.false382.i_crit_edge:          ; preds = %cond.end350.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false382.i

land.lhs.true355.i:                               ; preds = %cond.end350.i
  %209 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %funcs.i, align 4
  %tobool359.not.i = icmp eq ptr %210, null
  br i1 %tobool359.not.i, label %land.lhs.true355.i.cond.false382.i_crit_edge, label %land.lhs.true360.i

land.lhs.true355.i.cond.false382.i_crit_edge:     ; preds = %land.lhs.true355.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false382.i

land.lhs.true360.i:                               ; preds = %land.lhs.true355.i
  %sriov_wreg364.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %210, i32 0, i32 12
  %211 = ptrtoint ptr %sriov_wreg364.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %sriov_wreg364.i, align 4
  %tobool365.not.i = icmp eq ptr %212, null
  br i1 %tobool365.not.i, label %land.lhs.true360.i.cond.false382.i_crit_edge, label %cond.true366.i

land.lhs.true360.i.cond.false382.i_crit_edge:     ; preds = %land.lhs.true360.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false382.i

cond.true366.i:                                   ; preds = %land.lhs.true360.i
  call void @__sanitizer_cov_trace_pc() #7
  %213 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx374.i = getelementptr i32, ptr %214, i32 1
  %215 = ptrtoint ptr %arrayidx374.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx374.i, align 4
  %add375.i = or i32 %mul151.i, 2511
  %add377.i = add i32 %add375.i, %216
  tail call void %212(ptr noundef %adev, i32 noundef %add377.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end394.i

cond.false382.i:                                  ; preds = %land.lhs.true360.i.cond.false382.i_crit_edge, %land.lhs.true355.i.cond.false382.i_crit_edge, %cond.end350.i.cond.false382.i_crit_edge
  %217 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx386.i = getelementptr i32, ptr %218, i32 1
  %219 = ptrtoint ptr %arrayidx386.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx386.i, align 4
  %add387.i = or i32 %mul151.i, 2511
  %add389.i = add i32 %add387.i, %220
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add389.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end394.i

cond.end394.i:                                    ; preds = %cond.false382.i, %cond.true366.i
  %221 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %virt.i, align 8
  %and397.i = and i32 %222, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and397.i)
  %tobool398.not.i = icmp eq i32 %and397.i, 0
  br i1 %tobool398.not.i, label %cond.end394.i.cond.false422.i_crit_edge, label %land.lhs.true399.i

cond.end394.i.cond.false422.i_crit_edge:          ; preds = %cond.end394.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false422.i

land.lhs.true399.i:                               ; preds = %cond.end394.i
  %223 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %funcs.i, align 4
  %tobool403.not.i = icmp eq ptr %224, null
  br i1 %tobool403.not.i, label %land.lhs.true399.i.cond.false422.i_crit_edge, label %land.lhs.true404.i

land.lhs.true399.i.cond.false422.i_crit_edge:     ; preds = %land.lhs.true399.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false422.i

land.lhs.true404.i:                               ; preds = %land.lhs.true399.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %224, i32 0, i32 13
  %225 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool408.not.i = icmp eq ptr %226, null
  br i1 %tobool408.not.i, label %land.lhs.true404.i.cond.false422.i_crit_edge, label %cond.true409.i

land.lhs.true404.i.cond.false422.i_crit_edge:     ; preds = %land.lhs.true404.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false422.i

cond.true409.i:                                   ; preds = %land.lhs.true404.i
  call void @__sanitizer_cov_trace_pc() #7
  %227 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx417.i = getelementptr i32, ptr %228, i32 1
  %229 = ptrtoint ptr %arrayidx417.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx417.i, align 4
  %add418.i = or i32 %mul151.i, 2504
  %add420.i = add i32 %add418.i, %230
  %call421.i = tail call i32 %226(ptr noundef %adev, i32 noundef %add420.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end431.i

cond.false422.i:                                  ; preds = %land.lhs.true404.i.cond.false422.i_crit_edge, %land.lhs.true399.i.cond.false422.i_crit_edge, %cond.end394.i.cond.false422.i_crit_edge
  %231 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx426.i = getelementptr i32, ptr %232, i32 1
  %233 = ptrtoint ptr %arrayidx426.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx426.i, align 4
  %add427.i = or i32 %mul151.i, 2504
  %add429.i = add i32 %add427.i, %234
  %call430.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add429.i, i32 noundef 0) #5
  br label %cond.end431.i

cond.end431.i:                                    ; preds = %cond.false422.i, %cond.true409.i
  %cond432.i = phi i32 [ %call421.i, %cond.true409.i ], [ %call430.i, %cond.false422.i ]
  %or.i = or i32 %cond432.i, 262144
  %235 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %virt.i, align 8
  %and436.i = and i32 %236, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and436.i)
  %tobool437.not.i = icmp eq i32 %and436.i, 0
  br i1 %tobool437.not.i, label %cond.end431.i.cond.false461.i_crit_edge, label %land.lhs.true438.i

cond.end431.i.cond.false461.i_crit_edge:          ; preds = %cond.end431.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false461.i

land.lhs.true438.i:                               ; preds = %cond.end431.i
  %237 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %funcs.i, align 4
  %tobool442.not.i = icmp eq ptr %238, null
  br i1 %tobool442.not.i, label %land.lhs.true438.i.cond.false461.i_crit_edge, label %land.lhs.true443.i

land.lhs.true438.i.cond.false461.i_crit_edge:     ; preds = %land.lhs.true438.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false461.i

land.lhs.true443.i:                               ; preds = %land.lhs.true438.i
  %sriov_wreg447.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %238, i32 0, i32 12
  %239 = ptrtoint ptr %sriov_wreg447.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %sriov_wreg447.i, align 4
  %tobool448.not.i = icmp eq ptr %240, null
  br i1 %tobool448.not.i, label %land.lhs.true443.i.cond.false461.i_crit_edge, label %cond.true449.i

land.lhs.true443.i.cond.false461.i_crit_edge:     ; preds = %land.lhs.true443.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false461.i

cond.true449.i:                                   ; preds = %land.lhs.true443.i
  call void @__sanitizer_cov_trace_pc() #7
  %241 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx457.i = getelementptr i32, ptr %242, i32 1
  %243 = ptrtoint ptr %arrayidx457.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx457.i, align 4
  %add458.i = or i32 %mul151.i, 2504
  %add460.i = add i32 %add458.i, %244
  tail call void %240(ptr noundef %adev, i32 noundef %add460.i, i32 noundef %or.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v9_4_init_system_aperture_regs.exit

cond.false461.i:                                  ; preds = %land.lhs.true443.i.cond.false461.i_crit_edge, %land.lhs.true438.i.cond.false461.i_crit_edge, %cond.end431.i.cond.false461.i_crit_edge
  %245 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx465.i = getelementptr i32, ptr %246, i32 1
  %247 = ptrtoint ptr %arrayidx465.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx465.i, align 4
  %add466.i = or i32 %mul151.i, 2504
  %add468.i = add i32 %add466.i, %248
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add468.i, i32 noundef %or.i, i32 noundef 0) #5
  br label %mmhub_v9_4_init_system_aperture_regs.exit

mmhub_v9_4_init_system_aperture_regs.exit:        ; preds = %cond.false461.i, %cond.true449.i, %cond.end103.i.mmhub_v9_4_init_system_aperture_regs.exit_crit_edge
  %249 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %virt.i, align 8
  %and.i53 = and i32 %250, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i54, label %mmhub_v9_4_init_system_aperture_regs.exit.cond.false.i73_crit_edge, label %land.lhs.true.i57

mmhub_v9_4_init_system_aperture_regs.exit.cond.false.i73_crit_edge: ; preds = %mmhub_v9_4_init_system_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i73

land.lhs.true.i57:                                ; preds = %mmhub_v9_4_init_system_aperture_regs.exit
  %251 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i56 = icmp eq ptr %252, null
  br i1 %tobool1.not.i56, label %land.lhs.true.i57.cond.false.i73_crit_edge, label %land.lhs.true2.i60

land.lhs.true.i57.cond.false.i73_crit_edge:       ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i73

land.lhs.true2.i60:                               ; preds = %land.lhs.true.i57
  %sriov_rreg.i58 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %252, i32 0, i32 13
  %253 = ptrtoint ptr %sriov_rreg.i58 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %sriov_rreg.i58, align 4
  %tobool6.not.i59 = icmp eq ptr %254, null
  br i1 %tobool6.not.i59, label %land.lhs.true2.i60.cond.false.i73_crit_edge, label %cond.true.i67

land.lhs.true2.i60.cond.false.i73_crit_edge:      ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i73

cond.true.i67:                                    ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #7
  %255 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx12.i62 = getelementptr i32, ptr %256, i32 1
  %257 = ptrtoint ptr %arrayidx12.i62 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx12.i62, align 4
  %mul.i63 = mul nuw nsw i32 %i.0277, 12288
  %add.i64 = or i32 %mul.i63, 2823
  %add13.i65 = add i32 %add.i64, %258
  %call.i66 = tail call i32 %254(ptr noundef %adev, i32 noundef %add13.i65, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i74

cond.false.i73:                                   ; preds = %land.lhs.true2.i60.cond.false.i73_crit_edge, %land.lhs.true.i57.cond.false.i73_crit_edge, %mmhub_v9_4_init_system_aperture_regs.exit.cond.false.i73_crit_edge
  %259 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx17.i69 = getelementptr i32, ptr %260, i32 1
  %261 = ptrtoint ptr %arrayidx17.i69 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx17.i69, align 4
  %mul19.i70 = mul nuw nsw i32 %i.0277, 12288
  %add18.i71 = or i32 %mul19.i70, 2823
  %add20.i72 = add i32 %add18.i71, %262
  %call21.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20.i72, i32 noundef 0) #5
  br label %cond.end.i74

cond.end.i74:                                     ; preds = %cond.false.i73, %cond.true.i67
  %cond.i = phi i32 [ %call.i66, %cond.true.i67 ], [ %call21.i, %cond.false.i73 ]
  %or26.i = and i32 %cond.i, -14458
  %or32.i = or i32 %or26.i, 14425
  %263 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %virt.i, align 8
  %and35.i = and i32 %264, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %cond.end.i74.cond.false59.i_crit_edge, label %land.lhs.true37.i

cond.end.i74.cond.false59.i_crit_edge:            ; preds = %cond.end.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false59.i

land.lhs.true37.i:                                ; preds = %cond.end.i74
  %265 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %funcs.i, align 4
  %tobool41.not.i = icmp eq ptr %266, null
  br i1 %tobool41.not.i, label %land.lhs.true37.i.cond.false59.i_crit_edge, label %land.lhs.true42.i

land.lhs.true37.i.cond.false59.i_crit_edge:       ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false59.i

land.lhs.true42.i:                                ; preds = %land.lhs.true37.i
  %sriov_wreg.i75 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %266, i32 0, i32 12
  %267 = ptrtoint ptr %sriov_wreg.i75 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %sriov_wreg.i75, align 4
  %tobool46.not.i = icmp eq ptr %268, null
  br i1 %tobool46.not.i, label %land.lhs.true42.i.cond.false59.i_crit_edge, label %cond.true47.i

land.lhs.true42.i.cond.false59.i_crit_edge:       ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false59.i

cond.true47.i:                                    ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #7
  %269 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx55.i = getelementptr i32, ptr %270, i32 1
  %271 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx55.i, align 4
  %mul57.i = mul nuw nsw i32 %i.0277, 12288
  %add56.i = or i32 %mul57.i, 2823
  %add58.i = add i32 %add56.i, %272
  tail call void %268(ptr noundef %adev, i32 noundef %add58.i, i32 noundef %or32.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v9_4_init_tlb_regs.exit

cond.false59.i:                                   ; preds = %land.lhs.true42.i.cond.false59.i_crit_edge, %land.lhs.true37.i.cond.false59.i_crit_edge, %cond.end.i74.cond.false59.i_crit_edge
  %273 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx63.i = getelementptr i32, ptr %274, i32 1
  %275 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx63.i, align 4
  %mul65.i = mul nuw nsw i32 %i.0277, 12288
  %add64.i = or i32 %mul65.i, 2823
  %add66.i = add i32 %add64.i, %276
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add66.i, i32 noundef %or32.i, i32 noundef 0) #5
  br label %mmhub_v9_4_init_tlb_regs.exit

mmhub_v9_4_init_tlb_regs.exit:                    ; preds = %cond.false59.i, %cond.true47.i
  %277 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %virt.i, align 8
  %and = and i32 %278, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end.i102, label %mmhub_v9_4_init_tlb_regs.exit.if.end_crit_edge

mmhub_v9_4_init_tlb_regs.exit.if.end_crit_edge:   ; preds = %mmhub_v9_4_init_tlb_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end.i102:                                    ; preds = %mmhub_v9_4_init_tlb_regs.exit
  %279 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx17.i93 = getelementptr i32, ptr %280, i32 1
  %281 = ptrtoint ptr %arrayidx17.i93 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx17.i93, align 4
  %mul19.i94 = mul nuw nsw i32 %i.0277, 12288
  %add18.i95 = or i32 %mul19.i94, 2496
  %add20.i96 = add i32 %add18.i95, %282
  %call21.i97 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20.i96, i32 noundef 0) #5
  %or24.i = and i32 %call21.i97, -66846980
  %or30.i = or i32 %or24.i, 524291
  %283 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %virt.i, align 8
  %and35.i100 = and i32 %284, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i100)
  %tobool36.not.i101 = icmp eq i32 %and35.i100, 0
  br i1 %tobool36.not.i101, label %cond.end.i102.cond.false59.i120_crit_edge, label %land.lhs.true37.i105

cond.end.i102.cond.false59.i120_crit_edge:        ; preds = %cond.end.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false59.i120

land.lhs.true37.i105:                             ; preds = %cond.end.i102
  %285 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %funcs.i, align 4
  %tobool41.not.i104 = icmp eq ptr %286, null
  br i1 %tobool41.not.i104, label %land.lhs.true37.i105.cond.false59.i120_crit_edge, label %land.lhs.true42.i108

land.lhs.true37.i105.cond.false59.i120_crit_edge: ; preds = %land.lhs.true37.i105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false59.i120

land.lhs.true42.i108:                             ; preds = %land.lhs.true37.i105
  %sriov_wreg.i106 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %286, i32 0, i32 12
  %287 = ptrtoint ptr %sriov_wreg.i106 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %sriov_wreg.i106, align 4
  %tobool46.not.i107 = icmp eq ptr %288, null
  br i1 %tobool46.not.i107, label %land.lhs.true42.i108.cond.false59.i120_crit_edge, label %cond.true47.i114

land.lhs.true42.i108.cond.false59.i120_crit_edge: ; preds = %land.lhs.true42.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false59.i120

cond.true47.i114:                                 ; preds = %land.lhs.true42.i108
  call void @__sanitizer_cov_trace_pc() #7
  %289 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx55.i110 = getelementptr i32, ptr %290, i32 1
  %291 = ptrtoint ptr %arrayidx55.i110 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %arrayidx55.i110, align 4
  %add58.i113 = add i32 %add18.i95, %292
  tail call void %288(ptr noundef %adev, i32 noundef %add58.i113, i32 noundef %or30.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end67.i

cond.false59.i120:                                ; preds = %land.lhs.true42.i108.cond.false59.i120_crit_edge, %land.lhs.true37.i105.cond.false59.i120_crit_edge, %cond.end.i102.cond.false59.i120_crit_edge
  %293 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx63.i116 = getelementptr i32, ptr %294, i32 1
  %295 = ptrtoint ptr %arrayidx63.i116 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx63.i116, align 4
  %add66.i119 = add i32 %add18.i95, %296
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add66.i119, i32 noundef %or30.i, i32 noundef 0) #5
  br label %cond.end67.i

cond.end67.i:                                     ; preds = %cond.false59.i120, %cond.true47.i114
  %297 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %virt.i, align 8
  %and70.i = and i32 %298, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %cond.end67.i.cond.false96.i_crit_edge, label %land.lhs.true72.i

cond.end67.i.cond.false96.i_crit_edge:            ; preds = %cond.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false96.i

land.lhs.true72.i:                                ; preds = %cond.end67.i
  %299 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %funcs.i, align 4
  %tobool76.not.i = icmp eq ptr %300, null
  br i1 %tobool76.not.i, label %land.lhs.true72.i.cond.false96.i_crit_edge, label %land.lhs.true77.i

land.lhs.true72.i.cond.false96.i_crit_edge:       ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false96.i

land.lhs.true77.i:                                ; preds = %land.lhs.true72.i
  %sriov_rreg81.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %300, i32 0, i32 13
  %301 = ptrtoint ptr %sriov_rreg81.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %sriov_rreg81.i, align 4
  %tobool82.not.i = icmp eq ptr %302, null
  br i1 %tobool82.not.i, label %land.lhs.true77.i.cond.false96.i_crit_edge, label %cond.true83.i

land.lhs.true77.i.cond.false96.i_crit_edge:       ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false96.i

cond.true83.i:                                    ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #7
  %303 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx91.i = getelementptr i32, ptr %304, i32 1
  %305 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx91.i, align 4
  %add92.i = or i32 %mul19.i94, 2497
  %add94.i = add i32 %add92.i, %306
  %call95.i = tail call i32 %302(ptr noundef %adev, i32 noundef %add94.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end105.i

cond.false96.i:                                   ; preds = %land.lhs.true77.i.cond.false96.i_crit_edge, %land.lhs.true72.i.cond.false96.i_crit_edge, %cond.end67.i.cond.false96.i_crit_edge
  %307 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx100.i = getelementptr i32, ptr %308, i32 1
  %309 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx100.i, align 4
  %add101.i = or i32 %mul19.i94, 2497
  %add103.i = add i32 %add101.i, %310
  %call104.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add103.i, i32 noundef 0) #5
  br label %cond.end105.i

cond.end105.i:                                    ; preds = %cond.false96.i, %cond.true83.i
  %cond106.i = phi i32 [ %call95.i, %cond.true83.i ], [ %call104.i, %cond.false96.i ]
  %or110.i = or i32 %cond106.i, 3
  %311 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %virt.i, align 8
  %and113.i = and i32 %312, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %cond.end105.i.cond.false138.i_crit_edge, label %land.lhs.true115.i

cond.end105.i.cond.false138.i_crit_edge:          ; preds = %cond.end105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false138.i

land.lhs.true115.i:                               ; preds = %cond.end105.i
  %313 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %funcs.i, align 4
  %tobool119.not.i = icmp eq ptr %314, null
  br i1 %tobool119.not.i, label %land.lhs.true115.i.cond.false138.i_crit_edge, label %land.lhs.true120.i

land.lhs.true115.i.cond.false138.i_crit_edge:     ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false138.i

land.lhs.true120.i:                               ; preds = %land.lhs.true115.i
  %sriov_wreg124.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %314, i32 0, i32 12
  %315 = ptrtoint ptr %sriov_wreg124.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %sriov_wreg124.i, align 4
  %tobool125.not.i = icmp eq ptr %316, null
  br i1 %tobool125.not.i, label %land.lhs.true120.i.cond.false138.i_crit_edge, label %cond.true126.i

land.lhs.true120.i.cond.false138.i_crit_edge:     ; preds = %land.lhs.true120.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false138.i

cond.true126.i:                                   ; preds = %land.lhs.true120.i
  call void @__sanitizer_cov_trace_pc() #7
  %317 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx134.i = getelementptr i32, ptr %318, i32 1
  %319 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %arrayidx134.i, align 4
  %add135.i = or i32 %mul19.i94, 2497
  %add137.i = add i32 %add135.i, %320
  tail call void %316(ptr noundef %adev, i32 noundef %add137.i, i32 noundef %or110.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end146.i

cond.false138.i:                                  ; preds = %land.lhs.true120.i.cond.false138.i_crit_edge, %land.lhs.true115.i.cond.false138.i_crit_edge, %cond.end105.i.cond.false138.i_crit_edge
  %321 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx142.i = getelementptr i32, ptr %322, i32 1
  %323 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %arrayidx142.i, align 4
  %add143.i = or i32 %mul19.i94, 2497
  %add145.i = add i32 %add143.i, %324
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add145.i, i32 noundef %or110.i, i32 noundef 0) #5
  br label %cond.end146.i

cond.end146.i:                                    ; preds = %cond.false138.i, %cond.true126.i
  %325 = ptrtoint ptr %translate_further.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %translate_further.i, align 4, !range !341
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %326)
  %tobool147.not.i = icmp eq i8 %326, 0
  %..i = select i1 %tobool147.not.i, i32 -2146238455, i32 -2146140148
  %327 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %virt.i, align 8
  %and158.i = and i32 %328, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158.i)
  %tobool159.not.i = icmp eq i32 %and158.i, 0
  br i1 %tobool159.not.i, label %cond.end146.i.cond.false183.i_crit_edge, label %land.lhs.true160.i

cond.end146.i.cond.false183.i_crit_edge:          ; preds = %cond.end146.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false183.i

land.lhs.true160.i:                               ; preds = %cond.end146.i
  %329 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %funcs.i, align 4
  %tobool164.not.i = icmp eq ptr %330, null
  br i1 %tobool164.not.i, label %land.lhs.true160.i.cond.false183.i_crit_edge, label %land.lhs.true165.i

land.lhs.true160.i.cond.false183.i_crit_edge:     ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false183.i

land.lhs.true165.i:                               ; preds = %land.lhs.true160.i
  %sriov_wreg169.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %330, i32 0, i32 12
  %331 = ptrtoint ptr %sriov_wreg169.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %sriov_wreg169.i, align 4
  %tobool170.not.i = icmp eq ptr %332, null
  br i1 %tobool170.not.i, label %land.lhs.true165.i.cond.false183.i_crit_edge, label %cond.true171.i

land.lhs.true165.i.cond.false183.i_crit_edge:     ; preds = %land.lhs.true165.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false183.i

cond.true171.i:                                   ; preds = %land.lhs.true165.i
  call void @__sanitizer_cov_trace_pc() #7
  %333 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx179.i = getelementptr i32, ptr %334, i32 1
  %335 = ptrtoint ptr %arrayidx179.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx179.i, align 4
  %add180.i = or i32 %mul19.i94, 2498
  %add182.i = add i32 %add180.i, %336
  tail call void %332(ptr noundef %adev, i32 noundef %add182.i, i32 noundef %..i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end191.i

cond.false183.i:                                  ; preds = %land.lhs.true165.i.cond.false183.i_crit_edge, %land.lhs.true160.i.cond.false183.i_crit_edge, %cond.end146.i.cond.false183.i_crit_edge
  %337 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx187.i = getelementptr i32, ptr %338, i32 1
  %339 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %arrayidx187.i, align 4
  %add188.i = or i32 %mul19.i94, 2498
  %add190.i = add i32 %add188.i, %340
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add190.i, i32 noundef %..i, i32 noundef 0) #5
  br label %cond.end191.i

cond.end191.i:                                    ; preds = %cond.false183.i, %cond.true171.i
  %341 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %virt.i, align 8
  %and198.i = and i32 %342, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198.i)
  %tobool199.not.i = icmp eq i32 %and198.i, 0
  br i1 %tobool199.not.i, label %cond.end191.i.cond.false223.i_crit_edge, label %land.lhs.true200.i

cond.end191.i.cond.false223.i_crit_edge:          ; preds = %cond.end191.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false223.i

land.lhs.true200.i:                               ; preds = %cond.end191.i
  %343 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %funcs.i, align 4
  %tobool204.not.i = icmp eq ptr %344, null
  br i1 %tobool204.not.i, label %land.lhs.true200.i.cond.false223.i_crit_edge, label %land.lhs.true205.i

land.lhs.true200.i.cond.false223.i_crit_edge:     ; preds = %land.lhs.true200.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false223.i

land.lhs.true205.i:                               ; preds = %land.lhs.true200.i
  %sriov_wreg209.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %344, i32 0, i32 12
  %345 = ptrtoint ptr %sriov_wreg209.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %sriov_wreg209.i, align 4
  %tobool210.not.i = icmp eq ptr %346, null
  br i1 %tobool210.not.i, label %land.lhs.true205.i.cond.false223.i_crit_edge, label %cond.true211.i

land.lhs.true205.i.cond.false223.i_crit_edge:     ; preds = %land.lhs.true205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false223.i

cond.true211.i:                                   ; preds = %land.lhs.true205.i
  call void @__sanitizer_cov_trace_pc() #7
  %347 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx219.i = getelementptr i32, ptr %348, i32 1
  %349 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx219.i, align 4
  %add220.i = or i32 %mul19.i94, 2519
  %add222.i = add i32 %add220.i, %350
  tail call void %346(ptr noundef %adev, i32 noundef %add222.i, i32 noundef 1, i32 noundef 0, i32 noundef 11) #5
  br label %if.end

cond.false223.i:                                  ; preds = %land.lhs.true205.i.cond.false223.i_crit_edge, %land.lhs.true200.i.cond.false223.i_crit_edge, %cond.end191.i.cond.false223.i_crit_edge
  %351 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx227.i = getelementptr i32, ptr %352, i32 1
  %353 = ptrtoint ptr %arrayidx227.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %arrayidx227.i, align 4
  %add228.i = or i32 %mul19.i94, 2519
  %add230.i = add i32 %add228.i, %354
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add230.i, i32 noundef 1, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %cond.false223.i, %cond.true211.i, %mmhub_v9_4_init_tlb_regs.exit.if.end_crit_edge
  %355 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %virt.i, align 8
  %and.i123 = and i32 %356, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123)
  %tobool.not.i124 = icmp eq i32 %and.i123, 0
  br i1 %tobool.not.i124, label %if.end.cond.false.i144_crit_edge, label %land.lhs.true.i127

if.end.cond.false.i144_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i144

land.lhs.true.i127:                               ; preds = %if.end
  %357 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i126 = icmp eq ptr %358, null
  br i1 %tobool1.not.i126, label %land.lhs.true.i127.cond.false.i144_crit_edge, label %land.lhs.true2.i130

land.lhs.true.i127.cond.false.i144_crit_edge:     ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i144

land.lhs.true2.i130:                              ; preds = %land.lhs.true.i127
  %sriov_rreg.i128 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %358, i32 0, i32 13
  %359 = ptrtoint ptr %sriov_rreg.i128 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %sriov_rreg.i128, align 4
  %tobool6.not.i129 = icmp eq ptr %360, null
  br i1 %tobool6.not.i129, label %land.lhs.true2.i130.cond.false.i144_crit_edge, label %cond.true.i137

land.lhs.true2.i130.cond.false.i144_crit_edge:    ; preds = %land.lhs.true2.i130
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i144

cond.true.i137:                                   ; preds = %land.lhs.true2.i130
  call void @__sanitizer_cov_trace_pc() #7
  %361 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx12.i132 = getelementptr i32, ptr %362, i32 1
  %363 = ptrtoint ptr %arrayidx12.i132 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %arrayidx12.i132, align 4
  %mul.i133 = mul nuw nsw i32 %i.0277, 12288
  %add.i134 = or i32 %mul.i133, 2560
  %add13.i135 = add i32 %add.i134, %364
  %call.i136 = tail call i32 %360(ptr noundef %adev, i32 noundef %add13.i135, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i148

cond.false.i144:                                  ; preds = %land.lhs.true2.i130.cond.false.i144_crit_edge, %land.lhs.true.i127.cond.false.i144_crit_edge, %if.end.cond.false.i144_crit_edge
  %365 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx17.i139 = getelementptr i32, ptr %366, i32 1
  %367 = ptrtoint ptr %arrayidx17.i139 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx17.i139, align 4
  %mul19.i140 = mul nuw nsw i32 %i.0277, 12288
  %add18.i141 = or i32 %mul19.i140, 2560
  %add20.i142 = add i32 %add18.i141, %368
  %call21.i143 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20.i142, i32 noundef 0) #5
  br label %cond.end.i148

cond.end.i148:                                    ; preds = %cond.false.i144, %cond.true.i137
  %cond.i145 = phi i32 [ %call.i136, %cond.true.i137 ], [ %call21.i143, %cond.false.i144 ]
  %or.i146 = and i32 %cond.i145, -136
  %and23.i147 = or i32 %or.i146, 1
  %369 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %virt.i, align 8
  %and29.i = and i32 %370, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %cond.end.i148.cond.false53.i_crit_edge, label %land.lhs.true31.i

cond.end.i148.cond.false53.i_crit_edge:           ; preds = %cond.end.i148
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false53.i

land.lhs.true31.i:                                ; preds = %cond.end.i148
  %371 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %funcs.i, align 4
  %tobool35.not.i149 = icmp eq ptr %372, null
  br i1 %tobool35.not.i149, label %land.lhs.true31.i.cond.false53.i_crit_edge, label %land.lhs.true36.i

land.lhs.true31.i.cond.false53.i_crit_edge:       ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false53.i

land.lhs.true36.i:                                ; preds = %land.lhs.true31.i
  %sriov_wreg.i150 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %372, i32 0, i32 12
  %373 = ptrtoint ptr %sriov_wreg.i150 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %sriov_wreg.i150, align 4
  %tobool40.not.i = icmp eq ptr %374, null
  br i1 %tobool40.not.i, label %land.lhs.true36.i.cond.false53.i_crit_edge, label %cond.true41.i

land.lhs.true36.i.cond.false53.i_crit_edge:       ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false53.i

cond.true41.i:                                    ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #7
  %375 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx49.i = getelementptr i32, ptr %376, i32 1
  %377 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %arrayidx49.i, align 4
  %mul51.i = mul nuw nsw i32 %i.0277, 12288
  %add50.i = or i32 %mul51.i, 2560
  %add52.i = add i32 %add50.i, %378
  tail call void %374(ptr noundef %adev, i32 noundef %add52.i, i32 noundef %and23.i147, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v9_4_enable_system_domain.exit

cond.false53.i:                                   ; preds = %land.lhs.true36.i.cond.false53.i_crit_edge, %land.lhs.true31.i.cond.false53.i_crit_edge, %cond.end.i148.cond.false53.i_crit_edge
  %379 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx57.i = getelementptr i32, ptr %380, i32 1
  %381 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %arrayidx57.i, align 4
  %mul59.i = mul nuw nsw i32 %i.0277, 12288
  %add58.i152 = or i32 %mul59.i, 2560
  %add60.i = add i32 %add58.i152, %382
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add60.i, i32 noundef %and23.i147, i32 noundef 0) #5
  br label %mmhub_v9_4_enable_system_domain.exit

mmhub_v9_4_enable_system_domain.exit:             ; preds = %cond.false53.i, %cond.true41.i
  %383 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %virt.i, align 8
  %and3 = and i32 %384, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %cond.end.i176, label %mmhub_v9_4_enable_system_domain.exit.if.end6_crit_edge

mmhub_v9_4_enable_system_domain.exit.if.end6_crit_edge: ; preds = %mmhub_v9_4_enable_system_domain.exit
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = mul nuw nsw i32 %i.0277, 12288
  br label %if.end6

cond.end.i176:                                    ; preds = %mmhub_v9_4_enable_system_domain.exit
  %385 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx17.i169 = getelementptr i32, ptr %386, i32 1
  %387 = ptrtoint ptr %arrayidx17.i169 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %arrayidx17.i169, align 4
  %mul19.i170 = mul nuw nsw i32 %i.0277, 12288
  %add18.i171 = or i32 %mul19.i170, 2513
  %add20.i172 = add i32 %add18.i171, %388
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add20.i172, i32 noundef -1, i32 noundef 0) #5
  %389 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %virt.i, align 8
  %and23.i174 = and i32 %390, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i174)
  %tobool24.not.i175 = icmp eq i32 %and23.i174, 0
  br i1 %tobool24.not.i175, label %cond.end.i176.cond.false48.i194_crit_edge, label %land.lhs.true25.i179

cond.end.i176.cond.false48.i194_crit_edge:        ; preds = %cond.end.i176
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48.i194

land.lhs.true25.i179:                             ; preds = %cond.end.i176
  %391 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %funcs.i, align 4
  %tobool29.not.i178 = icmp eq ptr %392, null
  br i1 %tobool29.not.i178, label %land.lhs.true25.i179.cond.false48.i194_crit_edge, label %land.lhs.true30.i182

land.lhs.true25.i179.cond.false48.i194_crit_edge: ; preds = %land.lhs.true25.i179
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48.i194

land.lhs.true30.i182:                             ; preds = %land.lhs.true25.i179
  %sriov_wreg34.i180 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %392, i32 0, i32 12
  %393 = ptrtoint ptr %sriov_wreg34.i180 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %sriov_wreg34.i180, align 4
  %tobool35.not.i181 = icmp eq ptr %394, null
  br i1 %tobool35.not.i181, label %land.lhs.true30.i182.cond.false48.i194_crit_edge, label %cond.true36.i188

land.lhs.true30.i182.cond.false48.i194_crit_edge: ; preds = %land.lhs.true30.i182
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48.i194

cond.true36.i188:                                 ; preds = %land.lhs.true30.i182
  call void @__sanitizer_cov_trace_pc() #7
  %395 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx44.i184 = getelementptr i32, ptr %396, i32 1
  %397 = ptrtoint ptr %arrayidx44.i184 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %arrayidx44.i184, align 4
  %add45.i186 = or i32 %mul19.i170, 2514
  %add47.i187 = add i32 %add45.i186, %398
  tail call void %394(ptr noundef %adev, i32 noundef %add47.i187, i32 noundef 15, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end56.i

cond.false48.i194:                                ; preds = %land.lhs.true30.i182.cond.false48.i194_crit_edge, %land.lhs.true25.i179.cond.false48.i194_crit_edge, %cond.end.i176.cond.false48.i194_crit_edge
  %399 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx52.i190 = getelementptr i32, ptr %400, i32 1
  %401 = ptrtoint ptr %arrayidx52.i190 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %arrayidx52.i190, align 4
  %add53.i192 = or i32 %mul19.i170, 2514
  %add55.i193 = add i32 %add53.i192, %402
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add55.i193, i32 noundef 15, i32 noundef 0) #5
  br label %cond.end56.i

cond.end56.i:                                     ; preds = %cond.false48.i194, %cond.true36.i188
  %403 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %virt.i, align 8
  %and59.i = and i32 %404, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %cond.end56.i.cond.false84.i_crit_edge, label %land.lhs.true61.i

cond.end56.i.cond.false84.i_crit_edge:            ; preds = %cond.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false84.i

land.lhs.true61.i:                                ; preds = %cond.end56.i
  %405 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %funcs.i, align 4
  %tobool65.not.i = icmp eq ptr %406, null
  br i1 %tobool65.not.i, label %land.lhs.true61.i.cond.false84.i_crit_edge, label %land.lhs.true66.i

land.lhs.true61.i.cond.false84.i_crit_edge:       ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false84.i

land.lhs.true66.i:                                ; preds = %land.lhs.true61.i
  %sriov_wreg70.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %406, i32 0, i32 12
  %407 = ptrtoint ptr %sriov_wreg70.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %sriov_wreg70.i, align 4
  %tobool71.not.i195 = icmp eq ptr %408, null
  br i1 %tobool71.not.i195, label %land.lhs.true66.i.cond.false84.i_crit_edge, label %cond.true72.i

land.lhs.true66.i.cond.false84.i_crit_edge:       ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false84.i

cond.true72.i:                                    ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #7
  %409 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx80.i = getelementptr i32, ptr %410, i32 1
  %411 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %arrayidx80.i, align 4
  %add81.i = or i32 %mul19.i170, 2515
  %add83.i = add i32 %add81.i, %412
  tail call void %408(ptr noundef %adev, i32 noundef %add83.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end92.i

cond.false84.i:                                   ; preds = %land.lhs.true66.i.cond.false84.i_crit_edge, %land.lhs.true61.i.cond.false84.i_crit_edge, %cond.end56.i.cond.false84.i_crit_edge
  %413 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx88.i = getelementptr i32, ptr %414, i32 1
  %415 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %arrayidx88.i, align 4
  %add89.i = or i32 %mul19.i170, 2515
  %add91.i = add i32 %add89.i, %416
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add91.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end92.i

cond.end92.i:                                     ; preds = %cond.false84.i, %cond.true72.i
  %417 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %virt.i, align 8
  %and95.i = and i32 %418, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %cond.end92.i.cond.false120.i_crit_edge, label %land.lhs.true97.i

cond.end92.i.cond.false120.i_crit_edge:           ; preds = %cond.end92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false120.i

land.lhs.true97.i:                                ; preds = %cond.end92.i
  %419 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %funcs.i, align 4
  %tobool101.not.i = icmp eq ptr %420, null
  br i1 %tobool101.not.i, label %land.lhs.true97.i.cond.false120.i_crit_edge, label %land.lhs.true102.i

land.lhs.true97.i.cond.false120.i_crit_edge:      ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false120.i

land.lhs.true102.i:                               ; preds = %land.lhs.true97.i
  %sriov_wreg106.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %420, i32 0, i32 12
  %421 = ptrtoint ptr %sriov_wreg106.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %sriov_wreg106.i, align 4
  %tobool107.not.i196 = icmp eq ptr %422, null
  br i1 %tobool107.not.i196, label %land.lhs.true102.i.cond.false120.i_crit_edge, label %cond.true108.i

land.lhs.true102.i.cond.false120.i_crit_edge:     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false120.i

cond.true108.i:                                   ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #7
  %423 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx116.i = getelementptr i32, ptr %424, i32 1
  %425 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %arrayidx116.i, align 4
  %add117.i = or i32 %mul19.i170, 2516
  %add119.i = add i32 %add117.i, %426
  tail call void %422(ptr noundef %adev, i32 noundef %add119.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end128.i

cond.false120.i:                                  ; preds = %land.lhs.true102.i.cond.false120.i_crit_edge, %land.lhs.true97.i.cond.false120.i_crit_edge, %cond.end92.i.cond.false120.i_crit_edge
  %427 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx124.i = getelementptr i32, ptr %428, i32 1
  %429 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %arrayidx124.i, align 4
  %add125.i = or i32 %mul19.i170, 2516
  %add127.i = add i32 %add125.i, %430
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add127.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end128.i

cond.end128.i:                                    ; preds = %cond.false120.i, %cond.true108.i
  %431 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %virt.i, align 8
  %and131.i = and i32 %432, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  br i1 %tobool132.not.i, label %cond.end128.i.cond.false156.i_crit_edge, label %land.lhs.true133.i

cond.end128.i.cond.false156.i_crit_edge:          ; preds = %cond.end128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false156.i

land.lhs.true133.i:                               ; preds = %cond.end128.i
  %433 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %funcs.i, align 4
  %tobool137.not.i = icmp eq ptr %434, null
  br i1 %tobool137.not.i, label %land.lhs.true133.i.cond.false156.i_crit_edge, label %land.lhs.true138.i

land.lhs.true133.i.cond.false156.i_crit_edge:     ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false156.i

land.lhs.true138.i:                               ; preds = %land.lhs.true133.i
  %sriov_wreg142.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %434, i32 0, i32 12
  %435 = ptrtoint ptr %sriov_wreg142.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %sriov_wreg142.i, align 4
  %tobool143.not.i = icmp eq ptr %436, null
  br i1 %tobool143.not.i, label %land.lhs.true138.i.cond.false156.i_crit_edge, label %cond.true144.i

land.lhs.true138.i.cond.false156.i_crit_edge:     ; preds = %land.lhs.true138.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false156.i

cond.true144.i:                                   ; preds = %land.lhs.true138.i
  call void @__sanitizer_cov_trace_pc() #7
  %437 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx152.i = getelementptr i32, ptr %438, i32 1
  %439 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %arrayidx152.i, align 4
  %add153.i = or i32 %mul19.i170, 2517
  %add155.i = add i32 %add153.i, %440
  tail call void %436(ptr noundef %adev, i32 noundef %add155.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end164.i

cond.false156.i:                                  ; preds = %land.lhs.true138.i.cond.false156.i_crit_edge, %land.lhs.true133.i.cond.false156.i_crit_edge, %cond.end128.i.cond.false156.i_crit_edge
  %441 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx160.i = getelementptr i32, ptr %442, i32 1
  %443 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %arrayidx160.i, align 4
  %add161.i = or i32 %mul19.i170, 2517
  %add163.i = add i32 %add161.i, %444
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add163.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end164.i

cond.end164.i:                                    ; preds = %cond.false156.i, %cond.true144.i
  %445 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %virt.i, align 8
  %and167.i = and i32 %446, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i)
  %tobool168.not.i = icmp eq i32 %and167.i, 0
  br i1 %tobool168.not.i, label %cond.end164.i.cond.false192.i_crit_edge, label %land.lhs.true169.i

cond.end164.i.cond.false192.i_crit_edge:          ; preds = %cond.end164.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false192.i

land.lhs.true169.i:                               ; preds = %cond.end164.i
  %447 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %funcs.i, align 4
  %tobool173.not.i = icmp eq ptr %448, null
  br i1 %tobool173.not.i, label %land.lhs.true169.i.cond.false192.i_crit_edge, label %land.lhs.true174.i

land.lhs.true169.i.cond.false192.i_crit_edge:     ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false192.i

land.lhs.true174.i:                               ; preds = %land.lhs.true169.i
  %sriov_wreg178.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %448, i32 0, i32 12
  %449 = ptrtoint ptr %sriov_wreg178.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %sriov_wreg178.i, align 4
  %tobool179.not.i = icmp eq ptr %450, null
  br i1 %tobool179.not.i, label %land.lhs.true174.i.cond.false192.i_crit_edge, label %cond.true180.i

land.lhs.true174.i.cond.false192.i_crit_edge:     ; preds = %land.lhs.true174.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false192.i

cond.true180.i:                                   ; preds = %land.lhs.true174.i
  call void @__sanitizer_cov_trace_pc() #7
  %451 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx188.i = getelementptr i32, ptr %452, i32 1
  %453 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %arrayidx188.i, align 4
  %add189.i = or i32 %mul19.i170, 2518
  %add191.i = add i32 %add189.i, %454
  tail call void %450(ptr noundef %adev, i32 noundef %add191.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %if.end6

cond.false192.i:                                  ; preds = %land.lhs.true174.i.cond.false192.i_crit_edge, %land.lhs.true169.i.cond.false192.i_crit_edge, %cond.end164.i.cond.false192.i_crit_edge
  %455 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx196.i = getelementptr i32, ptr %456, i32 1
  %457 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %arrayidx196.i, align 4
  %add197.i = or i32 %mul19.i170, 2518
  %add199.i = add i32 %add197.i, %458
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add199.i, i32 noundef 0, i32 noundef 0) #5
  br label %if.end6

if.end6:                                          ; preds = %cond.false192.i, %cond.true180.i, %mmhub_v9_4_enable_system_domain.exit.if.end6_crit_edge
  %mul.i199.pre-phi = phi i32 [ %.pre, %mmhub_v9_4_enable_system_domain.exit.if.end6_crit_edge ], [ %mul19.i170, %cond.false192.i ], [ %mul19.i170, %cond.true180.i ]
  %add76.i = or i32 %mul.i199.pre-phi, 2561
  %add117.i200 = or i32 %mul.i199.pre-phi, 2701
  %add158.i = or i32 %mul.i199.pre-phi, 2702
  %add200.i = or i32 %mul.i199.pre-phi, 2733
  %add250.i = or i32 %mul.i199.pre-phi, 2734
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6
  %i.0390.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %459 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %virt.i, align 8
  %and.i201 = and i32 %460, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201)
  %tobool.not.i202 = icmp eq i32 %and.i201, 0
  br i1 %tobool.not.i202, label %for.body.i.cond.false.i212_crit_edge, label %land.lhs.true.i204

for.body.i.cond.false.i212_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i212

land.lhs.true.i204:                               ; preds = %for.body.i
  %461 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i203 = icmp eq ptr %462, null
  br i1 %tobool1.not.i203, label %land.lhs.true.i204.cond.false.i212_crit_edge, label %land.lhs.true2.i207

land.lhs.true.i204.cond.false.i212_crit_edge:     ; preds = %land.lhs.true.i204
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i212

land.lhs.true2.i207:                              ; preds = %land.lhs.true.i204
  %sriov_rreg.i205 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %462, i32 0, i32 13
  %463 = ptrtoint ptr %sriov_rreg.i205 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %sriov_rreg.i205, align 4
  %tobool6.not.i206 = icmp eq ptr %464, null
  br i1 %tobool6.not.i206, label %land.lhs.true2.i207.cond.false.i212_crit_edge, label %cond.true.i210

land.lhs.true2.i207.cond.false.i212_crit_edge:    ; preds = %land.lhs.true2.i207
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i212

cond.true.i210:                                   ; preds = %land.lhs.true2.i207
  call void @__sanitizer_cov_trace_pc() #7
  %465 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %466, i32 1
  %467 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %arrayidx13.i, align 4
  %add14.i = add nuw nsw i32 %add76.i, %i.0390.i
  %add15.i = add i32 %add14.i, %468
  %call.i209 = tail call i32 %464(ptr noundef %adev, i32 noundef %add15.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i216

cond.false.i212:                                  ; preds = %land.lhs.true2.i207.cond.false.i212_crit_edge, %land.lhs.true.i204.cond.false.i212_crit_edge, %for.body.i.cond.false.i212_crit_edge
  %469 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %470, i32 1
  %471 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %arrayidx19.i, align 4
  %add22.i = add nuw nsw i32 %add76.i, %i.0390.i
  %add23.i = add i32 %add22.i, %472
  %call24.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add23.i, i32 noundef 0) #5
  br label %cond.end.i216

cond.end.i216:                                    ; preds = %cond.false.i212, %cond.true.i210
  %cond.i213 = phi i32 [ %call.i209, %cond.true.i210 ], [ %call24.i, %cond.false.i212 ]
  %or.i214 = and i32 %cond.i213, -5592320
  %473 = ptrtoint ptr %num_level.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %num_level.i, align 8
  %shl.i = shl i32 %474, 1
  %and27.i215 = and i32 %shl.i, 6
  %475 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %block_size.i, align 4
  %sub.i = shl i32 %476, 3
  %shl45.i = add i32 %sub.i, 56
  %and46.i = and i32 %shl45.i, 120
  %477 = ptrtoint ptr %noretry.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %noretry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %478)
  %tobool49.not.i = icmp eq i32 %478, 0
  %shl50.i = select i1 %tobool49.not.i, i32 128, i32 0
  %and26.i = or i32 %or.i214, %and27.i215
  %or42.i = or i32 %and26.i, %and46.i
  %or47.i = or i32 %or42.i, %shl50.i
  %or52.i = or i32 %or47.i, 5592065
  %479 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %virt.i, align 8
  %and55.i = and i32 %480, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %cond.end.i216.cond.false81.i_crit_edge, label %land.lhs.true57.i

cond.end.i216.cond.false81.i_crit_edge:           ; preds = %cond.end.i216
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false81.i

land.lhs.true57.i:                                ; preds = %cond.end.i216
  %481 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %funcs.i, align 4
  %tobool61.not.i = icmp eq ptr %482, null
  br i1 %tobool61.not.i, label %land.lhs.true57.i.cond.false81.i_crit_edge, label %land.lhs.true62.i

land.lhs.true57.i.cond.false81.i_crit_edge:       ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false81.i

land.lhs.true62.i:                                ; preds = %land.lhs.true57.i
  %sriov_wreg.i217 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %482, i32 0, i32 12
  %483 = ptrtoint ptr %sriov_wreg.i217 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %sriov_wreg.i217, align 4
  %tobool66.not.i = icmp eq ptr %484, null
  br i1 %tobool66.not.i, label %land.lhs.true62.i.cond.false81.i_crit_edge, label %cond.true67.i

land.lhs.true62.i.cond.false81.i_crit_edge:       ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false81.i

cond.true67.i:                                    ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #7
  %485 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx75.i = getelementptr i32, ptr %486, i32 1
  %487 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %arrayidx75.i, align 4
  %489 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %ctx_distance.i, align 4
  %mul79.i = mul i32 %490, %i.0390.i
  %add78.i = add i32 %488, %add76.i
  %add80.i = add i32 %add78.i, %mul79.i
  tail call void %484(ptr noundef %adev, i32 noundef %add80.i, i32 noundef %or52.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end92.i222

cond.false81.i:                                   ; preds = %land.lhs.true62.i.cond.false81.i_crit_edge, %land.lhs.true57.i.cond.false81.i_crit_edge, %cond.end.i216.cond.false81.i_crit_edge
  %491 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx85.i = getelementptr i32, ptr %492, i32 1
  %493 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %arrayidx85.i, align 4
  %495 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %ctx_distance.i, align 4
  %mul90.i218 = mul i32 %496, %i.0390.i
  %add88.i = add i32 %494, %add76.i
  %add91.i219 = add i32 %add88.i, %mul90.i218
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add91.i219, i32 noundef %or52.i, i32 noundef 0) #5
  br label %cond.end92.i222

cond.end92.i222:                                  ; preds = %cond.false81.i, %cond.true67.i
  %497 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %virt.i, align 8
  %and95.i220 = and i32 %498, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i220)
  %tobool96.not.i221 = icmp eq i32 %and95.i220, 0
  br i1 %tobool96.not.i221, label %cond.end92.i222.cond.false122.i_crit_edge, label %land.lhs.true97.i224

cond.end92.i222.cond.false122.i_crit_edge:        ; preds = %cond.end92.i222
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false122.i

land.lhs.true97.i224:                             ; preds = %cond.end92.i222
  %499 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %funcs.i, align 4
  %tobool101.not.i223 = icmp eq ptr %500, null
  br i1 %tobool101.not.i223, label %land.lhs.true97.i224.cond.false122.i_crit_edge, label %land.lhs.true102.i227

land.lhs.true97.i224.cond.false122.i_crit_edge:   ; preds = %land.lhs.true97.i224
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false122.i

land.lhs.true102.i227:                            ; preds = %land.lhs.true97.i224
  %sriov_wreg106.i225 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %500, i32 0, i32 12
  %501 = ptrtoint ptr %sriov_wreg106.i225 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %sriov_wreg106.i225, align 4
  %tobool107.not.i226 = icmp eq ptr %502, null
  br i1 %tobool107.not.i226, label %land.lhs.true102.i227.cond.false122.i_crit_edge, label %cond.true108.i230

land.lhs.true102.i227.cond.false122.i_crit_edge:  ; preds = %land.lhs.true102.i227
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false122.i

cond.true108.i230:                                ; preds = %land.lhs.true102.i227
  call void @__sanitizer_cov_trace_pc() #7
  %503 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx116.i228 = getelementptr i32, ptr %504, i32 1
  %505 = ptrtoint ptr %arrayidx116.i228 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %arrayidx116.i228, align 4
  %507 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul120.i = mul i32 %508, %i.0390.i
  %add119.i229 = add i32 %506, %add117.i200
  %add121.i = add i32 %add119.i229, %mul120.i
  tail call void %502(ptr noundef %adev, i32 noundef %add121.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end133.i

cond.false122.i:                                  ; preds = %land.lhs.true102.i227.cond.false122.i_crit_edge, %land.lhs.true97.i224.cond.false122.i_crit_edge, %cond.end92.i222.cond.false122.i_crit_edge
  %509 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx126.i = getelementptr i32, ptr %510, i32 1
  %511 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %arrayidx126.i, align 4
  %513 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul131.i = mul i32 %514, %i.0390.i
  %add129.i = add i32 %512, %add117.i200
  %add132.i = add i32 %add129.i, %mul131.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add132.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end133.i

cond.end133.i:                                    ; preds = %cond.false122.i, %cond.true108.i230
  %515 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %virt.i, align 8
  %and136.i = and i32 %516, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i231 = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i231, label %cond.end133.i.cond.false164.i_crit_edge, label %land.lhs.true138.i232

cond.end133.i.cond.false164.i_crit_edge:          ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false164.i

land.lhs.true138.i232:                            ; preds = %cond.end133.i
  %517 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %funcs.i, align 4
  %tobool142.not.i = icmp eq ptr %518, null
  br i1 %tobool142.not.i, label %land.lhs.true138.i232.cond.false164.i_crit_edge, label %land.lhs.true143.i

land.lhs.true138.i232.cond.false164.i_crit_edge:  ; preds = %land.lhs.true138.i232
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false164.i

land.lhs.true143.i:                               ; preds = %land.lhs.true138.i232
  %sriov_wreg147.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %518, i32 0, i32 12
  %519 = ptrtoint ptr %sriov_wreg147.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %sriov_wreg147.i, align 4
  %tobool148.not.i = icmp eq ptr %520, null
  br i1 %tobool148.not.i, label %land.lhs.true143.i.cond.false164.i_crit_edge, label %cond.true149.i

land.lhs.true143.i.cond.false164.i_crit_edge:     ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false164.i

cond.true149.i:                                   ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #7
  %521 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx157.i = getelementptr i32, ptr %522, i32 1
  %523 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %arrayidx157.i, align 4
  %525 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul162.i233 = mul i32 %526, %i.0390.i
  %add160.i = add i32 %524, %add158.i
  %add163.i234 = add i32 %add160.i, %mul162.i233
  tail call void %520(ptr noundef %adev, i32 noundef %add163.i234, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end175.i

cond.false164.i:                                  ; preds = %land.lhs.true143.i.cond.false164.i_crit_edge, %land.lhs.true138.i232.cond.false164.i_crit_edge, %cond.end133.i.cond.false164.i_crit_edge
  %527 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx168.i = getelementptr i32, ptr %528, i32 1
  %529 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %arrayidx168.i, align 4
  %531 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul173.i = mul i32 %532, %i.0390.i
  %add171.i = add i32 %530, %add158.i
  %add174.i = add i32 %add171.i, %mul173.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add174.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end175.i

cond.end175.i:                                    ; preds = %cond.false164.i, %cond.true149.i
  %533 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %virt.i, align 8
  %and178.i = and i32 %534, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178.i)
  %tobool179.not.i235 = icmp eq i32 %and178.i, 0
  br i1 %tobool179.not.i235, label %cond.end175.i.cond.false209.i_crit_edge, label %land.lhs.true180.i

cond.end175.i.cond.false209.i_crit_edge:          ; preds = %cond.end175.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false209.i

land.lhs.true180.i:                               ; preds = %cond.end175.i
  %535 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %funcs.i, align 4
  %tobool184.not.i = icmp eq ptr %536, null
  br i1 %tobool184.not.i, label %land.lhs.true180.i.cond.false209.i_crit_edge, label %land.lhs.true185.i

land.lhs.true180.i.cond.false209.i_crit_edge:     ; preds = %land.lhs.true180.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false209.i

land.lhs.true185.i:                               ; preds = %land.lhs.true180.i
  %sriov_wreg189.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %536, i32 0, i32 12
  %537 = ptrtoint ptr %sriov_wreg189.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %sriov_wreg189.i, align 4
  %tobool190.not.i = icmp eq ptr %538, null
  br i1 %tobool190.not.i, label %land.lhs.true185.i.cond.false209.i_crit_edge, label %cond.true191.i

land.lhs.true185.i.cond.false209.i_crit_edge:     ; preds = %land.lhs.true185.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false209.i

cond.true191.i:                                   ; preds = %land.lhs.true185.i
  call void @__sanitizer_cov_trace_pc() #7
  %539 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx199.i = getelementptr i32, ptr %540, i32 1
  %541 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %arrayidx199.i, align 4
  %543 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul204.i = mul i32 %544, %i.0390.i
  %add202.i = add i32 %542, %add200.i
  %add205.i = add i32 %add202.i, %mul204.i
  %545 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %545)
  %546 = load i64, ptr %max_pfn.i, align 8
  %547 = trunc i64 %546 to i32
  %conv.i236 = add i32 %547, -1
  tail call void %538(ptr noundef %adev, i32 noundef %add205.i, i32 noundef %conv.i236, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end225.i

cond.false209.i:                                  ; preds = %land.lhs.true185.i.cond.false209.i_crit_edge, %land.lhs.true180.i.cond.false209.i_crit_edge, %cond.end175.i.cond.false209.i_crit_edge
  %548 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx213.i = getelementptr i32, ptr %549, i32 1
  %550 = ptrtoint ptr %arrayidx213.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %arrayidx213.i, align 4
  %552 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul218.i = mul i32 %553, %i.0390.i
  %add216.i = add i32 %551, %add200.i
  %add219.i = add i32 %add216.i, %mul218.i
  %554 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %554)
  %555 = load i64, ptr %max_pfn.i, align 8
  %556 = trunc i64 %555 to i32
  %conv224.i = add i32 %556, -1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add219.i, i32 noundef %conv224.i, i32 noundef 0) #5
  br label %cond.end225.i

cond.end225.i:                                    ; preds = %cond.false209.i, %cond.true191.i
  %557 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %virt.i, align 8
  %and228.i = and i32 %558, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228.i)
  %tobool229.not.i = icmp eq i32 %and228.i, 0
  br i1 %tobool229.not.i, label %cond.end225.i.cond.false261.i242_crit_edge, label %land.lhs.true230.i

cond.end225.i.cond.false261.i242_crit_edge:       ; preds = %cond.end225.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false261.i242

land.lhs.true230.i:                               ; preds = %cond.end225.i
  %559 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %funcs.i, align 4
  %tobool234.not.i = icmp eq ptr %560, null
  br i1 %tobool234.not.i, label %land.lhs.true230.i.cond.false261.i242_crit_edge, label %land.lhs.true235.i

land.lhs.true230.i.cond.false261.i242_crit_edge:  ; preds = %land.lhs.true230.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false261.i242

land.lhs.true235.i:                               ; preds = %land.lhs.true230.i
  %sriov_wreg239.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %560, i32 0, i32 12
  %561 = ptrtoint ptr %sriov_wreg239.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %sriov_wreg239.i, align 4
  %tobool240.not.i237 = icmp eq ptr %562, null
  br i1 %tobool240.not.i237, label %land.lhs.true235.i.cond.false261.i242_crit_edge, label %cond.true241.i

land.lhs.true235.i.cond.false261.i242_crit_edge:  ; preds = %land.lhs.true235.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false261.i242

cond.true241.i:                                   ; preds = %land.lhs.true235.i
  call void @__sanitizer_cov_trace_pc() #7
  %563 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx249.i = getelementptr i32, ptr %564, i32 1
  %565 = ptrtoint ptr %arrayidx249.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %arrayidx249.i, align 4
  %567 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul254.i = mul i32 %568, %i.0390.i
  %add252.i = add i32 %566, %add250.i
  %add255.i = add i32 %add252.i, %mul254.i
  %569 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %569)
  %570 = load i64, ptr %max_pfn.i, align 8
  %sub258.i = add i64 %570, -1
  %shr.i238 = lshr i64 %sub258.i, 32
  %conv260.i239 = trunc i64 %shr.i238 to i32
  tail call void %562(ptr noundef %adev, i32 noundef %add255.i, i32 noundef %conv260.i239, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc.i

cond.false261.i242:                               ; preds = %land.lhs.true235.i.cond.false261.i242_crit_edge, %land.lhs.true230.i.cond.false261.i242_crit_edge, %cond.end225.i.cond.false261.i242_crit_edge
  %571 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx265.i240 = getelementptr i32, ptr %572, i32 1
  %573 = ptrtoint ptr %arrayidx265.i240 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %arrayidx265.i240, align 4
  %575 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul270.i = mul i32 %576, %i.0390.i
  %add268.i241 = add i32 %574, %add250.i
  %add271.i = add i32 %add268.i241, %mul270.i
  %577 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %577)
  %578 = load i64, ptr %max_pfn.i, align 8
  %sub274.i = add i64 %578, -1
  %shr275.i = lshr i64 %sub274.i, 32
  %conv277.i = trunc i64 %shr275.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add271.i, i32 noundef %conv277.i, i32 noundef 0) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false261.i242, %cond.true241.i
  %inc.i = add nuw nsw i32 %i.0390.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %mmhub_v9_4_setup_vmid_config.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

mmhub_v9_4_setup_vmid_config.exit:                ; preds = %for.inc.i
  %add.i247 = or i32 %mul.i199.pre-phi, 2631
  %add51.i248 = or i32 %mul.i199.pre-phi, 2632
  br label %for.body.i251

for.body.i251:                                    ; preds = %for.inc.i276.for.body.i251_crit_edge, %mmhub_v9_4_setup_vmid_config.exit
  %i.099.i = phi i32 [ 0, %mmhub_v9_4_setup_vmid_config.exit ], [ %inc.i274, %for.inc.i276.for.body.i251_crit_edge ]
  %579 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %virt.i, align 8
  %and.i249 = and i32 %580, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %tobool.not.i250 = icmp eq i32 %and.i249, 0
  br i1 %tobool.not.i250, label %for.body.i251.cond.false.i261_crit_edge, label %land.lhs.true.i253

for.body.i251.cond.false.i261_crit_edge:          ; preds = %for.body.i251
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i261

land.lhs.true.i253:                               ; preds = %for.body.i251
  %581 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i252 = icmp eq ptr %582, null
  br i1 %tobool1.not.i252, label %land.lhs.true.i253.cond.false.i261_crit_edge, label %land.lhs.true2.i256

land.lhs.true.i253.cond.false.i261_crit_edge:     ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i261

land.lhs.true2.i256:                              ; preds = %land.lhs.true.i253
  %sriov_wreg.i254 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %582, i32 0, i32 12
  %583 = ptrtoint ptr %sriov_wreg.i254 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %sriov_wreg.i254, align 4
  %tobool6.not.i255 = icmp eq ptr %584, null
  br i1 %tobool6.not.i255, label %land.lhs.true2.i256.cond.false.i261_crit_edge, label %cond.true.i259

land.lhs.true2.i256.cond.false.i261_crit_edge:    ; preds = %land.lhs.true2.i256
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i261

cond.true.i259:                                   ; preds = %land.lhs.true2.i256
  call void @__sanitizer_cov_trace_pc() #7
  %585 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx13.i257 = getelementptr i32, ptr %586, i32 1
  %587 = ptrtoint ptr %arrayidx13.i257 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %arrayidx13.i257, align 4
  %589 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %eng_addr_distance.i, align 4
  %mul15.i = mul i32 %590, %i.099.i
  %add14.i258 = add i32 %588, %add.i247
  %add16.i = add i32 %add14.i258, %mul15.i
  tail call void %584(ptr noundef %adev, i32 noundef %add16.i, i32 noundef -1, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i264

cond.false.i261:                                  ; preds = %land.lhs.true2.i256.cond.false.i261_crit_edge, %land.lhs.true.i253.cond.false.i261_crit_edge, %for.body.i251.cond.false.i261_crit_edge
  %591 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx20.i = getelementptr i32, ptr %592, i32 1
  %593 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %arrayidx20.i, align 4
  %595 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %eng_addr_distance.i, align 4
  %mul25.i = mul i32 %596, %i.099.i
  %add23.i260 = add i32 %594, %add.i247
  %add26.i = add i32 %add23.i260, %mul25.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add26.i, i32 noundef -1, i32 noundef 0) #5
  br label %cond.end.i264

cond.end.i264:                                    ; preds = %cond.false.i261, %cond.true.i259
  %597 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %virt.i, align 8
  %and29.i262 = and i32 %598, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i262)
  %tobool30.not.i263 = icmp eq i32 %and29.i262, 0
  br i1 %tobool30.not.i263, label %cond.end.i264.cond.false57.i_crit_edge, label %land.lhs.true31.i266

cond.end.i264.cond.false57.i_crit_edge:           ; preds = %cond.end.i264
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false57.i

land.lhs.true31.i266:                             ; preds = %cond.end.i264
  %599 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %funcs.i, align 4
  %tobool35.not.i265 = icmp eq ptr %600, null
  br i1 %tobool35.not.i265, label %land.lhs.true31.i266.cond.false57.i_crit_edge, label %land.lhs.true36.i268

land.lhs.true31.i266.cond.false57.i_crit_edge:    ; preds = %land.lhs.true31.i266
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false57.i

land.lhs.true36.i268:                             ; preds = %land.lhs.true31.i266
  %sriov_wreg40.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %600, i32 0, i32 12
  %601 = ptrtoint ptr %sriov_wreg40.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %sriov_wreg40.i, align 4
  %tobool41.not.i267 = icmp eq ptr %602, null
  br i1 %tobool41.not.i267, label %land.lhs.true36.i268.cond.false57.i_crit_edge, label %cond.true42.i

land.lhs.true36.i268.cond.false57.i_crit_edge:    ; preds = %land.lhs.true36.i268
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false57.i

cond.true42.i:                                    ; preds = %land.lhs.true36.i268
  call void @__sanitizer_cov_trace_pc() #7
  %603 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx50.i269 = getelementptr i32, ptr %604, i32 1
  %605 = ptrtoint ptr %arrayidx50.i269 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %arrayidx50.i269, align 4
  %607 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %eng_addr_distance.i, align 4
  %mul55.i = mul i32 %608, %i.099.i
  %add53.i270 = add i32 %606, %add51.i248
  %add56.i271 = add i32 %add53.i270, %mul55.i
  tail call void %602(ptr noundef %adev, i32 noundef %add56.i271, i32 noundef 31, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc.i276

cond.false57.i:                                   ; preds = %land.lhs.true36.i268.cond.false57.i_crit_edge, %land.lhs.true31.i266.cond.false57.i_crit_edge, %cond.end.i264.cond.false57.i_crit_edge
  %609 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx61.i272 = getelementptr i32, ptr %610, i32 1
  %611 = ptrtoint ptr %arrayidx61.i272 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %arrayidx61.i272, align 4
  %613 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %eng_addr_distance.i, align 4
  %mul66.i = mul i32 %614, %i.099.i
  %add64.i273 = add i32 %612, %add51.i248
  %add67.i = add i32 %add64.i273, %mul66.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add67.i, i32 noundef 31, i32 noundef 0) #5
  br label %for.inc.i276

for.inc.i276:                                     ; preds = %cond.false57.i, %cond.true42.i
  %inc.i274 = add nuw nsw i32 %i.099.i, 1
  %exitcond.not.i275 = icmp eq i32 %inc.i274, 18
  br i1 %exitcond.not.i275, label %mmhub_v9_4_program_invalidation.exit, label %for.inc.i276.for.body.i251_crit_edge

for.inc.i276.for.body.i251_crit_edge:             ; preds = %for.inc.i276
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i251

mmhub_v9_4_program_invalidation.exit:             ; preds = %for.inc.i276
  %inc = add nuw nsw i32 %i.0277, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.end, label %mmhub_v9_4_program_invalidation.exit.for.body_crit_edge

mmhub_v9_4_program_invalidation.exit.for.body_crit_edge: ; preds = %mmhub_v9_4_program_invalidation.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %mmhub_v9_4_program_invalidation.exit
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v9_4_set_fault_enable_default(ptr noundef %adev, i1 noundef zeroext %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %and79 = select i1 %value, i32 8188, i32 0
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %9, 2503
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add13, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %arrayidx17 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx17, align 4
  %add20 = add i32 %13, 2503
  %call21 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call21, %cond.false ]
  %and22 = and i32 %cond, -8189
  %or84 = or i32 %and79, %and22
  %or89 = or i32 %or84, -1073741824
  %spec.select = select i1 %value, i32 %or84, i32 %or89
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and92 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %cond.end.cond.false116_crit_edge, label %land.lhs.true94

cond.end.cond.false116_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false116

land.lhs.true94:                                  ; preds = %cond.end
  %16 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs, align 4
  %tobool98.not = icmp eq ptr %17, null
  br i1 %tobool98.not, label %land.lhs.true94.cond.false116_crit_edge, label %land.lhs.true99

land.lhs.true94.cond.false116_crit_edge:          ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false116

land.lhs.true99:                                  ; preds = %land.lhs.true94
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool103.not = icmp eq ptr %19, null
  br i1 %tobool103.not, label %land.lhs.true99.cond.false116_crit_edge, label %cond.true104

land.lhs.true99.cond.false116_crit_edge:          ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false116

cond.true104:                                     ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 8
  %arrayidx112 = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx112, align 4
  %add115 = add i32 %23, 2503
  tail call void %19(ptr noundef %adev, i32 noundef %add115, i32 noundef %spec.select, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc

cond.false116:                                    ; preds = %land.lhs.true99.cond.false116_crit_edge, %land.lhs.true94.cond.false116_crit_edge, %cond.end.cond.false116_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 8
  %arrayidx120 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx120, align 4
  %add123 = add i32 %27, 2503
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add123, i32 noundef %spec.select, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.false116, %cond.true104
  %28 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt, align 8
  %and.1 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.cond.false.1_crit_edge, label %land.lhs.true.1

for.inc.cond.false.1_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.1

land.lhs.true.1:                                  ; preds = %for.inc
  %30 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs, align 4
  %tobool1.not.1 = icmp eq ptr %31, null
  br i1 %tobool1.not.1, label %land.lhs.true.1.cond.false.1_crit_edge, label %land.lhs.true2.1

land.lhs.true.1.cond.false.1_crit_edge:           ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.1

land.lhs.true2.1:                                 ; preds = %land.lhs.true.1
  %sriov_rreg.1 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %sriov_rreg.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_rreg.1, align 4
  %tobool6.not.1 = icmp eq ptr %33, null
  br i1 %tobool6.not.1, label %land.lhs.true2.1.cond.false.1_crit_edge, label %cond.true.1

land.lhs.true2.1.cond.false.1_crit_edge:          ; preds = %land.lhs.true2.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.1

cond.true.1:                                      ; preds = %land.lhs.true2.1
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 8
  %arrayidx12.1 = getelementptr i32, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx12.1, align 4
  %add13.1 = add i32 %37, 14791
  %call.1 = tail call i32 %33(ptr noundef %adev, i32 noundef %add13.1, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.1

cond.false.1:                                     ; preds = %land.lhs.true2.1.cond.false.1_crit_edge, %land.lhs.true.1.cond.false.1_crit_edge, %for.inc.cond.false.1_crit_edge
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 8
  %arrayidx17.1 = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx17.1, align 4
  %add20.1 = add i32 %41, 14791
  %call21.1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20.1, i32 noundef 0) #5
  br label %cond.end.1

cond.end.1:                                       ; preds = %cond.false.1, %cond.true.1
  %cond.1 = phi i32 [ %call.1, %cond.true.1 ], [ %call21.1, %cond.false.1 ]
  %and22.1 = and i32 %cond.1, -8189
  %or84.1 = or i32 %and79, %and22.1
  %or89.1 = or i32 %or84.1, -1073741824
  %spec.select.1 = select i1 %value, i32 %or84.1, i32 %or89.1
  %42 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %virt, align 8
  %and92.1 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.1)
  %tobool93.not.1 = icmp eq i32 %and92.1, 0
  br i1 %tobool93.not.1, label %cond.end.1.cond.false116.1_crit_edge, label %land.lhs.true94.1

cond.end.1.cond.false116.1_crit_edge:             ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false116.1

land.lhs.true94.1:                                ; preds = %cond.end.1
  %44 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs, align 4
  %tobool98.not.1 = icmp eq ptr %45, null
  br i1 %tobool98.not.1, label %land.lhs.true94.1.cond.false116.1_crit_edge, label %land.lhs.true99.1

land.lhs.true94.1.cond.false116.1_crit_edge:      ; preds = %land.lhs.true94.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false116.1

land.lhs.true99.1:                                ; preds = %land.lhs.true94.1
  %sriov_wreg.1 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %sriov_wreg.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sriov_wreg.1, align 4
  %tobool103.not.1 = icmp eq ptr %47, null
  br i1 %tobool103.not.1, label %land.lhs.true99.1.cond.false116.1_crit_edge, label %cond.true104.1

land.lhs.true99.1.cond.false116.1_crit_edge:      ; preds = %land.lhs.true99.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false116.1

cond.true104.1:                                   ; preds = %land.lhs.true99.1
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx, align 8
  %arrayidx112.1 = getelementptr i32, ptr %49, i32 1
  %50 = ptrtoint ptr %arrayidx112.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx112.1, align 4
  %add115.1 = add i32 %51, 14791
  tail call void %47(ptr noundef %adev, i32 noundef %add115.1, i32 noundef %spec.select.1, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc.1

cond.false116.1:                                  ; preds = %land.lhs.true99.1.cond.false116.1_crit_edge, %land.lhs.true94.1.cond.false116.1_crit_edge, %cond.end.1.cond.false116.1_crit_edge
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 8
  %arrayidx120.1 = getelementptr i32, ptr %53, i32 1
  %54 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx120.1, align 4
  %add123.1 = add i32 %55, 14791
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add123.1, i32 noundef %spec.select.1, i32 noundef 0) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %cond.false116.1, %cond.true104.1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v9_4_gart_disable(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %ctx_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 8
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc218.for.cond1.preheader_crit_edge, %entry
  %j.0306 = phi i32 [ 0, %entry ], [ %inc219, %for.inc218.for.cond1.preheader_crit_edge ]
  %mul = mul nuw nsw i32 %j.0306, 12288
  %add = or i32 %mul, 2560
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.cond1.preheader
  %i.0303 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.inc.for.body3_crit_edge ]
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body3.cond.false_crit_edge, label %land.lhs.true

for.body3.cond.false_crit_edge:                   ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %for.body3
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true5

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %land.lhs.true5.cond.false_crit_edge, label %cond.true

land.lhs.true5.cond.false_crit_edge:              ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx16, align 4
  %10 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_distance, align 4
  %mul18 = mul i32 %11, %i.0303
  %add17 = add i32 %add, %9
  %add19 = add i32 %add17, %mul18
  tail call void %5(ptr noundef %adev, i32 noundef %add19, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc

cond.false:                                       ; preds = %land.lhs.true5.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %for.body3.cond.false_crit_edge
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 8
  %arrayidx23 = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx23, align 4
  %16 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctx_distance, align 4
  %mul28 = mul i32 %17, %i.0303
  %add26 = add i32 %add, %15
  %add29 = add i32 %add26, %mul28
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add29, i32 noundef 0, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %cond.true
  %inc = add nuw nsw i32 %i.0303, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.end:                                          ; preds = %for.inc
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and32 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %for.end.cond.false56_crit_edge, label %land.lhs.true34

for.end.cond.false56_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56

land.lhs.true34:                                  ; preds = %for.end
  %20 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs, align 4
  %tobool38.not = icmp eq ptr %21, null
  br i1 %tobool38.not, label %land.lhs.true34.cond.false56_crit_edge, label %land.lhs.true39

land.lhs.true34.cond.false56_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_rreg, align 4
  %tobool43.not = icmp eq ptr %23, null
  br i1 %tobool43.not, label %land.lhs.true39.cond.false56_crit_edge, label %cond.true44

land.lhs.true39.cond.false56_crit_edge:           ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56

cond.true44:                                      ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx14, align 8
  %arrayidx52 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx52, align 4
  %add53 = or i32 %mul, 2823
  %add55 = add i32 %add53, %27
  %call = tail call i32 %23(ptr noundef %adev, i32 noundef %add55, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end65

cond.false56:                                     ; preds = %land.lhs.true39.cond.false56_crit_edge, %land.lhs.true34.cond.false56_crit_edge, %for.end.cond.false56_crit_edge
  %28 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx14, align 8
  %arrayidx60 = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx60, align 4
  %add61 = or i32 %mul, 2823
  %add63 = add i32 %add61, %31
  %call64 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add63, i32 noundef 0) #5
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false56, %cond.true44
  %cond = phi i32 [ %call, %cond.true44 ], [ %call64, %cond.false56 ]
  %and67 = and i32 %cond, -66
  %32 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %virt, align 8
  %and71 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %cond.end65.cond.false96_crit_edge, label %land.lhs.true73

cond.end65.cond.false96_crit_edge:                ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false96

land.lhs.true73:                                  ; preds = %cond.end65
  %34 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs, align 4
  %tobool77.not = icmp eq ptr %35, null
  br i1 %tobool77.not, label %land.lhs.true73.cond.false96_crit_edge, label %land.lhs.true78

land.lhs.true73.cond.false96_crit_edge:           ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false96

land.lhs.true78:                                  ; preds = %land.lhs.true73
  %sriov_wreg82 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sriov_wreg82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_wreg82, align 4
  %tobool83.not = icmp eq ptr %37, null
  br i1 %tobool83.not, label %land.lhs.true78.cond.false96_crit_edge, label %cond.true84

land.lhs.true78.cond.false96_crit_edge:           ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false96

cond.true84:                                      ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx14, align 8
  %arrayidx92 = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx92, align 4
  %add93 = or i32 %mul, 2823
  %add95 = add i32 %add93, %41
  tail call void %37(ptr noundef %adev, i32 noundef %add95, i32 noundef %and67, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end104

cond.false96:                                     ; preds = %land.lhs.true78.cond.false96_crit_edge, %land.lhs.true73.cond.false96_crit_edge, %cond.end65.cond.false96_crit_edge
  %42 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx14, align 8
  %arrayidx100 = getelementptr i32, ptr %43, i32 1
  %44 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx100, align 4
  %add101 = or i32 %mul, 2823
  %add103 = add i32 %add101, %45
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add103, i32 noundef %and67, i32 noundef 0) #5
  br label %cond.end104

cond.end104:                                      ; preds = %cond.false96, %cond.true84
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %virt, align 8
  %and107 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %cond.end104.cond.false133_crit_edge, label %land.lhs.true109

cond.end104.cond.false133_crit_edge:              ; preds = %cond.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false133

land.lhs.true109:                                 ; preds = %cond.end104
  %48 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %funcs, align 4
  %tobool113.not = icmp eq ptr %49, null
  br i1 %tobool113.not, label %land.lhs.true109.cond.false133_crit_edge, label %land.lhs.true114

land.lhs.true109.cond.false133_crit_edge:         ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false133

land.lhs.true114:                                 ; preds = %land.lhs.true109
  %sriov_rreg118 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %sriov_rreg118 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sriov_rreg118, align 4
  %tobool119.not = icmp eq ptr %51, null
  br i1 %tobool119.not, label %land.lhs.true114.cond.false133_crit_edge, label %cond.true120

land.lhs.true114.cond.false133_crit_edge:         ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false133

cond.true120:                                     ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx14, align 8
  %arrayidx128 = getelementptr i32, ptr %53, i32 1
  %54 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx128, align 4
  %add129 = or i32 %mul, 2496
  %add131 = add i32 %add129, %55
  %call132 = tail call i32 %51(ptr noundef %adev, i32 noundef %add131, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end142

cond.false133:                                    ; preds = %land.lhs.true114.cond.false133_crit_edge, %land.lhs.true109.cond.false133_crit_edge, %cond.end104.cond.false133_crit_edge
  %56 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx14, align 8
  %arrayidx137 = getelementptr i32, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx137, align 4
  %add138 = or i32 %mul, 2496
  %add140 = add i32 %add138, %59
  %call141 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add140, i32 noundef 0) #5
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false133, %cond.true120
  %cond143 = phi i32 [ %call132, %cond.true120 ], [ %call141, %cond.false133 ]
  %and144 = and i32 %cond143, -2
  %60 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %virt, align 8
  %and148 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %cond.end142.cond.false173_crit_edge, label %land.lhs.true150

cond.end142.cond.false173_crit_edge:              ; preds = %cond.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false173

land.lhs.true150:                                 ; preds = %cond.end142
  %62 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %funcs, align 4
  %tobool154.not = icmp eq ptr %63, null
  br i1 %tobool154.not, label %land.lhs.true150.cond.false173_crit_edge, label %land.lhs.true155

land.lhs.true150.cond.false173_crit_edge:         ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false173

land.lhs.true155:                                 ; preds = %land.lhs.true150
  %sriov_wreg159 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %sriov_wreg159 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sriov_wreg159, align 4
  %tobool160.not = icmp eq ptr %65, null
  br i1 %tobool160.not, label %land.lhs.true155.cond.false173_crit_edge, label %cond.true161

land.lhs.true155.cond.false173_crit_edge:         ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false173

cond.true161:                                     ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx14, align 8
  %arrayidx169 = getelementptr i32, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx169, align 4
  %add170 = or i32 %mul, 2496
  %add172 = add i32 %add170, %69
  tail call void %65(ptr noundef %adev, i32 noundef %add172, i32 noundef %and144, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end181

cond.false173:                                    ; preds = %land.lhs.true155.cond.false173_crit_edge, %land.lhs.true150.cond.false173_crit_edge, %cond.end142.cond.false173_crit_edge
  %70 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx14, align 8
  %arrayidx177 = getelementptr i32, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx177, align 4
  %add178 = or i32 %mul, 2496
  %add180 = add i32 %add178, %73
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add180, i32 noundef %and144, i32 noundef 0) #5
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false173, %cond.true161
  %74 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %virt, align 8
  %and184 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %cond.end181.cond.false209_crit_edge, label %land.lhs.true186

cond.end181.cond.false209_crit_edge:              ; preds = %cond.end181
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false209

land.lhs.true186:                                 ; preds = %cond.end181
  %76 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %funcs, align 4
  %tobool190.not = icmp eq ptr %77, null
  br i1 %tobool190.not, label %land.lhs.true186.cond.false209_crit_edge, label %land.lhs.true191

land.lhs.true186.cond.false209_crit_edge:         ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false209

land.lhs.true191:                                 ; preds = %land.lhs.true186
  %sriov_wreg195 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %sriov_wreg195 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sriov_wreg195, align 4
  %tobool196.not = icmp eq ptr %79, null
  br i1 %tobool196.not, label %land.lhs.true191.cond.false209_crit_edge, label %cond.true197

land.lhs.true191.cond.false209_crit_edge:         ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false209

cond.true197:                                     ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx14, align 8
  %arrayidx205 = getelementptr i32, ptr %81, i32 1
  %82 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx205, align 4
  %add206 = or i32 %mul, 2498
  %add208 = add i32 %add206, %83
  tail call void %79(ptr noundef %adev, i32 noundef %add208, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc218

cond.false209:                                    ; preds = %land.lhs.true191.cond.false209_crit_edge, %land.lhs.true186.cond.false209_crit_edge, %cond.end181.cond.false209_crit_edge
  %84 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx14, align 8
  %arrayidx213 = getelementptr i32, ptr %85, i32 1
  %86 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx213, align 4
  %add214 = or i32 %mul, 2498
  %add216 = add i32 %add214, %87
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add216, i32 noundef 0, i32 noundef 0) #5
  br label %for.inc218

for.inc218:                                       ; preds = %cond.false209, %cond.true197
  %inc219 = add nuw nsw i32 %j.0306, 1
  %exitcond317.not = icmp eq i32 %inc219, 2
  br i1 %exitcond317.not, label %for.end220, label %for.inc218.for.cond1.preheader_crit_edge

for.inc218.for.cond1.preheader_crit_edge:         ; preds = %for.inc218
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

for.end220:                                       ; preds = %for.inc218
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmhub_v9_4_set_clockgating(ptr noundef %adev, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cond = icmp eq i32 %3, 23
  br i1 %cond, label %sw.bb, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc169.i.for.body.i_crit_edge, %sw.bb
  %i.0242.i = phi i32 [ 0, %sw.bb ], [ %inc170.i, %for.inc169.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.cond.false.i_crit_edge, label %land.lhs.true.i

for.body.i.cond.false.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %6 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true2.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx12.i = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12.i, align 4
  %mul.i = mul nuw nsw i32 %i.0242.i, 12288
  %add.i = or i32 %mul.i, 2443
  %add13.i = add i32 %add.i, %13
  %call.i = tail call i32 %9(ptr noundef %adev, i32 noundef %add13.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %for.body.i.cond.false.i_crit_edge
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx17.i = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17.i, align 4
  %mul19.i = mul nuw nsw i32 %i.0242.i, 12288
  %add18.i = or i32 %mul19.i, 2443
  %add20.i = add i32 %add18.i, %17
  %call21.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20.i, i32 noundef 0) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call21.i, %cond.false.i ]
  br i1 %cmp, label %land.lhs.true23.i, label %cond.end.i.if.else.i_crit_edge

cond.end.i.if.else.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true23.i:                                ; preds = %cond.end.i
  %18 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cg_flags.i, align 8
  %and24.i = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true23.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true23.i.if.else.i_crit_edge:            ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %cond.i, 262144
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true23.i.if.else.i_crit_edge, %cond.end.i.if.else.i_crit_edge
  %and26.i = and i32 %cond.i, -262145
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %or.i, %if.then.i ], [ %and26.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %data.0.i)
  %cmp27.not.i = icmp eq i32 %cond.i, %data.0.i
  br i1 %cmp27.not.i, label %if.end.if.end64_crit_edge.i, label %if.then28.i

if.end.if.end64_crit_edge.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %.pre.i = mul nuw nsw i32 %i.0242.i, 12288
  br label %if.end64.i

if.then28.i:                                      ; preds = %if.end.i
  %20 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt, align 8
  %and31.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.then28.i.cond.false55.i_crit_edge, label %land.lhs.true33.i

if.then28.i.cond.false55.i_crit_edge:             ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false55.i

land.lhs.true33.i:                                ; preds = %if.then28.i
  %22 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs.i, align 4
  %tobool37.not.i = icmp eq ptr %23, null
  br i1 %tobool37.not.i, label %land.lhs.true33.i.cond.false55.i_crit_edge, label %land.lhs.true38.i

land.lhs.true33.i.cond.false55.i_crit_edge:       ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false55.i

land.lhs.true38.i:                                ; preds = %land.lhs.true33.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool42.not.i = icmp eq ptr %25, null
  br i1 %tobool42.not.i, label %land.lhs.true38.i.cond.false55.i_crit_edge, label %cond.true43.i

land.lhs.true38.i.cond.false55.i_crit_edge:       ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false55.i

cond.true43.i:                                    ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx51.i = getelementptr i32, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx51.i, align 4
  %mul53.i = mul nuw nsw i32 %i.0242.i, 12288
  %add52.i = or i32 %mul53.i, 2443
  %add54.i = add i32 %add52.i, %29
  tail call void %25(ptr noundef %adev, i32 noundef %add54.i, i32 noundef %data.0.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end64.i

cond.false55.i:                                   ; preds = %land.lhs.true38.i.cond.false55.i_crit_edge, %land.lhs.true33.i.cond.false55.i_crit_edge, %if.then28.i.cond.false55.i_crit_edge
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx59.i = getelementptr i32, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx59.i, align 4
  %mul61.i = mul nuw nsw i32 %i.0242.i, 12288
  %add60.i = or i32 %mul61.i, 2443
  %add62.i = add i32 %add60.i, %33
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add62.i, i32 noundef %data.0.i, i32 noundef 0) #5
  br label %if.end64.i

if.end64.i:                                       ; preds = %cond.false55.i, %cond.true43.i, %if.end.if.end64_crit_edge.i
  %mul93.pre-phi.i = phi i32 [ %.pre.i, %if.end.if.end64_crit_edge.i ], [ %mul53.i, %cond.true43.i ], [ %mul61.i, %cond.false55.i ]
  %add92.i = or i32 %mul93.pre-phi.i, 103
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0242.i)
  %cmp164.i = icmp ne i32 %i.0242.i, 1
  br label %for.body67.i

for.body67.i:                                     ; preds = %if.end163.i.for.body67.i_crit_edge, %if.end64.i
  %j.0240.i = phi i32 [ 0, %if.end64.i ], [ %inc.i, %if.end163.i.for.body67.i_crit_edge ]
  %34 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt, align 8
  %and70.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %for.body67.i.cond.false98.i_crit_edge, label %land.lhs.true72.i

for.body67.i.cond.false98.i_crit_edge:            ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false98.i

land.lhs.true72.i:                                ; preds = %for.body67.i
  %36 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs.i, align 4
  %tobool76.not.i = icmp eq ptr %37, null
  br i1 %tobool76.not.i, label %land.lhs.true72.i.cond.false98.i_crit_edge, label %land.lhs.true77.i

land.lhs.true72.i.cond.false98.i_crit_edge:       ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false98.i

land.lhs.true77.i:                                ; preds = %land.lhs.true72.i
  %sriov_rreg81.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %sriov_rreg81.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_rreg81.i, align 4
  %tobool82.not.i = icmp eq ptr %39, null
  br i1 %tobool82.not.i, label %land.lhs.true77.i.cond.false98.i_crit_edge, label %cond.true83.i

land.lhs.true77.i.cond.false98.i_crit_edge:       ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false98.i

cond.true83.i:                                    ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx91.i = getelementptr i32, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx91.i, align 4
  %mul95.i = shl nuw nsw i32 %j.0240.i, 7
  %add94.i = add nuw nsw i32 %mul95.i, %add92.i
  %add96.i = add i32 %add94.i, %43
  %call97.i = tail call i32 %39(ptr noundef %adev, i32 noundef %add96.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end109.i

cond.false98.i:                                   ; preds = %land.lhs.true77.i.cond.false98.i_crit_edge, %land.lhs.true72.i.cond.false98.i_crit_edge, %for.body67.i.cond.false98.i_crit_edge
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx102.i = getelementptr i32, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx102.i, align 4
  %mul106.i = shl nuw nsw i32 %j.0240.i, 7
  %add105.i = add nuw nsw i32 %mul106.i, %add92.i
  %add107.i = add i32 %add105.i, %47
  %call108.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add107.i, i32 noundef 0) #5
  br label %cond.end109.i

cond.end109.i:                                    ; preds = %cond.false98.i, %cond.true83.i
  %cond110.i = phi i32 [ %call97.i, %cond.true83.i ], [ %call108.i, %cond.false98.i ]
  br i1 %cmp, label %land.lhs.true112.i, label %cond.end109.i.if.else118.i_crit_edge

cond.end109.i.if.else118.i_crit_edge:             ; preds = %cond.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else118.i

land.lhs.true112.i:                               ; preds = %cond.end109.i
  %48 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cg_flags.i, align 8
  %and114.i = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %land.lhs.true112.i.if.else118.i_crit_edge, label %if.then116.i

land.lhs.true112.i.if.else118.i_crit_edge:        ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else118.i

if.then116.i:                                     ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #7
  %and117.i = and i32 %cond110.i, -253
  br label %if.end120.i

if.else118.i:                                     ; preds = %land.lhs.true112.i.if.else118.i_crit_edge, %cond.end109.i.if.else118.i_crit_edge
  %or119.i = or i32 %cond110.i, 252
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.else118.i, %if.then116.i
  %data1.0.i = phi i32 [ %and117.i, %if.then116.i ], [ %or119.i, %if.else118.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond110.i, i32 %data1.0.i)
  %cmp121.not.i = icmp eq i32 %cond110.i, %data1.0.i
  br i1 %cmp121.not.i, label %if.end120.i.if.end163.i_crit_edge, label %if.then122.i

if.end120.i.if.end163.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end163.i

if.then122.i:                                     ; preds = %if.end120.i
  %50 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %virt, align 8
  %and125.i = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i, label %if.then122.i.cond.false152.i_crit_edge, label %land.lhs.true127.i

if.then122.i.cond.false152.i_crit_edge:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false152.i

land.lhs.true127.i:                               ; preds = %if.then122.i
  %52 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %funcs.i, align 4
  %tobool131.not.i = icmp eq ptr %53, null
  br i1 %tobool131.not.i, label %land.lhs.true127.i.cond.false152.i_crit_edge, label %land.lhs.true132.i

land.lhs.true127.i.cond.false152.i_crit_edge:     ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false152.i

land.lhs.true132.i:                               ; preds = %land.lhs.true127.i
  %sriov_wreg136.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %sriov_wreg136.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sriov_wreg136.i, align 4
  %tobool137.not.i = icmp eq ptr %55, null
  br i1 %tobool137.not.i, label %land.lhs.true132.i.cond.false152.i_crit_edge, label %cond.true138.i

land.lhs.true132.i.cond.false152.i_crit_edge:     ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false152.i

cond.true138.i:                                   ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx146.i = getelementptr i32, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx146.i, align 4
  %mul150.i = shl nuw nsw i32 %j.0240.i, 7
  %add149.i = add nuw nsw i32 %mul150.i, %add92.i
  %add151.i = add i32 %add149.i, %59
  tail call void %55(ptr noundef %adev, i32 noundef %add151.i, i32 noundef %data1.0.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end163.i

cond.false152.i:                                  ; preds = %land.lhs.true132.i.cond.false152.i_crit_edge, %land.lhs.true127.i.cond.false152.i_crit_edge, %if.then122.i.cond.false152.i_crit_edge
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx156.i = getelementptr i32, ptr %61, i32 1
  %62 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx156.i, align 4
  %mul160.i = shl nuw nsw i32 %j.0240.i, 7
  %add159.i = add nuw nsw i32 %mul160.i, %add92.i
  %add161.i = add i32 %add159.i, %63
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add161.i, i32 noundef %data1.0.i, i32 noundef 0) #5
  br label %if.end163.i

if.end163.i:                                      ; preds = %cond.false152.i, %cond.true138.i, %if.end120.i.if.end163.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.0240.i)
  %cmp166.i = icmp ne i32 %j.0240.i, 3
  %or.cond.i = select i1 %cmp164.i, i1 true, i1 %cmp166.i
  %inc.i = add nuw nsw i32 %j.0240.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %j.0240.i)
  %cmp66.i = icmp ult i32 %j.0240.i, 4
  %or.cond247.i = select i1 %or.cond.i, i1 %cmp66.i, i1 false
  br i1 %or.cond247.i, label %if.end163.i.for.body67.i_crit_edge, label %for.inc169.i

if.end163.i.for.body67.i_crit_edge:               ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body67.i

for.inc169.i:                                     ; preds = %if.end163.i
  %inc170.i = add nuw nsw i32 %i.0242.i, 1
  %exitcond.not.i = icmp eq i32 %inc170.i, 2
  br i1 %exitcond.not.i, label %for.body.i12.preheader, label %for.inc169.i.for.body.i_crit_edge

for.inc169.i.for.body.i_crit_edge:                ; preds = %for.inc169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i12.preheader:                           ; preds = %for.inc169.i
  %64 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %virt, align 8
  %and.i10 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %for.body.i12.preheader.cond.false.i25_crit_edge, label %land.lhs.true.i14

for.body.i12.preheader.cond.false.i25_crit_edge:  ; preds = %for.body.i12.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i25

land.lhs.true.i14:                                ; preds = %for.body.i12.preheader
  %66 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i13 = icmp eq ptr %67, null
  br i1 %tobool1.not.i13, label %land.lhs.true.i14.cond.false.i25_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i14.cond.false.i25_crit_edge:       ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i25

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i14
  %sriov_rreg.i15 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %sriov_rreg.i15 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sriov_rreg.i15, align 4
  %tobool6.not.i16 = icmp eq ptr %69, null
  br i1 %tobool6.not.i16, label %land.lhs.true2.i17.cond.false.i25_crit_edge, label %cond.true.i21

land.lhs.true2.i17.cond.false.i25_crit_edge:      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i25

cond.true.i21:                                    ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx12.i18 = getelementptr i32, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx12.i18 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx12.i18, align 4
  %add13.i19 = add i32 %73, 2443
  %call.i20 = tail call i32 %69(ptr noundef %adev, i32 noundef %add13.i19, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i27

cond.false.i25:                                   ; preds = %land.lhs.true2.i17.cond.false.i25_crit_edge, %land.lhs.true.i14.cond.false.i25_crit_edge, %for.body.i12.preheader.cond.false.i25_crit_edge
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx17.i22 = getelementptr i32, ptr %75, i32 1
  %76 = ptrtoint ptr %arrayidx17.i22 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx17.i22, align 4
  %add20.i23 = add i32 %77, 2443
  %call21.i24 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20.i23, i32 noundef 0) #5
  br label %cond.end.i27

cond.end.i27:                                     ; preds = %cond.false.i25, %cond.true.i21
  %cond.i26 = phi i32 [ %call.i20, %cond.true.i21 ], [ %call21.i24, %cond.false.i25 ]
  br i1 %cmp, label %land.lhs.true23.i30, label %cond.end.i27.if.else.i34_crit_edge

cond.end.i27.if.else.i34_crit_edge:               ; preds = %cond.end.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i34

land.lhs.true23.i30:                              ; preds = %cond.end.i27
  %78 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cg_flags.i, align 8
  %and24.i28 = and i32 %79, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i28)
  %tobool25.not.i29 = icmp eq i32 %and24.i28, 0
  br i1 %tobool25.not.i29, label %land.lhs.true23.i30.if.else.i34_crit_edge, label %if.then.i32

land.lhs.true23.i30.if.else.i34_crit_edge:        ; preds = %land.lhs.true23.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i34

if.then.i32:                                      ; preds = %land.lhs.true23.i30
  call void @__sanitizer_cov_trace_pc() #7
  %or.i31 = or i32 %cond.i26, 524288
  br label %if.end.i37

if.else.i34:                                      ; preds = %land.lhs.true23.i30.if.else.i34_crit_edge, %cond.end.i27.if.else.i34_crit_edge
  %and26.i33 = and i32 %cond.i26, -524289
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.else.i34, %if.then.i32
  %data.0.i35 = phi i32 [ %or.i31, %if.then.i32 ], [ %and26.i33, %if.else.i34 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i26, i32 %data.0.i35)
  %cmp27.not.i36 = icmp eq i32 %cond.i26, %data.0.i35
  br i1 %cmp27.not.i36, label %if.end.i37.for.inc.i_crit_edge, label %if.then28.i40

if.end.i37.for.inc.i_crit_edge:                   ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then28.i40:                                    ; preds = %if.end.i37
  %80 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %virt, align 8
  %and31.i38 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i38)
  %tobool32.not.i39 = icmp eq i32 %and31.i38, 0
  br i1 %tobool32.not.i39, label %if.then28.i40.cond.false55.i51_crit_edge, label %land.lhs.true33.i42

if.then28.i40.cond.false55.i51_crit_edge:         ; preds = %if.then28.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false55.i51

land.lhs.true33.i42:                              ; preds = %if.then28.i40
  %82 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %funcs.i, align 4
  %tobool37.not.i41 = icmp eq ptr %83, null
  br i1 %tobool37.not.i41, label %land.lhs.true33.i42.cond.false55.i51_crit_edge, label %land.lhs.true38.i45

land.lhs.true33.i42.cond.false55.i51_crit_edge:   ; preds = %land.lhs.true33.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false55.i51

land.lhs.true38.i45:                              ; preds = %land.lhs.true33.i42
  %sriov_wreg.i43 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %sriov_wreg.i43 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sriov_wreg.i43, align 4
  %tobool42.not.i44 = icmp eq ptr %85, null
  br i1 %tobool42.not.i44, label %land.lhs.true38.i45.cond.false55.i51_crit_edge, label %cond.true43.i48

land.lhs.true38.i45.cond.false55.i51_crit_edge:   ; preds = %land.lhs.true38.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false55.i51

cond.true43.i48:                                  ; preds = %land.lhs.true38.i45
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx51.i46 = getelementptr i32, ptr %87, i32 1
  %88 = ptrtoint ptr %arrayidx51.i46 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx51.i46, align 4
  %add54.i47 = add i32 %89, 2443
  tail call void %85(ptr noundef %adev, i32 noundef %add54.i47, i32 noundef %data.0.i35, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc.i

cond.false55.i51:                                 ; preds = %land.lhs.true38.i45.cond.false55.i51_crit_edge, %land.lhs.true33.i42.cond.false55.i51_crit_edge, %if.then28.i40.cond.false55.i51_crit_edge
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx59.i49 = getelementptr i32, ptr %91, i32 1
  %92 = ptrtoint ptr %arrayidx59.i49 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx59.i49, align 4
  %add62.i50 = add i32 %93, 2443
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add62.i50, i32 noundef %data.0.i35, i32 noundef 0) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false55.i51, %cond.true43.i48, %if.end.i37.for.inc.i_crit_edge
  %94 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %virt, align 8
  %and.i10.1 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.1)
  %tobool.not.i11.1 = icmp eq i32 %and.i10.1, 0
  br i1 %tobool.not.i11.1, label %for.inc.i.cond.false.i25.1_crit_edge, label %land.lhs.true.i14.1

for.inc.i.cond.false.i25.1_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i25.1

land.lhs.true.i14.1:                              ; preds = %for.inc.i
  %96 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i13.1 = icmp eq ptr %97, null
  br i1 %tobool1.not.i13.1, label %land.lhs.true.i14.1.cond.false.i25.1_crit_edge, label %land.lhs.true2.i17.1

land.lhs.true.i14.1.cond.false.i25.1_crit_edge:   ; preds = %land.lhs.true.i14.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i25.1

land.lhs.true2.i17.1:                             ; preds = %land.lhs.true.i14.1
  %sriov_rreg.i15.1 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %97, i32 0, i32 13
  %98 = ptrtoint ptr %sriov_rreg.i15.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sriov_rreg.i15.1, align 4
  %tobool6.not.i16.1 = icmp eq ptr %99, null
  br i1 %tobool6.not.i16.1, label %land.lhs.true2.i17.1.cond.false.i25.1_crit_edge, label %cond.true.i21.1

land.lhs.true2.i17.1.cond.false.i25.1_crit_edge:  ; preds = %land.lhs.true2.i17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i25.1

cond.true.i21.1:                                  ; preds = %land.lhs.true2.i17.1
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx12.i18.1 = getelementptr i32, ptr %101, i32 1
  %102 = ptrtoint ptr %arrayidx12.i18.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx12.i18.1, align 4
  %add13.i19.1 = add i32 %103, 14731
  %call.i20.1 = tail call i32 %99(ptr noundef %adev, i32 noundef %add13.i19.1, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i27.1

cond.false.i25.1:                                 ; preds = %land.lhs.true2.i17.1.cond.false.i25.1_crit_edge, %land.lhs.true.i14.1.cond.false.i25.1_crit_edge, %for.inc.i.cond.false.i25.1_crit_edge
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx17.i22.1 = getelementptr i32, ptr %105, i32 1
  %106 = ptrtoint ptr %arrayidx17.i22.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx17.i22.1, align 4
  %add20.i23.1 = add i32 %107, 14731
  %call21.i24.1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20.i23.1, i32 noundef 0) #5
  br label %cond.end.i27.1

cond.end.i27.1:                                   ; preds = %cond.false.i25.1, %cond.true.i21.1
  %cond.i26.1 = phi i32 [ %call.i20.1, %cond.true.i21.1 ], [ %call21.i24.1, %cond.false.i25.1 ]
  br i1 %cmp, label %land.lhs.true23.i30.1, label %cond.end.i27.1.if.else.i34.1_crit_edge

cond.end.i27.1.if.else.i34.1_crit_edge:           ; preds = %cond.end.i27.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i34.1

land.lhs.true23.i30.1:                            ; preds = %cond.end.i27.1
  %108 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cg_flags.i, align 8
  %and24.i28.1 = and i32 %109, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i28.1)
  %tobool25.not.i29.1 = icmp eq i32 %and24.i28.1, 0
  br i1 %tobool25.not.i29.1, label %land.lhs.true23.i30.1.if.else.i34.1_crit_edge, label %if.then.i32.1

land.lhs.true23.i30.1.if.else.i34.1_crit_edge:    ; preds = %land.lhs.true23.i30.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i34.1

if.then.i32.1:                                    ; preds = %land.lhs.true23.i30.1
  call void @__sanitizer_cov_trace_pc() #7
  %or.i31.1 = or i32 %cond.i26.1, 524288
  br label %if.end.i37.1

if.else.i34.1:                                    ; preds = %land.lhs.true23.i30.1.if.else.i34.1_crit_edge, %cond.end.i27.1.if.else.i34.1_crit_edge
  %and26.i33.1 = and i32 %cond.i26.1, -524289
  br label %if.end.i37.1

if.end.i37.1:                                     ; preds = %if.else.i34.1, %if.then.i32.1
  %data.0.i35.1 = phi i32 [ %or.i31.1, %if.then.i32.1 ], [ %and26.i33.1, %if.else.i34.1 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i26.1, i32 %data.0.i35.1)
  %cmp27.not.i36.1 = icmp eq i32 %cond.i26.1, %data.0.i35.1
  br i1 %cmp27.not.i36.1, label %if.end.i37.1.return_crit_edge, label %if.then28.i40.1

if.end.i37.1.return_crit_edge:                    ; preds = %if.end.i37.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then28.i40.1:                                  ; preds = %if.end.i37.1
  %110 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %virt, align 8
  %and31.i38.1 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i38.1)
  %tobool32.not.i39.1 = icmp eq i32 %and31.i38.1, 0
  br i1 %tobool32.not.i39.1, label %if.then28.i40.1.cond.false55.i51.1_crit_edge, label %land.lhs.true33.i42.1

if.then28.i40.1.cond.false55.i51.1_crit_edge:     ; preds = %if.then28.i40.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false55.i51.1

land.lhs.true33.i42.1:                            ; preds = %if.then28.i40.1
  %112 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %funcs.i, align 4
  %tobool37.not.i41.1 = icmp eq ptr %113, null
  br i1 %tobool37.not.i41.1, label %land.lhs.true33.i42.1.cond.false55.i51.1_crit_edge, label %land.lhs.true38.i45.1

land.lhs.true33.i42.1.cond.false55.i51.1_crit_edge: ; preds = %land.lhs.true33.i42.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false55.i51.1

land.lhs.true38.i45.1:                            ; preds = %land.lhs.true33.i42.1
  %sriov_wreg.i43.1 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %113, i32 0, i32 12
  %114 = ptrtoint ptr %sriov_wreg.i43.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sriov_wreg.i43.1, align 4
  %tobool42.not.i44.1 = icmp eq ptr %115, null
  br i1 %tobool42.not.i44.1, label %land.lhs.true38.i45.1.cond.false55.i51.1_crit_edge, label %cond.true43.i48.1

land.lhs.true38.i45.1.cond.false55.i51.1_crit_edge: ; preds = %land.lhs.true38.i45.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false55.i51.1

cond.true43.i48.1:                                ; preds = %land.lhs.true38.i45.1
  call void @__sanitizer_cov_trace_pc() #7
  %116 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx51.i46.1 = getelementptr i32, ptr %117, i32 1
  %118 = ptrtoint ptr %arrayidx51.i46.1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx51.i46.1, align 4
  %add54.i47.1 = add i32 %119, 14731
  tail call void %115(ptr noundef %adev, i32 noundef %add54.i47.1, i32 noundef %data.0.i35.1, i32 noundef 0, i32 noundef 11) #5
  br label %return

cond.false55.i51.1:                               ; preds = %land.lhs.true38.i45.1.cond.false55.i51.1_crit_edge, %land.lhs.true33.i42.1.cond.false55.i51.1_crit_edge, %if.then28.i40.1.cond.false55.i51.1_crit_edge
  %120 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx59.i49.1 = getelementptr i32, ptr %121, i32 1
  %122 = ptrtoint ptr %arrayidx59.i49.1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx59.i49.1, align 4
  %add62.i50.1 = add i32 %123, 14731
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add62.i50.1, i32 noundef %data.0.i35.1, i32 noundef 0) #5
  br label %return

return:                                           ; preds = %cond.false55.i51.1, %cond.true43.i48.1, %if.end.i37.1.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v9_4_get_clockgating(ptr noundef %adev, ptr nocapture noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and3 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cond.false_crit_edge, label %land.lhs.true

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sriov_rreg, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %arrayidx16 = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx16, align 4
  %add = add i32 %12, 2443
  %call = tail call i32 %8(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx18, align 8
  %arrayidx20 = getelementptr i32, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %16, 2443
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call22, %cond.false ]
  %17 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %virt, align 8
  %and25 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %cond.end.cond.false49_crit_edge, label %land.lhs.true27

cond.end.cond.false49_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false49

land.lhs.true27:                                  ; preds = %cond.end
  %funcs30 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %19 = ptrtoint ptr %funcs30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs30, align 4
  %tobool31.not = icmp eq ptr %20, null
  br i1 %tobool31.not, label %land.lhs.true27.cond.false49_crit_edge, label %land.lhs.true32

land.lhs.true27.cond.false49_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false49

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %sriov_rreg36 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %sriov_rreg36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sriov_rreg36, align 4
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %land.lhs.true32.cond.false49_crit_edge, label %cond.true38

land.lhs.true32.cond.false49_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false49

cond.true38:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx44 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46 = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %26, 2443
  %call48 = tail call i32 %22(ptr noundef %adev, i32 noundef %add47, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end56

cond.false49:                                     ; preds = %land.lhs.true32.cond.false49_crit_edge, %land.lhs.true27.cond.false49_crit_edge, %cond.end.cond.false49_crit_edge
  %arrayidx51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr i32, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx53, align 4
  %add54 = add i32 %30, 2443
  %call55 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add54, i32 noundef 0) #5
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false49, %cond.true38
  %cond57 = phi i32 [ %call48, %cond.true38 ], [ %call55, %cond.false49 ]
  %and58 = and i32 %cond, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp ne i32 %and58, 0
  %and61 = and i32 %cond57, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %or.cond = select i1 %tobool59.not, i1 %tobool62.not, i1 false
  br i1 %or.cond, label %if.then63, label %cond.end56.if.end64_crit_edge

cond.end56.if.end64_crit_edge:                    ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then63:                                        ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %or = or i32 %32, 512
  store i32 %or, ptr %flags, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %cond.end56.if.end64_crit_edge
  %and65 = and i32 %cond, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end69_crit_edge, label %if.then67

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %or68 = or i32 %34, 256
  store i32 %or68, ptr %flags, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end64.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v9_4_setup_vm_pt_regs(ptr noundef %adev, i32 noundef %vmid, i64 noundef %page_table_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mmhub_v9_4_setup_hubid_vm_pt_regs(ptr noundef %adev, i32 noundef 0, i32 noundef %vmid, i64 noundef %page_table_base)
  tail call fastcc void @mmhub_v9_4_setup_hubid_vm_pt_regs(ptr noundef %adev, i32 noundef 1, i32 noundef %vmid, i64 noundef %page_table_base)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_pd_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmhub_v9_4_setup_hubid_vm_pt_regs(ptr noundef %adev, i32 noundef %hubid, i32 noundef %vmid, i64 noundef %value) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 8
  %arrayidx13 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %10 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_addr_distance, align 4
  %mul = mul i32 %11, %vmid
  %mul15 = mul i32 %hubid, 12288
  %add = or i32 %mul15, 2667
  %add14 = add i32 %add, %9
  %add16 = add i32 %add14, %mul
  %conv = trunc i64 %value to i32
  tail call void %5(ptr noundef %adev, i32 noundef %add16, i32 noundef %conv, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx19, align 8
  %arrayidx21 = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx21, align 4
  %ctx_addr_distance23 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %16 = ptrtoint ptr %ctx_addr_distance23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctx_addr_distance23, align 4
  %mul24 = mul i32 %17, %vmid
  %mul26 = mul i32 %hubid, 12288
  %add22 = or i32 %mul26, 2667
  %add25 = add i32 %add22, %15
  %add27 = add i32 %add25, %mul24
  %conv29 = trunc i64 %value to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27, i32 noundef %conv29, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and32 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %cond.end.cond.false62_crit_edge, label %land.lhs.true34

cond.end.cond.false62_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false62

land.lhs.true34:                                  ; preds = %cond.end
  %funcs37 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs37, align 4
  %tobool38.not = icmp eq ptr %21, null
  br i1 %tobool38.not, label %land.lhs.true34.cond.false62_crit_edge, label %land.lhs.true39

land.lhs.true34.cond.false62_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false62

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %sriov_wreg43 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg43, align 4
  %tobool44.not = icmp eq ptr %23, null
  br i1 %tobool44.not, label %land.lhs.true39.cond.false62_crit_edge, label %cond.true45

land.lhs.true39.cond.false62_crit_edge:           ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false62

cond.true45:                                      ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %24 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx53, align 4
  %ctx_addr_distance55 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %28 = ptrtoint ptr %ctx_addr_distance55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx_addr_distance55, align 4
  %mul56 = mul i32 %29, %vmid
  %mul58 = mul i32 %hubid, 12288
  %add54 = or i32 %mul58, 2668
  %add57 = add i32 %add54, %27
  %add59 = add i32 %add57, %mul56
  %shr = lshr i64 %value, 32
  %conv61 = trunc i64 %shr to i32
  tail call void %23(ptr noundef %adev, i32 noundef %add59, i32 noundef %conv61, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end76

cond.false62:                                     ; preds = %land.lhs.true39.cond.false62_crit_edge, %land.lhs.true34.cond.false62_crit_edge, %cond.end.cond.false62_crit_edge
  %arrayidx64 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %30 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx64, align 8
  %arrayidx66 = getelementptr i32, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx66, align 4
  %ctx_addr_distance68 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %34 = ptrtoint ptr %ctx_addr_distance68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctx_addr_distance68, align 4
  %mul69 = mul i32 %35, %vmid
  %mul71 = mul i32 %hubid, 12288
  %add67 = or i32 %mul71, 2668
  %add70 = add i32 %add67, %33
  %add72 = add i32 %add70, %mul69
  %shr73 = lshr i64 %value, 32
  %conv75 = trunc i64 %shr73 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add72, i32 noundef %conv75, i32 noundef 0) #5
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false62, %cond.true45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_vram_mc2pa(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !327, !328, !329, !330}
!llvm.module.flags = !{!332, !333, !334, !335, !336, !337, !338, !339}
!llvm.ident = !{!340}

!0 = !{ptr @mmhub_v9_4_ras_funcs, !1, !"mmhub_v9_4_ras_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1658, i32 37}
!2 = !{ptr @mmhub_v9_4_funcs, !3, !"mmhub_v9_4_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1666, i32 33}
!4 = !{ptr @mmhub_v9_4_edc_cnt_regs, !5, !"mmhub_v9_4_edc_cnt_regs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1526, i32 37}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1570, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mmhub_v9_4_get_ras_error_count._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @mmhub_v9_4_get_ras_error_count._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1580, i32 4}
!16 = !{ptr @mmhub_v9_4_get_ras_error_count._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mmhub_v9_4_get_ras_error_count._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 678, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 682, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 686, i32 4}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 690, i32 4}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 694, i32 4}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 698, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 702, i32 4}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 706, i32 4}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 710, i32 4}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 714, i32 4}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 718, i32 4}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 722, i32 4}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 726, i32 4}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 730, i32 4}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 734, i32 4}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 766, i32 4}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 770, i32 4}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 774, i32 4}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 778, i32 4}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 784, i32 4}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 788, i32 4}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 792, i32 4}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 796, i32 4}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 800, i32 4}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 804, i32 4}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 808, i32 4}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 812, i32 4}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 816, i32 4}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 820, i32 4}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 824, i32 4}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 828, i32 4}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 832, i32 4}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 836, i32 4}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 840, i32 4}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 872, i32 4}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 876, i32 4}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 880, i32 4}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 884, i32 4}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 890, i32 4}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 894, i32 4}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 898, i32 4}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 902, i32 4}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 906, i32 4}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 910, i32 4}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 914, i32 4}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 918, i32 4}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 922, i32 4}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 926, i32 4}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 930, i32 4}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 934, i32 4}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 938, i32 4}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 942, i32 4}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 946, i32 4}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 978, i32 4}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 982, i32 4}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 986, i32 4}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 990, i32 4}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 996, i32 4}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1000, i32 4}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1004, i32 4}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1008, i32 4}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1012, i32 4}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1016, i32 4}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1020, i32 4}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1024, i32 4}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1028, i32 4}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1032, i32 4}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1036, i32 4}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1040, i32 4}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1044, i32 4}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1048, i32 4}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1052, i32 4}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1084, i32 4}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1088, i32 4}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1092, i32 4}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1096, i32 4}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1102, i32 4}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1106, i32 4}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1110, i32 4}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1114, i32 4}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1118, i32 4}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1122, i32 4}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1126, i32 4}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1130, i32 4}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1134, i32 4}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1138, i32 4}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1142, i32 4}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1146, i32 4}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1150, i32 4}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1154, i32 4}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1158, i32 4}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1190, i32 4}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1194, i32 4}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1198, i32 4}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1202, i32 4}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1208, i32 4}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1212, i32 4}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1216, i32 4}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1220, i32 4}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1224, i32 4}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1228, i32 4}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1232, i32 4}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1236, i32 4}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1240, i32 4}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1244, i32 4}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1248, i32 4}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1252, i32 4}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1256, i32 4}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1260, i32 4}
!236 = !{ptr @.str.117, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1264, i32 4}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1296, i32 4}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1300, i32 4}
!242 = !{ptr @.str.120, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1304, i32 4}
!244 = !{ptr @.str.121, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1308, i32 4}
!246 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1314, i32 4}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1318, i32 4}
!250 = !{ptr @.str.124, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1322, i32 4}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1326, i32 4}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1330, i32 4}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1334, i32 4}
!258 = !{ptr @.str.128, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1338, i32 4}
!260 = !{ptr @.str.129, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1342, i32 4}
!262 = !{ptr @.str.130, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1346, i32 4}
!264 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1350, i32 4}
!266 = !{ptr @.str.132, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1354, i32 4}
!268 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1358, i32 4}
!270 = !{ptr @.str.134, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1362, i32 4}
!272 = !{ptr @.str.135, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1366, i32 4}
!274 = !{ptr @.str.136, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1370, i32 4}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1402, i32 4}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1406, i32 4}
!280 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1410, i32 4}
!282 = !{ptr @.str.140, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1414, i32 4}
!284 = !{ptr @.str.141, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1420, i32 4}
!286 = !{ptr @.str.142, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1424, i32 4}
!288 = !{ptr @.str.143, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1428, i32 4}
!290 = !{ptr @.str.144, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1432, i32 4}
!292 = !{ptr @.str.145, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1436, i32 4}
!294 = !{ptr @.str.146, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1440, i32 4}
!296 = !{ptr @.str.147, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1444, i32 4}
!298 = !{ptr @.str.148, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1448, i32 4}
!300 = !{ptr @.str.149, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1452, i32 4}
!302 = !{ptr @.str.150, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1456, i32 4}
!304 = !{ptr @.str.151, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1460, i32 4}
!306 = !{ptr @.str.152, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1464, i32 4}
!308 = !{ptr @.str.153, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1468, i32 4}
!310 = !{ptr @.str.154, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1472, i32 4}
!312 = !{ptr @.str.155, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1476, i32 4}
!314 = !{ptr @.str.156, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1508, i32 4}
!316 = !{ptr @.str.157, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1512, i32 4}
!318 = !{ptr @.str.158, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1516, i32 4}
!320 = !{ptr @.str.159, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1520, i32 4}
!322 = !{ptr @mmhub_v9_4_ras_fields, !323, !"mmhub_v9_4_ras_fields", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 676, i32 43}
!324 = !{ptr @.str.160, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1652, i32 4}
!326 = !{ptr @.str.161, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.162, !325, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @mmhub_v9_4_query_ras_error_status._entry, !325, !"_entry", i1 false, i1 false}
!329 = !{ptr @mmhub_v9_4_query_ras_error_status._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @mmhub_v9_4_err_status_regs, !331, !"mmhub_v9_4_err_status_regs", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v9_4.c", i32 1624, i32 37}
!332 = !{i32 1, !"wchar_size", i32 2}
!333 = !{i32 1, !"min_enum_size", i32 4}
!334 = !{i32 8, !"branch-target-enforcement", i32 0}
!335 = !{i32 8, !"sign-return-address", i32 0}
!336 = !{i32 8, !"sign-return-address-all", i32 0}
!337 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!338 = !{i32 7, !"uwtable", i32 1}
!339 = !{i32 7, !"frame-pointer", i32 2}
!340 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!341 = !{i8 0, i8 2}
