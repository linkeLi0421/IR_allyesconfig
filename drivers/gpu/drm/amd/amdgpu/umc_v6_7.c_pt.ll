; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/umc_v6_7.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/umc_v6_7.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_umc_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ras_err_data = type { i32, i32, i32, ptr }
%struct.eeprom_table_record = type <{ %union.anon.107, i64, i64, i32, %union.anon.108, i8, i8 }>
%union.anon.107 = type { i64 }
%union.anon.108 = type { i8 }
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

@umc_v6_7_channel_idx_tbl_second = dso_local constant { [4 x [8 x i32]], [32 x i8] } { [4 x [8 x i32]] [[8 x i32] [i32 28, i32 20, i32 24, i32 16, i32 12, i32 4, i32 8, i32 0], [8 x i32] [i32 6, i32 30, i32 2, i32 26, i32 22, i32 14, i32 18, i32 10], [8 x i32] [i32 19, i32 11, i32 15, i32 7, i32 3, i32 27, i32 31, i32 23], [8 x i32] [i32 9, i32 1, i32 5, i32 29, i32 25, i32 17, i32 21, i32 13]], [32 x i8] zeroinitializer }, align 32
@umc_v6_7_channel_idx_tbl_first = dso_local constant { [4 x [8 x i32]], [32 x i8] } { [4 x [8 x i32]] [[8 x i32] [i32 19, i32 11, i32 15, i32 7, i32 3, i32 27, i32 31, i32 23], [8 x i32] [i32 9, i32 1, i32 5, i32 29, i32 25, i32 17, i32 21, i32 13], [8 x i32] [i32 28, i32 20, i32 24, i32 16, i32 12, i32 4, i32 8, i32 0], [8 x i32] [i32 6, i32 30, i32 2, i32 26, i32 22, i32 14, i32 18, i32 10]], [32 x i8] zeroinitializer }, align 32
@umc_v6_7_ras_funcs = dso_local constant { %struct.amdgpu_umc_ras_funcs, [32 x i8] } { %struct.amdgpu_umc_ras_funcs { ptr null, ptr @amdgpu_umc_ras_late_init, ptr @amdgpu_umc_ras_fini, ptr @umc_v6_7_query_ras_error_count, ptr @umc_v6_7_query_ras_error_address, ptr @umc_v6_7_query_ras_poison_mode, ptr @umc_v6_7_ecc_info_query_ras_error_count, ptr @umc_v6_7_ecc_info_query_ras_error_address }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [32 x i8] c"umc_v6_7_channel_idx_tbl_second\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 32, i32 2 }
@___asan_gen_.4 = private unnamed_addr constant [31 x i8] c"umc_v6_7_channel_idx_tbl_first\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 39, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"umc_v6_7_ras_funcs\00", align 1
@___asan_gen_.8 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/umc_v6_7.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 483, i32 35 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @umc_v6_7_channel_idx_tbl_second, ptr @umc_v6_7_channel_idx_tbl_first, ptr @umc_v6_7_ras_funcs], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umc_v6_7_channel_idx_tbl_second to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umc_v6_7_channel_idx_tbl_first to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umc_v6_7_ras_funcs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_umc_ras_late_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_umc_ras_fini(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @umc_v6_7_query_ras_error_count(ptr noundef %adev, ptr nocapture noundef %ras_error_status) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %umc_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 2
  %0 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %umc_inst_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30.not = icmp eq i32 %1, 0
  br i1 %cmp30.not, label %entry.umc_v6_7_reset_error_count.exit_crit_edge, label %for.cond1.preheader.lr.ph

entry.umc_v6_7_reset_error_count.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_7_reset_error_count.exit

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %channel_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 1
  %channel_offs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 3
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 27
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %pcie_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %pcie_rreg64.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 43
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc5.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %umc_inst.031 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc6, %for.inc5.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_inst_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp328.not = icmp eq i32 %3, 0
  br i1 %cmp328.not, label %for.cond1.preheader.for.inc5_crit_edge, label %for.body4.lr.ph

for.cond1.preheader.for.inc5_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc5

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %mul1.i = shl i32 %umc_inst.031, 18
  br label %for.body4

for.body4:                                        ; preds = %umc_v6_7_querry_uncorrectable_error_count.exit.for.body4_crit_edge, %for.body4.lr.ph
  %ch_inst.029 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %umc_v6_7_querry_uncorrectable_error_count.exit.for.body4_crit_edge ]
  %4 = ptrtoint ptr %channel_offs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_offs.i, align 4
  %mul.i = mul i32 %5, %ch_inst.029
  %add.i = add i32 %mul.i, %mul1.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i19 = add i32 %9, %add.i
  %add13.i = shl i32 %add.i19, 2
  %mul.i20 = add i32 %add13.i, 3232
  %call.i = tail call i32 %11(ptr noundef %adev, i32 noundef %mul.i20) #3
  %and.i = and i32 %call.i, -16
  %12 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %13(ptr noundef %adev, i32 noundef %mul.i20, i32 noundef %and.i) #3
  %14 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcie_rreg.i, align 8
  %mul18.i = add i32 %add13.i, 3236
  %call19.i = tail call i32 %15(ptr noundef %adev, i32 noundef %mul18.i) #3
  %and20.i = and i32 %call19.i, 65535
  %16 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ce_count, align 4
  %add21.i = add i32 %17, %and20.i
  store i32 %add21.i, ptr %ce_count, align 4
  %or23.i = or i32 %and.i, 1
  %18 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %19(ptr noundef %adev, i32 noundef %mul.i20, i32 noundef %or23.i) #3
  %20 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcie_rreg.i, align 8
  %call30.i = tail call i32 %21(ptr noundef %adev, i32 noundef %mul18.i) #3
  %and31.i = and i32 %call30.i, 65535
  %22 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ce_count, align 4
  %add34.i = add i32 %23, %and31.i
  store i32 %add34.i, ptr %ce_count, align 4
  %24 = ptrtoint ptr %pcie_rreg64.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcie_rreg64.i, align 8
  %mul36.i = add i32 %add13.i, 3848
  %call37.i = tail call i64 %25(ptr noundef %adev, i32 noundef %mul36.i) #3
  %26 = and i64 %call37.i, -9223301668110598144
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223301668110598144, i64 %26)
  %.not.i = icmp eq i64 %26, -9223301668110598144
  br i1 %.not.i, label %if.then.i, label %for.body4.umc_v6_7_query_correctable_error_count.exit_crit_edge

