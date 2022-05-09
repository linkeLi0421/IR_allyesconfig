; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c"
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

@mmhub_v1_7_ras_funcs = dso_local constant { %struct.amdgpu_mmhub_ras_funcs, [40 x i8] } { %struct.amdgpu_mmhub_ras_funcs { ptr @amdgpu_mmhub_ras_late_init, ptr @amdgpu_mmhub_ras_fini, ptr @mmhub_v1_7_query_ras_error_count, ptr @mmhub_v1_7_query_ras_error_status, ptr @mmhub_v1_7_reset_ras_error_count, ptr @mmhub_v1_7_reset_ras_error_status }, [40 x i8] zeroinitializer }, align 32
@mmhub_v1_7_funcs = dso_local constant { %struct.amdgpu_mmhub_funcs, [60 x i8] } { %struct.amdgpu_mmhub_funcs { ptr @mmhub_v1_7_get_fb_location, ptr @mmhub_v1_7_init, ptr @mmhub_v1_7_gart_enable, ptr @mmhub_v1_7_set_fault_enable_default, ptr @mmhub_v1_7_gart_disable, ptr @mmhub_v1_7_set_clockgating, ptr @mmhub_v1_7_get_clockgating, ptr @mmhub_v1_7_setup_vm_pt_regs, ptr null }, [60 x i8] zeroinitializer }, align 32
@mmhub_v1_7_edc_cnt_regs = internal constant { [18 x %struct.soc15_reg_entry], [104 x i8] } { [18 x %struct.soc15_reg_entry] [%struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1030, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1031, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1044, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1350, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1351, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1364, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1670, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1671, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1684, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1990, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1991, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 2004, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 2310, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 2311, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 2324, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 2630, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 2631, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 2644, i32 0, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@mmhub_v1_7_ras_fields = internal constant { [150 x %struct.soc15_ras_field_entry], [1352 x i8] } { [150 x %struct.soc15_ras_field_entry] [%struct.soc15_ras_field_entry { ptr @.str.8, i32 11, i32 0, i32 0, i32 1030, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.9, i32 11, i32 0, i32 0, i32 1030, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.10, i32 11, i32 0, i32 0, i32 1030, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.11, i32 11, i32 0, i32 0, i32 1030, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.12, i32 11, i32 0, i32 0, i32 1030, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.13, i32 11, i32 0, i32 0, i32 1030, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.14, i32 11, i32 0, i32 0, i32 1030, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.15, i32 11, i32 0, i32 0, i32 1030, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.16, i32 11, i32 0, i32 0, i32 1030, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.17, i32 11, i32 0, i32 0, i32 1030, i32 -1073741824, i32 30, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.18, i32 11, i32 0, i32 0, i32 1031, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.19, i32 11, i32 0, i32 0, i32 1031, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.20, i32 11, i32 0, i32 0, i32 1031, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.21, i32 11, i32 0, i32 0, i32 1031, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.22, i32 11, i32 0, i32 0, i32 1031, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.23, i32 11, i32 0, i32 0, i32 1031, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.24, i32 11, i32 0, i32 0, i32 1031, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.25, i32 11, i32 0, i32 0, i32 1031, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.26, i32 11, i32 0, i32 0, i32 1031, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.14, i32 11, i32 0, i32 0, i32 1044, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.15, i32 11, i32 0, i32 0, i32 1044, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.16, i32 11, i32 0, i32 0, i32 1044, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.17, i32 11, i32 0, i32 0, i32 1044, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.21, i32 11, i32 0, i32 0, i32 1044, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.22, i32 11, i32 0, i32 0, i32 1044, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.27, i32 11, i32 0, i32 0, i32 1350, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.28, i32 11, i32 0, i32 0, i32 1350, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.29, i32 11, i32 0, i32 0, i32 1350, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.30, i32 11, i32 0, i32 0, i32 1350, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.31, i32 11, i32 0, i32 0, i32 1350, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.32, i32 11, i32 0, i32 0, i32 1350, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.33, i32 11, i32 0, i32 0, i32 1350, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.34, i32 11, i32 0, i32 0, i32 1350, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.35, i32 11, i32 0, i32 0, i32 1350, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.36, i32 11, i32 0, i32 0, i32 1350, i32 -1073741824, i32 30, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.37, i32 11, i32 0, i32 0, i32 1351, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.38, i32 11, i32 0, i32 0, i32 1351, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.39, i32 11, i32 0, i32 0, i32 1351, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.40, i32 11, i32 0, i32 0, i32 1351, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.41, i32 11, i32 0, i32 0, i32 1351, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.42, i32 11, i32 0, i32 0, i32 1351, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.43, i32 11, i32 0, i32 0, i32 1351, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.44, i32 11, i32 0, i32 0, i32 1351, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.45, i32 11, i32 0, i32 0, i32 1351, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.33, i32 11, i32 0, i32 0, i32 1364, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.34, i32 11, i32 0, i32 0, i32 1364, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.35, i32 11, i32 0, i32 0, i32 1364, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.36, i32 11, i32 0, i32 0, i32 1364, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.40, i32 11, i32 0, i32 0, i32 1364, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.41, i32 11, i32 0, i32 0, i32 1364, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.46, i32 11, i32 0, i32 0, i32 1670, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.47, i32 11, i32 0, i32 0, i32 1670, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.48, i32 11, i32 0, i32 0, i32 1670, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.49, i32 11, i32 0, i32 0, i32 1670, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.50, i32 11, i32 0, i32 0, i32 1670, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.51, i32 11, i32 0, i32 0, i32 1670, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.52, i32 11, i32 0, i32 0, i32 1670, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.53, i32 11, i32 0, i32 0, i32 1670, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.54, i32 11, i32 0, i32 0, i32 1670, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.55, i32 11, i32 0, i32 0, i32 1670, i32 -1073741824, i32 30, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.56, i32 11, i32 0, i32 0, i32 1671, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.57, i32 11, i32 0, i32 0, i32 1671, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.58, i32 11, i32 0, i32 0, i32 1671, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.59, i32 11, i32 0, i32 0, i32 1671, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.60, i32 11, i32 0, i32 0, i32 1671, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.61, i32 11, i32 0, i32 0, i32 1671, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.62, i32 11, i32 0, i32 0, i32 1671, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.63, i32 11, i32 0, i32 0, i32 1671, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.64, i32 11, i32 0, i32 0, i32 1671, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.52, i32 11, i32 0, i32 0, i32 1684, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.53, i32 11, i32 0, i32 0, i32 1684, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.54, i32 11, i32 0, i32 0, i32 1684, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.55, i32 11, i32 0, i32 0, i32 1684, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.59, i32 11, i32 0, i32 0, i32 1684, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.60, i32 11, i32 0, i32 0, i32 1684, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.65, i32 11, i32 0, i32 0, i32 1990, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.66, i32 11, i32 0, i32 0, i32 1990, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.67, i32 11, i32 0, i32 0, i32 1990, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.68, i32 11, i32 0, i32 0, i32 1990, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.69, i32 11, i32 0, i32 0, i32 1990, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.70, i32 11, i32 0, i32 0, i32 1990, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.71, i32 11, i32 0, i32 0, i32 1990, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.72, i32 11, i32 0, i32 0, i32 1990, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.73, i32 11, i32 0, i32 0, i32 1990, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.74, i32 11, i32 0, i32 0, i32 1990, i32 -1073741824, i32 30, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.75, i32 11, i32 0, i32 0, i32 1991, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.76, i32 11, i32 0, i32 0, i32 1991, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.77, i32 11, i32 0, i32 0, i32 1991, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.78, i32 11, i32 0, i32 0, i32 1991, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.79, i32 11, i32 0, i32 0, i32 1991, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.80, i32 11, i32 0, i32 0, i32 1991, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.81, i32 11, i32 0, i32 0, i32 1991, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.82, i32 11, i32 0, i32 0, i32 1991, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.83, i32 11, i32 0, i32 0, i32 1991, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.71, i32 11, i32 0, i32 0, i32 2004, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.72, i32 11, i32 0, i32 0, i32 2004, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.73, i32 11, i32 0, i32 0, i32 2004, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.74, i32 11, i32 0, i32 0, i32 2004, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.78, i32 11, i32 0, i32 0, i32 2004, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.79, i32 11, i32 0, i32 0, i32 2004, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.84, i32 11, i32 0, i32 0, i32 2310, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.85, i32 11, i32 0, i32 0, i32 2310, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.86, i32 11, i32 0, i32 0, i32 2310, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.87, i32 11, i32 0, i32 0, i32 2310, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.88, i32 11, i32 0, i32 0, i32 2310, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.89, i32 11, i32 0, i32 0, i32 2310, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.90, i32 11, i32 0, i32 0, i32 2310, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.91, i32 11, i32 0, i32 0, i32 2310, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.92, i32 11, i32 0, i32 0, i32 2310, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.93, i32 11, i32 0, i32 0, i32 2310, i32 -1073741824, i32 30, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.94, i32 11, i32 0, i32 0, i32 2311, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.95, i32 11, i32 0, i32 0, i32 2311, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.96, i32 11, i32 0, i32 0, i32 2311, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.97, i32 11, i32 0, i32 0, i32 2311, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.98, i32 11, i32 0, i32 0, i32 2311, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.99, i32 11, i32 0, i32 0, i32 2311, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.100, i32 11, i32 0, i32 0, i32 2311, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.101, i32 11, i32 0, i32 0, i32 2311, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.102, i32 11, i32 0, i32 0, i32 2311, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.90, i32 11, i32 0, i32 0, i32 2324, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.91, i32 11, i32 0, i32 0, i32 2324, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.92, i32 11, i32 0, i32 0, i32 2324, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.93, i32 11, i32 0, i32 0, i32 2324, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.97, i32 11, i32 0, i32 0, i32 2324, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.98, i32 11, i32 0, i32 0, i32 2324, i32 0, i32 0, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.103, i32 11, i32 0, i32 0, i32 2630, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.104, i32 11, i32 0, i32 0, i32 2630, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.105, i32 11, i32 0, i32 0, i32 2630, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.106, i32 11, i32 0, i32 0, i32 2630, i32 12288, i32 12, i32 49152, i32 14 }, %struct.soc15_ras_field_entry { ptr @.str.107, i32 11, i32 0, i32 0, i32 2630, i32 196608, i32 16, i32 786432, i32 18 }, %struct.soc15_ras_field_entry { ptr @.str.108, i32 11, i32 0, i32 0, i32 2630, i32 3145728, i32 20, i32 12582912, i32 22 }, %struct.soc15_ras_field_entry { ptr @.str.109, i32 11, i32 0, i32 0, i32 2630, i32 50331648, i32 24, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.110, i32 11, i32 0, i32 0, i32 2630, i32 201326592, i32 26, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.111, i32 11, i32 0, i32 0, i32 2630, i32 805306368, i32 28, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.112, i32 11, i32 0, i32 0, i32 2630, i32 -1073741824, i32 30, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.113, i32 11, i32 0, i32 0, i32 2631, i32 3, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.114, i32 11, i32 0, i32 0, i32 2631, i32 48, i32 4, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.115, i32 11, i32 0, i32 0, i32 2631, i32 768, i32 8, i32 3072, i32 10 }, %struct.soc15_ras_field_entry { ptr @.str.116, i32 11, i32 0, i32 0, i32 2631, i32 12288, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.117, i32 11, i32 0, i32 0, i32 2631, i32 49152, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.118, i32 11, i32 0, i32 0, i32 2631, i32 196608, i32 16, i32 50331648, i32 24 }, %struct.soc15_ras_field_entry { ptr @.str.119, i32 11, i32 0, i32 0, i32 2631, i32 786432, i32 18, i32 201326592, i32 26 }, %struct.soc15_ras_field_entry { ptr @.str.120, i32 11, i32 0, i32 0, i32 2631, i32 3145728, i32 20, i32 805306368, i32 28 }, %struct.soc15_ras_field_entry { ptr @.str.121, i32 11, i32 0, i32 0, i32 2631, i32 12582912, i32 22, i32 -1073741824, i32 30 }, %struct.soc15_ras_field_entry { ptr @.str.109, i32 11, i32 0, i32 0, i32 2644, i32 0, i32 0, i32 3, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.110, i32 11, i32 0, i32 0, i32 2644, i32 0, i32 0, i32 12, i32 2 }, %struct.soc15_ras_field_entry { ptr @.str.111, i32 11, i32 0, i32 0, i32 2644, i32 0, i32 0, i32 48, i32 4 }, %struct.soc15_ras_field_entry { ptr @.str.112, i32 11, i32 0, i32 0, i32 2644, i32 0, i32 0, i32 192, i32 6 }, %struct.soc15_ras_field_entry { ptr @.str.116, i32 11, i32 0, i32 0, i32 2644, i32 0, i32 0, i32 768, i32 8 }, %struct.soc15_ras_field_entry { ptr @.str.117, i32 11, i32 0, i32 0, i32 2644, i32 0, i32 0, i32 3072, i32 10 }], [1352 x i8] zeroinitializer }, align 32
@mmhub_v1_7_get_ras_error_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1225, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: MMHUB SubBlock %s, SEC %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mmhub_v1_7_get_ras_error_count\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmhub_v1_7_get_ras_error_count._entry_ptr = internal global ptr @mmhub_v1_7_get_ras_error_count._entry, section ".printk_index", align 4
@mmhub_v1_7_get_ras_error_count._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: MMHUB SubBlock %s, DED %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mmhub_v1_7_get_ras_error_count._entry_ptr.7 = internal global ptr @mmhub_v1_7_get_ras_error_count._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA0_DRAMRD_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA0_DRAMWR_CMDMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA0_DRAMWR_DATAMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA0_RRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA0_WRET_TAGMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA0_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA0_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA0_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA0_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA0_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
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
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA1_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA1_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA1_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA1_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA1_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
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
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA2_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA2_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA2_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA2_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA2_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
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
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA3_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA3_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA3_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA3_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA3_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
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
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA4_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA4_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA4_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA4_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA4_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
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
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA5_IOWR_DATAMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA5_DRAMRD_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMEA5_DRAMWR_PAGEMEM\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA5_IORD_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMEA5_IOWR_CMDMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA5_GMIRD_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MMEA5_GMIWR_CMDMEM\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA5_GMIWR_DATAMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA5_GMIRD_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMEA5_GMIWR_PAGEMEM\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA5_MAM_D0MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA5_MAM_D1MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA5_MAM_D2MEM\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMEA5_MAM_D3MEM\00", [16 x i8] zeroinitializer }, align 32
@mmhub_v1_7_ea_err_status_regs = internal constant { [6 x %struct.soc15_reg_entry], [56 x i8] } { [6 x %struct.soc15_reg_entry] [%struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1041, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1361, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 1681, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 2001, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 2321, i32 0, i32 0, i32 0 }, %struct.soc15_reg_entry { i32 11, i32 0, i32 0, i32 2641, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@mmhub_v1_7_query_ras_error_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1301, ptr @.str.124, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"amdgpu: MMHUB EA err detected at instance: %d, status: 0x%x!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mmhub_v1_7_query_ras_error_status\00", [62 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mmhub_v1_7_query_ras_error_status._entry_ptr = internal global ptr @mmhub_v1_7_query_ras_error_status._entry, section ".printk_index", align 4
@___asan_gen_.125 = private unnamed_addr constant [21 x i8] c"mmhub_v1_7_ras_funcs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1324, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"mmhub_v1_7_funcs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1333, i32 33 }
@___asan_gen_.131 = private unnamed_addr constant [24 x i8] c"mmhub_v1_7_edc_cnt_regs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1185, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"mmhub_v1_7_ras_fields\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 571, i32 43 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1223, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1233, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 573, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 577, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 581, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 585, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 589, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 593, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 597, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 601, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 605, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 609, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 613, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 617, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 621, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 625, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 629, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 633, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 637, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 641, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 645, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 675, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 679, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 683, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 687, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 691, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 695, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 699, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 703, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 707, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 711, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 715, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 719, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 723, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 727, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 731, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 735, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 739, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 743, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 747, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 777, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 781, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 785, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 789, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 793, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 797, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 801, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 805, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 809, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 813, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 817, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 821, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 825, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 829, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 833, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 837, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 841, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 845, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 849, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 879, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 883, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 887, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 891, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 895, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 899, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 903, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 907, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 911, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 915, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 919, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 923, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 927, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 931, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 935, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 939, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 943, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 947, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 951, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 981, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 985, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 989, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 993, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 997, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1001, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1005, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1009, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1013, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1017, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1021, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1025, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1029, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1033, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1037, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1041, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1045, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1049, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1053, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1083, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1087, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1091, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1095, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1099, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1103, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1107, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1111, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1115, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1119, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1123, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1127, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1131, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1135, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1139, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1143, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1147, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1151, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1155, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant [30 x i8] c"mmhub_v1_7_ea_err_status_regs\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1277, i32 37 }
@___asan_gen_.506 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.516 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1300, i32 4 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @mmhub_v1_7_get_ras_error_count._entry, ptr @mmhub_v1_7_get_ras_error_count._entry.5, ptr @mmhub_v1_7_get_ras_error_count._entry_ptr, ptr @mmhub_v1_7_get_ras_error_count._entry_ptr.7, ptr @mmhub_v1_7_query_ras_error_status._entry, ptr @mmhub_v1_7_query_ras_error_status._entry_ptr, ptr @mmhub_v1_7_ras_funcs, ptr @mmhub_v1_7_funcs, ptr @mmhub_v1_7_edc_cnt_regs, ptr @mmhub_v1_7_ras_fields, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @mmhub_v1_7_ea_err_status_regs, ptr @.str.122, ptr @.str.123, ptr @.str.124], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_7_ras_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_7_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_7_edc_cnt_regs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_7_ras_fields to i32), i32 5400, i32 6752, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_7_get_ras_error_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_7_get_ras_error_count._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_7_ea_err_status_regs to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v1_7_query_ras_error_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_mmhub_ras_late_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mmhub_ras_fini(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v1_7_query_ras_error_count(ptr noundef %adev, ptr nocapture noundef %ras_error_status) #1 align 64 {
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
  %arrayidx = getelementptr [18 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_edc_cnt_regs, i32 0, i32 %i.030
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inst = getelementptr [18 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_edc_cnt_regs, i32 0, i32 %i.030, i32 1
  %4 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inst, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %3, i32 %5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %seg = getelementptr [18 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_edc_cnt_regs, i32 0, i32 %i.030, i32 2
  %8 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seg, align 4
  %arrayidx5 = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %reg_offset7 = getelementptr [18 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_edc_cnt_regs, i32 0, i32 %i.030, i32 3
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
  %arrayidx.i = getelementptr [150 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_7_ras_fields, i32 0, i32 %i.01.i
  %reg_offset.i = getelementptr [150 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_7_ras_fields, i32 0, i32 %i.01.i, i32 4
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
  %sec_count_mask.i = getelementptr [150 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_7_ras_fields, i32 0, i32 %i.01.i, i32 5
  %18 = ptrtoint ptr %sec_count_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sec_count_mask.i, align 4
  %and.i = and i32 %19, %call
  %sec_count_shift.i = getelementptr [150 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_7_ras_fields, i32 0, i32 %i.01.i, i32 6
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
  %ded_count_mask.i = getelementptr [150 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_7_ras_fields, i32 0, i32 %i.01.i, i32 7
  %26 = ptrtoint ptr %ded_count_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ded_count_mask.i, align 4
  %and9.i = and i32 %27, %call
  %ded_count_shift.i = getelementptr [150 x %struct.soc15_ras_field_entry], ptr @mmhub_v1_7_ras_fields, i32 0, i32 %i.01.i, i32 8
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
  %exitcond.not.i = icmp eq i32 %inc.i, 150
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
  %exitcond.not = icmp eq i32 %inc, 18
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
define internal void @mmhub_v1_7_query_ras_error_status(ptr noundef %adev) #1 align 64 {
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
  %arrayidx = getelementptr [6 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_ea_err_status_regs, i32 0, i32 %i.034
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %inst = getelementptr [6 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_ea_err_status_regs, i32 0, i32 %i.034, i32 1
  %7 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %6, i32 %8
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  %seg = getelementptr [6 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_ea_err_status_regs, i32 0, i32 %i.034, i32 2
  %11 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seg, align 4
  %arrayidx5 = getelementptr i32, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5, align 4
  %reg_offset7 = getelementptr [6 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_ea_err_status_regs, i32 0, i32 %i.034, i32 3
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.122, i32 noundef %i.034, i32 noundef %call8) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 6
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
define internal void @mmhub_v1_7_reset_ras_error_count(ptr noundef %adev) #1 align 64 {
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
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %amdgpu_ras_is_supported.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [18 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_edc_cnt_regs, i32 0, i32 %i.016
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %inst = getelementptr [18 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_edc_cnt_regs, i32 0, i32 %i.016, i32 1
  %7 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %6, i32 %8
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  %seg = getelementptr [18 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_edc_cnt_regs, i32 0, i32 %i.016, i32 2
  %11 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seg, align 4
  %arrayidx5 = getelementptr i32, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5, align 4
  %reg_offset7 = getelementptr [18 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_edc_cnt_regs, i32 0, i32 %i.016, i32 3
  %15 = ptrtoint ptr %reg_offset7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_offset7, align 4
  %add = add i32 %16, %14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 0) #5
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 18
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
define internal void @mmhub_v1_7_reset_ras_error_status(ptr noundef %adev) #1 align 64 {
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

for.body:                                         ; preds = %for.body.for.body_crit_edge, %amdgpu_ras_is_supported.exit.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %amdgpu_ras_is_supported.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_ea_err_status_regs, i32 0, i32 %i.038
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %inst = getelementptr [6 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_ea_err_status_regs, i32 0, i32 %i.038, i32 1
  %7 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %6, i32 %8
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  %seg = getelementptr [6 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_ea_err_status_regs, i32 0, i32 %i.038, i32 2
  %11 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seg, align 4
  %arrayidx5 = getelementptr i32, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5, align 4
  %reg_offset7 = getelementptr [6 x %struct.soc15_reg_entry], ptr @mmhub_v1_7_ea_err_status_regs, i32 0, i32 %i.038, i32 3
  %15 = ptrtoint ptr %reg_offset7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_offset7, align 4
  %add = add i32 %16, %14
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #5
  %or = or i32 %call8, 2048
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3, align 4
  %arrayidx18 = getelementptr i32, ptr %18, i32 %12
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx18, align 4
  %add21 = add i32 %20, %16
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21, i32 noundef %or, i32 noundef 0) #5
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %amdgpu_ras_is_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mmhub_v1_7_get_fb_location(ptr noundef %adev) #1 align 64 {
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
  %add = add i32 %9, 3264
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
  %add17 = add i32 %13, 3264
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
  %add43 = add i32 %23, 3265
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
  %add50 = add i32 %27, 3265
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
define internal void @mmhub_v1_7_init(ptr nocapture noundef %adev) #2 align 64 {
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
  %add = add i32 %3, 3115
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %arrayidx, align 4
  %5 = load i32, ptr %1, align 4
  %add8 = add i32 %5, 3116
  %ctx0_ptb_addr_hi32 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 1
  %6 = ptrtoint ptr %ctx0_ptb_addr_hi32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add8, ptr %ctx0_ptb_addr_hi32, align 4
  %7 = load i32, ptr %1, align 4
  %add13 = add i32 %7, 3043
  %vm_inv_eng0_req = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 3
  %8 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add13, ptr %vm_inv_eng0_req, align 4
  %9 = load i32, ptr %1, align 4
  %add18 = add i32 %9, 3061
  %vm_inv_eng0_ack = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 4
  %10 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add18, ptr %vm_inv_eng0_ack, align 4
  %11 = load i32, ptr %1, align 4
  %add23 = add i32 %11, 3008
  %vm_context0_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 5
  %12 = ptrtoint ptr %vm_context0_cntl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add23, ptr %vm_context0_cntl, align 4
  %13 = load i32, ptr %1, align 4
  %add28 = add i32 %13, 2955
  %vm_l2_pro_fault_status = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 6
  %14 = ptrtoint ptr %vm_l2_pro_fault_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add28, ptr %vm_l2_pro_fault_status, align 4
  %15 = load i32, ptr %1, align 4
  %add33 = add i32 %15, 2951
  %vm_l2_pro_fault_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 7
  %16 = ptrtoint ptr %vm_l2_pro_fault_cntl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add33, ptr %vm_l2_pro_fault_cntl, align 4
  %ctx_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 8
  %17 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %ctx_distance, align 4
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %18 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %ctx_addr_distance, align 4
  %eng_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 10
  %19 = ptrtoint ptr %eng_distance to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %eng_distance, align 4
  %eng_addr_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 11
  %20 = ptrtoint ptr %eng_addr_distance to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %eng_addr_distance, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmhub_v1_7_gart_enable(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdb0_bo.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 44
  %0 = ptrtoint ptr %pdb0_bo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdb0_bo.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i64 @amdgpu_gmc_pd_addr(ptr noundef nonnull %1) #5
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %2 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gart.i, align 8
  %call3.i = tail call i64 @amdgpu_gmc_pd_addr(ptr noundef %3) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %pt_base.0.i = phi i64 [ %call.i, %if.then.i ], [ %call3.i, %if.else.i ]
  tail call void @mmhub_v1_7_setup_vm_pt_regs(ptr noundef %adev, i32 noundef 0, i64 noundef %pt_base.0.i) #5
  %4 = ptrtoint ptr %pdb0_bo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdb0_bo.i, align 8
  %tobool6.not.i = icmp eq ptr %5, null
  %virt151.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %6 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt151.i, align 8
  %and153.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153.i)
  %tobool154.not.i = icmp eq i32 %and153.i, 0
  br i1 %tobool6.not.i, label %if.else150.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  br i1 %tobool154.not.i, label %if.then7.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.then7.i.cond.false.i_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then7.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool9.not.i = icmp eq ptr %9, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool14.not.i = icmp eq ptr %11, null
  br i1 %tobool14.not.i, label %land.lhs.true10.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true10.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add.i = add i32 %15, 3147
  %fb_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %16 = ptrtoint ptr %fb_start.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fb_start.i, align 8
  %shr.i = lshr i64 %17, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void %11(ptr noundef %adev, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true10.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.then7.i.cond.false.i_crit_edge
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %18 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx23.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add26.i = add i32 %21, 3147
  %fb_start28.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %22 = ptrtoint ptr %fb_start28.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fb_start28.i, align 8
  %shr29.i = lshr i64 %23, 12
  %conv30.i = trunc i64 %shr29.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add26.i, i32 noundef %conv30.i, i32 noundef 0) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %24 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %virt151.i, align 8
  %and33.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %cond.end.i.cond.false60.i_crit_edge, label %land.lhs.true35.i

cond.end.i.cond.false60.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false60.i

land.lhs.true35.i:                                ; preds = %cond.end.i
  %funcs38.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %26 = ptrtoint ptr %funcs38.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %funcs38.i, align 4
  %tobool39.not.i = icmp eq ptr %27, null
  br i1 %tobool39.not.i, label %land.lhs.true35.i.cond.false60.i_crit_edge, label %land.lhs.true40.i

land.lhs.true35.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false60.i

land.lhs.true40.i:                                ; preds = %land.lhs.true35.i
  %sriov_wreg44.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %sriov_wreg44.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sriov_wreg44.i, align 4
  %tobool45.not.i = icmp eq ptr %29, null
  br i1 %tobool45.not.i, label %land.lhs.true40.i.cond.false60.i_crit_edge, label %cond.true46.i

land.lhs.true40.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false60.i

cond.true46.i:                                    ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx52.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %30 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx52.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add55.i = add i32 %33, 3148
  %fb_start57.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %34 = ptrtoint ptr %fb_start57.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %fb_start57.i, align 8
  %shr58.i = lshr i64 %35, 44
  %conv59.i = trunc i64 %shr58.i to i32
  tail call void %29(ptr noundef %adev, i32 noundef %add55.i, i32 noundef %conv59.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end70.i

cond.false60.i:                                   ; preds = %land.lhs.true40.i.cond.false60.i_crit_edge, %land.lhs.true35.i.cond.false60.i_crit_edge, %cond.end.i.cond.false60.i_crit_edge
  %arrayidx62.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %36 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx62.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add65.i = add i32 %39, 3148
  %fb_start67.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %40 = ptrtoint ptr %fb_start67.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %fb_start67.i, align 8
  %shr68.i = lshr i64 %41, 44
  %conv69.i = trunc i64 %shr68.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add65.i, i32 noundef %conv69.i, i32 noundef 0) #5
  br label %cond.end70.i

cond.end70.i:                                     ; preds = %cond.false60.i, %cond.true46.i
  %42 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %virt151.i, align 8
  %and73.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %cond.end70.i.cond.false99.i_crit_edge, label %land.lhs.true75.i

cond.end70.i.cond.false99.i_crit_edge:            ; preds = %cond.end70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false99.i

land.lhs.true75.i:                                ; preds = %cond.end70.i
  %funcs78.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %44 = ptrtoint ptr %funcs78.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs78.i, align 4
  %tobool79.not.i = icmp eq ptr %45, null
  br i1 %tobool79.not.i, label %land.lhs.true75.i.cond.false99.i_crit_edge, label %land.lhs.true80.i

land.lhs.true75.i.cond.false99.i_crit_edge:       ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false99.i

land.lhs.true80.i:                                ; preds = %land.lhs.true75.i
  %sriov_wreg84.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %sriov_wreg84.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sriov_wreg84.i, align 4
  %tobool85.not.i = icmp eq ptr %47, null
  br i1 %tobool85.not.i, label %land.lhs.true80.i.cond.false99.i_crit_edge, label %cond.true86.i

land.lhs.true80.i.cond.false99.i_crit_edge:       ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false99.i

cond.true86.i:                                    ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx92.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %48 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx92.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add95.i = add i32 %51, 3179
  %gart_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %52 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %gart_end.i, align 8
  %shr97.i = lshr i64 %53, 12
  %conv98.i = trunc i64 %shr97.i to i32
  tail call void %47(ptr noundef %adev, i32 noundef %add95.i, i32 noundef %conv98.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end109.i

cond.false99.i:                                   ; preds = %land.lhs.true80.i.cond.false99.i_crit_edge, %land.lhs.true75.i.cond.false99.i_crit_edge, %cond.end70.i.cond.false99.i_crit_edge
  %arrayidx101.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %54 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx101.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add104.i = add i32 %57, 3179
  %gart_end106.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %58 = ptrtoint ptr %gart_end106.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %gart_end106.i, align 8
  %shr107.i = lshr i64 %59, 12
  %conv108.i = trunc i64 %shr107.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add104.i, i32 noundef %conv108.i, i32 noundef 0) #5
  br label %cond.end109.i

cond.end109.i:                                    ; preds = %cond.false99.i, %cond.true86.i
  %60 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %virt151.i, align 8
  %and112.i = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  br i1 %tobool113.not.i, label %cond.end109.i.cond.false139.i_crit_edge, label %land.lhs.true114.i

cond.end109.i.cond.false139.i_crit_edge:          ; preds = %cond.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false139.i

land.lhs.true114.i:                               ; preds = %cond.end109.i
  %funcs117.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %62 = ptrtoint ptr %funcs117.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %funcs117.i, align 4
  %tobool118.not.i = icmp eq ptr %63, null
  br i1 %tobool118.not.i, label %land.lhs.true114.i.cond.false139.i_crit_edge, label %land.lhs.true119.i

land.lhs.true114.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false139.i

land.lhs.true119.i:                               ; preds = %land.lhs.true114.i
  %sriov_wreg123.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %sriov_wreg123.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sriov_wreg123.i, align 4
  %tobool124.not.i = icmp eq ptr %65, null
  br i1 %tobool124.not.i, label %land.lhs.true119.i.cond.false139.i_crit_edge, label %cond.true125.i

land.lhs.true119.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false139.i

cond.true125.i:                                   ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx131.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %66 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx131.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add134.i = add i32 %69, 3180
  %gart_end136.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %70 = ptrtoint ptr %gart_end136.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %gart_end136.i, align 8
  %shr137.i = lshr i64 %71, 44
  %conv138.i = trunc i64 %shr137.i to i32
  tail call void %65(ptr noundef %adev, i32 noundef %add134.i, i32 noundef %conv138.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_7_init_gart_aperture_regs.exit

cond.false139.i:                                  ; preds = %land.lhs.true119.i.cond.false139.i_crit_edge, %land.lhs.true114.i.cond.false139.i_crit_edge, %cond.end109.i.cond.false139.i_crit_edge
  %arrayidx141.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %72 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx141.i, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %add144.i = add i32 %75, 3180
  %gart_end146.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %76 = ptrtoint ptr %gart_end146.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %gart_end146.i, align 8
  %shr147.i = lshr i64 %77, 44
  %conv148.i = trunc i64 %shr147.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add144.i, i32 noundef %conv148.i, i32 noundef 0) #5
  br label %mmhub_v1_7_init_gart_aperture_regs.exit

if.else150.i:                                     ; preds = %if.end.i
  br i1 %tobool154.not.i, label %if.else150.i.cond.false179.i_crit_edge, label %land.lhs.true155.i

if.else150.i.cond.false179.i_crit_edge:           ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false179.i

land.lhs.true155.i:                               ; preds = %if.else150.i
  %funcs158.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %78 = ptrtoint ptr %funcs158.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %funcs158.i, align 4
  %tobool159.not.i = icmp eq ptr %79, null
  br i1 %tobool159.not.i, label %land.lhs.true155.i.cond.false179.i_crit_edge, label %land.lhs.true160.i

land.lhs.true155.i.cond.false179.i_crit_edge:     ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false179.i

land.lhs.true160.i:                               ; preds = %land.lhs.true155.i
  %sriov_wreg164.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %sriov_wreg164.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sriov_wreg164.i, align 4
  %tobool165.not.i = icmp eq ptr %81, null
  br i1 %tobool165.not.i, label %land.lhs.true160.i.cond.false179.i_crit_edge, label %cond.true166.i

land.lhs.true160.i.cond.false179.i_crit_edge:     ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false179.i

cond.true166.i:                                   ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx172.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %82 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx172.i, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %add175.i = add i32 %85, 3147
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %86 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %gart_start.i, align 8
  %shr177.i = lshr i64 %87, 12
  %conv178.i = trunc i64 %shr177.i to i32
  tail call void %81(ptr noundef %adev, i32 noundef %add175.i, i32 noundef %conv178.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end189.i

cond.false179.i:                                  ; preds = %land.lhs.true160.i.cond.false179.i_crit_edge, %land.lhs.true155.i.cond.false179.i_crit_edge, %if.else150.i.cond.false179.i_crit_edge
  %arrayidx181.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %88 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx181.i, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add184.i = add i32 %91, 3147
  %gart_start186.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %92 = ptrtoint ptr %gart_start186.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %gart_start186.i, align 8
  %shr187.i = lshr i64 %93, 12
  %conv188.i = trunc i64 %shr187.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add184.i, i32 noundef %conv188.i, i32 noundef 0) #5
  br label %cond.end189.i

cond.end189.i:                                    ; preds = %cond.false179.i, %cond.true166.i
  %94 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %virt151.i, align 8
  %and192.i = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192.i)
  %tobool193.not.i = icmp eq i32 %and192.i, 0
  br i1 %tobool193.not.i, label %cond.end189.i.cond.false219.i_crit_edge, label %land.lhs.true194.i

cond.end189.i.cond.false219.i_crit_edge:          ; preds = %cond.end189.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false219.i

land.lhs.true194.i:                               ; preds = %cond.end189.i
  %funcs197.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %96 = ptrtoint ptr %funcs197.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %funcs197.i, align 4
  %tobool198.not.i = icmp eq ptr %97, null
  br i1 %tobool198.not.i, label %land.lhs.true194.i.cond.false219.i_crit_edge, label %land.lhs.true199.i

land.lhs.true194.i.cond.false219.i_crit_edge:     ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false219.i

land.lhs.true199.i:                               ; preds = %land.lhs.true194.i
  %sriov_wreg203.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %sriov_wreg203.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sriov_wreg203.i, align 4
  %tobool204.not.i = icmp eq ptr %99, null
  br i1 %tobool204.not.i, label %land.lhs.true199.i.cond.false219.i_crit_edge, label %cond.true205.i

land.lhs.true199.i.cond.false219.i_crit_edge:     ; preds = %land.lhs.true199.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false219.i

cond.true205.i:                                   ; preds = %land.lhs.true199.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx211.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %100 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx211.i, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add214.i = add i32 %103, 3148
  %gart_start216.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %104 = ptrtoint ptr %gart_start216.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %gart_start216.i, align 8
  %shr217.i = lshr i64 %105, 44
  %conv218.i = trunc i64 %shr217.i to i32
  tail call void %99(ptr noundef %adev, i32 noundef %add214.i, i32 noundef %conv218.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end229.i

cond.false219.i:                                  ; preds = %land.lhs.true199.i.cond.false219.i_crit_edge, %land.lhs.true194.i.cond.false219.i_crit_edge, %cond.end189.i.cond.false219.i_crit_edge
  %arrayidx221.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %106 = ptrtoint ptr %arrayidx221.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx221.i, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %add224.i = add i32 %109, 3148
  %gart_start226.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %110 = ptrtoint ptr %gart_start226.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %gart_start226.i, align 8
  %shr227.i = lshr i64 %111, 44
  %conv228.i = trunc i64 %shr227.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add224.i, i32 noundef %conv228.i, i32 noundef 0) #5
  br label %cond.end229.i

cond.end229.i:                                    ; preds = %cond.false219.i, %cond.true205.i
  %112 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %virt151.i, align 8
  %and232.i = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232.i)
  %tobool233.not.i = icmp eq i32 %and232.i, 0
  br i1 %tobool233.not.i, label %cond.end229.i.cond.false259.i_crit_edge, label %land.lhs.true234.i

cond.end229.i.cond.false259.i_crit_edge:          ; preds = %cond.end229.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false259.i

land.lhs.true234.i:                               ; preds = %cond.end229.i
  %funcs237.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %114 = ptrtoint ptr %funcs237.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %funcs237.i, align 4
  %tobool238.not.i = icmp eq ptr %115, null
  br i1 %tobool238.not.i, label %land.lhs.true234.i.cond.false259.i_crit_edge, label %land.lhs.true239.i

land.lhs.true234.i.cond.false259.i_crit_edge:     ; preds = %land.lhs.true234.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false259.i

land.lhs.true239.i:                               ; preds = %land.lhs.true234.i
  %sriov_wreg243.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %sriov_wreg243.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sriov_wreg243.i, align 4
  %tobool244.not.i = icmp eq ptr %117, null
  br i1 %tobool244.not.i, label %land.lhs.true239.i.cond.false259.i_crit_edge, label %cond.true245.i

land.lhs.true239.i.cond.false259.i_crit_edge:     ; preds = %land.lhs.true239.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false259.i

cond.true245.i:                                   ; preds = %land.lhs.true239.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx251.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %118 = ptrtoint ptr %arrayidx251.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx251.i, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %add254.i = add i32 %121, 3179
  %gart_end256.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %122 = ptrtoint ptr %gart_end256.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %gart_end256.i, align 8
  %shr257.i = lshr i64 %123, 12
  %conv258.i = trunc i64 %shr257.i to i32
  tail call void %117(ptr noundef %adev, i32 noundef %add254.i, i32 noundef %conv258.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end269.i

cond.false259.i:                                  ; preds = %land.lhs.true239.i.cond.false259.i_crit_edge, %land.lhs.true234.i.cond.false259.i_crit_edge, %cond.end229.i.cond.false259.i_crit_edge
  %arrayidx261.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %124 = ptrtoint ptr %arrayidx261.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx261.i, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %add264.i = add i32 %127, 3179
  %gart_end266.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %128 = ptrtoint ptr %gart_end266.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %gart_end266.i, align 8
  %shr267.i = lshr i64 %129, 12
  %conv268.i = trunc i64 %shr267.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add264.i, i32 noundef %conv268.i, i32 noundef 0) #5
  br label %cond.end269.i

cond.end269.i:                                    ; preds = %cond.false259.i, %cond.true245.i
  %130 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %virt151.i, align 8
  %and272.i = and i32 %131, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272.i)
  %tobool273.not.i = icmp eq i32 %and272.i, 0
  br i1 %tobool273.not.i, label %cond.end269.i.cond.false299.i_crit_edge, label %land.lhs.true274.i

cond.end269.i.cond.false299.i_crit_edge:          ; preds = %cond.end269.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false299.i

land.lhs.true274.i:                               ; preds = %cond.end269.i
  %funcs277.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %132 = ptrtoint ptr %funcs277.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %funcs277.i, align 4
  %tobool278.not.i = icmp eq ptr %133, null
  br i1 %tobool278.not.i, label %land.lhs.true274.i.cond.false299.i_crit_edge, label %land.lhs.true279.i

land.lhs.true274.i.cond.false299.i_crit_edge:     ; preds = %land.lhs.true274.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false299.i

land.lhs.true279.i:                               ; preds = %land.lhs.true274.i
  %sriov_wreg283.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %133, i32 0, i32 12
  %134 = ptrtoint ptr %sriov_wreg283.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sriov_wreg283.i, align 4
  %tobool284.not.i = icmp eq ptr %135, null
  br i1 %tobool284.not.i, label %land.lhs.true279.i.cond.false299.i_crit_edge, label %cond.true285.i

land.lhs.true279.i.cond.false299.i_crit_edge:     ; preds = %land.lhs.true279.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false299.i

cond.true285.i:                                   ; preds = %land.lhs.true279.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx291.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %136 = ptrtoint ptr %arrayidx291.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx291.i, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  %add294.i = add i32 %139, 3180
  %gart_end296.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %140 = ptrtoint ptr %gart_end296.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %gart_end296.i, align 8
  %shr297.i = lshr i64 %141, 44
  %conv298.i = trunc i64 %shr297.i to i32
  tail call void %135(ptr noundef %adev, i32 noundef %add294.i, i32 noundef %conv298.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_7_init_gart_aperture_regs.exit

cond.false299.i:                                  ; preds = %land.lhs.true279.i.cond.false299.i_crit_edge, %land.lhs.true274.i.cond.false299.i_crit_edge, %cond.end269.i.cond.false299.i_crit_edge
  %arrayidx301.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %142 = ptrtoint ptr %arrayidx301.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx301.i, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  %add304.i = add i32 %145, 3180
  %gart_end306.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %146 = ptrtoint ptr %gart_end306.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %gart_end306.i, align 8
  %shr307.i = lshr i64 %147, 44
  %conv308.i = trunc i64 %shr307.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add304.i, i32 noundef %conv308.i, i32 noundef 0) #5
  br label %mmhub_v1_7_init_gart_aperture_regs.exit

mmhub_v1_7_init_gart_aperture_regs.exit:          ; preds = %cond.false299.i, %cond.true285.i, %cond.false139.i, %cond.true125.i
  %148 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %virt151.i, align 8
  %and.i = and i32 %149, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i8 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i8, label %mmhub_v1_7_init_gart_aperture_regs.exit.cond.false.i16_crit_edge, label %land.lhs.true.i10

mmhub_v1_7_init_gart_aperture_regs.exit.cond.false.i16_crit_edge: ; preds = %mmhub_v1_7_init_gart_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i16

land.lhs.true.i10:                                ; preds = %mmhub_v1_7_init_gart_aperture_regs.exit
  %funcs.i9 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %150 = ptrtoint ptr %funcs.i9 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %funcs.i9, align 4
  %tobool1.not.i = icmp eq ptr %151, null
  br i1 %tobool1.not.i, label %land.lhs.true.i10.cond.false.i16_crit_edge, label %land.lhs.true2.i

land.lhs.true.i10.cond.false.i16_crit_edge:       ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i16

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i10
  %sriov_wreg.i11 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %151, i32 0, i32 12
  %152 = ptrtoint ptr %sriov_wreg.i11 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %sriov_wreg.i11, align 4
  %tobool6.not.i12 = icmp eq ptr %153, null
  br i1 %tobool6.not.i12, label %land.lhs.true2.i.cond.false.i16_crit_edge, label %cond.true.i15

land.lhs.true2.i.cond.false.i16_crit_edge:        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i16

cond.true.i15:                                    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i13 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %154 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i13, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  %add.i14 = add i32 %157, 3268
  tail call void %153(ptr noundef %adev, i32 noundef %add.i14, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i17

cond.false.i16:                                   ; preds = %land.lhs.true2.i.cond.false.i16_crit_edge, %land.lhs.true.i10.cond.false.i16_crit_edge, %mmhub_v1_7_init_gart_aperture_regs.exit.cond.false.i16_crit_edge
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %158 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx14.i, align 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 4
  %add17.i = add i32 %161, 3268
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end.i17

cond.end.i17:                                     ; preds = %cond.false.i16, %cond.true.i15
  %162 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %virt151.i, align 8
  %and20.i = and i32 %163, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %cond.end.i17.cond.false43.i_crit_edge, label %land.lhs.true22.i

cond.end.i17.cond.false43.i_crit_edge:            ; preds = %cond.end.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43.i

land.lhs.true22.i:                                ; preds = %cond.end.i17
  %funcs25.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %164 = ptrtoint ptr %funcs25.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %funcs25.i, align 4
  %tobool26.not.i = icmp eq ptr %165, null
  br i1 %tobool26.not.i, label %land.lhs.true22.i.cond.false43.i_crit_edge, label %land.lhs.true27.i

land.lhs.true22.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43.i

land.lhs.true27.i:                                ; preds = %land.lhs.true22.i
  %sriov_wreg31.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %165, i32 0, i32 12
  %166 = ptrtoint ptr %sriov_wreg31.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sriov_wreg31.i, align 4
  %tobool32.not.i = icmp eq ptr %167, null
  br i1 %tobool32.not.i, label %land.lhs.true27.i.cond.false43.i_crit_edge, label %cond.true33.i

land.lhs.true27.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43.i

cond.true33.i:                                    ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx39.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %168 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx39.i, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %add42.i = add i32 %171, 3267
  %agp_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %172 = ptrtoint ptr %agp_start.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %agp_start.i, align 8
  %shr.i18 = lshr i64 %173, 24
  %conv.i19 = trunc i64 %shr.i18 to i32
  tail call void %167(ptr noundef %adev, i32 noundef %add42.i, i32 noundef %conv.i19, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end53.i

cond.false43.i:                                   ; preds = %land.lhs.true27.i.cond.false43.i_crit_edge, %land.lhs.true22.i.cond.false43.i_crit_edge, %cond.end.i17.cond.false43.i_crit_edge
  %arrayidx45.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %174 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx45.i, align 8
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  %add48.i = add i32 %177, 3267
  %agp_start50.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %178 = ptrtoint ptr %agp_start50.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %agp_start50.i, align 8
  %shr51.i = lshr i64 %179, 24
  %conv52.i = trunc i64 %shr51.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48.i, i32 noundef %conv52.i, i32 noundef 0) #5
  br label %cond.end53.i

cond.end53.i:                                     ; preds = %cond.false43.i, %cond.true33.i
  %180 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %virt151.i, align 8
  %and56.i = and i32 %181, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %cond.end53.i.cond.false82.i_crit_edge, label %land.lhs.true58.i

cond.end53.i.cond.false82.i_crit_edge:            ; preds = %cond.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false82.i

land.lhs.true58.i:                                ; preds = %cond.end53.i
  %funcs61.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %182 = ptrtoint ptr %funcs61.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %funcs61.i, align 4
  %tobool62.not.i = icmp eq ptr %183, null
  br i1 %tobool62.not.i, label %land.lhs.true58.i.cond.false82.i_crit_edge, label %land.lhs.true63.i

land.lhs.true58.i.cond.false82.i_crit_edge:       ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false82.i

land.lhs.true63.i:                                ; preds = %land.lhs.true58.i
  %sriov_wreg67.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %183, i32 0, i32 12
  %184 = ptrtoint ptr %sriov_wreg67.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %sriov_wreg67.i, align 4
  %tobool68.not.i = icmp eq ptr %185, null
  br i1 %tobool68.not.i, label %land.lhs.true63.i.cond.false82.i_crit_edge, label %cond.true69.i

land.lhs.true63.i.cond.false82.i_crit_edge:       ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false82.i

cond.true69.i:                                    ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx75.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %186 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx75.i, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %add78.i = add i32 %189, 3266
  %agp_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %190 = ptrtoint ptr %agp_end.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %agp_end.i, align 8
  %shr80.i = lshr i64 %191, 24
  %conv81.i = trunc i64 %shr80.i to i32
  tail call void %185(ptr noundef %adev, i32 noundef %add78.i, i32 noundef %conv81.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end92.i

cond.false82.i:                                   ; preds = %land.lhs.true63.i.cond.false82.i_crit_edge, %land.lhs.true58.i.cond.false82.i_crit_edge, %cond.end53.i.cond.false82.i_crit_edge
  %arrayidx84.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %192 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx84.i, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %193, align 4
  %add87.i = add i32 %195, 3266
  %agp_end89.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %196 = ptrtoint ptr %agp_end89.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %agp_end89.i, align 8
  %shr90.i = lshr i64 %197, 24
  %conv91.i = trunc i64 %shr90.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add87.i, i32 noundef %conv91.i, i32 noundef 0) #5
  br label %cond.end92.i

cond.end92.i:                                     ; preds = %cond.false82.i, %cond.true69.i
  %198 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %virt151.i, align 8
  %and95.i = and i32 %199, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %cond.false132.i, label %cond.end92.i.mmhub_v1_7_init_system_aperture_regs.exit_crit_edge

cond.end92.i.mmhub_v1_7_init_system_aperture_regs.exit_crit_edge: ; preds = %cond.end92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmhub_v1_7_init_system_aperture_regs.exit

cond.false132.i:                                  ; preds = %cond.end92.i
  %arrayidx134.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %200 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx134.i, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 4
  %add137.i = add i32 %203, 3269
  %fb_start140.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %204 = ptrtoint ptr %fb_start140.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %fb_start140.i, align 8
  %agp_start143.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %206 = ptrtoint ptr %agp_start143.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %agp_start143.i, align 8
  %208 = tail call i64 @llvm.umin.i64(i64 %205, i64 %207) #5
  %cond150.off18.v.i = lshr i64 %208, 18
  %cond150.off18.i = trunc i64 %cond150.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add137.i, i32 noundef %cond150.off18.i, i32 noundef 0) #5
  %209 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %virt151.i, align 8
  %and156.i = and i32 %210, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i)
  %tobool157.not.i = icmp eq i32 %and156.i, 0
  br i1 %tobool157.not.i, label %cond.false132.i.cond.false191.i_crit_edge, label %land.lhs.true158.i

cond.false132.i.cond.false191.i_crit_edge:        ; preds = %cond.false132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false191.i

land.lhs.true158.i:                               ; preds = %cond.false132.i
  %funcs161.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %211 = ptrtoint ptr %funcs161.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %funcs161.i, align 4
  %tobool162.not.i = icmp eq ptr %212, null
  br i1 %tobool162.not.i, label %land.lhs.true158.i.cond.false191.i_crit_edge, label %land.lhs.true163.i

land.lhs.true158.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true158.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false191.i

land.lhs.true163.i:                               ; preds = %land.lhs.true158.i
  %sriov_wreg167.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %212, i32 0, i32 12
  %213 = ptrtoint ptr %sriov_wreg167.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sriov_wreg167.i, align 4
  %tobool168.not.i = icmp eq ptr %214, null
  br i1 %tobool168.not.i, label %land.lhs.true163.i.cond.false191.i_crit_edge, label %cond.true169.i

land.lhs.true163.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true163.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false191.i

cond.true169.i:                                   ; preds = %land.lhs.true163.i
  call void @__sanitizer_cov_trace_pc() #7
  %215 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx134.i, align 8
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %216, align 4
  %add178.i = add i32 %218, 3270
  %fb_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %219 = ptrtoint ptr %fb_end.i to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %fb_end.i, align 8
  %agp_end181.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %221 = ptrtoint ptr %agp_end181.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %agp_end181.i, align 8
  %223 = tail call i64 @llvm.umax.i64(i64 %220, i64 %222) #5
  %cond188.off18.v.i = lshr i64 %223, 18
  %cond188.off18.i = trunc i64 %cond188.off18.v.i to i32
  tail call void %214(ptr noundef %adev, i32 noundef %add178.i, i32 noundef %cond188.off18.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end212.i

cond.false191.i:                                  ; preds = %land.lhs.true163.i.cond.false191.i_crit_edge, %land.lhs.true158.i.cond.false191.i_crit_edge, %cond.false132.i.cond.false191.i_crit_edge
  %224 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx134.i, align 8
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %225, align 4
  %add196.i = add i32 %227, 3270
  %fb_end199.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %228 = ptrtoint ptr %fb_end199.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %fb_end199.i, align 8
  %agp_end202.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %230 = ptrtoint ptr %agp_end202.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %agp_end202.i, align 8
  %232 = tail call i64 @llvm.umax.i64(i64 %229, i64 %231) #5
  %cond209.off18.v.i = lshr i64 %232, 18
  %cond209.off18.i = trunc i64 %cond209.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add196.i, i32 noundef %cond209.off18.i, i32 noundef 0) #5
  br label %cond.end212.i

cond.end212.i:                                    ; preds = %cond.false191.i, %cond.true169.i
  %233 = ptrtoint ptr %pdb0_bo.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %pdb0_bo.i, align 8
  %tobool214.not.i = icmp eq ptr %234, null
  br i1 %tobool214.not.i, label %cond.end212.i.if.end408.i_crit_edge, label %if.then215.i

cond.end212.i.if.end408.i_crit_edge:              ; preds = %cond.end212.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end408.i

if.then215.i:                                     ; preds = %cond.end212.i
  %235 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %virt151.i, align 8
  %and218.i = and i32 %236, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218.i)
  %tobool219.not.i = icmp eq i32 %and218.i, 0
  br i1 %tobool219.not.i, label %if.then215.i.cond.false241.i_crit_edge, label %land.lhs.true220.i

if.then215.i.cond.false241.i_crit_edge:           ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false241.i

land.lhs.true220.i:                               ; preds = %if.then215.i
  %funcs223.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %237 = ptrtoint ptr %funcs223.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %funcs223.i, align 4
  %tobool224.not.i = icmp eq ptr %238, null
  br i1 %tobool224.not.i, label %land.lhs.true220.i.cond.false241.i_crit_edge, label %land.lhs.true225.i

land.lhs.true220.i.cond.false241.i_crit_edge:     ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false241.i

land.lhs.true225.i:                               ; preds = %land.lhs.true220.i
  %sriov_wreg229.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %238, i32 0, i32 12
  %239 = ptrtoint ptr %sriov_wreg229.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %sriov_wreg229.i, align 4
  %tobool230.not.i = icmp eq ptr %240, null
  br i1 %tobool230.not.i, label %land.lhs.true225.i.cond.false241.i_crit_edge, label %cond.true231.i

land.lhs.true225.i.cond.false241.i_crit_edge:     ; preds = %land.lhs.true225.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false241.i

cond.true231.i:                                   ; preds = %land.lhs.true225.i
  call void @__sanitizer_cov_trace_pc() #7
  %241 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx134.i, align 8
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %242, align 4
  %add240.i = add i32 %244, 3267
  tail call void %240(ptr noundef %adev, i32 noundef %add240.i, i32 noundef 16777215, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end247.i

cond.false241.i:                                  ; preds = %land.lhs.true225.i.cond.false241.i_crit_edge, %land.lhs.true220.i.cond.false241.i_crit_edge, %if.then215.i.cond.false241.i_crit_edge
  %245 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx134.i, align 8
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %246, align 4
  %add246.i = add i32 %248, 3267
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add246.i, i32 noundef 16777215, i32 noundef 0) #5
  br label %cond.end247.i

cond.end247.i:                                    ; preds = %cond.false241.i, %cond.true231.i
  %249 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %virt151.i, align 8
  %and250.i = and i32 %250, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250.i)
  %tobool251.not.i = icmp eq i32 %and250.i, 0
  br i1 %tobool251.not.i, label %cond.end247.i.cond.false273.i_crit_edge, label %land.lhs.true252.i

cond.end247.i.cond.false273.i_crit_edge:          ; preds = %cond.end247.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false273.i

land.lhs.true252.i:                               ; preds = %cond.end247.i
  %funcs255.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %251 = ptrtoint ptr %funcs255.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %funcs255.i, align 4
  %tobool256.not.i = icmp eq ptr %252, null
  br i1 %tobool256.not.i, label %land.lhs.true252.i.cond.false273.i_crit_edge, label %land.lhs.true257.i

land.lhs.true252.i.cond.false273.i_crit_edge:     ; preds = %land.lhs.true252.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false273.i

land.lhs.true257.i:                               ; preds = %land.lhs.true252.i
  %sriov_wreg261.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %252, i32 0, i32 12
  %253 = ptrtoint ptr %sriov_wreg261.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %sriov_wreg261.i, align 4
  %tobool262.not.i = icmp eq ptr %254, null
  br i1 %tobool262.not.i, label %land.lhs.true257.i.cond.false273.i_crit_edge, label %cond.true263.i

land.lhs.true257.i.cond.false273.i_crit_edge:     ; preds = %land.lhs.true257.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false273.i

cond.true263.i:                                   ; preds = %land.lhs.true257.i
  call void @__sanitizer_cov_trace_pc() #7
  %255 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %arrayidx134.i, align 8
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %256, align 4
  %add272.i = add i32 %258, 3266
  tail call void %254(ptr noundef %adev, i32 noundef %add272.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end279.i

cond.false273.i:                                  ; preds = %land.lhs.true257.i.cond.false273.i_crit_edge, %land.lhs.true252.i.cond.false273.i_crit_edge, %cond.end247.i.cond.false273.i_crit_edge
  %259 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx134.i, align 8
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %260, align 4
  %add278.i = add i32 %262, 3266
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add278.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end279.i

cond.end279.i:                                    ; preds = %cond.false273.i, %cond.true263.i
  %263 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %virt151.i, align 8
  %and282.i = and i32 %264, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282.i)
  %tobool283.not.i = icmp eq i32 %and282.i, 0
  br i1 %tobool283.not.i, label %cond.end279.i.cond.false305.i_crit_edge, label %land.lhs.true284.i

cond.end279.i.cond.false305.i_crit_edge:          ; preds = %cond.end279.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false305.i

land.lhs.true284.i:                               ; preds = %cond.end279.i
  %funcs287.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %265 = ptrtoint ptr %funcs287.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %funcs287.i, align 4
  %tobool288.not.i = icmp eq ptr %266, null
  br i1 %tobool288.not.i, label %land.lhs.true284.i.cond.false305.i_crit_edge, label %land.lhs.true289.i

land.lhs.true284.i.cond.false305.i_crit_edge:     ; preds = %land.lhs.true284.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false305.i

land.lhs.true289.i:                               ; preds = %land.lhs.true284.i
  %sriov_wreg293.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %266, i32 0, i32 12
  %267 = ptrtoint ptr %sriov_wreg293.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %sriov_wreg293.i, align 4
  %tobool294.not.i = icmp eq ptr %268, null
  br i1 %tobool294.not.i, label %land.lhs.true289.i.cond.false305.i_crit_edge, label %cond.true295.i

land.lhs.true289.i.cond.false305.i_crit_edge:     ; preds = %land.lhs.true289.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false305.i

cond.true295.i:                                   ; preds = %land.lhs.true289.i
  call void @__sanitizer_cov_trace_pc() #7
  %269 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx134.i, align 8
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %270, align 4
  %add304.i21 = add i32 %272, 3265
  tail call void %268(ptr noundef %adev, i32 noundef %add304.i21, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end311.i

cond.false305.i:                                  ; preds = %land.lhs.true289.i.cond.false305.i_crit_edge, %land.lhs.true284.i.cond.false305.i_crit_edge, %cond.end279.i.cond.false305.i_crit_edge
  %273 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %arrayidx134.i, align 8
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %274, align 4
  %add310.i = add i32 %276, 3265
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add310.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end311.i

cond.end311.i:                                    ; preds = %cond.false305.i, %cond.true295.i
  %277 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %virt151.i, align 8
  %and314.i = and i32 %278, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.i)
  %tobool315.not.i = icmp eq i32 %and314.i, 0
  br i1 %tobool315.not.i, label %cond.end311.i.cond.false337.i_crit_edge, label %land.lhs.true316.i

cond.end311.i.cond.false337.i_crit_edge:          ; preds = %cond.end311.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false337.i

land.lhs.true316.i:                               ; preds = %cond.end311.i
  %funcs319.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %279 = ptrtoint ptr %funcs319.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %funcs319.i, align 4
  %tobool320.not.i = icmp eq ptr %280, null
  br i1 %tobool320.not.i, label %land.lhs.true316.i.cond.false337.i_crit_edge, label %land.lhs.true321.i

land.lhs.true316.i.cond.false337.i_crit_edge:     ; preds = %land.lhs.true316.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false337.i

land.lhs.true321.i:                               ; preds = %land.lhs.true316.i
  %sriov_wreg325.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %280, i32 0, i32 12
  %281 = ptrtoint ptr %sriov_wreg325.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %sriov_wreg325.i, align 4
  %tobool326.not.i = icmp eq ptr %282, null
  br i1 %tobool326.not.i, label %land.lhs.true321.i.cond.false337.i_crit_edge, label %cond.true327.i

land.lhs.true321.i.cond.false337.i_crit_edge:     ; preds = %land.lhs.true321.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false337.i

cond.true327.i:                                   ; preds = %land.lhs.true321.i
  call void @__sanitizer_cov_trace_pc() #7
  %283 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %arrayidx134.i, align 8
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %284, align 4
  %add336.i = add i32 %286, 3264
  tail call void %282(ptr noundef %adev, i32 noundef %add336.i, i32 noundef 16777215, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end343.i

cond.false337.i:                                  ; preds = %land.lhs.true321.i.cond.false337.i_crit_edge, %land.lhs.true316.i.cond.false337.i_crit_edge, %cond.end311.i.cond.false337.i_crit_edge
  %287 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %arrayidx134.i, align 8
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %288, align 4
  %add342.i = add i32 %290, 3264
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add342.i, i32 noundef 16777215, i32 noundef 0) #5
  br label %cond.end343.i

cond.end343.i:                                    ; preds = %cond.false337.i, %cond.true327.i
  %291 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %virt151.i, align 8
  %and346.i = and i32 %292, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and346.i)
  %tobool347.not.i = icmp eq i32 %and346.i, 0
  br i1 %tobool347.not.i, label %cond.end343.i.cond.false369.i_crit_edge, label %land.lhs.true348.i

cond.end343.i.cond.false369.i_crit_edge:          ; preds = %cond.end343.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false369.i

land.lhs.true348.i:                               ; preds = %cond.end343.i
  %funcs351.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %293 = ptrtoint ptr %funcs351.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %funcs351.i, align 4
  %tobool352.not.i = icmp eq ptr %294, null
  br i1 %tobool352.not.i, label %land.lhs.true348.i.cond.false369.i_crit_edge, label %land.lhs.true353.i

land.lhs.true348.i.cond.false369.i_crit_edge:     ; preds = %land.lhs.true348.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false369.i

land.lhs.true353.i:                               ; preds = %land.lhs.true348.i
  %sriov_wreg357.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %294, i32 0, i32 12
  %295 = ptrtoint ptr %sriov_wreg357.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %sriov_wreg357.i, align 4
  %tobool358.not.i = icmp eq ptr %296, null
  br i1 %tobool358.not.i, label %land.lhs.true353.i.cond.false369.i_crit_edge, label %cond.true359.i

land.lhs.true353.i.cond.false369.i_crit_edge:     ; preds = %land.lhs.true353.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false369.i

cond.true359.i:                                   ; preds = %land.lhs.true353.i
  call void @__sanitizer_cov_trace_pc() #7
  %297 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %arrayidx134.i, align 8
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %298, align 4
  %add368.i = add i32 %300, 3269
  tail call void %296(ptr noundef %adev, i32 noundef %add368.i, i32 noundef 1073741823, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end375.i

cond.false369.i:                                  ; preds = %land.lhs.true353.i.cond.false369.i_crit_edge, %land.lhs.true348.i.cond.false369.i_crit_edge, %cond.end343.i.cond.false369.i_crit_edge
  %301 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %arrayidx134.i, align 8
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %302, align 4
  %add374.i = add i32 %304, 3269
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add374.i, i32 noundef 1073741823, i32 noundef 0) #5
  br label %cond.end375.i

cond.end375.i:                                    ; preds = %cond.false369.i, %cond.true359.i
  %305 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %virt151.i, align 8
  %and378.i = and i32 %306, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and378.i)
  %tobool379.not.i = icmp eq i32 %and378.i, 0
  br i1 %tobool379.not.i, label %cond.end375.i.cond.false401.i_crit_edge, label %land.lhs.true380.i

cond.end375.i.cond.false401.i_crit_edge:          ; preds = %cond.end375.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false401.i

land.lhs.true380.i:                               ; preds = %cond.end375.i
  %funcs383.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %307 = ptrtoint ptr %funcs383.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %funcs383.i, align 4
  %tobool384.not.i = icmp eq ptr %308, null
  br i1 %tobool384.not.i, label %land.lhs.true380.i.cond.false401.i_crit_edge, label %land.lhs.true385.i

land.lhs.true380.i.cond.false401.i_crit_edge:     ; preds = %land.lhs.true380.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false401.i

land.lhs.true385.i:                               ; preds = %land.lhs.true380.i
  %sriov_wreg389.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %308, i32 0, i32 12
  %309 = ptrtoint ptr %sriov_wreg389.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %sriov_wreg389.i, align 4
  %tobool390.not.i = icmp eq ptr %310, null
  br i1 %tobool390.not.i, label %land.lhs.true385.i.cond.false401.i_crit_edge, label %cond.true391.i

land.lhs.true385.i.cond.false401.i_crit_edge:     ; preds = %land.lhs.true385.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false401.i

cond.true391.i:                                   ; preds = %land.lhs.true385.i
  call void @__sanitizer_cov_trace_pc() #7
  %311 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx134.i, align 8
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %312, align 4
  %add400.i = add i32 %314, 3270
  tail call void %310(ptr noundef %adev, i32 noundef %add400.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %if.end408.i

cond.false401.i:                                  ; preds = %land.lhs.true385.i.cond.false401.i_crit_edge, %land.lhs.true380.i.cond.false401.i_crit_edge, %cond.end375.i.cond.false401.i_crit_edge
  %315 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %arrayidx134.i, align 8
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %316, align 4
  %add406.i = add i32 %318, 3270
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add406.i, i32 noundef 0, i32 noundef 0) #5
  br label %if.end408.i

if.end408.i:                                      ; preds = %cond.false401.i, %cond.true391.i, %cond.end212.i.if.end408.i_crit_edge
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 69, i32 2
  %319 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %319)
  %320 = load i64, ptr %gpu_addr.i, align 8
  %call.i22 = tail call i64 @amdgpu_gmc_vram_mc2pa(ptr noundef %adev, i64 noundef %320) #5
  %321 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %virt151.i, align 8
  %and411.i = and i32 %322, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and411.i)
  %tobool412.not.i = icmp eq i32 %and411.i, 0
  br i1 %tobool412.not.i, label %if.end408.i.cond.false436.i_crit_edge, label %land.lhs.true413.i

if.end408.i.cond.false436.i_crit_edge:            ; preds = %if.end408.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false436.i

land.lhs.true413.i:                               ; preds = %if.end408.i
  %funcs416.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %323 = ptrtoint ptr %funcs416.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %funcs416.i, align 4
  %tobool417.not.i = icmp eq ptr %324, null
  br i1 %tobool417.not.i, label %land.lhs.true413.i.cond.false436.i_crit_edge, label %land.lhs.true418.i

land.lhs.true413.i.cond.false436.i_crit_edge:     ; preds = %land.lhs.true413.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false436.i

land.lhs.true418.i:                               ; preds = %land.lhs.true413.i
  %sriov_wreg422.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %324, i32 0, i32 12
  %325 = ptrtoint ptr %sriov_wreg422.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %sriov_wreg422.i, align 4
  %tobool423.not.i = icmp eq ptr %326, null
  br i1 %tobool423.not.i, label %land.lhs.true418.i.cond.false436.i_crit_edge, label %cond.true424.i

land.lhs.true418.i.cond.false436.i_crit_edge:     ; preds = %land.lhs.true418.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false436.i

cond.true424.i:                                   ; preds = %land.lhs.true418.i
  call void @__sanitizer_cov_trace_pc() #7
  %327 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %arrayidx134.i, align 8
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %328, align 4
  %add433.i = add i32 %330, 3244
  %shr434.i = lshr i64 %call.i22, 12
  %conv435.i = trunc i64 %shr434.i to i32
  tail call void %326(ptr noundef %adev, i32 noundef %add433.i, i32 noundef %conv435.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end444.i

cond.false436.i:                                  ; preds = %land.lhs.true418.i.cond.false436.i_crit_edge, %land.lhs.true413.i.cond.false436.i_crit_edge, %if.end408.i.cond.false436.i_crit_edge
  %331 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %arrayidx134.i, align 8
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %332, align 4
  %add441.i = add i32 %334, 3244
  %shr442.i = lshr i64 %call.i22, 12
  %conv443.i = trunc i64 %shr442.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add441.i, i32 noundef %conv443.i, i32 noundef 0) #5
  br label %cond.end444.i

cond.end444.i:                                    ; preds = %cond.false436.i, %cond.true424.i
  %335 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %virt151.i, align 8
  %and447.i = and i32 %336, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and447.i)
  %tobool448.not.i = icmp eq i32 %and447.i, 0
  br i1 %tobool448.not.i, label %cond.end444.i.cond.false472.i_crit_edge, label %land.lhs.true449.i

cond.end444.i.cond.false472.i_crit_edge:          ; preds = %cond.end444.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false472.i

land.lhs.true449.i:                               ; preds = %cond.end444.i
  %funcs452.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %337 = ptrtoint ptr %funcs452.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %funcs452.i, align 4
  %tobool453.not.i = icmp eq ptr %338, null
  br i1 %tobool453.not.i, label %land.lhs.true449.i.cond.false472.i_crit_edge, label %land.lhs.true454.i

land.lhs.true449.i.cond.false472.i_crit_edge:     ; preds = %land.lhs.true449.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false472.i

land.lhs.true454.i:                               ; preds = %land.lhs.true449.i
  %sriov_wreg458.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %338, i32 0, i32 12
  %339 = ptrtoint ptr %sriov_wreg458.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %sriov_wreg458.i, align 4
  %tobool459.not.i = icmp eq ptr %340, null
  br i1 %tobool459.not.i, label %land.lhs.true454.i.cond.false472.i_crit_edge, label %cond.true460.i

land.lhs.true454.i.cond.false472.i_crit_edge:     ; preds = %land.lhs.true454.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false472.i

cond.true460.i:                                   ; preds = %land.lhs.true454.i
  call void @__sanitizer_cov_trace_pc() #7
  %341 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %arrayidx134.i, align 8
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %342, align 4
  %add469.i = add i32 %344, 3245
  %shr470.i = lshr i64 %call.i22, 44
  %conv471.i = trunc i64 %shr470.i to i32
  tail call void %340(ptr noundef %adev, i32 noundef %add469.i, i32 noundef %conv471.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end480.i

cond.false472.i:                                  ; preds = %land.lhs.true454.i.cond.false472.i_crit_edge, %land.lhs.true449.i.cond.false472.i_crit_edge, %cond.end444.i.cond.false472.i_crit_edge
  %345 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %arrayidx134.i, align 8
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %346, align 4
  %add477.i = add i32 %348, 3245
  %shr478.i = lshr i64 %call.i22, 44
  %conv479.i = trunc i64 %shr478.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add477.i, i32 noundef %conv479.i, i32 noundef 0) #5
  br label %cond.end480.i

cond.end480.i:                                    ; preds = %cond.false472.i, %cond.true460.i
  %349 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %virt151.i, align 8
  %and483.i = and i32 %350, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and483.i)
  %tobool484.not.i = icmp eq i32 %and483.i, 0
  br i1 %tobool484.not.i, label %cond.end480.i.cond.false507.i_crit_edge, label %land.lhs.true485.i

cond.end480.i.cond.false507.i_crit_edge:          ; preds = %cond.end480.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false507.i

land.lhs.true485.i:                               ; preds = %cond.end480.i
  %funcs488.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %351 = ptrtoint ptr %funcs488.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %funcs488.i, align 4
  %tobool489.not.i = icmp eq ptr %352, null
  br i1 %tobool489.not.i, label %land.lhs.true485.i.cond.false507.i_crit_edge, label %land.lhs.true490.i

land.lhs.true485.i.cond.false507.i_crit_edge:     ; preds = %land.lhs.true485.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false507.i

land.lhs.true490.i:                               ; preds = %land.lhs.true485.i
  %sriov_wreg494.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %352, i32 0, i32 12
  %353 = ptrtoint ptr %sriov_wreg494.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %sriov_wreg494.i, align 4
  %tobool495.not.i = icmp eq ptr %354, null
  br i1 %tobool495.not.i, label %land.lhs.true490.i.cond.false507.i_crit_edge, label %cond.true496.i

land.lhs.true490.i.cond.false507.i_crit_edge:     ; preds = %land.lhs.true490.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false507.i

cond.true496.i:                                   ; preds = %land.lhs.true490.i
  call void @__sanitizer_cov_trace_pc() #7
  %355 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %arrayidx134.i, align 8
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %356, align 4
  %add505.i = add i32 %358, 2958
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %359 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %dummy_page_addr.i, align 8
  %shr506.i = lshr i32 %360, 12
  tail call void %354(ptr noundef %adev, i32 noundef %add505.i, i32 noundef %shr506.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end515.i

cond.false507.i:                                  ; preds = %land.lhs.true490.i.cond.false507.i_crit_edge, %land.lhs.true485.i.cond.false507.i_crit_edge, %cond.end480.i.cond.false507.i_crit_edge
  %361 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %arrayidx134.i, align 8
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %362, align 4
  %add512.i = add i32 %364, 2958
  %dummy_page_addr513.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %365 = ptrtoint ptr %dummy_page_addr513.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %dummy_page_addr513.i, align 8
  %shr514.i = lshr i32 %366, 12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add512.i, i32 noundef %shr514.i, i32 noundef 0) #5
  br label %cond.end515.i

cond.end515.i:                                    ; preds = %cond.false507.i, %cond.true496.i
  %367 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %virt151.i, align 8
  %and518.i = and i32 %368, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and518.i)
  %tobool519.not.i = icmp eq i32 %and518.i, 0
  br i1 %tobool519.not.i, label %cond.end515.i.cond.false545.i_crit_edge, label %land.lhs.true520.i

cond.end515.i.cond.false545.i_crit_edge:          ; preds = %cond.end515.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false545.i

land.lhs.true520.i:                               ; preds = %cond.end515.i
  %funcs523.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %369 = ptrtoint ptr %funcs523.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %funcs523.i, align 4
  %tobool524.not.i = icmp eq ptr %370, null
  br i1 %tobool524.not.i, label %land.lhs.true520.i.cond.false545.i_crit_edge, label %land.lhs.true525.i

land.lhs.true520.i.cond.false545.i_crit_edge:     ; preds = %land.lhs.true520.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false545.i

land.lhs.true525.i:                               ; preds = %land.lhs.true520.i
  %sriov_wreg529.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %370, i32 0, i32 12
  %371 = ptrtoint ptr %sriov_wreg529.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %sriov_wreg529.i, align 4
  %tobool530.not.i = icmp eq ptr %372, null
  br i1 %tobool530.not.i, label %land.lhs.true525.i.cond.false545.i_crit_edge, label %cond.true531.i

land.lhs.true525.i.cond.false545.i_crit_edge:     ; preds = %land.lhs.true525.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false545.i

cond.true531.i:                                   ; preds = %land.lhs.true525.i
  call void @__sanitizer_cov_trace_pc() #7
  %373 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %arrayidx134.i, align 8
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %374, align 4
  %add540.i = add i32 %376, 2959
  tail call void %372(ptr noundef %adev, i32 noundef %add540.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end555.i

cond.false545.i:                                  ; preds = %land.lhs.true525.i.cond.false545.i_crit_edge, %land.lhs.true520.i.cond.false545.i_crit_edge, %cond.end515.i.cond.false545.i_crit_edge
  %377 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %arrayidx134.i, align 8
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %378, align 4
  %add550.i = add i32 %380, 2959
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add550.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end555.i

cond.end555.i:                                    ; preds = %cond.false545.i, %cond.true531.i
  %381 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %virt151.i, align 8
  %and558.i = and i32 %382, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and558.i)
  %tobool559.not.i = icmp eq i32 %and558.i, 0
  br i1 %tobool559.not.i, label %cond.end555.i.cond.false581.i_crit_edge, label %land.lhs.true560.i

cond.end555.i.cond.false581.i_crit_edge:          ; preds = %cond.end555.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false581.i

land.lhs.true560.i:                               ; preds = %cond.end555.i
  %funcs563.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %383 = ptrtoint ptr %funcs563.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %funcs563.i, align 4
  %tobool564.not.i = icmp eq ptr %384, null
  br i1 %tobool564.not.i, label %land.lhs.true560.i.cond.false581.i_crit_edge, label %land.lhs.true565.i

land.lhs.true560.i.cond.false581.i_crit_edge:     ; preds = %land.lhs.true560.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false581.i

land.lhs.true565.i:                               ; preds = %land.lhs.true560.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %384, i32 0, i32 13
  %385 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool569.not.i = icmp eq ptr %386, null
  br i1 %tobool569.not.i, label %land.lhs.true565.i.cond.false581.i_crit_edge, label %cond.true570.i

land.lhs.true565.i.cond.false581.i_crit_edge:     ; preds = %land.lhs.true565.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false581.i

cond.true570.i:                                   ; preds = %land.lhs.true565.i
  call void @__sanitizer_cov_trace_pc() #7
  %387 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %arrayidx134.i, align 8
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %388, align 4
  %add579.i = add i32 %390, 2952
  %call580.i = tail call i32 %386(ptr noundef %adev, i32 noundef %add579.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end588.i

cond.false581.i:                                  ; preds = %land.lhs.true565.i.cond.false581.i_crit_edge, %land.lhs.true560.i.cond.false581.i_crit_edge, %cond.end555.i.cond.false581.i_crit_edge
  %391 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %arrayidx134.i, align 8
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %392, align 4
  %add586.i = add i32 %394, 2952
  %call587.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add586.i, i32 noundef 0) #5
  br label %cond.end588.i

cond.end588.i:                                    ; preds = %cond.false581.i, %cond.true570.i
  %cond589.i = phi i32 [ %call580.i, %cond.true570.i ], [ %call587.i, %cond.false581.i ]
  %or.i = or i32 %cond589.i, 262144
  %395 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %virt151.i, align 8
  %and593.i = and i32 %396, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and593.i)
  %tobool594.not.i = icmp eq i32 %and593.i, 0
  br i1 %tobool594.not.i, label %cond.end588.i.cond.false616.i_crit_edge, label %land.lhs.true595.i

cond.end588.i.cond.false616.i_crit_edge:          ; preds = %cond.end588.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false616.i

land.lhs.true595.i:                               ; preds = %cond.end588.i
  %funcs598.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %397 = ptrtoint ptr %funcs598.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %funcs598.i, align 4
  %tobool599.not.i = icmp eq ptr %398, null
  br i1 %tobool599.not.i, label %land.lhs.true595.i.cond.false616.i_crit_edge, label %land.lhs.true600.i

land.lhs.true595.i.cond.false616.i_crit_edge:     ; preds = %land.lhs.true595.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false616.i

land.lhs.true600.i:                               ; preds = %land.lhs.true595.i
  %sriov_wreg604.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %398, i32 0, i32 12
  %399 = ptrtoint ptr %sriov_wreg604.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %sriov_wreg604.i, align 4
  %tobool605.not.i = icmp eq ptr %400, null
  br i1 %tobool605.not.i, label %land.lhs.true600.i.cond.false616.i_crit_edge, label %cond.true606.i

land.lhs.true600.i.cond.false616.i_crit_edge:     ; preds = %land.lhs.true600.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false616.i

cond.true606.i:                                   ; preds = %land.lhs.true600.i
  call void @__sanitizer_cov_trace_pc() #7
  %401 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %arrayidx134.i, align 8
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %402, align 4
  %add615.i = add i32 %404, 2952
  tail call void %400(ptr noundef %adev, i32 noundef %add615.i, i32 noundef %or.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_7_init_system_aperture_regs.exit

cond.false616.i:                                  ; preds = %land.lhs.true600.i.cond.false616.i_crit_edge, %land.lhs.true595.i.cond.false616.i_crit_edge, %cond.end588.i.cond.false616.i_crit_edge
  %405 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %arrayidx134.i, align 8
  %407 = ptrtoint ptr %406 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %406, align 4
  %add621.i = add i32 %408, 2952
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add621.i, i32 noundef %or.i, i32 noundef 0) #5
  br label %mmhub_v1_7_init_system_aperture_regs.exit

mmhub_v1_7_init_system_aperture_regs.exit:        ; preds = %cond.false616.i, %cond.true606.i, %cond.end92.i.mmhub_v1_7_init_system_aperture_regs.exit_crit_edge
  %409 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %virt151.i, align 8
  %and.i24 = and i32 %410, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %mmhub_v1_7_init_system_aperture_regs.exit.cond.false.i38_crit_edge, label %land.lhs.true.i28

mmhub_v1_7_init_system_aperture_regs.exit.cond.false.i38_crit_edge: ; preds = %mmhub_v1_7_init_system_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i38

land.lhs.true.i28:                                ; preds = %mmhub_v1_7_init_system_aperture_regs.exit
  %funcs.i26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %411 = ptrtoint ptr %funcs.i26 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %funcs.i26, align 4
  %tobool1.not.i27 = icmp eq ptr %412, null
  br i1 %tobool1.not.i27, label %land.lhs.true.i28.cond.false.i38_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i28.cond.false.i38_crit_edge:       ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i38

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i28
  %sriov_rreg.i29 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %412, i32 0, i32 13
  %413 = ptrtoint ptr %sriov_rreg.i29 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %sriov_rreg.i29, align 4
  %tobool6.not.i30 = icmp eq ptr %414, null
  br i1 %tobool6.not.i30, label %land.lhs.true2.i31.cond.false.i38_crit_edge, label %cond.true.i35

land.lhs.true2.i31.cond.false.i38_crit_edge:      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i38

cond.true.i35:                                    ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i32 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %415 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %arrayidx.i32, align 8
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %416, align 4
  %add.i33 = add i32 %418, 3271
  %call.i34 = tail call i32 %414(ptr noundef %adev, i32 noundef %add.i33, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i39

cond.false.i38:                                   ; preds = %land.lhs.true2.i31.cond.false.i38_crit_edge, %land.lhs.true.i28.cond.false.i38_crit_edge, %mmhub_v1_7_init_system_aperture_regs.exit.cond.false.i38_crit_edge
  %arrayidx14.i36 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %419 = ptrtoint ptr %arrayidx14.i36 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %arrayidx14.i36, align 8
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %420, align 4
  %add17.i37 = add i32 %422, 3271
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i37, i32 noundef 0) #5
  br label %cond.end.i39

cond.end.i39:                                     ; preds = %cond.false.i38, %cond.true.i35
  %cond.i = phi i32 [ %call.i34, %cond.true.i35 ], [ %call18.i, %cond.false.i38 ]
  %or23.i = and i32 %cond.i, -14458
  %or29.i = or i32 %or23.i, 14425
  %423 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %virt151.i, align 8
  %and32.i = and i32 %424, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %cond.end.i39.cond.false54.i_crit_edge, label %land.lhs.true34.i

cond.end.i39.cond.false54.i_crit_edge:            ; preds = %cond.end.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54.i

land.lhs.true34.i:                                ; preds = %cond.end.i39
  %funcs37.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %425 = ptrtoint ptr %funcs37.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %funcs37.i, align 4
  %tobool38.not.i = icmp eq ptr %426, null
  br i1 %tobool38.not.i, label %land.lhs.true34.i.cond.false54.i_crit_edge, label %land.lhs.true39.i

land.lhs.true34.i.cond.false54.i_crit_edge:       ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54.i

land.lhs.true39.i:                                ; preds = %land.lhs.true34.i
  %sriov_wreg.i40 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %426, i32 0, i32 12
  %427 = ptrtoint ptr %sriov_wreg.i40 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %sriov_wreg.i40, align 4
  %tobool43.not.i = icmp eq ptr %428, null
  br i1 %tobool43.not.i, label %land.lhs.true39.i.cond.false54.i_crit_edge, label %cond.true44.i

land.lhs.true39.i.cond.false54.i_crit_edge:       ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54.i

cond.true44.i:                                    ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx50.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %429 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %arrayidx50.i, align 8
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %430, align 4
  %add53.i = add i32 %432, 3271
  tail call void %428(ptr noundef %adev, i32 noundef %add53.i, i32 noundef %or29.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_7_init_tlb_regs.exit

cond.false54.i:                                   ; preds = %land.lhs.true39.i.cond.false54.i_crit_edge, %land.lhs.true34.i.cond.false54.i_crit_edge, %cond.end.i39.cond.false54.i_crit_edge
  %arrayidx56.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %433 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %arrayidx56.i, align 8
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %434, align 4
  %add59.i = add i32 %436, 3271
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59.i, i32 noundef %or29.i, i32 noundef 0) #5
  br label %mmhub_v1_7_init_tlb_regs.exit

mmhub_v1_7_init_tlb_regs.exit:                    ; preds = %cond.false54.i, %cond.true44.i
  %437 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %virt151.i, align 8
  %and.i42 = and i32 %438, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not.i43 = icmp eq i32 %and.i42, 0
  br i1 %tobool.not.i43, label %cond.false.i44, label %mmhub_v1_7_init_tlb_regs.exit.mmhub_v1_7_init_cache_regs.exit_crit_edge

mmhub_v1_7_init_tlb_regs.exit.mmhub_v1_7_init_cache_regs.exit_crit_edge: ; preds = %mmhub_v1_7_init_tlb_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmhub_v1_7_init_cache_regs.exit

cond.false.i44:                                   ; preds = %mmhub_v1_7_init_tlb_regs.exit
  %arrayidx18.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %439 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %arrayidx18.i, align 8
  %441 = ptrtoint ptr %440 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %440, align 4
  %add21.i = add i32 %442, 2944
  %call22.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21.i, i32 noundef 0) #5
  %or25.i = and i32 %call22.i, -66846980
  %or31.i = or i32 %or25.i, 524291
  %443 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %virt151.i, align 8
  %and36.i = and i32 %444, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %cond.false.i44.cond.false58.i_crit_edge, label %land.lhs.true38.i

cond.false.i44.cond.false58.i_crit_edge:          ; preds = %cond.false.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false58.i

land.lhs.true38.i:                                ; preds = %cond.false.i44
  %funcs41.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %445 = ptrtoint ptr %funcs41.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %funcs41.i, align 4
  %tobool42.not.i = icmp eq ptr %446, null
  br i1 %tobool42.not.i, label %land.lhs.true38.i.cond.false58.i_crit_edge, label %land.lhs.true43.i

land.lhs.true38.i.cond.false58.i_crit_edge:       ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false58.i

land.lhs.true43.i:                                ; preds = %land.lhs.true38.i
  %sriov_wreg.i45 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %446, i32 0, i32 12
  %447 = ptrtoint ptr %sriov_wreg.i45 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %sriov_wreg.i45, align 4
  %tobool47.not.i = icmp eq ptr %448, null
  br i1 %tobool47.not.i, label %land.lhs.true43.i.cond.false58.i_crit_edge, label %cond.true48.i

land.lhs.true43.i.cond.false58.i_crit_edge:       ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false58.i

cond.true48.i:                                    ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #7
  %449 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %arrayidx18.i, align 8
  %451 = ptrtoint ptr %450 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %450, align 4
  %add57.i = add i32 %452, 2944
  tail call void %448(ptr noundef %adev, i32 noundef %add57.i, i32 noundef %or31.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end64.i

cond.false58.i:                                   ; preds = %land.lhs.true43.i.cond.false58.i_crit_edge, %land.lhs.true38.i.cond.false58.i_crit_edge, %cond.false.i44.cond.false58.i_crit_edge
  %453 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %arrayidx18.i, align 8
  %455 = ptrtoint ptr %454 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %454, align 4
  %add63.i = add i32 %456, 2944
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add63.i, i32 noundef %or31.i, i32 noundef 0) #5
  br label %cond.end64.i

cond.end64.i:                                     ; preds = %cond.false58.i, %cond.true48.i
  %457 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %virt151.i, align 8
  %and67.i = and i32 %458, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i46 = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i46, label %cond.end64.i.cond.false91.i_crit_edge, label %land.lhs.true69.i

cond.end64.i.cond.false91.i_crit_edge:            ; preds = %cond.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91.i

land.lhs.true69.i:                                ; preds = %cond.end64.i
  %funcs72.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %459 = ptrtoint ptr %funcs72.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %funcs72.i, align 4
  %tobool73.not.i = icmp eq ptr %460, null
  br i1 %tobool73.not.i, label %land.lhs.true69.i.cond.false91.i_crit_edge, label %land.lhs.true74.i

land.lhs.true69.i.cond.false91.i_crit_edge:       ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91.i

land.lhs.true74.i:                                ; preds = %land.lhs.true69.i
  %sriov_rreg78.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %460, i32 0, i32 13
  %461 = ptrtoint ptr %sriov_rreg78.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %sriov_rreg78.i, align 4
  %tobool79.not.i47 = icmp eq ptr %462, null
  br i1 %tobool79.not.i47, label %land.lhs.true74.i.cond.false91.i_crit_edge, label %cond.true80.i

land.lhs.true74.i.cond.false91.i_crit_edge:       ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91.i

cond.true80.i:                                    ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #7
  %463 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %arrayidx18.i, align 8
  %465 = ptrtoint ptr %464 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %464, align 4
  %add89.i = add i32 %466, 2945
  %call90.i = tail call i32 %462(ptr noundef %adev, i32 noundef %add89.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end98.i

cond.false91.i:                                   ; preds = %land.lhs.true74.i.cond.false91.i_crit_edge, %land.lhs.true69.i.cond.false91.i_crit_edge, %cond.end64.i.cond.false91.i_crit_edge
  %467 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %arrayidx18.i, align 8
  %469 = ptrtoint ptr %468 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %468, align 4
  %add96.i = add i32 %470, 2945
  %call97.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add96.i, i32 noundef 0) #5
  br label %cond.end98.i

cond.end98.i:                                     ; preds = %cond.false91.i, %cond.true80.i
  %cond99.i = phi i32 [ %call90.i, %cond.true80.i ], [ %call97.i, %cond.false91.i ]
  %or103.i = or i32 %cond99.i, 3
  %471 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %virt151.i, align 8
  %and106.i = and i32 %472, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %cond.end98.i.cond.false129.i_crit_edge, label %land.lhs.true108.i

cond.end98.i.cond.false129.i_crit_edge:           ; preds = %cond.end98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false129.i

land.lhs.true108.i:                               ; preds = %cond.end98.i
  %funcs111.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %473 = ptrtoint ptr %funcs111.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %funcs111.i, align 4
  %tobool112.not.i = icmp eq ptr %474, null
  br i1 %tobool112.not.i, label %land.lhs.true108.i.cond.false129.i_crit_edge, label %land.lhs.true113.i

land.lhs.true108.i.cond.false129.i_crit_edge:     ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false129.i

land.lhs.true113.i:                               ; preds = %land.lhs.true108.i
  %sriov_wreg117.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %474, i32 0, i32 12
  %475 = ptrtoint ptr %sriov_wreg117.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %sriov_wreg117.i, align 4
  %tobool118.not.i48 = icmp eq ptr %476, null
  br i1 %tobool118.not.i48, label %land.lhs.true113.i.cond.false129.i_crit_edge, label %cond.true119.i

land.lhs.true113.i.cond.false129.i_crit_edge:     ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false129.i

cond.true119.i:                                   ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #7
  %477 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %arrayidx18.i, align 8
  %479 = ptrtoint ptr %478 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %478, align 4
  %add128.i = add i32 %480, 2945
  tail call void %476(ptr noundef %adev, i32 noundef %add128.i, i32 noundef %or103.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end135.i

cond.false129.i:                                  ; preds = %land.lhs.true113.i.cond.false129.i_crit_edge, %land.lhs.true108.i.cond.false129.i_crit_edge, %cond.end98.i.cond.false129.i_crit_edge
  %481 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %arrayidx18.i, align 8
  %483 = ptrtoint ptr %482 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %482, align 4
  %add134.i49 = add i32 %484, 2945
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add134.i49, i32 noundef %or103.i, i32 noundef 0) #5
  br label %cond.end135.i

cond.end135.i:                                    ; preds = %cond.false129.i, %cond.true119.i
  %translate_further.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %485 = ptrtoint ptr %translate_further.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %translate_further.i, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %486)
  %tobool136.not.i = icmp eq i8 %486, 0
  %..i = select i1 %tobool136.not.i, i32 -2146238455, i32 -2146140148
  %487 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %virt151.i, align 8
  %and149.i = and i32 %488, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %cond.end135.i.cond.false172.i_crit_edge, label %land.lhs.true151.i

cond.end135.i.cond.false172.i_crit_edge:          ; preds = %cond.end135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false172.i

land.lhs.true151.i:                               ; preds = %cond.end135.i
  %funcs154.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %489 = ptrtoint ptr %funcs154.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %funcs154.i, align 4
  %tobool155.not.i = icmp eq ptr %490, null
  br i1 %tobool155.not.i, label %land.lhs.true151.i.cond.false172.i_crit_edge, label %land.lhs.true156.i

land.lhs.true151.i.cond.false172.i_crit_edge:     ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false172.i

land.lhs.true156.i:                               ; preds = %land.lhs.true151.i
  %sriov_wreg160.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %490, i32 0, i32 12
  %491 = ptrtoint ptr %sriov_wreg160.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %sriov_wreg160.i, align 4
  %tobool161.not.i = icmp eq ptr %492, null
  br i1 %tobool161.not.i, label %land.lhs.true156.i.cond.false172.i_crit_edge, label %cond.true162.i

land.lhs.true156.i.cond.false172.i_crit_edge:     ; preds = %land.lhs.true156.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false172.i

cond.true162.i:                                   ; preds = %land.lhs.true156.i
  call void @__sanitizer_cov_trace_pc() #7
  %493 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %arrayidx18.i, align 8
  %495 = ptrtoint ptr %494 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %494, align 4
  %add171.i = add i32 %496, 2946
  tail call void %492(ptr noundef %adev, i32 noundef %add171.i, i32 noundef %..i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end178.i

cond.false172.i:                                  ; preds = %land.lhs.true156.i.cond.false172.i_crit_edge, %land.lhs.true151.i.cond.false172.i_crit_edge, %cond.end135.i.cond.false172.i_crit_edge
  %497 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %arrayidx18.i, align 8
  %499 = ptrtoint ptr %498 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %498, align 4
  %add177.i = add i32 %500, 2946
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add177.i, i32 noundef %..i, i32 noundef 0) #5
  br label %cond.end178.i

cond.end178.i:                                    ; preds = %cond.false172.i, %cond.true162.i
  %connected_to_cpu.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %501 = ptrtoint ptr %connected_to_cpu.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %connected_to_cpu.i, align 8, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %502)
  %tobool180.not.i = icmp eq i8 %502, 0
  %.308.i = select i1 %tobool180.not.i, i32 1, i32 193
  %503 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %virt151.i, align 8
  %and194.i = and i32 %504, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194.i)
  %tobool195.not.i = icmp eq i32 %and194.i, 0
  br i1 %tobool195.not.i, label %cond.end178.i.cond.false217.i_crit_edge, label %land.lhs.true196.i

cond.end178.i.cond.false217.i_crit_edge:          ; preds = %cond.end178.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false217.i

land.lhs.true196.i:                               ; preds = %cond.end178.i
  %funcs199.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %505 = ptrtoint ptr %funcs199.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %funcs199.i, align 4
  %tobool200.not.i = icmp eq ptr %506, null
  br i1 %tobool200.not.i, label %land.lhs.true196.i.cond.false217.i_crit_edge, label %land.lhs.true201.i

land.lhs.true196.i.cond.false217.i_crit_edge:     ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false217.i

land.lhs.true201.i:                               ; preds = %land.lhs.true196.i
  %sriov_wreg205.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %506, i32 0, i32 12
  %507 = ptrtoint ptr %sriov_wreg205.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %sriov_wreg205.i, align 4
  %tobool206.not.i = icmp eq ptr %508, null
  br i1 %tobool206.not.i, label %land.lhs.true201.i.cond.false217.i_crit_edge, label %cond.true207.i

land.lhs.true201.i.cond.false217.i_crit_edge:     ; preds = %land.lhs.true201.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false217.i

cond.true207.i:                                   ; preds = %land.lhs.true201.i
  call void @__sanitizer_cov_trace_pc() #7
  %509 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %arrayidx18.i, align 8
  %511 = ptrtoint ptr %510 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %510, align 4
  %add216.i = add i32 %512, 2967
  tail call void %508(ptr noundef %adev, i32 noundef %add216.i, i32 noundef %.308.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_7_init_cache_regs.exit

cond.false217.i:                                  ; preds = %land.lhs.true201.i.cond.false217.i_crit_edge, %land.lhs.true196.i.cond.false217.i_crit_edge, %cond.end178.i.cond.false217.i_crit_edge
  %513 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %arrayidx18.i, align 8
  %515 = ptrtoint ptr %514 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %514, align 4
  %add222.i = add i32 %516, 2967
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add222.i, i32 noundef %.308.i, i32 noundef 0) #5
  br label %mmhub_v1_7_init_cache_regs.exit

mmhub_v1_7_init_cache_regs.exit:                  ; preds = %cond.false217.i, %cond.true207.i, %mmhub_v1_7_init_tlb_regs.exit.mmhub_v1_7_init_cache_regs.exit_crit_edge
  %517 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %virt151.i, align 8
  %and.i51 = and i32 %518, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %mmhub_v1_7_init_cache_regs.exit.cond.false.i66_crit_edge, label %land.lhs.true.i55

mmhub_v1_7_init_cache_regs.exit.cond.false.i66_crit_edge: ; preds = %mmhub_v1_7_init_cache_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i66

land.lhs.true.i55:                                ; preds = %mmhub_v1_7_init_cache_regs.exit
  %funcs.i53 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %519 = ptrtoint ptr %funcs.i53 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %funcs.i53, align 4
  %tobool1.not.i54 = icmp eq ptr %520, null
  br i1 %tobool1.not.i54, label %land.lhs.true.i55.cond.false.i66_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i55.cond.false.i66_crit_edge:       ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i66

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i55
  %sriov_rreg.i56 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %520, i32 0, i32 13
  %521 = ptrtoint ptr %sriov_rreg.i56 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %sriov_rreg.i56, align 4
  %tobool6.not.i57 = icmp eq ptr %522, null
  br i1 %tobool6.not.i57, label %land.lhs.true2.i58.cond.false.i66_crit_edge, label %cond.true.i62

land.lhs.true2.i58.cond.false.i66_crit_edge:      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i66

cond.true.i62:                                    ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i59 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %523 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %arrayidx.i59, align 8
  %525 = ptrtoint ptr %524 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %524, align 4
  %add.i60 = add i32 %526, 3008
  %call.i61 = tail call i32 %522(ptr noundef %adev, i32 noundef %add.i60, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i72

cond.false.i66:                                   ; preds = %land.lhs.true2.i58.cond.false.i66_crit_edge, %land.lhs.true.i55.cond.false.i66_crit_edge, %mmhub_v1_7_init_cache_regs.exit.cond.false.i66_crit_edge
  %arrayidx14.i63 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %527 = ptrtoint ptr %arrayidx14.i63 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %arrayidx14.i63, align 8
  %529 = ptrtoint ptr %528 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %528, align 4
  %add17.i64 = add i32 %530, 3008
  %call18.i65 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i64, i32 noundef 0) #5
  br label %cond.end.i72

cond.end.i72:                                     ; preds = %cond.false.i66, %cond.true.i62
  %cond.i67 = phi i32 [ %call.i61, %cond.true.i62 ], [ %call18.i65, %cond.false.i66 ]
  %or.i68 = and i32 %cond.i67, -256
  %vmid0_page_table_depth.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 43
  %531 = ptrtoint ptr %vmid0_page_table_depth.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %vmid0_page_table_depth.i, align 4
  %shl.i = shl i32 %532, 1
  %and21.i = and i32 %shl.i, 6
  %vmid0_page_table_block_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 42
  %533 = ptrtoint ptr %vmid0_page_table_block_size.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %vmid0_page_table_block_size.i, align 8
  %shl25.i = shl i32 %534, 3
  %and26.i = and i32 %shl25.i, 120
  %and20.i69 = or i32 %or.i68, %and21.i
  %or22.i = or i32 %and20.i69, %and26.i
  %or27.i = or i32 %or22.i, 1
  %535 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %virt151.i, align 8
  %and32.i70 = and i32 %536, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i70)
  %tobool33.not.i71 = icmp eq i32 %and32.i70, 0
  br i1 %tobool33.not.i71, label %cond.end.i72.cond.false54.i84_crit_edge, label %land.lhs.true34.i75

