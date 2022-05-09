; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_cgs_device = type { %struct.cgs_device, ptr }
%struct.cgs_device = type { ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.gfx_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32 }
%struct.cgs_firmware_info = type { i16, i16, i16, i32, i64, i32, ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.smc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32 }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't allocate CGS device structure\0A\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_cgs_ops = internal constant { %struct.cgs_ops, [44 x i8] } { %struct.cgs_ops { ptr @amdgpu_cgs_read_register, ptr @amdgpu_cgs_write_register, ptr @amdgpu_cgs_read_ind_register, ptr @amdgpu_cgs_write_ind_register, ptr @amdgpu_cgs_get_firmware_info }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"audio endpt register access not implemented.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeon/tahiti_smc.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"radeon/pitcairn_k_smc.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"radeon/pitcairn_smc.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon/verde_k_smc.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon/verde_smc.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon/oland_k_smc.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon/oland_smc.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"radeon/hainan_k_smc.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"radeon/banks_k_2_smc.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeon/hainan_smc.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu/bonaire_k_smc.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu/bonaire_smc.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu/hawaii_k_smc.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/hawaii_smc.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu/topaz_k_smc.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu/topaz_smc.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu/tonga_k_smc.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu/tonga_smc.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu/fiji_smc.bin\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu/polaris11_k_smc.bin\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu/polaris11_k2_smc.bin\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu/polaris11_smc.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu/polaris11_smc_sk.bin\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu/polaris10_k_smc.bin\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu/polaris10_k2_smc.bin\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu/polaris10_smc.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu/polaris10_smc_sk.bin\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu/polaris12_k_smc.bin\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu/polaris12_smc.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu/vegam_smc.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu/vega10_acg_smc.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/vega10_smc.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/vega12_smc.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/vega20_smc.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SMC firmware not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to request firmware\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to load firmware \22%s\22\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Firmware type not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"firmware type %d do not have version\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.43 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.44 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12]
@__sancov_gen_cov_switch_values.45 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 10, i64 11, i64 12, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 26656, i64 26657]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 129, i64 131]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 131, i64 135]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 26659, i64 26667]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 129, i64 131]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 16, i64 26112, i64 26116, i64 26117, i64 26128]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 8, i64 129, i64 131, i64 195]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 16, i64 26208, i64 26211, i64 26213, i64 26215]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 26880, i64 26887]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 26936, i64 26937]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 26607, i64 26623]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 224, i64 229]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 8, i64 207, i64 239, i64 255]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 16, i64 26591, i64 28639]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 8, i64 227, i64 228, i64 229, i64 231, i64 239]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 8, i64 231, i64 239, i64 255]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 225, i64 247]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 27009, i64 27015]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 8, i64 192, i64 193, i64 195, i64 199]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 16]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 8, i64 192, i64 193, i64 195]
@__sancov_gen_cov_switch_values.69 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 11, i64 12]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 468, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"amdgpu_cgs_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 454, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 76, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 253, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 260, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 262, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 276, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 278, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 290, i32 22 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 292, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 304, i32 22 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 308, i32 22 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 310, i32 22 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 318, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 320, i32 22 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 326, i32 22 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 328, i32 22 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 338, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 340, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 346, i32 22 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 348, i32 22 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 351, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 357, i32 23 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 360, i32 23 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 362, i32 23 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 365, i32 22 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 372, i32 23 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 375, i32 23 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 377, i32 23 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 380, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 386, i32 22 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 388, i32 22 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 392, i32 21 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 399, i32 22 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 401, i32 22 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 404, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 407, i32 21 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 410, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 416, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 422, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 154, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 196, i32 4 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @.str, ptr @amdgpu_cgs_ops, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_cgs_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @amdgpu_cgs_create_device(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @amdgpu_cgs_ops, ptr %call7.i, align 8
  %adev1 = getelementptr inbounds %struct.amdgpu_cgs_device, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %adev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %adev, ptr %adev1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret ptr %call7.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_cgs_destroy_device(ptr noundef %cgs_device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cgs_device) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_cgs_read_register(ptr nocapture noundef readonly %cgs_device, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr inbounds %struct.amdgpu_cgs_device, ptr %cgs_device, i32 0, i32 1
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %offset, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_cgs_write_register(ptr nocapture noundef readonly %cgs_device, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr inbounds %struct.amdgpu_cgs_device, ptr %cgs_device, i32 0, i32 1
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %offset, i32 noundef %value, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_cgs_read_ind_register(ptr nocapture noundef readonly %cgs_device, i32 noundef %space, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr inbounds %struct.amdgpu_cgs_device, ptr %cgs_device, i32 0, i32 1
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  %2 = zext i32 %space to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %space, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
    i32 5, label %sw.bb10
    i32 6, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 39
  %3 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %4(ptr noundef %1, i32 noundef %index) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 36
  %5 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smc_rreg, align 4
  %call3 = tail call i32 %6(ptr noundef %1, i32 noundef %index) #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %uvd_ctx_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 46
  %7 = ptrtoint ptr %uvd_ctx_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uvd_ctx_rreg, align 4
  %call5 = tail call i32 %8(ptr noundef %1, i32 noundef %index) #5
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %didt_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 49
  %9 = ptrtoint ptr %didt_rreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %didt_rreg, align 8
  %call7 = tail call i32 %10(ptr noundef %1, i32 noundef %index) #5
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gc_cac_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 52
  %11 = ptrtoint ptr %gc_cac_rreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gc_cac_rreg, align 4
  %call9 = tail call i32 %12(ptr noundef %1, i32 noundef %index) #5
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %se_cac_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 55
  %13 = ptrtoint ptr %se_cac_rreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %se_cac_rreg, align 8
  %call11 = tail call i32 %14(ptr noundef %1, i32 noundef %index) #5
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #5, !srcloc !96
  unreachable

cleanup:                                          ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_cgs_write_ind_register(ptr nocapture noundef readonly %cgs_device, i32 noundef %space, i32 noundef %index, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr inbounds %struct.amdgpu_cgs_device, ptr %cgs_device, i32 0, i32 1
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  %2 = zext i32 %space to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %space, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 40
  %3 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie_wreg, align 4
  tail call void %4(ptr noundef %1, i32 noundef %index, i32 noundef %value) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 37
  %5 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smc_wreg, align 8
  tail call void %6(ptr noundef %1, i32 noundef %index, i32 noundef %value) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %uvd_ctx_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 47
  %7 = ptrtoint ptr %uvd_ctx_wreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uvd_ctx_wreg, align 8
  tail call void %8(ptr noundef %1, i32 noundef %index, i32 noundef %value) #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %didt_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 50
  %9 = ptrtoint ptr %didt_wreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %didt_wreg, align 4
  tail call void %10(ptr noundef %1, i32 noundef %index, i32 noundef %value) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gc_cac_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 53
  %11 = ptrtoint ptr %gc_cac_wreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gc_cac_wreg, align 8
  tail call void %12(ptr noundef %1, i32 noundef %index, i32 noundef %value) #5
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %se_cac_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 56
  %13 = ptrtoint ptr %se_cac_wreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %se_cac_wreg, align 4
  tail call void %14(ptr noundef %1, i32 noundef %index, i32 noundef %value) #5
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #5, !srcloc !97
  unreachable

cleanup:                                          ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_cgs_get_firmware_info(ptr nocapture noundef readonly %cgs_device, i32 noundef %type, ptr noundef writeonly %info) #0 align 64 {
entry:
  %fw_name = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr inbounds %struct.amdgpu_cgs_device, ptr %cgs_device, i32 0, i32 1
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %switch = icmp ult i32 %type, 2
  br i1 %switch, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %type, label %sw.default.i [
    i32 2, label %if.then.fw_type_convert.exit_crit_edge
    i32 3, label %sw.bb2.i
    i32 4, label %sw.bb3.i
    i32 5, label %sw.bb4.i
    i32 6, label %sw.bb5.i
    i32 7, label %if.then.sw.bb6.i_crit_edge
    i32 8, label %if.then.sw.bb6.i_crit_edge938
    i32 9, label %sw.bb7.i
    i32 11, label %sw.bb8.i
    i32 12, label %sw.bb9.i
  ]

if.then.sw.bb6.i_crit_edge938:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i

if.then.sw.bb6.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i

if.then.fw_type_convert.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %fw_type_convert.exit

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %fw_type_convert.exit

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %fw_type_convert.exit

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %fw_type_convert.exit

sw.bb5.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %fw_type_convert.exit

sw.bb6.i:                                         ; preds = %if.then.sw.bb6.i_crit_edge, %if.then.sw.bb6.i_crit_edge938
  br label %fw_type_convert.exit

sw.bb7.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp.i = icmp ugt i32 %4, 9
  %..i = select i1 %cmp.i, i32 11, i32 13
  br label %fw_type_convert.exit

sw.bb8.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %fw_type_convert.exit

sw.bb9.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %fw_type_convert.exit

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41) #5
  br label %fw_type_convert.exit

fw_type_convert.exit:                             ; preds = %sw.default.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %if.then.fw_type_convert.exit_crit_edge
  %result.0.i = phi i32 [ 35, %sw.default.i ], [ 23, %sw.bb9.i ], [ 22, %sw.bb8.i ], [ 11, %sw.bb6.i ], [ 10, %sw.bb5.i ], [ 9, %sw.bb4.i ], [ 8, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 0, %if.then.fw_type_convert.exit_crit_edge ], [ %..i, %sw.bb7.i ]
  %firmware = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 112
  %fw = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %result.0.i, i32 1
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 4
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %fw_type_convert.exit.cleanup730_crit_edge, label %if.end

fw_type_convert.exit.cleanup730_crit_edge:        ; preds = %fw_type_convert.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup730

if.end:                                           ; preds = %fw_type_convert.exit
  %mc_addr = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %result.0.i, i32 2
  %7 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %mc_addr, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %10, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cmp8 = icmp eq i32 %type, 8
  br i1 %cmp8, label %if.end.if.then10_crit_edge, label %lor.lhs.false

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %11 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ucode_size_bytes, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %type)
  %cmp9 = icmp eq i32 %type, 9
  br i1 %cmp9, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %14 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ucode_size_bytes, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %add = add i32 %16, 4095
  %and = and i32 %add, -4096
  %conv = zext i32 %and to i64
  %add13 = add i64 %8, %conv
  %jt_size = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %jt_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %jt_size, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %shl = shl i32 %19, 2
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %lor.lhs.false.if.end14_crit_edge
  %gpu_addr.0 = phi i64 [ %add13, %if.then10 ], [ %8, %lor.lhs.false.if.end14_crit_edge ]
  %data_size.0 = phi i32 [ %shl, %if.then10 ], [ %13, %lor.lhs.false.if.end14_crit_edge ]
  %kaddr = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %result.0.i, i32 3
  %20 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kaddr, align 8
  %kptr = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 6
  %22 = ptrtoint ptr %kptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %kptr, align 4
  %image_size = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 3
  %23 = ptrtoint ptr %image_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %data_size.0, ptr %image_size, align 8
  %mc_addr15 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 4
  %24 = ptrtoint ptr %mc_addr15 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %gpu_addr.0, ptr %mc_addr15, align 8
  %ucode_version = getelementptr inbounds %struct.common_firmware_header, ptr %10, i32 0, i32 6
  %25 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ucode_version, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %conv17 = trunc i32 %27 to i16
  %28 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv17, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cmp18 = icmp eq i32 %type, 7
  br i1 %cmp18, label %amdgpu_get_firmware_version.exit, label %if.end729.critedge883

amdgpu_get_firmware_version.exit:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %jt_offset = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %10, i32 0, i32 2
  %29 = ptrtoint ptr %jt_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %jt_offset, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %shl21 = shl i32 %31, 2
  %32 = ptrtoint ptr %image_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl21, ptr %image_size, align 8
  %33 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adev1, align 4
  %mec_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %34, i32 0, i32 106, i32 18
  %35 = ptrtoint ptr %mec_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mec_fw_version.i, align 8
  %conv19.i = trunc i32 %36 to i16
  %fw_version.c = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 1
  %37 = ptrtoint ptr %fw_version.c to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv19.i, ptr %fw_version.c, align 2
  %ucode_feature_version.c = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %10, i32 0, i32 1
  %38 = ptrtoint ptr %ucode_feature_version.c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ucode_feature_version.c, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %conv25.c = trunc i32 %40 to i16
  %feature_version.c = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 2
  %41 = ptrtoint ptr %feature_version.c to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv25.c, ptr %feature_version.c, align 4
  br label %cleanup730

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name) #5
  %42 = call ptr @memset(ptr %fw_name, i32 0, i32 30)
  %fw32 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 16
  %43 = ptrtoint ptr %fw32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw32, align 8
  %tobool.not = icmp eq ptr %44, null
  br i1 %tobool.not, label %if.then33, label %if.else.cleanup719_crit_edge

if.else.cleanup719_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup719

if.then33:                                        ; preds = %if.else
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %asic_type, align 8
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %46, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb35
    i32 2, label %sw.bb57
    i32 3, label %sw.bb119
    i32 4, label %sw.bb169
    i32 5, label %sw.bb236
    i32 8, label %sw.bb262
    i32 10, label %sw.bb276
    i32 11, label %sw.bb344
    i32 12, label %sw.bb376
    i32 16, label %sw.bb379
    i32 15, label %sw.bb457
    i32 17, label %sw.bb559
    i32 18, label %sw.bb621
    i32 19, label %sw.bb624
    i32 20, label %sw.bb655
    i32 21, label %sw.bb658
  ]

