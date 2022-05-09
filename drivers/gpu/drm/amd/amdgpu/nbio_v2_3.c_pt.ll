; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/nbio_v2_3.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/nbio_v2_3.c"
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@nbio_v2_3_hdp_flush_reg = dso_local constant { %struct.nbio_hdp_flush_reg, [56 x i8] } { %struct.nbio_hdp_flush_reg { i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@nbio_v2_3_hdp_flush_reg_sc = dso_local constant { %struct.nbio_hdp_flush_reg, [56 x i8] } { %struct.nbio_hdp_flush_reg { i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576 }, [56 x i8] zeroinitializer }, align 32
@nbio_v2_3_funcs = dso_local constant { %struct.amdgpu_nbio_funcs, [52 x i8] } { %struct.amdgpu_nbio_funcs { ptr null, ptr @nbio_v2_3_get_hdp_flush_req_offset, ptr @nbio_v2_3_get_hdp_flush_done_offset, ptr @nbio_v2_3_get_pcie_index_offset, ptr @nbio_v2_3_get_pcie_data_offset, ptr null, ptr null, ptr @nbio_v2_3_get_rev_id, ptr @nbio_v2_3_mc_access_enable, ptr @nbio_v2_3_get_memsize, ptr @nbio_v2_3_sdma_doorbell_range, ptr @nbio_v2_3_vcn_doorbell_range, ptr @nbio_v2_3_enable_doorbell_aperture, ptr @nbio_v2_3_enable_doorbell_selfring_aperture, ptr @nbio_v2_3_ih_doorbell_range, ptr null, ptr @nbio_v2_3_update_medium_grain_clock_gating, ptr @nbio_v2_3_update_medium_grain_light_sleep, ptr @nbio_v2_3_get_clockgating_state, ptr @nbio_v2_3_ih_control, ptr @nbio_v2_3_init_registers, ptr @nbio_v2_3_remap_hdp_registers, ptr @nbio_v2_3_enable_aspm, ptr @nbio_v2_3_program_aspm, ptr @nbio_v2_3_apply_lc_spc_mode_wa, ptr @nbio_v2_3_apply_l1_link_width_reconfig_wa, ptr @nbio_v2_3_clear_doorbell_interrupt }, [52 x i8] zeroinitializer }, align 32
@switch.table.nbio_v2_3_sdma_doorbell_range = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 464, i32 465, i32 470], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"nbio_v2_3_hdp_flush_reg\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 316, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"nbio_v2_3_hdp_flush_reg_sc\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 331, i32 33 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"nbio_v2_3_funcs\00", align 1
@___asan_gen_.8 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/nbio_v2_3.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 566, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [43 x i8] c"switch.table.nbio_v2_3_sdma_doorbell_range\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @nbio_v2_3_hdp_flush_reg, ptr @nbio_v2_3_hdp_flush_reg_sc, ptr @nbio_v2_3_funcs, ptr @switch.table.nbio_v2_3_sdma_doorbell_range], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v2_3_hdp_flush_reg to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v2_3_hdp_flush_reg_sc to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbio_v2_3_funcs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nbio_v2_3_sdma_doorbell_range to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nbio_v2_3_get_hdp_flush_req_offset(ptr nocapture noundef readonly %adev) #0 align 64 {
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
define internal i32 @nbio_v2_3_get_hdp_flush_done_offset(ptr nocapture noundef readonly %adev) #0 align 64 {
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
define internal i32 @nbio_v2_3_get_pcie_index_offset(ptr nocapture noundef readonly %adev) #0 align 64 {
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
define internal i32 @nbio_v2_3_get_pcie_data_offset(ptr nocapture noundef readonly %adev) #0 align 64 {
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
define internal i32 @nbio_v2_3_get_rev_id(ptr noundef %adev) #1 align 64 {
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
  br i1 %tobool.not, label %cond.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %2 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx18, align 8
  %arrayidx20 = getelementptr i32, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %5, 17
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21, i32 noundef 0) #3
  %and23 = lshr i32 %call22, 24
  %shr = and i32 %and23, 15
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %cond.false ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v2_3_mc_access_enable(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
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
define internal i32 @nbio_v2_3_get_memsize(ptr noundef %adev) #1 align 64 {
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
define internal void @nbio_v2_3_sdma_doorbell_range(ptr noundef %adev, i32 noundef %instance, i1 noundef zeroext %use_doorbell, i32 noundef %doorbell_index, i32 noundef %doorbell_size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %instance)
  %0 = icmp ult i32 %instance, 3
  br i1 %0, label %switch.lookup, label %entry.cond.end26_crit_edge

entry.cond.end26_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end26

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.nbio_v2_3_sdma_doorbell_range, i32 0, i32 %instance
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cond.end26

cond.end26:                                       ; preds = %switch.lookup, %entry.cond.end26_crit_edge
  %.sink46 = phi i32 [ %switch.load, %switch.lookup ], [ 471, %entry.cond.end26_crit_edge ]
  %arrayidx6 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr i32, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx8, align 4
  %add9 = add i32 %5, %.sink46
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add9, i32 noundef 0) #3
  br i1 %use_doorbell, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %call, -2035709
  %shl = shl i32 %doorbell_index, 2
  %and28 = and i32 %shl, 4092
  %shl30 = shl i32 %doorbell_size, 16
  %and31 = and i32 %shl30, 2031616
  %or = or i32 %and31, %and28
  %or32 = or i32 %or, %and
  br label %if.end