cond.end.i72.cond.false54.i84_crit_edge:          ; preds = %cond.end.i72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54.i84

land.lhs.true34.i75:                              ; preds = %cond.end.i72
  %funcs37.i73 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %537 = ptrtoint ptr %funcs37.i73 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %funcs37.i73, align 4
  %tobool38.not.i74 = icmp eq ptr %538, null
  br i1 %tobool38.not.i74, label %land.lhs.true34.i75.cond.false54.i84_crit_edge, label %land.lhs.true39.i78

land.lhs.true34.i75.cond.false54.i84_crit_edge:   ; preds = %land.lhs.true34.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54.i84

land.lhs.true39.i78:                              ; preds = %land.lhs.true34.i75
  %sriov_wreg.i76 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %538, i32 0, i32 12
  %539 = ptrtoint ptr %sriov_wreg.i76 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %sriov_wreg.i76, align 4
  %tobool43.not.i77 = icmp eq ptr %540, null
  br i1 %tobool43.not.i77, label %land.lhs.true39.i78.cond.false54.i84_crit_edge, label %cond.true44.i81

land.lhs.true39.i78.cond.false54.i84_crit_edge:   ; preds = %land.lhs.true39.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false54.i84

cond.true44.i81:                                  ; preds = %land.lhs.true39.i78
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx50.i79 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %541 = ptrtoint ptr %arrayidx50.i79 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %arrayidx50.i79, align 8
  %543 = ptrtoint ptr %542 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %542, align 4
  %add53.i80 = add i32 %544, 3008
  tail call void %540(ptr noundef %adev, i32 noundef %add53.i80, i32 noundef %or27.i, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_7_enable_system_domain.exit

cond.false54.i84:                                 ; preds = %land.lhs.true39.i78.cond.false54.i84_crit_edge, %land.lhs.true34.i75.cond.false54.i84_crit_edge, %cond.end.i72.cond.false54.i84_crit_edge
  %arrayidx56.i82 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %545 = ptrtoint ptr %arrayidx56.i82 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %arrayidx56.i82, align 8
  %547 = ptrtoint ptr %546 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %546, align 4
  %add59.i83 = add i32 %548, 3008
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59.i83, i32 noundef %or27.i, i32 noundef 0) #5
  br label %mmhub_v1_7_enable_system_domain.exit