for.body4.umc_v6_7_query_correctable_error_count.exit_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_7_query_correctable_error_count.exit

if.then.i:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ce_count, align 4
  %add43.i = add i32 %28, 1
  store i32 %add43.i, ptr %ce_count, align 4
  br label %umc_v6_7_query_correctable_error_count.exit

umc_v6_7_query_correctable_error_count.exit:      ; preds = %if.then.i, %for.body4.umc_v6_7_query_correctable_error_count.exit_crit_edge
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %33 = ptrtoint ptr %pcie_rreg64.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcie_rreg64.i, align 8
  %add.i23 = add i32 %add.i, 962
  %add3.i = add i32 %add.i23, %32
  %mul.i24 = shl i32 %add3.i, 2
  %call.i25 = tail call i64 %34(ptr noundef %adev, i32 noundef %mul.i24) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i25)
  %cmp.i = icmp sgt i64 %call.i25, -1
  %35 = and i64 %call.i25, 2486039770866647040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %36 = icmp eq i64 %35, 0
  %or.cond.i = or i1 %cmp.i, %36
  br i1 %or.cond.i, label %umc_v6_7_query_correctable_error_count.exit.umc_v6_7_querry_uncorrectable_error_count.exit_crit_edge, label %if.then.i26

umc_v6_7_query_correctable_error_count.exit.umc_v6_7_querry_uncorrectable_error_count.exit_crit_edge: ; preds = %umc_v6_7_query_correctable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_7_querry_uncorrectable_error_count.exit

if.then.i26:                                      ; preds = %umc_v6_7_query_correctable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ras_error_status, align 4
  %add22.i = add i32 %38, 1
  store i32 %add22.i, ptr %ras_error_status, align 4
  br label %umc_v6_7_querry_uncorrectable_error_count.exit

umc_v6_7_querry_uncorrectable_error_count.exit:   ; preds = %if.then.i26, %umc_v6_7_query_correctable_error_count.exit.umc_v6_7_querry_uncorrectable_error_count.exit_crit_edge
  %inc = add nuw i32 %ch_inst.029, 1
  %39 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel_inst_num, align 4
  %cmp3 = icmp ult i32 %inc, %40
  br i1 %cmp3, label %umc_v6_7_querry_uncorrectable_error_count.exit.for.body4_crit_edge, label %umc_v6_7_querry_uncorrectable_error_count.exit.for.inc5_crit_edge

umc_v6_7_querry_uncorrectable_error_count.exit.for.inc5_crit_edge: ; preds = %umc_v6_7_querry_uncorrectable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc5

