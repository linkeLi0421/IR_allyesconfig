; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/nbio_v6_1.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/nbio_v6_1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nbio_hdp_flush_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nbio_v6_1_hdp_flush_reg = dso_local constant { %struct.nbio_hdp_flush_reg, [56 x i8] } { %struct.nbio_hdp_flush_reg { i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@nbio_v6_1_funcs = dso_local constant { %struct.amdgpu_nbio_funcs, [52 x i8] } { %struct.amdgpu_nbio_funcs { ptr null, ptr @nbio_v6_1_get_hdp_flush_req_offset, ptr @nbio_v6_1_get_hdp_flush_done_offset, ptr @nbio_v6_1_get_pcie_index_offset, ptr @nbio_v6_1_get_pcie_data_offset, ptr null, ptr null, ptr @nbio_v6_1_get_rev_id, ptr @nbio_v6_1_mc_access_enable, ptr @nbio_v6_1_get_memsize, ptr @nbio_v6_1_sdma_doorbell_range, ptr null, ptr @nbio_v6_1_enable_doorbell_aperture, ptr @nbio_v6_1_enable_doorbell_selfring_aperture, ptr @nbio_v6_1_ih_doorbell_range, ptr null, ptr @nbio_v6_1_update_medium_grain_clock_gating, ptr @nbio_v6_1_update_medium_grain_light_sleep, ptr @nbio_v6_1_get_clockgating_state, ptr @nbio_v6_1_ih_control, ptr @nbio_v6_1_init_registers, ptr @nbio_v6_1_remap_hdp_registers, ptr null, ptr @nbio_v6_1_program_aspm, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"nbio_v6_1_hdp_flush_reg\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 248, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"nbio_v6_1_funcs\00", align 1
@___asan_gen_.5 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/nbio_v6_1.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 390, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nbio_v6_1_hdp_flush_reg, ptr @nbio_v6_1_funcs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v6_1_hdp_flush_reg to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v6_1_funcs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nbio_v6_1_get_hdp_flush_req_offset(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
define internal i32 @nbio_v6_1_get_hdp_flush_done_offset(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
define internal i32 @nbio_v6_1_get_pcie_index_offset(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
define internal i32 @nbio_v6_1_get_pcie_data_offset(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
define internal i32 @nbio_v6_1_get_rev_id(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 15
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #3
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
  %add17 = add i32 %13, 15
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = lshr i32 %cond, 24
  %shr = and i32 %and19, 15
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v6_1_mc_access_enable(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx13 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %9, 255
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef 3, i32 noundef 0, i32 noundef 13) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add18, i32 noundef 3, i32 noundef 0) #3
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.cond.false44_crit_edge, label %land.lhs.true23

if.else.cond.false44_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false44

land.lhs.true23:                                  ; preds = %if.else
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %14 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false44_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false44_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false44

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_wreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %sriov_wreg32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sriov_wreg32, align 4
  %tobool33.not = icmp eq ptr %17, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false44_crit_edge, label %cond.true34

land.lhs.true28.cond.false44_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false44

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %18 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42 = getelementptr i32, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %21, 255
  tail call void %17(ptr noundef %adev, i32 noundef %add43, i32 noundef 0, i32 noundef 0, i32 noundef 13) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add49, i32 noundef 0, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %cond.false44, %cond.true34, %cond.false, %cond.true
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nbio_v6_1_get_memsize(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 195
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #3
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
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v6_1_sdma_doorbell_range(ptr noundef %adev, i32 noundef %instance, i1 noundef zeroext %use_doorbell, i32 noundef %doorbell_index, i32 noundef %doorbell_size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %instance)
  %cmp = icmp eq i32 %instance, 0
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr i32, ptr %1, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %. = select i1 %cmp, i32 464, i32 465
  %add7 = add i32 %3, %.
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add7, i32 noundef 0) #3
  br i1 %use_doorbell, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %call, -2035709
  %shl = shl i32 %doorbell_index, 2
  %and8 = and i32 %shl, 4092
  %shl10 = shl i32 %doorbell_size, 16
  %and11 = and i32 %shl10, 2031616
  %or = or i32 %and11, %and8
  %or12 = or i32 %or, %and
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and13 = and i32 %call, -2031617
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %doorbell_range.0 = phi i32 [ %or12, %if.then ], [ %and13, %if.else ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add7, i32 noundef %doorbell_range.0, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v6_1_enable_doorbell_aperture(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false78.sink.split

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false78.sink.split_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false78.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 %11(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #3
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #5
  %call42 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true27
  %cond = phi i32 [ %call, %cond.true27 ], [ %call42, %cond.false ]
  %and43 = and i32 %cond, -2
  %cond45 = zext i1 %enable to i32
  %or = or i32 %and43, %cond45
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %or, i32 noundef 0, i32 noundef 13) #3
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false78

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %sriov_rreg65 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %17 = ptrtoint ptr %sriov_rreg65 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sriov_rreg65, align 4
  %tobool66.not = icmp eq ptr %18, null
  br i1 %tobool66.not, label %land.lhs.true61.cond.false78_crit_edge, label %cond.true67

land.lhs.true61.cond.false78_crit_edge:           ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false78

cond.true67:                                      ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #5
  %call77 = tail call i32 %18(ptr noundef %adev, i32 noundef %add51123, i32 noundef 0, i32 noundef 13) #3
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
  %call84 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add51126, i32 noundef 0) #3
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false78, %cond.true67
  %add51124 = phi i32 [ %add51123, %cond.true67 ], [ %add51126, %cond.false78 ]
  %cond86 = phi i32 [ %call77, %cond.true67 ], [ %call84, %cond.false78 ]
  %and87 = and i32 %cond86, -2
  %cond89 = zext i1 %enable to i32
  %or91 = or i32 %and87, %cond89
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add51124, i32 noundef %or91, i32 noundef 0) #3
  br label %cond.end92

cond.end92:                                       ; preds = %cond.end85, %cond.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v6_1_enable_doorbell_selfring_aperture(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true10

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true10:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %land.lhs.true10.cond.false_crit_edge, label %cond.true

land.lhs.true10.cond.false_crit_edge:             ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %11, i32 noundef 0, i32 noundef 13) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add26, i32 noundef %17, i32 noundef 0) #3
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false58

land.lhs.true34:                                  ; preds = %cond.end
  %funcs37 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs37, align 4
  %tobool38.not = icmp eq ptr %21, null
  br i1 %tobool38.not, label %land.lhs.true34.cond.false58_crit_edge, label %land.lhs.true39

land.lhs.true34.cond.false58_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false58

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %sriov_wreg43 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg43, align 4
  %tobool44.not = icmp eq ptr %23, null
  br i1 %tobool44.not, label %land.lhs.true39.cond.false58_crit_edge, label %cond.true45

land.lhs.true39.cond.false58_crit_edge:           ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false58

cond.true45:                                      ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %24 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx53, align 4
  %add54 = add i32 %27, 243
  tail call void %23(ptr noundef %adev, i32 noundef %add54, i32 noundef 0, i32 noundef 0, i32 noundef 13) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add63, i32 noundef 0, i32 noundef 0) #3
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false94

land.lhs.true73:                                  ; preds = %if.end
  %funcs76 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %34 = ptrtoint ptr %funcs76 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs76, align 4
  %tobool77.not = icmp eq ptr %35, null
  br i1 %tobool77.not, label %land.lhs.true73.cond.false94_crit_edge, label %land.lhs.true78

land.lhs.true73.cond.false94_crit_edge:           ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false94

land.lhs.true78:                                  ; preds = %land.lhs.true73
  %sriov_wreg82 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sriov_wreg82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_wreg82, align 4
  %tobool83.not = icmp eq ptr %37, null
  br i1 %tobool83.not, label %land.lhs.true78.cond.false94_crit_edge, label %cond.true84

land.lhs.true78.cond.false94_crit_edge:           ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false94

cond.true84:                                      ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx90 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %38 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx90, align 8
  %arrayidx92 = getelementptr i32, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx92, align 4
  %add93 = add i32 %41, 245
  tail call void %37(ptr noundef %adev, i32 noundef %add93, i32 noundef %tmp.0, i32 noundef 0, i32 noundef 13) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add99, i32 noundef %tmp.0, i32 noundef 0) #3
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false94, %cond.true84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v6_1_ih_doorbell_range(ptr noundef %adev, i1 noundef zeroext %use_doorbell, i32 noundef %doorbell_index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 466
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #3
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
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  br i1 %use_doorbell, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %and20 = and i32 %cond, -2035709
  %shl = shl i32 %doorbell_index, 2
  %and21 = and i32 %shl, 4092
  %or = or i32 %and21, %and20
  %or23 = or i32 %or, 393216
  br label %if.end

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false50

land.lhs.true30:                                  ; preds = %if.end
  %funcs33 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs33, align 4
  %tobool34.not = icmp eq ptr %17, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false50_crit_edge, label %land.lhs.true35

land.lhs.true30.cond.false50_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false50

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool39.not = icmp eq ptr %19, null
  br i1 %tobool39.not, label %land.lhs.true35.cond.false50_crit_edge, label %cond.true40

land.lhs.true35.cond.false50_crit_edge:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false50

cond.true40:                                      ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx46 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %20 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx46, align 8
  %arrayidx48 = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %23, 466
  tail call void %19(ptr noundef %adev, i32 noundef %add49, i32 noundef %ih_doorbell_range.0, i32 noundef 0, i32 noundef 13) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add55, i32 noundef %ih_doorbell_range.0, i32 noundef 0) #3
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false50, %cond.true40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v6_1_update_medium_grain_clock_gating(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 286786656) #3
  br i1 %enable, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %2 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cg_flags, align 8
  %and = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %call, 487
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %and2 = and i32 %call, -488
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %data.0 = phi i32 [ %or, %if.then ], [ %and2, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %data.0)
  %cmp.not = icmp eq i32 %call, %data.0
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 286786656, i32 noundef %data.0) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v6_1_update_medium_grain_light_sleep(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 286785648) #3
  br i1 %enable, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 286785648, i32 noundef %data.0) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v6_1_get_clockgating_state(ptr noundef %adev, ptr nocapture noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 286786656) #3
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  %call2 = tail call i32 %5(ptr noundef %adev, i32 noundef 286785648) #3
  %and3 = and i32 %call2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
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
define internal void @nbio_v6_1_ih_control(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %shr, i32 noundef 0, i32 noundef 13) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17, i32 noundef %shr19, i32 noundef 0) #3
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false44

land.lhs.true24:                                  ; preds = %cond.end
  %funcs27 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs27, align 4
  %tobool28.not = icmp eq ptr %21, null
  br i1 %tobool28.not, label %land.lhs.true24.cond.false44_crit_edge, label %land.lhs.true29

land.lhs.true24.cond.false44_crit_edge:           ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false44

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_rreg, align 4
  %tobool33.not = icmp eq ptr %23, null
  br i1 %tobool33.not, label %land.lhs.true29.cond.false44_crit_edge, label %cond.true34

land.lhs.true29.cond.false44_crit_edge:           ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false44

cond.true34:                                      ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %27, 241
  %call = tail call i32 %23(ptr noundef %adev, i32 noundef %add43, i32 noundef 0, i32 noundef 13) #3
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
  %call50 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add49, i32 noundef 0) #3
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false80

land.lhs.true59:                                  ; preds = %cond.end51
  %funcs62 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %34 = ptrtoint ptr %funcs62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs62, align 4
  %tobool63.not = icmp eq ptr %35, null
  br i1 %tobool63.not, label %land.lhs.true59.cond.false80_crit_edge, label %land.lhs.true64

land.lhs.true59.cond.false80_crit_edge:           ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false80

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %sriov_wreg68 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sriov_wreg68 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_wreg68, align 4
  %tobool69.not = icmp eq ptr %37, null
  br i1 %tobool69.not, label %land.lhs.true64.cond.false80_crit_edge, label %cond.true70

land.lhs.true64.cond.false80_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false80

cond.true70:                                      ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx76 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %38 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx76, align 8
  %arrayidx78 = getelementptr i32, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx78, align 4
  %add79 = add i32 %41, 241
  tail call void %37(ptr noundef %adev, i32 noundef %add79, i32 noundef %and53, i32 noundef 0, i32 noundef 13) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add85, i32 noundef %and53, i32 noundef 0) #3
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false80, %cond.true70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v6_1_init_registers(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 286785604) #3
  %or = and i32 %call, -939524097
  %or2 = or i32 %or, 402653184
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %or2)
  %cmp.not = icmp eq i32 %call, %or2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %2 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_wreg, align 4
  tail call void %3(ptr noundef %adev, i32 noundef 286785604, i32 noundef %or2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_rreg, align 8
  %call4 = tail call i32 %5(ptr noundef %adev, i32 noundef 286785664) #3
  %or6 = or i32 %call4, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %or6)
  %cmp7.not = icmp eq i32 %call4, %or6
  br i1 %cmp7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg9 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %6 = ptrtoint ptr %pcie_wreg9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_wreg9, align 4
  tail call void %7(ptr noundef %adev, i32 noundef 286785664, i32 noundef %or6) #3
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt, align 8
  %and11 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.end10.if.end16_crit_edge, label %if.then12

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %arrayidx14 = getelementptr i32, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %add = shl i32 %13, 2
  %shl = add i32 %add, 988
  %rmmio_remap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 34
  %14 = ptrtoint ptr %rmmio_remap to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl, ptr %rmmio_remap, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end10.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v6_1_remap_hdp_registers(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %11, i32 noundef 0, i32 noundef 13) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add19, i32 noundef %17, i32 noundef 0) #3
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false51