mmhub_v1_7_enable_system_domain.exit:             ; preds = %cond.false54.i84, %cond.true44.i81
  %549 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %virt151.i, align 8
  %and.i86 = and i32 %550, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %tobool.not.i87 = icmp eq i32 %and.i86, 0
  br i1 %tobool.not.i87, label %cond.false.i90, label %mmhub_v1_7_enable_system_domain.exit.mmhub_v1_7_disable_identity_aperture.exit_crit_edge

mmhub_v1_7_enable_system_domain.exit.mmhub_v1_7_disable_identity_aperture.exit_crit_edge: ; preds = %mmhub_v1_7_enable_system_domain.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmhub_v1_7_disable_identity_aperture.exit

cond.false.i90:                                   ; preds = %mmhub_v1_7_enable_system_domain.exit
  %arrayidx18.i88 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %551 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %arrayidx18.i88, align 8
  %553 = ptrtoint ptr %552 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %552, align 4
  %add21.i89 = add i32 %554, 2961
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21.i89, i32 noundef -1, i32 noundef 0) #5
  %555 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %virt151.i, align 8
  %and24.i = and i32 %556, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %cond.false.i90.cond.false47.i_crit_edge, label %land.lhs.true26.i

cond.false.i90.cond.false47.i_crit_edge:          ; preds = %cond.false.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47.i

