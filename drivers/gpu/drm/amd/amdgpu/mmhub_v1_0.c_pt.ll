; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c"
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

@mmhub_v1_0_ras_funcs = dso_local constant { %struct.amdgpu_mmhub_ras_funcs, [40 x i8] } { %struct.amdgpu_mmhub_ras_funcs { ptr @amdgpu_mmhub_ras_late_init, ptr @amdgpu_mmhub_ras_fini, ptr @mmhub_v1_0_query_ras_error_count, ptr null, ptr @mmhub_v1_0_reset_ras_error_count, ptr null }, [40 x i8] zeroinitializer }, align 32
@mmhub_v1_0_funcs = dso_local constant { %struct.amdgpu_mmhub_funcs, [60 x i8] } { %struct.amdgpu_mmhub_funcs { ptr @mmhub_v1_0_get_fb_location, ptr @mmhub_v1_0_init, ptr @mmhub_v1_0_gart_enable, ptr @mmhub_v1_0_set_fault_enable_default, ptr @mmhub_v1_0_gart_disable, ptr @mmhub_v1_0_set_clockgating, ptr @mmhub_v1_0_get_clockgating, ptr @mmhub_v1_0_setup_vm_pt_regs, ptr @mmhub_v1_0_update_power_gating }, [60 x i8] zeroinitializer }, align 32
@mmhub_v1_0_edc_cnt_regs = internal constant { [4 x %struct.soc15_reg_entry], [48 x i8] } { [4 x %struct.soc15_reg_entry] [%struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 518, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 519, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 838, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 839, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@mmhub_v1_0_ras_fields = internal constant { [30 x %struct.soc15_ras_field_entry], [264 x i8] } { [30 x %struct.soc15_ras_field_entry] [%struct.soc15_ras_field_entry { ptr @.str.8, i32 11, i32 0, i32 0, i32 518, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.9, i32 11, i32 0, i32 0, i32 518, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.10, i32 11, i32 0, i32 0, i32 518, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.11, i32 11, i32 0, i32 0, i32 518, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.12, i32 11, i32 0, i32 0, i32 518, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.13, i32 11, i32 0, i32 0, i32 518, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.14, i32 11, i32 0, i32 0, i32 518, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.15, i32 11, i32 0, i32 0, i32 518, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.16, i32 11, i32 0, i32 0, i32 518, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.17, i32 11, i32 0, i32 0, i32 518, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.18, i32 11, i32 0, i32 0, i32 519, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.19, i32 11, i32 0, i32 0, i32 519, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.20, i32 11, i32 0, i32 0, i32 519, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.21, i32 11, i32 0, i32 0, i32 519, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.22, i32 11, i32 0, i32 0, i32 519, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.23, i32 11, i32 0, i32 0, i32 838, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.24, i32 11, i32 0, i32 0, i32 838, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.25, i32 11, i32 0, i32 0, i32 838, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.26, i32 11, i32 0, i32 0, i32 838, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.27, i32 11, i32 0, i32 0, i32 838, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.28, i32 11, i32 0, i32 0, i32 838, i32 3145728, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.29, i32 11, i32 0, i32 0, i32 838, i32 12582912, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.30, i32 11, i32 0, i32 0, i32 838, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.31, i32 11, i32 0, i32 0, i32 838, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.32, i32 11, i32 0, i32 0, i32 838, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.33, i32 11, i32 0, i32 0, i32 839, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.34, i32 11, i32 0, i32 0, i32 839, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.35, i32 11, i32 0, i32 0, i32 839, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.36, i32 11, i32 0, i32 0, i32 839, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.37, i32 11, i32 0, i32 0, i32 839, i32 49152, i32 14, i32 0, i32 0 }], [264 x i8] zeroinitializer }, align 32
@mmhub_v1_0_get_ras_error_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 723, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: MMHUB SubBlock %s, SEC %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mmhub_v1_0_get_ras_error_count\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmhub_v1_0_get_ras_error_count._entry_ptr = internal global ptr @mmhub_v1_0_get_ras_error_count._entry, section ".printk_index", align 4
@mmhub_v1_0_get_ras_error_count._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 734, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: MMHUB SubBlock %s, DED %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mmhub_v1_0_get_ras_error_count._entry_ptr.7 = internal global ptr @mmhub_v1_0_get_ras_error_count._entry.5, section ".printk_index", align 4
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
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA1_DRAMRD_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA1_DRAMWR_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA1_DRAMWR_DATAMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA1_RRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA1_WRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA1_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA1_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA1_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA1_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA1_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA1_GMIRD_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA1_GMIWR_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA1_GMIWR_DATAMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA1_GMIRD_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA1_GMIWR_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 19, i64 20, i64 21, i64 22, i64 24]
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"mmhub_v1_0_ras_funcs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 777, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"mmhub_v1_0_funcs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 784, i32 33 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"mmhub_v1_0_edc_cnt_regs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 698, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"mmhub_v1_0_ras_fields\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 575, i32 43 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 720, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 731, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 576, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 580, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 584, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 588, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 592, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 596, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 600, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 604, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 608, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 612, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 616, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 620, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 624, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 628, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 632, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 636, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 640, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 644, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 648, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 652, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 656, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 660, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 664, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 668, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 672, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 676, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 680, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 684, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 688, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 692, i32 4 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @mmhub_v1_0_get_ras_error_count._entry, ptr @mmhub_v1_0_get_ras_error_count._entry.5, ptr @mmhub_v1_0_get_ras_error_count._entry_ptr, ptr @mmhub_v1_0_get_ras_error_count._entry_ptr.7, ptr @mmhub_v1_0_ras_funcs, ptr @mmhub_v1_0_funcs, ptr @mmhub_v1_0_edc_cnt_regs, ptr @mmhub_v1_0_ras_fields, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_0_ras_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_0_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_0_edc_cnt_regs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_0_ras_fields to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_0_get_ras_error_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_0_get_ras_error_count._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_mmhub_ras_late_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mmhub_ras_fini(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v1_0_query_ras_error_count(ptr noundef %adev, ptr nocapture noundef %ras_error_status) #1 align 64 {
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
  %arrayidx = getelementptr [4 x %struct.soc15_reg_entry], ptr @mmhub_v1_0_edc_cnt_regs, i32 0, i32 %i.030
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inst = getelementptr [4 x %struct.soc15_reg_entry], ptr @mmhub_v1_0_edc_cnt_regs, i32 0, i32 %i.030, i32 1
  %4 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inst, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %3, i32 %5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %seg = getelementptr [4 x %struct.soc15_reg_entry], ptr @mmhub_v1_0_edc_cnt_regs, i32 0, i32 %i.030, i32 2
  %8 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seg, align 4
  %arrayidx5 = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %reg_offset7 = getelementptr [4 x %struct.soc15_reg_entry], ptr @mmhub_v1_0_edc_cnt_regs, i32 0, i32 %i.030, i32 3
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
  %arrayidx.i = getelementptr [30 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_0_ras_fields, i32 0, i32 %i.01.i
  %reg_offset.i = getelementptr [30 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_0_ras_fields, i32 0, i32 %i.01.i, i32 4
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
  %sec_count_mask.i = getelementptr [30 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_0_ras_fields, i32 0, i32 %i.01.i, i32 5
  %18 = ptrtoint ptr %sec_count_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sec_count_mask.i, align 4
  %and.i = and i32 %19, %call
  %sec_count_shift.i = getelementptr [30 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_0_ras_fields, i32 0, i32 %i.01.i, i32 6
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
  %ded_count_mask.i = getelementptr [30 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_0_ras_fields, i32 0, i32 %i.01.i, i32 7
  %26 = ptrtoint ptr %ded_count_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ded_count_mask.i, align 4
  %and9.i = and i32 %27, %call
  %ded_count_shift.i = getelementptr [30 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_0_ras_fields, i32 0, i32 %i.01.i, i32 8
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
  %exitcond.not.i = icmp eq i32 %inc.i, 30
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
  %exitcond.not = icmp eq i32 %inc, 4
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
define internal void @mmhub_v1_0_reset_ras_error_count(ptr noundef %adev) #1 align 64 {
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
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.if.end_crit_edge, label %for.body.preheader

amdgpu_ras_is_supported.exit.if.end_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.preheader:                               ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11, i32 0
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add = add i32 %8, 518
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #5
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add.1 = add i32 %12, 519
  %call8.1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.1, i32 noundef 0) #5
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add.2 = add i32 %16, 838
  %call8.2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.2, i32 noundef 0) #5
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add.3 = add i32 %20, 839
  %call8.3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.3, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %amdgpu_ras_is_supported.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mmhub_v1_0_get_fb_location(ptr noundef %adev) #1 align 64 {
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
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 2092
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 2092
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
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add43 = add i32 %23, 2093
  %call44 = tail call i32 %19(ptr noundef %adev, i32 noundef %add43, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end52

cond.false45:                                     ; preds = %land.lhs.true28.cond.false45_crit_edge, %land.lhs.true23.cond.false45_crit_edge, %cond.end.cond.false45_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add50 = add i32 %27, 2093
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mmhub_v1_0_init(ptr nocapture noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1
  %arrayidx1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 1835
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %arrayidx, align 4
  %5 = load i32, ptr %1, align 4
  %add8 = add i32 %5, 1836
  %ctx0_ptb_addr_hi32 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 1
  %6 = ptrtoint ptr %ctx0_ptb_addr_hi32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add8, ptr %ctx0_ptb_addr_hi32, align 4
  %7 = load i32, ptr %1, align 4
  %add13 = add i32 %7, 1745
  %vm_inv_eng0_sem = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 2
  %8 = ptrtoint ptr %vm_inv_eng0_sem to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add13, ptr %vm_inv_eng0_sem, align 4
  %9 = load i32, ptr %1, align 4
  %add18 = add i32 %9, 1763
  %vm_inv_eng0_req = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 3
  %10 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add18, ptr %vm_inv_eng0_req, align 4
  %11 = load i32, ptr %1, align 4
  %add23 = add i32 %11, 1781
  %vm_inv_eng0_ack = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 4
  %12 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add23, ptr %vm_inv_eng0_ack, align 4
  %13 = load i32, ptr %1, align 4
  %add28 = add i32 %13, 1728
  %vm_context0_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 5
  %14 = ptrtoint ptr %vm_context0_cntl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add28, ptr %vm_context0_cntl, align 4
  %15 = load i32, ptr %1, align 4
  %add33 = add i32 %15, 1675
  %vm_l2_pro_fault_status = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 6
  %16 = ptrtoint ptr %vm_l2_pro_fault_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add33, ptr %vm_l2_pro_fault_status, align 4
  %17 = load i32, ptr %1, align 4
  %add38 = add i32 %17, 1671
  %vm_l2_pro_fault_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 7
  %18 = ptrtoint ptr %vm_l2_pro_fault_cntl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add38, ptr %vm_l2_pro_fault_cntl, align 4
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
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmhub_v1_0_gart_enable(ptr noundef %adev) #1 align 64 {
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 2092
  %vram_start = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  %10 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vram_start, align 8
  %shr = lshr i64 %11, 24
  %conv = trunc i64 %shr to i32
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add21 = add i32 %15, 2092
  %vram_start23 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  %16 = ptrtoint ptr %vram_start23 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vram_start23, align 8
  %shr24 = lshr i64 %17, 24
  %conv25 = trunc i64 %shr24 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21, i32 noundef %conv25, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and28 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %cond.end.cond.false54_crit_edge, label %land.lhs.true30

cond.end.cond.false54_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54

land.lhs.true30:                                  ; preds = %cond.end
  %20 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs, align 4
  %tobool34.not = icmp eq ptr %21, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false54_crit_edge, label %land.lhs.true35

land.lhs.true30.cond.false54_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %sriov_wreg39 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg39, align 4
  %tobool40.not = icmp eq ptr %23, null
  br i1 %tobool40.not, label %land.lhs.true35.cond.false54_crit_edge, label %cond.true41

land.lhs.true35.cond.false54_crit_edge:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54

cond.true41:                                      ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add50 = add i32 %27, 2093
  %vram_end = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 11
  %28 = ptrtoint ptr %vram_end to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vram_end, align 8
  %shr52 = lshr i64 %29, 24
  %conv53 = trunc i64 %shr52 to i32
  tail call void %23(ptr noundef %adev, i32 noundef %add50, i32 noundef %conv53, i32 noundef 0, i32 noundef 11) #5
  br label %if.end

cond.false54:                                     ; preds = %land.lhs.true35.cond.false54_crit_edge, %land.lhs.true30.cond.false54_crit_edge, %cond.end.cond.false54_crit_edge
  %arrayidx56 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %30 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx56, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add59 = add i32 %33, 2093
  %vram_end61 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 11
  %34 = ptrtoint ptr %vram_end61 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %vram_end61, align 8
  %shr62 = lshr i64 %35, 24
  %conv63 = trunc i64 %shr62 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59, i32 noundef %conv63, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %cond.false54, %cond.true41, %entry.if.end_crit_edge
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %36 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gart.i, align 8
  %call.i = tail call i64 @amdgpu_gmc_pd_addr(ptr noundef %37) #5
  tail call void @mmhub_v1_0_setup_vm_pt_regs(ptr noundef %adev, i32 noundef 0, i64 noundef %call.i) #5
  %38 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %virt, align 8
  %and.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cond.false.i_crit_edge, label %land.lhs.true.i

if.end.cond.false.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %40 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %41, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool6.not.i = icmp eq ptr %43, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true2.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add.i = add i32 %47, 1867
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %48 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %gart_start.i, align 8
  %shr.i = lshr i64 %49, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void %43(ptr noundef %adev, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end.cond.false.i_crit_edge
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %50 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx14.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add17.i = add i32 %53, 1867
  %gart_start19.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %54 = ptrtoint ptr %gart_start19.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %gart_start19.i, align 8
  %shr20.i = lshr i64 %55, 12
  %conv21.i = trunc i64 %shr20.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef %conv21.i, i32 noundef 0) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %56 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt, align 8
  %and24.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %cond.end.i.cond.false51.i_crit_edge, label %land.lhs.true26.i

cond.end.i.cond.false51.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false51.i

land.lhs.true26.i:                                ; preds = %cond.end.i
  %funcs29.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %58 = ptrtoint ptr %funcs29.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs29.i, align 4
  %tobool30.not.i = icmp eq ptr %59, null
  br i1 %tobool30.not.i, label %land.lhs.true26.i.cond.false51.i_crit_edge, label %land.lhs.true31.i

land.lhs.true26.i.cond.false51.i_crit_edge:       ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false51.i

land.lhs.true31.i:                                ; preds = %land.lhs.true26.i
  %sriov_wreg35.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %sriov_wreg35.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sriov_wreg35.i, align 4
  %tobool36.not.i = icmp eq ptr %61, null
  br i1 %tobool36.not.i, label %land.lhs.true31.i.cond.false51.i_crit_edge, label %cond.true37.i

land.lhs.true31.i.cond.false51.i_crit_edge:       ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false51.i

cond.true37.i:                                    ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx43.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %62 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx43.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add46.i = add i32 %65, 1868
  %gart_start48.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %66 = ptrtoint ptr %gart_start48.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %gart_start48.i, align 8
  %shr49.i = lshr i64 %67, 44
  %conv50.i = trunc i64 %shr49.i to i32
  tail call void %61(ptr noundef %adev, i32 noundef %add46.i, i32 noundef %conv50.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end61.i

cond.false51.i:                                   ; preds = %land.lhs.true31.i.cond.false51.i_crit_edge, %land.lhs.true26.i.cond.false51.i_crit_edge, %cond.end.i.cond.false51.i_crit_edge
  %arrayidx53.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %68 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx53.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add56.i = add i32 %71, 1868
  %gart_start58.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %72 = ptrtoint ptr %gart_start58.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %gart_start58.i, align 8
  %shr59.i = lshr i64 %73, 44
  %conv60.i = trunc i64 %shr59.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add56.i, i32 noundef %conv60.i, i32 noundef 0) #5
  br label %cond.end61.i

cond.end61.i:                                     ; preds = %cond.false51.i, %cond.true37.i
  %74 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %virt, align 8
  %and64.i = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %cond.end61.i.cond.false90.i_crit_edge, label %land.lhs.true66.i

cond.end61.i.cond.false90.i_crit_edge:            ; preds = %cond.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false90.i

land.lhs.true66.i:                                ; preds = %cond.end61.i
  %funcs69.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %76 = ptrtoint ptr %funcs69.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %funcs69.i, align 4
  %tobool70.not.i = icmp eq ptr %77, null
  br i1 %tobool70.not.i, label %land.lhs.true66.i.cond.false90.i_crit_edge, label %land.lhs.true71.i

land.lhs.true66.i.cond.false90.i_crit_edge:       ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false90.i

land.lhs.true71.i:                                ; preds = %land.lhs.true66.i
  %sriov_wreg75.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %sriov_wreg75.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sriov_wreg75.i, align 4
  %tobool76.not.i = icmp eq ptr %79, null
  br i1 %tobool76.not.i, label %land.lhs.true71.i.cond.false90.i_crit_edge, label %cond.true77.i

land.lhs.true71.i.cond.false90.i_crit_edge:       ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false90.i

cond.true77.i:                                    ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx83.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %80 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx83.i, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add86.i = add i32 %83, 1899
  %gart_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %84 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %gart_end.i, align 8
  %shr88.i = lshr i64 %85, 12
  %conv89.i = trunc i64 %shr88.i to i32
  tail call void %79(ptr noundef %adev, i32 noundef %add86.i, i32 noundef %conv89.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end100.i

cond.false90.i:                                   ; preds = %land.lhs.true71.i.cond.false90.i_crit_edge, %land.lhs.true66.i.cond.false90.i_crit_edge, %cond.end61.i.cond.false90.i_crit_edge
  %arrayidx92.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %86 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx92.i, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add95.i = add i32 %89, 1899
  %gart_end97.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %90 = ptrtoint ptr %gart_end97.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %gart_end97.i, align 8
  %shr98.i = lshr i64 %91, 12
  %conv99.i = trunc i64 %shr98.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add95.i, i32 noundef %conv99.i, i32 noundef 0) #5
  br label %cond.end100.i

cond.end100.i:                                    ; preds = %cond.false90.i, %cond.true77.i
  %92 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %virt, align 8
  %and103.i = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %cond.end100.i.cond.false130.i_crit_edge, label %land.lhs.true105.i

cond.end100.i.cond.false130.i_crit_edge:          ; preds = %cond.end100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false130.i

land.lhs.true105.i:                               ; preds = %cond.end100.i
  %funcs108.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %94 = ptrtoint ptr %funcs108.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %funcs108.i, align 4
  %tobool109.not.i = icmp eq ptr %95, null
  br i1 %tobool109.not.i, label %land.lhs.true105.i.cond.false130.i_crit_edge, label %land.lhs.true110.i

land.lhs.true105.i.cond.false130.i_crit_edge:     ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false130.i

land.lhs.true110.i:                               ; preds = %land.lhs.true105.i
  %sriov_wreg114.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %sriov_wreg114.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sriov_wreg114.i, align 4
  %tobool115.not.i = icmp eq ptr %97, null
  br i1 %tobool115.not.i, label %land.lhs.true110.i.cond.false130.i_crit_edge, label %cond.true116.i

land.lhs.true110.i.cond.false130.i_crit_edge:     ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false130.i

cond.true116.i:                                   ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx122.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %98 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx122.i, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add125.i = add i32 %101, 1900
  %gart_end127.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %102 = ptrtoint ptr %gart_end127.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %gart_end127.i, align 8
  %shr128.i = lshr i64 %103, 44
  %conv129.i = trunc i64 %shr128.i to i32
  tail call void %97(ptr noundef %adev, i32 noundef %add125.i, i32 noundef %conv129.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_0_init_gart_aperture_regs.exit

cond.false130.i:                                  ; preds = %land.lhs.true110.i.cond.false130.i_crit_edge, %land.lhs.true105.i.cond.false130.i_crit_edge, %cond.end100.i.cond.false130.i_crit_edge
  %arrayidx132.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %104 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx132.i, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %add135.i = add i32 %107, 1900
  %gart_end137.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %108 = ptrtoint ptr %gart_end137.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %gart_end137.i, align 8
  %shr138.i = lshr i64 %109, 44
  %conv139.i = trunc i64 %shr138.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add135.i, i32 noundef %conv139.i, i32 noundef 0) #5
  br label %mmhub_v1_0_init_gart_aperture_regs.exit

mmhub_v1_0_init_gart_aperture_regs.exit:          ; preds = %cond.false130.i, %cond.true116.i
  %110 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %virt, align 8
  %and.i97 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool.not.i98 = icmp eq i32 %and.i97, 0
  br i1 %tobool.not.i98, label %mmhub_v1_0_init_gart_aperture_regs.exit.cond.false.i110_crit_edge, label %land.lhs.true.i101

mmhub_v1_0_init_gart_aperture_regs.exit.cond.false.i110_crit_edge: ; preds = %mmhub_v1_0_init_gart_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i110

land.lhs.true.i101:                               ; preds = %mmhub_v1_0_init_gart_aperture_regs.exit
  %funcs.i99 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %112 = ptrtoint ptr %funcs.i99 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %funcs.i99, align 4
  %tobool1.not.i100 = icmp eq ptr %113, null
  br i1 %tobool1.not.i100, label %land.lhs.true.i101.cond.false.i110_crit_edge, label %land.lhs.true2.i104

land.lhs.true.i101.cond.false.i110_crit_edge:     ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i110

land.lhs.true2.i104:                              ; preds = %land.lhs.true.i101
  %sriov_wreg.i102 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %113, i32 0, i32 12
  %114 = ptrtoint ptr %sriov_wreg.i102 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sriov_wreg.i102, align 4
  %tobool6.not.i103 = icmp eq ptr %115, null
  br i1 %tobool6.not.i103, label %land.lhs.true2.i104.cond.false.i110_crit_edge, label %cond.true.i107

land.lhs.true2.i104.cond.false.i110_crit_edge:    ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i110

cond.true.i107:                                   ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i105 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %116 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i105, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  %add.i106 = add i32 %119, 2096
  tail call void %115(ptr noundef %adev, i32 noundef %add.i106, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i111

cond.false.i110:                                  ; preds = %land.lhs.true2.i104.cond.false.i110_crit_edge, %land.lhs.true.i101.cond.false.i110_crit_edge, %mmhub_v1_0_init_gart_aperture_regs.exit.cond.false.i110_crit_edge
  %arrayidx14.i108 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %120 = ptrtoint ptr %arrayidx14.i108 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx14.i108, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %add17.i109 = add i32 %123, 2096
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i109, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end.i111

cond.end.i111:                                    ; preds = %cond.false.i110, %cond.true.i107
  %124 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %virt, align 8
  %and20.i = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %cond.end.i111.cond.false43.i_crit_edge, label %land.lhs.true22.i

cond.end.i111.cond.false43.i_crit_edge:           ; preds = %cond.end.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43.i

land.lhs.true22.i:                                ; preds = %cond.end.i111
  %funcs25.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %126 = ptrtoint ptr %funcs25.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %funcs25.i, align 4
  %tobool26.not.i = icmp eq ptr %127, null
  br i1 %tobool26.not.i, label %land.lhs.true22.i.cond.false43.i_crit_edge, label %land.lhs.true27.i

land.lhs.true22.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43.i

land.lhs.true27.i:                                ; preds = %land.lhs.true22.i
  %sriov_wreg31.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %127, i32 0, i32 12
  %128 = ptrtoint ptr %sriov_wreg31.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sriov_wreg31.i, align 4
  %tobool32.not.i = icmp eq ptr %129, null
  br i1 %tobool32.not.i, label %land.lhs.true27.i.cond.false43.i_crit_edge, label %cond.true33.i

land.lhs.true27.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43.i

cond.true33.i:                                    ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx39.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %130 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx39.i, align 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %add42.i = add i32 %133, 2095
  %agp_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %134 = ptrtoint ptr %agp_start.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %agp_start.i, align 8
  %shr.i112 = lshr i64 %135, 24
  %conv.i113 = trunc i64 %shr.i112 to i32
  tail call void %129(ptr noundef %adev, i32 noundef %add42.i, i32 noundef %conv.i113, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end53.i

cond.false43.i:                                   ; preds = %land.lhs.true27.i.cond.false43.i_crit_edge, %land.lhs.true22.i.cond.false43.i_crit_edge, %cond.end.i111.cond.false43.i_crit_edge
  %arrayidx45.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %136 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx45.i, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  %add48.i = add i32 %139, 2095
  %agp_start50.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %140 = ptrtoint ptr %agp_start50.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %agp_start50.i, align 8
  %shr51.i = lshr i64 %141, 24
  %conv52.i = trunc i64 %shr51.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48.i, i32 noundef %conv52.i, i32 noundef 0) #5
  br label %cond.end53.i

cond.end53.i:                                     ; preds = %cond.false43.i, %cond.true33.i
  %142 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %virt, align 8
  %and56.i = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %cond.end53.i.cond.false82.i_crit_edge, label %land.lhs.true58.i

cond.end53.i.cond.false82.i_crit_edge:            ; preds = %cond.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false82.i

land.lhs.true58.i:                                ; preds = %cond.end53.i
  %funcs61.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %144 = ptrtoint ptr %funcs61.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %funcs61.i, align 4
  %tobool62.not.i = icmp eq ptr %145, null
  br i1 %tobool62.not.i, label %land.lhs.true58.i.cond.false82.i_crit_edge, label %land.lhs.true63.i

land.lhs.true58.i.cond.false82.i_crit_edge:       ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false82.i

land.lhs.true63.i:                                ; preds = %land.lhs.true58.i
  %sriov_wreg67.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %145, i32 0, i32 12
  %146 = ptrtoint ptr %sriov_wreg67.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sriov_wreg67.i, align 4
  %tobool68.not.i = icmp eq ptr %147, null
  br i1 %tobool68.not.i, label %land.lhs.true63.i.cond.false82.i_crit_edge, label %cond.true69.i

land.lhs.true63.i.cond.false82.i_crit_edge:       ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false82.i

cond.true69.i:                                    ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx75.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %148 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx75.i, align 8
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %add78.i = add i32 %151, 2094
  %agp_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %152 = ptrtoint ptr %agp_end.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %agp_end.i, align 8
  %shr80.i = lshr i64 %153, 24
  %conv81.i = trunc i64 %shr80.i to i32
  tail call void %147(ptr noundef %adev, i32 noundef %add78.i, i32 noundef %conv81.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end92.i

cond.false82.i:                                   ; preds = %land.lhs.true63.i.cond.false82.i_crit_edge, %land.lhs.true58.i.cond.false82.i_crit_edge, %cond.end53.i.cond.false82.i_crit_edge
  %arrayidx84.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %154 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx84.i, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  %add87.i = add i32 %157, 2094
  %agp_end89.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %158 = ptrtoint ptr %agp_end89.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %agp_end89.i, align 8
  %shr90.i = lshr i64 %159, 24
  %conv91.i = trunc i64 %shr90.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add87.i, i32 noundef %conv91.i, i32 noundef 0) #5
  br label %cond.end92.i

cond.end92.i:                                     ; preds = %cond.false82.i, %cond.true69.i
  %160 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %virt, align 8
  %and95.i = and i32 %161, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %cond.end92.i.cond.false128.i_crit_edge, label %land.lhs.true97.i

cond.end92.i.cond.false128.i_crit_edge:           ; preds = %cond.end92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false128.i

land.lhs.true97.i:                                ; preds = %cond.end92.i
  %funcs100.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %162 = ptrtoint ptr %funcs100.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %funcs100.i, align 4
  %tobool101.not.i = icmp eq ptr %163, null
  br i1 %tobool101.not.i, label %land.lhs.true97.i.cond.false128.i_crit_edge, label %land.lhs.true102.i

land.lhs.true97.i.cond.false128.i_crit_edge:      ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false128.i

land.lhs.true102.i:                               ; preds = %land.lhs.true97.i
  %sriov_wreg106.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %163, i32 0, i32 12
  %164 = ptrtoint ptr %sriov_wreg106.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sriov_wreg106.i, align 4
  %tobool107.not.i = icmp eq ptr %165, null
  br i1 %tobool107.not.i, label %land.lhs.true102.i.cond.false128.i_crit_edge, label %cond.true108.i

land.lhs.true102.i.cond.false128.i_crit_edge:     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false128.i

cond.true108.i:                                   ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx114.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %166 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx114.i, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 4
  %add117.i = add i32 %169, 2097
  %fb_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %170 = ptrtoint ptr %fb_start.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %fb_start.i, align 8
  %agp_start120.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %172 = ptrtoint ptr %agp_start120.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %agp_start120.i, align 8
  %174 = tail call i64 @llvm.umin.i64(i64 %171, i64 %173) #5
  %cond.off18.v.i = lshr i64 %174, 18
  %cond.off18.i = trunc i64 %cond.off18.v.i to i32
  tail call void %165(ptr noundef %adev, i32 noundef %add117.i, i32 noundef %cond.off18.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end149.i

cond.false128.i:                                  ; preds = %land.lhs.true102.i.cond.false128.i_crit_edge, %land.lhs.true97.i.cond.false128.i_crit_edge, %cond.end92.i.cond.false128.i_crit_edge
  %arrayidx130.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %175 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx130.i, align 8
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %176, align 4
  %add133.i = add i32 %178, 2097
  %fb_start136.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %179 = ptrtoint ptr %fb_start136.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %fb_start136.i, align 8
  %agp_start139.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %181 = ptrtoint ptr %agp_start139.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %agp_start139.i, align 8
  %183 = tail call i64 @llvm.umin.i64(i64 %180, i64 %182) #5
  %cond146.off18.v.i = lshr i64 %183, 18
  %cond146.off18.i = trunc i64 %cond146.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add133.i, i32 noundef %cond146.off18.i, i32 noundef 0) #5
  br label %cond.end149.i

cond.end149.i:                                    ; preds = %cond.false128.i, %cond.true108.i
  %apu_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 10
  %184 = ptrtoint ptr %apu_flags.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %apu_flags.i, align 4
  %and150.i = and i32 %185, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  %186 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %virt, align 8
  %and217.i = and i32 %187, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217.i)
  %tobool218.not.i = icmp eq i32 %and217.i, 0
  br i1 %tobool151.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end149.i
  br i1 %tobool218.not.i, label %if.then.i.cond.false191.i_crit_edge, label %land.lhs.true156.i

if.then.i.cond.false191.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false191.i

land.lhs.true156.i:                               ; preds = %if.then.i
  %funcs159.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %188 = ptrtoint ptr %funcs159.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %funcs159.i, align 4
  %tobool160.not.i = icmp eq ptr %189, null
  br i1 %tobool160.not.i, label %land.lhs.true156.i.cond.false191.i_crit_edge, label %land.lhs.true161.i

land.lhs.true156.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true156.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false191.i

land.lhs.true161.i:                               ; preds = %land.lhs.true156.i
  %sriov_wreg165.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %189, i32 0, i32 12
  %190 = ptrtoint ptr %sriov_wreg165.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %sriov_wreg165.i, align 4
  %tobool166.not.i = icmp eq ptr %191, null
  br i1 %tobool166.not.i, label %land.lhs.true161.i.cond.false191.i_crit_edge, label %cond.true167.i

land.lhs.true161.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false191.i

cond.true167.i:                                   ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx173.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %192 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx173.i, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %193, align 4
  %add176.i = add i32 %195, 2098
  %fb_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %196 = ptrtoint ptr %fb_end.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %fb_end.i, align 8
  %shr178.i = lshr i64 %197, 18
  %agp_end181.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %198 = ptrtoint ptr %agp_end181.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %agp_end181.i, align 8
  %shr182.i = lshr i64 %199, 18
  call void @__sanitizer_cov_trace_cmp8(i64 %shr178.i, i64 %shr182.i)
  %cmp184.not.i = icmp ult i64 %shr178.i, %shr182.i
  %200 = trunc i64 %shr178.i to i32
  %extract.t675.i = add i32 %200, 1
  %extract.t676.i = trunc i64 %shr182.i to i32
  %cond189.off0.i = select i1 %cmp184.not.i, i32 %extract.t676.i, i32 %extract.t675.i
  tail call void %191(ptr noundef %adev, i32 noundef %add176.i, i32 noundef %cond189.off0.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end.i

cond.false191.i:                                  ; preds = %land.lhs.true161.i.cond.false191.i_crit_edge, %land.lhs.true156.i.cond.false191.i_crit_edge, %if.then.i.cond.false191.i_crit_edge
  %arrayidx193.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %201 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx193.i, align 8
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 4
  %add196.i = add i32 %204, 2098
  %fb_end199.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %205 = ptrtoint ptr %fb_end199.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %fb_end199.i, align 8
  %shr200.i = lshr i64 %206, 18
  %agp_end204.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %207 = ptrtoint ptr %agp_end204.i to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %agp_end204.i, align 8
  %shr205.i = lshr i64 %208, 18
  call void @__sanitizer_cov_trace_cmp8(i64 %shr200.i, i64 %shr205.i)
  %cmp207.not.i = icmp ult i64 %shr200.i, %shr205.i
  %209 = trunc i64 %shr200.i to i32
  %extract.t673.i = add i32 %209, 1
  %extract.t674.i = trunc i64 %shr205.i to i32
  %cond212.off0.i = select i1 %cmp207.not.i, i32 %extract.t674.i, i32 %extract.t673.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add196.i, i32 noundef %cond212.off0.i, i32 noundef 0) #5
  br label %if.end.i

if.else.i:                                        ; preds = %cond.end149.i
  br i1 %tobool218.not.i, label %if.else.i.cond.false253.i_crit_edge, label %land.lhs.true219.i

if.else.i.cond.false253.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false253.i

land.lhs.true219.i:                               ; preds = %if.else.i
  %funcs222.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %210 = ptrtoint ptr %funcs222.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %funcs222.i, align 4
  %tobool223.not.i = icmp eq ptr %211, null
  br i1 %tobool223.not.i, label %land.lhs.true219.i.cond.false253.i_crit_edge, label %land.lhs.true224.i

land.lhs.true219.i.cond.false253.i_crit_edge:     ; preds = %land.lhs.true219.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false253.i

land.lhs.true224.i:                               ; preds = %land.lhs.true219.i
  %sriov_wreg228.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %211, i32 0, i32 12
  %212 = ptrtoint ptr %sriov_wreg228.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %sriov_wreg228.i, align 4
  %tobool229.not.i = icmp eq ptr %213, null
  br i1 %tobool229.not.i, label %land.lhs.true224.i.cond.false253.i_crit_edge, label %cond.true230.i

land.lhs.true224.i.cond.false253.i_crit_edge:     ; preds = %land.lhs.true224.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false253.i

cond.true230.i:                                   ; preds = %land.lhs.true224.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx236.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %214 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx236.i, align 8
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 4
  %add239.i = add i32 %217, 2098
  %fb_end241.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %218 = ptrtoint ptr %fb_end241.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %fb_end241.i, align 8
  %agp_end243.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %220 = ptrtoint ptr %agp_end243.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %agp_end243.i, align 8
  %222 = tail call i64 @llvm.umax.i64(i64 %219, i64 %221) #5
  %cond250.off18.v.i = lshr i64 %222, 18
  %cond250.off18.i = trunc i64 %cond250.off18.v.i to i32
  tail call void %213(ptr noundef %adev, i32 noundef %add239.i, i32 noundef %cond250.off18.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end.i

cond.false253.i:                                  ; preds = %land.lhs.true224.i.cond.false253.i_crit_edge, %land.lhs.true219.i.cond.false253.i_crit_edge, %if.else.i.cond.false253.i_crit_edge
  %arrayidx255.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %223 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx255.i, align 8
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %224, align 4
  %add258.i = add i32 %226, 2098
  %fb_end261.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %227 = ptrtoint ptr %fb_end261.i to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %fb_end261.i, align 8
  %agp_end264.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %229 = ptrtoint ptr %agp_end264.i to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %agp_end264.i, align 8
  %231 = tail call i64 @llvm.umax.i64(i64 %228, i64 %230) #5
  %cond271.off18.v.i = lshr i64 %231, 18
  %cond271.off18.i = trunc i64 %cond271.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add258.i, i32 noundef %cond271.off18.i, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false253.i, %cond.true230.i, %cond.false191.i, %cond.true167.i
  %232 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %virt, align 8
  %and277.i = and i32 %233, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277.i)
  %tobool278.not.i = icmp eq i32 %and277.i, 0
  br i1 %tobool278.not.i, label %if.end280.i, label %if.end.i.mmhub_v1_0_init_system_aperture_regs.exit_crit_edge

if.end.i.mmhub_v1_0_init_system_aperture_regs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmhub_v1_0_init_system_aperture_regs.exit

if.end280.i:                                      ; preds = %if.end.i
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 69, i32 2
  %234 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %gpu_addr.i, align 8
  %call.i114 = tail call i64 @amdgpu_gmc_vram_mc2pa(ptr noundef %adev, i64 noundef %235) #5
  %236 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %virt, align 8
  %and283.i = and i32 %237, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283.i)
  %tobool284.not.i = icmp eq i32 %and283.i, 0
  br i1 %tobool284.not.i, label %if.end280.i.cond.false308.i_crit_edge, label %land.lhs.true285.i

if.end280.i.cond.false308.i_crit_edge:            ; preds = %if.end280.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false308.i

land.lhs.true285.i:                               ; preds = %if.end280.i
  %funcs288.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %238 = ptrtoint ptr %funcs288.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %funcs288.i, align 4
  %tobool289.not.i = icmp eq ptr %239, null
  br i1 %tobool289.not.i, label %land.lhs.true285.i.cond.false308.i_crit_edge, label %land.lhs.true290.i

land.lhs.true285.i.cond.false308.i_crit_edge:     ; preds = %land.lhs.true285.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false308.i

land.lhs.true290.i:                               ; preds = %land.lhs.true285.i
  %sriov_wreg294.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %239, i32 0, i32 12
  %240 = ptrtoint ptr %sriov_wreg294.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %sriov_wreg294.i, align 4
  %tobool295.not.i = icmp eq ptr %241, null
  br i1 %tobool295.not.i, label %land.lhs.true290.i.cond.false308.i_crit_edge, label %cond.true296.i

land.lhs.true290.i.cond.false308.i_crit_edge:     ; preds = %land.lhs.true290.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false308.i

cond.true296.i:                                   ; preds = %land.lhs.true290.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx302.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %242 = ptrtoint ptr %arrayidx302.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %arrayidx302.i, align 8
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %243, align 4
  %add305.i = add i32 %245, 2072
  %shr306.i = lshr i64 %call.i114, 12
  %conv307.i = trunc i64 %shr306.i to i32
  tail call void %241(ptr noundef %adev, i32 noundef %add305.i, i32 noundef %conv307.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end316.i

cond.false308.i:                                  ; preds = %land.lhs.true290.i.cond.false308.i_crit_edge, %land.lhs.true285.i.cond.false308.i_crit_edge, %if.end280.i.cond.false308.i_crit_edge
  %arrayidx310.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %246 = ptrtoint ptr %arrayidx310.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx310.i, align 8
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %247, align 4
  %add313.i = add i32 %249, 2072
  %shr314.i = lshr i64 %call.i114, 12
  %conv315.i = trunc i64 %shr314.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add313.i, i32 noundef %conv315.i, i32 noundef 0) #5
  br label %cond.end316.i

cond.end316.i:                                    ; preds = %cond.false308.i, %cond.true296.i
  %250 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %virt, align 8
  %and319.i = and i32 %251, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319.i)
  %tobool320.not.i = icmp eq i32 %and319.i, 0
  br i1 %tobool320.not.i, label %cond.end316.i.cond.false344.i_crit_edge, label %land.lhs.true321.i

cond.end316.i.cond.false344.i_crit_edge:          ; preds = %cond.end316.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false344.i

land.lhs.true321.i:                               ; preds = %cond.end316.i
  %funcs324.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %252 = ptrtoint ptr %funcs324.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %funcs324.i, align 4
  %tobool325.not.i = icmp eq ptr %253, null
  br i1 %tobool325.not.i, label %land.lhs.true321.i.cond.false344.i_crit_edge, label %land.lhs.true326.i

land.lhs.true321.i.cond.false344.i_crit_edge:     ; preds = %land.lhs.true321.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false344.i

land.lhs.true326.i:                               ; preds = %land.lhs.true321.i
  %sriov_wreg330.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %253, i32 0, i32 12
  %254 = ptrtoint ptr %sriov_wreg330.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %sriov_wreg330.i, align 4
  %tobool331.not.i = icmp eq ptr %255, null
  br i1 %tobool331.not.i, label %land.lhs.true326.i.cond.false344.i_crit_edge, label %cond.true332.i

land.lhs.true326.i.cond.false344.i_crit_edge:     ; preds = %land.lhs.true326.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false344.i

cond.true332.i:                                   ; preds = %land.lhs.true326.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx338.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %256 = ptrtoint ptr %arrayidx338.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx338.i, align 8
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %257, align 4
  %add341.i = add i32 %259, 2073
  %shr342.i = lshr i64 %call.i114, 44
  %conv343.i = trunc i64 %shr342.i to i32
  tail call void %255(ptr noundef %adev, i32 noundef %add341.i, i32 noundef %conv343.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end352.i

cond.false344.i:                                  ; preds = %land.lhs.true326.i.cond.false344.i_crit_edge, %land.lhs.true321.i.cond.false344.i_crit_edge, %cond.end316.i.cond.false344.i_crit_edge
  %arrayidx346.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %260 = ptrtoint ptr %arrayidx346.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx346.i, align 8
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %261, align 4
  %add349.i = add i32 %263, 2073
  %shr350.i = lshr i64 %call.i114, 44
  %conv351.i = trunc i64 %shr350.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add349.i, i32 noundef %conv351.i, i32 noundef 0) #5
  br label %cond.end352.i

cond.end352.i:                                    ; preds = %cond.false344.i, %cond.true332.i
  %264 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %virt, align 8
  %and355.i = and i32 %265, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355.i)
  %tobool356.not.i = icmp eq i32 %and355.i, 0
  br i1 %tobool356.not.i, label %cond.end352.i.cond.false379.i_crit_edge, label %land.lhs.true357.i

cond.end352.i.cond.false379.i_crit_edge:          ; preds = %cond.end352.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false379.i

land.lhs.true357.i:                               ; preds = %cond.end352.i
  %funcs360.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %266 = ptrtoint ptr %funcs360.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %funcs360.i, align 4
  %tobool361.not.i = icmp eq ptr %267, null
  br i1 %tobool361.not.i, label %land.lhs.true357.i.cond.false379.i_crit_edge, label %land.lhs.true362.i

land.lhs.true357.i.cond.false379.i_crit_edge:     ; preds = %land.lhs.true357.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false379.i

land.lhs.true362.i:                               ; preds = %land.lhs.true357.i
  %sriov_wreg366.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %267, i32 0, i32 12
  %268 = ptrtoint ptr %sriov_wreg366.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %sriov_wreg366.i, align 4
  %tobool367.not.i = icmp eq ptr %269, null
  br i1 %tobool367.not.i, label %land.lhs.true362.i.cond.false379.i_crit_edge, label %cond.true368.i

land.lhs.true362.i.cond.false379.i_crit_edge:     ; preds = %land.lhs.true362.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false379.i

cond.true368.i:                                   ; preds = %land.lhs.true362.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx374.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %270 = ptrtoint ptr %arrayidx374.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx374.i, align 8
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %271, align 4
  %add377.i = add i32 %273, 1678
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %274 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %dummy_page_addr.i, align 8
  %shr378.i = lshr i32 %275, 12
  tail call void %269(ptr noundef %adev, i32 noundef %add377.i, i32 noundef %shr378.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end387.i

cond.false379.i:                                  ; preds = %land.lhs.true362.i.cond.false379.i_crit_edge, %land.lhs.true357.i.cond.false379.i_crit_edge, %cond.end352.i.cond.false379.i_crit_edge
  %arrayidx381.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %276 = ptrtoint ptr %arrayidx381.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx381.i, align 8
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %277, align 4
  %add384.i = add i32 %279, 1678
  %dummy_page_addr385.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %280 = ptrtoint ptr %dummy_page_addr385.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %dummy_page_addr385.i, align 8
  %shr386.i = lshr i32 %281, 12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add384.i, i32 noundef %shr386.i, i32 noundef 0) #5
  br label %cond.end387.i

cond.end387.i:                                    ; preds = %cond.false379.i, %cond.true368.i
  %282 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %virt, align 8
  %and390.i = and i32 %283, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390.i)
  %tobool391.not.i = icmp eq i32 %and390.i, 0
  br i1 %tobool391.not.i, label %cond.end387.i.cond.false417.i_crit_edge, label %land.lhs.true392.i

cond.end387.i.cond.false417.i_crit_edge:          ; preds = %cond.end387.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false417.i

land.lhs.true392.i:                               ; preds = %cond.end387.i
  %funcs395.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %284 = ptrtoint ptr %funcs395.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %funcs395.i, align 4
  %tobool396.not.i = icmp eq ptr %285, null
  br i1 %tobool396.not.i, label %land.lhs.true392.i.cond.false417.i_crit_edge, label %land.lhs.true397.i

land.lhs.true392.i.cond.false417.i_crit_edge:     ; preds = %land.lhs.true392.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false417.i

land.lhs.true397.i:                               ; preds = %land.lhs.true392.i
  %sriov_wreg401.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %285, i32 0, i32 12
  %286 = ptrtoint ptr %sriov_wreg401.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %sriov_wreg401.i, align 4
  %tobool402.not.i = icmp eq ptr %287, null
  br i1 %tobool402.not.i, label %land.lhs.true397.i.cond.false417.i_crit_edge, label %cond.true403.i

land.lhs.true397.i.cond.false417.i_crit_edge:     ; preds = %land.lhs.true397.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false417.i

cond.true403.i:                                   ; preds = %land.lhs.true397.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx409.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %288 = ptrtoint ptr %arrayidx409.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx409.i, align 8
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %289, align 4
  %add412.i = add i32 %291, 1679
  tail call void %287(ptr noundef %adev, i32 noundef %add412.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end427.i

cond.false417.i:                                  ; preds = %land.lhs.true397.i.cond.false417.i_crit_edge, %land.lhs.true392.i.cond.false417.i_crit_edge, %cond.end387.i.cond.false417.i_crit_edge
  %arrayidx419.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %292 = ptrtoint ptr %arrayidx419.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx419.i, align 8
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %293, align 4
  %add422.i = add i32 %295, 1679
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add422.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end427.i

cond.end427.i:                                    ; preds = %cond.false417.i, %cond.true403.i
  %296 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %virt, align 8
  %and430.i = and i32 %297, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and430.i)
  %tobool431.not.i = icmp eq i32 %and430.i, 0
  br i1 %tobool431.not.i, label %cond.end427.i.cond.false453.i_crit_edge, label %land.lhs.true432.i

cond.end427.i.cond.false453.i_crit_edge:          ; preds = %cond.end427.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false453.i

land.lhs.true432.i:                               ; preds = %cond.end427.i
  %funcs435.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %298 = ptrtoint ptr %funcs435.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %funcs435.i, align 4
  %tobool436.not.i = icmp eq ptr %299, null
  br i1 %tobool436.not.i, label %land.lhs.true432.i.cond.false453.i_crit_edge, label %land.lhs.true437.i

land.lhs.true432.i.cond.false453.i_crit_edge:     ; preds = %land.lhs.true432.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false453.i

land.lhs.true437.i:                               ; preds = %land.lhs.true432.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %299, i32 0, i32 13
  %300 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool441.not.i = icmp eq ptr %301, null
  br i1 %tobool441.not.i, label %land.lhs.true437.i.cond.false453.i_crit_edge, label %cond.true442.i

land.lhs.true437.i.cond.false453.i_crit_edge:     ; preds = %land.lhs.true437.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false453.i

cond.true442.i:                                   ; preds = %land.lhs.true437.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx448.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %302 = ptrtoint ptr %arrayidx448.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx448.i, align 8
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %303, align 4
  %add451.i = add i32 %305, 1672
  %call452.i = tail call i32 %301(ptr noundef %adev, i32 noundef %add451.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end460.i

cond.false453.i:                                  ; preds = %land.lhs.true437.i.cond.false453.i_crit_edge, %land.lhs.true432.i.cond.false453.i_crit_edge, %cond.end427.i.cond.false453.i_crit_edge
  %arrayidx455.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %306 = ptrtoint ptr %arrayidx455.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %arrayidx455.i, align 8
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %307, align 4
  %add458.i = add i32 %309, 1672
  %call459.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add458.i, i32 noundef 0) #5
  br label %cond.end460.i

cond.end460.i:                                    ; preds = %cond.false453.i, %cond.true442.i
  %cond461.i = phi i32 [ %call452.i, %cond.true442.i ], [ %call459.i, %cond.false453.i ]
  %or.i = or i32 %cond461.i, 262144
  %310 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %virt, align 8
  %and465.i = and i32 %311, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and465.i)
  %tobool466.not.i = icmp eq i32 %and465.i, 0
  br i1 %tobool466.not.i, label %cond.end460.i.cond.false488.i_crit_edge, label %land.lhs.true467.i

cond.end460.i.cond.false488.i_crit_edge:          ; preds = %cond.end460.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false488.i

land.lhs.true467.i:                               ; preds = %cond.end460.i
  %funcs470.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %312 = ptrtoint ptr %funcs470.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %funcs470.i, align 4
  %tobool471.not.i = icmp eq ptr %313, null
  br i1 %tobool471.not.i, label %land.lhs.true467.i.cond.false488.i_crit_edge, label %land.lhs.true472.i

land.lhs.true467.i.cond.false488.i_crit_edge:     ; preds = %land.lhs.true467.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false488.i

land.lhs.true472.i:                               ; preds = %land.lhs.true467.i
  %sriov_wreg476.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %313, i32 0, i32 12
  %314 = ptrtoint ptr %sriov_wreg476.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %sriov_wreg476.i, align 4
  %tobool477.not.i = icmp eq ptr %315, null
  br i1 %tobool477.not.i, label %land.lhs.true472.i.cond.false488.i_crit_edge, label %cond.true478.i

land.lhs.true472.i.cond.false488.i_crit_edge:     ; preds = %land.lhs.true472.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false488.i

cond.true478.i:                                   ; preds = %land.lhs.true472.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx484.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %316 = ptrtoint ptr %arrayidx484.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx484.i, align 8
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %317, align 4
  %add487.i = add i32 %319, 1672
  tail call void %315(ptr noundef %adev, i32 noundef %add487.i, i32 noundef %or.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_0_init_system_aperture_regs.exit

cond.false488.i:                                  ; preds = %land.lhs.true472.i.cond.false488.i_crit_edge, %land.lhs.true467.i.cond.false488.i_crit_edge, %cond.end460.i.cond.false488.i_crit_edge
  %arrayidx490.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %320 = ptrtoint ptr %arrayidx490.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %arrayidx490.i, align 8
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %321, align 4
  %add493.i = add i32 %323, 1672
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add493.i, i32 noundef %or.i, i32 noundef 0) #5
  br label %mmhub_v1_0_init_system_aperture_regs.exit

mmhub_v1_0_init_system_aperture_regs.exit:        ; preds = %cond.false488.i, %cond.true478.i, %if.end.i.mmhub_v1_0_init_system_aperture_regs.exit_crit_edge
  %324 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %virt, align 8
  %and.i116 = and i32 %325, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.not.i117 = icmp eq i32 %and.i116, 0
  br i1 %tobool.not.i117, label %mmhub_v1_0_init_system_aperture_regs.exit.cond.false.i130_crit_edge, label %land.lhs.true.i120

mmhub_v1_0_init_system_aperture_regs.exit.cond.false.i130_crit_edge: ; preds = %mmhub_v1_0_init_system_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i130

land.lhs.true.i120:                               ; preds = %mmhub_v1_0_init_system_aperture_regs.exit
  %funcs.i118 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %326 = ptrtoint ptr %funcs.i118 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %funcs.i118, align 4
  %tobool1.not.i119 = icmp eq ptr %327, null
  br i1 %tobool1.not.i119, label %land.lhs.true.i120.cond.false.i130_crit_edge, label %land.lhs.true2.i123

land.lhs.true.i120.cond.false.i130_crit_edge:     ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i130

land.lhs.true2.i123:                              ; preds = %land.lhs.true.i120
  %sriov_rreg.i121 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %327, i32 0, i32 13
  %328 = ptrtoint ptr %sriov_rreg.i121 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %sriov_rreg.i121, align 4
  %tobool6.not.i122 = icmp eq ptr %329, null
  br i1 %tobool6.not.i122, label %land.lhs.true2.i123.cond.false.i130_crit_edge, label %cond.true.i127

land.lhs.true2.i123.cond.false.i130_crit_edge:    ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i130

cond.true.i127:                                   ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i124 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %330 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx.i124, align 8
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %331, align 4
  %add.i125 = add i32 %333, 2099
  %call.i126 = tail call i32 %329(ptr noundef %adev, i32 noundef %add.i125, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i131

cond.false.i130:                                  ; preds = %land.lhs.true2.i123.cond.false.i130_crit_edge, %land.lhs.true.i120.cond.false.i130_crit_edge, %mmhub_v1_0_init_system_aperture_regs.exit.cond.false.i130_crit_edge
  %arrayidx14.i128 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %334 = ptrtoint ptr %arrayidx14.i128 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %arrayidx14.i128, align 8
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %335, align 4
  %add17.i129 = add i32 %337, 2099
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i129, i32 noundef 0) #5
  br label %cond.end.i131

cond.end.i131:                                    ; preds = %cond.false.i130, %cond.true.i127
  %cond.i = phi i32 [ %call.i126, %cond.true.i127 ], [ %call18.i, %cond.false.i130 ]
  %or23.i = and i32 %cond.i, -14458
  %or29.i = or i32 %or23.i, 14425
  %338 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %virt, align 8
  %and32.i = and i32 %339, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %cond.end.i131.cond.false54.i_crit_edge, label %land.lhs.true34.i

cond.end.i131.cond.false54.i_crit_edge:           ; preds = %cond.end.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54.i

land.lhs.true34.i:                                ; preds = %cond.end.i131
  %funcs37.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %340 = ptrtoint ptr %funcs37.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %funcs37.i, align 4
  %tobool38.not.i = icmp eq ptr %341, null
  br i1 %tobool38.not.i, label %land.lhs.true34.i.cond.false54.i_crit_edge, label %land.lhs.true39.i

land.lhs.true34.i.cond.false54.i_crit_edge:       ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54.i

land.lhs.true39.i:                                ; preds = %land.lhs.true34.i
  %sriov_wreg.i132 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %341, i32 0, i32 12
  %342 = ptrtoint ptr %sriov_wreg.i132 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %sriov_wreg.i132, align 4
  %tobool43.not.i = icmp eq ptr %343, null
  br i1 %tobool43.not.i, label %land.lhs.true39.i.cond.false54.i_crit_edge, label %cond.true44.i

land.lhs.true39.i.cond.false54.i_crit_edge:       ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54.i

cond.true44.i:                                    ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx50.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %344 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %arrayidx50.i, align 8
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %345, align 4
  %add53.i = add i32 %347, 2099
  tail call void %343(ptr noundef %adev, i32 noundef %add53.i, i32 noundef %or29.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_0_init_tlb_regs.exit

cond.false54.i:                                   ; preds = %land.lhs.true39.i.cond.false54.i_crit_edge, %land.lhs.true34.i.cond.false54.i_crit_edge, %cond.end.i131.cond.false54.i_crit_edge
  %arrayidx56.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %348 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx56.i, align 8
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %349, align 4
  %add59.i = add i32 %351, 2099
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59.i, i32 noundef %or29.i, i32 noundef 0) #5
  br label %mmhub_v1_0_init_tlb_regs.exit

mmhub_v1_0_init_tlb_regs.exit:                    ; preds = %cond.false54.i, %cond.true44.i
  %352 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %virt, align 8
  %and.i134 = and i32 %353, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i134)
  %tobool.not.i135 = icmp eq i32 %and.i134, 0
  br i1 %tobool.not.i135, label %cond.false.i136, label %mmhub_v1_0_init_tlb_regs.exit.mmhub_v1_0_init_cache_regs.exit_crit_edge

mmhub_v1_0_init_tlb_regs.exit.mmhub_v1_0_init_cache_regs.exit_crit_edge: ; preds = %mmhub_v1_0_init_tlb_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmhub_v1_0_init_cache_regs.exit

cond.false.i136:                                  ; preds = %mmhub_v1_0_init_tlb_regs.exit
  %arrayidx18.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %354 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %arrayidx18.i, align 8
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %355, align 4
  %add21.i = add i32 %357, 1664
  %call22.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21.i, i32 noundef 0) #5
  %or25.i = and i32 %call22.i, -66846980
  %or31.i = or i32 %or25.i, 524291
  %358 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %virt, align 8
  %and36.i = and i32 %359, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %cond.false.i136.cond.false58.i_crit_edge, label %land.lhs.true38.i

cond.false.i136.cond.false58.i_crit_edge:         ; preds = %cond.false.i136
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false58.i

land.lhs.true38.i:                                ; preds = %cond.false.i136
  %funcs41.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %360 = ptrtoint ptr %funcs41.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %funcs41.i, align 4
  %tobool42.not.i = icmp eq ptr %361, null
  br i1 %tobool42.not.i, label %land.lhs.true38.i.cond.false58.i_crit_edge, label %land.lhs.true43.i

land.lhs.true38.i.cond.false58.i_crit_edge:       ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false58.i

land.lhs.true43.i:                                ; preds = %land.lhs.true38.i
  %sriov_wreg.i137 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %361, i32 0, i32 12
  %362 = ptrtoint ptr %sriov_wreg.i137 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %sriov_wreg.i137, align 4
  %tobool47.not.i = icmp eq ptr %363, null
  br i1 %tobool47.not.i, label %land.lhs.true43.i.cond.false58.i_crit_edge, label %cond.true48.i

land.lhs.true43.i.cond.false58.i_crit_edge:       ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false58.i

cond.true48.i:                                    ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #7
  %364 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %arrayidx18.i, align 8
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %365, align 4
  %add57.i = add i32 %367, 1664
  tail call void %363(ptr noundef %adev, i32 noundef %add57.i, i32 noundef %or31.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end64.i

cond.false58.i:                                   ; preds = %land.lhs.true43.i.cond.false58.i_crit_edge, %land.lhs.true38.i.cond.false58.i_crit_edge, %cond.false.i136.cond.false58.i_crit_edge
  %368 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %arrayidx18.i, align 8
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %369, align 4
  %add63.i = add i32 %371, 1664
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add63.i, i32 noundef %or31.i, i32 noundef 0) #5
  br label %cond.end64.i

cond.end64.i:                                     ; preds = %cond.false58.i, %cond.true48.i
  %372 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %virt, align 8
  %and67.i = and i32 %373, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i138 = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i138, label %cond.end64.i.cond.false91.i_crit_edge, label %land.lhs.true69.i

cond.end64.i.cond.false91.i_crit_edge:            ; preds = %cond.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91.i

land.lhs.true69.i:                                ; preds = %cond.end64.i
  %funcs72.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %374 = ptrtoint ptr %funcs72.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %funcs72.i, align 4
  %tobool73.not.i = icmp eq ptr %375, null
  br i1 %tobool73.not.i, label %land.lhs.true69.i.cond.false91.i_crit_edge, label %land.lhs.true74.i

land.lhs.true69.i.cond.false91.i_crit_edge:       ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91.i

land.lhs.true74.i:                                ; preds = %land.lhs.true69.i
  %sriov_rreg78.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %375, i32 0, i32 13
  %376 = ptrtoint ptr %sriov_rreg78.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %sriov_rreg78.i, align 4
  %tobool79.not.i = icmp eq ptr %377, null
  br i1 %tobool79.not.i, label %land.lhs.true74.i.cond.false91.i_crit_edge, label %cond.true80.i

land.lhs.true74.i.cond.false91.i_crit_edge:       ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91.i

cond.true80.i:                                    ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #7
  %378 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %arrayidx18.i, align 8
  %380 = ptrtoint ptr %379 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %379, align 4
  %add89.i = add i32 %381, 1665
  %call90.i = tail call i32 %377(ptr noundef %adev, i32 noundef %add89.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end98.i

cond.false91.i:                                   ; preds = %land.lhs.true74.i.cond.false91.i_crit_edge, %land.lhs.true69.i.cond.false91.i_crit_edge, %cond.end64.i.cond.false91.i_crit_edge
  %382 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %arrayidx18.i, align 8
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %383, align 4
  %add96.i = add i32 %385, 1665
  %call97.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add96.i, i32 noundef 0) #5
  br label %cond.end98.i

cond.end98.i:                                     ; preds = %cond.false91.i, %cond.true80.i
  %cond99.i = phi i32 [ %call90.i, %cond.true80.i ], [ %call97.i, %cond.false91.i ]
  %or103.i = or i32 %cond99.i, 3
  %386 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %virt, align 8
  %and106.i = and i32 %387, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i139 = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i139, label %cond.end98.i.cond.false129.i_crit_edge, label %land.lhs.true108.i

cond.end98.i.cond.false129.i_crit_edge:           ; preds = %cond.end98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false129.i

land.lhs.true108.i:                               ; preds = %cond.end98.i
  %funcs111.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %388 = ptrtoint ptr %funcs111.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %funcs111.i, align 4
  %tobool112.not.i = icmp eq ptr %389, null
  br i1 %tobool112.not.i, label %land.lhs.true108.i.cond.false129.i_crit_edge, label %land.lhs.true113.i

land.lhs.true108.i.cond.false129.i_crit_edge:     ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false129.i

land.lhs.true113.i:                               ; preds = %land.lhs.true108.i
  %sriov_wreg117.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %389, i32 0, i32 12
  %390 = ptrtoint ptr %sriov_wreg117.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %sriov_wreg117.i, align 4
  %tobool118.not.i = icmp eq ptr %391, null
  br i1 %tobool118.not.i, label %land.lhs.true113.i.cond.false129.i_crit_edge, label %cond.true119.i

land.lhs.true113.i.cond.false129.i_crit_edge:     ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false129.i

cond.true119.i:                                   ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #7
  %392 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %arrayidx18.i, align 8
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %393, align 4
  %add128.i = add i32 %395, 1665
  tail call void %391(ptr noundef %adev, i32 noundef %add128.i, i32 noundef %or103.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end135.i

cond.false129.i:                                  ; preds = %land.lhs.true113.i.cond.false129.i_crit_edge, %land.lhs.true108.i.cond.false129.i_crit_edge, %cond.end98.i.cond.false129.i_crit_edge
  %396 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %arrayidx18.i, align 8
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %397, align 4
  %add134.i = add i32 %399, 1665
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add134.i, i32 noundef %or103.i, i32 noundef 0) #5
  br label %cond.end135.i

cond.end135.i:                                    ; preds = %cond.false129.i, %cond.true119.i
  %translate_further.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %400 = ptrtoint ptr %translate_further.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %translate_further.i, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %401)
  %tobool136.not.i = icmp eq i8 %401, 0
  %and138.i = and i32 %cond99.i, -1015872
  %tmp.0.v.i = select i1 %tobool136.not.i, i32 196617, i32 294924
  %tmp.0.i = or i32 %tmp.0.v.i, %and138.i
  %402 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %virt, align 8
  %and149.i = and i32 %403, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %cond.end135.i.cond.false172.i_crit_edge, label %land.lhs.true151.i

