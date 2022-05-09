; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nbio_hdp_flush_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_nbio_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
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
%struct.amdgpu_ras = type { i32, %struct.list_head, %struct.device_attribute, %struct.bin_attribute, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, ptr, %struct.mutex, i32, i8, %struct.amdgpu_ras_eeprom_control, i8, i32, i8, i8, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, %struct.umc_ecc_info }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ras_eeprom_control = type { %struct.amdgpu_ras_eeprom_table_header, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.amdgpu_ras_eeprom_table_header = type { i32, i32, i32, i32, i32 }
%struct.umc_ecc_info = type { [32 x %struct.ecc_info_per_ch] }
%struct.ecc_info_per_ch = type { i16, i16, i64, i64 }
%struct.ras_manager = type { %struct.ras_common_if, i32, %struct.list_head, ptr, %struct.device_attribute, i32, %struct.ras_fs_data, %struct.ras_ih_data, %struct.ras_err_data }
%struct.ras_common_if = type { i32, i32, i32, [32 x i8] }
%struct.ras_fs_data = type { [32 x i8], [32 x i8] }
%struct.ras_ih_data = type { %struct.work_struct, i32, ptr, ptr, i32, i32, i32, i32, i32 }

@nbio_v7_4_hdp_flush_reg = dso_local constant { %struct.nbio_hdp_flush_reg, [56 x i8] } { %struct.nbio_hdp_flush_reg { i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@nbio_v7_4_hdp_flush_reg_ald = dso_local constant { %struct.nbio_hdp_flush_reg, [56 x i8] } { %struct.nbio_hdp_flush_reg { i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576 }, [56 x i8] zeroinitializer }, align 32
@nbio_v7_4_ras_funcs = dso_local constant { %struct.amdgpu_nbio_ras_funcs, [36 x i8] } { %struct.amdgpu_nbio_ras_funcs { ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring, ptr @nbio_v7_4_handle_ras_err_event_athub_intr_no_bifring, ptr @nbio_v7_4_init_ras_controller_interrupt, ptr @nbio_v7_4_init_ras_err_event_athub_interrupt, ptr @nbio_v7_4_query_ras_error_count, ptr @amdgpu_nbio_ras_late_init, ptr @amdgpu_nbio_ras_fini }, [36 x i8] zeroinitializer }, align 32
@nbio_v7_4_funcs = dso_local constant { %struct.amdgpu_nbio_funcs, [52 x i8] } { %struct.amdgpu_nbio_funcs { ptr null, ptr @nbio_v7_4_get_hdp_flush_req_offset, ptr @nbio_v7_4_get_hdp_flush_done_offset, ptr @nbio_v7_4_get_pcie_index_offset, ptr @nbio_v7_4_get_pcie_data_offset, ptr null, ptr null, ptr @nbio_v7_4_get_rev_id, ptr @nbio_v7_4_mc_access_enable, ptr @nbio_v7_4_get_memsize, ptr @nbio_v7_4_sdma_doorbell_range, ptr @nbio_v7_4_vcn_doorbell_range, ptr @nbio_v7_4_enable_doorbell_aperture, ptr @nbio_v7_4_enable_doorbell_selfring_aperture, ptr @nbio_v7_4_ih_doorbell_range, ptr @nbio_v7_4_enable_doorbell_interrupt, ptr @nbio_v7_4_update_medium_grain_clock_gating, ptr @nbio_v7_4_update_medium_grain_light_sleep, ptr @nbio_v7_4_get_clockgating_state, ptr @nbio_v7_4_ih_control, ptr @nbio_v7_4_init_registers, ptr @nbio_v7_4_remap_hdp_registers, ptr null, ptr @nbio_v7_4_program_aspm, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@nbio_v7_4_handle_ras_controller_intr_no_bifring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 410, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"amdgpu: %ld correctable hardware errors detected in %s block, no user action is needed.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nbio_v7_4_handle_ras_controller_intr_no_bifring\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nbio_v7_4_handle_ras_controller_intr_no_bifring._entry_ptr = internal global ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry, section ".printk_index", align 4
@nbio_v7_4_handle_ras_controller_intr_no_bifring._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 416, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"amdgpu: %ld uncorrectable hardware errors detected in %s block\0A\00", [32 x i8] zeroinitializer }, align 32
@nbio_v7_4_handle_ras_controller_intr_no_bifring._entry_ptr.7 = internal global ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry.5, section ".printk_index", align 4
@nbio_v7_4_handle_ras_controller_intr_no_bifring._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 420, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: RAS controller interrupt triggered by NBIF error\0A\00", [38 x i8] zeroinitializer }, align 32
@nbio_v7_4_handle_ras_controller_intr_no_bifring._entry_ptr.10 = internal global ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry.8, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nbio_v7_4_ras_controller_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @nbio_v7_4_set_ras_controller_irq_state, ptr @nbio_v7_4_process_ras_controller_irq }, [24 x i8] zeroinitializer }, align 32
@nbio_v7_4_ras_err_event_athub_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @nbio_v7_4_set_ras_err_event_athub_irq_state, ptr @nbio_v7_4_process_err_event_athub_irq }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"nbio_v7_4_hdp_flush_reg\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 327, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant [28 x i8] c"nbio_v7_4_hdp_flush_reg_ald\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 342, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"nbio_v7_4_ras_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 661, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"nbio_v7_4_funcs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 779, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 406, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 413, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 419, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [35 x i8] c"nbio_v7_4_ras_controller_irq_funcs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 544, i32 42 }
@___asan_gen_.56 = private unnamed_addr constant [40 x i8] c"nbio_v7_4_ras_err_event_athub_irq_funcs\00", align 1
@___asan_gen_.57 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 549, i32 42 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry, ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry.5, ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry.8, ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry_ptr, ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry_ptr.10, ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry_ptr.7, ptr @nbio_v7_4_hdp_flush_reg, ptr @nbio_v7_4_hdp_flush_reg_ald, ptr @nbio_v7_4_ras_funcs, ptr @nbio_v7_4_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @nbio_v7_4_ras_controller_irq_funcs, ptr @nbio_v7_4_ras_err_event_athub_irq_funcs], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v7_4_hdp_flush_reg to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v7_4_hdp_flush_reg_ald to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v7_4_ras_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v7_4_funcs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v7_4_ras_controller_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v7_4_ras_err_event_athub_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_handle_ras_controller_intr_no_bifring(ptr noundef %adev) #0 align 64 {
entry:
  %err_data = alloca %struct.ras_err_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_if = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 3
  %0 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras_if, align 4
  %call = tail call ptr @amdgpu_ras_find_obj(ptr noundef %adev, ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %err_data) #8
  %2 = call ptr @memset(ptr %err_data, i32 0, i32 16)
  %ras1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %3 = ptrtoint ptr %ras1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ras1, align 8
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %5 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %6)
  %cmp = icmp eq i32 %6, 25
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virt, align 8
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %arrayidx13 = getelementptr i32, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %16, 254
  %call14 = tail call i32 %12(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx16, align 8
  %arrayidx18 = getelementptr i32, ptr %18, i32 2
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %20, 254
  %call20 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add19, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.cond.false47_crit_edge, label %land.lhs.true25

if.else.cond.false47_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false47

land.lhs.true25:                                  ; preds = %if.else
  %funcs28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %21 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %22, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false47_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false47_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false47

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_rreg34 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %sriov_rreg34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sriov_rreg34, align 4
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %land.lhs.true30.cond.false47_crit_edge, label %cond.true36

land.lhs.true30.cond.false47_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false47

cond.true36:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %25 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx42, align 8
  %arrayidx44 = getelementptr i32, ptr %26, i32 2
  %27 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %28, 253
  %call46 = tail call i32 %24(ptr noundef %adev, i32 noundef %add45, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false47:                                     ; preds = %land.lhs.true30.cond.false47_crit_edge, %land.lhs.true25.cond.false47_crit_edge, %if.else.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %29 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx49, align 8
  %arrayidx51 = getelementptr i32, ptr %30, i32 2
  %31 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %32, 253
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add52, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.false47, %cond.true36, %cond.false, %cond.true
  %bif_doorbell_intr_cntl.0 = phi i32 [ %call14, %cond.true ], [ %call20, %cond.false ], [ %call46, %cond.true36 ], [ %call53, %cond.false47 ]
  %33 = and i32 %bif_doorbell_intr_cntl.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool57.not = icmp eq i32 %33, 0
  br i1 %tobool57.not, label %if.end.if.end164_crit_edge, label %if.then58

if.end.if.end164_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then58:                                        ; preds = %if.end
  %or = or i32 %bif_doorbell_intr_cntl.0, 131072
  %34 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %35)
  %cmp61 = icmp eq i32 %35, 25
  %virt63 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %36 = ptrtoint ptr %virt63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virt63, align 8
  %and65 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %cmp61, label %if.then62, label %if.else94

if.then62:                                        ; preds = %if.then58
  br i1 %tobool66.not, label %if.then62.cond.false87_crit_edge, label %land.lhs.true67

if.then62.cond.false87_crit_edge:                 ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false87

land.lhs.true67:                                  ; preds = %if.then62
  %funcs70 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %38 = ptrtoint ptr %funcs70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs70, align 4
  %tobool71.not = icmp eq ptr %39, null
  br i1 %tobool71.not, label %land.lhs.true67.cond.false87_crit_edge, label %land.lhs.true72

land.lhs.true67.cond.false87_crit_edge:           ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false87

land.lhs.true72:                                  ; preds = %land.lhs.true67
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_wreg, align 4
  %tobool76.not = icmp eq ptr %41, null
  br i1 %tobool76.not, label %land.lhs.true72.cond.false87_crit_edge, label %cond.true77

land.lhs.true72.cond.false87_crit_edge:           ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false87

cond.true77:                                      ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx83 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %42 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx83, align 8
  %arrayidx85 = getelementptr i32, ptr %43, i32 2
  %44 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx85, align 4
  %add86 = add i32 %45, 254
  tail call void %41(ptr noundef %adev, i32 noundef %add86, i32 noundef %or, i32 noundef 0, i32 noundef 13) #8
  br label %if.end127

cond.false87:                                     ; preds = %land.lhs.true72.cond.false87_crit_edge, %land.lhs.true67.cond.false87_crit_edge, %if.then62.cond.false87_crit_edge
  %arrayidx89 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %46 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx89, align 8
  %arrayidx91 = getelementptr i32, ptr %47, i32 2
  %48 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx91, align 4
  %add92 = add i32 %49, 254
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add92, i32 noundef %or, i32 noundef 0) #8
  br label %if.end127