land.lhs.true26.i:                                ; preds = %cond.false.i90
  %funcs29.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %557 = ptrtoint ptr %funcs29.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %funcs29.i, align 4
  %tobool30.not.i = icmp eq ptr %558, null
  br i1 %tobool30.not.i, label %land.lhs.true26.i.cond.false47.i_crit_edge, label %land.lhs.true31.i

land.lhs.true26.i.cond.false47.i_crit_edge:       ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47.i

land.lhs.true31.i:                                ; preds = %land.lhs.true26.i
  %sriov_wreg35.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %558, i32 0, i32 12
  %559 = ptrtoint ptr %sriov_wreg35.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %sriov_wreg35.i, align 4
  %tobool36.not.i = icmp eq ptr %560, null
  br i1 %tobool36.not.i, label %land.lhs.true31.i.cond.false47.i_crit_edge, label %cond.true37.i

land.lhs.true31.i.cond.false47.i_crit_edge:       ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47.i

cond.true37.i:                                    ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #7
  %561 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %arrayidx18.i88, align 8
  %563 = ptrtoint ptr %562 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %562, align 4
  %add46.i = add i32 %564, 2962
  tail call void %560(ptr noundef %adev, i32 noundef %add46.i, i32 noundef 15, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end53.i93

cond.false47.i:                                   ; preds = %land.lhs.true31.i.cond.false47.i_crit_edge, %land.lhs.true26.i.cond.false47.i_crit_edge, %cond.false.i90.cond.false47.i_crit_edge
  %565 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %arrayidx18.i88, align 8
  %567 = ptrtoint ptr %566 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %566, align 4
  %add52.i = add i32 %568, 2962
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add52.i, i32 noundef 15, i32 noundef 0) #5
  br label %cond.end53.i93