cond.end135.i.cond.false172.i_crit_edge:          ; preds = %cond.end135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false172.i

land.lhs.true151.i:                               ; preds = %cond.end135.i
  %funcs154.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %404 = ptrtoint ptr %funcs154.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %funcs154.i, align 4
  %tobool155.not.i = icmp eq ptr %405, null
  br i1 %tobool155.not.i, label %land.lhs.true151.i.cond.false172.i_crit_edge, label %land.lhs.true156.i140

land.lhs.true151.i.cond.false172.i_crit_edge:     ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false172.i

land.lhs.true156.i140:                            ; preds = %land.lhs.true151.i
  %sriov_wreg160.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %405, i32 0, i32 12
  %406 = ptrtoint ptr %sriov_wreg160.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %sriov_wreg160.i, align 4
  %tobool161.not.i = icmp eq ptr %407, null
  br i1 %tobool161.not.i, label %land.lhs.true156.i140.cond.false172.i_crit_edge, label %cond.true162.i

land.lhs.true156.i140.cond.false172.i_crit_edge:  ; preds = %land.lhs.true156.i140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false172.i

cond.true162.i:                                   ; preds = %land.lhs.true156.i140
  call void @__sanitizer_cov_trace_pc() #7
  %408 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %arrayidx18.i, align 8
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %409, align 4
  %add171.i = add i32 %411, 1666
  tail call void %407(ptr noundef %adev, i32 noundef %add171.i, i32 noundef %tmp.0.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end178.i

cond.false172.i:                                  ; preds = %land.lhs.true156.i140.cond.false172.i_crit_edge, %land.lhs.true151.i.cond.false172.i_crit_edge, %cond.end135.i.cond.false172.i_crit_edge
  %412 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %arrayidx18.i, align 8
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %413, align 4
  %add177.i = add i32 %415, 1666
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add177.i, i32 noundef %tmp.0.i, i32 noundef 0) #5
  br label %cond.end178.i