if.else:                                          ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #5
  %and33 = and i32 %call, -2031617
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %doorbell_range.0 = phi i32 [ %or32, %if.then ], [ %and33, %if.else ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add9, i32 noundef %doorbell_range.0, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v2_3_vcn_doorbell_range(ptr noundef %adev, i1 noundef zeroext %use_doorbell, i32 noundef %doorbell_index, i32 noundef %instance) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %instance)
  %tobool.not = icmp eq i32 %instance, 0
  %arrayidx4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr i32, ptr %1, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx6, align 4
  %. = select i1 %tobool.not, i32 467, i32 472
  %add7 = add i32 %3, %.
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add7, i32 noundef 0) #3
  br i1 %use_doorbell, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %call, -2035709
  %shl = shl i32 %doorbell_index, 2
  %and9 = and i32 %shl, 4092
  %or = or i32 %and9, %and
  %or11 = or i32 %or, 524288
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and12 = and i32 %call, -2031617
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %doorbell_range.0 = phi i32 [ %or11, %if.then ], [ %and12, %if.else ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add7, i32 noundef %doorbell_range.0, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v2_3_enable_doorbell_aperture(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
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
define internal void @nbio_v2_3_enable_doorbell_selfring_aperture(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
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
define internal void @nbio_v2_3_ih_doorbell_range(ptr noundef %adev, i1 noundef zeroext %use_doorbell, i32 noundef %doorbell_index) #1 align 64 {
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
  %or23 = or i32 %or, 131072
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
define internal void @nbio_v2_3_update_medium_grain_clock_gating(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %0 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags, align 8
  %and = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %3(ptr noundef %adev, i32 noundef 286786656) #3
  %and3 = and i32 %call, -484
  %masksel = select i1 %enable, i32 483, i32 0
  %data.0 = or i32 %and3, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %data.0)
  %cmp.not = icmp eq i32 %call, %data.0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 286786656, i32 noundef %data.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v2_3_update_medium_grain_light_sleep(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %0 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags, align 8
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %3(ptr noundef %adev, i32 noundef 286785648) #3
  %and3 = and i32 %call, -851969
  %masksel = select i1 %enable, i32 851968, i32 0
  %data.0 = or i32 %and3, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %data.0)
  %cmp.not = icmp eq i32 %call, %data.0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 286785648, i32 noundef %data.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v2_3_get_clockgating_state(ptr noundef %adev, ptr nocapture noundef %flags) #1 align 64 {
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
define internal void @nbio_v2_3_ih_control(ptr noundef %adev) #1 align 64 {
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
define internal void @nbio_v2_3_init_registers(ptr noundef %adev) #1 align 64 {
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
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and3 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx6 = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %add = shl i32 %9, 2
  %shl = add i32 %add, 988
  %rmmio_remap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 34
  %10 = ptrtoint ptr %rmmio_remap to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl, ptr %rmmio_remap, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v2_3_remap_hdp_registers(ptr noundef %adev) #1 align 64 {
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
define internal void @nbio_v2_3_enable_aspm(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %0 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef 286524032) #3
  %and = and i32 %call, -130817
  br i1 %enable, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %is_thunderbolt.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %is_thunderbolt.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load.i = load i40, ptr %is_thunderbolt.i, align 1
  %5 = and i40 %bf.load.i, 8192
  %tobool.not.i = icmp eq i40 %5, 0
  br i1 %tobool.not.i, label %if.then.while.cond.i_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then.while.cond.i_crit_edge:                   ; preds = %if.then
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then.while.cond.i_crit_edge
  %parent.0.i = phi ptr [ %16, %while.body.i.while.cond.i_crit_edge ], [ %3, %if.then.while.cond.i_crit_edge ]
  %is_virtfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %parent.0.i, i32 0, i32 49
  %6 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %7 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %7, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

while.cond.i.pci_physfn.exit.i.i_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = getelementptr inbounds %struct.pci_dev, ptr %parent.0.i, i32 0, i32 66
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %while.cond.i.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %10, %if.then.i.i.i ], [ %parent.0.i, %while.cond.i.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.if.end10_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.if.end10_crit_edge:           ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %self.i.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %pci_upstream_bridge.exit.i.if.end10_crit_edge, label %while.body.i

pci_upstream_bridge.exit.i.if.end10_crit_edge:    ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

while.body.i:                                     ; preds = %pci_upstream_bridge.exit.i
  %is_thunderbolt2.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 49
  %17 = ptrtoint ptr %is_thunderbolt2.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 5)
  %bf.load3.i = load i40, ptr %is_thunderbolt2.i, align 1
  %18 = and i40 %bf.load3.i, 8192
  %tobool7.not.i = icmp eq i40 %18, 0
  br i1 %tobool7.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.if.end10_crit_edge

while.body.i.if.end10_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i

if.end10:                                         ; preds = %while.body.i.if.end10_crit_edge, %pci_upstream_bridge.exit.i.if.end10_crit_edge, %pci_physfn.exit.i.i.if.end10_crit_edge, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %.sink30 = phi i32 [ 57344, %if.then.if.end10_crit_edge ], [ 65536, %entry.if.end10_crit_edge ], [ 36864, %pci_physfn.exit.i.i.if.end10_crit_edge ], [ 36864, %pci_upstream_bridge.exit.i.if.end10_crit_edge ], [ 57344, %while.body.i.if.end10_crit_edge ]
  %or9 = or i32 %and, %.sink30
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %or9)
  %cmp.not = icmp eq i32 %call, %or9
  br i1 %cmp.not, label %if.end10.if.end12_crit_edge, label %if.then11

if.end10.if.end12_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %19 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcie_wreg, align 4
  tail call void %20(ptr noundef %adev, i32 noundef 286524032, i32 noundef %or9) #3
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end10.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v2_3_program_aspm(ptr noundef %adev) #1 align 64 {
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
  %call10 = tail call i32 %9(ptr noundef %adev, i32 noundef 269722140) #3
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
  tail call void %11(ptr noundef %adev, i32 noundef 269722140, i32 noundef %or11) #3
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
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and23 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not = icmp eq i32 %and23, 0
  br i1 %tobool.not, label %if.end22.cond.false_crit_edge, label %land.lhs.true

if.end22.cond.false_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end22
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true25

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true25:                                  ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_rreg, align 4
  %tobool29.not = icmp eq ptr %21, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false_crit_edge, label %cond.true

land.lhs.true25.cond.false_crit_edge:             ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 8
  %arrayidx35 = getelementptr i32, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx35, align 4
  %add = add i32 %25, 3
  %call36 = tail call i32 %21(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true25.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end22.cond.false_crit_edge
  %arrayidx38 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx38, align 8
  %arrayidx40 = getelementptr i32, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx40, align 4
  %add41 = add i32 %29, 3
  %call42 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add41, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call36, %cond.true ], [ %call42, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp45.not = icmp eq i32 %cond, 0
  br i1 %cmp45.not, label %cond.end.if.end78_crit_edge, label %if.then46

cond.end.if.end78_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end78

if.then46:                                        ; preds = %cond.end
  %30 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virt, align 8
  %and49 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then46.cond.false71_crit_edge, label %land.lhs.true51

if.then46.cond.false71_crit_edge:                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false71

land.lhs.true51:                                  ; preds = %if.then46
  %funcs54 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %32 = ptrtoint ptr %funcs54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs54, align 4
  %tobool55.not = icmp eq ptr %33, null
  br i1 %tobool55.not, label %land.lhs.true51.cond.false71_crit_edge, label %land.lhs.true56

land.lhs.true51.cond.false71_crit_edge:           ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false71

land.lhs.true56:                                  ; preds = %land.lhs.true51
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sriov_wreg, align 4
  %tobool60.not = icmp eq ptr %35, null
  br i1 %tobool60.not, label %land.lhs.true56.cond.false71_crit_edge, label %cond.true61

land.lhs.true56.cond.false71_crit_edge:           ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false71

cond.true61:                                      ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx67 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %36 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx67, align 8
  %arrayidx69 = getelementptr i32, ptr %37, i32 2
  %38 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx69, align 4
  %add70 = add i32 %39, 3
  tail call void %35(ptr noundef %adev, i32 noundef %add70, i32 noundef 0, i32 noundef 0, i32 noundef 13) #3
  br label %if.end78

cond.false71:                                     ; preds = %land.lhs.true56.cond.false71_crit_edge, %land.lhs.true51.cond.false71_crit_edge, %if.then46.cond.false71_crit_edge
  %arrayidx73 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %40 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx73, align 8
  %arrayidx75 = getelementptr i32, ptr %41, i32 2
  %42 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx75, align 4
  %add76 = add i32 %43, 3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add76, i32 noundef 0, i32 noundef 0) #3
  br label %if.end78

if.end78:                                         ; preds = %cond.false71, %cond.true61, %cond.end.if.end78_crit_edge
  %44 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %virt, align 8
  %and81 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end78.cond.false105_crit_edge, label %land.lhs.true83

if.end78.cond.false105_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false105

land.lhs.true83:                                  ; preds = %if.end78
  %funcs86 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %46 = ptrtoint ptr %funcs86 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %funcs86, align 4
  %tobool87.not = icmp eq ptr %47, null
  br i1 %tobool87.not, label %land.lhs.true83.cond.false105_crit_edge, label %land.lhs.true88

land.lhs.true83.cond.false105_crit_edge:          ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false105

land.lhs.true88:                                  ; preds = %land.lhs.true83
  %sriov_rreg92 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %sriov_rreg92 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sriov_rreg92, align 4
  %tobool93.not = icmp eq ptr %49, null
  br i1 %tobool93.not, label %land.lhs.true88.cond.false105_crit_edge, label %cond.true94

land.lhs.true88.cond.false105_crit_edge:          ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false105

cond.true94:                                      ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx100 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %50 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx100, align 8
  %arrayidx102 = getelementptr i32, ptr %51, i32 2
  %52 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx102, align 4
  %add103 = add i32 %53, 5
  %call104 = tail call i32 %49(ptr noundef %adev, i32 noundef %add103, i32 noundef 0, i32 noundef 13) #3
  br label %cond.end112

cond.false105:                                    ; preds = %land.lhs.true88.cond.false105_crit_edge, %land.lhs.true83.cond.false105_crit_edge, %if.end78.cond.false105_crit_edge
  %arrayidx107 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %54 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx107, align 8
  %arrayidx109 = getelementptr i32, ptr %55, i32 2
  %56 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx109, align 4
  %add110 = add i32 %57, 5
  %call111 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add110, i32 noundef 0) #3
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false105, %cond.true94
  %cond113 = phi i32 [ %call104, %cond.true94 ], [ %call111, %cond.false105 ]
  %and114 = and i32 %cond113, -65536
  call void @__sanitizer_cov_trace_cmp4(i32 %cond113, i32 %and114)
  %cmp115.not = icmp eq i32 %cond113, %and114
  br i1 %cmp115.not, label %cond.end112.if.end149_crit_edge, label %if.then116