umc_v6_7_querry_uncorrectable_error_count.exit.for.body4_crit_edge: ; preds = %umc_v6_7_querry_uncorrectable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.inc5:                                         ; preds = %umc_v6_7_querry_uncorrectable_error_count.exit.for.inc5_crit_edge, %for.cond1.preheader.for.inc5_crit_edge
  %inc6 = add nuw i32 %umc_inst.031, 1
  %41 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %umc_inst_num, align 8
  %cmp = icmp ult i32 %inc6, %42
  br i1 %cmp, label %for.inc5.for.cond1.preheader_crit_edge, label %for.end7

for.inc5.for.cond1.preheader_crit_edge:           ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

for.end7:                                         ; preds = %for.inc5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %phi.cmp = icmp eq i32 %42, 0
  br i1 %phi.cmp, label %for.end7.umc_v6_7_reset_error_count.exit_crit_edge, label %for.cond1.preheader.lr.ph.i

for.end7.umc_v6_7_reset_error_count.exit_crit_edge: ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_7_reset_error_count.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %for.end7
  %channel_inst_num.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 1
  %channel_offs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 3
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 27
  %pcie_rreg.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %pcie_wreg.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc5.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %umc_inst.020.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc6.i, %for.inc5.i.for.cond1.preheader.i_crit_edge ]
  %43 = ptrtoint ptr %channel_inst_num.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %channel_inst_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp317.not.i = icmp eq i32 %44, 0
  br i1 %cmp317.not.i, label %for.cond1.preheader.i.for.inc5.i_crit_edge, label %for.body4.lr.ph.i

for.cond1.preheader.i.for.inc5.i_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc5.i

for.body4.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %mul1.i.i = shl i32 %umc_inst.020.i, 18
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %ch_inst.018.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.body4.i.for.body4.i_crit_edge ]
  %45 = ptrtoint ptr %channel_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel_offs.i.i, align 4
  %mul.i.i = mul i32 %46, %ch_inst.018.i
  %add.i.i = add i32 %mul.i.i, %mul1.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %51 = ptrtoint ptr %pcie_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcie_rreg.i.i, align 8
  %add.i15.i = add i32 %add.i.i, %50
  %add8.i.i = shl i32 %add.i15.i, 2
  %mul.i16.i = add i32 %add8.i.i, 3232
  %call.i.i = tail call i32 %52(ptr noundef %adev, i32 noundef %mul.i16.i) #3
  %and.i.i = and i32 %call.i.i, -16
  %53 = ptrtoint ptr %pcie_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcie_wreg.i.i, align 4
  tail call void %54(ptr noundef %adev, i32 noundef %mul.i16.i, i32 noundef %and.i.i) #3
  %55 = ptrtoint ptr %pcie_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pcie_wreg.i.i, align 4
  %mul13.i.i = add i32 %add8.i.i, 3236
  tail call void %56(ptr noundef %adev, i32 noundef %mul13.i.i, i32 noundef 0) #3
  %57 = ptrtoint ptr %pcie_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcie_rreg.i.i, align 8
  %call17.i.i = tail call i32 %58(ptr noundef %adev, i32 noundef %mul.i16.i) #3
  %and18.i.i = and i32 %call17.i.i, -16
  %or19.i.i = or i32 %and18.i.i, 1
  %59 = ptrtoint ptr %pcie_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcie_wreg.i.i, align 4
  tail call void %60(ptr noundef %adev, i32 noundef %mul.i16.i, i32 noundef %or19.i.i) #3
  %61 = ptrtoint ptr %pcie_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pcie_wreg.i.i, align 4
  tail call void %62(ptr noundef %adev, i32 noundef %mul13.i.i, i32 noundef 0) #3
  %inc.i = add nuw i32 %ch_inst.018.i, 1
  %63 = ptrtoint ptr %channel_inst_num.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %channel_inst_num.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %64
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.inc5.i_crit_edge

for.body4.i.for.inc5.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc5.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4.i

for.inc5.i:                                       ; preds = %for.body4.i.for.inc5.i_crit_edge, %for.cond1.preheader.i.for.inc5.i_crit_edge
  %inc6.i = add nuw i32 %umc_inst.020.i, 1
  %65 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %umc_inst_num, align 8
  %cmp.i27 = icmp ult i32 %inc6.i, %66
  br i1 %cmp.i27, label %for.inc5.i.for.cond1.preheader.i_crit_edge, label %for.inc5.i.umc_v6_7_reset_error_count.exit_crit_edge

for.inc5.i.umc_v6_7_reset_error_count.exit_crit_edge: ; preds = %for.inc5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_7_reset_error_count.exit

for.inc5.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.inc5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader.i