sw.bb:                                            ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %48 = call ptr @memcpy(ptr %fw_name, ptr @.str.4, i32 22)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.then33
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %52)
  %cmp37 = icmp eq i8 %52, -127
  br i1 %cmp37, label %land.lhs.true39, label %sw.bb35.if.else53_crit_edge

sw.bb35.if.else53_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else53

land.lhs.true39:                                  ; preds = %sw.bb35
  %device = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 8
  %53 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %device, align 2
  %55 = and i16 %54, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26640, i16 %55)
  %switch889 = icmp eq i16 %55, 26640
  br i1 %switch889, label %if.then50, label %land.lhs.true39.if.else53_crit_edge

land.lhs.true39.if.else53_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else53

if.then50:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  %is_kicker = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %56 = ptrtoint ptr %is_kicker to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %is_kicker, align 8
  %57 = call ptr @memcpy(ptr %fw_name, ptr @.str.5, i32 26)
  br label %sw.epilog

if.else53:                                        ; preds = %land.lhs.true39.if.else53_crit_edge, %sw.bb35.if.else53_crit_edge
  %58 = call ptr @memcpy(ptr %fw_name, ptr @.str.6, i32 24)
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.then33
  %pdev58 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev58, align 4
  %device59 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %device59 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %device59, align 2
  %63 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %62, label %sw.bb57.lor.lhs.false93_crit_edge [
    i16 26656, label %land.lhs.true63
    i16 26657, label %land.lhs.true81
  ]

sw.bb57.lor.lhs.false93_crit_edge:                ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false93

land.lhs.true63:                                  ; preds = %sw.bb57
  %revision65 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 12
  %64 = ptrtoint ptr %revision65 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %revision65, align 4
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %65, label %land.lhs.true63.lor.lhs.false93_crit_edge [
    i8 -127, label %land.lhs.true63.if.then111_crit_edge
    i8 -125, label %land.lhs.true63.if.then111_crit_edge939
  ]