if.else94:                                        ; preds = %if.then58
  br i1 %tobool66.not, label %if.else94.cond.false120_crit_edge, label %land.lhs.true99

if.else94.cond.false120_crit_edge:                ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false120

land.lhs.true99:                                  ; preds = %if.else94
  %funcs102 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %50 = ptrtoint ptr %funcs102 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %funcs102, align 4
  %tobool103.not = icmp eq ptr %51, null
  br i1 %tobool103.not, label %land.lhs.true99.cond.false120_crit_edge, label %land.lhs.true104

land.lhs.true99.cond.false120_crit_edge:          ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false120

land.lhs.true104:                                 ; preds = %land.lhs.true99
  %sriov_wreg108 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %sriov_wreg108 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sriov_wreg108, align 4
  %tobool109.not = icmp eq ptr %53, null
  br i1 %tobool109.not, label %land.lhs.true104.cond.false120_crit_edge, label %cond.true110

land.lhs.true104.cond.false120_crit_edge:         ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false120

cond.true110:                                     ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx116 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %54 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx116, align 8
  %arrayidx118 = getelementptr i32, ptr %55, i32 2
  %56 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx118, align 4
  %add119 = add i32 %57, 253
  tail call void %53(ptr noundef %adev, i32 noundef %add119, i32 noundef %or, i32 noundef 0, i32 noundef 13) #8
  br label %if.end127

cond.false120:                                    ; preds = %land.lhs.true104.cond.false120_crit_edge, %land.lhs.true99.cond.false120_crit_edge, %if.else94.cond.false120_crit_edge
  %arrayidx122 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %58 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx122, align 8
  %arrayidx124 = getelementptr i32, ptr %59, i32 2
  %60 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx124, align 4
  %add125 = add i32 %61, 253
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add125, i32 noundef %or, i32 noundef 0) #8
  br label %if.end127

if.end127:                                        ; preds = %cond.false120, %cond.true110, %cond.false87, %cond.true77
  %disable_ras_err_cnt_harvest = getelementptr inbounds %struct.amdgpu_ras, ptr %4, i32 0, i32 16
  %62 = ptrtoint ptr %disable_ras_err_cnt_harvest to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %disable_ras_err_cnt_harvest, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool128.not = icmp eq i8 %63, 0
  br i1 %tobool128.not, label %if.then129, label %if.end127.do.end161_crit_edge

if.end127.do.end161_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end161

if.then129:                                       ; preds = %if.end127
  call void @nbio_v7_4_query_ras_error_count(ptr noundef %adev, ptr noundef nonnull %err_data)
  %64 = ptrtoint ptr %err_data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %err_data, align 4
  %err_data130 = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 8
  %66 = ptrtoint ptr %err_data130 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %err_data130, align 4
  %add132 = add i32 %67, %65
  store i32 %add132, ptr %err_data130, align 4
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %err_data, i32 0, i32 1
  %68 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ce_count, align 4
  %ce_count134 = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 8, i32 1
  %70 = ptrtoint ptr %ce_count134 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ce_count134, align 4
  %add135 = add i32 %71, %69
  store i32 %add135, ptr %ce_count134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool137.not = icmp eq i32 %69, 0
  br i1 %tobool137.not, label %if.then129.if.end144_crit_edge, label %do.end

if.then129.if.end144_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

do.end:                                           ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adev, align 8
  %74 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ras_if, align 4
  %call143 = tail call ptr @get_ras_block_str(ptr noundef %75) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str, i32 noundef %add135, ptr noundef %call143) #11
  br label %if.end144

if.end144:                                        ; preds = %do.end, %if.then129.if.end144_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool146.not = icmp eq i32 %65, 0
  br i1 %tobool146.not, label %if.end144.do.end161_crit_edge, label %do.end150

if.end144.do.end161_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end161

do.end150:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adev, align 8
  %78 = ptrtoint ptr %err_data130 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %err_data130, align 4
  %80 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ras_if, align 4
  %call156 = tail call ptr @get_ras_block_str(ptr noundef %81) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.6, i32 noundef %79, ptr noundef %call156) #11
  br label %do.end161

do.end161:                                        ; preds = %do.end150, %if.end144.do.end161_crit_edge, %if.end127.do.end161_crit_edge
  %82 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.9) #11
  %84 = ptrtoint ptr %ras1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ras1, align 8
  %in_recovery.i = getelementptr inbounds %struct.amdgpu_ras, ptr %85, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_recovery.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %in_recovery.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.end161
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %in_recovery.i, ptr %in_recovery.i, i32 0, i32 1, ptr elementtype(i32) %in_recovery.i) #8, !srcloc !39
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %86, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %86, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %atomic_cmpxchg.exit.i.if.end164_crit_edge

atomic_cmpxchg.exit.i.if.end164_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then.i:                                        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %recovery_work.i = getelementptr inbounds %struct.amdgpu_ras, ptr %85, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %87 = load ptr, ptr @system_wq, align 4
  %call.i.i1.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %87, ptr noundef %recovery_work.i) #8
  br label %if.end164

if.end164:                                        ; preds = %if.then.i, %atomic_cmpxchg.exit.i.if.end164_crit_edge, %if.end.if.end164_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %err_data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_handle_ras_err_event_athub_intr_no_bifring(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp eq i32 %1, 25
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %11, 254
  %call = tail call i32 %7(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %15, 254
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.cond.false45_crit_edge, label %land.lhs.true23

if.else.cond.false45_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

land.lhs.true23:                                  ; preds = %if.else
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false45_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false45_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_rreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %sriov_rreg32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_rreg32, align 4
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false45_crit_edge, label %cond.true34

land.lhs.true28.cond.false45_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42 = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %23, 253
  %call44 = tail call i32 %19(ptr noundef %adev, i32 noundef %add43, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false45:                                     ; preds = %land.lhs.true28.cond.false45_crit_edge, %land.lhs.true23.cond.false45_crit_edge, %if.else.cond.false45_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %27, 253
  %call51 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.false45, %cond.true34, %cond.false, %cond.true
  %bif_doorbell_intr_cntl.0 = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ], [ %call44, %cond.true34 ], [ %call51, %cond.false45 ]
  %28 = and i32 %bif_doorbell_intr_cntl.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool55.not = icmp eq i32 %28, 0
  br i1 %tobool55.not, label %if.end.if.end126_crit_edge, label %if.then56

if.end.if.end126_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then56:                                        ; preds = %if.end
  %or = or i32 %bif_doorbell_intr_cntl.0, 262144
  %29 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %30)
  %cmp59 = icmp eq i32 %30, 25
  %virt61 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %31 = ptrtoint ptr %virt61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %virt61, align 8
  %and63 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %cmp59, label %if.then60, label %if.else92

if.then60:                                        ; preds = %if.then56
  br i1 %tobool64.not, label %if.then60.cond.false85_crit_edge, label %land.lhs.true65

if.then60.cond.false85_crit_edge:                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false85

land.lhs.true65:                                  ; preds = %if.then60
  %funcs68 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %33 = ptrtoint ptr %funcs68 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs68, align 4
  %tobool69.not = icmp eq ptr %34, null
  br i1 %tobool69.not, label %land.lhs.true65.cond.false85_crit_edge, label %land.lhs.true70

land.lhs.true65.cond.false85_crit_edge:           ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false85

land.lhs.true70:                                  ; preds = %land.lhs.true65
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_wreg, align 4
  %tobool74.not = icmp eq ptr %36, null
  br i1 %tobool74.not, label %land.lhs.true70.cond.false85_crit_edge, label %cond.true75

land.lhs.true70.cond.false85_crit_edge:           ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false85

cond.true75:                                      ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx81 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %37 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx81, align 8
  %arrayidx83 = getelementptr i32, ptr %38, i32 2
  %39 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx83, align 4
  %add84 = add i32 %40, 254
  tail call void %36(ptr noundef %adev, i32 noundef %add84, i32 noundef %or, i32 noundef 0, i32 noundef 13) #8
  br label %if.end125

cond.false85:                                     ; preds = %land.lhs.true70.cond.false85_crit_edge, %land.lhs.true65.cond.false85_crit_edge, %if.then60.cond.false85_crit_edge
  %arrayidx87 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %41 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx87, align 8
  %arrayidx89 = getelementptr i32, ptr %42, i32 2
  %43 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx89, align 4
  %add90 = add i32 %44, 254
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add90, i32 noundef %or, i32 noundef 0) #8
  br label %if.end125