cond.end112.if.end149_crit_edge:                  ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end149

if.then116:                                       ; preds = %cond.end112
  %58 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %virt, align 8
  %and119 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.then116.cond.false142_crit_edge, label %land.lhs.true121

if.then116.cond.false142_crit_edge:               ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false142

land.lhs.true121:                                 ; preds = %if.then116
  %funcs124 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %60 = ptrtoint ptr %funcs124 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %funcs124, align 4
  %tobool125.not = icmp eq ptr %61, null
  br i1 %tobool125.not, label %land.lhs.true121.cond.false142_crit_edge, label %land.lhs.true126

land.lhs.true121.cond.false142_crit_edge:         ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false142

land.lhs.true126:                                 ; preds = %land.lhs.true121
  %sriov_wreg130 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %sriov_wreg130 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sriov_wreg130, align 4
  %tobool131.not = icmp eq ptr %63, null
  br i1 %tobool131.not, label %land.lhs.true126.cond.false142_crit_edge, label %cond.true132

land.lhs.true126.cond.false142_crit_edge:         ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false142

cond.true132:                                     ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx138 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %64 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx138, align 8
  %arrayidx140 = getelementptr i32, ptr %65, i32 2
  %66 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx140, align 4
  %add141 = add i32 %67, 5
  tail call void %63(ptr noundef %adev, i32 noundef %add141, i32 noundef %and114, i32 noundef 0, i32 noundef 13) #3
  br label %if.end149