land.lhs.true63.if.then111_crit_edge939:          ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111

land.lhs.true63.if.then111_crit_edge:             ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111

land.lhs.true63.lor.lhs.false93_crit_edge:        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false93

land.lhs.true81:                                  ; preds = %sw.bb57
  %revision83 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 12
  %67 = ptrtoint ptr %revision83 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %revision83, align 4
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %68, label %land.lhs.true81.lor.lhs.false93_crit_edge [
    i8 -125, label %land.lhs.true81.if.then111_crit_edge
    i8 -121, label %land.lhs.true81.if.then111_crit_edge940
  ]

land.lhs.true81.if.then111_crit_edge940:          ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111

land.lhs.true81.if.then111_crit_edge:             ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111

land.lhs.true81.lor.lhs.false93_crit_edge:        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %land.lhs.true81.lor.lhs.false93_crit_edge, %land.lhs.true63.lor.lhs.false93_crit_edge, %sw.bb57.lor.lhs.false93_crit_edge
  %revision95 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 12
  %70 = ptrtoint ptr %revision95 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %revision95, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %71)
  %cmp97 = icmp eq i8 %71, -121
  br i1 %cmp97, label %land.lhs.true99, label %lor.lhs.false93.if.else115_crit_edge

lor.lhs.false93.if.else115_crit_edge:             ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else115

land.lhs.true99:                                  ; preds = %lor.lhs.false93
  %72 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %62, label %land.lhs.true99.if.else115_crit_edge [
    i16 26659, label %land.lhs.true99.if.then111_crit_edge
    i16 26667, label %land.lhs.true99.if.then111_crit_edge941
  ]

land.lhs.true99.if.then111_crit_edge941:          ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111

land.lhs.true99.if.then111_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111

land.lhs.true99.if.else115_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else115

if.then111:                                       ; preds = %land.lhs.true99.if.then111_crit_edge, %land.lhs.true99.if.then111_crit_edge941, %land.lhs.true81.if.then111_crit_edge, %land.lhs.true81.if.then111_crit_edge940, %land.lhs.true63.if.then111_crit_edge, %land.lhs.true63.if.then111_crit_edge939
  %is_kicker112 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %73 = ptrtoint ptr %is_kicker112 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %is_kicker112, align 8
  %74 = call ptr @memcpy(ptr %fw_name, ptr @.str.7, i32 23)
  br label %sw.epilog

if.else115:                                       ; preds = %land.lhs.true99.if.else115_crit_edge, %lor.lhs.false93.if.else115_crit_edge
  %75 = call ptr @memcpy(ptr %fw_name, ptr @.str.8, i32 21)
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.then33
  %pdev120 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %76 = ptrtoint ptr %pdev120 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev120, align 4
  %revision121 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %revision121 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %revision121, align 4
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %79, label %sw.bb119.if.else165_crit_edge [
    i8 -127, label %land.lhs.true125
    i8 -125, label %land.lhs.true155
  ]

sw.bb119.if.else165_crit_edge:                    ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else165

land.lhs.true125:                                 ; preds = %sw.bb119
  %device127 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 8
  %81 = ptrtoint ptr %device127 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %device127, align 2
  %83 = zext i16 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %82, label %land.lhs.true125.if.else165_crit_edge [
    i16 26112, label %land.lhs.true125.if.then161_crit_edge
    i16 26116, label %land.lhs.true125.if.then161_crit_edge942
    i16 26117, label %land.lhs.true125.if.then161_crit_edge943
    i16 26128, label %land.lhs.true125.if.then161_crit_edge944
  ]

land.lhs.true125.if.then161_crit_edge944:         ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then161

land.lhs.true125.if.then161_crit_edge943:         ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then161

land.lhs.true125.if.then161_crit_edge942:         ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then161

land.lhs.true125.if.then161_crit_edge:            ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then161

land.lhs.true125.if.else165_crit_edge:            ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else165

land.lhs.true155:                                 ; preds = %sw.bb119
  %device157 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 8
  %84 = ptrtoint ptr %device157 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %device157, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26128, i16 %85)
  %cmp159 = icmp eq i16 %85, 26128
  br i1 %cmp159, label %land.lhs.true155.if.then161_crit_edge, label %land.lhs.true155.if.else165_crit_edge

land.lhs.true155.if.else165_crit_edge:            ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else165

land.lhs.true155.if.then161_crit_edge:            ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then161

if.then161:                                       ; preds = %land.lhs.true155.if.then161_crit_edge, %land.lhs.true125.if.then161_crit_edge, %land.lhs.true125.if.then161_crit_edge942, %land.lhs.true125.if.then161_crit_edge943, %land.lhs.true125.if.then161_crit_edge944
  %is_kicker162 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %86 = ptrtoint ptr %is_kicker162 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %is_kicker162, align 8
  %87 = call ptr @memcpy(ptr %fw_name, ptr @.str.9, i32 23)
  br label %sw.epilog

if.else165:                                       ; preds = %land.lhs.true155.if.else165_crit_edge, %land.lhs.true125.if.else165_crit_edge, %sw.bb119.if.else165_crit_edge
  %88 = call ptr @memcpy(ptr %fw_name, ptr @.str.10, i32 21)
  br label %sw.epilog

sw.bb169:                                         ; preds = %if.then33
  %pdev170 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %89 = ptrtoint ptr %pdev170 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev170, align 4
  %revision171 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 12
  %91 = ptrtoint ptr %revision171 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %revision171, align 4
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %92, label %sw.bb169.if.else231_crit_edge [
    i8 -127, label %land.lhs.true175
    i8 -125, label %land.lhs.true187
    i8 -61, label %land.lhs.true221
  ]

sw.bb169.if.else231_crit_edge:                    ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else231

land.lhs.true175:                                 ; preds = %sw.bb169
  %device177 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 8
  %94 = ptrtoint ptr %device177 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %device177, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26208, i16 %95)
  %cmp179 = icmp eq i16 %95, 26208
  br i1 %cmp179, label %land.lhs.true175.if.then211_crit_edge, label %land.lhs.true175.if.else231_crit_edge

land.lhs.true175.if.else231_crit_edge:            ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else231

land.lhs.true175.if.then211_crit_edge:            ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then211

land.lhs.true187:                                 ; preds = %sw.bb169
  %device189 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 8
  %96 = ptrtoint ptr %device189 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %device189, align 2
  %98 = zext i16 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %97, label %land.lhs.true187.if.else231_crit_edge [
    i16 26208, label %land.lhs.true187.if.then211_crit_edge
    i16 26211, label %land.lhs.true187.if.then211_crit_edge945
    i16 26213, label %land.lhs.true187.if.then211_crit_edge946
    i16 26215, label %land.lhs.true187.if.then211_crit_edge947
  ]

land.lhs.true187.if.then211_crit_edge947:         ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then211

land.lhs.true187.if.then211_crit_edge946:         ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then211

land.lhs.true187.if.then211_crit_edge945:         ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then211

land.lhs.true187.if.then211_crit_edge:            ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then211

land.lhs.true187.if.else231_crit_edge:            ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else231

if.then211:                                       ; preds = %land.lhs.true187.if.then211_crit_edge, %land.lhs.true187.if.then211_crit_edge945, %land.lhs.true187.if.then211_crit_edge946, %land.lhs.true187.if.then211_crit_edge947, %land.lhs.true175.if.then211_crit_edge
  %is_kicker212 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %99 = ptrtoint ptr %is_kicker212 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %is_kicker212, align 8
  %100 = call ptr @memcpy(ptr %fw_name, ptr @.str.11, i32 24)
  br label %sw.epilog

land.lhs.true221:                                 ; preds = %sw.bb169
  %device223 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 8
  %101 = ptrtoint ptr %device223 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %device223, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26213, i16 %102)
  %cmp225 = icmp eq i16 %102, 26213
  br i1 %cmp225, label %if.then227, label %land.lhs.true221.if.else231_crit_edge