cond.end178.i:                                    ; preds = %cond.false172.i, %cond.true162.i
  %416 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %virt, align 8
  %and185.i = and i32 %417, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185.i)
  %tobool186.not.i = icmp eq i32 %and185.i, 0
  br i1 %tobool186.not.i, label %cond.end178.i.cond.false208.i_crit_edge, label %land.lhs.true187.i

cond.end178.i.cond.false208.i_crit_edge:          ; preds = %cond.end178.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false208.i

land.lhs.true187.i:                               ; preds = %cond.end178.i
  %funcs190.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %418 = ptrtoint ptr %funcs190.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %funcs190.i, align 4
  %tobool191.not.i = icmp eq ptr %419, null
  br i1 %tobool191.not.i, label %land.lhs.true187.i.cond.false208.i_crit_edge, label %land.lhs.true192.i

land.lhs.true187.i.cond.false208.i_crit_edge:     ; preds = %land.lhs.true187.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false208.i

land.lhs.true192.i:                               ; preds = %land.lhs.true187.i
  %sriov_wreg196.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %419, i32 0, i32 12
  %420 = ptrtoint ptr %sriov_wreg196.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %sriov_wreg196.i, align 4
  %tobool197.not.i = icmp eq ptr %421, null
  br i1 %tobool197.not.i, label %land.lhs.true192.i.cond.false208.i_crit_edge, label %cond.true198.i