cond.false142:                                    ; preds = %land.lhs.true126.cond.false142_crit_edge, %land.lhs.true121.cond.false142_crit_edge, %if.then116.cond.false142_crit_edge
  %arrayidx144 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %68 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx144, align 8
  %arrayidx146 = getelementptr i32, ptr %69, i32 2
  %70 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx146, align 4
  %add147 = add i32 %71, 5
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add147, i32 noundef %and114, i32 noundef 0) #3
  br label %if.end149

if.end149:                                        ; preds = %cond.false142, %cond.true132, %cond.end112.if.end149_crit_edge
  %72 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcie_rreg, align 8
  %call151 = tail call i32 %73(ptr noundef %adev, i32 noundef 269746316) #3
  %and152 = and i32 %call151, -1025
  call void @__sanitizer_cov_trace_cmp4(i32 %call151, i32 %and152)
  %cmp153.not = icmp eq i32 %call151, %and152
  br i1 %cmp153.not, label %if.end149.if.end156_crit_edge, label %if.then154

if.end149.if.end156_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end156

if.then154:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_wreg155 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %74 = ptrtoint ptr %pcie_wreg155 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pcie_wreg155, align 4
  tail call void %75(ptr noundef %adev, i32 noundef 269746316, i32 noundef %and152) #3
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %if.end149.if.end156_crit_edge
  %pcie_wreg157 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %76 = ptrtoint ptr %pcie_wreg157 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcie_wreg157, align 4
  tail call void %77(ptr noundef %adev, i32 noundef 269746980, i32 noundef 268505089) #3
  %78 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pcie_rreg, align 8
  %call159 = tail call i32 %79(ptr noundef %adev, i32 noundef 286524100) #3
  %or160 = and i32 %call159, -2490369
  %and161 = or i32 %or160, 393216
  call void @__sanitizer_cov_trace_cmp4(i32 %call159, i32 %and161)
  %cmp162.not = icmp eq i32 %call159, %and161
  br i1 %cmp162.not, label %if.end156.if.end165_crit_edge, label %if.then163

if.end156.if.end165_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end165

if.then163:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #5
  %80 = ptrtoint ptr %pcie_wreg157 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pcie_wreg157, align 4
  tail call void %81(ptr noundef %adev, i32 noundef 286524100, i32 noundef %and161) #3
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.end156.if.end165_crit_edge
  %82 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pcie_rreg, align 8
  %call167 = tail call i32 %83(ptr noundef %adev, i32 noundef 286524140) #3
  %or168 = or i32 %call167, -2145386496
  call void @__sanitizer_cov_trace_cmp4(i32 %call167, i32 %or168)
  %cmp169.not = icmp eq i32 %call167, %or168
  br i1 %cmp169.not, label %if.end165.if.end172_crit_edge, label %if.then170

if.end165.if.end172_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end172