if.else92:                                        ; preds = %if.then56
  br i1 %tobool64.not, label %if.else92.cond.false118_crit_edge, label %land.lhs.true97

if.else92.cond.false118_crit_edge:                ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false118

land.lhs.true97:                                  ; preds = %if.else92
  %funcs100 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %45 = ptrtoint ptr %funcs100 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %funcs100, align 4
  %tobool101.not = icmp eq ptr %46, null
  br i1 %tobool101.not, label %land.lhs.true97.cond.false118_crit_edge, label %land.lhs.true102

land.lhs.true97.cond.false118_crit_edge:          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false118

land.lhs.true102:                                 ; preds = %land.lhs.true97
  %sriov_wreg106 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %sriov_wreg106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sriov_wreg106, align 4
  %tobool107.not = icmp eq ptr %48, null
  br i1 %tobool107.not, label %land.lhs.true102.cond.false118_crit_edge, label %cond.true108

land.lhs.true102.cond.false118_crit_edge:         ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false118

cond.true108:                                     ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx114 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %49 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx114, align 8
  %arrayidx116 = getelementptr i32, ptr %50, i32 2
  %51 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx116, align 4
  %add117 = add i32 %52, 253
  tail call void %48(ptr noundef %adev, i32 noundef %add117, i32 noundef %or, i32 noundef 0, i32 noundef 13) #8
  br label %if.end125

cond.false118:                                    ; preds = %land.lhs.true102.cond.false118_crit_edge, %land.lhs.true97.cond.false118_crit_edge, %if.else92.cond.false118_crit_edge
  %arrayidx120 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %53 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx120, align 8
  %arrayidx122 = getelementptr i32, ptr %54, i32 2
  %55 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx122, align 4
  %add123 = add i32 %56, 253
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add123, i32 noundef %or, i32 noundef 0) #8
  br label %if.end125

if.end125:                                        ; preds = %cond.false118, %cond.true108, %cond.false85, %cond.true75
  tail call void @amdgpu_ras_global_ras_isr(ptr noundef %adev) #8
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end.if.end126_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbio_v7_4_init_ras_controller_interrupt(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_controller_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 1
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 1, i32 2
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nbio_v7_4_ras_controller_irq_funcs, ptr %funcs, align 4
  %1 = ptrtoint ptr %ras_controller_irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %ras_controller_irq, align 4
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %adev, i32 noundef 3, i32 noundef 96, ptr noundef %ras_controller_irq) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbio_v7_4_init_ras_err_event_athub_interrupt(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_err_event_athub_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 2
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 2, i32 2
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nbio_v7_4_ras_err_event_athub_irq_funcs, ptr %funcs, align 8
  %1 = ptrtoint ptr %ras_err_event_athub_irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %ras_err_event_athub_irq, align 8
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %adev, i32 noundef 3, i32 noundef 97, ptr noundef %ras_err_event_athub_irq) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_query_ras_error_count(ptr noundef %adev, ptr nocapture noundef %ras_error_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp eq i32 %1, 25
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %. = select i1 %cmp, i32 330432544, i32 329383968
  %call2 = tail call i32 %3(ptr noundef %adev, i32 noundef %.) #8
  %and = and i32 %call2, 1
  %4 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %5)
  %cmp8 = icmp eq i32 %5, 25
  %.sink94 = select i1 %cmp8, i32 330432560, i32 329383984
  %pcie_rreg13 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %6 = ptrtoint ptr %pcie_rreg13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_rreg13, align 8
  %call14 = tail call i32 %7(ptr noundef %adev, i32 noundef %.sink94) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then16

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 1
  %8 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ce_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %ce_count, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %entry.if.end17_crit_edge
  %10 = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool18.not = icmp eq i32 %10, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ras_error_status, align 4
  %inc20 = add i32 %12, 1
  store i32 %inc20, ptr %ras_error_status, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %13 = and i32 %call2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.end21.if.end55_crit_edge, label %if.then26

if.end21.if.end55_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then26:                                        ; preds = %if.end21
  %pcie_rreg27 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %15 = ptrtoint ptr %pcie_rreg27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcie_rreg27, align 8
  %call28 = tail call i32 %16(ptr noundef %adev, i32 noundef 269717568) #8
  %17 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %18)
  %cmp30 = icmp eq i32 %18, 25
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %19 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcie_wreg, align 4
  %.98 = select i1 %cmp30, i32 330432544, i32 329383968
  tail call void %20(ptr noundef %adev, i32 noundef %.98, i32 noundef %call2) #8
  br i1 %tobool18.not, label %if.then26.if.end44_crit_edge, label %if.then36