land.lhs.true221.if.else231_crit_edge:            ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else231

if.then227:                                       ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #7
  %is_kicker228 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %103 = ptrtoint ptr %is_kicker228 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %is_kicker228, align 8
  %104 = call ptr @memcpy(ptr %fw_name, ptr @.str.12, i32 25)
  br label %sw.epilog

if.else231:                                       ; preds = %land.lhs.true221.if.else231_crit_edge, %land.lhs.true187.if.else231_crit_edge, %land.lhs.true175.if.else231_crit_edge, %sw.bb169.if.else231_crit_edge
  %105 = call ptr @memcpy(ptr %fw_name, ptr @.str.13, i32 22)
  br label %sw.epilog

sw.bb236:                                         ; preds = %if.then33
  %pdev237 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %106 = ptrtoint ptr %pdev237 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev237, align 4
  %revision238 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 12
  %108 = ptrtoint ptr %revision238 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %revision238, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %109)
  %switch891 = icmp slt i8 %109, -126
  br i1 %switch891, label %sw.bb236.if.then254_crit_edge, label %lor.lhs.false248

sw.bb236.if.then254_crit_edge:                    ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then254

lor.lhs.false248:                                 ; preds = %sw.bb236
  %device250 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 8
  %110 = ptrtoint ptr %device250 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %device250, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26207, i16 %111)
  %cmp252 = icmp eq i16 %111, 26207
  br i1 %cmp252, label %lor.lhs.false248.if.then254_crit_edge, label %if.else258

lor.lhs.false248.if.then254_crit_edge:            ; preds = %lor.lhs.false248
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then254

if.then254:                                       ; preds = %lor.lhs.false248.if.then254_crit_edge, %sw.bb236.if.then254_crit_edge
  %is_kicker255 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %112 = ptrtoint ptr %is_kicker255 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %is_kicker255, align 8
  %113 = call ptr @memcpy(ptr %fw_name, ptr @.str.14, i32 25)
  br label %sw.epilog

if.else258:                                       ; preds = %lor.lhs.false248
  call void @__sanitizer_cov_trace_pc() #7
  %114 = call ptr @memcpy(ptr %fw_name, ptr @.str.15, i32 23)
  br label %sw.epilog

sw.bb262:                                         ; preds = %if.then33
  %pdev263 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %115 = ptrtoint ptr %pdev263 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdev263, align 4
  %revision264 = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 12
  %117 = ptrtoint ptr %revision264 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %revision264, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %118)
  %cmp266 = icmp eq i8 %118, -128
  br i1 %cmp266, label %if.then268, label %if.else272

if.then268:                                       ; preds = %sw.bb262
  call void @__sanitizer_cov_trace_pc() #7
  %is_kicker269 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %119 = ptrtoint ptr %is_kicker269 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %is_kicker269, align 8
  %120 = call ptr @memcpy(ptr %fw_name, ptr @.str.16, i32 24)
  br label %sw.epilog

if.else272:                                       ; preds = %sw.bb262
  call void @__sanitizer_cov_trace_pc() #7
  %121 = call ptr @memcpy(ptr %fw_name, ptr @.str.17, i32 22)
  br label %sw.epilog

sw.bb276:                                         ; preds = %if.then33
  %pdev277 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %122 = ptrtoint ptr %pdev277 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev277, align 4
  %device278 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 8
  %124 = ptrtoint ptr %device278 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %device278, align 2
  %126 = zext i16 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %125, label %sw.bb276.if.else340_crit_edge [
    i16 26880, label %land.lhs.true282
    i16 26887, label %land.lhs.true306
  ]

sw.bb276.if.else340_crit_edge:                    ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else340

land.lhs.true282:                                 ; preds = %sw.bb276
  %revision284 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 12
  %127 = ptrtoint ptr %revision284 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %revision284, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %128)
  %cmp286 = icmp eq i8 %128, -127
  br i1 %cmp286, label %land.lhs.true282.if.then336_crit_edge, label %land.lhs.true294

land.lhs.true282.if.then336_crit_edge:            ; preds = %land.lhs.true282
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then336

land.lhs.true294:                                 ; preds = %land.lhs.true282
  %129 = ptrtoint ptr %revision284 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %revision284, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %130)
  %cmp298 = icmp eq i8 %130, -125
  br i1 %cmp298, label %land.lhs.true294.if.then336_crit_edge, label %land.lhs.true318

land.lhs.true294.if.then336_crit_edge:            ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then336

land.lhs.true306:                                 ; preds = %sw.bb276
  %revision308 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 12
  %131 = ptrtoint ptr %revision308 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %revision308, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %132)
  %cmp310 = icmp eq i8 %132, -121
  br i1 %cmp310, label %land.lhs.true306.if.then336_crit_edge, label %land.lhs.true306.if.else340_crit_edge

land.lhs.true306.if.else340_crit_edge:            ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else340

land.lhs.true306.if.then336_crit_edge:            ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then336

land.lhs.true318:                                 ; preds = %land.lhs.true294
  %133 = ptrtoint ptr %revision284 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %revision284, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %134)
  %cmp322 = icmp eq i8 %134, -47
  br i1 %cmp322, label %land.lhs.true318.if.then336_crit_edge, label %land.lhs.true330

land.lhs.true318.if.then336_crit_edge:            ; preds = %land.lhs.true318
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then336

land.lhs.true330:                                 ; preds = %land.lhs.true318
  %135 = ptrtoint ptr %revision284 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %revision284, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -45, i8 %136)
  %cmp334 = icmp eq i8 %136, -45
  br i1 %cmp334, label %land.lhs.true330.if.then336_crit_edge, label %land.lhs.true330.if.else340_crit_edge

land.lhs.true330.if.else340_crit_edge:            ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else340

land.lhs.true330.if.then336_crit_edge:            ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then336

if.then336:                                       ; preds = %land.lhs.true330.if.then336_crit_edge, %land.lhs.true318.if.then336_crit_edge, %land.lhs.true306.if.then336_crit_edge, %land.lhs.true294.if.then336_crit_edge, %land.lhs.true282.if.then336_crit_edge
  %is_kicker337 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %137 = ptrtoint ptr %is_kicker337 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %is_kicker337, align 8
  %138 = call ptr @memcpy(ptr %fw_name, ptr @.str.18, i32 23)
  br label %sw.epilog

if.else340:                                       ; preds = %land.lhs.true330.if.else340_crit_edge, %land.lhs.true306.if.else340_crit_edge, %sw.bb276.if.else340_crit_edge
  %139 = call ptr @memcpy(ptr %fw_name, ptr @.str.19, i32 21)
  br label %sw.epilog

sw.bb344:                                         ; preds = %if.then33
  %pdev345 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %140 = ptrtoint ptr %pdev345 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pdev345, align 4
  %device346 = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 8
  %142 = ptrtoint ptr %device346 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %device346, align 2
  %144 = zext i16 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %143, label %sw.bb344.if.else372_crit_edge [
    i16 26937, label %land.lhs.true350
    i16 26936, label %land.lhs.true362
  ]

sw.bb344.if.else372_crit_edge:                    ; preds = %sw.bb344
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else372

land.lhs.true350:                                 ; preds = %sw.bb344
  %revision352 = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 12
  %145 = ptrtoint ptr %revision352 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %revision352, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %146)
  %cmp354 = icmp eq i8 %146, -15
  br i1 %cmp354, label %land.lhs.true350.if.then368_crit_edge, label %land.lhs.true350.if.else372_crit_edge

land.lhs.true350.if.else372_crit_edge:            ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else372

land.lhs.true350.if.then368_crit_edge:            ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then368