if.then170:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #5
  %84 = ptrtoint ptr %pcie_wreg157 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pcie_wreg157, align 4
  tail call void %85(ptr noundef %adev, i32 noundef 286524140, i32 noundef %or168) #3
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.end165.if.end172_crit_edge
  %86 = ptrtoint ptr %pcie_wreg157 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pcie_wreg157, align 4
  tail call void %87(ptr noundef %adev, i32 noundef 269628728, i32 noundef 30187) #3
  %88 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %virt, align 8
  %and.i = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end172.cond.false.i_crit_edge, label %land.lhs.true.i

if.end172.cond.false.i_crit_edge:                 ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end172
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %90 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %91, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %91, i32 0, i32 13
  %92 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool6.not.i = icmp eq ptr %93, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true2.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx12.i = getelementptr i32, ptr %95, i32 2
  %96 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx12.i, align 4
  %add.i = add i32 %97, 2
  %call.i = tail call i32 %93(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0, i32 noundef 13) #3
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end172.cond.false.i_crit_edge
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %98 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx16.i = getelementptr i32, ptr %99, i32 2
  %100 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %101, 2
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef 0) #3
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call18.i, %cond.false.i ]
  %and19.i = and i32 %cond.i, -16385
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %and19.i)
  %cmp.not.i = icmp eq i32 %cond.i, %and19.i
  br i1 %cmp.not.i, label %cond.end.i.if.end.i_crit_edge, label %if.then.i

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  %102 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %virt, align 8
  %and22.i = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.then.i.cond.false44.i_crit_edge, label %land.lhs.true24.i

if.then.i.cond.false44.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false44.i

land.lhs.true24.i:                                ; preds = %if.then.i
  %funcs27.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %104 = ptrtoint ptr %funcs27.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %funcs27.i, align 4
  %tobool28.not.i = icmp eq ptr %105, null
  br i1 %tobool28.not.i, label %land.lhs.true24.i.cond.false44.i_crit_edge, label %land.lhs.true29.i

land.lhs.true24.i.cond.false44.i_crit_edge:       ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false44.i

land.lhs.true29.i:                                ; preds = %land.lhs.true24.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %105, i32 0, i32 12
  %106 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool33.not.i = icmp eq ptr %107, null
  br i1 %tobool33.not.i, label %land.lhs.true29.i.cond.false44.i_crit_edge, label %cond.true34.i

land.lhs.true29.i.cond.false44.i_crit_edge:       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false44.i

cond.true34.i:                                    ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx40.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %108 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx40.i, align 8
  %arrayidx42.i = getelementptr i32, ptr %109, i32 2
  %110 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx42.i, align 4
  %add43.i = add i32 %111, 2
  tail call void %107(ptr noundef %adev, i32 noundef %add43.i, i32 noundef %and19.i, i32 noundef 0, i32 noundef 13) #3
  br label %if.end.i

cond.false44.i:                                   ; preds = %land.lhs.true29.i.cond.false44.i_crit_edge, %land.lhs.true24.i.cond.false44.i_crit_edge, %if.then.i.cond.false44.i_crit_edge
  %arrayidx46.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %112 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx46.i, align 8
  %arrayidx48.i = getelementptr i32, ptr %113, i32 2
  %114 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx48.i, align 4
  %add49.i = add i32 %115, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add49.i, i32 noundef %and19.i, i32 noundef 0) #3
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false44.i, %cond.true34.i, %cond.end.i.if.end.i_crit_edge
  %116 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pcie_rreg, align 8
  %call51.i = tail call i32 %117(ptr noundef %adev, i32 noundef 269628728) #3
  %and52.i = and i32 %call51.i, -16385
  call void @__sanitizer_cov_trace_cmp4(i32 %call51.i, i32 %and52.i)
  %cmp53.not.i = icmp eq i32 %call51.i, %and52.i
  br i1 %cmp53.not.i, label %if.end.i.if.end56.i_crit_edge, label %if.then54.i

if.end.i.if.end56.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56.i

if.then54.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %118 = ptrtoint ptr %pcie_wreg157 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pcie_wreg157, align 4
  tail call void %119(ptr noundef %adev, i32 noundef 269628728, i32 noundef %and52.i) #3
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %if.end.i.if.end56.i_crit_edge
  %120 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pcie_rreg, align 8
  %call58.i = tail call i32 %121(ptr noundef %adev, i32 noundef 269746316) #3
  %or.i = or i32 %call58.i, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %call58.i, i32 %or.i)
  %cmp59.not.i = icmp eq i32 %call58.i, %or.i
  br i1 %cmp59.not.i, label %if.end56.i.nbio_v2_3_program_ltr.exit_crit_edge, label %if.then60.i

if.end56.i.nbio_v2_3_program_ltr.exit_crit_edge:  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nbio_v2_3_program_ltr.exit

if.then60.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #5
  %122 = ptrtoint ptr %pcie_wreg157 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pcie_wreg157, align 4
  tail call void %123(ptr noundef %adev, i32 noundef 269746316, i32 noundef %or.i) #3
  br label %nbio_v2_3_program_ltr.exit

nbio_v2_3_program_ltr.exit:                       ; preds = %if.then60.i, %if.end56.i.nbio_v2_3_program_ltr.exit_crit_edge
  %124 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %virt, align 8
  %and175 = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %nbio_v2_3_program_ltr.exit.cond.false199_crit_edge, label %land.lhs.true177

nbio_v2_3_program_ltr.exit.cond.false199_crit_edge: ; preds = %nbio_v2_3_program_ltr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false199