land.lhs.true192.i.cond.false208.i_crit_edge:     ; preds = %land.lhs.true192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false208.i

cond.true198.i:                                   ; preds = %land.lhs.true192.i
  call void @__sanitizer_cov_trace_pc() #7
  %422 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %arrayidx18.i, align 8
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %423, align 4
  %add207.i = add i32 %425, 1687
  tail call void %421(ptr noundef %adev, i32 noundef %add207.i, i32 noundef 1, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_0_init_cache_regs.exit

cond.false208.i:                                  ; preds = %land.lhs.true192.i.cond.false208.i_crit_edge, %land.lhs.true187.i.cond.false208.i_crit_edge, %cond.end178.i.cond.false208.i_crit_edge
  %426 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %arrayidx18.i, align 8
  %428 = ptrtoint ptr %427 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %427, align 4
  %add213.i = add i32 %429, 1687
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add213.i, i32 noundef 1, i32 noundef 0) #5
  br label %mmhub_v1_0_init_cache_regs.exit

mmhub_v1_0_init_cache_regs.exit:                  ; preds = %cond.false208.i, %cond.true198.i, %mmhub_v1_0_init_tlb_regs.exit.mmhub_v1_0_init_cache_regs.exit_crit_edge
  %430 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %virt, align 8
  %and.i142 = and i32 %431, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.not.i143 = icmp eq i32 %and.i142, 0
  br i1 %tobool.not.i143, label %mmhub_v1_0_init_cache_regs.exit.cond.false.i157_crit_edge, label %land.lhs.true.i146

mmhub_v1_0_init_cache_regs.exit.cond.false.i157_crit_edge: ; preds = %mmhub_v1_0_init_cache_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i157

land.lhs.true.i146:                               ; preds = %mmhub_v1_0_init_cache_regs.exit
  %funcs.i144 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %432 = ptrtoint ptr %funcs.i144 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %funcs.i144, align 4
  %tobool1.not.i145 = icmp eq ptr %433, null
  br i1 %tobool1.not.i145, label %land.lhs.true.i146.cond.false.i157_crit_edge, label %land.lhs.true2.i149

land.lhs.true.i146.cond.false.i157_crit_edge:     ; preds = %land.lhs.true.i146
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i157

land.lhs.true2.i149:                              ; preds = %land.lhs.true.i146
  %sriov_rreg.i147 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %433, i32 0, i32 13
  %434 = ptrtoint ptr %sriov_rreg.i147 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %sriov_rreg.i147, align 4
  %tobool6.not.i148 = icmp eq ptr %435, null
  br i1 %tobool6.not.i148, label %land.lhs.true2.i149.cond.false.i157_crit_edge, label %cond.true.i153

land.lhs.true2.i149.cond.false.i157_crit_edge:    ; preds = %land.lhs.true2.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i157

cond.true.i153:                                   ; preds = %land.lhs.true2.i149
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i150 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %436 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %arrayidx.i150, align 8
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %437, align 4
  %add.i151 = add i32 %439, 1728
  %call.i152 = tail call i32 %435(ptr noundef %adev, i32 noundef %add.i151, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i161

cond.false.i157:                                  ; preds = %land.lhs.true2.i149.cond.false.i157_crit_edge, %land.lhs.true.i146.cond.false.i157_crit_edge, %mmhub_v1_0_init_cache_regs.exit.cond.false.i157_crit_edge
  %arrayidx14.i154 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %440 = ptrtoint ptr %arrayidx14.i154 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %arrayidx14.i154, align 8
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %441, align 4
  %add17.i155 = add i32 %443, 1728
  %call18.i156 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i155, i32 noundef 0) #5
  br label %cond.end.i161

cond.end.i161:                                    ; preds = %cond.false.i157, %cond.true.i153
  %cond.i158 = phi i32 [ %call.i152, %cond.true.i153 ], [ %call18.i156, %cond.false.i157 ]
  %or.i159 = and i32 %cond.i158, -136
  %and20.i160 = or i32 %or.i159, 1
  %444 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %virt, align 8
  %and26.i = and i32 %445, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %cond.end.i161.cond.false48.i_crit_edge, label %land.lhs.true28.i

cond.end.i161.cond.false48.i_crit_edge:           ; preds = %cond.end.i161
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48.i

land.lhs.true28.i:                                ; preds = %cond.end.i161
  %funcs31.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %446 = ptrtoint ptr %funcs31.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %funcs31.i, align 4
  %tobool32.not.i162 = icmp eq ptr %447, null
  br i1 %tobool32.not.i162, label %land.lhs.true28.i.cond.false48.i_crit_edge, label %land.lhs.true33.i

land.lhs.true28.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48.i

land.lhs.true33.i:                                ; preds = %land.lhs.true28.i
  %sriov_wreg.i163 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %447, i32 0, i32 12
  %448 = ptrtoint ptr %sriov_wreg.i163 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %sriov_wreg.i163, align 4
  %tobool37.not.i164 = icmp eq ptr %449, null
  br i1 %tobool37.not.i164, label %land.lhs.true33.i.cond.false48.i_crit_edge, label %cond.true38.i