land.lhs.true362:                                 ; preds = %sw.bb344
  %revision364 = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 12
  %147 = ptrtoint ptr %revision364 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %revision364, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %148)
  %cmp366 = icmp eq i8 %148, -15
  br i1 %cmp366, label %land.lhs.true362.if.then368_crit_edge, label %land.lhs.true362.if.else372_crit_edge

land.lhs.true362.if.else372_crit_edge:            ; preds = %land.lhs.true362
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else372

land.lhs.true362.if.then368_crit_edge:            ; preds = %land.lhs.true362
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then368

if.then368:                                       ; preds = %land.lhs.true362.if.then368_crit_edge, %land.lhs.true350.if.then368_crit_edge
  %is_kicker369 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %149 = ptrtoint ptr %is_kicker369 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %is_kicker369, align 8
  %150 = call ptr @memcpy(ptr %fw_name, ptr @.str.20, i32 23)
  br label %sw.epilog

if.else372:                                       ; preds = %land.lhs.true362.if.else372_crit_edge, %land.lhs.true350.if.else372_crit_edge, %sw.bb344.if.else372_crit_edge
  %151 = call ptr @memcpy(ptr %fw_name, ptr @.str.21, i32 21)
  br label %sw.epilog

sw.bb376:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %152 = call ptr @memcpy(ptr %fw_name, ptr @.str.22, i32 20)
  br label %sw.epilog

sw.bb379:                                         ; preds = %if.then33
  %153 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %type, label %sw.bb379.sw.epilog_crit_edge [
    i32 0, label %if.then382
    i32 1, label %if.then452
  ]

sw.bb379.sw.epilog_crit_edge:                     ; preds = %sw.bb379
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then382:                                       ; preds = %sw.bb379
  %pdev383 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %154 = ptrtoint ptr %pdev383 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pdev383, align 4
  %device384 = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 8
  %156 = ptrtoint ptr %device384 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %device384, align 2
  %158 = zext i16 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %157, label %if.then382.if.else444_crit_edge [
    i16 26607, label %land.lhs.true388
    i16 26623, label %land.lhs.true406
  ]

if.then382.if.else444_crit_edge:                  ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else444

land.lhs.true388:                                 ; preds = %if.then382
  %revision390 = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 12
  %159 = ptrtoint ptr %revision390 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %revision390, align 4
  %161 = zext i8 %160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %160, label %land.lhs.true434 [
    i8 -32, label %land.lhs.true388.if.then424_crit_edge
    i8 -27, label %land.lhs.true388.if.then424_crit_edge948
  ]

land.lhs.true388.if.then424_crit_edge948:         ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then424

land.lhs.true388.if.then424_crit_edge:            ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then424

land.lhs.true406:                                 ; preds = %if.then382
  %revision408 = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 12
  %162 = ptrtoint ptr %revision408 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %revision408, align 4
  %164 = zext i8 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %163, label %land.lhs.true406.if.else444_crit_edge [
    i8 -49, label %land.lhs.true406.if.then424_crit_edge
    i8 -17, label %land.lhs.true406.if.then424_crit_edge949
    i8 -1, label %land.lhs.true406.if.then424_crit_edge950
  ]

land.lhs.true406.if.then424_crit_edge950:         ; preds = %land.lhs.true406
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then424

land.lhs.true406.if.then424_crit_edge949:         ; preds = %land.lhs.true406
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then424

land.lhs.true406.if.then424_crit_edge:            ; preds = %land.lhs.true406
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then424

land.lhs.true406.if.else444_crit_edge:            ; preds = %land.lhs.true406
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else444

if.then424:                                       ; preds = %land.lhs.true406.if.then424_crit_edge, %land.lhs.true406.if.then424_crit_edge949, %land.lhs.true406.if.then424_crit_edge950, %land.lhs.true388.if.then424_crit_edge, %land.lhs.true388.if.then424_crit_edge948
  %is_kicker425 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %165 = ptrtoint ptr %is_kicker425 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %is_kicker425, align 8
  %166 = call ptr @memcpy(ptr %fw_name, ptr @.str.23, i32 27)
  br label %sw.epilog

land.lhs.true434:                                 ; preds = %land.lhs.true388
  %167 = ptrtoint ptr %revision390 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %revision390, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -30, i8 %168)
  %cmp438 = icmp eq i8 %168, -30
  br i1 %cmp438, label %if.then440, label %land.lhs.true434.if.else444_crit_edge

land.lhs.true434.if.else444_crit_edge:            ; preds = %land.lhs.true434
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else444

if.then440:                                       ; preds = %land.lhs.true434
  call void @__sanitizer_cov_trace_pc() #7
  %is_kicker441 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %169 = ptrtoint ptr %is_kicker441 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %is_kicker441, align 8
  %170 = call ptr @memcpy(ptr %fw_name, ptr @.str.24, i32 28)
  br label %sw.epilog

if.else444:                                       ; preds = %land.lhs.true434.if.else444_crit_edge, %land.lhs.true406.if.else444_crit_edge, %if.then382.if.else444_crit_edge
  %171 = call ptr @memcpy(ptr %fw_name, ptr @.str.25, i32 25)
  br label %sw.epilog

if.then452:                                       ; preds = %sw.bb379
  call void @__sanitizer_cov_trace_pc() #7
  %172 = call ptr @memcpy(ptr %fw_name, ptr @.str.26, i32 28)
  br label %sw.epilog

sw.bb457:                                         ; preds = %if.then33
  %173 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %type, label %sw.bb457.sw.epilog_crit_edge [
    i32 0, label %if.then460
    i32 1, label %if.then554
  ]

sw.bb457.sw.epilog_crit_edge:                     ; preds = %sw.bb457
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then460:                                       ; preds = %sw.bb457
  %pdev461 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %174 = ptrtoint ptr %pdev461 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pdev461, align 4
  %device462 = getelementptr inbounds %struct.pci_dev, ptr %175, i32 0, i32 8
  %176 = ptrtoint ptr %device462 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %device462, align 2
  %178 = zext i16 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %177, label %if.then460.if.else546_crit_edge [
    i16 26591, label %land.lhs.true466
    i16 28639, label %land.lhs.true502
  ]

if.then460.if.else546_crit_edge:                  ; preds = %if.then460
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else546

land.lhs.true466:                                 ; preds = %if.then460
  %revision468 = getelementptr inbounds %struct.pci_dev, ptr %175, i32 0, i32 12
  %179 = ptrtoint ptr %revision468 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %revision468, align 4
  %181 = zext i8 %180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %180, label %land.lhs.true530 [
    i8 -29, label %land.lhs.true466.if.then520_crit_edge
    i8 -28, label %land.lhs.true466.if.then520_crit_edge951
    i8 -27, label %land.lhs.true466.if.then520_crit_edge952
    i8 -25, label %land.lhs.true466.if.then520_crit_edge953
    i8 -17, label %land.lhs.true466.if.then520_crit_edge954
  ]

land.lhs.true466.if.then520_crit_edge954:         ; preds = %land.lhs.true466
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then520

land.lhs.true466.if.then520_crit_edge953:         ; preds = %land.lhs.true466
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then520

land.lhs.true466.if.then520_crit_edge952:         ; preds = %land.lhs.true466
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then520

land.lhs.true466.if.then520_crit_edge951:         ; preds = %land.lhs.true466
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then520

land.lhs.true466.if.then520_crit_edge:            ; preds = %land.lhs.true466
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then520

land.lhs.true502:                                 ; preds = %if.then460
  %revision504 = getelementptr inbounds %struct.pci_dev, ptr %175, i32 0, i32 12
  %182 = ptrtoint ptr %revision504 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %revision504, align 4
  %184 = zext i8 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %183, label %land.lhs.true502.if.else546_crit_edge [
    i8 -25, label %land.lhs.true502.if.then520_crit_edge
    i8 -17, label %land.lhs.true502.if.then520_crit_edge955
    i8 -1, label %land.lhs.true502.if.then520_crit_edge956
  ]