land.lhs.true177:                                 ; preds = %nbio_v2_3_program_ltr.exit
  %funcs180 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %126 = ptrtoint ptr %funcs180 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %funcs180, align 4
  %tobool181.not = icmp eq ptr %127, null
  br i1 %tobool181.not, label %land.lhs.true177.cond.false199_crit_edge, label %land.lhs.true182

land.lhs.true177.cond.false199_crit_edge:         ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false199

land.lhs.true182:                                 ; preds = %land.lhs.true177
  %sriov_rreg186 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %127, i32 0, i32 13
  %128 = ptrtoint ptr %sriov_rreg186 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sriov_rreg186, align 4
  %tobool187.not = icmp eq ptr %129, null
  br i1 %tobool187.not, label %land.lhs.true182.cond.false199_crit_edge, label %cond.true188

land.lhs.true182.cond.false199_crit_edge:         ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false199

cond.true188:                                     ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx194 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %130 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx194, align 8
  %arrayidx196 = getelementptr i32, ptr %131, i32 2
  %132 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx196, align 4
  %add197 = add i32 %133, 3
  %call198 = tail call i32 %129(ptr noundef %adev, i32 noundef %add197, i32 noundef 0, i32 noundef 13) #3
  br label %cond.end206

cond.false199:                                    ; preds = %land.lhs.true182.cond.false199_crit_edge, %land.lhs.true177.cond.false199_crit_edge, %nbio_v2_3_program_ltr.exit.cond.false199_crit_edge
  %arrayidx201 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %134 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx201, align 8
  %arrayidx203 = getelementptr i32, ptr %135, i32 2
  %136 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx203, align 4
  %add204 = add i32 %137, 3
  %call205 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add204, i32 noundef 0) #3
  br label %cond.end206

cond.end206:                                      ; preds = %cond.false199, %cond.true188
  %cond207 = phi i32 [ %call198, %cond.true188 ], [ %call205, %cond.false199 ]
  %or209 = or i32 %cond207, 1072608
  call void @__sanitizer_cov_trace_cmp4(i32 %cond207, i32 %or209)
  %cmp210.not = icmp eq i32 %cond207, %or209
  br i1 %cmp210.not, label %cond.end206.if.end244_crit_edge, label %if.then211

cond.end206.if.end244_crit_edge:                  ; preds = %cond.end206
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end244

if.then211:                                       ; preds = %cond.end206
  %138 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %virt, align 8
  %and214 = and i32 %139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %if.then211.cond.false237_crit_edge, label %land.lhs.true216

if.then211.cond.false237_crit_edge:               ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false237

land.lhs.true216:                                 ; preds = %if.then211
  %funcs219 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %140 = ptrtoint ptr %funcs219 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %funcs219, align 4
  %tobool220.not = icmp eq ptr %141, null
  br i1 %tobool220.not, label %land.lhs.true216.cond.false237_crit_edge, label %land.lhs.true221

land.lhs.true216.cond.false237_crit_edge:         ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false237

land.lhs.true221:                                 ; preds = %land.lhs.true216
  %sriov_wreg225 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %141, i32 0, i32 12
  %142 = ptrtoint ptr %sriov_wreg225 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sriov_wreg225, align 4
  %tobool226.not = icmp eq ptr %143, null
  br i1 %tobool226.not, label %land.lhs.true221.cond.false237_crit_edge, label %cond.true227

land.lhs.true221.cond.false237_crit_edge:         ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false237

cond.true227:                                     ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx233 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %144 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx233, align 8
  %arrayidx235 = getelementptr i32, ptr %145, i32 2
  %146 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx235, align 4
  %add236 = add i32 %147, 3
  tail call void %143(ptr noundef %adev, i32 noundef %add236, i32 noundef %or209, i32 noundef 0, i32 noundef 13) #3
  br label %if.end244

cond.false237:                                    ; preds = %land.lhs.true221.cond.false237_crit_edge, %land.lhs.true216.cond.false237_crit_edge, %if.then211.cond.false237_crit_edge
  %arrayidx239 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %148 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx239, align 8
  %arrayidx241 = getelementptr i32, ptr %149, i32 2
  %150 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx241, align 4
  %add242 = add i32 %151, 3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add242, i32 noundef %or209, i32 noundef 0) #3
  br label %if.end244

if.end244:                                        ; preds = %cond.false237, %cond.true227, %cond.end206.if.end244_crit_edge
  %152 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %virt, align 8
  %and247 = and i32 %153, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %if.end244.cond.false271_crit_edge, label %land.lhs.true249

if.end244.cond.false271_crit_edge:                ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false271

land.lhs.true249:                                 ; preds = %if.end244
  %funcs252 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %154 = ptrtoint ptr %funcs252 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %funcs252, align 4
  %tobool253.not = icmp eq ptr %155, null
  br i1 %tobool253.not, label %land.lhs.true249.cond.false271_crit_edge, label %land.lhs.true254

land.lhs.true249.cond.false271_crit_edge:         ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false271

land.lhs.true254:                                 ; preds = %land.lhs.true249
  %sriov_rreg258 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %155, i32 0, i32 13
  %156 = ptrtoint ptr %sriov_rreg258 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sriov_rreg258, align 4
  %tobool259.not = icmp eq ptr %157, null
  br i1 %tobool259.not, label %land.lhs.true254.cond.false271_crit_edge, label %cond.true260