land.lhs.true33.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48.i

cond.true38.i:                                    ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx44.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %450 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %arrayidx44.i, align 8
  %452 = ptrtoint ptr %451 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %451, align 4
  %add47.i = add i32 %453, 1728
  tail call void %449(ptr noundef %adev, i32 noundef %add47.i, i32 noundef %and20.i160, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_0_enable_system_domain.exit

cond.false48.i:                                   ; preds = %land.lhs.true33.i.cond.false48.i_crit_edge, %land.lhs.true28.i.cond.false48.i_crit_edge, %cond.end.i161.cond.false48.i_crit_edge
  %arrayidx50.i165 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %454 = ptrtoint ptr %arrayidx50.i165 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %arrayidx50.i165, align 8
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %455, align 4
  %add53.i166 = add i32 %457, 1728
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add53.i166, i32 noundef %and20.i160, i32 noundef 0) #5
  br label %mmhub_v1_0_enable_system_domain.exit

mmhub_v1_0_enable_system_domain.exit:             ; preds = %cond.false48.i, %cond.true38.i
  %458 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %virt, align 8
  %and.i168 = and i32 %459, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i168)
  %tobool.not.i169 = icmp eq i32 %and.i168, 0
  br i1 %tobool.not.i169, label %cond.false.i174, label %mmhub_v1_0_enable_system_domain.exit.mmhub_v1_0_disable_identity_aperture.exit_crit_edge

mmhub_v1_0_enable_system_domain.exit.mmhub_v1_0_disable_identity_aperture.exit_crit_edge: ; preds = %mmhub_v1_0_enable_system_domain.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmhub_v1_0_disable_identity_aperture.exit

cond.false.i174:                                  ; preds = %mmhub_v1_0_enable_system_domain.exit
  %arrayidx18.i170 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %460 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %arrayidx18.i170, align 8
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %461, align 4
  %add21.i171 = add i32 %463, 1681
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21.i171, i32 noundef -1, i32 noundef 0) #5
  %464 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %virt, align 8
  %and24.i172 = and i32 %465, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i172)
  %tobool25.not.i173 = icmp eq i32 %and24.i172, 0
  br i1 %tobool25.not.i173, label %cond.false.i174.cond.false47.i_crit_edge, label %land.lhs.true26.i177

cond.false.i174.cond.false47.i_crit_edge:         ; preds = %cond.false.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47.i

land.lhs.true26.i177:                             ; preds = %cond.false.i174
  %funcs29.i175 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %466 = ptrtoint ptr %funcs29.i175 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %funcs29.i175, align 4
  %tobool30.not.i176 = icmp eq ptr %467, null
  br i1 %tobool30.not.i176, label %land.lhs.true26.i177.cond.false47.i_crit_edge, label %land.lhs.true31.i180

land.lhs.true26.i177.cond.false47.i_crit_edge:    ; preds = %land.lhs.true26.i177
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47.i

land.lhs.true31.i180:                             ; preds = %land.lhs.true26.i177
  %sriov_wreg35.i178 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %467, i32 0, i32 12
  %468 = ptrtoint ptr %sriov_wreg35.i178 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %sriov_wreg35.i178, align 4
  %tobool36.not.i179 = icmp eq ptr %469, null
  br i1 %tobool36.not.i179, label %land.lhs.true31.i180.cond.false47.i_crit_edge, label %cond.true37.i182

land.lhs.true31.i180.cond.false47.i_crit_edge:    ; preds = %land.lhs.true31.i180
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47.i

cond.true37.i182:                                 ; preds = %land.lhs.true31.i180
  call void @__sanitizer_cov_trace_pc() #7
  %470 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %arrayidx18.i170, align 8
  %472 = ptrtoint ptr %471 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %471, align 4
  %add46.i181 = add i32 %473, 1682
  tail call void %469(ptr noundef %adev, i32 noundef %add46.i181, i32 noundef 15, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end53.i185

cond.false47.i:                                   ; preds = %land.lhs.true31.i180.cond.false47.i_crit_edge, %land.lhs.true26.i177.cond.false47.i_crit_edge, %cond.false.i174.cond.false47.i_crit_edge
  %474 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %arrayidx18.i170, align 8
  %476 = ptrtoint ptr %475 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %475, align 4
  %add52.i = add i32 %477, 1682
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add52.i, i32 noundef 15, i32 noundef 0) #5
  br label %cond.end53.i185

cond.end53.i185:                                  ; preds = %cond.false47.i, %cond.true37.i182
  %478 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %virt, align 8
  %and56.i183 = and i32 %479, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i183)
  %tobool57.not.i184 = icmp eq i32 %and56.i183, 0
  br i1 %tobool57.not.i184, label %cond.end53.i185.cond.false79.i_crit_edge, label %land.lhs.true58.i188

cond.end53.i185.cond.false79.i_crit_edge:         ; preds = %cond.end53.i185
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false79.i

land.lhs.true58.i188:                             ; preds = %cond.end53.i185
  %funcs61.i186 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %480 = ptrtoint ptr %funcs61.i186 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %funcs61.i186, align 4
  %tobool62.not.i187 = icmp eq ptr %481, null
  br i1 %tobool62.not.i187, label %land.lhs.true58.i188.cond.false79.i_crit_edge, label %land.lhs.true63.i191

land.lhs.true58.i188.cond.false79.i_crit_edge:    ; preds = %land.lhs.true58.i188
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false79.i

land.lhs.true63.i191:                             ; preds = %land.lhs.true58.i188
  %sriov_wreg67.i189 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %481, i32 0, i32 12
  %482 = ptrtoint ptr %sriov_wreg67.i189 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %sriov_wreg67.i189, align 4
  %tobool68.not.i190 = icmp eq ptr %483, null
  br i1 %tobool68.not.i190, label %land.lhs.true63.i191.cond.false79.i_crit_edge, label %cond.true69.i193

land.lhs.true63.i191.cond.false79.i_crit_edge:    ; preds = %land.lhs.true63.i191
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false79.i

cond.true69.i193:                                 ; preds = %land.lhs.true63.i191
  call void @__sanitizer_cov_trace_pc() #7
  %484 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %arrayidx18.i170, align 8
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %485, align 4
  %add78.i192 = add i32 %487, 1683
  tail call void %483(ptr noundef %adev, i32 noundef %add78.i192, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end85.i

cond.false79.i:                                   ; preds = %land.lhs.true63.i191.cond.false79.i_crit_edge, %land.lhs.true58.i188.cond.false79.i_crit_edge, %cond.end53.i185.cond.false79.i_crit_edge
  %488 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %arrayidx18.i170, align 8
  %490 = ptrtoint ptr %489 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %489, align 4
  %add84.i = add i32 %491, 1683
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add84.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end85.i

cond.end85.i:                                     ; preds = %cond.false79.i, %cond.true69.i193
  %492 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %virt, align 8
  %and88.i = and i32 %493, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %cond.end85.i.cond.false111.i_crit_edge, label %land.lhs.true90.i

cond.end85.i.cond.false111.i_crit_edge:           ; preds = %cond.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false111.i

land.lhs.true90.i:                                ; preds = %cond.end85.i
  %funcs93.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %494 = ptrtoint ptr %funcs93.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %funcs93.i, align 4
  %tobool94.not.i = icmp eq ptr %495, null
  br i1 %tobool94.not.i, label %land.lhs.true90.i.cond.false111.i_crit_edge, label %land.lhs.true95.i

land.lhs.true90.i.cond.false111.i_crit_edge:      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false111.i

land.lhs.true95.i:                                ; preds = %land.lhs.true90.i
  %sriov_wreg99.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %495, i32 0, i32 12
  %496 = ptrtoint ptr %sriov_wreg99.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %sriov_wreg99.i, align 4
  %tobool100.not.i = icmp eq ptr %497, null
  br i1 %tobool100.not.i, label %land.lhs.true95.i.cond.false111.i_crit_edge, label %cond.true101.i

land.lhs.true95.i.cond.false111.i_crit_edge:      ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false111.i

cond.true101.i:                                   ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #7
  %498 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %arrayidx18.i170, align 8
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %499, align 4
  %add110.i = add i32 %501, 1684
  tail call void %497(ptr noundef %adev, i32 noundef %add110.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end117.i

cond.false111.i:                                  ; preds = %land.lhs.true95.i.cond.false111.i_crit_edge, %land.lhs.true90.i.cond.false111.i_crit_edge, %cond.end85.i.cond.false111.i_crit_edge
  %502 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %arrayidx18.i170, align 8
  %504 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %503, align 4
  %add116.i = add i32 %505, 1684
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add116.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end117.i

cond.end117.i:                                    ; preds = %cond.false111.i, %cond.true101.i
  %506 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %virt, align 8
  %and120.i = and i32 %507, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %cond.end117.i.cond.false143.i_crit_edge, label %land.lhs.true122.i

cond.end117.i.cond.false143.i_crit_edge:          ; preds = %cond.end117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false143.i

land.lhs.true122.i:                               ; preds = %cond.end117.i
  %funcs125.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %508 = ptrtoint ptr %funcs125.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %funcs125.i, align 4
  %tobool126.not.i = icmp eq ptr %509, null
  br i1 %tobool126.not.i, label %land.lhs.true122.i.cond.false143.i_crit_edge, label %land.lhs.true127.i

land.lhs.true122.i.cond.false143.i_crit_edge:     ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false143.i

land.lhs.true127.i:                               ; preds = %land.lhs.true122.i
  %sriov_wreg131.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %509, i32 0, i32 12
  %510 = ptrtoint ptr %sriov_wreg131.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %sriov_wreg131.i, align 4
  %tobool132.not.i = icmp eq ptr %511, null
  br i1 %tobool132.not.i, label %land.lhs.true127.i.cond.false143.i_crit_edge, label %cond.true133.i

land.lhs.true127.i.cond.false143.i_crit_edge:     ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false143.i

cond.true133.i:                                   ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #7
  %512 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %arrayidx18.i170, align 8
  %514 = ptrtoint ptr %513 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %513, align 4
  %add142.i = add i32 %515, 1685
  tail call void %511(ptr noundef %adev, i32 noundef %add142.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end149.i194

cond.false143.i:                                  ; preds = %land.lhs.true127.i.cond.false143.i_crit_edge, %land.lhs.true122.i.cond.false143.i_crit_edge, %cond.end117.i.cond.false143.i_crit_edge
  %516 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %arrayidx18.i170, align 8
  %518 = ptrtoint ptr %517 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %517, align 4
  %add148.i = add i32 %519, 1685
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add148.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end149.i194

cond.end149.i194:                                 ; preds = %cond.false143.i, %cond.true133.i
  %520 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %virt, align 8
  %and152.i = and i32 %521, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %cond.end149.i194.cond.false175.i_crit_edge, label %land.lhs.true154.i

cond.end149.i194.cond.false175.i_crit_edge:       ; preds = %cond.end149.i194
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false175.i

land.lhs.true154.i:                               ; preds = %cond.end149.i194
  %funcs157.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %522 = ptrtoint ptr %funcs157.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %funcs157.i, align 4
  %tobool158.not.i = icmp eq ptr %523, null
  br i1 %tobool158.not.i, label %land.lhs.true154.i.cond.false175.i_crit_edge, label %land.lhs.true159.i

land.lhs.true154.i.cond.false175.i_crit_edge:     ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false175.i

land.lhs.true159.i:                               ; preds = %land.lhs.true154.i
  %sriov_wreg163.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %523, i32 0, i32 12
  %524 = ptrtoint ptr %sriov_wreg163.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %sriov_wreg163.i, align 4
  %tobool164.not.i = icmp eq ptr %525, null
  br i1 %tobool164.not.i, label %land.lhs.true159.i.cond.false175.i_crit_edge, label %cond.true165.i

land.lhs.true159.i.cond.false175.i_crit_edge:     ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false175.i

cond.true165.i:                                   ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #7
  %526 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %arrayidx18.i170, align 8
  %528 = ptrtoint ptr %527 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %527, align 4
  %add174.i = add i32 %529, 1686
  tail call void %525(ptr noundef %adev, i32 noundef %add174.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_0_disable_identity_aperture.exit

cond.false175.i:                                  ; preds = %land.lhs.true159.i.cond.false175.i_crit_edge, %land.lhs.true154.i.cond.false175.i_crit_edge, %cond.end149.i194.cond.false175.i_crit_edge
  %530 = ptrtoint ptr %arrayidx18.i170 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %arrayidx18.i170, align 8
  %532 = ptrtoint ptr %531 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %531, align 4
  %add180.i = add i32 %533, 1686
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add180.i, i32 noundef 0, i32 noundef 0) #5
  br label %mmhub_v1_0_disable_identity_aperture.exit

mmhub_v1_0_disable_identity_aperture.exit:        ; preds = %cond.false175.i, %cond.true165.i, %mmhub_v1_0_enable_system_domain.exit.mmhub_v1_0_disable_identity_aperture.exit_crit_edge
  %num_level1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 6
  %534 = ptrtoint ptr %num_level1.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %num_level1.i, align 8
  %block_size3.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %536 = ptrtoint ptr %block_size3.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %block_size3.i, align 4
  %translate_further.i195 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %538 = ptrtoint ptr %translate_further.i195 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %translate_further.i195, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %539)
  %tobool.not.i196 = icmp eq i8 %539, 0
  %not.tobool.not.i = xor i1 %tobool.not.i196, true
  %sub.i = sext i1 %not.tobool.not.i to i32
  %num_level.0.i = add i32 %535, %sub.i
  %funcs.i198 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx16.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %shl.i = shl i32 %num_level.0.i, 1
  %and29.i = and i32 %shl.i, 6
  %540 = shl i32 %537, 3
  %541 = add i32 %540, 56
  %shl46.i = select i1 %tobool.not.i196, i32 %541, i32 %540
  %and47.i = and i32 %shl46.i, 120
  %noretry.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 41
  %ctx_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 8
  %ctx_addr_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %and28.i = or i32 %and47.i, %and29.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mmhub_v1_0_disable_identity_aperture.exit
  %i.0363.i = phi i32 [ 0, %mmhub_v1_0_disable_identity_aperture.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %542 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %virt, align 8
  %and.i199 = and i32 %543, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i199)
  %tobool5.not.i = icmp eq i32 %and.i199, 0
  br i1 %tobool5.not.i, label %for.body.i.cond.false.i206_crit_edge, label %land.lhs.true.i201

for.body.i.cond.false.i206_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i206

land.lhs.true.i201:                               ; preds = %for.body.i
  %544 = ptrtoint ptr %funcs.i198 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %funcs.i198, align 4
  %tobool6.not.i200 = icmp eq ptr %545, null
  br i1 %tobool6.not.i200, label %land.lhs.true.i201.cond.false.i206_crit_edge, label %land.lhs.true7.i

land.lhs.true.i201.cond.false.i206_crit_edge:     ; preds = %land.lhs.true.i201
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i206

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i201
  %sriov_rreg.i202 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %545, i32 0, i32 13
  %546 = ptrtoint ptr %sriov_rreg.i202 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %sriov_rreg.i202, align 4
  %tobool11.not.i = icmp eq ptr %547, null
  br i1 %tobool11.not.i, label %land.lhs.true7.i.cond.false.i206_crit_edge, label %cond.true.i205

land.lhs.true7.i.cond.false.i206_crit_edge:       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i206

cond.true.i205:                                   ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  %548 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %arrayidx16.i, align 8
  %550 = ptrtoint ptr %549 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %549, align 4
  %add.i203 = add nuw nsw i32 %i.0363.i, 1729
  %add19.i = add i32 %add.i203, %551
  %call.i204 = tail call i32 %547(ptr noundef %adev, i32 noundef %add19.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i209

cond.false.i206:                                  ; preds = %land.lhs.true7.i.cond.false.i206_crit_edge, %land.lhs.true.i201.cond.false.i206_crit_edge, %for.body.i.cond.false.i206_crit_edge
  %552 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %arrayidx16.i, align 8
  %554 = ptrtoint ptr %553 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %553, align 4
  %add24.i = add nuw nsw i32 %i.0363.i, 1729
  %add25.i = add i32 %add24.i, %555
  %call26.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add25.i, i32 noundef 0) #5
  br label %cond.end.i209

cond.end.i209:                                    ; preds = %cond.false.i206, %cond.true.i205
  %cond.i207 = phi i32 [ %call.i204, %cond.true.i205 ], [ %call26.i, %cond.false.i206 ]
  %or.i208 = and i32 %cond.i207, -5592320
  %556 = ptrtoint ptr %noretry.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %noretry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %557)
  %tobool51.not.i = icmp eq i32 %557, 0
  %shl52.i = select i1 %tobool51.not.i, i32 128, i32 0
  %or44.i = or i32 %and28.i, %or.i208
  %or48.i = or i32 %or44.i, %shl52.i
  %or54.i = or i32 %or48.i, 5592065
  %558 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %virt, align 8
  %and57.i = and i32 %559, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %cond.end.i209.cond.false80.i_crit_edge, label %land.lhs.true59.i

cond.end.i209.cond.false80.i_crit_edge:           ; preds = %cond.end.i209
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false80.i

land.lhs.true59.i:                                ; preds = %cond.end.i209
  %560 = ptrtoint ptr %funcs.i198 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %funcs.i198, align 4
  %tobool63.not.i = icmp eq ptr %561, null
  br i1 %tobool63.not.i, label %land.lhs.true59.i.cond.false80.i_crit_edge, label %land.lhs.true64.i

land.lhs.true59.i.cond.false80.i_crit_edge:       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false80.i

land.lhs.true64.i:                                ; preds = %land.lhs.true59.i
  %sriov_wreg.i210 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %561, i32 0, i32 12
  %562 = ptrtoint ptr %sriov_wreg.i210 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %sriov_wreg.i210, align 4
  %tobool68.not.i211 = icmp eq ptr %563, null
  br i1 %tobool68.not.i211, label %land.lhs.true64.i.cond.false80.i_crit_edge, label %cond.true69.i213

land.lhs.true64.i.cond.false80.i_crit_edge:       ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false80.i

cond.true69.i213:                                 ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #7
  %564 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %arrayidx16.i, align 8
  %566 = ptrtoint ptr %565 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %565, align 4
  %add78.i212 = add i32 %567, 1729
  %568 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %ctx_distance.i, align 4
  %mul.i = mul i32 %569, %i.0363.i
  %add79.i = add i32 %add78.i212, %mul.i
  tail call void %563(ptr noundef %adev, i32 noundef %add79.i, i32 noundef %or54.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end89.i

cond.false80.i:                                   ; preds = %land.lhs.true64.i.cond.false80.i_crit_edge, %land.lhs.true59.i.cond.false80.i_crit_edge, %cond.end.i209.cond.false80.i_crit_edge
  %570 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %arrayidx16.i, align 8
  %572 = ptrtoint ptr %571 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %571, align 4
  %add85.i = add i32 %573, 1729
  %574 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %ctx_distance.i, align 4
  %mul87.i = mul i32 %575, %i.0363.i
  %add88.i = add i32 %add85.i, %mul87.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add88.i, i32 noundef %or54.i, i32 noundef 0) #5
  br label %cond.end89.i

cond.end89.i:                                     ; preds = %cond.false80.i, %cond.true69.i213
  %576 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %virt, align 8
  %and92.i = and i32 %577, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %cond.end89.i.cond.false117.i_crit_edge, label %land.lhs.true94.i

cond.end89.i.cond.false117.i_crit_edge:           ; preds = %cond.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false117.i

land.lhs.true94.i:                                ; preds = %cond.end89.i
  %578 = ptrtoint ptr %funcs.i198 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %funcs.i198, align 4
  %tobool98.not.i = icmp eq ptr %579, null
  br i1 %tobool98.not.i, label %land.lhs.true94.i.cond.false117.i_crit_edge, label %land.lhs.true99.i

land.lhs.true94.i.cond.false117.i_crit_edge:      ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false117.i

land.lhs.true99.i:                                ; preds = %land.lhs.true94.i
  %sriov_wreg103.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %579, i32 0, i32 12
  %580 = ptrtoint ptr %sriov_wreg103.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %sriov_wreg103.i, align 4
  %tobool104.not.i214 = icmp eq ptr %581, null
  br i1 %tobool104.not.i214, label %land.lhs.true99.i.cond.false117.i_crit_edge, label %cond.true105.i

land.lhs.true99.i.cond.false117.i_crit_edge:      ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false117.i

cond.true105.i:                                   ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #7
  %582 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %arrayidx16.i, align 8
  %584 = ptrtoint ptr %583 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %583, align 4
  %add114.i = add i32 %585, 1869
  %586 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul115.i = mul i32 %587, %i.0363.i
  %add116.i215 = add i32 %add114.i, %mul115.i
  tail call void %581(ptr noundef %adev, i32 noundef %add116.i215, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end126.i

cond.false117.i:                                  ; preds = %land.lhs.true99.i.cond.false117.i_crit_edge, %land.lhs.true94.i.cond.false117.i_crit_edge, %cond.end89.i.cond.false117.i_crit_edge
  %588 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %arrayidx16.i, align 8
  %590 = ptrtoint ptr %589 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %589, align 4
  %add122.i = add i32 %591, 1869
  %592 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul124.i = mul i32 %593, %i.0363.i
  %add125.i216 = add i32 %add122.i, %mul124.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add125.i216, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end126.i

cond.end126.i:                                    ; preds = %cond.false117.i, %cond.true105.i
  %594 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %virt, align 8
  %and129.i = and i32 %595, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129.i)
  %tobool130.not.i = icmp eq i32 %and129.i, 0
  br i1 %tobool130.not.i, label %cond.end126.i.cond.false155.i_crit_edge, label %land.lhs.true131.i

cond.end126.i.cond.false155.i_crit_edge:          ; preds = %cond.end126.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false155.i

land.lhs.true131.i:                               ; preds = %cond.end126.i
  %596 = ptrtoint ptr %funcs.i198 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %funcs.i198, align 4
  %tobool135.not.i = icmp eq ptr %597, null
  br i1 %tobool135.not.i, label %land.lhs.true131.i.cond.false155.i_crit_edge, label %land.lhs.true136.i

land.lhs.true131.i.cond.false155.i_crit_edge:     ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false155.i

land.lhs.true136.i:                               ; preds = %land.lhs.true131.i
  %sriov_wreg140.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %597, i32 0, i32 12
  %598 = ptrtoint ptr %sriov_wreg140.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %sriov_wreg140.i, align 4
  %tobool141.not.i = icmp eq ptr %599, null
  br i1 %tobool141.not.i, label %land.lhs.true136.i.cond.false155.i_crit_edge, label %cond.true142.i

land.lhs.true136.i.cond.false155.i_crit_edge:     ; preds = %land.lhs.true136.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false155.i

cond.true142.i:                                   ; preds = %land.lhs.true136.i
  call void @__sanitizer_cov_trace_pc() #7
  %600 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %arrayidx16.i, align 8
  %602 = ptrtoint ptr %601 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %601, align 4
  %add151.i = add i32 %603, 1870
  %604 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul153.i = mul i32 %605, %i.0363.i
  %add154.i = add i32 %add151.i, %mul153.i
  tail call void %599(ptr noundef %adev, i32 noundef %add154.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end164.i

cond.false155.i:                                  ; preds = %land.lhs.true136.i.cond.false155.i_crit_edge, %land.lhs.true131.i.cond.false155.i_crit_edge, %cond.end126.i.cond.false155.i_crit_edge
  %606 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %arrayidx16.i, align 8
  %608 = ptrtoint ptr %607 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %607, align 4
  %add160.i = add i32 %609, 1870
  %610 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul162.i = mul i32 %611, %i.0363.i
  %add163.i = add i32 %add160.i, %mul162.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add163.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end164.i

cond.end164.i:                                    ; preds = %cond.false155.i, %cond.true142.i
  %612 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %virt, align 8
  %and167.i = and i32 %613, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i)
  %tobool168.not.i = icmp eq i32 %and167.i, 0
  br i1 %tobool168.not.i, label %cond.end164.i.cond.false196.i_crit_edge, label %land.lhs.true169.i

cond.end164.i.cond.false196.i_crit_edge:          ; preds = %cond.end164.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false196.i

land.lhs.true169.i:                               ; preds = %cond.end164.i
  %614 = ptrtoint ptr %funcs.i198 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %funcs.i198, align 4
  %tobool173.not.i = icmp eq ptr %615, null
  br i1 %tobool173.not.i, label %land.lhs.true169.i.cond.false196.i_crit_edge, label %land.lhs.true174.i

land.lhs.true169.i.cond.false196.i_crit_edge:     ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false196.i

land.lhs.true174.i:                               ; preds = %land.lhs.true169.i
  %sriov_wreg178.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %615, i32 0, i32 12
  %616 = ptrtoint ptr %sriov_wreg178.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %sriov_wreg178.i, align 4
  %tobool179.not.i = icmp eq ptr %617, null
  br i1 %tobool179.not.i, label %land.lhs.true174.i.cond.false196.i_crit_edge, label %cond.true180.i

land.lhs.true174.i.cond.false196.i_crit_edge:     ; preds = %land.lhs.true174.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false196.i

cond.true180.i:                                   ; preds = %land.lhs.true174.i
  call void @__sanitizer_cov_trace_pc() #7
  %618 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %arrayidx16.i, align 8
  %620 = ptrtoint ptr %619 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %619, align 4
  %add189.i = add i32 %621, 1901
  %622 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul191.i = mul i32 %623, %i.0363.i
  %add192.i = add i32 %add189.i, %mul191.i
  %624 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %624)
  %625 = load i64, ptr %max_pfn.i, align 8
  %626 = trunc i64 %625 to i32
  %conv.i217 = add i32 %626, -1
  tail call void %617(ptr noundef %adev, i32 noundef %add192.i, i32 noundef %conv.i217, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end210.i

cond.false196.i:                                  ; preds = %land.lhs.true174.i.cond.false196.i_crit_edge, %land.lhs.true169.i.cond.false196.i_crit_edge, %cond.end164.i.cond.false196.i_crit_edge
  %627 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %arrayidx16.i, align 8
  %629 = ptrtoint ptr %628 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %628, align 4
  %add201.i = add i32 %630, 1901
  %631 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul203.i = mul i32 %632, %i.0363.i
  %add204.i = add i32 %add201.i, %mul203.i
  %633 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %633)
  %634 = load i64, ptr %max_pfn.i, align 8
  %635 = trunc i64 %634 to i32
  %conv209.i = add i32 %635, -1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add204.i, i32 noundef %conv209.i, i32 noundef 0) #5
  br label %cond.end210.i