land.lhs.true502.if.then520_crit_edge956:         ; preds = %land.lhs.true502
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then520

land.lhs.true502.if.then520_crit_edge955:         ; preds = %land.lhs.true502
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then520

land.lhs.true502.if.then520_crit_edge:            ; preds = %land.lhs.true502
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then520

land.lhs.true502.if.else546_crit_edge:            ; preds = %land.lhs.true502
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else546

if.then520:                                       ; preds = %land.lhs.true502.if.then520_crit_edge, %land.lhs.true502.if.then520_crit_edge955, %land.lhs.true502.if.then520_crit_edge956, %land.lhs.true466.if.then520_crit_edge, %land.lhs.true466.if.then520_crit_edge951, %land.lhs.true466.if.then520_crit_edge952, %land.lhs.true466.if.then520_crit_edge953, %land.lhs.true466.if.then520_crit_edge954
  %is_kicker521 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %185 = ptrtoint ptr %is_kicker521 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %is_kicker521, align 8
  %186 = call ptr @memcpy(ptr %fw_name, ptr @.str.27, i32 27)
  br label %sw.epilog

land.lhs.true530:                                 ; preds = %land.lhs.true466
  %187 = ptrtoint ptr %revision468 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %revision468, align 4
  %189 = zext i8 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %188, label %land.lhs.true530.if.else546_crit_edge [
    i8 -31, label %land.lhs.true530.if.then542_crit_edge
    i8 -9, label %land.lhs.true530.if.then542_crit_edge957
  ]

land.lhs.true530.if.then542_crit_edge957:         ; preds = %land.lhs.true530
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then542

land.lhs.true530.if.then542_crit_edge:            ; preds = %land.lhs.true530
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then542

land.lhs.true530.if.else546_crit_edge:            ; preds = %land.lhs.true530
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else546

if.then542:                                       ; preds = %land.lhs.true530.if.then542_crit_edge, %land.lhs.true530.if.then542_crit_edge957
  %is_kicker543 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %190 = ptrtoint ptr %is_kicker543 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 1, ptr %is_kicker543, align 8
  %191 = call ptr @memcpy(ptr %fw_name, ptr @.str.28, i32 28)
  br label %sw.epilog

if.else546:                                       ; preds = %land.lhs.true530.if.else546_crit_edge, %land.lhs.true502.if.else546_crit_edge, %if.then460.if.else546_crit_edge
  %192 = call ptr @memcpy(ptr %fw_name, ptr @.str.29, i32 25)
  br label %sw.epilog

if.then554:                                       ; preds = %sw.bb457
  call void @__sanitizer_cov_trace_pc() #7
  %193 = call ptr @memcpy(ptr %fw_name, ptr @.str.30, i32 28)
  br label %sw.epilog

sw.bb559:                                         ; preds = %if.then33
  %pdev560 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %194 = ptrtoint ptr %pdev560 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pdev560, align 4
  %device561 = getelementptr inbounds %struct.pci_dev, ptr %195, i32 0, i32 8
  %196 = ptrtoint ptr %device561 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %device561, align 2
  %198 = zext i16 %197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %197, label %sw.bb559.if.else617_crit_edge [
    i16 27015, label %land.lhs.true565
    i16 27009, label %land.lhs.true595
  ]

sw.bb559.if.else617_crit_edge:                    ; preds = %sw.bb559
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else617

land.lhs.true565:                                 ; preds = %sw.bb559
  %revision567 = getelementptr inbounds %struct.pci_dev, ptr %195, i32 0, i32 12
  %199 = ptrtoint ptr %revision567 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %revision567, align 4
  %201 = zext i8 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %200, label %land.lhs.true565.if.else617_crit_edge [
    i8 -64, label %land.lhs.true565.if.then613_crit_edge
    i8 -63, label %land.lhs.true565.if.then613_crit_edge958
    i8 -61, label %land.lhs.true565.if.then613_crit_edge959
    i8 -57, label %land.lhs.true565.if.then613_crit_edge960
  ]

land.lhs.true565.if.then613_crit_edge960:         ; preds = %land.lhs.true565
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then613

land.lhs.true565.if.then613_crit_edge959:         ; preds = %land.lhs.true565
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then613

land.lhs.true565.if.then613_crit_edge958:         ; preds = %land.lhs.true565
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then613

land.lhs.true565.if.then613_crit_edge:            ; preds = %land.lhs.true565
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then613

land.lhs.true565.if.else617_crit_edge:            ; preds = %land.lhs.true565
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else617

land.lhs.true595:                                 ; preds = %sw.bb559
  %revision597 = getelementptr inbounds %struct.pci_dev, ptr %195, i32 0, i32 12
  %202 = ptrtoint ptr %revision597 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %revision597, align 4
  %204 = zext i8 %203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %203, label %land.lhs.true595.if.else617_crit_edge [
    i8 0, label %land.lhs.true595.if.then613_crit_edge
    i8 1, label %land.lhs.true595.if.then613_crit_edge961
    i8 16, label %land.lhs.true595.if.then613_crit_edge962
  ]

land.lhs.true595.if.then613_crit_edge962:         ; preds = %land.lhs.true595
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then613

land.lhs.true595.if.then613_crit_edge961:         ; preds = %land.lhs.true595
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then613

land.lhs.true595.if.then613_crit_edge:            ; preds = %land.lhs.true595
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then613

land.lhs.true595.if.else617_crit_edge:            ; preds = %land.lhs.true595
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else617

if.then613:                                       ; preds = %land.lhs.true595.if.then613_crit_edge, %land.lhs.true595.if.then613_crit_edge961, %land.lhs.true595.if.then613_crit_edge962, %land.lhs.true565.if.then613_crit_edge, %land.lhs.true565.if.then613_crit_edge958, %land.lhs.true565.if.then613_crit_edge959, %land.lhs.true565.if.then613_crit_edge960
  %is_kicker614 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %205 = ptrtoint ptr %is_kicker614 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %is_kicker614, align 8
  %206 = call ptr @memcpy(ptr %fw_name, ptr @.str.31, i32 27)
  br label %sw.epilog

if.else617:                                       ; preds = %land.lhs.true595.if.else617_crit_edge, %land.lhs.true565.if.else617_crit_edge, %sw.bb559.if.else617_crit_edge
  %207 = call ptr @memcpy(ptr %fw_name, ptr @.str.32, i32 25)
  br label %sw.epilog

sw.bb621:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %208 = call ptr @memcpy(ptr %fw_name, ptr @.str.33, i32 21)
  br label %sw.epilog

sw.bb624:                                         ; preds = %if.then33
  %pdev625 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %209 = ptrtoint ptr %pdev625 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pdev625, align 4
  %device626 = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 8
  %211 = ptrtoint ptr %device626 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %device626, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26751, i16 %212)
  %cmp628 = icmp eq i16 %212, 26751
  br i1 %cmp628, label %land.lhs.true630, label %sw.bb624.if.else651_crit_edge

sw.bb624.if.else651_crit_edge:                    ; preds = %sw.bb624
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else651

land.lhs.true630:                                 ; preds = %sw.bb624
  %revision632 = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 12
  %213 = ptrtoint ptr %revision632 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %revision632, align 4
  %215 = zext i8 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %214, label %land.lhs.true630.if.else651_crit_edge [
    i8 -64, label %land.lhs.true630.if.then648_crit_edge
    i8 -63, label %land.lhs.true630.if.then648_crit_edge963
    i8 -61, label %land.lhs.true630.if.then648_crit_edge964
  ]

land.lhs.true630.if.then648_crit_edge964:         ; preds = %land.lhs.true630
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then648