umc_v6_7_reset_error_count.exit:                  ; preds = %for.inc5.i.umc_v6_7_reset_error_count.exit_crit_edge, %for.end7.umc_v6_7_reset_error_count.exit_crit_edge, %entry.umc_v6_7_reset_error_count.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @umc_v6_7_query_ras_error_address(ptr noundef %adev, ptr nocapture noundef %ras_error_status) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %umc_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 2
  %0 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %umc_inst_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23.not = icmp eq i32 %1, 0
  br i1 %cmp23.not, label %entry.for.end7_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end7

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %channel_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 1
  %channel_offs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 3
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 27
  %pcie_rreg64.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 43
  %err_addr10.i = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 3
  %err_addr_cnt.i = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 2
  %channel_idx_tbl.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 4
  %pcie_wreg6458.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 44
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc5.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %umc_inst.024 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc6, %for.inc5.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_inst_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp319.not = icmp eq i32 %3, 0
  br i1 %cmp319.not, label %for.cond1.preheader.for.inc5_crit_edge, label %for.body4.lr.ph

for.cond1.preheader.for.inc5_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc5

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %mul1.i = shl i32 %umc_inst.024, 18
  %conv54.i = trunc i32 %umc_inst.024 to i8
  br label %for.body4

for.body4:                                        ; preds = %umc_v6_7_query_error_address.exit.for.body4_crit_edge, %for.body4.lr.ph
  %ch_inst.020 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %umc_v6_7_query_error_address.exit.for.body4_crit_edge ]
  %4 = ptrtoint ptr %channel_offs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_offs.i, align 4
  %mul.i = mul i32 %5, %ch_inst.020
  %add.i = add i32 %mul.i, %mul1.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %pcie_rreg64.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie_rreg64.i, align 8
  %add.i17 = add i32 %add.i, %9
  %add8.i = shl i32 %add.i17, 2
  %mul.i18 = add i32 %add8.i, 3848
  %call.i = tail call i64 %11(ptr noundef %adev, i32 noundef %mul.i18) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp.i = icmp eq i64 %call.i, 0
  br i1 %cmp.i, label %for.body4.umc_v6_7_query_error_address.exit_crit_edge, label %if.end.i

for.body4.umc_v6_7_query_error_address.exit_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_7_query_error_address.exit

if.end.i:                                         ; preds = %for.body4
  %12 = ptrtoint ptr %err_addr10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %err_addr10.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end14.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.end14.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %err_addr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %err_addr_cnt.i, align 4
  %arrayidx16.i = getelementptr %struct.eeprom_table_record, ptr %13, i32 %15
  %16 = ptrtoint ptr %channel_idx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channel_idx_tbl.i, align 8
  %18 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel_inst_num, align 4
  %mul18.i = mul i32 %19, %umc_inst.024
  %add19.i = add i32 %mul18.i, %ch_inst.020
  %arrayidx20.i = getelementptr i32, ptr %17, i32 %add19.i
  %20 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i)
  %cmp21.i = icmp sgt i64 %call.i, -1
  %22 = and i64 %call.i, 105553116266496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %23 = icmp eq i64 %22, 0
  %or.cond.i = or i1 %cmp21.i, %23
  br i1 %or.cond.i, label %if.end14.i.cleanup.sink.split.i_crit_edge, label %if.then31.i

if.end14.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.then31.i:                                      ; preds = %if.end14.i
  %24 = and i64 %call.i, 35184372088832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %cmp25.not.i = icmp eq i64 %24, 0
  %25 = ptrtoint ptr %pcie_rreg64.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcie_rreg64.i, align 8
  %mul35.i = add i32 %add8.i, 3856
  %call37.i = tail call i64 %26(ptr noundef %adev, i32 noundef %mul35.i) #3
  br i1 %cmp25.not.i, label %if.then31.i.cleanup.sink.split.i_crit_edge, label %if.then49.i