cond.end210.i:                                    ; preds = %cond.false196.i, %cond.true180.i
  %636 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %virt, align 8
  %and213.i = and i32 %637, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213.i)
  %tobool214.not.i = icmp eq i32 %and213.i, 0
  br i1 %tobool214.not.i, label %cond.end210.i.cond.false244.i_crit_edge, label %land.lhs.true215.i

cond.end210.i.cond.false244.i_crit_edge:          ; preds = %cond.end210.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false244.i

land.lhs.true215.i:                               ; preds = %cond.end210.i
  %638 = ptrtoint ptr %funcs.i198 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %funcs.i198, align 4
  %tobool219.not.i = icmp eq ptr %639, null
  br i1 %tobool219.not.i, label %land.lhs.true215.i.cond.false244.i_crit_edge, label %land.lhs.true220.i

land.lhs.true215.i.cond.false244.i_crit_edge:     ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false244.i

land.lhs.true220.i:                               ; preds = %land.lhs.true215.i
  %sriov_wreg224.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %639, i32 0, i32 12
  %640 = ptrtoint ptr %sriov_wreg224.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %sriov_wreg224.i, align 4
  %tobool225.not.i = icmp eq ptr %641, null
  br i1 %tobool225.not.i, label %land.lhs.true220.i.cond.false244.i_crit_edge, label %cond.true226.i

land.lhs.true220.i.cond.false244.i_crit_edge:     ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false244.i

cond.true226.i:                                   ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #7
  %642 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %arrayidx16.i, align 8
  %644 = ptrtoint ptr %643 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %643, align 4
  %add235.i = add i32 %645, 1902
  %646 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul237.i = mul i32 %647, %i.0363.i
  %add238.i = add i32 %add235.i, %mul237.i
  %648 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %648)
  %649 = load i64, ptr %max_pfn.i, align 8
  %sub241.i = add i64 %649, -1
  %shr.i218 = lshr i64 %sub241.i, 32
  %conv243.i = trunc i64 %shr.i218 to i32
  tail call void %641(ptr noundef %adev, i32 noundef %add238.i, i32 noundef %conv243.i, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc.i

cond.false244.i:                                  ; preds = %land.lhs.true220.i.cond.false244.i_crit_edge, %land.lhs.true215.i.cond.false244.i_crit_edge, %cond.end210.i.cond.false244.i_crit_edge
  %650 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %arrayidx16.i, align 8
  %652 = ptrtoint ptr %651 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %651, align 4
  %add249.i = add i32 %653, 1902
  %654 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul251.i = mul i32 %655, %i.0363.i
  %add252.i = add i32 %add249.i, %mul251.i
  %656 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %656)
  %657 = load i64, ptr %max_pfn.i, align 8
  %sub255.i = add i64 %657, -1
  %shr256.i = lshr i64 %sub255.i, 32
  %conv258.i = trunc i64 %shr256.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add252.i, i32 noundef %conv258.i, i32 noundef 0) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false244.i, %cond.true226.i
  %inc.i = add nuw nsw i32 %i.0363.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %mmhub_v1_0_setup_vmid_config.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

mmhub_v1_0_setup_vmid_config.exit:                ; preds = %for.inc.i
  %eng_addr_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 11
  br label %for.body.i223

for.body.i223:                                    ; preds = %for.inc.i245.for.body.i223_crit_edge, %mmhub_v1_0_setup_vmid_config.exit
  %i.088.i = phi i32 [ 0, %mmhub_v1_0_setup_vmid_config.exit ], [ %inc.i243, %for.inc.i245.for.body.i223_crit_edge ]
  %658 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %virt, align 8
  %and.i221 = and i32 %659, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i221)
  %tobool.not.i222 = icmp eq i32 %and.i221, 0
  br i1 %tobool.not.i222, label %for.body.i223.cond.false.i233_crit_edge, label %land.lhs.true.i225

for.body.i223.cond.false.i233_crit_edge:          ; preds = %for.body.i223
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i233

land.lhs.true.i225:                               ; preds = %for.body.i223
  %660 = ptrtoint ptr %funcs.i198 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %funcs.i198, align 4
  %tobool1.not.i224 = icmp eq ptr %661, null
  br i1 %tobool1.not.i224, label %land.lhs.true.i225.cond.false.i233_crit_edge, label %land.lhs.true2.i228

land.lhs.true.i225.cond.false.i233_crit_edge:     ; preds = %land.lhs.true.i225
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i233

land.lhs.true2.i228:                              ; preds = %land.lhs.true.i225
  %sriov_wreg.i226 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %661, i32 0, i32 12
  %662 = ptrtoint ptr %sriov_wreg.i226 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %sriov_wreg.i226, align 4
  %tobool6.not.i227 = icmp eq ptr %663, null
  br i1 %tobool6.not.i227, label %land.lhs.true2.i228.cond.false.i233_crit_edge, label %cond.true.i231

land.lhs.true2.i228.cond.false.i233_crit_edge:    ; preds = %land.lhs.true2.i228
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i233

cond.true.i231:                                   ; preds = %land.lhs.true2.i228
  call void @__sanitizer_cov_trace_pc() #7
  %664 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %arrayidx16.i, align 8
  %666 = ptrtoint ptr %665 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load i32, ptr %665, align 4
  %add.i229 = add i32 %667, 1799
  %668 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %eng_addr_distance.i, align 4
  %mul.i230 = mul i32 %669, %i.088.i
  %add14.i = add i32 %add.i229, %mul.i230
  tail call void %663(ptr noundef %adev, i32 noundef %add14.i, i32 noundef -1, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i235

cond.false.i233:                                  ; preds = %land.lhs.true2.i228.cond.false.i233_crit_edge, %land.lhs.true.i225.cond.false.i233_crit_edge, %for.body.i223.cond.false.i233_crit_edge
  %670 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %arrayidx16.i, align 8
  %672 = ptrtoint ptr %671 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %671, align 4
  %add19.i232 = add i32 %673, 1799
  %674 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %eng_addr_distance.i, align 4
  %mul21.i = mul i32 %675, %i.088.i
  %add22.i = add i32 %add19.i232, %mul21.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22.i, i32 noundef -1, i32 noundef 0) #5
  br label %cond.end.i235

cond.end.i235:                                    ; preds = %cond.false.i233, %cond.true.i231
  %676 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %virt, align 8
  %and25.i = and i32 %677, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i234 = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i234, label %cond.end.i235.cond.false51.i242_crit_edge, label %land.lhs.true27.i236

cond.end.i235.cond.false51.i242_crit_edge:        ; preds = %cond.end.i235
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false51.i242

land.lhs.true27.i236:                             ; preds = %cond.end.i235
  %678 = ptrtoint ptr %funcs.i198 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %funcs.i198, align 4
  %tobool31.not.i = icmp eq ptr %679, null
  br i1 %tobool31.not.i, label %land.lhs.true27.i236.cond.false51.i242_crit_edge, label %land.lhs.true32.i

land.lhs.true27.i236.cond.false51.i242_crit_edge: ; preds = %land.lhs.true27.i236
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false51.i242

land.lhs.true32.i:                                ; preds = %land.lhs.true27.i236
  %sriov_wreg36.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %679, i32 0, i32 12
  %680 = ptrtoint ptr %sriov_wreg36.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %sriov_wreg36.i, align 4
  %tobool37.not.i237 = icmp eq ptr %681, null
  br i1 %tobool37.not.i237, label %land.lhs.true32.i.cond.false51.i242_crit_edge, label %cond.true38.i239

land.lhs.true32.i.cond.false51.i242_crit_edge:    ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false51.i242

cond.true38.i239:                                 ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #7
  %682 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %arrayidx16.i, align 8
  %684 = ptrtoint ptr %683 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %683, align 4
  %add47.i238 = add i32 %685, 1800
  %686 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %eng_addr_distance.i, align 4
  %mul49.i = mul i32 %687, %i.088.i
  %add50.i = add i32 %add47.i238, %mul49.i
  tail call void %681(ptr noundef %adev, i32 noundef %add50.i, i32 noundef 31, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc.i245

cond.false51.i242:                                ; preds = %land.lhs.true32.i.cond.false51.i242_crit_edge, %land.lhs.true27.i236.cond.false51.i242_crit_edge, %cond.end.i235.cond.false51.i242_crit_edge
  %688 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %arrayidx16.i, align 8
  %690 = ptrtoint ptr %689 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %689, align 4
  %add56.i240 = add i32 %691, 1800
  %692 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %eng_addr_distance.i, align 4
  %mul58.i = mul i32 %693, %i.088.i
  %add59.i241 = add i32 %add56.i240, %mul58.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59.i241, i32 noundef 31, i32 noundef 0) #5
  br label %for.inc.i245

for.inc.i245:                                     ; preds = %cond.false51.i242, %cond.true38.i239
  %inc.i243 = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i244 = icmp eq i32 %inc.i243, 18
  br i1 %exitcond.not.i244, label %mmhub_v1_0_program_invalidation.exit, label %for.inc.i245.for.body.i223_crit_edge

for.inc.i245.for.body.i223_crit_edge:             ; preds = %for.inc.i245
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i223