land.lhs.true254.cond.false271_crit_edge:         ; preds = %land.lhs.true254
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false271

cond.true260:                                     ; preds = %land.lhs.true254
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx266 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %158 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx266, align 8
  %arrayidx268 = getelementptr i32, ptr %159, i32 2
  %160 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx268, align 4
  %add269 = add i32 %161, 5
  %call270 = tail call i32 %157(ptr noundef %adev, i32 noundef %add269, i32 noundef 0, i32 noundef 13) #3
  br label %cond.end278

cond.false271:                                    ; preds = %land.lhs.true254.cond.false271_crit_edge, %land.lhs.true249.cond.false271_crit_edge, %if.end244.cond.false271_crit_edge
  %arrayidx273 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %162 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx273, align 8
  %arrayidx275 = getelementptr i32, ptr %163, i32 2
  %164 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx275, align 4
  %add276 = add i32 %165, 5
  %call277 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add276, i32 noundef 0) #3
  br label %cond.end278

cond.end278:                                      ; preds = %cond.false271, %cond.true260
  %cond279 = phi i32 [ %call270, %cond.true260 ], [ %call277, %cond.false271 ]
  %or280 = or i32 %cond279, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %cond279, i32 %or280)
  %cmp281.not = icmp eq i32 %cond279, %or280
  br i1 %cmp281.not, label %cond.end278.if.end315_crit_edge, label %if.then282

cond.end278.if.end315_crit_edge:                  ; preds = %cond.end278
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end315

if.then282:                                       ; preds = %cond.end278
  %166 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %virt, align 8
  %and285 = and i32 %167, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %if.then282.cond.false308_crit_edge, label %land.lhs.true287

if.then282.cond.false308_crit_edge:               ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false308

land.lhs.true287:                                 ; preds = %if.then282
  %funcs290 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %168 = ptrtoint ptr %funcs290 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %funcs290, align 4
  %tobool291.not = icmp eq ptr %169, null
  br i1 %tobool291.not, label %land.lhs.true287.cond.false308_crit_edge, label %land.lhs.true292

land.lhs.true287.cond.false308_crit_edge:         ; preds = %land.lhs.true287
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false308

land.lhs.true292:                                 ; preds = %land.lhs.true287
  %sriov_wreg296 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %169, i32 0, i32 12
  %170 = ptrtoint ptr %sriov_wreg296 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %sriov_wreg296, align 4
  %tobool297.not = icmp eq ptr %171, null
  br i1 %tobool297.not, label %land.lhs.true292.cond.false308_crit_edge, label %cond.true298

land.lhs.true292.cond.false308_crit_edge:         ; preds = %land.lhs.true292
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false308

cond.true298:                                     ; preds = %land.lhs.true292
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx304 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %172 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx304, align 8
  %arrayidx306 = getelementptr i32, ptr %173, i32 2
  %174 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx306, align 4
  %add307 = add i32 %175, 5
  tail call void %171(ptr noundef %adev, i32 noundef %add307, i32 noundef %or280, i32 noundef 0, i32 noundef 13) #3
  br label %if.end315

cond.false308:                                    ; preds = %land.lhs.true292.cond.false308_crit_edge, %land.lhs.true287.cond.false308_crit_edge, %if.then282.cond.false308_crit_edge
  %arrayidx310 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %176 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx310, align 8
  %arrayidx312 = getelementptr i32, ptr %177, i32 2
  %178 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx312, align 4
  %add313 = add i32 %179, 5
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add313, i32 noundef %or280, i32 noundef 0) #3
  br label %if.end315

if.end315:                                        ; preds = %cond.false308, %cond.true298, %cond.end278.if.end315_crit_edge
  %180 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pcie_rreg, align 8
  %call317 = tail call i32 %181(ptr noundef %adev, i32 noundef 286524032) #3
  %and318 = and i32 %call317, -106241
  %or320 = or i32 %and318, 102400
  call void @__sanitizer_cov_trace_cmp4(i32 %call317, i32 %or320)
  %cmp321.not = icmp eq i32 %call317, %or320
  br i1 %cmp321.not, label %if.end315.if.end324_crit_edge, label %if.then322

if.end315.if.end324_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end324

if.then322:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #5
  %182 = ptrtoint ptr %pcie_wreg157 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pcie_wreg157, align 4
  tail call void %183(ptr noundef %adev, i32 noundef 286524032, i32 noundef %or320) #3
  br label %if.end324

if.end324:                                        ; preds = %if.then322, %if.end315.if.end324_crit_edge
  %184 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pcie_rreg, align 8
  %call326 = tail call i32 %185(ptr noundef %adev, i32 noundef 286524116) #3
  %and327 = and i32 %call326, -8388609
  call void @__sanitizer_cov_trace_cmp4(i32 %call326, i32 %and327)
  %cmp328.not = icmp eq i32 %call326, %and327
  br i1 %cmp328.not, label %if.end324.if.end331_crit_edge, label %if.then329

if.end324.if.end331_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end331

if.then329:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #5
  %186 = ptrtoint ptr %pcie_wreg157 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pcie_wreg157, align 4
  tail call void %187(ptr noundef %adev, i32 noundef 286524116, i32 noundef %and327) #3
  br label %if.end331