land.lhs.true630.if.then648_crit_edge963:         ; preds = %land.lhs.true630
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then648

land.lhs.true630.if.then648_crit_edge:            ; preds = %land.lhs.true630
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then648

land.lhs.true630.if.else651_crit_edge:            ; preds = %land.lhs.true630
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else651

if.then648:                                       ; preds = %land.lhs.true630.if.then648_crit_edge, %land.lhs.true630.if.then648_crit_edge963, %land.lhs.true630.if.then648_crit_edge964
  %216 = call ptr @memcpy(ptr %fw_name, ptr @.str.34, i32 26)
  br label %sw.epilog

if.else651:                                       ; preds = %land.lhs.true630.if.else651_crit_edge, %sw.bb624.if.else651_crit_edge
  %217 = call ptr @memcpy(ptr %fw_name, ptr @.str.35, i32 22)
  br label %sw.epilog

sw.bb655:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %218 = call ptr @memcpy(ptr %fw_name, ptr @.str.36, i32 22)
  br label %sw.epilog

sw.bb658:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %219 = call ptr @memcpy(ptr %fw_name, ptr @.str.37, i32 22)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38) #5
  br label %cleanup719.thread

sw.epilog:                                        ; preds = %sw.bb658, %sw.bb655, %if.else651, %if.then648, %sw.bb621, %if.else617, %if.then613, %if.then554, %if.else546, %if.then542, %if.then520, %sw.bb457.sw.epilog_crit_edge, %if.then452, %if.else444, %if.then440, %if.then424, %sw.bb379.sw.epilog_crit_edge, %sw.bb376, %if.else372, %if.then368, %if.else340, %if.then336, %if.else272, %if.then268, %if.else258, %if.then254, %if.else231, %if.then227, %if.then211, %if.else165, %if.then161, %if.else115, %if.then111, %if.else53, %if.then50, %sw.bb
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %1, align 8
  %call664 = call i32 @request_firmware(ptr noundef %fw32, ptr noundef nonnull %fw_name, ptr noundef %221) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call664)
  %tobool665.not = icmp eq i32 %call664, 0
  br i1 %tobool665.not, label %if.end667, label %if.then666

if.then666:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39) #5
  br label %cleanup719.thread

if.end667:                                        ; preds = %sw.epilog
  %222 = ptrtoint ptr %fw32 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %fw32, align 8
  %call670 = call i32 @amdgpu_ucode_validate(ptr noundef %223) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call670)
  %tobool671.not = icmp eq i32 %call670, 0
  br i1 %tobool671.not, label %if.end678, label %if.then672

if.then672:                                       ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40, ptr noundef nonnull %fw_name) #5
  %224 = ptrtoint ptr %fw32 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %fw32, align 8
  call void @release_firmware(ptr noundef %225) #5
  %226 = ptrtoint ptr %fw32 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr null, ptr %fw32, align 8
  br label %cleanup719.thread

if.end678:                                        ; preds = %if.end667
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 1
  %227 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %228)
  %cmp680 = icmp eq i32 %228, 2
  br i1 %cmp680, label %if.then682, label %if.end678.cleanup719_crit_edge

if.end678.cleanup719_crit_edge:                   ; preds = %if.end678
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup719

if.then682:                                       ; preds = %if.end678
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx685 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 0, i32 24
  %229 = ptrtoint ptr %arrayidx685 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 24, ptr %arrayidx685, align 8
  %230 = ptrtoint ptr %fw32 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %fw32, align 8
  %fw688 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 0, i32 24, i32 1
  %232 = ptrtoint ptr %fw688 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %231, ptr %fw688, align 4
  %data690 = getelementptr inbounds %struct.firmware, ptr %231, i32 0, i32 1
  %233 = ptrtoint ptr %data690 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %data690, align 4
  %ucode_size_bytes691 = getelementptr inbounds %struct.common_firmware_header, ptr %234, i32 0, i32 7
  %235 = ptrtoint ptr %ucode_size_bytes691 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %ucode_size_bytes691, align 4
  %237 = call i32 @llvm.bswap.i32(i32 %236)
  %add692 = add i32 %237, 4095
  %and693 = and i32 %add692, -4096
  %fw_size = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 3
  %238 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %fw_size, align 8
  %add695 = add i32 %and693, %239
  store i32 %add695, ptr %fw_size, align 8
  br label %cleanup719

cleanup719.thread:                                ; preds = %if.then672, %if.then666, %sw.default
  %retval.1.ph = phi i32 [ %call670, %if.then672 ], [ %call664, %if.then666 ], [ -22, %sw.default ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name) #5
  br label %cleanup730

cleanup719:                                       ; preds = %if.then682, %if.end678.cleanup719_crit_edge, %if.else.cleanup719_crit_edge
  %240 = ptrtoint ptr %fw32 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %fw32, align 8
  %data700 = getelementptr inbounds %struct.firmware, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %data700 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %data700, align 4
  call void @amdgpu_ucode_print_smc_hdr(ptr noundef %243) #5
  %ucode_version703 = getelementptr inbounds %struct.common_firmware_header, ptr %243, i32 0, i32 6
  %244 = ptrtoint ptr %ucode_version703 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %ucode_version703, align 4
  %246 = call i32 @llvm.bswap.i32(i32 %245)
  %fw_version705 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 17
  %247 = ptrtoint ptr %fw_version705 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %fw_version705, align 4
  %ucode_size_bytes707 = getelementptr inbounds %struct.common_firmware_header, ptr %243, i32 0, i32 7
  %248 = ptrtoint ptr %ucode_size_bytes707 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %ucode_size_bytes707, align 4
  %250 = call i32 @llvm.bswap.i32(i32 %249)
  %ucode_start_addr = getelementptr inbounds %struct.smc_firmware_header_v1_0, ptr %243, i32 0, i32 1
  %251 = ptrtoint ptr %ucode_start_addr to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %ucode_start_addr, align 4
  %253 = call i32 @llvm.bswap.i32(i32 %252)
  %254 = ptrtoint ptr %fw32 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %fw32, align 8
  %data710 = getelementptr inbounds %struct.firmware, ptr %255, i32 0, i32 1
  %256 = ptrtoint ptr %data710 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %data710, align 4
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %243, i32 0, i32 8
  %258 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %ucode_array_offset_bytes, align 4
  %260 = call i32 @llvm.bswap.i32(i32 %259)
  %add.ptr = getelementptr i8, ptr %257, i32 %260
  %conv714 = trunc i32 %246 to i16
  %261 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %conv714, ptr %info, align 8
  %image_size716 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 3
  %262 = ptrtoint ptr %image_size716 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %250, ptr %image_size716, align 8
  %ucode_start_address717 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 5
  %263 = ptrtoint ptr %ucode_start_address717 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %253, ptr %ucode_start_address717, align 8
  %kptr718 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 6
  %264 = ptrtoint ptr %kptr718 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %add.ptr, ptr %kptr718, align 4
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name) #5
  br label %cleanup730

if.end729.critedge883:                            ; preds = %if.end14
  %265 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %adev1, align 4
  %267 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %267, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %type, label %sw.default.i924 [
    i32 2, label %sw.bb.i899
    i32 3, label %sw.bb3.i902
    i32 4, label %sw.bb9.i905
    i32 5, label %sw.bb11.i908
    i32 6, label %sw.bb14.i911
    i32 12, label %if.end729.critedge883.amdgpu_get_firmware_version.exit926_crit_edge
    i32 8, label %sw.bb20.i917
    i32 9, label %sw.bb24.i920
    i32 11, label %sw.bb28.i923
  ]

if.end729.critedge883.amdgpu_get_firmware_version.exit926_crit_edge: ; preds = %if.end729.critedge883
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_get_firmware_version.exit926