land.lhs.true27:                                  ; preds = %cond.end
  %funcs30 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs30, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %land.lhs.true27.cond.false51_crit_edge, label %land.lhs.true32

land.lhs.true27.cond.false51_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false51

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %sriov_wreg36 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg36, align 4
  %tobool37.not = icmp eq ptr %23, null
  br i1 %tobool37.not, label %land.lhs.true32.cond.false51_crit_edge, label %cond.true38

land.lhs.true32.cond.false51_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false51

cond.true38:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void %23(ptr noundef %adev, i32 noundef %add47, i32 noundef %add50, i32 noundef 0, i32 noundef 13) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add56, i32 noundef %add59, i32 noundef 0) #3
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false51, %cond.true38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v6_1_program_aspm(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 286524032) #3
  %and1 = and i32 %call, -130817
  %or = or i32 %and1, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %or)
  %cmp.not = icmp eq i32 %call, %or
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %2 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_wreg, align 4
  tail call void %3(ptr noundef %adev, i32 noundef 286524032, i32 noundef %or) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_rreg, align 8
  %call3 = tail call i32 %5(ptr noundef %adev, i32 noundef 286524144) #3
  %or4 = or i32 %call3, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %or4)
  %cmp5.not = icmp eq i32 %call3, %or4
  br i1 %cmp5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %6 = ptrtoint ptr %pcie_wreg7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_wreg7, align 4
  tail call void %7(ptr noundef %adev, i32 noundef 286524144, i32 noundef %or4) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %8 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie_rreg, align 8
  %call10 = tail call i32 %9(ptr noundef %adev, i32 noundef 269721692) #3
  %or11 = or i32 %call10, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %or11)
  %cmp12.not = icmp eq i32 %call10, %or11
  br i1 %cmp12.not, label %if.end8.if.end15_crit_edge, label %if.then13

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg14 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %10 = ptrtoint ptr %pcie_wreg14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie_wreg14, align 4
  tail call void %11(ptr noundef %adev, i32 noundef 269721692, i32 noundef %or11) #3
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end8.if.end15_crit_edge
  %12 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_rreg, align 8
  %call17 = tail call i32 %13(ptr noundef %adev, i32 noundef 286524116) #3
  %or18 = or i32 %call17, 8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %or18)
  %cmp19.not = icmp eq i32 %call17, %or18
  br i1 %cmp19.not, label %if.end15.if.end22_crit_edge, label %if.then20

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg21 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %14 = ptrtoint ptr %pcie_wreg21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcie_wreg21, align 4
  tail call void %15(ptr noundef %adev, i32 noundef 286524116, i32 noundef %or18) #3
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end15.if.end22_crit_edge
  %16 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcie_rreg, align 8
  %call24 = tail call i32 %17(ptr noundef %adev, i32 noundef 269628556) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp27.not = icmp eq i32 %call24, 0
  br i1 %cmp27.not, label %if.end22.if.end30_crit_edge, label %if.then28

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg29 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %18 = ptrtoint ptr %pcie_wreg29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcie_wreg29, align 4
  tail call void %19(ptr noundef %adev, i32 noundef 269628556, i32 noundef 0) #3
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end22.if.end30_crit_edge
  %20 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcie_rreg, align 8
  %call32 = tail call i32 %21(ptr noundef %adev, i32 noundef 269628564) #3
  %and33 = and i32 %call32, -65536
  call void @__sanitizer_cov_trace_cmp4(i32 %call32, i32 %and33)
  %cmp34.not = icmp eq i32 %call32, %and33
  br i1 %cmp34.not, label %if.end30.if.end37_crit_edge, label %if.then35

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg36 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %22 = ptrtoint ptr %pcie_wreg36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcie_wreg36, align 4
  tail call void %23(ptr noundef %adev, i32 noundef 269628564, i32 noundef %and33) #3
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end30.if.end37_crit_edge
  %24 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcie_rreg, align 8
  %call39 = tail call i32 %25(ptr noundef %adev, i32 noundef 269746316) #3
  %and40 = and i32 %call39, -1025
  call void @__sanitizer_cov_trace_cmp4(i32 %call39, i32 %and40)
  %cmp41.not = icmp eq i32 %call39, %and40
  br i1 %cmp41.not, label %if.end37.if.end44_crit_edge, label %if.then42

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg43 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %26 = ptrtoint ptr %pcie_wreg43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcie_wreg43, align 4
  tail call void %27(ptr noundef %adev, i32 noundef 269746316, i32 noundef %and40) #3
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end37.if.end44_crit_edge
  %pcie_wreg45 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %28 = ptrtoint ptr %pcie_wreg45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcie_wreg45, align 4
  tail call void %29(ptr noundef %adev, i32 noundef 269746980, i32 noundef 268505089) #3
  %30 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcie_rreg, align 8
  %call47 = tail call i32 %31(ptr noundef %adev, i32 noundef 286524100) #3
  %or48 = and i32 %call47, -2490369
  %and49 = or i32 %or48, 393216
  call void @__sanitizer_cov_trace_cmp4(i32 %call47, i32 %and49)
  %cmp50.not = icmp eq i32 %call47, %and49
  br i1 %cmp50.not, label %if.end44.if.end53_crit_edge, label %if.then51

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %pcie_wreg45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcie_wreg45, align 4
  tail call void %33(ptr noundef %adev, i32 noundef 286524100, i32 noundef %and49) #3
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end44.if.end53_crit_edge
  %34 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcie_rreg, align 8
  %call55 = tail call i32 %35(ptr noundef %adev, i32 noundef 286524140) #3
  %or56 = or i32 %call55, -2145386496
  call void @__sanitizer_cov_trace_cmp4(i32 %call55, i32 %or56)
  %cmp57.not = icmp eq i32 %call55, %or56
  br i1 %cmp57.not, label %if.end53.if.end60_crit_edge, label %if.then58

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %pcie_wreg45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcie_wreg45, align 4
  tail call void %37(ptr noundef %adev, i32 noundef 286524140, i32 noundef %or56) #3
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end53.if.end60_crit_edge
  %38 = ptrtoint ptr %pcie_wreg45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcie_wreg45, align 4
  tail call void %39(ptr noundef %adev, i32 noundef 269628720, i32 noundef 30187) #3
  %40 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcie_rreg, align 8
  %call.i = tail call i32 %41(ptr noundef %adev, i32 noundef 269628552) #3
  %and.i = and i32 %call.i, -16385
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %and.i)
  %cmp.not.i = icmp eq i32 %call.i, %and.i
  br i1 %cmp.not.i, label %if.end60.if.end.i_crit_edge, label %if.then.i