mmhub_v1_0_program_invalidation.exit:             ; preds = %for.inc.i245
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v1_0_set_fault_enable_default(ptr noundef %adev, i1 noundef zeroext %value) #1 align 64 {
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
  br i1 %tobool.not, label %cond.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false:                                       ; preds = %entry
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %2 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx18, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add21 = add i32 %5, 1671
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21, i32 noundef 0) #5
  %and23 = and i32 %call22, -8189
  %and80 = select i1 %value, i32 8188, i32 0
  %or85 = or i32 %and80, %and23
  %or91 = or i32 %or85, -1073741824
  %tmp.0 = select i1 %value, i32 %or85, i32 %or91
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt, align 8
  %and95 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %cond.false.cond.false117_crit_edge, label %land.lhs.true97

cond.false.cond.false117_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false117

land.lhs.true97:                                  ; preds = %cond.false
  %funcs100 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs100 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs100, align 4
  %tobool101.not = icmp eq ptr %9, null
  br i1 %tobool101.not, label %land.lhs.true97.cond.false117_crit_edge, label %land.lhs.true102

land.lhs.true97.cond.false117_crit_edge:          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false117

land.lhs.true102:                                 ; preds = %land.lhs.true97
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_wreg, align 4
  %tobool106.not = icmp eq ptr %11, null
  br i1 %tobool106.not, label %land.lhs.true102.cond.false117_crit_edge, label %cond.true107

land.lhs.true102.cond.false117_crit_edge:         ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false117

cond.true107:                                     ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add116 = add i32 %15, 1671
  tail call void %11(ptr noundef %adev, i32 noundef %add116, i32 noundef %tmp.0, i32 noundef 0, i32 noundef 11) #5
  br label %cleanup

cond.false117:                                    ; preds = %land.lhs.true102.cond.false117_crit_edge, %land.lhs.true97.cond.false117_crit_edge, %cond.false.cond.false117_crit_edge
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add122 = add i32 %19, 1671
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add122, i32 noundef %tmp.0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false117, %cond.true107, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v1_0_gart_disable(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %ctx_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0265 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cond.false_crit_edge, label %land.lhs.true

for.body.cond.false_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %for.body
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
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 1728
  %10 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_distance, align 4
  %mul = mul i32 %11, %i.0265
  %add14 = add i32 %add, %mul
  tail call void %5(ptr noundef %adev, i32 noundef %add14, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %for.body.cond.false_crit_edge
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add19 = add i32 %15, 1728
  %16 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctx_distance, align 4
  %mul21 = mul i32 %17, %i.0265
  %add22 = add i32 %add19, %mul21
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22, i32 noundef 0, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %cond.true
  %inc = add nuw nsw i32 %i.0265, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and25 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.end.cond.false47_crit_edge, label %land.lhs.true27

for.end.cond.false47_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47

land.lhs.true27:                                  ; preds = %for.end
  %20 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %land.lhs.true27.cond.false47_crit_edge, label %land.lhs.true32

land.lhs.true27.cond.false47_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_rreg, align 4
  %tobool36.not = icmp eq ptr %23, null
  br i1 %tobool36.not, label %land.lhs.true32.cond.false47_crit_edge, label %cond.true37

land.lhs.true32.cond.false47_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47

cond.true37:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx11, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add46 = add i32 %27, 2099
  %call = tail call i32 %23(ptr noundef %adev, i32 noundef %add46, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true32.cond.false47_crit_edge, %land.lhs.true27.cond.false47_crit_edge, %for.end.cond.false47_crit_edge
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx11, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add52 = add i32 %31, 2099
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add52, i32 noundef 0) #5
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true37
  %cond = phi i32 [ %call, %cond.true37 ], [ %call53, %cond.false47 ]
  %and56 = and i32 %cond, -66
  %32 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %virt, align 8
  %and60 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %cond.end54.cond.false83_crit_edge, label %land.lhs.true62

cond.end54.cond.false83_crit_edge:                ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false83

land.lhs.true62:                                  ; preds = %cond.end54
  %34 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs, align 4
  %tobool66.not = icmp eq ptr %35, null
  br i1 %tobool66.not, label %land.lhs.true62.cond.false83_crit_edge, label %land.lhs.true67

land.lhs.true62.cond.false83_crit_edge:           ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false83

land.lhs.true67:                                  ; preds = %land.lhs.true62
  %sriov_wreg71 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sriov_wreg71 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_wreg71, align 4
  %tobool72.not = icmp eq ptr %37, null
  br i1 %tobool72.not, label %land.lhs.true67.cond.false83_crit_edge, label %cond.true73

land.lhs.true67.cond.false83_crit_edge:           ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false83

cond.true73:                                      ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx11, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add82 = add i32 %41, 2099
  tail call void %37(ptr noundef %adev, i32 noundef %add82, i32 noundef %and56, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end89

cond.false83:                                     ; preds = %land.lhs.true67.cond.false83_crit_edge, %land.lhs.true62.cond.false83_crit_edge, %cond.end54.cond.false83_crit_edge
  %42 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx11, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add88 = add i32 %45, 2099
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add88, i32 noundef %and56, i32 noundef 0) #5
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false83, %cond.true73
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %virt, align 8
  %and92 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %cond.false120, label %cond.end89.if.end_crit_edge

cond.end89.if.end_crit_edge:                      ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.false120:                                    ; preds = %cond.end89
  %48 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx11, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add125 = add i32 %51, 1664
  %call126 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add125, i32 noundef 0) #5
  %and129 = and i32 %call126, -2
  %52 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %virt, align 8
  %and133 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %cond.false120.cond.false156_crit_edge, label %land.lhs.true135

cond.false120.cond.false156_crit_edge:            ; preds = %cond.false120
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false156

land.lhs.true135:                                 ; preds = %cond.false120
  %54 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %funcs, align 4
  %tobool139.not = icmp eq ptr %55, null
  br i1 %tobool139.not, label %land.lhs.true135.cond.false156_crit_edge, label %land.lhs.true140

land.lhs.true135.cond.false156_crit_edge:         ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false156

land.lhs.true140:                                 ; preds = %land.lhs.true135
  %sriov_wreg144 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %sriov_wreg144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sriov_wreg144, align 4
  %tobool145.not = icmp eq ptr %57, null
  br i1 %tobool145.not, label %land.lhs.true140.cond.false156_crit_edge, label %cond.true146

land.lhs.true140.cond.false156_crit_edge:         ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false156

cond.true146:                                     ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx11, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add155 = add i32 %61, 1664
  tail call void %57(ptr noundef %adev, i32 noundef %add155, i32 noundef %and129, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end162

cond.false156:                                    ; preds = %land.lhs.true140.cond.false156_crit_edge, %land.lhs.true135.cond.false156_crit_edge, %cond.false120.cond.false156_crit_edge
  %62 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx11, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add161 = add i32 %65, 1664
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add161, i32 noundef %and129, i32 noundef 0) #5
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false156, %cond.true146
  %66 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %virt, align 8
  %and165 = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %cond.end162.cond.false188_crit_edge, label %land.lhs.true167

cond.end162.cond.false188_crit_edge:              ; preds = %cond.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false188

land.lhs.true167:                                 ; preds = %cond.end162
  %68 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %funcs, align 4
  %tobool171.not = icmp eq ptr %69, null
  br i1 %tobool171.not, label %land.lhs.true167.cond.false188_crit_edge, label %land.lhs.true172

land.lhs.true167.cond.false188_crit_edge:         ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false188

land.lhs.true172:                                 ; preds = %land.lhs.true167
  %sriov_wreg176 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %69, i32 0, i32 12
  %70 = ptrtoint ptr %sriov_wreg176 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sriov_wreg176, align 4
  %tobool177.not = icmp eq ptr %71, null
  br i1 %tobool177.not, label %land.lhs.true172.cond.false188_crit_edge, label %cond.true178

land.lhs.true172.cond.false188_crit_edge:         ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false188

cond.true178:                                     ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx11, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %add187 = add i32 %75, 1666
  tail call void %71(ptr noundef %adev, i32 noundef %add187, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %if.end

cond.false188:                                    ; preds = %land.lhs.true172.cond.false188_crit_edge, %land.lhs.true167.cond.false188_crit_edge, %cond.end162.cond.false188_crit_edge
  %76 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx11, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %add193 = add i32 %79, 1666
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add193, i32 noundef 0, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %cond.false188, %cond.true178, %cond.end89.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmhub_v1_0_set_clockgating(ptr noundef %adev, i32 noundef %state) #1 align 64 {
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
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.return_crit_edge [
    i32 19, label %if.end.cond.end.i_crit_edge
    i32 20, label %if.end.cond.end.i_crit_edge34
    i32 21, label %if.end.cond.end.i_crit_edge35
    i32 22, label %if.end.cond.end.i_crit_edge36
    i32 24, label %if.end.cond.end.i_crit_edge37
  ]

if.end.cond.end.i_crit_edge37:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

if.end.cond.end.i_crit_edge36:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

if.end.cond.end.i_crit_edge35:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

if.end.cond.end.i_crit_edge34:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

cond.end.i:                                       ; preds = %if.end.cond.end.i_crit_edge, %if.end.cond.end.i_crit_edge34, %if.end.cond.end.i_crit_edge35, %if.end.cond.end.i_crit_edge36, %if.end.cond.end.i_crit_edge37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %5 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx14.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add17.i = add i32 %8, 1610
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef 0) #5
  %9 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 22
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %virt, align 8
  %and91.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end.i
  br i1 %tobool92.not.i, label %if.then.i.cond.false45.i_crit_edge, label %land.lhs.true23.i

if.then.i.cond.false45.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false45.i

land.lhs.true23.i:                                ; preds = %if.then.i
  %funcs26.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %13 = ptrtoint ptr %funcs26.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs26.i, align 4
  %tobool27.not.i = icmp eq ptr %14, null
  br i1 %tobool27.not.i, label %land.lhs.true23.i.cond.false45.i_crit_edge, label %land.lhs.true28.i

land.lhs.true23.i.cond.false45.i_crit_edge:       ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false45.i

land.lhs.true28.i:                                ; preds = %land.lhs.true23.i
  %sriov_rreg32.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %sriov_rreg32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sriov_rreg32.i, align 4
  %tobool33.not.i = icmp eq ptr %16, null
  br i1 %tobool33.not.i, label %land.lhs.true28.i.cond.false45.i_crit_edge, label %cond.true34.i

land.lhs.true28.i.cond.false45.i_crit_edge:       ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false45.i

cond.true34.i:                                    ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx14.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add43.i = add i32 %20, 99
  %call44.i = tail call i32 %16(ptr noundef %adev, i32 noundef %add43.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end52.i

cond.false45.i:                                   ; preds = %land.lhs.true28.i.cond.false45.i_crit_edge, %land.lhs.true23.i.cond.false45.i_crit_edge, %if.then.i.cond.false45.i_crit_edge
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx14.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add50.i = add i32 %24, 99
  %call51.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50.i, i32 noundef 0) #5
  br label %cond.end52.i

cond.end52.i:                                     ; preds = %cond.false45.i, %cond.true34.i
  %cond53.i = phi i32 [ %call44.i, %cond.true34.i ], [ %call51.i, %cond.false45.i ]
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %virt, align 8
  %and56.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %cond.end52.i.cond.false80.i_crit_edge, label %land.lhs.true58.i

cond.end52.i.cond.false80.i_crit_edge:            ; preds = %cond.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false80.i

land.lhs.true58.i:                                ; preds = %cond.end52.i
  %funcs61.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %27 = ptrtoint ptr %funcs61.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs61.i, align 4
  %tobool62.not.i = icmp eq ptr %28, null
  br i1 %tobool62.not.i, label %land.lhs.true58.i.cond.false80.i_crit_edge, label %land.lhs.true63.i

land.lhs.true58.i.cond.false80.i_crit_edge:       ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false80.i

land.lhs.true63.i:                                ; preds = %land.lhs.true58.i
  %sriov_rreg67.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %sriov_rreg67.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sriov_rreg67.i, align 4
  %tobool68.not.i = icmp eq ptr %30, null
  br i1 %tobool68.not.i, label %land.lhs.true63.i.cond.false80.i_crit_edge, label %cond.true69.i

land.lhs.true63.i.cond.false80.i_crit_edge:       ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false80.i

cond.true69.i:                                    ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx14.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add78.i = add i32 %34, 227
  %call79.i = tail call i32 %30(ptr noundef %adev, i32 noundef %add78.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end.i

cond.false80.i:                                   ; preds = %land.lhs.true63.i.cond.false80.i_crit_edge, %land.lhs.true58.i.cond.false80.i_crit_edge, %cond.end52.i.cond.false80.i_crit_edge
  %35 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx14.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add85.i = add i32 %38, 227
  %call86.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add85.i, i32 noundef 0) #5
  br label %if.end.i

if.else.i:                                        ; preds = %cond.end.i
  br i1 %tobool92.not.i, label %if.else.i.cond.false115.i_crit_edge, label %land.lhs.true93.i

if.else.i.cond.false115.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false115.i

land.lhs.true93.i:                                ; preds = %if.else.i
  %funcs96.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %39 = ptrtoint ptr %funcs96.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %funcs96.i, align 4
  %tobool97.not.i = icmp eq ptr %40, null
  br i1 %tobool97.not.i, label %land.lhs.true93.i.cond.false115.i_crit_edge, label %land.lhs.true98.i

land.lhs.true93.i.cond.false115.i_crit_edge:      ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false115.i

land.lhs.true98.i:                                ; preds = %land.lhs.true93.i
  %sriov_rreg102.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %sriov_rreg102.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sriov_rreg102.i, align 4
  %tobool103.not.i = icmp eq ptr %42, null
  br i1 %tobool103.not.i, label %land.lhs.true98.i.cond.false115.i_crit_edge, label %cond.true104.i

land.lhs.true98.i.cond.false115.i_crit_edge:      ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false115.i

cond.true104.i:                                   ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx14.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add113.i = add i32 %46, 143
  %call114.i = tail call i32 %42(ptr noundef %adev, i32 noundef %add113.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end.i

cond.false115.i:                                  ; preds = %land.lhs.true98.i.cond.false115.i_crit_edge, %land.lhs.true93.i.cond.false115.i_crit_edge, %if.else.i.cond.false115.i_crit_edge
  %47 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx14.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add120.i = add i32 %50, 143
  %call121.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add120.i, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false115.i, %cond.true104.i, %cond.false80.i, %cond.true69.i
  %data1.0.i = phi i32 [ %cond53.i, %cond.false80.i ], [ %cond53.i, %cond.true69.i ], [ %call114.i, %cond.true104.i ], [ %call121.i, %cond.false115.i ]
  %data2.0.i = phi i32 [ %call86.i, %cond.false80.i ], [ %call79.i, %cond.true69.i ], [ 0, %cond.true104.i ], [ 0, %cond.false115.i ]
  br i1 %cmp, label %land.lhs.true125.i, label %if.end.i.if.else135.i_crit_edge

if.end.i.if.else135.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else135.i

land.lhs.true125.i:                               ; preds = %if.end.i
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %51 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cg_flags.i, align 8
  %and126.i = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i)
  %tobool127.not.i = icmp eq i32 %and126.i, 0
  br i1 %tobool127.not.i, label %land.lhs.true125.i.if.else135.i_crit_edge, label %if.then128.i

land.lhs.true125.i.if.else135.i_crit_edge:        ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else135.i

if.then128.i:                                     ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %call18.i, 262144
  %and129.i = and i32 %data1.0.i, -253
  %53 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %54)
  %cmp131.not.i = icmp eq i32 %54, 22
  %and133.i = and i32 %data2.0.i, -253
  %spec.select.i = select i1 %cmp131.not.i, i32 %data2.0.i, i32 %and133.i
  br label %if.end143.i

if.else135.i:                                     ; preds = %land.lhs.true125.i.if.else135.i_crit_edge, %if.end.i.if.else135.i_crit_edge
  %and136.i = and i32 %call18.i, -262145
  %or137.i = or i32 %data1.0.i, 252
  %55 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %56)
  %cmp139.not.i = icmp eq i32 %56, 22
  %or141.i = or i32 %data2.0.i, 252
  %spec.select386.i = select i1 %cmp139.not.i, i32 %data2.0.i, i32 %or141.i
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.else135.i, %if.then128.i
  %data.0.i = phi i32 [ %or.i, %if.then128.i ], [ %and136.i, %if.else135.i ]
  %data1.1.i = phi i32 [ %and129.i, %if.then128.i ], [ %or137.i, %if.else135.i ]
  %data2.1.i = phi i32 [ %spec.select.i, %if.then128.i ], [ %spec.select386.i, %if.else135.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i, i32 %data.0.i)
  %cmp144.not.i = icmp eq i32 %call18.i, %data.0.i
  br i1 %cmp144.not.i, label %if.end143.i.if.end177.i_crit_edge, label %if.then145.i

if.end143.i.if.end177.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177.i

if.then145.i:                                     ; preds = %if.end143.i
  %57 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %virt, align 8
  %and148.i = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %if.then145.i.cond.false170.i_crit_edge, label %land.lhs.true150.i

if.then145.i.cond.false170.i_crit_edge:           ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false170.i

land.lhs.true150.i:                               ; preds = %if.then145.i
  %funcs153.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %59 = ptrtoint ptr %funcs153.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %funcs153.i, align 4
  %tobool154.not.i = icmp eq ptr %60, null
  br i1 %tobool154.not.i, label %land.lhs.true150.i.cond.false170.i_crit_edge, label %land.lhs.true155.i

land.lhs.true150.i.cond.false170.i_crit_edge:     ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false170.i

land.lhs.true155.i:                               ; preds = %land.lhs.true150.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool159.not.i = icmp eq ptr %62, null
  br i1 %tobool159.not.i, label %land.lhs.true155.i.cond.false170.i_crit_edge, label %cond.true160.i

land.lhs.true155.i.cond.false170.i_crit_edge:     ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false170.i

cond.true160.i:                                   ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx14.i, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %add169.i = add i32 %66, 1610
  tail call void %62(ptr noundef %adev, i32 noundef %add169.i, i32 noundef %data.0.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end177.i

cond.false170.i:                                  ; preds = %land.lhs.true155.i.cond.false170.i_crit_edge, %land.lhs.true150.i.cond.false170.i_crit_edge, %if.then145.i.cond.false170.i_crit_edge
  %67 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx14.i, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add175.i = add i32 %70, 1610
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add175.i, i32 noundef %data.0.i, i32 noundef 0) #5
  br label %if.end177.i