if.then31.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.then49.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #5
  %and40.i = shl i64 %call37.i, 5
  %shl.i = and i64 %and40.i, 2305843009213685760
  %shl41.i = shl i32 %21, 8
  %conv42.i = zext i32 %shl41.i to i64
  %or.i = or i64 %shl.i, %conv42.i
  %and38.i = and i64 %call37.i, 72057594037927935
  %27 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %and38.i, ptr %arrayidx16.i, align 1
  %shr50.i = lshr i64 %or.i, 12
  %retired_page51.i = getelementptr %struct.eeprom_table_record, ptr %13, i32 %15, i32 1
  %28 = ptrtoint ptr %retired_page51.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %shr50.i, ptr %retired_page51.i, align 1
  %call52.i = tail call i64 @ktime_get_real_seconds() #3
  %ts.i = getelementptr %struct.eeprom_table_record, ptr %13, i32 %15, i32 2
  %29 = ptrtoint ptr %ts.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %call52.i, ptr %ts.i, align 1
  %err_type.i = getelementptr %struct.eeprom_table_record, ptr %13, i32 %15, i32 3
  %30 = ptrtoint ptr %err_type.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 2, ptr %err_type.i, align 1
  %31 = getelementptr %struct.eeprom_table_record, ptr %13, i32 %15, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %31, align 1
  %conv53.i = trunc i32 %21 to i8
  %mem_channel.i = getelementptr %struct.eeprom_table_record, ptr %13, i32 %15, i32 5
  %33 = ptrtoint ptr %mem_channel.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv53.i, ptr %mem_channel.i, align 1
  %mcumc_id.i = getelementptr %struct.eeprom_table_record, ptr %13, i32 %15, i32 6
  %34 = ptrtoint ptr %mcumc_id.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv54.i, ptr %mcumc_id.i, align 1
  %35 = ptrtoint ptr %err_addr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %err_addr_cnt.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %err_addr_cnt.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then49.i, %if.then31.i.cleanup.sink.split.i_crit_edge, %if.end14.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %37 = ptrtoint ptr %pcie_wreg6458.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcie_wreg6458.i, align 4
  tail call void %38(ptr noundef %adev, i32 noundef %mul.i18, i64 noundef 0) #3
  br label %umc_v6_7_query_error_address.exit

umc_v6_7_query_error_address.exit:                ; preds = %cleanup.sink.split.i, %for.body4.umc_v6_7_query_error_address.exit_crit_edge
  %inc = add nuw i32 %ch_inst.020, 1
  %39 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel_inst_num, align 4
  %cmp3 = icmp ult i32 %inc, %40
  br i1 %cmp3, label %umc_v6_7_query_error_address.exit.for.body4_crit_edge, label %umc_v6_7_query_error_address.exit.for.inc5_crit_edge

umc_v6_7_query_error_address.exit.for.inc5_crit_edge: ; preds = %umc_v6_7_query_error_address.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc5

umc_v6_7_query_error_address.exit.for.body4_crit_edge: ; preds = %umc_v6_7_query_error_address.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.inc5:                                         ; preds = %umc_v6_7_query_error_address.exit.for.inc5_crit_edge, %for.cond1.preheader.for.inc5_crit_edge
  %inc6 = add nuw i32 %umc_inst.024, 1
  %41 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %umc_inst_num, align 8
  %cmp = icmp ult i32 %inc6, %42
  br i1 %cmp, label %for.inc5.for.cond1.preheader_crit_edge, label %for.inc5.for.end7_crit_edge

for.inc5.for.end7_crit_edge:                      ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end7

for.inc5.for.cond1.preheader_crit_edge:           ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

for.end7:                                         ; preds = %for.inc5.for.end7_crit_edge, %entry.for.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @umc_v6_7_query_ras_poison_mode(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %umc_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 2
  %0 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %umc_inst_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not = icmp eq i32 %1, 0
  br i1 %cmp25.not, label %entry.cleanup_crit_edge, label %for.cond1.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %channel_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 1
  %channel_offs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 3
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 27
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc6.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %umc_inst.026 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc7, %for.inc6.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_inst_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp323.not = icmp eq i32 %3, 0
  br i1 %cmp323.not, label %for.cond1.preheader.for.inc6_crit_edge, label %for.body4.lr.ph

for.cond1.preheader.for.inc6_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc6

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %mul1.i = shl i32 %umc_inst.026, 18
  %add.i = or i32 %mul1.i, 83
  br label %for.body4

for.cond1:                                        ; preds = %for.body4
  %inc = add nuw i32 %ch_inst.024, 1
  %4 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_inst_num, align 4
  %cmp3 = icmp ult i32 %inc, %5
  br i1 %cmp3, label %for.cond1.for.body4_crit_edge, label %for.cond1.for.inc6_crit_edge

for.cond1.for.inc6_crit_edge:                     ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc6

for.cond1.for.body4_crit_edge:                    ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.body4:                                        ; preds = %for.cond1.for.body4_crit_edge, %for.body4.lr.ph
  %ch_inst.024 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.cond1.for.body4_crit_edge ]
  %6 = ptrtoint ptr %channel_offs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_offs.i, align 4
  %mul.i = mul i32 %7, %ch_inst.024
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i18 = add i32 %add.i, %mul.i
  %add3.i = add i32 %add.i18, %11
  %mul.i19 = shl i32 %add3.i, 2
  %call.i = tail call i32 %13(ptr noundef %adev, i32 noundef %mul.i19) #3
  %14 = and i32 %call.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %for.cond1, label %for.body4.cleanup_crit_edge

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc6:                                         ; preds = %for.cond1.for.inc6_crit_edge, %for.cond1.preheader.for.inc6_crit_edge
  %inc7 = add nuw i32 %umc_inst.026, 1
  %15 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %umc_inst_num, align 8
  %cmp = icmp ult i32 %inc7, %16
  br i1 %cmp, label %for.inc6.for.cond1.preheader_crit_edge, label %for.inc6.cleanup_crit_edge