if.end60.if.end.i_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %pcie_wreg45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcie_wreg45, align 4
  tail call void %43(ptr noundef %adev, i32 noundef 269628552, i32 noundef %and.i) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end60.if.end.i_crit_edge
  %44 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcie_rreg, align 8
  %call3.i = tail call i32 %45(ptr noundef %adev, i32 noundef 269628720) #3
  %and4.i = and i32 %call3.i, -16385
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %and4.i)
  %cmp5.not.i = icmp eq i32 %call3.i, %and4.i
  br i1 %cmp5.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %pcie_wreg45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcie_wreg45, align 4
  tail call void %47(ptr noundef %adev, i32 noundef 269628720, i32 noundef %and4.i) #3
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i.if.end8.i_crit_edge
  %48 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcie_rreg, align 8
  %call10.i = tail call i32 %49(ptr noundef %adev, i32 noundef 269746316) #3
  %or.i = or i32 %call10.i, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i, i32 %or.i)
  %cmp11.not.i = icmp eq i32 %call10.i, %or.i
  br i1 %cmp11.not.i, label %if.end8.i.nbio_v6_1_program_ltr.exit_crit_edge, label %if.then12.i

if.end8.i.nbio_v6_1_program_ltr.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nbio_v6_1_program_ltr.exit

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  %50 = ptrtoint ptr %pcie_wreg45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcie_wreg45, align 4
  tail call void %51(ptr noundef %adev, i32 noundef 269746316, i32 noundef %or.i) #3
  br label %nbio_v6_1_program_ltr.exit