cond.end53.i93:                                   ; preds = %cond.false47.i, %cond.true37.i
  %569 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %virt151.i, align 8
  %and56.i91 = and i32 %570, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i91)
  %tobool57.not.i92 = icmp eq i32 %and56.i91, 0
  br i1 %tobool57.not.i92, label %cond.end53.i93.cond.false79.i_crit_edge, label %land.lhs.true58.i96

cond.end53.i93.cond.false79.i_crit_edge:          ; preds = %cond.end53.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false79.i

land.lhs.true58.i96:                              ; preds = %cond.end53.i93
  %funcs61.i94 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %571 = ptrtoint ptr %funcs61.i94 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %funcs61.i94, align 4
  %tobool62.not.i95 = icmp eq ptr %572, null
  br i1 %tobool62.not.i95, label %land.lhs.true58.i96.cond.false79.i_crit_edge, label %land.lhs.true63.i99

land.lhs.true58.i96.cond.false79.i_crit_edge:     ; preds = %land.lhs.true58.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false79.i

land.lhs.true63.i99:                              ; preds = %land.lhs.true58.i96
  %sriov_wreg67.i97 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %572, i32 0, i32 12
  %573 = ptrtoint ptr %sriov_wreg67.i97 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %sriov_wreg67.i97, align 4
  %tobool68.not.i98 = icmp eq ptr %574, null
  br i1 %tobool68.not.i98, label %land.lhs.true63.i99.cond.false79.i_crit_edge, label %cond.true69.i101