for.inc6.cleanup_crit_edge:                       ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc6.for.cond1.preheader_crit_edge:           ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

cleanup:                                          ; preds = %for.inc6.cleanup_crit_edge, %for.body4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp22 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %for.body4.cleanup_crit_edge ], [ true, %for.inc6.cleanup_crit_edge ]
  ret i1 %cmp22
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @umc_v6_7_ecc_info_query_ras_error_count(ptr nocapture noundef readonly %adev, ptr nocapture noundef %ras_error_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %umc_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 2
  %0 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %umc_inst_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp32.not = icmp eq i32 %1, 0
  br i1 %cmp32.not, label %entry.for.end8_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end8

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %channel_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 1
  %channel_idx_tbl.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 4
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 1
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc6.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %umc_inst.033 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc7, %for.inc6.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_inst_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp330.not = icmp eq i32 %3, 0
  br i1 %cmp330.not, label %for.cond1.preheader.for.inc6_crit_edge, label %for.cond1.preheader.for.body4_crit_edge

for.cond1.preheader.for.body4_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body4

for.cond1.preheader.for.inc6_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc6

for.body4:                                        ; preds = %umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit.for.body4_crit_edge, %for.cond1.preheader.for.body4_crit_edge
  %4 = phi i32 [ %25, %umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit.for.body4_crit_edge ], [ %3, %for.cond1.preheader.for.body4_crit_edge ]
  %ch_inst.031 = phi i32 [ %inc, %umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit.for.body4_crit_edge ], [ 0, %for.cond1.preheader.for.body4_crit_edge ]
  %5 = ptrtoint ptr %channel_idx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel_idx_tbl.i, align 8
  %mul.i22 = mul i32 %4, %umc_inst.033
  %add.i23 = add i32 %mul.i22, %ch_inst.031
  %arrayidx.i = getelementptr i32, ptr %6, i32 %add.i23
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ras1.i, align 8
  %umc_ecc.i = getelementptr inbounds %struct.amdgpu_ras, ptr %10, i32 0, i32 21
  %mca_umc_status.i = getelementptr [32 x %struct.ecc_info_per_ch], ptr %umc_ecc.i, i32 0, i32 %8, i32 2
  %11 = ptrtoint ptr %mca_umc_status.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mca_umc_status.i, align 8
  %13 = and i64 %12, -9223301668110598144
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223301668110598144, i64 %13)
  %.not.i = icmp eq i64 %13, -9223301668110598144
  br i1 %.not.i, label %if.then.i, label %for.body4.umc_v6_7_ecc_info_query_correctable_error_count.exit_crit_edge

for.body4.umc_v6_7_ecc_info_query_correctable_error_count.exit_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_7_ecc_info_query_correctable_error_count.exit

if.then.i:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ce_count, align 4
  %add.i24 = add i32 %15, 1
  store i32 %add.i24, ptr %ce_count, align 4
  br label %umc_v6_7_ecc_info_query_correctable_error_count.exit

umc_v6_7_ecc_info_query_correctable_error_count.exit: ; preds = %if.then.i, %for.body4.umc_v6_7_ecc_info_query_correctable_error_count.exit_crit_edge
  %16 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ras1.i, align 8
  %umc_ecc.i26 = getelementptr inbounds %struct.amdgpu_ras, ptr %17, i32 0, i32 21
  %mca_umc_status.i27 = getelementptr [32 x %struct.ecc_info_per_ch], ptr %umc_ecc.i26, i32 0, i32 %8, i32 2
  %18 = ptrtoint ptr %mca_umc_status.i27 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %mca_umc_status.i27, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %19)
  %cmp.i = icmp sgt i64 %19, -1
  %20 = and i64 %19, 2486039770866647040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %21 = icmp eq i64 %20, 0
  %or.cond.i = or i1 %cmp.i, %21
  br i1 %or.cond.i, label %umc_v6_7_ecc_info_query_correctable_error_count.exit.umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit_crit_edge, label %if.then.i29