nbio_v6_1_program_ltr.exit:                       ; preds = %if.then12.i, %if.end8.i.nbio_v6_1_program_ltr.exit_crit_edge
  %52 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcie_rreg, align 8
  %call62 = tail call i32 %53(ptr noundef %adev, i32 noundef 269628556) #3
  %or64 = or i32 %call62, 1072608
  call void @__sanitizer_cov_trace_cmp4(i32 %call62, i32 %or64)
  %cmp65.not = icmp eq i32 %call62, %or64
  br i1 %cmp65.not, label %nbio_v6_1_program_ltr.exit.if.end68_crit_edge, label %if.then66

nbio_v6_1_program_ltr.exit.if.end68_crit_edge:    ; preds = %nbio_v6_1_program_ltr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

if.then66:                                        ; preds = %nbio_v6_1_program_ltr.exit
  call void @__sanitizer_cov_trace_pc() #5
  %54 = ptrtoint ptr %pcie_wreg45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pcie_wreg45, align 4
  tail call void %55(ptr noundef %adev, i32 noundef 269628556, i32 noundef %or64) #3
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %nbio_v6_1_program_ltr.exit.if.end68_crit_edge
  %56 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcie_rreg, align 8
  %call70 = tail call i32 %57(ptr noundef %adev, i32 noundef 269628564) #3
  %or71 = or i32 %call70, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %call70, i32 %or71)
  %cmp72.not = icmp eq i32 %call70, %or71
  br i1 %cmp72.not, label %if.end68.if.end75_crit_edge, label %if.then73