land.lhs.true63.i99.cond.false79.i_crit_edge:     ; preds = %land.lhs.true63.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false79.i

cond.true69.i101:                                 ; preds = %land.lhs.true63.i99
  call void @__sanitizer_cov_trace_pc() #7
  %575 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %arrayidx18.i88, align 8
  %577 = ptrtoint ptr %576 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %576, align 4
  %add78.i100 = add i32 %578, 2963
  tail call void %574(ptr noundef %adev, i32 noundef %add78.i100, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end85.i

cond.false79.i:                                   ; preds = %land.lhs.true63.i99.cond.false79.i_crit_edge, %land.lhs.true58.i96.cond.false79.i_crit_edge, %cond.end53.i93.cond.false79.i_crit_edge
  %579 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %arrayidx18.i88, align 8
  %581 = ptrtoint ptr %580 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %580, align 4
  %add84.i = add i32 %582, 2963
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add84.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end85.i

cond.end85.i:                                     ; preds = %cond.false79.i, %cond.true69.i101
  %583 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %virt151.i, align 8
  %and88.i = and i32 %584, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %cond.end85.i.cond.false111.i_crit_edge, label %land.lhs.true90.i

cond.end85.i.cond.false111.i_crit_edge:           ; preds = %cond.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false111.i

land.lhs.true90.i:                                ; preds = %cond.end85.i
  %funcs93.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %585 = ptrtoint ptr %funcs93.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %funcs93.i, align 4
  %tobool94.not.i = icmp eq ptr %586, null
  br i1 %tobool94.not.i, label %land.lhs.true90.i.cond.false111.i_crit_edge, label %land.lhs.true95.i

land.lhs.true90.i.cond.false111.i_crit_edge:      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false111.i

land.lhs.true95.i:                                ; preds = %land.lhs.true90.i
  %sriov_wreg99.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %586, i32 0, i32 12
  %587 = ptrtoint ptr %sriov_wreg99.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %sriov_wreg99.i, align 4
  %tobool100.not.i = icmp eq ptr %588, null
  br i1 %tobool100.not.i, label %land.lhs.true95.i.cond.false111.i_crit_edge, label %cond.true101.i

land.lhs.true95.i.cond.false111.i_crit_edge:      ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false111.i

cond.true101.i:                                   ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #7
  %589 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %arrayidx18.i88, align 8
  %591 = ptrtoint ptr %590 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %590, align 4
  %add110.i = add i32 %592, 2964
  tail call void %588(ptr noundef %adev, i32 noundef %add110.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end117.i

cond.false111.i:                                  ; preds = %land.lhs.true95.i.cond.false111.i_crit_edge, %land.lhs.true90.i.cond.false111.i_crit_edge, %cond.end85.i.cond.false111.i_crit_edge
  %593 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %arrayidx18.i88, align 8
  %595 = ptrtoint ptr %594 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %594, align 4
  %add116.i = add i32 %596, 2964
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add116.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end117.i

cond.end117.i:                                    ; preds = %cond.false111.i, %cond.true101.i
  %597 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %virt151.i, align 8
  %and120.i = and i32 %598, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %cond.end117.i.cond.false143.i_crit_edge, label %land.lhs.true122.i

cond.end117.i.cond.false143.i_crit_edge:          ; preds = %cond.end117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false143.i

land.lhs.true122.i:                               ; preds = %cond.end117.i
  %funcs125.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %599 = ptrtoint ptr %funcs125.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %funcs125.i, align 4
  %tobool126.not.i = icmp eq ptr %600, null
  br i1 %tobool126.not.i, label %land.lhs.true122.i.cond.false143.i_crit_edge, label %land.lhs.true127.i

land.lhs.true122.i.cond.false143.i_crit_edge:     ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false143.i

land.lhs.true127.i:                               ; preds = %land.lhs.true122.i
  %sriov_wreg131.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %600, i32 0, i32 12
  %601 = ptrtoint ptr %sriov_wreg131.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %sriov_wreg131.i, align 4
  %tobool132.not.i = icmp eq ptr %602, null
  br i1 %tobool132.not.i, label %land.lhs.true127.i.cond.false143.i_crit_edge, label %cond.true133.i

land.lhs.true127.i.cond.false143.i_crit_edge:     ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false143.i

cond.true133.i:                                   ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #7
  %603 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %arrayidx18.i88, align 8
  %605 = ptrtoint ptr %604 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %604, align 4
  %add142.i = add i32 %606, 2965
  tail call void %602(ptr noundef %adev, i32 noundef %add142.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end149.i

cond.false143.i:                                  ; preds = %land.lhs.true127.i.cond.false143.i_crit_edge, %land.lhs.true122.i.cond.false143.i_crit_edge, %cond.end117.i.cond.false143.i_crit_edge
  %607 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %arrayidx18.i88, align 8
  %609 = ptrtoint ptr %608 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %608, align 4
  %add148.i = add i32 %610, 2965
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add148.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end149.i

cond.end149.i:                                    ; preds = %cond.false143.i, %cond.true133.i
  %611 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %virt151.i, align 8
  %and152.i = and i32 %612, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %cond.end149.i.cond.false175.i_crit_edge, label %land.lhs.true154.i

cond.end149.i.cond.false175.i_crit_edge:          ; preds = %cond.end149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false175.i

land.lhs.true154.i:                               ; preds = %cond.end149.i
  %funcs157.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %613 = ptrtoint ptr %funcs157.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %funcs157.i, align 4
  %tobool158.not.i = icmp eq ptr %614, null
  br i1 %tobool158.not.i, label %land.lhs.true154.i.cond.false175.i_crit_edge, label %land.lhs.true159.i

land.lhs.true154.i.cond.false175.i_crit_edge:     ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false175.i

land.lhs.true159.i:                               ; preds = %land.lhs.true154.i
  %sriov_wreg163.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %614, i32 0, i32 12
  %615 = ptrtoint ptr %sriov_wreg163.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %sriov_wreg163.i, align 4
  %tobool164.not.i = icmp eq ptr %616, null
  br i1 %tobool164.not.i, label %land.lhs.true159.i.cond.false175.i_crit_edge, label %cond.true165.i

land.lhs.true159.i.cond.false175.i_crit_edge:     ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false175.i

cond.true165.i:                                   ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #7
  %617 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %arrayidx18.i88, align 8
  %619 = ptrtoint ptr %618 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %618, align 4
  %add174.i = add i32 %620, 2966
  tail call void %616(ptr noundef %adev, i32 noundef %add174.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %mmhub_v1_7_disable_identity_aperture.exit

cond.false175.i:                                  ; preds = %land.lhs.true159.i.cond.false175.i_crit_edge, %land.lhs.true154.i.cond.false175.i_crit_edge, %cond.end149.i.cond.false175.i_crit_edge
  %621 = ptrtoint ptr %arrayidx18.i88 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %arrayidx18.i88, align 8
  %623 = ptrtoint ptr %622 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %622, align 4
  %add180.i = add i32 %624, 2966
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add180.i, i32 noundef 0, i32 noundef 0) #5
  br label %mmhub_v1_7_disable_identity_aperture.exit

mmhub_v1_7_disable_identity_aperture.exit:        ; preds = %cond.false175.i, %cond.true165.i, %mmhub_v1_7_enable_system_domain.exit.mmhub_v1_7_disable_identity_aperture.exit_crit_edge
  %num_level1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 6
  %625 = ptrtoint ptr %num_level1.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %num_level1.i, align 8
  %block_size3.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %627 = ptrtoint ptr %block_size3.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %block_size3.i, align 4
  %translate_further.i102 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %629 = ptrtoint ptr %translate_further.i102 to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %translate_further.i102, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %630)
  %tobool.not.i103 = icmp eq i8 %630, 0
  %not.tobool.not.i = xor i1 %tobool.not.i103, true
  %sub.i = sext i1 %not.tobool.not.i to i32
  %num_level.0.i = add i32 %626, %sub.i
  %funcs.i105 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx16.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %shl.i106 = shl i32 %num_level.0.i, 1
  %and29.i = and i32 %shl.i106, 6
  %631 = shl i32 %628, 3
  %632 = add i32 %631, 56
  %shl46.i = select i1 %tobool.not.i103, i32 %632, i32 %631
  %and47.i = and i32 %shl46.i, 120
  %ctx_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 8
  %ctx_addr_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %and28.i = or i32 %and47.i, %and29.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mmhub_v1_7_disable_identity_aperture.exit
  %i.0358.i = phi i32 [ 0, %mmhub_v1_7_disable_identity_aperture.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %633 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %virt151.i, align 8
  %and.i107 = and i32 %634, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool5.not.i = icmp eq i32 %and.i107, 0
  br i1 %tobool5.not.i, label %for.body.i.cond.false.i114_crit_edge, label %land.lhs.true.i109

for.body.i.cond.false.i114_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i114

land.lhs.true.i109:                               ; preds = %for.body.i
  %635 = ptrtoint ptr %funcs.i105 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %funcs.i105, align 4
  %tobool6.not.i108 = icmp eq ptr %636, null
  br i1 %tobool6.not.i108, label %land.lhs.true.i109.cond.false.i114_crit_edge, label %land.lhs.true7.i

land.lhs.true.i109.cond.false.i114_crit_edge:     ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i114

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i109
  %sriov_rreg.i110 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %636, i32 0, i32 13
  %637 = ptrtoint ptr %sriov_rreg.i110 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %sriov_rreg.i110, align 4
  %tobool11.not.i = icmp eq ptr %638, null
  br i1 %tobool11.not.i, label %land.lhs.true7.i.cond.false.i114_crit_edge, label %cond.true.i113

land.lhs.true7.i.cond.false.i114_crit_edge:       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i114

cond.true.i113:                                   ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  %639 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %arrayidx16.i, align 8
  %641 = ptrtoint ptr %640 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %640, align 4
  %add.i111 = add nuw nsw i32 %i.0358.i, 3009
  %add19.i = add i32 %add.i111, %642
  %call.i112 = tail call i32 %638(ptr noundef %adev, i32 noundef %add19.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i117

cond.false.i114:                                  ; preds = %land.lhs.true7.i.cond.false.i114_crit_edge, %land.lhs.true.i109.cond.false.i114_crit_edge, %for.body.i.cond.false.i114_crit_edge
  %643 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %arrayidx16.i, align 8
  %645 = ptrtoint ptr %644 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %644, align 4
  %add24.i = add nuw nsw i32 %i.0358.i, 3009
  %add25.i = add i32 %add24.i, %646
  %call26.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add25.i, i32 noundef 0) #5
  br label %cond.end.i117

cond.end.i117:                                    ; preds = %cond.false.i114, %cond.true.i113
  %cond.i115 = phi i32 [ %call.i112, %cond.true.i113 ], [ %call26.i, %cond.false.i114 ]
  %or.i116 = and i32 %cond.i115, -5592320
  %or44.i = or i32 %and28.i, %or.i116
  %or50.i = or i32 %or44.i, 5592193
  %647 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %virt151.i, align 8
  %and53.i = and i32 %648, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %cond.end.i117.cond.false76.i_crit_edge, label %land.lhs.true55.i

cond.end.i117.cond.false76.i_crit_edge:           ; preds = %cond.end.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false76.i

land.lhs.true55.i:                                ; preds = %cond.end.i117
  %649 = ptrtoint ptr %funcs.i105 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %funcs.i105, align 4
  %tobool59.not.i = icmp eq ptr %650, null
  br i1 %tobool59.not.i, label %land.lhs.true55.i.cond.false76.i_crit_edge, label %land.lhs.true60.i

land.lhs.true55.i.cond.false76.i_crit_edge:       ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false76.i

land.lhs.true60.i:                                ; preds = %land.lhs.true55.i
  %sriov_wreg.i118 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %650, i32 0, i32 12
  %651 = ptrtoint ptr %sriov_wreg.i118 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %sriov_wreg.i118, align 4
  %tobool64.not.i = icmp eq ptr %652, null
  br i1 %tobool64.not.i, label %land.lhs.true60.i.cond.false76.i_crit_edge, label %cond.true65.i

land.lhs.true60.i.cond.false76.i_crit_edge:       ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false76.i

cond.true65.i:                                    ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #7
  %653 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %arrayidx16.i, align 8
  %655 = ptrtoint ptr %654 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %654, align 4
  %add74.i = add i32 %656, 3009
  %657 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %ctx_distance.i, align 4
  %mul.i = mul i32 %658, %i.0358.i
  %add75.i = add i32 %add74.i, %mul.i
  tail call void %652(ptr noundef %adev, i32 noundef %add75.i, i32 noundef %or50.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end85.i122

cond.false76.i:                                   ; preds = %land.lhs.true60.i.cond.false76.i_crit_edge, %land.lhs.true55.i.cond.false76.i_crit_edge, %cond.end.i117.cond.false76.i_crit_edge
  %659 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %arrayidx16.i, align 8
  %661 = ptrtoint ptr %660 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %660, align 4
  %add81.i = add i32 %662, 3009
  %663 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %ctx_distance.i, align 4
  %mul83.i = mul i32 %664, %i.0358.i
  %add84.i119 = add i32 %add81.i, %mul83.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add84.i119, i32 noundef %or50.i, i32 noundef 0) #5
  br label %cond.end85.i122

cond.end85.i122:                                  ; preds = %cond.false76.i, %cond.true65.i
  %665 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %virt151.i, align 8
  %and88.i120 = and i32 %666, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i120)
  %tobool89.not.i121 = icmp eq i32 %and88.i120, 0
  br i1 %tobool89.not.i121, label %cond.end85.i122.cond.false113.i_crit_edge, label %land.lhs.true90.i124

cond.end85.i122.cond.false113.i_crit_edge:        ; preds = %cond.end85.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false113.i

land.lhs.true90.i124:                             ; preds = %cond.end85.i122
  %667 = ptrtoint ptr %funcs.i105 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %funcs.i105, align 4
  %tobool94.not.i123 = icmp eq ptr %668, null
  br i1 %tobool94.not.i123, label %land.lhs.true90.i124.cond.false113.i_crit_edge, label %land.lhs.true95.i127

land.lhs.true90.i124.cond.false113.i_crit_edge:   ; preds = %land.lhs.true90.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false113.i

land.lhs.true95.i127:                             ; preds = %land.lhs.true90.i124
  %sriov_wreg99.i125 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %668, i32 0, i32 12
  %669 = ptrtoint ptr %sriov_wreg99.i125 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %sriov_wreg99.i125, align 4
  %tobool100.not.i126 = icmp eq ptr %670, null
  br i1 %tobool100.not.i126, label %land.lhs.true95.i127.cond.false113.i_crit_edge, label %cond.true101.i129

land.lhs.true95.i127.cond.false113.i_crit_edge:   ; preds = %land.lhs.true95.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false113.i

cond.true101.i129:                                ; preds = %land.lhs.true95.i127
  call void @__sanitizer_cov_trace_pc() #7
  %671 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %arrayidx16.i, align 8
  %673 = ptrtoint ptr %672 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %672, align 4
  %add110.i128 = add i32 %674, 3149
  %675 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul111.i = mul i32 %676, %i.0358.i
  %add112.i = add i32 %add110.i128, %mul111.i
  tail call void %670(ptr noundef %adev, i32 noundef %add112.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end122.i

cond.false113.i:                                  ; preds = %land.lhs.true95.i127.cond.false113.i_crit_edge, %land.lhs.true90.i124.cond.false113.i_crit_edge, %cond.end85.i122.cond.false113.i_crit_edge
  %677 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %arrayidx16.i, align 8
  %679 = ptrtoint ptr %678 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %678, align 4
  %add118.i = add i32 %680, 3149
  %681 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul120.i = mul i32 %682, %i.0358.i
  %add121.i = add i32 %add118.i, %mul120.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add121.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end122.i

cond.end122.i:                                    ; preds = %cond.false113.i, %cond.true101.i129
  %683 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %virt151.i, align 8
  %and125.i = and i32 %684, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i130 = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i130, label %cond.end122.i.cond.false151.i_crit_edge, label %land.lhs.true127.i131

cond.end122.i.cond.false151.i_crit_edge:          ; preds = %cond.end122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false151.i

land.lhs.true127.i131:                            ; preds = %cond.end122.i
  %685 = ptrtoint ptr %funcs.i105 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %funcs.i105, align 4
  %tobool131.not.i = icmp eq ptr %686, null
  br i1 %tobool131.not.i, label %land.lhs.true127.i131.cond.false151.i_crit_edge, label %land.lhs.true132.i

land.lhs.true127.i131.cond.false151.i_crit_edge:  ; preds = %land.lhs.true127.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false151.i

land.lhs.true132.i:                               ; preds = %land.lhs.true127.i131
  %sriov_wreg136.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %686, i32 0, i32 12
  %687 = ptrtoint ptr %sriov_wreg136.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %sriov_wreg136.i, align 4
  %tobool137.not.i = icmp eq ptr %688, null
  br i1 %tobool137.not.i, label %land.lhs.true132.i.cond.false151.i_crit_edge, label %cond.true138.i

land.lhs.true132.i.cond.false151.i_crit_edge:     ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false151.i

cond.true138.i:                                   ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #7
  %689 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %arrayidx16.i, align 8
  %691 = ptrtoint ptr %690 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %690, align 4
  %add147.i = add i32 %692, 3150
  %693 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul149.i = mul i32 %694, %i.0358.i
  %add150.i = add i32 %add147.i, %mul149.i
  tail call void %688(ptr noundef %adev, i32 noundef %add150.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end160.i

cond.false151.i:                                  ; preds = %land.lhs.true132.i.cond.false151.i_crit_edge, %land.lhs.true127.i131.cond.false151.i_crit_edge, %cond.end122.i.cond.false151.i_crit_edge
  %695 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %arrayidx16.i, align 8
  %697 = ptrtoint ptr %696 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %696, align 4
  %add156.i = add i32 %698, 3150
  %699 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul158.i = mul i32 %700, %i.0358.i
  %add159.i = add i32 %add156.i, %mul158.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add159.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end160.i

cond.end160.i:                                    ; preds = %cond.false151.i, %cond.true138.i
  %701 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %virt151.i, align 8
  %and163.i = and i32 %702, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163.i)
  %tobool164.not.i132 = icmp eq i32 %and163.i, 0
  br i1 %tobool164.not.i132, label %cond.end160.i.cond.false192.i_crit_edge, label %land.lhs.true165.i

cond.end160.i.cond.false192.i_crit_edge:          ; preds = %cond.end160.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false192.i

land.lhs.true165.i:                               ; preds = %cond.end160.i
  %703 = ptrtoint ptr %funcs.i105 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %funcs.i105, align 4
  %tobool169.not.i = icmp eq ptr %704, null
  br i1 %tobool169.not.i, label %land.lhs.true165.i.cond.false192.i_crit_edge, label %land.lhs.true170.i

land.lhs.true165.i.cond.false192.i_crit_edge:     ; preds = %land.lhs.true165.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false192.i

land.lhs.true170.i:                               ; preds = %land.lhs.true165.i
  %sriov_wreg174.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %704, i32 0, i32 12
  %705 = ptrtoint ptr %sriov_wreg174.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %sriov_wreg174.i, align 4
  %tobool175.not.i = icmp eq ptr %706, null
  br i1 %tobool175.not.i, label %land.lhs.true170.i.cond.false192.i_crit_edge, label %cond.true176.i

land.lhs.true170.i.cond.false192.i_crit_edge:     ; preds = %land.lhs.true170.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false192.i

cond.true176.i:                                   ; preds = %land.lhs.true170.i
  call void @__sanitizer_cov_trace_pc() #7
  %707 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %arrayidx16.i, align 8
  %709 = ptrtoint ptr %708 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %708, align 4
  %add185.i = add i32 %710, 3181
  %711 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul187.i = mul i32 %712, %i.0358.i
  %add188.i = add i32 %add185.i, %mul187.i
  %713 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %713)
  %714 = load i64, ptr %max_pfn.i, align 8
  %715 = trunc i64 %714 to i32
  %conv.i133 = add i32 %715, -1
  tail call void %706(ptr noundef %adev, i32 noundef %add188.i, i32 noundef %conv.i133, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end206.i

cond.false192.i:                                  ; preds = %land.lhs.true170.i.cond.false192.i_crit_edge, %land.lhs.true165.i.cond.false192.i_crit_edge, %cond.end160.i.cond.false192.i_crit_edge
  %716 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %arrayidx16.i, align 8
  %718 = ptrtoint ptr %717 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %717, align 4
  %add197.i = add i32 %719, 3181
  %720 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul199.i = mul i32 %721, %i.0358.i
  %add200.i = add i32 %add197.i, %mul199.i
  %722 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %722)
  %723 = load i64, ptr %max_pfn.i, align 8
  %724 = trunc i64 %723 to i32
  %conv205.i = add i32 %724, -1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add200.i, i32 noundef %conv205.i, i32 noundef 0) #5
  br label %cond.end206.i

cond.end206.i:                                    ; preds = %cond.false192.i, %cond.true176.i
  %725 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %virt151.i, align 8
  %and209.i = and i32 %726, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209.i)
  %tobool210.not.i = icmp eq i32 %and209.i, 0
  br i1 %tobool210.not.i, label %cond.end206.i.cond.false240.i_crit_edge, label %land.lhs.true211.i