if.then26.if.end44_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then36:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %22)
  %cmp38 = icmp eq i32 %22, 25
  %pcie_wreg40 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %23 = ptrtoint ptr %pcie_wreg40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcie_wreg40, align 4
  %.99 = select i1 %cmp38, i32 330432560, i32 329383984
  tail call void %24(ptr noundef %adev, i32 noundef %.99, i32 noundef %call14) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.then26.if.end44_crit_edge
  %25 = and i32 %call28, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool47.not = icmp eq i32 %25, 0
  br i1 %tobool47.not, label %if.end44.if.end55_crit_edge, label %if.then48

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg49 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %26 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %27(ptr noundef %adev, i32 noundef 269717568, i32 noundef %call28) #8
  %28 = ptrtoint ptr %pcie_rreg27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcie_rreg27, align 8
  %call51 = tail call i32 %29(ptr noundef %adev, i32 noundef 329318688) #8
  %or = or i32 %call51, 1
  %30 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %31(ptr noundef %adev, i32 noundef 329318688, i32 noundef %or) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %if.end44.if.end55_crit_edge, %if.end21.if.end55_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_nbio_ras_late_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_nbio_ras_fini(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nbio_v7_4_get_hdp_flush_req_offset(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr i32, ptr %1, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %3, 262
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nbio_v7_4_get_hdp_flush_done_offset(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr i32, ptr %1, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %3, 263
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nbio_v7_4_get_pcie_index_offset(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 14
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nbio_v7_4_get_pcie_data_offset(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 15
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbio_v7_4_get_rev_id(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp eq i32 %1, 25
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %11, 21
  %call = tail call i32 %7(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %15, 21
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.cond.false45_crit_edge, label %land.lhs.true23

if.else.cond.false45_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

land.lhs.true23:                                  ; preds = %if.else
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false45_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false45_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_rreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %sriov_rreg32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_rreg32, align 4
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false45_crit_edge, label %cond.true34

land.lhs.true28.cond.false45_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42 = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %23, 17
  %call44 = tail call i32 %19(ptr noundef %adev, i32 noundef %add43, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false45:                                     ; preds = %land.lhs.true28.cond.false45_crit_edge, %land.lhs.true23.cond.false45_crit_edge, %if.else.cond.false45_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %27, 17
  %call51 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.false45, %cond.true34, %cond.false, %cond.true
  %tmp.0 = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ], [ %call44, %cond.true34 ], [ %call51, %cond.false45 ]
  %and54 = lshr i32 %tmp.0, 24
  %shr = and i32 %and54, 15
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_mc_access_enable(ptr noundef %adev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
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
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx13 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %9, 255
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef 3, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr i32, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %13, 255
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add18, i32 noundef 3, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.cond.false44_crit_edge, label %land.lhs.true23

if.else.cond.false44_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44

land.lhs.true23:                                  ; preds = %if.else
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %14 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false44_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false44_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_wreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %sriov_wreg32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sriov_wreg32, align 4
  %tobool33.not = icmp eq ptr %17, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false44_crit_edge, label %cond.true34

land.lhs.true28.cond.false44_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %18 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42 = getelementptr i32, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %21, 255
  tail call void %17(ptr noundef %adev, i32 noundef %add43, i32 noundef 0, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false44:                                     ; preds = %land.lhs.true28.cond.false44_crit_edge, %land.lhs.true23.cond.false44_crit_edge, %if.else.cond.false44_crit_edge
  %arrayidx46 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %22 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx46, align 8
  %arrayidx48 = getelementptr i32, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %25, 255
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add49, i32 noundef 0, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.false44, %cond.true34, %cond.false, %cond.true
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbio_v7_4_get_memsize(ptr noundef %adev) #0 align 64 {
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
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 195
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %13, 195
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_sdma_doorbell_range(ptr noundef %adev, i32 noundef %instance, i1 noundef zeroext %use_doorbell, i32 noundef %doorbell_index, i32 noundef %doorbell_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %instance)
  %cmp = icmp slt i32 %instance, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr i32, ptr %1, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %add = add nsw i32 %instance, 464
  %add3 = add i32 %add, %3
  br label %if.end23

if.else:                                          ; preds = %entry
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %4 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %5)
  %cmp4 = icmp eq i32 %5, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %instance)
  %cmp5 = icmp eq i32 %instance, 4
  %or.cond = and i1 %cmp5, %cmp4
  %arrayidx10 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  br i1 %or.cond, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add14 = add i32 %9, 473
  br label %if.end23

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add21 = add nuw i32 %instance, 468
  %add22 = add i32 %add21, %9
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %if.then6, %if.then
  %reg.0 = phi i32 [ %add3, %if.then ], [ %add14, %if.then6 ], [ %add22, %if.else15 ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg.0, i32 noundef 0) #8
  br i1 %use_doorbell, label %if.then24, label %if.else30

if.then24:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %call, -2035709
  %shl = shl i32 %doorbell_index, 2
  %and25 = and i32 %shl, 4092
  %shl27 = shl i32 %doorbell_size, 16
  %and28 = and i32 %shl27, 2031616
  %or = or i32 %and28, %and25
  %or29 = or i32 %or, %and
  br label %if.end33

if.else30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %and31 = and i32 %call, -2031617
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then24
  %doorbell_range.0 = phi i32 [ %or29, %if.then24 ], [ %and31, %if.else30 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %reg.0, i32 noundef %doorbell_range.0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_vcn_doorbell_range(ptr noundef %adev, i1 noundef zeroext %use_doorbell, i32 noundef %doorbell_index, i32 noundef %instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %instance)
  %tobool.not = icmp eq i32 %instance, 0
  br i1 %tobool.not, label %if.else9, label %if.then

if.then:                                          ; preds = %entry
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp eq i32 %1, 25
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %arrayidx3 = getelementptr i32, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %5, 472
  br label %if.end15

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add8 = add i32 %5, 476
  br label %if.end15

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 8
  %arrayidx13 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  %add14 = add i32 %9, 467
  br label %if.end15

if.end15:                                         ; preds = %if.else9, %if.else, %if.then1
  %reg.0 = phi i32 [ %add, %if.then1 ], [ %add8, %if.else ], [ %add14, %if.else9 ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %reg.0, i32 noundef 0) #8
  br i1 %use_doorbell, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %call, -2035709
  %shl = shl i32 %doorbell_index, 2
  %and18 = and i32 %shl, 4092
  %or = or i32 %and18, %and
  %or20 = or i32 %or, 524288
  br label %if.end24

if.else21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %and22 = and i32 %call, -2031617
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then17
  %doorbell_range.0 = phi i32 [ %or20, %if.then17 ], [ %and22, %if.else21 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %reg.0, i32 noundef %doorbell_range.0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_enable_doorbell_aperture(ptr noundef %adev, i1 noundef zeroext %enable) #0 align 64 {
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
  br i1 %tobool.not, label %entry.cond.false78.sink.split_crit_edge, label %land.lhs.true

entry.cond.false78.sink.split_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false78.sink.split

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false78.sink.split_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false78.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false78.sink.split

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true56, label %cond.true

cond.true:                                        ; preds = %land.lhs.true2
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 192
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_rreg, align 4
  %tobool26.not = icmp eq ptr %11, null
  br i1 %tobool26.not, label %cond.false, label %cond.true27

cond.true27:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %11(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true27
  %cond = phi i32 [ %call, %cond.true27 ], [ %call42, %cond.false ]
  %and43 = and i32 %cond, -2
  %cond45 = zext i1 %enable to i32
  %or = or i32 %and43, %cond45
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %or, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end92

land.lhs.true56:                                  ; preds = %land.lhs.true2
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load ptr, ptr %funcs, align 4
  %arrayidx48121 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %13 = ptrtoint ptr %arrayidx48121 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx48121, align 8
  %arrayidx50122 = getelementptr i32, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx50122 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx50122, align 4
  %add51123 = add i32 %16, 192
  %tobool60.not = icmp eq ptr %.pr, null
  br i1 %tobool60.not, label %land.lhs.true56.cond.false78_crit_edge, label %land.lhs.true61

land.lhs.true56.cond.false78_crit_edge:           ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false78

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %sriov_rreg65 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %17 = ptrtoint ptr %sriov_rreg65 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sriov_rreg65, align 4
  %tobool66.not = icmp eq ptr %18, null
  br i1 %tobool66.not, label %land.lhs.true61.cond.false78_crit_edge, label %cond.true67

land.lhs.true61.cond.false78_crit_edge:           ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false78

cond.true67:                                      ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  %call77 = tail call i32 %18(ptr noundef %adev, i32 noundef %add51123, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end85

cond.false78.sink.split:                          ; preds = %land.lhs.true.cond.false78.sink.split_crit_edge, %entry.cond.false78.sink.split_crit_edge
  %arrayidx48121127 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %19 = ptrtoint ptr %arrayidx48121127 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx48121127, align 8
  %arrayidx50122128 = getelementptr i32, ptr %20, i32 2
  %21 = ptrtoint ptr %arrayidx50122128 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx50122128, align 4
  %add51123129 = add i32 %22, 192
  br label %cond.false78

cond.false78:                                     ; preds = %cond.false78.sink.split, %land.lhs.true61.cond.false78_crit_edge, %land.lhs.true56.cond.false78_crit_edge
  %add51126 = phi i32 [ %add51123, %land.lhs.true61.cond.false78_crit_edge ], [ %add51123, %land.lhs.true56.cond.false78_crit_edge ], [ %add51123129, %cond.false78.sink.split ]
  %call84 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add51126, i32 noundef 0) #8
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false78, %cond.true67
  %add51124 = phi i32 [ %add51123, %cond.true67 ], [ %add51126, %cond.false78 ]
  %cond86 = phi i32 [ %call77, %cond.true67 ], [ %call84, %cond.false78 ]
  %and87 = and i32 %cond86, -2
  %cond89 = zext i1 %enable to i32
  %or91 = or i32 %and87, %cond89
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add51124, i32 noundef %or91, i32 noundef 0) #8
  br label %cond.end92

cond.end92:                                       ; preds = %cond.end85, %cond.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_enable_doorbell_selfring_aperture(ptr noundef %adev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and7 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true10

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true10:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %land.lhs.true10.cond.false_crit_edge, label %cond.true

land.lhs.true10.cond.false_crit_edge:             ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx20 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx20, align 4
  %add = add i32 %9, 244
  %doorbell = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 60
  %10 = ptrtoint ptr %doorbell to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %doorbell, align 4
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %11, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true10.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx23 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx23, align 8
  %arrayidx25 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx25, align 4
  %add26 = add i32 %15, 244
  %doorbell27 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 60
  %16 = ptrtoint ptr %doorbell27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %doorbell27, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add26, i32 noundef %17, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and32 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %cond.end.cond.false58_crit_edge, label %land.lhs.true34

cond.end.cond.false58_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false58

land.lhs.true34:                                  ; preds = %cond.end
  %funcs37 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs37, align 4
  %tobool38.not = icmp eq ptr %21, null
  br i1 %tobool38.not, label %land.lhs.true34.cond.false58_crit_edge, label %land.lhs.true39

land.lhs.true34.cond.false58_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false58

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %sriov_wreg43 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg43, align 4
  %tobool44.not = icmp eq ptr %23, null
  br i1 %tobool44.not, label %land.lhs.true39.cond.false58_crit_edge, label %cond.true45

land.lhs.true39.cond.false58_crit_edge:           ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false58

cond.true45:                                      ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %24 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx53, align 4
  %add54 = add i32 %27, 243
  tail call void %23(ptr noundef %adev, i32 noundef %add54, i32 noundef 0, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false58:                                     ; preds = %land.lhs.true39.cond.false58_crit_edge, %land.lhs.true34.cond.false58_crit_edge, %cond.end.cond.false58_crit_edge
  %arrayidx60 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %28 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx60, align 8
  %arrayidx62 = getelementptr i32, ptr %29, i32 2
  %30 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx62, align 4
  %add63 = add i32 %31, 243
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add63, i32 noundef 0, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.false58, %cond.true45, %entry.if.end_crit_edge
  %tmp.0 = phi i32 [ 3, %cond.true45 ], [ 3, %cond.false58 ], [ 0, %entry.if.end_crit_edge ]
  %virt69 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %32 = ptrtoint ptr %virt69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %virt69, align 8
  %and71 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end.cond.false94_crit_edge, label %land.lhs.true73

if.end.cond.false94_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false94

land.lhs.true73:                                  ; preds = %if.end
  %funcs76 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %34 = ptrtoint ptr %funcs76 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs76, align 4
  %tobool77.not = icmp eq ptr %35, null
  br i1 %tobool77.not, label %land.lhs.true73.cond.false94_crit_edge, label %land.lhs.true78

land.lhs.true73.cond.false94_crit_edge:           ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false94

land.lhs.true78:                                  ; preds = %land.lhs.true73
  %sriov_wreg82 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sriov_wreg82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_wreg82, align 4
  %tobool83.not = icmp eq ptr %37, null
  br i1 %tobool83.not, label %land.lhs.true78.cond.false94_crit_edge, label %cond.true84

land.lhs.true78.cond.false94_crit_edge:           ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false94

cond.true84:                                      ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx90 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %38 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx90, align 8
  %arrayidx92 = getelementptr i32, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx92, align 4
  %add93 = add i32 %41, 245
  tail call void %37(ptr noundef %adev, i32 noundef %add93, i32 noundef %tmp.0, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end100

cond.false94:                                     ; preds = %land.lhs.true78.cond.false94_crit_edge, %land.lhs.true73.cond.false94_crit_edge, %if.end.cond.false94_crit_edge
  %arrayidx96 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %42 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx96, align 8
  %arrayidx98 = getelementptr i32, ptr %43, i32 2
  %44 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx98, align 4
  %add99 = add i32 %45, 245
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add99, i32 noundef %tmp.0, i32 noundef 0) #8
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false94, %cond.true84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_ih_doorbell_range(ptr noundef %adev, i1 noundef zeroext %use_doorbell, i32 noundef %doorbell_index) #0 align 64 {
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
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 466
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %13, 466
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  br i1 %use_doorbell, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %and20 = and i32 %cond, -2035709
  %shl = shl i32 %doorbell_index, 2
  %and21 = and i32 %shl, 4092
  %or = or i32 %and21, %and20
  %or23 = or i32 %or, 262144
  br label %if.end

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %and24 = and i32 %cond, -2031617
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ih_doorbell_range.0 = phi i32 [ %or23, %if.then ], [ %and24, %if.else ]
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and28 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end.cond.false50_crit_edge, label %land.lhs.true30

if.end.cond.false50_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false50

land.lhs.true30:                                  ; preds = %if.end
  %funcs33 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs33, align 4
  %tobool34.not = icmp eq ptr %17, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false50_crit_edge, label %land.lhs.true35

land.lhs.true30.cond.false50_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false50

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool39.not = icmp eq ptr %19, null
  br i1 %tobool39.not, label %land.lhs.true35.cond.false50_crit_edge, label %cond.true40

land.lhs.true35.cond.false50_crit_edge:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false50

cond.true40:                                      ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx46 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %20 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx46, align 8
  %arrayidx48 = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %23, 466
  tail call void %19(ptr noundef %adev, i32 noundef %add49, i32 noundef %ih_doorbell_range.0, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end56

cond.false50:                                     ; preds = %land.lhs.true35.cond.false50_crit_edge, %land.lhs.true30.cond.false50_crit_edge, %if.end.cond.false50_crit_edge
  %arrayidx52 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx52, align 8
  %arrayidx54 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx54, align 4
  %add55 = add i32 %27, 466
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add55, i32 noundef %ih_doorbell_range.0, i32 noundef 0) #8
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false50, %cond.true40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_enable_doorbell_interrupt(ptr noundef %adev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp eq i32 %1, 25
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cond.false78.sink.split_crit_edge, label %land.lhs.true

if.then.cond.false78.sink.split_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false78.sink.split

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false78.sink.split_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false78.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false78.sink.split

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true56, label %cond.true

cond.true:                                        ; preds = %land.lhs.true2
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %11, 254
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %12 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sriov_rreg, align 4
  %tobool26.not = icmp eq ptr %13, null
  br i1 %tobool26.not, label %cond.false, label %cond.true27

cond.true27:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %13(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true27
  %cond = phi i32 [ %call, %cond.true27 ], [ %call42, %cond.false ]
  %and43 = and i32 %cond, -16777217
  %shl = select i1 %enable, i32 0, i32 16777216
  %or = or i32 %and43, %shl
  tail call void %7(ptr noundef %adev, i32 noundef %add, i32 noundef %or, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

land.lhs.true56:                                  ; preds = %land.lhs.true2
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %funcs, align 4
  %arrayidx48265 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %15 = ptrtoint ptr %arrayidx48265 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx48265, align 8
  %arrayidx50266 = getelementptr i32, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx50266 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx50266, align 4
  %add51267 = add i32 %18, 254
  %tobool60.not = icmp eq ptr %.pr, null
  br i1 %tobool60.not, label %land.lhs.true56.cond.false78_crit_edge, label %land.lhs.true61

land.lhs.true56.cond.false78_crit_edge:           ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false78

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %sriov_rreg65 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %19 = ptrtoint ptr %sriov_rreg65 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sriov_rreg65, align 4
  %tobool66.not = icmp eq ptr %20, null
  br i1 %tobool66.not, label %land.lhs.true61.cond.false78_crit_edge, label %cond.true67

land.lhs.true61.cond.false78_crit_edge:           ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false78

cond.true67:                                      ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  %call77 = tail call i32 %20(ptr noundef %adev, i32 noundef %add51267, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end85

cond.false78.sink.split:                          ; preds = %land.lhs.true.cond.false78.sink.split_crit_edge, %if.then.cond.false78.sink.split_crit_edge
  %arrayidx48265277 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %21 = ptrtoint ptr %arrayidx48265277 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx48265277, align 8
  %arrayidx50266278 = getelementptr i32, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx50266278 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx50266278, align 4
  %add51267279 = add i32 %24, 254
  br label %cond.false78

cond.false78:                                     ; preds = %cond.false78.sink.split, %land.lhs.true61.cond.false78_crit_edge, %land.lhs.true56.cond.false78_crit_edge
  %add51270 = phi i32 [ %add51267, %land.lhs.true61.cond.false78_crit_edge ], [ %add51267, %land.lhs.true56.cond.false78_crit_edge ], [ %add51267279, %cond.false78.sink.split ]
  %call84 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add51270, i32 noundef 0) #8
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false78, %cond.true67
  %add51268 = phi i32 [ %add51267, %cond.true67 ], [ %add51270, %cond.false78 ]
  %cond86 = phi i32 [ %call77, %cond.true67 ], [ %call84, %cond.false78 ]
  %and87 = and i32 %cond86, -16777217
  %shl90 = select i1 %enable, i32 0, i32 16777216
  %or91 = or i32 %and87, %shl90
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add51268, i32 noundef %or91, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.cond.false190.sink.split_crit_edge, label %land.lhs.true97

if.else.cond.false190.sink.split_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false190.sink.split

land.lhs.true97:                                  ; preds = %if.else
  %funcs100 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %25 = ptrtoint ptr %funcs100 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs100, align 4
  %tobool101.not = icmp eq ptr %26, null
  br i1 %tobool101.not, label %land.lhs.true97.cond.false190.sink.split_crit_edge, label %land.lhs.true102

land.lhs.true97.cond.false190.sink.split_crit_edge: ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false190.sink.split

land.lhs.true102:                                 ; preds = %land.lhs.true97
  %sriov_wreg106 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %sriov_wreg106 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sriov_wreg106, align 4
  %tobool107.not = icmp eq ptr %28, null
  br i1 %tobool107.not, label %land.lhs.true168, label %cond.true108

cond.true108:                                     ; preds = %land.lhs.true102
  %arrayidx114 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %29 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx114, align 8
  %arrayidx116 = getelementptr i32, ptr %30, i32 2
  %31 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx116, align 4
  %add117 = add i32 %32, 253
  %sriov_rreg131 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %26, i32 0, i32 13
  %33 = ptrtoint ptr %sriov_rreg131 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sriov_rreg131, align 4
  %tobool132.not = icmp eq ptr %34, null
  br i1 %tobool132.not, label %cond.false144, label %cond.true133

cond.true133:                                     ; preds = %cond.true108
  call void @__sanitizer_cov_trace_pc() #10
  %call143 = tail call i32 %34(ptr noundef %adev, i32 noundef %add117, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end151

cond.false144:                                    ; preds = %cond.true108
  call void @__sanitizer_cov_trace_pc() #10
  %call150 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add117, i32 noundef 0) #8
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false144, %cond.true133
  %cond152 = phi i32 [ %call143, %cond.true133 ], [ %call150, %cond.false144 ]
  %and153 = and i32 %cond152, -16777217
  %shl156 = select i1 %enable, i32 0, i32 16777216
  %or157 = or i32 %and153, %shl156
  tail call void %28(ptr noundef %adev, i32 noundef %add117, i32 noundef %or157, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

land.lhs.true168:                                 ; preds = %land.lhs.true102
  %35 = ptrtoint ptr %funcs100 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr281 = load ptr, ptr %funcs100, align 4
  %arrayidx160271 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %36 = ptrtoint ptr %arrayidx160271 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx160271, align 8
  %arrayidx162272 = getelementptr i32, ptr %37, i32 2
  %38 = ptrtoint ptr %arrayidx162272 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx162272, align 4
  %add163273 = add i32 %39, 253
  %tobool172.not = icmp eq ptr %.pr281, null
  br i1 %tobool172.not, label %land.lhs.true168.cond.false190_crit_edge, label %land.lhs.true173

land.lhs.true168.cond.false190_crit_edge:         ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false190

land.lhs.true173:                                 ; preds = %land.lhs.true168
  %sriov_rreg177 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr281, i32 0, i32 13
  %40 = ptrtoint ptr %sriov_rreg177 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_rreg177, align 4
  %tobool178.not = icmp eq ptr %41, null
  br i1 %tobool178.not, label %land.lhs.true173.cond.false190_crit_edge, label %cond.true179

land.lhs.true173.cond.false190_crit_edge:         ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false190

cond.true179:                                     ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #10
  %call189 = tail call i32 %41(ptr noundef %adev, i32 noundef %add163273, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end197

cond.false190.sink.split:                         ; preds = %land.lhs.true97.cond.false190.sink.split_crit_edge, %if.else.cond.false190.sink.split_crit_edge
  %arrayidx160271282 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %42 = ptrtoint ptr %arrayidx160271282 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx160271282, align 8
  %arrayidx162272283 = getelementptr i32, ptr %43, i32 2
  %44 = ptrtoint ptr %arrayidx162272283 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx162272283, align 4
  %add163273284 = add i32 %45, 253
  br label %cond.false190

cond.false190:                                    ; preds = %cond.false190.sink.split, %land.lhs.true173.cond.false190_crit_edge, %land.lhs.true168.cond.false190_crit_edge
  %add163276 = phi i32 [ %add163273, %land.lhs.true173.cond.false190_crit_edge ], [ %add163273, %land.lhs.true168.cond.false190_crit_edge ], [ %add163273284, %cond.false190.sink.split ]
  %call196 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add163276, i32 noundef 0) #8
  br label %cond.end197

cond.end197:                                      ; preds = %cond.false190, %cond.true179
  %add163274 = phi i32 [ %add163273, %cond.true179 ], [ %add163276, %cond.false190 ]
  %cond198 = phi i32 [ %call189, %cond.true179 ], [ %call196, %cond.false190 ]
  %and199 = and i32 %cond198, -16777217
  %shl202 = select i1 %enable, i32 0, i32 16777216
  %or203 = or i32 %and199, %shl202
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add163274, i32 noundef %or203, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.end197, %cond.end151, %cond.end85, %cond.end
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nbio_v7_4_update_medium_grain_clock_gating(ptr nocapture noundef %adev, i1 noundef zeroext %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_update_medium_grain_light_sleep(ptr noundef %adev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 286785648) #8
  br i1 %enable, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %2 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cg_flags, align 8
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %call, 851968
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %and2 = and i32 %call, -851969
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %data.0 = phi i32 [ %or, %if.then ], [ %and2, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %data.0)
  %cmp.not = icmp eq i32 %call, %data.0
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 286785648, i32 noundef %data.0) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_get_clockgating_state(ptr noundef %adev, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 286786656) #8
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 524288
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_rreg, align 8
  %call2 = tail call i32 %5(ptr noundef %adev, i32 noundef 286785648) #8
  %and3 = and i32 %call2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or6 = or i32 %7, 4096
  store i32 %or6, ptr %flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_ih_control(ptr noundef %adev) #0 align 64 {
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
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 242
  %dummy_page_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %10 = ptrtoint ptr %dummy_page_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dummy_page_addr, align 8
  %shr = lshr i32 %11, 8
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %shr, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %15, 242
  %dummy_page_addr18 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %16 = ptrtoint ptr %dummy_page_addr18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dummy_page_addr18, align 8
  %shr19 = lshr i32 %17, 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17, i32 noundef %shr19, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and22 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %cond.end.cond.false44_crit_edge, label %land.lhs.true24

cond.end.cond.false44_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44

land.lhs.true24:                                  ; preds = %cond.end
  %funcs27 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs27, align 4
  %tobool28.not = icmp eq ptr %21, null
  br i1 %tobool28.not, label %land.lhs.true24.cond.false44_crit_edge, label %land.lhs.true29

land.lhs.true24.cond.false44_crit_edge:           ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_rreg, align 4
  %tobool33.not = icmp eq ptr %23, null
  br i1 %tobool33.not, label %land.lhs.true29.cond.false44_crit_edge, label %cond.true34

land.lhs.true29.cond.false44_crit_edge:           ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44

cond.true34:                                      ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %27, 241
  %call = tail call i32 %23(ptr noundef %adev, i32 noundef %add43, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end51

cond.false44:                                     ; preds = %land.lhs.true29.cond.false44_crit_edge, %land.lhs.true24.cond.false44_crit_edge, %cond.end.cond.false44_crit_edge
  %arrayidx46 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx46, align 8
  %arrayidx48 = getelementptr i32, ptr %29, i32 2
  %30 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %31, 241
  %call50 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add49, i32 noundef 0) #8
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false44, %cond.true34
  %cond = phi i32 [ %call, %cond.true34 ], [ %call50, %cond.false44 ]
  %and53 = and i32 %cond, -10
  %32 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %virt, align 8
  %and57 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %cond.end51.cond.false80_crit_edge, label %land.lhs.true59

cond.end51.cond.false80_crit_edge:                ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false80

land.lhs.true59:                                  ; preds = %cond.end51
  %funcs62 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %34 = ptrtoint ptr %funcs62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs62, align 4
  %tobool63.not = icmp eq ptr %35, null
  br i1 %tobool63.not, label %land.lhs.true59.cond.false80_crit_edge, label %land.lhs.true64

land.lhs.true59.cond.false80_crit_edge:           ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false80

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %sriov_wreg68 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sriov_wreg68 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_wreg68, align 4
  %tobool69.not = icmp eq ptr %37, null
  br i1 %tobool69.not, label %land.lhs.true64.cond.false80_crit_edge, label %cond.true70

land.lhs.true64.cond.false80_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false80

cond.true70:                                      ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx76 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %38 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx76, align 8
  %arrayidx78 = getelementptr i32, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx78, align 4
  %add79 = add i32 %41, 241
  tail call void %37(ptr noundef %adev, i32 noundef %add79, i32 noundef %and53, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end86

cond.false80:                                     ; preds = %land.lhs.true64.cond.false80_crit_edge, %land.lhs.true59.cond.false80_crit_edge, %cond.end51.cond.false80_crit_edge
  %arrayidx82 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %42 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx82, align 8
  %arrayidx84 = getelementptr i32, ptr %43, i32 2
  %44 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx84, align 4
  %add85 = add i32 %45, 241
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add85, i32 noundef %and53, i32 noundef 0) #8
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false80, %cond.true70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nbio_v7_4_init_registers(ptr nocapture noundef %adev) #4 align 64 {
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr i32, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %add = shl i32 %5, 2
  %shl = add i32 %add, 988
  %rmmio_remap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 34
  %6 = ptrtoint ptr %rmmio_remap to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %rmmio_remap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_remap_hdp_registers(ptr noundef %adev) #0 align 64 {
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
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 301
  %rmmio_remap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 34
  %10 = ptrtoint ptr %rmmio_remap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmmio_remap, align 8
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %11, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx16, align 8
  %arrayidx18 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %15, 301
  %rmmio_remap20 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 34
  %16 = ptrtoint ptr %rmmio_remap20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmmio_remap20, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add19, i32 noundef %17, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and25 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %cond.end.cond.false51_crit_edge, label %land.lhs.true27

cond.end.cond.false51_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false51

land.lhs.true27:                                  ; preds = %cond.end
  %funcs30 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs30, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %land.lhs.true27.cond.false51_crit_edge, label %land.lhs.true32

land.lhs.true27.cond.false51_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false51

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %sriov_wreg36 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg36, align 4
  %tobool37.not = icmp eq ptr %23, null
  br i1 %tobool37.not, label %land.lhs.true32.cond.false51_crit_edge, label %cond.true38

land.lhs.true32.cond.false51_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false51

cond.true38:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %27, 302
  %rmmio_remap48 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 34
  %28 = ptrtoint ptr %rmmio_remap48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rmmio_remap48, align 8
  %add50 = add i32 %29, 4
  tail call void %23(ptr noundef %adev, i32 noundef %add47, i32 noundef %add50, i32 noundef 0, i32 noundef 13) #8
  br label %cond.end60

cond.false51:                                     ; preds = %land.lhs.true32.cond.false51_crit_edge, %land.lhs.true27.cond.false51_crit_edge, %cond.end.cond.false51_crit_edge
  %arrayidx53 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %30 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx53, align 8
  %arrayidx55 = getelementptr i32, ptr %31, i32 2
  %32 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx55, align 4
  %add56 = add i32 %33, 302
  %rmmio_remap57 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 34
  %34 = ptrtoint ptr %rmmio_remap57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rmmio_remap57, align 8
  %add59 = add i32 %35, 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add56, i32 noundef %add59, i32 noundef 0) #8
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false51, %cond.true38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v7_4_program_aspm(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 459780, i32 %1)
  %cmp = icmp eq i32 %1, 459780
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %3(ptr noundef %adev, i32 noundef 286524032) #8
  %and2 = and i32 %call, -130817
  %or = or i32 %and2, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %or)
  %cmp3.not = icmp eq i32 %call, %or
  br i1 %cmp3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 286524032, i32 noundef %or) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_rreg, align 8
  %call7 = tail call i32 %7(ptr noundef %adev, i32 noundef 286524144) #8
  %or8 = or i32 %call7, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %or8)
  %cmp9.not = icmp eq i32 %call7, %or8
  br i1 %cmp9.not, label %if.end5.if.end12_crit_edge, label %if.then10

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg11 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %8 = ptrtoint ptr %pcie_wreg11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie_wreg11, align 4
  tail call void %9(ptr noundef %adev, i32 noundef 286524144, i32 noundef %or8) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5.if.end12_crit_edge
  %10 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie_rreg, align 8
  %call14 = tail call i32 %11(ptr noundef %adev, i32 noundef 269722140) #8
  %or15 = or i32 %call14, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %or15)
  %cmp16.not = icmp eq i32 %call14, %or15
  br i1 %cmp16.not, label %if.end12.if.end19_crit_edge, label %if.then17

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg18 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %12 = ptrtoint ptr %pcie_wreg18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_wreg18, align 4
  tail call void %13(ptr noundef %adev, i32 noundef 269722140, i32 noundef %or15) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end12.if.end19_crit_edge
  %14 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcie_rreg, align 8
  %call21 = tail call i32 %15(ptr noundef %adev, i32 noundef 286524116) #8
  %or22 = or i32 %call21, 8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %or22)
  %cmp23.not = icmp eq i32 %call21, %or22
  br i1 %cmp23.not, label %if.end19.if.end26_crit_edge, label %if.then24

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg25 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %16 = ptrtoint ptr %pcie_wreg25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcie_wreg25, align 4
  tail call void %17(ptr noundef %adev, i32 noundef 286524116, i32 noundef %or22) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end19.if.end26_crit_edge
  %18 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcie_rreg, align 8
  %call28 = tail call i32 %19(ptr noundef %adev, i32 noundef 269628556) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp31.not = icmp eq i32 %call28, 0
  br i1 %cmp31.not, label %if.end26.if.end34_crit_edge, label %if.then32

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg33 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %20 = ptrtoint ptr %pcie_wreg33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcie_wreg33, align 4
  tail call void %21(ptr noundef %adev, i32 noundef 269628556, i32 noundef 0) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end26.if.end34_crit_edge
  %22 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcie_rreg, align 8
  %call36 = tail call i32 %23(ptr noundef %adev, i32 noundef 269628564) #8
  %and37 = and i32 %call36, -65536
  call void @__sanitizer_cov_trace_cmp4(i32 %call36, i32 %and37)
  %cmp38.not = icmp eq i32 %call36, %and37
  br i1 %cmp38.not, label %if.end34.if.end41_crit_edge, label %if.then39

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg40 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %24 = ptrtoint ptr %pcie_wreg40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcie_wreg40, align 4
  tail call void %25(ptr noundef %adev, i32 noundef 269628564, i32 noundef %and37) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end34.if.end41_crit_edge
  %26 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcie_rreg, align 8
  %call43 = tail call i32 %27(ptr noundef %adev, i32 noundef 269746316) #8
  %and44 = and i32 %call43, -1025
  call void @__sanitizer_cov_trace_cmp4(i32 %call43, i32 %and44)
  %cmp45.not = icmp eq i32 %call43, %and44
  br i1 %cmp45.not, label %if.end41.if.end48_crit_edge, label %if.then46

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_wreg47 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %28 = ptrtoint ptr %pcie_wreg47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcie_wreg47, align 4
  tail call void %29(ptr noundef %adev, i32 noundef 269746316, i32 noundef %and44) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end41.if.end48_crit_edge
  %pcie_wreg49 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %30 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %31(ptr noundef %adev, i32 noundef 269746980, i32 noundef 268505089) #8
  %32 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcie_rreg, align 8
  %call51 = tail call i32 %33(ptr noundef %adev, i32 noundef 286524100) #8
  %or52 = and i32 %call51, -2490369
  %and53 = or i32 %or52, 393216
  call void @__sanitizer_cov_trace_cmp4(i32 %call51, i32 %and53)
  %cmp54.not = icmp eq i32 %call51, %and53
  br i1 %cmp54.not, label %if.end48.if.end57_crit_edge, label %if.then55

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %35(ptr noundef %adev, i32 noundef 286524100, i32 noundef %and53) #8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end48.if.end57_crit_edge
  %36 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcie_rreg, align 8
  %call59 = tail call i32 %37(ptr noundef %adev, i32 noundef 286524140) #8
  %or60 = or i32 %call59, -2145386496
  call void @__sanitizer_cov_trace_cmp4(i32 %call59, i32 %or60)
  %cmp61.not = icmp eq i32 %call59, %or60
  br i1 %cmp61.not, label %if.end57.if.end64_crit_edge, label %if.then62

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %39(ptr noundef %adev, i32 noundef 286524140, i32 noundef %or60) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end57.if.end64_crit_edge
  %40 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %41(ptr noundef %adev, i32 noundef 269628728, i32 noundef 30187) #8
  %42 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcie_rreg, align 8
  %call.i = tail call i32 %43(ptr noundef %adev, i32 noundef 269628552) #8
  %and.i = and i32 %call.i, -16385
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %and.i)
  %cmp.not.i = icmp eq i32 %call.i, %and.i
  br i1 %cmp.not.i, label %if.end64.if.end.i_crit_edge, label %if.then.i

if.end64.if.end.i_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %45(ptr noundef %adev, i32 noundef 269628552, i32 noundef %and.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end64.if.end.i_crit_edge
  %46 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcie_rreg, align 8
  %call3.i = tail call i32 %47(ptr noundef %adev, i32 noundef 269628728) #8
  %and4.i = and i32 %call3.i, -16385
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %and4.i)
  %cmp5.not.i = icmp eq i32 %call3.i, %and4.i
  br i1 %cmp5.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %49(ptr noundef %adev, i32 noundef 269628728, i32 noundef %and4.i) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i.if.end8.i_crit_edge
  %50 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcie_rreg, align 8
  %call10.i = tail call i32 %51(ptr noundef %adev, i32 noundef 269746316) #8
  %or.i = or i32 %call10.i, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i, i32 %or.i)
  %cmp11.not.i = icmp eq i32 %call10.i, %or.i
  br i1 %cmp11.not.i, label %if.end8.i.nbio_v7_4_program_ltr.exit_crit_edge, label %if.then12.i

if.end8.i.nbio_v7_4_program_ltr.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nbio_v7_4_program_ltr.exit

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %53(ptr noundef %adev, i32 noundef 269746316, i32 noundef %or.i) #8
  br label %nbio_v7_4_program_ltr.exit

nbio_v7_4_program_ltr.exit:                       ; preds = %if.then12.i, %if.end8.i.nbio_v7_4_program_ltr.exit_crit_edge
  %54 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pcie_rreg, align 8
  %call66 = tail call i32 %55(ptr noundef %adev, i32 noundef 269628556) #8
  %or68 = or i32 %call66, 1072608
  call void @__sanitizer_cov_trace_cmp4(i32 %call66, i32 %or68)
  %cmp69.not = icmp eq i32 %call66, %or68
  br i1 %cmp69.not, label %nbio_v7_4_program_ltr.exit.if.end72_crit_edge, label %if.then70

nbio_v7_4_program_ltr.exit.if.end72_crit_edge:    ; preds = %nbio_v7_4_program_ltr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %nbio_v7_4_program_ltr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %57(ptr noundef %adev, i32 noundef 269628556, i32 noundef %or68) #8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %nbio_v7_4_program_ltr.exit.if.end72_crit_edge
  %58 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcie_rreg, align 8
  %call74 = tail call i32 %59(ptr noundef %adev, i32 noundef 269628564) #8
  %or75 = or i32 %call74, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %call74, i32 %or75)
  %cmp76.not = icmp eq i32 %call74, %or75
  br i1 %cmp76.not, label %if.end72.if.end79_crit_edge, label %if.then77

if.end72.if.end79_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %61(ptr noundef %adev, i32 noundef 269628564, i32 noundef %or75) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end72.if.end79_crit_edge
  %62 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcie_rreg, align 8
  %call81 = tail call i32 %63(ptr noundef %adev, i32 noundef 286524032) #8
  %and82 = and i32 %call81, -106241
  %or84 = or i32 %and82, 102400
  call void @__sanitizer_cov_trace_cmp4(i32 %call81, i32 %or84)
  %cmp85.not = icmp eq i32 %call81, %or84
  br i1 %cmp85.not, label %if.end79.if.end88_crit_edge, label %if.then86

if.end79.if.end88_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then86:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %65(ptr noundef %adev, i32 noundef 286524032, i32 noundef %or84) #8
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end79.if.end88_crit_edge
  %66 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcie_rreg, align 8
  %call90 = tail call i32 %67(ptr noundef %adev, i32 noundef 286524116) #8
  %and91 = and i32 %call90, -8388609
  call void @__sanitizer_cov_trace_cmp4(i32 %call90, i32 %and91)
  %cmp92.not = icmp eq i32 %call90, %and91
  br i1 %cmp92.not, label %if.end88.cleanup_crit_edge, label %if.then93

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %pcie_wreg49 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcie_wreg49, align 4
  tail call void %69(ptr noundef %adev, i32 noundef 286524116, i32 noundef %and91) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %if.end88.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_ras_find_obj(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_ras_block_str(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ras_global_ras_isr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbio_v7_4_set_ras_controller_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp eq i32 %1, 25
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %11, 257
  %call = tail call i32 %7(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %15, 257
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.cond.false45_crit_edge, label %land.lhs.true23

if.else.cond.false45_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

land.lhs.true23:                                  ; preds = %if.else
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false45_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false45_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_rreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %sriov_rreg32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_rreg32, align 4
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false45_crit_edge, label %cond.true34

land.lhs.true28.cond.false45_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42 = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %23, 256
  %call44 = tail call i32 %19(ptr noundef %adev, i32 noundef %add43, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false45:                                     ; preds = %land.lhs.true28.cond.false45_crit_edge, %land.lhs.true23.cond.false45_crit_edge, %if.else.cond.false45_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %27, 256
  %call51 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.false45, %cond.true34, %cond.false, %cond.true
  %bif_intr_cntl.0 = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ], [ %call44, %cond.true34 ], [ %call51, %cond.false45 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp54 = icmp eq i32 %state, 1
  br i1 %cmp54, label %if.then55, label %if.end.if.end125_crit_edge

if.end.if.end125_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then55:                                        ; preds = %if.end
  %and56 = and i32 %bif_intr_cntl.0, -2
  %28 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %29)
  %cmp58 = icmp eq i32 %29, 25
  %virt60 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %30 = ptrtoint ptr %virt60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virt60, align 8
  %and62 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %cmp58, label %if.then59, label %if.else91

if.then59:                                        ; preds = %if.then55
  br i1 %tobool63.not, label %if.then59.cond.false84_crit_edge, label %land.lhs.true64

if.then59.cond.false84_crit_edge:                 ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false84

land.lhs.true64:                                  ; preds = %if.then59
  %funcs67 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %32 = ptrtoint ptr %funcs67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs67, align 4
  %tobool68.not = icmp eq ptr %33, null
  br i1 %tobool68.not, label %land.lhs.true64.cond.false84_crit_edge, label %land.lhs.true69

land.lhs.true64.cond.false84_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false84

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sriov_wreg, align 4
  %tobool73.not = icmp eq ptr %35, null
  br i1 %tobool73.not, label %land.lhs.true69.cond.false84_crit_edge, label %cond.true74

land.lhs.true69.cond.false84_crit_edge:           ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false84

cond.true74:                                      ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx80 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %36 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx80, align 8
  %arrayidx82 = getelementptr i32, ptr %37, i32 2
  %38 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx82, align 4
  %add83 = add i32 %39, 257
  tail call void %35(ptr noundef %adev, i32 noundef %add83, i32 noundef %and56, i32 noundef 0, i32 noundef 13) #8
  br label %if.end125

cond.false84:                                     ; preds = %land.lhs.true69.cond.false84_crit_edge, %land.lhs.true64.cond.false84_crit_edge, %if.then59.cond.false84_crit_edge
  %arrayidx86 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %40 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx86, align 8
  %arrayidx88 = getelementptr i32, ptr %41, i32 2
  %42 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx88, align 4
  %add89 = add i32 %43, 257
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add89, i32 noundef %and56, i32 noundef 0) #8
  br label %if.end125

if.else91:                                        ; preds = %if.then55
  br i1 %tobool63.not, label %if.else91.cond.false117_crit_edge, label %land.lhs.true96

if.else91.cond.false117_crit_edge:                ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false117

land.lhs.true96:                                  ; preds = %if.else91
  %funcs99 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %44 = ptrtoint ptr %funcs99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs99, align 4
  %tobool100.not = icmp eq ptr %45, null
  br i1 %tobool100.not, label %land.lhs.true96.cond.false117_crit_edge, label %land.lhs.true101

land.lhs.true96.cond.false117_crit_edge:          ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false117

land.lhs.true101:                                 ; preds = %land.lhs.true96
  %sriov_wreg105 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %sriov_wreg105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sriov_wreg105, align 4
  %tobool106.not = icmp eq ptr %47, null
  br i1 %tobool106.not, label %land.lhs.true101.cond.false117_crit_edge, label %cond.true107

land.lhs.true101.cond.false117_crit_edge:         ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false117

cond.true107:                                     ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx113 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %48 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115 = getelementptr i32, ptr %49, i32 2
  %50 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx115, align 4
  %add116 = add i32 %51, 256
  tail call void %47(ptr noundef %adev, i32 noundef %add116, i32 noundef %and56, i32 noundef 0, i32 noundef 13) #8
  br label %if.end125

cond.false117:                                    ; preds = %land.lhs.true101.cond.false117_crit_edge, %land.lhs.true96.cond.false117_crit_edge, %if.else91.cond.false117_crit_edge
  %arrayidx119 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %52 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx119, align 8
  %arrayidx121 = getelementptr i32, ptr %53, i32 2
  %54 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx121, align 4
  %add122 = add i32 %55, 256
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add122, i32 noundef %and56, i32 noundef 0) #8
  br label %if.end125

if.end125:                                        ; preds = %cond.false117, %cond.true107, %cond.false84, %cond.true74, %if.end.if.end125_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nbio_v7_4_process_ras_controller_irq(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readnone %entry1) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbio_v7_4_set_ras_err_event_athub_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp eq i32 %1, 25
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %11, 257
  %call = tail call i32 %7(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %15, 257
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.cond.false45_crit_edge, label %land.lhs.true23

if.else.cond.false45_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

land.lhs.true23:                                  ; preds = %if.else
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false45_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false45_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_rreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %sriov_rreg32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_rreg32, align 4
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false45_crit_edge, label %cond.true34

land.lhs.true28.cond.false45_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false45

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42 = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %23, 256
  %call44 = tail call i32 %19(ptr noundef %adev, i32 noundef %add43, i32 noundef 0, i32 noundef 13) #8
  br label %if.end

cond.false45:                                     ; preds = %land.lhs.true28.cond.false45_crit_edge, %land.lhs.true23.cond.false45_crit_edge, %if.else.cond.false45_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %27, 256
  %call51 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.false45, %cond.true34, %cond.false, %cond.true
  %bif_intr_cntl.0 = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ], [ %call44, %cond.true34 ], [ %call51, %cond.false45 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp54 = icmp eq i32 %state, 1
  br i1 %cmp54, label %if.then55, label %if.end.if.end125_crit_edge

if.end.if.end125_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then55:                                        ; preds = %if.end
  %and56 = and i32 %bif_intr_cntl.0, -2
  %28 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %29)
  %cmp58 = icmp eq i32 %29, 25
  %virt60 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %30 = ptrtoint ptr %virt60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virt60, align 8
  %and62 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %cmp58, label %if.then59, label %if.else91

if.then59:                                        ; preds = %if.then55
  br i1 %tobool63.not, label %if.then59.cond.false84_crit_edge, label %land.lhs.true64

if.then59.cond.false84_crit_edge:                 ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false84

land.lhs.true64:                                  ; preds = %if.then59
  %funcs67 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %32 = ptrtoint ptr %funcs67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs67, align 4
  %tobool68.not = icmp eq ptr %33, null
  br i1 %tobool68.not, label %land.lhs.true64.cond.false84_crit_edge, label %land.lhs.true69

land.lhs.true64.cond.false84_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false84

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sriov_wreg, align 4
  %tobool73.not = icmp eq ptr %35, null
  br i1 %tobool73.not, label %land.lhs.true69.cond.false84_crit_edge, label %cond.true74

land.lhs.true69.cond.false84_crit_edge:           ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false84

cond.true74:                                      ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx80 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %36 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx80, align 8
  %arrayidx82 = getelementptr i32, ptr %37, i32 2
  %38 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx82, align 4
  %add83 = add i32 %39, 257
  tail call void %35(ptr noundef %adev, i32 noundef %add83, i32 noundef %and56, i32 noundef 0, i32 noundef 13) #8
  br label %if.end125

cond.false84:                                     ; preds = %land.lhs.true69.cond.false84_crit_edge, %land.lhs.true64.cond.false84_crit_edge, %if.then59.cond.false84_crit_edge
  %arrayidx86 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %40 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx86, align 8
  %arrayidx88 = getelementptr i32, ptr %41, i32 2
  %42 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx88, align 4
  %add89 = add i32 %43, 257
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add89, i32 noundef %and56, i32 noundef 0) #8
  br label %if.end125

if.else91:                                        ; preds = %if.then55
  br i1 %tobool63.not, label %if.else91.cond.false117_crit_edge, label %land.lhs.true96

if.else91.cond.false117_crit_edge:                ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false117

land.lhs.true96:                                  ; preds = %if.else91
  %funcs99 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %44 = ptrtoint ptr %funcs99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs99, align 4
  %tobool100.not = icmp eq ptr %45, null
  br i1 %tobool100.not, label %land.lhs.true96.cond.false117_crit_edge, label %land.lhs.true101

land.lhs.true96.cond.false117_crit_edge:          ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false117

land.lhs.true101:                                 ; preds = %land.lhs.true96
  %sriov_wreg105 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %sriov_wreg105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sriov_wreg105, align 4
  %tobool106.not = icmp eq ptr %47, null
  br i1 %tobool106.not, label %land.lhs.true101.cond.false117_crit_edge, label %cond.true107

land.lhs.true101.cond.false117_crit_edge:         ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false117

cond.true107:                                     ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx113 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %48 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115 = getelementptr i32, ptr %49, i32 2
  %50 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx115, align 4
  %add116 = add i32 %51, 256
  tail call void %47(ptr noundef %adev, i32 noundef %add116, i32 noundef %and56, i32 noundef 0, i32 noundef 13) #8
  br label %if.end125

cond.false117:                                    ; preds = %land.lhs.true101.cond.false117_crit_edge, %land.lhs.true96.cond.false117_crit_edge, %if.else91.cond.false117_crit_edge
  %arrayidx119 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %52 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx119, align 8
  %arrayidx121 = getelementptr i32, ptr %53, i32 2
  %54 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx121, align 4
  %add122 = add i32 %55, 256
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add122, i32 noundef %and56, i32 noundef 0) #8
  br label %if.end125

if.end125:                                        ; preds = %cond.false117, %cond.true107, %cond.false84, %cond.true74, %if.end.if.end125_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nbio_v7_4_process_err_event_athub_irq(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readnone %entry1) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @nbio_v7_4_hdp_flush_reg, !1, !"nbio_v7_4_hdp_flush_reg", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c", i32 327, i32 33}
!2 = !{ptr @nbio_v7_4_hdp_flush_reg_ald, !3, !"nbio_v7_4_hdp_flush_reg_ald", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c", i32 342, i32 33}
!4 = !{ptr @nbio_v7_4_ras_funcs, !5, !"nbio_v7_4_ras_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c", i32 661, i32 36}
!6 = !{ptr @nbio_v7_4_funcs, !7, !"nbio_v7_4_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c", i32 779, i32 32}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c", i32 406, i32 5}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c", i32 413, i32 5}
!18 = !{ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c", i32 419, i32 3}
!22 = !{ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nbio_v7_4_handle_ras_controller_intr_no_bifring._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @nbio_v7_4_ras_controller_irq_funcs, !25, !"nbio_v7_4_ras_controller_irq_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c", i32 544, i32 42}
!26 = !{ptr @nbio_v7_4_ras_err_event_athub_irq_funcs, !27, !"nbio_v7_4_ras_err_event_athub_irq_funcs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v7_4.c", i32 549, i32 42}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
!38 = !{i64 2148480331}
!39 = !{i64 753342, i64 753366, i64 753387, i64 753404, i64 753421}
!40 = !{i64 2148480557}