if.end68.if.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end75

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  %58 = ptrtoint ptr %pcie_wreg45 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcie_wreg45, align 4
  tail call void %59(ptr noundef %adev, i32 noundef 269628564, i32 noundef %or71) #3
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end68.if.end75_crit_edge
  %60 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcie_rreg, align 8
  %call77 = tail call i32 %61(ptr noundef %adev, i32 noundef 286524032) #3
  %and78 = and i32 %call77, -106241
  %or80 = or i32 %and78, 102400
  call void @__sanitizer_cov_trace_cmp4(i32 %call77, i32 %or80)
  %cmp81.not = icmp eq i32 %call77, %or80
  br i1 %cmp81.not, label %if.end75.if.end84_crit_edge, label %if.then82

if.end75.if.end84_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end84

if.then82:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  %62 = ptrtoint ptr %pcie_wreg45 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcie_wreg45, align 4
  tail call void %63(ptr noundef %adev, i32 noundef 286524032, i32 noundef %or80) #3
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end75.if.end84_crit_edge
  %64 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcie_rreg, align 8
  %call86 = tail call i32 %65(ptr noundef %adev, i32 noundef 286524116) #3
  %and87 = and i32 %call86, -8388609
  call void @__sanitizer_cov_trace_cmp4(i32 %call86, i32 %and87)
  %cmp88.not = icmp eq i32 %call86, %and87
  br i1 %cmp88.not, label %if.end84.if.end91_crit_edge, label %if.then89

if.end84.if.end91_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end91

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  %66 = ptrtoint ptr %pcie_wreg45 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcie_wreg45, align 4
  tail call void %67(ptr noundef %adev, i32 noundef 286524116, i32 noundef %and87) #3
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end84.if.end91_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @nbio_v6_1_hdp_flush_reg, !1, !"nbio_v6_1_hdp_flush_reg", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v6_1.c", i32 248, i32 33}
!2 = !{ptr @nbio_v6_1_funcs, !3, !"nbio_v6_1_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v6_1.c", i32 390, i32 32}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