if.end177.i:                                      ; preds = %cond.false170.i, %cond.true160.i, %if.end143.i.if.end177.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %data1.0.i, i32 %data1.1.i)
  %cmp178.not.i = icmp eq i32 %data1.0.i, %data1.1.i
  br i1 %cmp178.not.i, label %if.end177.i.if.end249.i_crit_edge, label %if.then179.i

if.end177.i.if.end249.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end249.i

if.then179.i:                                     ; preds = %if.end177.i
  %71 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %72)
  %cmp181.not.i = icmp eq i32 %72, 22
  %73 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %virt, align 8
  %and218.i = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218.i)
  %tobool219.not.i = icmp eq i32 %and218.i, 0
  br i1 %cmp181.not.i, label %if.else215.i, label %if.then182.i

if.then182.i:                                     ; preds = %if.then179.i
  br i1 %tobool219.not.i, label %if.then182.i.cond.false208.i_crit_edge, label %land.lhs.true187.i

if.then182.i.cond.false208.i_crit_edge:           ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false208.i

land.lhs.true187.i:                               ; preds = %if.then182.i
  %funcs190.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %75 = ptrtoint ptr %funcs190.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %funcs190.i, align 4
  %tobool191.not.i = icmp eq ptr %76, null
  br i1 %tobool191.not.i, label %land.lhs.true187.i.cond.false208.i_crit_edge, label %land.lhs.true192.i

land.lhs.true187.i.cond.false208.i_crit_edge:     ; preds = %land.lhs.true187.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false208.i

land.lhs.true192.i:                               ; preds = %land.lhs.true187.i
  %sriov_wreg196.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %sriov_wreg196.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sriov_wreg196.i, align 4
  %tobool197.not.i = icmp eq ptr %78, null
  br i1 %tobool197.not.i, label %land.lhs.true192.i.cond.false208.i_crit_edge, label %cond.true198.i

land.lhs.true192.i.cond.false208.i_crit_edge:     ; preds = %land.lhs.true192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false208.i

cond.true198.i:                                   ; preds = %land.lhs.true192.i
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx14.i, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add207.i = add i32 %82, 99
  tail call void %78(ptr noundef %adev, i32 noundef %add207.i, i32 noundef %data1.1.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end249.i

cond.false208.i:                                  ; preds = %land.lhs.true192.i.cond.false208.i_crit_edge, %land.lhs.true187.i.cond.false208.i_crit_edge, %if.then182.i.cond.false208.i_crit_edge
  %83 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx14.i, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %add213.i = add i32 %86, 99
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add213.i, i32 noundef %data1.1.i, i32 noundef 0) #5
  br label %if.end249.i

if.else215.i:                                     ; preds = %if.then179.i
  br i1 %tobool219.not.i, label %if.else215.i.cond.false241.i_crit_edge, label %land.lhs.true220.i

if.else215.i.cond.false241.i_crit_edge:           ; preds = %if.else215.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false241.i

land.lhs.true220.i:                               ; preds = %if.else215.i
  %funcs223.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %87 = ptrtoint ptr %funcs223.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %funcs223.i, align 4
  %tobool224.not.i = icmp eq ptr %88, null
  br i1 %tobool224.not.i, label %land.lhs.true220.i.cond.false241.i_crit_edge, label %land.lhs.true225.i

land.lhs.true220.i.cond.false241.i_crit_edge:     ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false241.i

land.lhs.true225.i:                               ; preds = %land.lhs.true220.i
  %sriov_wreg229.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %sriov_wreg229.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sriov_wreg229.i, align 4
  %tobool230.not.i = icmp eq ptr %90, null
  br i1 %tobool230.not.i, label %land.lhs.true225.i.cond.false241.i_crit_edge, label %cond.true231.i

land.lhs.true225.i.cond.false241.i_crit_edge:     ; preds = %land.lhs.true225.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false241.i

cond.true231.i:                                   ; preds = %land.lhs.true225.i
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx14.i, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %add240.i = add i32 %94, 143
  tail call void %90(ptr noundef %adev, i32 noundef %add240.i, i32 noundef %data1.1.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end249.i

cond.false241.i:                                  ; preds = %land.lhs.true225.i.cond.false241.i_crit_edge, %land.lhs.true220.i.cond.false241.i_crit_edge, %if.else215.i.cond.false241.i_crit_edge
  %95 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx14.i, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %add246.i = add i32 %98, 143
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add246.i, i32 noundef %data1.1.i, i32 noundef 0) #5
  br label %if.end249.i

if.end249.i:                                      ; preds = %cond.false241.i, %cond.true231.i, %cond.false208.i, %cond.true198.i, %if.end177.i.if.end249.i_crit_edge
  %99 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %100)
  %cmp251.not.i = icmp eq i32 %100, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %data2.0.i, i32 %data2.1.i)
  %cmp253.not.i = icmp eq i32 %data2.0.i, %data2.1.i
  %or.cond.i = select i1 %cmp251.not.i, i1 true, i1 %cmp253.not.i
  br i1 %or.cond.i, label %if.end249.i.mmhub_v1_0_update_medium_grain_clock_gating.exit_crit_edge, label %if.then254.i

if.end249.i.mmhub_v1_0_update_medium_grain_clock_gating.exit_crit_edge: ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmhub_v1_0_update_medium_grain_clock_gating.exit

if.then254.i:                                     ; preds = %if.end249.i
  %101 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %virt, align 8
  %and257.i = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257.i)
  %tobool258.not.i = icmp eq i32 %and257.i, 0
  br i1 %tobool258.not.i, label %if.then254.i.cond.false280.i_crit_edge, label %land.lhs.true259.i

if.then254.i.cond.false280.i_crit_edge:           ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false280.i

land.lhs.true259.i:                               ; preds = %if.then254.i
  %funcs262.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %103 = ptrtoint ptr %funcs262.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %funcs262.i, align 4
  %tobool263.not.i = icmp eq ptr %104, null
  br i1 %tobool263.not.i, label %land.lhs.true259.i.cond.false280.i_crit_edge, label %land.lhs.true264.i

land.lhs.true259.i.cond.false280.i_crit_edge:     ; preds = %land.lhs.true259.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false280.i

land.lhs.true264.i:                               ; preds = %land.lhs.true259.i
  %sriov_wreg268.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %104, i32 0, i32 12
  %105 = ptrtoint ptr %sriov_wreg268.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sriov_wreg268.i, align 4
  %tobool269.not.i = icmp eq ptr %106, null
  br i1 %tobool269.not.i, label %land.lhs.true264.i.cond.false280.i_crit_edge, label %cond.true270.i

land.lhs.true264.i.cond.false280.i_crit_edge:     ; preds = %land.lhs.true264.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false280.i

cond.true270.i:                                   ; preds = %land.lhs.true264.i
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx14.i, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %add279.i = add i32 %110, 227
  tail call void %106(ptr noundef %adev, i32 noundef %add279.i, i32 noundef %data2.1.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_0_update_medium_grain_clock_gating.exit

cond.false280.i:                                  ; preds = %land.lhs.true264.i.cond.false280.i_crit_edge, %land.lhs.true259.i.cond.false280.i_crit_edge, %if.then254.i.cond.false280.i_crit_edge
  %111 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx14.i, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %add285.i = add i32 %114, 227
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add285.i, i32 noundef %data2.1.i, i32 noundef 0) #5
  br label %mmhub_v1_0_update_medium_grain_clock_gating.exit

mmhub_v1_0_update_medium_grain_clock_gating.exit: ; preds = %cond.false280.i, %cond.true270.i, %if.end249.i.mmhub_v1_0_update_medium_grain_clock_gating.exit_crit_edge
  %115 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %virt, align 8
  %and.i7 = and i32 %116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i8 = icmp eq i32 %and.i7, 0
  br i1 %tobool.not.i8, label %mmhub_v1_0_update_medium_grain_clock_gating.exit.cond.false.i22_crit_edge, label %land.lhs.true.i11

mmhub_v1_0_update_medium_grain_clock_gating.exit.cond.false.i22_crit_edge: ; preds = %mmhub_v1_0_update_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i22

land.lhs.true.i11:                                ; preds = %mmhub_v1_0_update_medium_grain_clock_gating.exit
  %funcs.i9 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %117 = ptrtoint ptr %funcs.i9 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %funcs.i9, align 4
  %tobool1.not.i10 = icmp eq ptr %118, null
  br i1 %tobool1.not.i10, label %land.lhs.true.i11.cond.false.i22_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i11.cond.false.i22_crit_edge:       ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i22

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i11
  %sriov_rreg.i12 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %118, i32 0, i32 13
  %119 = ptrtoint ptr %sriov_rreg.i12 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sriov_rreg.i12, align 4
  %tobool6.not.i13 = icmp eq ptr %120, null
  br i1 %tobool6.not.i13, label %land.lhs.true2.i14.cond.false.i22_crit_edge, label %cond.true.i18

land.lhs.true2.i14.cond.false.i22_crit_edge:      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i22

cond.true.i18:                                    ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx14.i, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %add.i16 = add i32 %124, 1610
  %call.i17 = tail call i32 %120(ptr noundef %adev, i32 noundef %add.i16, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i24

cond.false.i22:                                   ; preds = %land.lhs.true2.i14.cond.false.i22_crit_edge, %land.lhs.true.i11.cond.false.i22_crit_edge, %mmhub_v1_0_update_medium_grain_clock_gating.exit.cond.false.i22_crit_edge
  %125 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx14.i, align 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  %add17.i20 = add i32 %128, 1610
  %call18.i21 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i20, i32 noundef 0) #5
  br label %cond.end.i24

cond.end.i24:                                     ; preds = %cond.false.i22, %cond.true.i18
  %cond.i23 = phi i32 [ %call.i17, %cond.true.i18 ], [ %call18.i21, %cond.false.i22 ]
  br i1 %cmp, label %land.lhs.true20.i, label %cond.end.i24.if.else.i28_crit_edge

cond.end.i24.if.else.i28_crit_edge:               ; preds = %cond.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i28

land.lhs.true20.i:                                ; preds = %cond.end.i24
  %cg_flags.i25 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %129 = ptrtoint ptr %cg_flags.i25 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cg_flags.i25, align 8
  %and21.i = and i32 %130, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true20.i.if.else.i28_crit_edge, label %if.then.i27

land.lhs.true20.i.if.else.i28_crit_edge:          ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i28

if.then.i27:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i26 = or i32 %cond.i23, 524288
  br label %if.end.i31

if.else.i28:                                      ; preds = %land.lhs.true20.i.if.else.i28_crit_edge, %cond.end.i24.if.else.i28_crit_edge
  %and23.i = and i32 %cond.i23, -524289
  br label %if.end.i31

if.end.i31:                                       ; preds = %if.else.i28, %if.then.i27
  %data.0.i29 = phi i32 [ %or.i26, %if.then.i27 ], [ %and23.i, %if.else.i28 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i23, i32 %data.0.i29)
  %cmp.not.i30 = icmp eq i32 %cond.i23, %data.0.i29
  br i1 %cmp.not.i30, label %if.end.i31.return_crit_edge, label %if.then24.i

if.end.i31.return_crit_edge:                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then24.i:                                      ; preds = %if.end.i31
  %131 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %virt, align 8
  %and27.i = and i32 %132, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.then24.i.cond.false49.i_crit_edge, label %land.lhs.true29.i

if.then24.i.cond.false49.i_crit_edge:             ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false49.i

land.lhs.true29.i:                                ; preds = %if.then24.i
  %funcs32.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %133 = ptrtoint ptr %funcs32.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %funcs32.i, align 4
  %tobool33.not.i32 = icmp eq ptr %134, null
  br i1 %tobool33.not.i32, label %land.lhs.true29.i.cond.false49.i_crit_edge, label %land.lhs.true34.i

land.lhs.true29.i.cond.false49.i_crit_edge:       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false49.i

land.lhs.true34.i:                                ; preds = %land.lhs.true29.i
  %sriov_wreg.i33 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %134, i32 0, i32 12
  %135 = ptrtoint ptr %sriov_wreg.i33 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sriov_wreg.i33, align 4
  %tobool38.not.i = icmp eq ptr %136, null
  br i1 %tobool38.not.i, label %land.lhs.true34.i.cond.false49.i_crit_edge, label %cond.true39.i

land.lhs.true34.i.cond.false49.i_crit_edge:       ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false49.i

cond.true39.i:                                    ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #7
  %137 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx14.i, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  %add48.i = add i32 %140, 1610
  tail call void %136(ptr noundef %adev, i32 noundef %add48.i, i32 noundef %data.0.i29, i32 noundef 0, i32 noundef 11) #5
  br label %return

cond.false49.i:                                   ; preds = %land.lhs.true34.i.cond.false49.i_crit_edge, %land.lhs.true29.i.cond.false49.i_crit_edge, %if.then24.i.cond.false49.i_crit_edge
  %141 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx14.i, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  %add54.i = add i32 %144, 1610
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add54.i, i32 noundef %data.0.i29, i32 noundef 0) #5
  br label %return

return:                                           ; preds = %cond.false49.i, %cond.true39.i, %if.end.i31.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v1_0_get_clockgating(ptr noundef %adev, ptr nocapture noundef %flags) #1 align 64 {
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
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add = add i32 %12, 1610
  %call = tail call i32 %8(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx18, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add21 = add i32 %16, 1610
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
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add47 = add i32 %26, 99
  %call48 = tail call i32 %22(ptr noundef %adev, i32 noundef %add47, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end56

cond.false49:                                     ; preds = %land.lhs.true32.cond.false49_crit_edge, %land.lhs.true27.cond.false49_crit_edge, %cond.end.cond.false49_crit_edge
  %arrayidx51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx51, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add54 = add i32 %30, 99
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
define internal void @mmhub_v1_0_setup_vm_pt_regs(ptr noundef %adev, i32 noundef %vmid, i64 noundef %page_table_base) #1 align 64 {
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
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 1835
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %10 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_addr_distance, align 4
  %mul = mul i32 %11, %vmid
  %add14 = add i32 %add, %mul
  %conv = trunc i64 %page_table_base to i32
  tail call void %5(ptr noundef %adev, i32 noundef %add14, i32 noundef %conv, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add20 = add i32 %15, 1835
  %ctx_addr_distance21 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %16 = ptrtoint ptr %ctx_addr_distance21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctx_addr_distance21, align 4
  %mul22 = mul i32 %17, %vmid
  %add23 = add i32 %add20, %mul22
  %conv25 = trunc i64 %page_table_base to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add23, i32 noundef %conv25, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and28 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %cond.end.cond.false56_crit_edge, label %land.lhs.true30

cond.end.cond.false56_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56

land.lhs.true30:                                  ; preds = %cond.end
  %funcs33 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs33, align 4
  %tobool34.not = icmp eq ptr %21, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false56_crit_edge, label %land.lhs.true35

land.lhs.true30.cond.false56_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %sriov_wreg39 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg39, align 4
  %tobool40.not = icmp eq ptr %23, null
  br i1 %tobool40.not, label %land.lhs.true35.cond.false56_crit_edge, label %cond.true41

land.lhs.true35.cond.false56_crit_edge:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56

cond.true41:                                      ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add50 = add i32 %27, 1836
  %ctx_addr_distance51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %28 = ptrtoint ptr %ctx_addr_distance51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx_addr_distance51, align 4
  %mul52 = mul i32 %29, %vmid
  %add53 = add i32 %add50, %mul52
  %shr = lshr i64 %page_table_base, 32
  %conv55 = trunc i64 %shr to i32
  tail call void %23(ptr noundef %adev, i32 noundef %add53, i32 noundef %conv55, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end68

cond.false56:                                     ; preds = %land.lhs.true35.cond.false56_crit_edge, %land.lhs.true30.cond.false56_crit_edge, %cond.end.cond.false56_crit_edge
  %arrayidx58 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx58, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add61 = add i32 %33, 1836
  %ctx_addr_distance62 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %34 = ptrtoint ptr %ctx_addr_distance62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctx_addr_distance62, align 4
  %mul63 = mul i32 %35, %vmid
  %add64 = add i32 %add61, %mul63
  %shr65 = lshr i64 %page_table_base, 32
  %conv67 = trunc i64 %shr65 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add64, i32 noundef %conv67, i32 noundef 0) #5
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false56, %cond.true41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v1_0_update_power_gating(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
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
  br i1 %tobool.not, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end:                                           ; preds = %entry
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %2 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_flags, align 4
  %and1 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %adev, i32 noundef 1, i1 noundef zeroext %enable) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_pd_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_vram_mc2pa(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @mmhub_v1_0_ras_funcs, !1, !"mmhub_v1_0_ras_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 777, i32 37}
!2 = !{ptr @mmhub_v1_0_funcs, !3, !"mmhub_v1_0_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 784, i32 33}
!4 = !{ptr @mmhub_v1_0_edc_cnt_regs, !5, !"mmhub_v1_0_edc_cnt_regs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 698, i32 37}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 720, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mmhub_v1_0_get_ras_error_count._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @mmhub_v1_0_get_ras_error_count._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 731, i32 4}
!16 = !{ptr @mmhub_v1_0_get_ras_error_count._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mmhub_v1_0_get_ras_error_count._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 576, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 580, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 584, i32 4}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 588, i32 4}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 592, i32 4}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 596, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 600, i32 4}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 604, i32 4}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 608, i32 4}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 612, i32 4}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 616, i32 4}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 620, i32 4}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 624, i32 4}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 628, i32 4}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 632, i32 4}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 636, i32 4}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 640, i32 4}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 644, i32 4}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 648, i32 4}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 652, i32 4}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 656, i32 4}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 660, i32 4}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 664, i32 4}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 668, i32 4}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 672, i32 4}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 676, i32 4}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 680, i32 4}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 684, i32 4}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 688, i32 4}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 692, i32 4}
!78 = !{ptr @mmhub_v1_0_ras_fields, !79, !"mmhub_v1_0_ras_fields", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_0.c", i32 575, i32 43}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i8 0, i8 2}