cond.end206.i.cond.false240.i_crit_edge:          ; preds = %cond.end206.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false240.i

land.lhs.true211.i:                               ; preds = %cond.end206.i
  %727 = ptrtoint ptr %funcs.i105 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %funcs.i105, align 4
  %tobool215.not.i = icmp eq ptr %728, null
  br i1 %tobool215.not.i, label %land.lhs.true211.i.cond.false240.i_crit_edge, label %land.lhs.true216.i

land.lhs.true211.i.cond.false240.i_crit_edge:     ; preds = %land.lhs.true211.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false240.i

land.lhs.true216.i:                               ; preds = %land.lhs.true211.i
  %sriov_wreg220.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %728, i32 0, i32 12
  %729 = ptrtoint ptr %sriov_wreg220.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %sriov_wreg220.i, align 4
  %tobool221.not.i = icmp eq ptr %730, null
  br i1 %tobool221.not.i, label %land.lhs.true216.i.cond.false240.i_crit_edge, label %cond.true222.i

land.lhs.true216.i.cond.false240.i_crit_edge:     ; preds = %land.lhs.true216.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false240.i

cond.true222.i:                                   ; preds = %land.lhs.true216.i
  call void @__sanitizer_cov_trace_pc() #7
  %731 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %arrayidx16.i, align 8
  %733 = ptrtoint ptr %732 to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %732, align 4
  %add231.i = add i32 %734, 3182
  %735 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul233.i = mul i32 %736, %i.0358.i
  %add234.i = add i32 %add231.i, %mul233.i
  %737 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %737)
  %738 = load i64, ptr %max_pfn.i, align 8
  %sub237.i = add i64 %738, -1
  %shr.i134 = lshr i64 %sub237.i, 32
  %conv239.i = trunc i64 %shr.i134 to i32
  tail call void %730(ptr noundef %adev, i32 noundef %add234.i, i32 noundef %conv239.i, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc.i

cond.false240.i:                                  ; preds = %land.lhs.true216.i.cond.false240.i_crit_edge, %land.lhs.true211.i.cond.false240.i_crit_edge, %cond.end206.i.cond.false240.i_crit_edge
  %739 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %arrayidx16.i, align 8
  %741 = ptrtoint ptr %740 to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load i32, ptr %740, align 4
  %add245.i = add i32 %742, 3182
  %743 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul247.i = mul i32 %744, %i.0358.i
  %add248.i = add i32 %add245.i, %mul247.i
  %745 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %745)
  %746 = load i64, ptr %max_pfn.i, align 8
  %sub251.i = add i64 %746, -1
  %shr252.i = lshr i64 %sub251.i, 32
  %conv254.i = trunc i64 %shr252.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add248.i, i32 noundef %conv254.i, i32 noundef 0) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false240.i, %cond.true222.i
  %inc.i = add nuw nsw i32 %i.0358.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %mmhub_v1_7_setup_vmid_config.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

mmhub_v1_7_setup_vmid_config.exit:                ; preds = %for.inc.i
  %eng_addr_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 11
  br label %for.body.i139

for.body.i139:                                    ; preds = %for.inc.i157.for.body.i139_crit_edge, %mmhub_v1_7_setup_vmid_config.exit
  %i.088.i = phi i32 [ 0, %mmhub_v1_7_setup_vmid_config.exit ], [ %inc.i155, %for.inc.i157.for.body.i139_crit_edge ]
  %747 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %virt151.i, align 8
  %and.i137 = and i32 %748, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137)
  %tobool.not.i138 = icmp eq i32 %and.i137, 0
  br i1 %tobool.not.i138, label %for.body.i139.cond.false.i149_crit_edge, label %land.lhs.true.i141

for.body.i139.cond.false.i149_crit_edge:          ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i149

land.lhs.true.i141:                               ; preds = %for.body.i139
  %749 = ptrtoint ptr %funcs.i105 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %funcs.i105, align 4
  %tobool1.not.i140 = icmp eq ptr %750, null
  br i1 %tobool1.not.i140, label %land.lhs.true.i141.cond.false.i149_crit_edge, label %land.lhs.true2.i144

land.lhs.true.i141.cond.false.i149_crit_edge:     ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i149

land.lhs.true2.i144:                              ; preds = %land.lhs.true.i141
  %sriov_wreg.i142 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %750, i32 0, i32 12
  %751 = ptrtoint ptr %sriov_wreg.i142 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %sriov_wreg.i142, align 4
  %tobool6.not.i143 = icmp eq ptr %752, null
  br i1 %tobool6.not.i143, label %land.lhs.true2.i144.cond.false.i149_crit_edge, label %cond.true.i147

land.lhs.true2.i144.cond.false.i149_crit_edge:    ; preds = %land.lhs.true2.i144
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i149

cond.true.i147:                                   ; preds = %land.lhs.true2.i144
  call void @__sanitizer_cov_trace_pc() #7
  %753 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %arrayidx16.i, align 8
  %755 = ptrtoint ptr %754 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %754, align 4
  %add.i145 = add i32 %756, 3079
  %757 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %eng_addr_distance.i, align 4
  %mul.i146 = mul i32 %758, %i.088.i
  %add14.i = add i32 %add.i145, %mul.i146
  tail call void %752(ptr noundef %adev, i32 noundef %add14.i, i32 noundef -1, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i151

cond.false.i149:                                  ; preds = %land.lhs.true2.i144.cond.false.i149_crit_edge, %land.lhs.true.i141.cond.false.i149_crit_edge, %for.body.i139.cond.false.i149_crit_edge
  %759 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %arrayidx16.i, align 8
  %761 = ptrtoint ptr %760 to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load i32, ptr %760, align 4
  %add19.i148 = add i32 %762, 3079
  %763 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %eng_addr_distance.i, align 4
  %mul21.i = mul i32 %764, %i.088.i
  %add22.i = add i32 %add19.i148, %mul21.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22.i, i32 noundef -1, i32 noundef 0) #5
  br label %cond.end.i151

cond.end.i151:                                    ; preds = %cond.false.i149, %cond.true.i147
  %765 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load i32, ptr %virt151.i, align 8
  %and25.i = and i32 %766, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i150 = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i150, label %cond.end.i151.cond.false51.i_crit_edge, label %land.lhs.true27.i152

cond.end.i151.cond.false51.i_crit_edge:           ; preds = %cond.end.i151
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false51.i

land.lhs.true27.i152:                             ; preds = %cond.end.i151
  %767 = ptrtoint ptr %funcs.i105 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %funcs.i105, align 4
  %tobool31.not.i = icmp eq ptr %768, null
  br i1 %tobool31.not.i, label %land.lhs.true27.i152.cond.false51.i_crit_edge, label %land.lhs.true32.i

land.lhs.true27.i152.cond.false51.i_crit_edge:    ; preds = %land.lhs.true27.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false51.i

land.lhs.true32.i:                                ; preds = %land.lhs.true27.i152
  %sriov_wreg36.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %768, i32 0, i32 12
  %769 = ptrtoint ptr %sriov_wreg36.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %sriov_wreg36.i, align 4
  %tobool37.not.i153 = icmp eq ptr %770, null
  br i1 %tobool37.not.i153, label %land.lhs.true32.i.cond.false51.i_crit_edge, label %cond.true38.i

land.lhs.true32.i.cond.false51.i_crit_edge:       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false51.i

cond.true38.i:                                    ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #7
  %771 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %arrayidx16.i, align 8
  %773 = ptrtoint ptr %772 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %772, align 4
  %add47.i = add i32 %774, 3080
  %775 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %eng_addr_distance.i, align 4
  %mul49.i = mul i32 %776, %i.088.i
  %add50.i = add i32 %add47.i, %mul49.i
  tail call void %770(ptr noundef %adev, i32 noundef %add50.i, i32 noundef 31, i32 noundef 0, i32 noundef 11) #5
  br label %for.inc.i157

cond.false51.i:                                   ; preds = %land.lhs.true32.i.cond.false51.i_crit_edge, %land.lhs.true27.i152.cond.false51.i_crit_edge, %cond.end.i151.cond.false51.i_crit_edge
  %777 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %arrayidx16.i, align 8
  %779 = ptrtoint ptr %778 to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %778, align 4
  %add56.i = add i32 %780, 3080
  %781 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %eng_addr_distance.i, align 4
  %mul58.i = mul i32 %782, %i.088.i
  %add59.i154 = add i32 %add56.i, %mul58.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59.i154, i32 noundef 31, i32 noundef 0) #5
  br label %for.inc.i157

for.inc.i157:                                     ; preds = %cond.false51.i, %cond.true38.i
  %inc.i155 = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i156 = icmp eq i32 %inc.i155, 18
  br i1 %exitcond.not.i156, label %mmhub_v1_7_program_invalidation.exit, label %for.inc.i157.for.body.i139_crit_edge

for.inc.i157.for.body.i139_crit_edge:             ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i139

mmhub_v1_7_program_invalidation.exit:             ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v1_7_set_fault_enable_default(ptr noundef %adev, i1 noundef zeroext %value) #1 align 64 {
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
  %add21 = add i32 %5, 2951
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
  %add116 = add i32 %15, 2951
  tail call void %11(ptr noundef %adev, i32 noundef %add116, i32 noundef %tmp.0, i32 noundef 0, i32 noundef 11) #5
  br label %cleanup