if.end331:                                        ; preds = %if.then329, %if.end324.if.end331_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v2_3_apply_lc_spc_mode_wa(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = add i32 %1, -26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %4 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef 286524040) #3
  %6 = and i32 %call, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %6)
  %cmp3 = icmp eq i32 %6, 48
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcie_rreg, align 8
  %call6 = tail call i32 %8(ptr noundef %adev, i32 noundef 286524140) #3
  %and7 = and i32 %call6, -49
  %or = or i32 %and7, 32
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %9 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcie_wreg, align 4
  tail call void %10(ptr noundef %adev, i32 noundef 286524140, i32 noundef %or) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v2_3_apply_l1_link_width_reconfig_wa(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %1)
  %cmp.not = icmp eq i32 %1, 26
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %3(ptr noundef %adev, i32 noundef 286524040) #3
  %or = or i32 %call, 131072
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %4 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_wreg, align 4
  tail call void %5(ptr noundef %adev, i32 noundef 286524040, i32 noundef %or) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nbio_v2_3_clear_doorbell_interrupt(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %1)
  %cmp.not = icmp eq i32 %1, 30
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cond.false_crit_edge, label %land.lhs.true

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %11, 303
  %call = tail call i32 %7(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 13) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %15, 303
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = and i32 %cond, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %if.then21, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then21:                                        ; preds = %cond.end
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and24 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then21.cond.false48_crit_edge, label %land.lhs.true26

if.then21.cond.false48_crit_edge:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false48

land.lhs.true26:                                  ; preds = %if.then21
  %funcs29 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs29, align 4
  %tobool30.not = icmp eq ptr %19, null
  br i1 %tobool30.not, label %land.lhs.true26.cond.false48_crit_edge, label %land.lhs.true31

land.lhs.true26.cond.false48_crit_edge:           ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false48

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %sriov_rreg35 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %sriov_rreg35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_rreg35, align 4
  %tobool36.not = icmp eq ptr %21, null
  br i1 %tobool36.not, label %land.lhs.true31.cond.false48_crit_edge, label %cond.true37

land.lhs.true31.cond.false48_crit_edge:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false48

cond.true37:                                      ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx43 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx43, align 8
  %arrayidx45 = getelementptr i32, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %25, 253
  %call47 = tail call i32 %21(ptr noundef %adev, i32 noundef %add46, i32 noundef 0, i32 noundef 13) #3
  br label %cond.end55

cond.false48:                                     ; preds = %land.lhs.true31.cond.false48_crit_edge, %land.lhs.true26.cond.false48_crit_edge, %if.then21.cond.false48_crit_edge
  %arrayidx50 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %26 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx50, align 8
  %arrayidx52 = getelementptr i32, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %29, 253
  %call54 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add53, i32 noundef 0) #3
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false48, %cond.true37
  %cond56 = phi i32 [ %call47, %cond.true37 ], [ %call54, %cond.false48 ]
  %and57 = and i32 %cond56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %cond.end55.cleanup_crit_edge, label %if.then59

cond.end55.cleanup_crit_edge:                     ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then59:                                        ; preds = %cond.end55
  %30 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virt, align 8
  %and62 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then59.cond.false84_crit_edge, label %land.lhs.true64

if.then59.cond.false84_crit_edge:                 ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false84

land.lhs.true64:                                  ; preds = %if.then59
  %funcs67 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %32 = ptrtoint ptr %funcs67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs67, align 4
  %tobool68.not = icmp eq ptr %33, null
  br i1 %tobool68.not, label %land.lhs.true64.cond.false84_crit_edge, label %land.lhs.true69

land.lhs.true64.cond.false84_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false84

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sriov_wreg, align 4
  %tobool73.not = icmp eq ptr %35, null
  br i1 %tobool73.not, label %land.lhs.true69.cond.false84_crit_edge, label %cond.true74

land.lhs.true69.cond.false84_crit_edge:           ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false84

cond.true74:                                      ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx80 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %36 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx80, align 8
  %arrayidx82 = getelementptr i32, ptr %37, i32 2
  %38 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx82, align 4
  %add83 = add i32 %39, 253
  tail call void %35(ptr noundef %adev, i32 noundef %add83, i32 noundef 65536, i32 noundef 0, i32 noundef 13) #3
  br label %cleanup

cond.false84:                                     ; preds = %land.lhs.true69.cond.false84_crit_edge, %land.lhs.true64.cond.false84_crit_edge, %if.then59.cond.false84_crit_edge
  %arrayidx86 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 13
  %40 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx86, align 8
  %arrayidx88 = getelementptr i32, ptr %41, i32 2
  %42 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx88, align 4
  %add89 = add i32 %43, 253
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add89, i32 noundef 65536, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %cond.false84, %cond.true74, %cond.end55.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @nbio_v2_3_hdp_flush_reg, !1, !"nbio_v2_3_hdp_flush_reg", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v2_3.c", i32 316, i32 33}
!2 = !{ptr @nbio_v2_3_hdp_flush_reg_sc, !3, !"nbio_v2_3_hdp_flush_reg_sc", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v2_3.c", i32 331, i32 33}
!4 = !{ptr @nbio_v2_3_funcs, !5, !"nbio_v2_3_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/nbio_v2_3.c", i32 566, i32 32}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