umc_v6_7_ecc_info_query_correctable_error_count.exit.umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit_crit_edge: ; preds = %umc_v6_7_ecc_info_query_correctable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit

if.then.i29:                                      ; preds = %umc_v6_7_ecc_info_query_correctable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ras_error_status, align 4
  %add.i28 = add i32 %23, 1
  store i32 %add.i28, ptr %ras_error_status, align 4
  br label %umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit

umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit: ; preds = %if.then.i29, %umc_v6_7_ecc_info_query_correctable_error_count.exit.umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit_crit_edge
  %inc = add nuw i32 %ch_inst.031, 1
  %24 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel_inst_num, align 4
  %cmp3 = icmp ult i32 %inc, %25
  br i1 %cmp3, label %umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit.for.body4_crit_edge, label %umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit.for.inc6_crit_edge

umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit.for.inc6_crit_edge: ; preds = %umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc6

umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit.for.body4_crit_edge: ; preds = %umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.inc6:                                         ; preds = %umc_v6_7_ecc_info_querry_uncorrectable_error_count.exit.for.inc6_crit_edge, %for.cond1.preheader.for.inc6_crit_edge
  %inc7 = add nuw i32 %umc_inst.033, 1
  %26 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %umc_inst_num, align 8
  %cmp = icmp ult i32 %inc7, %27
  br i1 %cmp, label %for.inc6.for.cond1.preheader_crit_edge, label %for.inc6.for.end8_crit_edge

for.inc6.for.end8_crit_edge:                      ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end8

for.inc6.for.cond1.preheader_crit_edge:           ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

for.end8:                                         ; preds = %for.inc6.for.end8_crit_edge, %entry.for.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @umc_v6_7_ecc_info_query_ras_error_address(ptr nocapture noundef readonly %adev, ptr nocapture noundef %ras_error_status) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %umc_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 2
  %0 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %umc_inst_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %entry.for.end7_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end7

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %channel_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 1
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %channel_idx_tbl.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 4
  %err_addr4.i = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 3
  %err_addr_cnt.i = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc5.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %umc_inst.022 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc6, %for.inc5.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_inst_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp319.not = icmp eq i32 %3, 0
  br i1 %cmp319.not, label %for.cond1.preheader.for.inc5_crit_edge, label %for.body4.lr.ph

for.cond1.preheader.for.inc5_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc5

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %conv34.i = trunc i32 %umc_inst.022 to i8
  br label %for.body4

for.body4:                                        ; preds = %umc_v6_7_ecc_info_query_error_address.exit.for.body4_crit_edge, %for.body4.lr.ph
  %4 = phi i32 [ %3, %for.body4.lr.ph ], [ %31, %umc_v6_7_ecc_info_query_error_address.exit.for.body4_crit_edge ]
  %ch_inst.020 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %umc_v6_7_ecc_info_query_error_address.exit.for.body4_crit_edge ]
  %5 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ras1.i, align 8
  %7 = ptrtoint ptr %channel_idx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %channel_idx_tbl.i, align 8
  %mul.i17 = mul i32 %4, %umc_inst.022
  %add.i18 = add i32 %mul.i17, %ch_inst.020
  %arrayidx.i = getelementptr i32, ptr %8, i32 %add.i18
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %umc_ecc.i = getelementptr inbounds %struct.amdgpu_ras, ptr %6, i32 0, i32 21
  %mca_umc_status.i = getelementptr [32 x %struct.ecc_info_per_ch], ptr %umc_ecc.i, i32 0, i32 %10, i32 2
  %11 = ptrtoint ptr %mca_umc_status.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mca_umc_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp.i = icmp eq i64 %12, 0
  br i1 %cmp.i, label %for.body4.umc_v6_7_ecc_info_query_error_address.exit_crit_edge, label %if.end.i

for.body4.umc_v6_7_ecc_info_query_error_address.exit_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_7_ecc_info_query_error_address.exit

if.end.i:                                         ; preds = %for.body4
  %13 = ptrtoint ptr %err_addr4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %err_addr4.i, align 4
  %tobool.not.i = icmp ne ptr %14, null
  %15 = and i64 %12, -9223336852482686976
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223336852482686976, i64 %15)
  %.not.i = icmp eq i64 %15, -9223336852482686976
  %or.cond.i = select i1 %tobool.not.i, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %if.then30.i, label %if.end.i.umc_v6_7_ecc_info_query_error_address.exit_crit_edge