cond.false117:                                    ; preds = %land.lhs.true102.cond.false117_crit_edge, %land.lhs.true97.cond.false117_crit_edge, %cond.false.cond.false117_crit_edge
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add122 = add i32 %19, 2951
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add122, i32 noundef %tmp.0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false117, %cond.true107, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v1_7_gart_disable(ptr noundef %adev) #1 align 64 {
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
  %add = add i32 %9, 3008
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
  %add19 = add i32 %15, 3008
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
  %add46 = add i32 %27, 3271
  %call = tail call i32 %23(ptr noundef %adev, i32 noundef %add46, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true32.cond.false47_crit_edge, %land.lhs.true27.cond.false47_crit_edge, %for.end.cond.false47_crit_edge
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx11, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add52 = add i32 %31, 3271
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
  %add82 = add i32 %41, 3271
  tail call void %37(ptr noundef %adev, i32 noundef %add82, i32 noundef %and56, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end89

cond.false83:                                     ; preds = %land.lhs.true67.cond.false83_crit_edge, %land.lhs.true62.cond.false83_crit_edge, %cond.end54.cond.false83_crit_edge
  %42 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx11, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add88 = add i32 %45, 3271
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
  %add125 = add i32 %51, 2944
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
  %add155 = add i32 %61, 2944
  tail call void %57(ptr noundef %adev, i32 noundef %add155, i32 noundef %and129, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end162

cond.false156:                                    ; preds = %land.lhs.true140.cond.false156_crit_edge, %land.lhs.true135.cond.false156_crit_edge, %cond.false120.cond.false156_crit_edge
  %62 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx11, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add161 = add i32 %65, 2944
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
  %add187 = add i32 %75, 2946
  tail call void %71(ptr noundef %adev, i32 noundef %add187, i32 noundef 0, i32 noundef 0, i32 noundef 11) #5
  br label %if.end

cond.false188:                                    ; preds = %land.lhs.true172.cond.false188_crit_edge, %land.lhs.true167.cond.false188_crit_edge, %cond.end162.cond.false188_crit_edge
  %76 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx11, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %add193 = add i32 %79, 2946
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add193, i32 noundef 0, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %cond.false188, %cond.true178, %cond.end89.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmhub_v1_7_set_clockgating(ptr noundef %adev, i32 noundef %state) #1 align 64 {
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
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %2 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cg_flags, align 8
  %and1 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %cond.end.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

cond.end.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %4 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx14.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add17.i = add i32 %7, 2891
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef 0) #5
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt, align 8
  %and21.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %cond.end.i.cond.false45.i_crit_edge, label %land.lhs.true23.i

cond.end.i.cond.false45.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false45.i

land.lhs.true23.i:                                ; preds = %cond.end.i
  %funcs26.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %10 = ptrtoint ptr %funcs26.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs26.i, align 4
  %tobool27.not.i = icmp eq ptr %11, null
  br i1 %tobool27.not.i, label %land.lhs.true23.i.cond.false45.i_crit_edge, label %land.lhs.true28.i

land.lhs.true23.i.cond.false45.i_crit_edge:       ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false45.i

land.lhs.true28.i:                                ; preds = %land.lhs.true23.i
  %sriov_rreg32.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %sriov_rreg32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sriov_rreg32.i, align 4
  %tobool33.not.i = icmp eq ptr %13, null
  br i1 %tobool33.not.i, label %land.lhs.true28.i.cond.false45.i_crit_edge, label %cond.true34.i

land.lhs.true28.i.cond.false45.i_crit_edge:       ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false45.i

cond.true34.i:                                    ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx14.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add43.i = add i32 %17, 106
  %call44.i = tail call i32 %13(ptr noundef %adev, i32 noundef %add43.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end52.i

cond.false45.i:                                   ; preds = %land.lhs.true28.i.cond.false45.i_crit_edge, %land.lhs.true23.i.cond.false45.i_crit_edge, %cond.end.i.cond.false45.i_crit_edge
  %18 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx14.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add50.i = add i32 %21, 106
  %call51.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50.i, i32 noundef 0) #5
  br label %cond.end52.i

cond.end52.i:                                     ; preds = %cond.false45.i, %cond.true34.i
  %cond53.i = phi i32 [ %call44.i, %cond.true34.i ], [ %call51.i, %cond.false45.i ]
  %22 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %virt, align 8
  %and56.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %cond.end52.i.cond.false80.i_crit_edge, label %land.lhs.true58.i

cond.end52.i.cond.false80.i_crit_edge:            ; preds = %cond.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false80.i

land.lhs.true58.i:                                ; preds = %cond.end52.i
  %funcs61.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %24 = ptrtoint ptr %funcs61.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs61.i, align 4
  %tobool62.not.i = icmp eq ptr %25, null
  br i1 %tobool62.not.i, label %land.lhs.true58.i.cond.false80.i_crit_edge, label %land.lhs.true63.i

land.lhs.true58.i.cond.false80.i_crit_edge:       ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false80.i

land.lhs.true63.i:                                ; preds = %land.lhs.true58.i
  %sriov_rreg67.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %sriov_rreg67.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sriov_rreg67.i, align 4
  %tobool68.not.i = icmp eq ptr %27, null
  br i1 %tobool68.not.i, label %land.lhs.true63.i.cond.false80.i_crit_edge, label %cond.true69.i

land.lhs.true63.i.cond.false80.i_crit_edge:       ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false80.i

cond.true69.i:                                    ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx14.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add78.i = add i32 %31, 234
  %call79.i = tail call i32 %27(ptr noundef %adev, i32 noundef %add78.i, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end87.i

cond.false80.i:                                   ; preds = %land.lhs.true63.i.cond.false80.i_crit_edge, %land.lhs.true58.i.cond.false80.i_crit_edge, %cond.end52.i.cond.false80.i_crit_edge
  %32 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx14.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add85.i = add i32 %35, 234
  %call86.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add85.i, i32 noundef 0) #5
  br label %cond.end87.i

cond.end87.i:                                     ; preds = %cond.false80.i, %cond.true69.i
  %cond88.i = phi i32 [ %call79.i, %cond.true69.i ], [ %call86.i, %cond.false80.i ]
  br i1 %cmp, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %cond.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %call18.i, 262144
  %and90.i = and i32 %cond53.i, -253
  %and91.i = and i32 %cond88.i, -253
  br label %if.end.i

if.else.i:                                        ; preds = %cond.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  %and92.i = and i32 %call18.i, -262145
  %or93.i = or i32 %cond53.i, 252
  %or94.i = or i32 %cond88.i, 252
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %or.i, %if.then.i ], [ %and92.i, %if.else.i ]
  %data1.0.i = phi i32 [ %and90.i, %if.then.i ], [ %or93.i, %if.else.i ]
  %data2.0.i = phi i32 [ %and91.i, %if.then.i ], [ %or94.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i, i32 %data.0.i)
  %cmp.not.i = icmp eq i32 %call18.i, %data.0.i
  br i1 %cmp.not.i, label %if.end.i.if.end127.i_crit_edge, label %if.then95.i

if.end.i.if.end127.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127.i

if.then95.i:                                      ; preds = %if.end.i
  %36 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virt, align 8
  %and98.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %if.then95.i.cond.false120.i_crit_edge, label %land.lhs.true100.i

if.then95.i.cond.false120.i_crit_edge:            ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false120.i

land.lhs.true100.i:                               ; preds = %if.then95.i
  %funcs103.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %38 = ptrtoint ptr %funcs103.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs103.i, align 4
  %tobool104.not.i = icmp eq ptr %39, null
  br i1 %tobool104.not.i, label %land.lhs.true100.i.cond.false120.i_crit_edge, label %land.lhs.true105.i

land.lhs.true100.i.cond.false120.i_crit_edge:     ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false120.i

land.lhs.true105.i:                               ; preds = %land.lhs.true100.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool109.not.i = icmp eq ptr %41, null
  br i1 %tobool109.not.i, label %land.lhs.true105.i.cond.false120.i_crit_edge, label %cond.true110.i

land.lhs.true105.i.cond.false120.i_crit_edge:     ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false120.i

cond.true110.i:                                   ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx14.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add119.i = add i32 %45, 2891
  tail call void %41(ptr noundef %adev, i32 noundef %add119.i, i32 noundef %data.0.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end127.i

cond.false120.i:                                  ; preds = %land.lhs.true105.i.cond.false120.i_crit_edge, %land.lhs.true100.i.cond.false120.i_crit_edge, %if.then95.i.cond.false120.i_crit_edge
  %46 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx14.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add125.i = add i32 %49, 2891
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add125.i, i32 noundef %data.0.i, i32 noundef 0) #5
  br label %if.end127.i

if.end127.i:                                      ; preds = %cond.false120.i, %cond.true110.i, %if.end.i.if.end127.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cond53.i, i32 %data1.0.i)
  %cmp128.not.i = icmp eq i32 %cond53.i, %data1.0.i
  br i1 %cmp128.not.i, label %if.end127.i.if.end162.i_crit_edge, label %if.then129.i

if.end127.i.if.end162.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162.i

if.then129.i:                                     ; preds = %if.end127.i
  %50 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %virt, align 8
  %and132.i = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.i)
  %tobool133.not.i = icmp eq i32 %and132.i, 0
  br i1 %tobool133.not.i, label %if.then129.i.cond.false155.i_crit_edge, label %land.lhs.true134.i

if.then129.i.cond.false155.i_crit_edge:           ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false155.i

land.lhs.true134.i:                               ; preds = %if.then129.i
  %funcs137.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %52 = ptrtoint ptr %funcs137.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %funcs137.i, align 4
  %tobool138.not.i = icmp eq ptr %53, null
  br i1 %tobool138.not.i, label %land.lhs.true134.i.cond.false155.i_crit_edge, label %land.lhs.true139.i

land.lhs.true134.i.cond.false155.i_crit_edge:     ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false155.i

land.lhs.true139.i:                               ; preds = %land.lhs.true134.i
  %sriov_wreg143.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %sriov_wreg143.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sriov_wreg143.i, align 4
  %tobool144.not.i = icmp eq ptr %55, null
  br i1 %tobool144.not.i, label %land.lhs.true139.i.cond.false155.i_crit_edge, label %cond.true145.i

land.lhs.true139.i.cond.false155.i_crit_edge:     ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false155.i

cond.true145.i:                                   ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx14.i, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add154.i = add i32 %59, 106
  tail call void %55(ptr noundef %adev, i32 noundef %add154.i, i32 noundef %data1.0.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end162.i

cond.false155.i:                                  ; preds = %land.lhs.true139.i.cond.false155.i_crit_edge, %land.lhs.true134.i.cond.false155.i_crit_edge, %if.then129.i.cond.false155.i_crit_edge
  %60 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx14.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add160.i = add i32 %63, 106
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add160.i, i32 noundef %data1.0.i, i32 noundef 0) #5
  br label %if.end162.i

if.end162.i:                                      ; preds = %cond.false155.i, %cond.true145.i, %if.end127.i.if.end162.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cond88.i, i32 %data2.0.i)
  %cmp163.not.i = icmp eq i32 %cond88.i, %data2.0.i
  br i1 %cmp163.not.i, label %if.end162.i.if.end4_crit_edge, label %if.then164.i

if.end162.i.if.end4_crit_edge:                    ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then164.i:                                     ; preds = %if.end162.i
  %64 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %virt, align 8
  %and167.i = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i)
  %tobool168.not.i = icmp eq i32 %and167.i, 0
  br i1 %tobool168.not.i, label %if.then164.i.cond.false190.i_crit_edge, label %land.lhs.true169.i

if.then164.i.cond.false190.i_crit_edge:           ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false190.i

land.lhs.true169.i:                               ; preds = %if.then164.i
  %funcs172.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %66 = ptrtoint ptr %funcs172.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %funcs172.i, align 4
  %tobool173.not.i = icmp eq ptr %67, null
  br i1 %tobool173.not.i, label %land.lhs.true169.i.cond.false190.i_crit_edge, label %land.lhs.true174.i

land.lhs.true169.i.cond.false190.i_crit_edge:     ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false190.i

land.lhs.true174.i:                               ; preds = %land.lhs.true169.i
  %sriov_wreg178.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %sriov_wreg178.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sriov_wreg178.i, align 4
  %tobool179.not.i = icmp eq ptr %69, null
  br i1 %tobool179.not.i, label %land.lhs.true174.i.cond.false190.i_crit_edge, label %cond.true180.i

land.lhs.true174.i.cond.false190.i_crit_edge:     ; preds = %land.lhs.true174.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false190.i

cond.true180.i:                                   ; preds = %land.lhs.true174.i
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx14.i, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add189.i = add i32 %73, 234
  tail call void %69(ptr noundef %adev, i32 noundef %add189.i, i32 noundef %data2.0.i, i32 noundef 0, i32 noundef 11) #5
  br label %if.end4

cond.false190.i:                                  ; preds = %land.lhs.true174.i.cond.false190.i_crit_edge, %land.lhs.true169.i.cond.false190.i_crit_edge, %if.then164.i.cond.false190.i_crit_edge
  %74 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx14.i, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %add195.i = add i32 %77, 234
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add195.i, i32 noundef %data2.0.i, i32 noundef 0) #5
  br label %if.end4

if.end4:                                          ; preds = %cond.false190.i, %cond.true180.i, %if.end162.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %78 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cg_flags, align 8
  %and6 = and i32 %79, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.return_crit_edge, label %if.then8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp9 = icmp eq i32 %state, 0
  %80 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %virt, align 8
  %and.i17 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %if.then8.cond.false.i32_crit_edge, label %land.lhs.true.i21

if.then8.cond.false.i32_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i32

land.lhs.true.i21:                                ; preds = %if.then8
  %funcs.i19 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %82 = ptrtoint ptr %funcs.i19 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %funcs.i19, align 4
  %tobool1.not.i20 = icmp eq ptr %83, null
  br i1 %tobool1.not.i20, label %land.lhs.true.i21.cond.false.i32_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i21.cond.false.i32_crit_edge:       ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i32

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i21
  %sriov_rreg.i22 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %83, i32 0, i32 13
  %84 = ptrtoint ptr %sriov_rreg.i22 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sriov_rreg.i22, align 4
  %tobool6.not.i23 = icmp eq ptr %85, null
  br i1 %tobool6.not.i23, label %land.lhs.true2.i24.cond.false.i32_crit_edge, label %cond.true.i28

land.lhs.true2.i24.cond.false.i32_crit_edge:      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i32

cond.true.i28:                                    ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i25 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %86 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i25, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add.i26 = add i32 %89, 2891
  %call.i27 = tail call i32 %85(ptr noundef %adev, i32 noundef %add.i26, i32 noundef 0, i32 noundef 11) #5
  br label %cond.end.i36

cond.false.i32:                                   ; preds = %land.lhs.true2.i24.cond.false.i32_crit_edge, %land.lhs.true.i21.cond.false.i32_crit_edge, %if.then8.cond.false.i32_crit_edge
  %arrayidx14.i29 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %90 = ptrtoint ptr %arrayidx14.i29 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx14.i29, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %add17.i30 = add i32 %93, 2891
  %call18.i31 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i30, i32 noundef 0) #5
  br label %cond.end.i36

cond.end.i36:                                     ; preds = %cond.false.i32, %cond.true.i28
  %cond.i33 = phi i32 [ %call.i27, %cond.true.i28 ], [ %call18.i31, %cond.false.i32 ]
  %and20.i = and i32 %cond.i33, -524289
  %masksel.i = select i1 %cmp9, i32 524288, i32 0
  %data.0.i34 = or i32 %and20.i, %masksel.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i33, i32 %data.0.i34)
  %cmp.not.i35 = icmp eq i32 %cond.i33, %data.0.i34
  br i1 %cmp.not.i35, label %cond.end.i36.return_crit_edge, label %if.then21.i

cond.end.i36.return_crit_edge:                    ; preds = %cond.end.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then21.i:                                      ; preds = %cond.end.i36
  %94 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %virt, align 8
  %and24.i = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.then21.i.cond.false46.i_crit_edge, label %land.lhs.true26.i

if.then21.i.cond.false46.i_crit_edge:             ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false46.i

land.lhs.true26.i:                                ; preds = %if.then21.i
  %funcs29.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %96 = ptrtoint ptr %funcs29.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %funcs29.i, align 4
  %tobool30.not.i = icmp eq ptr %97, null
  br i1 %tobool30.not.i, label %land.lhs.true26.i.cond.false46.i_crit_edge, label %land.lhs.true31.i

land.lhs.true26.i.cond.false46.i_crit_edge:       ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false46.i

land.lhs.true31.i:                                ; preds = %land.lhs.true26.i
  %sriov_wreg.i37 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %sriov_wreg.i37 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sriov_wreg.i37, align 4
  %tobool35.not.i = icmp eq ptr %99, null
  br i1 %tobool35.not.i, label %land.lhs.true31.i.cond.false46.i_crit_edge, label %cond.true36.i

land.lhs.true31.i.cond.false46.i_crit_edge:       ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false46.i

cond.true36.i:                                    ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx42.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %100 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx42.i, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add45.i = add i32 %103, 2891
  tail call void %99(ptr noundef %adev, i32 noundef %add45.i, i32 noundef %data.0.i34, i32 noundef 0, i32 noundef 11) #5
  br label %return

cond.false46.i:                                   ; preds = %land.lhs.true31.i.cond.false46.i_crit_edge, %land.lhs.true26.i.cond.false46.i_crit_edge, %if.then21.i.cond.false46.i_crit_edge
  %arrayidx48.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %104 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx48.i, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %add51.i = add i32 %107, 2891
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add51.i, i32 noundef %data.0.i34, i32 noundef 0) #5
  br label %return

return:                                           ; preds = %cond.false46.i, %cond.true36.i, %cond.end.i36.return_crit_edge, %if.end4.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v1_7_get_clockgating(ptr noundef %adev, ptr nocapture noundef %flags) #1 align 64 {
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
  %add = add i32 %12, 2891
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
  %add21 = add i32 %16, 2891
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
  %add47 = add i32 %26, 106
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
  %add54 = add i32 %30, 106
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
define internal void @mmhub_v1_7_setup_vm_pt_regs(ptr noundef %adev, i32 noundef %vmid, i64 noundef %page_table_base) #1 align 64 {
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
  %add = add i32 %9, 3115
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
  %add20 = add i32 %15, 3115
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
  %add50 = add i32 %27, 3116
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
  %add61 = add i32 %33, 3116
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_pd_addr(ptr noundef) local_unnamed_addr #0

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !251, !252, !253, !254}
!llvm.module.flags = !{!256, !257, !258, !259, !260, !261, !262, !263}
!llvm.ident = !{!264}

!0 = !{ptr @mmhub_v1_7_ras_funcs, !1, !"mmhub_v1_7_ras_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1324, i32 37}
!2 = !{ptr @mmhub_v1_7_funcs, !3, !"mmhub_v1_7_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1333, i32 33}
!4 = !{ptr @mmhub_v1_7_edc_cnt_regs, !5, !"mmhub_v1_7_edc_cnt_regs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1185, i32 37}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1223, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mmhub_v1_7_get_ras_error_count._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @mmhub_v1_7_get_ras_error_count._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1233, i32 4}
!16 = !{ptr @mmhub_v1_7_get_ras_error_count._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mmhub_v1_7_get_ras_error_count._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 573, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 577, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 581, i32 4}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 585, i32 4}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 589, i32 4}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 593, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 597, i32 4}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 601, i32 4}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 605, i32 4}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 609, i32 4}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 613, i32 4}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 617, i32 4}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 621, i32 4}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 625, i32 4}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 629, i32 4}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 633, i32 4}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 637, i32 4}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 641, i32 4}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 645, i32 4}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 675, i32 4}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 679, i32 4}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 683, i32 4}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 687, i32 4}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 691, i32 4}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 695, i32 4}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 699, i32 4}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 703, i32 4}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 707, i32 4}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 711, i32 4}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 715, i32 4}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 719, i32 4}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 723, i32 4}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 727, i32 4}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 731, i32 4}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 735, i32 4}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 739, i32 4}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 743, i32 4}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 747, i32 4}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 777, i32 4}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 781, i32 4}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 785, i32 4}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 789, i32 4}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 793, i32 4}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 797, i32 4}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 801, i32 4}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 805, i32 4}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 809, i32 4}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 813, i32 4}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 817, i32 4}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 821, i32 4}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 825, i32 4}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 829, i32 4}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 833, i32 4}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 837, i32 4}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 841, i32 4}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 845, i32 4}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 849, i32 4}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 879, i32 4}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 883, i32 4}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 887, i32 4}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 891, i32 4}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 895, i32 4}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 899, i32 4}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 903, i32 4}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 907, i32 4}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 911, i32 4}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 915, i32 4}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 919, i32 4}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 923, i32 4}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 927, i32 4}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 931, i32 4}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 935, i32 4}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 939, i32 4}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 943, i32 4}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 947, i32 4}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 951, i32 4}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 981, i32 4}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 985, i32 4}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 989, i32 4}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 993, i32 4}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 997, i32 4}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1001, i32 4}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1005, i32 4}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1009, i32 4}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1013, i32 4}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1017, i32 4}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1021, i32 4}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1025, i32 4}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1029, i32 4}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1033, i32 4}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1037, i32 4}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1041, i32 4}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1045, i32 4}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1049, i32 4}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1053, i32 4}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1083, i32 4}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1087, i32 4}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1091, i32 4}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1095, i32 4}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1099, i32 4}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1103, i32 4}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1107, i32 4}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1111, i32 4}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1115, i32 4}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1119, i32 4}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1123, i32 4}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1127, i32 4}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1131, i32 4}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1135, i32 4}
!236 = !{ptr @.str.117, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1139, i32 4}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1143, i32 4}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1147, i32 4}
!242 = !{ptr @.str.120, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1151, i32 4}
!244 = !{ptr @.str.121, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1155, i32 4}
!246 = !{ptr @mmhub_v1_7_ras_fields, !247, !"mmhub_v1_7_ras_fields", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 571, i32 43}
!248 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1300, i32 4}
!250 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @mmhub_v1_7_query_ras_error_status._entry, !249, !"_entry", i1 false, i1 false}
!253 = !{ptr @mmhub_v1_7_query_ras_error_status._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @mmhub_v1_7_ea_err_status_regs, !255, !"mmhub_v1_7_ea_err_status_regs", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v1_7.c", i32 1277, i32 37}
!256 = !{i32 1, !"wchar_size", i32 2}
!257 = !{i32 1, !"min_enum_size", i32 4}
!258 = !{i32 8, !"branch-target-enforcement", i32 0}
!259 = !{i32 8, !"sign-return-address", i32 0}
!260 = !{i32 8, !"sign-return-address-all", i32 0}
!261 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!262 = !{i32 7, !"uwtable", i32 1}
!263 = !{i32 7, !"frame-pointer", i32 2}
!264 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!265 = !{i8 0, i8 2}