sw.bb.i899:                                       ; preds = %if.end729.critedge883
  call void @__sanitizer_cov_trace_pc() #7
  %fw_version2.i897 = getelementptr inbounds %struct.amdgpu_device, ptr %266, i32 0, i32 107, i32 0, i32 0, i32 1
  %268 = ptrtoint ptr %fw_version2.i897 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %fw_version2.i897, align 4
  %conv.i898 = trunc i32 %269 to i16
  br label %amdgpu_get_firmware_version.exit926

sw.bb3.i902:                                      ; preds = %if.end729.critedge883
  call void @__sanitizer_cov_trace_pc() #7
  %fw_version7.i900 = getelementptr %struct.amdgpu_device, ptr %266, i32 0, i32 107, i32 0, i32 1, i32 1
  %270 = ptrtoint ptr %fw_version7.i900 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %fw_version7.i900, align 4
  %conv8.i901 = trunc i32 %271 to i16
  br label %amdgpu_get_firmware_version.exit926

sw.bb9.i905:                                      ; preds = %if.end729.critedge883
  call void @__sanitizer_cov_trace_pc() #7
  %ce_fw_version.i903 = getelementptr inbounds %struct.amdgpu_device, ptr %266, i32 0, i32 106, i32 14
  %272 = ptrtoint ptr %ce_fw_version.i903 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %ce_fw_version.i903, align 8
  %conv10.i904 = trunc i32 %273 to i16
  br label %amdgpu_get_firmware_version.exit926

sw.bb11.i908:                                     ; preds = %if.end729.critedge883
  call void @__sanitizer_cov_trace_pc() #7
  %pfp_fw_version.i906 = getelementptr inbounds %struct.amdgpu_device, ptr %266, i32 0, i32 106, i32 12
  %274 = ptrtoint ptr %pfp_fw_version.i906 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %pfp_fw_version.i906, align 8
  %conv13.i907 = trunc i32 %275 to i16
  br label %amdgpu_get_firmware_version.exit926

sw.bb14.i911:                                     ; preds = %if.end729.critedge883
  call void @__sanitizer_cov_trace_pc() #7
  %me_fw_version.i909 = getelementptr inbounds %struct.amdgpu_device, ptr %266, i32 0, i32 106, i32 10
  %276 = ptrtoint ptr %me_fw_version.i909 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %me_fw_version.i909, align 8
  %conv16.i910 = trunc i32 %277 to i16
  br label %amdgpu_get_firmware_version.exit926

sw.bb20.i917:                                     ; preds = %if.end729.critedge883
  call void @__sanitizer_cov_trace_pc() #7
  %mec_fw_version22.i915 = getelementptr inbounds %struct.amdgpu_device, ptr %266, i32 0, i32 106, i32 18
  %278 = ptrtoint ptr %mec_fw_version22.i915 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %mec_fw_version22.i915, align 8
  %conv23.i916 = trunc i32 %279 to i16
  br label %amdgpu_get_firmware_version.exit926

sw.bb24.i920:                                     ; preds = %if.end729.critedge883
  call void @__sanitizer_cov_trace_pc() #7
  %mec_fw_version26.i918 = getelementptr inbounds %struct.amdgpu_device, ptr %266, i32 0, i32 106, i32 18
  %280 = ptrtoint ptr %mec_fw_version26.i918 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %mec_fw_version26.i918, align 8
  %conv27.i919 = trunc i32 %281 to i16
  br label %amdgpu_get_firmware_version.exit926

sw.bb28.i923:                                     ; preds = %if.end729.critedge883
  call void @__sanitizer_cov_trace_pc() #7
  %rlc_fw_version.i921 = getelementptr inbounds %struct.amdgpu_device, ptr %266, i32 0, i32 106, i32 16
  %282 = ptrtoint ptr %rlc_fw_version.i921 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %rlc_fw_version.i921, align 8
  %conv30.i922 = trunc i32 %283 to i16
  br label %amdgpu_get_firmware_version.exit926

sw.default.i924:                                  ; preds = %if.end729.critedge883
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42, i32 noundef %type) #5
  br label %amdgpu_get_firmware_version.exit926

amdgpu_get_firmware_version.exit926:              ; preds = %sw.default.i924, %sw.bb28.i923, %sw.bb24.i920, %sw.bb20.i917, %sw.bb14.i911, %sw.bb11.i908, %sw.bb9.i905, %sw.bb3.i902, %sw.bb.i899, %if.end729.critedge883.amdgpu_get_firmware_version.exit926_crit_edge
  %fw_version.0.i925 = phi i16 [ 0, %sw.default.i924 ], [ 0, %if.end729.critedge883.amdgpu_get_firmware_version.exit926_crit_edge ], [ %conv30.i922, %sw.bb28.i923 ], [ %conv27.i919, %sw.bb24.i920 ], [ %conv23.i916, %sw.bb20.i917 ], [ %conv16.i910, %sw.bb14.i911 ], [ %conv13.i907, %sw.bb11.i908 ], [ %conv10.i904, %sw.bb9.i905 ], [ %conv8.i901, %sw.bb3.i902 ], [ %conv.i898, %sw.bb.i899 ]
  %fw_version.c885 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 1
  %284 = ptrtoint ptr %fw_version.c885 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %fw_version.0.i925, ptr %fw_version.c885, align 2
  %ucode_feature_version.c886 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %10, i32 0, i32 1
  %285 = ptrtoint ptr %ucode_feature_version.c886 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %ucode_feature_version.c886, align 4
  %287 = tail call i32 @llvm.bswap.i32(i32 %286)
  %conv25.c887 = trunc i32 %287 to i16
  %feature_version.c888 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 2
  %288 = ptrtoint ptr %feature_version.c888 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %conv25.c887, ptr %feature_version.c888, align 4
  br label %cleanup730

cleanup730:                                       ; preds = %amdgpu_get_firmware_version.exit926, %cleanup719, %cleanup719.thread, %amdgpu_get_firmware_version.exit, %fw_type_convert.exit.cleanup730_crit_edge
  %retval.2 = phi i32 [ -22, %fw_type_convert.exit.cleanup730_crit_edge ], [ %retval.1.ph, %cleanup719.thread ], [ 0, %cleanup719 ], [ 0, %amdgpu_get_firmware_version.exit926 ], [ 0, %amdgpu_get_firmware_version.exit ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_smc_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 468, i32 3}
!2 = !{ptr @amdgpu_cgs_ops, !3, !"amdgpu_cgs_ops", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 454, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 76, i32 3}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 81, i32 2}
!8 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 253, i32 21}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 260, i32 22}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 262, i32 22}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 276, i32 22}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 278, i32 22}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 290, i32 22}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 292, i32 22}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 304, i32 22}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 308, i32 22}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 310, i32 22}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 318, i32 22}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 320, i32 22}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 326, i32 22}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 328, i32 22}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 338, i32 22}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 340, i32 22}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 346, i32 22}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 348, i32 22}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 351, i32 21}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 357, i32 23}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 360, i32 23}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 362, i32 23}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 365, i32 22}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 372, i32 23}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 375, i32 23}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 377, i32 23}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 380, i32 22}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 386, i32 22}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 388, i32 22}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 392, i32 21}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 399, i32 22}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 401, i32 22}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 404, i32 21}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 407, i32 21}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 410, i32 5}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 416, i32 5}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 422, i32 5}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 154, i32 3}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c", i32 196, i32 4}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2159265107, i64 2159269671, i64 2159265144, i64 2159265200, i64 2159265234, i64 2159265258, i64 2159265299, i64 2159265320, i64 2159265348, i64 2159265382}
!97 = !{i64 2159271686, i64 2159272190, i64 2159271723, i64 2159271779, i64 2159271813, i64 2159271837, i64 2159271878, i64 2159271899, i64 2159271927, i64 2159271961}