if.end.i.umc_v6_7_ecc_info_query_error_address.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_7_ecc_info_query_error_address.exit

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %err_addr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err_addr_cnt.i, align 4
  %arrayidx8.i = getelementptr %struct.eeprom_table_record, ptr %14, i32 %17
  %mca_umc_addr.i = getelementptr [32 x %struct.ecc_info_per_ch], ptr %umc_ecc.i, i32 0, i32 %10, i32 3
  %18 = ptrtoint ptr %mca_umc_addr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %mca_umc_addr.i, align 8
  %and22.i = shl i64 %19, 5
  %shl.i = and i64 %and22.i, 2305843009213685760
  %shl23.i = shl i32 %10, 8
  %conv.i = zext i32 %shl23.i to i64
  %or.i = or i64 %shl.i, %conv.i
  %and20.i = and i64 %19, 72057594037927935
  %20 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %and20.i, ptr %arrayidx8.i, align 1
  %shr31.i = lshr i64 %or.i, 12
  %retired_page32.i = getelementptr %struct.eeprom_table_record, ptr %14, i32 %17, i32 1
  %21 = ptrtoint ptr %retired_page32.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %shr31.i, ptr %retired_page32.i, align 1
  %call.i = tail call i64 @ktime_get_real_seconds() #3
  %ts.i = getelementptr %struct.eeprom_table_record, ptr %14, i32 %17, i32 2
  %22 = ptrtoint ptr %ts.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %call.i, ptr %ts.i, align 1
  %err_type.i = getelementptr %struct.eeprom_table_record, ptr %14, i32 %17, i32 3
  %23 = ptrtoint ptr %err_type.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 2, ptr %err_type.i, align 1
  %24 = getelementptr %struct.eeprom_table_record, ptr %14, i32 %17, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %24, align 1
  %conv33.i = trunc i32 %10 to i8
  %mem_channel.i = getelementptr %struct.eeprom_table_record, ptr %14, i32 %17, i32 5
  %26 = ptrtoint ptr %mem_channel.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv33.i, ptr %mem_channel.i, align 1
  %mcumc_id.i = getelementptr %struct.eeprom_table_record, ptr %14, i32 %17, i32 6
  %27 = ptrtoint ptr %mcumc_id.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv34.i, ptr %mcumc_id.i, align 1
  %28 = ptrtoint ptr %err_addr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err_addr_cnt.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %err_addr_cnt.i, align 4
  br label %umc_v6_7_ecc_info_query_error_address.exit

umc_v6_7_ecc_info_query_error_address.exit:       ; preds = %if.then30.i, %if.end.i.umc_v6_7_ecc_info_query_error_address.exit_crit_edge, %for.body4.umc_v6_7_ecc_info_query_error_address.exit_crit_edge
  %inc = add nuw i32 %ch_inst.020, 1
  %30 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel_inst_num, align 4
  %cmp3 = icmp ult i32 %inc, %31
  br i1 %cmp3, label %umc_v6_7_ecc_info_query_error_address.exit.for.body4_crit_edge, label %umc_v6_7_ecc_info_query_error_address.exit.for.inc5_crit_edge

umc_v6_7_ecc_info_query_error_address.exit.for.inc5_crit_edge: ; preds = %umc_v6_7_ecc_info_query_error_address.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc5

umc_v6_7_ecc_info_query_error_address.exit.for.body4_crit_edge: ; preds = %umc_v6_7_ecc_info_query_error_address.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.inc5:                                         ; preds = %umc_v6_7_ecc_info_query_error_address.exit.for.inc5_crit_edge, %for.cond1.preheader.for.inc5_crit_edge
  %inc6 = add nuw i32 %umc_inst.022, 1
  %32 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %umc_inst_num, align 8
  %cmp = icmp ult i32 %inc6, %33
  br i1 %cmp, label %for.inc5.for.cond1.preheader_crit_edge, label %for.inc5.for.end7_crit_edge

for.inc5.for.end7_crit_edge:                      ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end7

for.inc5.for.cond1.preheader_crit_edge:           ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

for.end7:                                         ; preds = %for.inc5.for.end7_crit_edge, %entry.for.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @umc_v6_7_channel_idx_tbl_second, !1, !"umc_v6_7_channel_idx_tbl_second", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/umc_v6_7.c", i32 32, i32 2}
!2 = !{ptr @umc_v6_7_channel_idx_tbl_first, !3, !"umc_v6_7_channel_idx_tbl_first", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/umc_v6_7.c", i32 39, i32 2}
!4 = !{ptr @umc_v6_7_ras_funcs, !5, !"umc_v6_7_ras_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/umc_v6_7.c", i32 483, i32 35}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
