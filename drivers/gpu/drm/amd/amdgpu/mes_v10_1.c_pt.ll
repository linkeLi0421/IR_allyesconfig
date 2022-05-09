; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/mes_v10_1.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_mes_funcs = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mes_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%union.MESAPI__QUERY_MES_STATUS = type { %struct.anon.121, [232 x i8] }
%struct.anon.121 = type { %union.MES_API_HEADER, i8, %struct.MES_API_STATUS }
%union.MES_API_HEADER = type { %struct.anon.114 }
%struct.anon.114 = type { i32 }
%struct.MES_API_STATUS = type { i64, i64 }
%union.MESAPI_SET_HW_RESOURCES = type { [64 x i32] }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v10_compute_mqd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.118 = type <{ %union.MES_API_HEADER, i32, i32, i32, i32, [8 x i32], [2 x i32], [2 x i32], [5 x i32], i64, i64, %struct.MES_API_STATUS, %union.anon.119 }>
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32 }
%union.MESAPI__ADD_QUEUE = type { [64 x i32] }
%struct.anon.113 = type <{ %union.MES_API_HEADER, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.anon.115, %struct.MES_API_STATUS }>
%struct.anon.115 = type { i32 }
%struct.mes_add_queue_input = type { i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i32, i32 }
%union.MESAPI__REMOVE_QUEUE = type { [64 x i32] }
%struct.anon.116 = type <{ %union.MES_API_HEADER, i32, i64, %struct.anon.117, %struct.MES_API_STATUS }>
%struct.anon.117 = type { i32 }
%struct.mes_remove_queue_input = type { i32, i64 }

@__UNIQUE_ID_firmware343 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/navi10_mes.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [46 x i8] c"amdgpu.firmware=amdgpu/sienna_cichlid_mes.bin\00", section ".modinfo", align 1
@mes_v10_1_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr null, ptr null, ptr @mes_v10_1_sw_init, ptr @mes_v10_1_sw_fini, ptr null, ptr @mes_v10_1_hw_init, ptr @mes_v10_1_hw_fini, ptr null, ptr @mes_v10_1_suspend, ptr @mes_v10_1_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mes_v10_1_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 12, i32 10, i32 1, i32 0, ptr @mes_v10_1_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mes_v10_1\00", [22 x i8] zeroinitializer }, align 32
@mes_v10_1_funcs = internal constant { %struct.amdgpu_mes_funcs, [16 x i8] } { %struct.amdgpu_mes_funcs { ptr @mes_v10_1_add_hw_queue, ptr @mes_v10_1_remove_hw_queue, ptr @mes_v10_1_suspend_gang, ptr @mes_v10_1_resume_gang }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MES msg=%d was emitted\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MES failed to response msg=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"navi10\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sienna_cichlid\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu/%s_mes.bin\00", [46 x i8] zeroinitializer }, align 32
@mes_v10_1_allocate_eop_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 553, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: (%d) create EOP bo failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mes_v10_1_allocate_eop_buf\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/mes_v10_1.c\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mes_v10_1_allocate_eop_buf._entry_ptr = internal global ptr @mes_v10_1_allocate_eop_buf._entry, section ".printk_index", align 4
@mes_v10_1_mqd_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 867, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: failed to create ring mqd bo (%d)\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mes_v10_1_mqd_sw_init\00", [42 x i8] zeroinitializer }, align 32
@mes_v10_1_mqd_sw_init._entry_ptr = internal global ptr @mes_v10_1_mqd_sw_init._entry, section ".printk_index", align 4
@mes_v10_1_mqd_sw_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.9, i32 876, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: no memory to create MQD backup for ring %s\0A\00", [44 x i8] zeroinitializer }, align 32
@mes_v10_1_mqd_sw_init._entry_ptr.16 = internal global ptr @mes_v10_1_mqd_sw_init._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mes_v10_1_ring_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 10, i32 1, i32 0, i8 1, i8 0, i32 0, i32 0, ptr @mes_v10_1_ring_get_rptr, ptr @mes_v10_1_ring_get_wptr, ptr @mes_v10_1_ring_set_wptr, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_ring_insert_nop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mes_%d.%d.%d\00", [19 x i8] zeroinitializer }, align 32
@mes_v10_1_allocate_mem_slots._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 572, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: (%d) mes sch_ctx_offs wb alloc failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mes_v10_1_allocate_mem_slots\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mes_v10_1_allocate_mem_slots._entry_ptr = internal global ptr @mes_v10_1_allocate_mem_slots._entry, section ".printk_index", align 4
@mes_v10_1_allocate_mem_slots._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.9, i32 583, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: (%d) query_status_fence_offs wb alloc failed\0A\00", [42 x i8] zeroinitializer }, align 32
@mes_v10_1_allocate_mem_slots._entry_ptr.23 = internal global ptr @mes_v10_1_allocate_mem_slots._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to MES fw, r=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MES is busy\0A\00", [19 x i8] zeroinitializer }, align 32
@mes_v10_1_allocate_ucode_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.9, i32 360, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: (%d) failed to create mes fw bo\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mes_v10_1_allocate_ucode_buffer\00", [32 x i8] zeroinitializer }, align 32
@mes_v10_1_allocate_ucode_buffer._entry_ptr = internal global ptr @mes_v10_1_allocate_ucode_buffer._entry, section ".printk_index", align 4
@mes_v10_1_allocate_ucode_data_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.9, i32 392, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: (%d) failed to create mes data fw bo\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mes_v10_1_allocate_ucode_data_buffer\00", [59 x i8] zeroinitializer }, align 32
@mes_v10_1_allocate_ucode_data_buffer._entry_ptr = internal global ptr @mes_v10_1_allocate_ucode_data_buffer._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 26, i64 30]
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"mes_v10_1_ip_funcs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 992, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"mes_v10_1_ip_block\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1002, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 993, i32 10 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"mes_v10_1_funcs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 266, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 102, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 107, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 327, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 283, i32 15 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 286, i32 15 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 292, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 553, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 867, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 874, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"mes_v10_1_ring_funcs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 74, i32 39 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 849, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 571, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 582, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 942, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 959, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 360, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 392, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @mes_v10_1_allocate_eop_buf._entry, ptr @mes_v10_1_allocate_eop_buf._entry_ptr, ptr @mes_v10_1_allocate_mem_slots._entry, ptr @mes_v10_1_allocate_mem_slots._entry.21, ptr @mes_v10_1_allocate_mem_slots._entry_ptr, ptr @mes_v10_1_allocate_mem_slots._entry_ptr.23, ptr @mes_v10_1_allocate_ucode_buffer._entry, ptr @mes_v10_1_allocate_ucode_buffer._entry_ptr, ptr @mes_v10_1_allocate_ucode_data_buffer._entry, ptr @mes_v10_1_allocate_ucode_data_buffer._entry_ptr, ptr @mes_v10_1_mqd_sw_init._entry, ptr @mes_v10_1_mqd_sw_init._entry.14, ptr @mes_v10_1_mqd_sw_init._entry_ptr, ptr @mes_v10_1_mqd_sw_init._entry_ptr.16, ptr @mes_v10_1_ip_funcs, ptr @mes_v10_1_ip_block, ptr @.str, ptr @mes_v10_1_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @mes_v10_1_ring_funcs, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mes_v10_1_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mes_v10_1_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mes_v10_1_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mes_v10_1_allocate_eop_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mes_v10_1_mqd_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mes_v10_1_mqd_sw_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mes_v10_1_ring_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mes_v10_1_allocate_mem_slots._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mes_v10_1_allocate_mem_slots._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mes_v10_1_allocate_ucode_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mes_v10_1_allocate_ucode_data_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mes_v10_1_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  %eop.i = alloca ptr, align 4
  %fw_name.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mes = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119
  %0 = ptrtoint ptr %mes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %handle, ptr %mes, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 33
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mes_v10_1_funcs, ptr %funcs, align 4
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name.i) #9
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %2 = call ptr @memset(ptr %fw_name.i, i32 255, i32 30)
  %3 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_type.i, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.body.i [
    i32 26, label %entry.sw.epilog.i_crit_edge
    i32 30, label %sw.bb1.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/mes_v10_1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 289, 0\0A.popsection", ""() #9, !srcloc !78
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb1.i, %entry.sw.epilog.i_crit_edge
  %chip_name.0.i = phi ptr [ @.str.5, %sw.bb1.i ], [ @.str.4, %entry.sw.epilog.i_crit_edge ]
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.6, ptr noundef nonnull %chip_name.0.i) #9
  %fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 7
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 8
  %call6.i = call i32 @request_firmware(ptr noundef %fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.i.mes_v10_1_init_microcode.exit_crit_edge

sw.epilog.i.mes_v10_1_init_microcode.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mes_v10_1_init_microcode.exit

if.end.i:                                         ; preds = %sw.epilog.i
  %8 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw.i, align 8
  %call9.i = call i32 @amdgpu_ucode_validate(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  %10 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw.i, align 8
  br i1 %tobool10.not.i, label %if.end16.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @release_firmware(ptr noundef %11) #9
  %12 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fw.i, align 8
  br label %mes_v10_1_init_microcode.exit

if.end16.i:                                       ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %mes_ucode_version.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %mes_ucode_version.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mes_ucode_version.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #9
  %ucode_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 11
  %18 = ptrtoint ptr %ucode_fw_version.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ucode_fw_version.i, align 4
  %mes_ucode_data_version.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %14, i32 0, i32 4
  %19 = ptrtoint ptr %mes_ucode_data_version.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mes_ucode_data_version.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = ptrtoint ptr %ucode_fw_version.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ucode_fw_version.i, align 4
  %mes_uc_start_addr_lo.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %14, i32 0, i32 7
  %23 = ptrtoint ptr %mes_uc_start_addr_lo.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mes_uc_start_addr_lo.i, align 4
  %mes_uc_start_addr_hi.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %14, i32 0, i32 8
  %25 = ptrtoint ptr %mes_uc_start_addr_hi.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mes_uc_start_addr_hi.i, align 4
  %27 = zext i32 %26 to i64
  %28 = zext i32 %24 to i64
  %29 = shl nuw i64 %28, 32
  %30 = or i64 %29, %27
  %31 = call i64 @llvm.bswap.i64(i64 %30) #9
  %uc_start_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 12
  %32 = ptrtoint ptr %uc_start_addr.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %uc_start_addr.i, align 8
  %mes_data_start_addr_lo.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %14, i32 0, i32 9
  %33 = ptrtoint ptr %mes_data_start_addr_lo.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mes_data_start_addr_lo.i, align 4
  %mes_data_start_addr_hi.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %14, i32 0, i32 10
  %35 = ptrtoint ptr %mes_data_start_addr_hi.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mes_data_start_addr_hi.i, align 4
  %37 = zext i32 %36 to i64
  %38 = zext i32 %34 to i64
  %39 = shl nuw i64 %38, 32
  %40 = or i64 %39, %37
  %41 = call i64 @llvm.bswap.i64(i64 %40) #9
  %data_start_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 17
  %42 = ptrtoint ptr %data_start_addr.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %data_start_addr.i, align 8
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %43 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i = icmp eq i32 %44, 2
  br i1 %cmp.i, label %if.then30.i, label %if.end16.i.if.end_crit_edge

if.end16.i.if.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then30.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 15
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 15, ptr %arrayidx.i, align 8
  %fw34.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 15, i32 1
  %46 = ptrtoint ptr %fw34.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %11, ptr %fw34.i, align 4
  %mes_ucode_size_bytes.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %14, i32 0, i32 2
  %47 = ptrtoint ptr %mes_ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mes_ucode_size_bytes.i, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #9
  %add.i = add i32 %49, 4095
  %and.i = and i32 %add.i, -4096
  %fw_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 3
  %50 = ptrtoint ptr %fw_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fw_size.i, align 8
  %add36.i = add i32 %and.i, %51
  store i32 %add36.i, ptr %fw_size.i, align 8
  %arrayidx39.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 16
  %52 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16, ptr %arrayidx39.i, align 8
  %fw43.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 16, i32 1
  %53 = ptrtoint ptr %fw43.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %11, ptr %fw43.i, align 4
  %mes_ucode_data_size_bytes.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %14, i32 0, i32 5
  %54 = ptrtoint ptr %mes_ucode_data_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mes_ucode_data_size_bytes.i, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #9
  %add44.i = add i32 %56, 4095
  %and45.i = and i32 %add44.i, -4096
  %add48.i = add i32 %and45.i, %add36.i
  %57 = ptrtoint ptr %fw_size.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add48.i, ptr %fw_size.i, align 8
  br label %if.end

mes_v10_1_init_microcode.exit:                    ; preds = %if.then11.i, %sw.epilog.i.mes_v10_1_init_microcode.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i, %if.then11.i ], [ %call6.i, %sw.epilog.i.mes_v10_1_init_microcode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then30.i, %if.end16.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eop.i) #9
  %58 = ptrtoint ptr %eop.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -1 to ptr), ptr %eop.i, align 4, !annotation !79
  %eop_gpu_obj.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 18
  %eop_gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 19
  %call.i36 = call i32 @amdgpu_bo_create_reserved(ptr noundef %handle, i32 noundef 2048, i32 noundef 4096, i32 noundef 2, ptr noundef %eop_gpu_obj.i, ptr noundef %eop_gpu_addr.i, ptr noundef nonnull %eop.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %if.end6, label %mes_v10_1_allocate_eop_buf.exit

mes_v10_1_allocate_eop_buf.exit:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %handle, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str.7, i32 noundef %call.i36) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eop.i) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %61 = ptrtoint ptr %eop.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %eop.i, align 4
  %63 = ptrtoint ptr %eop_gpu_obj.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %eop_gpu_obj.i, align 8
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %64, i32 0, i32 4, i32 0, i32 5
  %65 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i, align 8
  %67 = call ptr @memset(ptr %62, i32 0, i32 %66)
  %68 = load ptr, ptr %eop_gpu_obj.i, align 8
  call void @amdgpu_bo_kunmap(ptr noundef %68) #9
  %69 = ptrtoint ptr %eop_gpu_obj.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %eop_gpu_obj.i, align 8
  %tbo.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %70, i32 0, i32 4
  %bdev.i.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %70, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bdev.i.i.i.i, align 8
  %lru_lock.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %72, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i.i) #9
  %resource.i.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %70, i32 0, i32 4, i32 6
  %73 = ptrtoint ptr %resource.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %resource.i.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i.i, ptr noundef %74, ptr noundef null) #9
  %75 = ptrtoint ptr %bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bdev.i.i.i.i, align 8
  %lru_lock2.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %76, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i.i) #9
  %resv.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %70, i32 0, i32 4, i32 0, i32 9
  %77 = ptrtoint ptr %resv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %resv.i.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %78) #9
  call void @ww_mutex_unlock(ptr noundef %78) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eop.i) #9
  %mqd_obj.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 19
  %79 = ptrtoint ptr %mqd_obj.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mqd_obj.i, align 4
  %tobool.not.i39 = icmp eq ptr %80, null
  br i1 %tobool.not.i39, label %if.end.i41, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.i41:                                       ; preds = %if.end6
  %mqd_gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 20
  %mqd_ptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 21
  %call.i40 = call i32 @amdgpu_bo_create_kernel(ptr noundef %handle, i32 noundef 2048, i32 noundef 4096, i32 noundef 2, ptr noundef %mqd_obj.i, ptr noundef %mqd_gpu_addr.i, ptr noundef %mqd_ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool3.not.i = icmp eq i32 %call.i40, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %mes_v10_1_mqd_sw_init.exit

if.end5.i:                                        ; preds = %if.end.i41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3264, i32 noundef 2048) #13
  %mqd_backup.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 20
  %82 = ptrtoint ptr %mqd_backup.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i, ptr %mqd_backup.i, align 8
  %tobool10.not.i43 = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i43, label %do.end14.i, label %if.end5.i.if.end10_crit_edge

if.end5.i.if.end10_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end14.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %handle, align 8
  %name.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 29
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.15, ptr noundef %name.i) #12
  br label %if.end10

mes_v10_1_mqd_sw_init.exit:                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %handle, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.12, i32 noundef %call.i40) #12
  br label %cleanup

if.end10:                                         ; preds = %do.end14.i, %if.end5.i.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 1
  %87 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @mes_v10_1_ring_funcs, ptr %funcs.i, align 4
  %me.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 16
  %88 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 3, ptr %me.i, align 8
  %pipe.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 17
  %89 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %pipe.i, align 4
  %queue.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 18
  %90 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %queue.i, align 8
  %ring_obj.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 4
  %91 = ptrtoint ptr %ring_obj.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %ring_obj.i, align 8
  %use_doorbell.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 24
  %92 = ptrtoint ptr %use_doorbell.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %use_doorbell.i, align 4
  %mes_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 14
  %93 = ptrtoint ptr %mes_ring.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mes_ring.i, align 4
  %shl.i = shl i32 %94, 1
  %doorbell_index2.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 23
  %95 = ptrtoint ptr %doorbell_index2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %shl.i, ptr %doorbell_index2.i, align 8
  %96 = ptrtoint ptr %eop_gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %eop_gpu_addr.i, align 8
  %eop_gpu_addr4.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 22
  %98 = ptrtoint ptr %eop_gpu_addr4.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %eop_gpu_addr4.i, align 8
  %no_scheduler.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 40
  %99 = ptrtoint ptr %no_scheduler.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %no_scheduler.i, align 1
  %name.i46 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 29
  %call.i47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i46, ptr noundef nonnull @.str.17, i32 noundef 3, i32 noundef 0, i32 noundef 0) #9
  %call8.i = call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %ring1.i, i32 noundef 1024, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool12.not = icmp eq i32 %call8.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %sch_ctx_offs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 27
  %call.i48 = call i32 @amdgpu_device_wb_get(ptr noundef %handle, ptr noundef %sch_ctx_offs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %if.end.i53, label %do.end.i50

do.end.i50:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %handle, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.18, i32 noundef %call.i48) #12
  br label %cleanup

if.end.i53:                                       ; preds = %if.end14
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 70, i32 2
  %102 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %gpu_addr.i, align 8
  %104 = ptrtoint ptr %sch_ctx_offs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sch_ctx_offs.i, align 8
  %mul.i = shl i32 %105, 2
  %conv.i = zext i32 %mul.i to i64
  %add.i51 = add i64 %103, %conv.i
  %sch_ctx_gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 28
  %106 = ptrtoint ptr %sch_ctx_gpu_addr.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %add.i51, ptr %sch_ctx_gpu_addr.i, align 8
  %wb5.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 70, i32 1
  %107 = ptrtoint ptr %wb5.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wb5.i, align 4
  %arrayidx.i52 = getelementptr i32, ptr %108, i32 %105
  %sch_ctx_ptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 29
  %109 = ptrtoint ptr %sch_ctx_ptr.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %arrayidx.i52, ptr %sch_ctx_ptr.i, align 8
  %query_status_fence_offs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 30
  %call10.i = call i32 @amdgpu_device_wb_get(ptr noundef %handle, ptr noundef %query_status_fence_offs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end17.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %handle, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.22, i32 noundef %call10.i) #12
  br label %cleanup

if.end17.i:                                       ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %gpu_addr.i, align 8
  %114 = ptrtoint ptr %query_status_fence_offs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %query_status_fence_offs.i, align 4
  %mul22.i = shl i32 %115, 2
  %conv23.i = zext i32 %mul22.i to i64
  %add24.i = add i64 %113, %conv23.i
  %query_status_fence_gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 31
  %116 = ptrtoint ptr %query_status_fence_gpu_addr.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %add24.i, ptr %query_status_fence_gpu_addr.i, align 8
  %117 = ptrtoint ptr %wb5.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wb5.i, align 4
  %arrayidx30.i = getelementptr i32, ptr %118, i32 %115
  %query_status_fence_ptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 32
  %119 = ptrtoint ptr %query_status_fence_ptr.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %arrayidx30.i, ptr %query_status_fence_ptr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17.i, %do.end15.i, %do.end.i50, %if.end10.cleanup_crit_edge, %mes_v10_1_mqd_sw_init.exit, %mes_v10_1_allocate_eop_buf.exit, %mes_v10_1_init_microcode.exit
  %retval.0 = phi i32 [ %retval.0.i, %mes_v10_1_init_microcode.exit ], [ %call.i36, %mes_v10_1_allocate_eop_buf.exit ], [ %call.i40, %mes_v10_1_mqd_sw_init.exit ], [ %call8.i, %if.end10.cleanup_crit_edge ], [ %call.i48, %do.end.i50 ], [ %call10.i, %do.end15.i ], [ 0, %if.end17.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mes_v10_1_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sch_ctx_offs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 27
  %0 = ptrtoint ptr %sch_ctx_offs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sch_ctx_offs, align 8
  tail call void @amdgpu_device_wb_free(ptr noundef %handle, i32 noundef %1) #9
  %query_status_fence_offs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 30
  %2 = ptrtoint ptr %query_status_fence_offs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %query_status_fence_offs, align 4
  tail call void @amdgpu_device_wb_free(ptr noundef %handle, i32 noundef %3) #9
  %mqd_backup = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 20
  %4 = ptrtoint ptr %mqd_backup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mqd_backup, align 8
  tail call void @kfree(ptr noundef %5) #9
  %mqd_obj = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 19
  %mqd_gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 20
  %mqd_ptr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 21
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mqd_obj, ptr noundef %mqd_gpu_addr, ptr noundef %mqd_ptr) #9
  %eop_gpu_obj = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 18
  %eop_gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 19
  tail call void @amdgpu_bo_free_kernel(ptr noundef %eop_gpu_obj, ptr noundef %eop_gpu_addr, ptr noundef null) #9
  %fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 7
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw.i, align 8
  tail call void @release_firmware(ptr noundef %7) #9
  %8 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fw.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mes_v10_1_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  %mes_status_pkt.i = alloca %union.MESAPI__QUERY_MES_STATUS, align 4
  %mes_set_hw_res_pkt.i = alloca %union.MESAPI_SET_HW_RESOURCES, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %0 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then:                                          ; preds = %entry
  %fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 7
  %2 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.then1_crit_edge, label %if.end.i

if.then.if.then1_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1

if.end.i:                                         ; preds = %if.then
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %mes_ucode_offset_bytes.i.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mes_ucode_offset_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mes_ucode_offset_bytes.i.i, align 4
  %mes_ucode_size_bytes.i.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %mes_ucode_size_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mes_ucode_size_bytes.i.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %ucode_fw_obj.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 8
  %ucode_fw_gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 9
  %ucode_fw_ptr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 10
  %call.i.i = tail call i32 @amdgpu_bo_create_reserved(ptr noundef %handle, i32 noundef %10, i32 noundef 4096, i32 noundef 2, ptr noundef %ucode_fw_obj.i.i, ptr noundef %ucode_fw_gpu_addr.i.i, ptr noundef %ucode_fw_ptr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i, label %mes_v10_1_allocate_ucode_buffer.exit.i

mes_v10_1_allocate_ucode_buffer.exit.i:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.26, i32 noundef %call.i.i) #12
  br label %if.then1

if.end3.i:                                        ; preds = %if.end.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %13
  %14 = ptrtoint ptr %ucode_fw_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ucode_fw_ptr.i.i, align 8
  %16 = call ptr @memcpy(ptr %15, ptr %add.ptr.i.i, i32 %10)
  %17 = ptrtoint ptr %ucode_fw_obj.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ucode_fw_obj.i.i, align 4
  tail call void @amdgpu_bo_kunmap(ptr noundef %18) #9
  %19 = ptrtoint ptr %ucode_fw_obj.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ucode_fw_obj.i.i, align 4
  %tbo.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4
  %bdev.i.i.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %bdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i.i.i, align 8
  %lru_lock.i.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i.i.i) #9
  %resource.i.i.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %resource.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resource.i.i.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i.i.i, ptr noundef %24, ptr noundef null) #9
  %25 = ptrtoint ptr %bdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdev.i.i.i.i.i, align 8
  %lru_lock2.i.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %26, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i.i.i) #9
  %resv.i.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 0, i32 9
  %27 = ptrtoint ptr %resv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resv.i.i.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %28) #9
  tail call void @ww_mutex_unlock(ptr noundef %28) #9
  %29 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw.i, align 8
  %data.i773.i = getelementptr inbounds %struct.firmware, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %data.i773.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i773.i, align 4
  %mes_ucode_data_offset_bytes.i.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %mes_ucode_data_offset_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mes_ucode_data_offset_bytes.i.i, align 4
  %mes_ucode_data_size_bytes.i.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %32, i32 0, i32 5
  %35 = ptrtoint ptr %mes_ucode_data_size_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mes_ucode_data_size_bytes.i.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %data_fw_obj.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 13
  %data_fw_gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 14
  %data_fw_ptr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 15
  %call.i774.i = tail call i32 @amdgpu_bo_create_reserved(ptr noundef %handle, i32 noundef %37, i32 noundef 65536, i32 noundef 2, ptr noundef %data_fw_obj.i.i, ptr noundef %data_fw_gpu_addr.i.i, ptr noundef %data_fw_ptr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i774.i)
  %tobool.not.i775.i = icmp eq i32 %call.i774.i, 0
  br i1 %tobool.not.i775.i, label %if.end7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.28, i32 noundef %call.i774.i) #12
  tail call void @amdgpu_bo_free_kernel(ptr noundef %data_fw_obj.i.i, ptr noundef %data_fw_gpu_addr.i.i, ptr noundef %data_fw_ptr.i.i) #9
  tail call void @amdgpu_bo_free_kernel(ptr noundef %ucode_fw_obj.i.i, ptr noundef %ucode_fw_gpu_addr.i.i, ptr noundef %ucode_fw_ptr.i.i) #9
  br label %if.then1

if.end7.i:                                        ; preds = %if.end3.i
  %40 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %add.ptr.i777.i = getelementptr i8, ptr %32, i32 %40
  %41 = ptrtoint ptr %data_fw_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data_fw_ptr.i.i, align 8
  %43 = call ptr @memcpy(ptr %42, ptr %add.ptr.i777.i, i32 %37)
  %44 = ptrtoint ptr %data_fw_obj.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data_fw_obj.i.i, align 8
  tail call void @amdgpu_bo_kunmap(ptr noundef %45) #9
  %46 = ptrtoint ptr %data_fw_obj.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data_fw_obj.i.i, align 8
  %tbo.i.i778.i = getelementptr inbounds %struct.amdgpu_bo, ptr %47, i32 0, i32 4
  %bdev.i.i.i.i779.i = getelementptr inbounds %struct.amdgpu_bo, ptr %47, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %bdev.i.i.i.i779.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bdev.i.i.i.i779.i, align 8
  %lru_lock.i.i.i.i780.i = getelementptr inbounds %struct.ttm_device, ptr %49, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i.i780.i) #9
  %resource.i.i.i.i781.i = getelementptr inbounds %struct.amdgpu_bo, ptr %47, i32 0, i32 4, i32 6
  %50 = ptrtoint ptr %resource.i.i.i.i781.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resource.i.i.i.i781.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i.i778.i, ptr noundef %51, ptr noundef null) #9
  %52 = ptrtoint ptr %bdev.i.i.i.i779.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev.i.i.i.i779.i, align 8
  %lru_lock2.i.i.i.i782.i = getelementptr inbounds %struct.ttm_device, ptr %53, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i.i782.i) #9
  %resv.i.i.i783.i = getelementptr inbounds %struct.amdgpu_bo, ptr %47, i32 0, i32 4, i32 0, i32 9
  %54 = ptrtoint ptr %resv.i.i.i783.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resv.i.i.i783.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %55) #9
  tail call void @ww_mutex_unlock(ptr noundef %55) #9
  tail call fastcc void @mes_v10_1_enable(ptr noundef %handle, i1 noundef zeroext false) #9
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %56 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.end7.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.end7.i.cond.false.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %58 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs.i, align 4
  %tobool9.not.i = icmp eq ptr %59, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool14.not.i = icmp eq ptr %61, null
  br i1 %tobool14.not.i, label %land.lhs.true10.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true10.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx20.i = getelementptr i32, ptr %63, i32 1
  %64 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx20.i, align 4
  %add.i = add i32 %65, 22610
  tail call void %61(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true10.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end7.i.cond.false.i_crit_edge
  %arrayidx22.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %66 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx22.i, align 8
  %arrayidx24.i = getelementptr i32, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx24.i, align 4
  %add25.i = add i32 %69, 22610
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add25.i, i32 noundef 0, i32 noundef 0) #9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %srbm_mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %srbm_mutex.i, i32 noundef 0) #9
  tail call void @nv_grbm_select(ptr noundef %handle, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %70 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %virt.i, align 8
  %and28.i = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %cond.end.i.cond.false52.i_crit_edge, label %land.lhs.true30.i

cond.end.i.cond.false52.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false52.i

land.lhs.true30.i:                                ; preds = %cond.end.i
  %funcs33.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %72 = ptrtoint ptr %funcs33.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %funcs33.i, align 4
  %tobool34.not.i = icmp eq ptr %73, null
  br i1 %tobool34.not.i, label %land.lhs.true30.i.cond.false52.i_crit_edge, label %land.lhs.true35.i

land.lhs.true30.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false52.i

land.lhs.true35.i:                                ; preds = %land.lhs.true30.i
  %sriov_wreg39.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %73, i32 0, i32 12
  %74 = ptrtoint ptr %sriov_wreg39.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sriov_wreg39.i, align 4
  %tobool40.not.i = icmp eq ptr %75, null
  br i1 %tobool40.not.i, label %land.lhs.true35.i.cond.false52.i_crit_edge, label %cond.true41.i

land.lhs.true35.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false52.i

cond.true41.i:                                    ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx47.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %76 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx47.i, align 8
  %arrayidx49.i = getelementptr i32, ptr %77, i32 1
  %78 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx49.i, align 4
  %add50.i = add i32 %79, 10240
  %uc_start_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 12
  %80 = ptrtoint ptr %uc_start_addr.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %uc_start_addr.i, align 8
  %conv.i = trunc i64 %81 to i32
  %shr.i = lshr i32 %conv.i, 2
  tail call void %75(ptr noundef %handle, i32 noundef %add50.i, i32 noundef %shr.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end62.i

cond.false52.i:                                   ; preds = %land.lhs.true35.i.cond.false52.i_crit_edge, %land.lhs.true30.i.cond.false52.i_crit_edge, %cond.end.i.cond.false52.i_crit_edge
  %arrayidx54.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %82 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx54.i, align 8
  %arrayidx56.i = getelementptr i32, ptr %83, i32 1
  %84 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx56.i, align 4
  %add57.i = add i32 %85, 10240
  %uc_start_addr59.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 12
  %86 = ptrtoint ptr %uc_start_addr59.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %uc_start_addr59.i, align 8
  %conv60.i = trunc i64 %87 to i32
  %shr61.i = lshr i32 %conv60.i, 2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add57.i, i32 noundef %shr61.i, i32 noundef 0) #9
  br label %cond.end62.i

cond.end62.i:                                     ; preds = %cond.false52.i, %cond.true41.i
  %88 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %virt.i, align 8
  %and65.i = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %cond.end62.i.cond.false91.i_crit_edge, label %land.lhs.true67.i

cond.end62.i.cond.false91.i_crit_edge:            ; preds = %cond.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false91.i

land.lhs.true67.i:                                ; preds = %cond.end62.i
  %funcs70.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %90 = ptrtoint ptr %funcs70.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %funcs70.i, align 4
  %tobool71.not.i = icmp eq ptr %91, null
  br i1 %tobool71.not.i, label %land.lhs.true67.i.cond.false91.i_crit_edge, label %land.lhs.true72.i

land.lhs.true67.i.cond.false91.i_crit_edge:       ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false91.i

land.lhs.true72.i:                                ; preds = %land.lhs.true67.i
  %sriov_wreg76.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %91, i32 0, i32 12
  %92 = ptrtoint ptr %sriov_wreg76.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sriov_wreg76.i, align 4
  %tobool77.not.i = icmp eq ptr %93, null
  br i1 %tobool77.not.i, label %land.lhs.true72.i.cond.false91.i_crit_edge, label %cond.true78.i

land.lhs.true72.i.cond.false91.i_crit_edge:       ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false91.i

cond.true78.i:                                    ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx84.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %94 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx84.i, align 8
  %arrayidx86.i = getelementptr i32, ptr %95, i32 1
  %96 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx86.i, align 4
  %add87.i = add i32 %97, 22608
  %98 = ptrtoint ptr %ucode_fw_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %ucode_fw_gpu_addr.i.i, align 8
  %conv90.i = trunc i64 %99 to i32
  tail call void %93(ptr noundef %handle, i32 noundef %add87.i, i32 noundef %conv90.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end101.i

cond.false91.i:                                   ; preds = %land.lhs.true72.i.cond.false91.i_crit_edge, %land.lhs.true67.i.cond.false91.i_crit_edge, %cond.end62.i.cond.false91.i_crit_edge
  %arrayidx93.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %100 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx93.i, align 8
  %arrayidx95.i = getelementptr i32, ptr %101, i32 1
  %102 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx95.i, align 4
  %add96.i = add i32 %103, 22608
  %104 = ptrtoint ptr %ucode_fw_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %ucode_fw_gpu_addr.i.i, align 8
  %conv100.i = trunc i64 %105 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add96.i, i32 noundef %conv100.i, i32 noundef 0) #9
  br label %cond.end101.i

cond.end101.i:                                    ; preds = %cond.false91.i, %cond.true78.i
  %106 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %virt.i, align 8
  %and104.i = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %cond.end101.i.cond.false132.i_crit_edge, label %land.lhs.true106.i

cond.end101.i.cond.false132.i_crit_edge:          ; preds = %cond.end101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false132.i

land.lhs.true106.i:                               ; preds = %cond.end101.i
  %funcs109.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %108 = ptrtoint ptr %funcs109.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %funcs109.i, align 4
  %tobool110.not.i = icmp eq ptr %109, null
  br i1 %tobool110.not.i, label %land.lhs.true106.i.cond.false132.i_crit_edge, label %land.lhs.true111.i

land.lhs.true106.i.cond.false132.i_crit_edge:     ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false132.i

land.lhs.true111.i:                               ; preds = %land.lhs.true106.i
  %sriov_wreg115.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %109, i32 0, i32 12
  %110 = ptrtoint ptr %sriov_wreg115.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sriov_wreg115.i, align 4
  %tobool116.not.i = icmp eq ptr %111, null
  br i1 %tobool116.not.i, label %land.lhs.true111.i.cond.false132.i_crit_edge, label %cond.true117.i

land.lhs.true111.i.cond.false132.i_crit_edge:     ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false132.i

cond.true117.i:                                   ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx123.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %112 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx123.i, align 8
  %arrayidx125.i = getelementptr i32, ptr %113, i32 1
  %114 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx125.i, align 4
  %add126.i = add i32 %115, 22609
  %116 = ptrtoint ptr %ucode_fw_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %ucode_fw_gpu_addr.i.i, align 8
  %shr129.i = lshr i64 %117, 32
  %conv131.i = trunc i64 %shr129.i to i32
  tail call void %111(ptr noundef %handle, i32 noundef %add126.i, i32 noundef %conv131.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end143.i

cond.false132.i:                                  ; preds = %land.lhs.true111.i.cond.false132.i_crit_edge, %land.lhs.true106.i.cond.false132.i_crit_edge, %cond.end101.i.cond.false132.i_crit_edge
  %arrayidx134.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %118 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx134.i, align 8
  %arrayidx136.i = getelementptr i32, ptr %119, i32 1
  %120 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx136.i, align 4
  %add137.i = add i32 %121, 22609
  %122 = ptrtoint ptr %ucode_fw_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %ucode_fw_gpu_addr.i.i, align 8
  %shr140.i = lshr i64 %123, 32
  %conv142.i = trunc i64 %shr140.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add137.i, i32 noundef %conv142.i, i32 noundef 0) #9
  br label %cond.end143.i

cond.end143.i:                                    ; preds = %cond.false132.i, %cond.true117.i
  %124 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %virt.i, align 8
  %and146.i = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i)
  %tobool147.not.i = icmp eq i32 %and146.i, 0
  br i1 %tobool147.not.i, label %cond.end143.i.cond.false169.i_crit_edge, label %land.lhs.true148.i

cond.end143.i.cond.false169.i_crit_edge:          ; preds = %cond.end143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false169.i

land.lhs.true148.i:                               ; preds = %cond.end143.i
  %funcs151.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %126 = ptrtoint ptr %funcs151.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %funcs151.i, align 4
  %tobool152.not.i = icmp eq ptr %127, null
  br i1 %tobool152.not.i, label %land.lhs.true148.i.cond.false169.i_crit_edge, label %land.lhs.true153.i

land.lhs.true148.i.cond.false169.i_crit_edge:     ; preds = %land.lhs.true148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false169.i

land.lhs.true153.i:                               ; preds = %land.lhs.true148.i
  %sriov_wreg157.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %127, i32 0, i32 12
  %128 = ptrtoint ptr %sriov_wreg157.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sriov_wreg157.i, align 4
  %tobool158.not.i = icmp eq ptr %129, null
  br i1 %tobool158.not.i, label %land.lhs.true153.i.cond.false169.i_crit_edge, label %cond.true159.i

land.lhs.true153.i.cond.false169.i_crit_edge:     ; preds = %land.lhs.true153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false169.i

cond.true159.i:                                   ; preds = %land.lhs.true153.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx165.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %130 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx165.i, align 8
  %arrayidx167.i = getelementptr i32, ptr %131, i32 1
  %132 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx167.i, align 4
  %add168.i = add i32 %133, 22619
  tail call void %129(ptr noundef %handle, i32 noundef %add168.i, i32 noundef 2097151, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end175.i

cond.false169.i:                                  ; preds = %land.lhs.true153.i.cond.false169.i_crit_edge, %land.lhs.true148.i.cond.false169.i_crit_edge, %cond.end143.i.cond.false169.i_crit_edge
  %arrayidx171.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %134 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx171.i, align 8
  %arrayidx173.i = getelementptr i32, ptr %135, i32 1
  %136 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx173.i, align 4
  %add174.i = add i32 %137, 22619
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add174.i, i32 noundef 2097151, i32 noundef 0) #9
  br label %cond.end175.i

cond.end175.i:                                    ; preds = %cond.false169.i, %cond.true159.i
  %138 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %virt.i, align 8
  %and178.i = and i32 %139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178.i)
  %tobool179.not.i = icmp eq i32 %and178.i, 0
  br i1 %tobool179.not.i, label %cond.end175.i.cond.false204.i_crit_edge, label %land.lhs.true180.i

cond.end175.i.cond.false204.i_crit_edge:          ; preds = %cond.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false204.i

land.lhs.true180.i:                               ; preds = %cond.end175.i
  %funcs183.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %140 = ptrtoint ptr %funcs183.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %funcs183.i, align 4
  %tobool184.not.i = icmp eq ptr %141, null
  br i1 %tobool184.not.i, label %land.lhs.true180.i.cond.false204.i_crit_edge, label %land.lhs.true185.i

land.lhs.true180.i.cond.false204.i_crit_edge:     ; preds = %land.lhs.true180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false204.i

land.lhs.true185.i:                               ; preds = %land.lhs.true180.i
  %sriov_wreg189.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %141, i32 0, i32 12
  %142 = ptrtoint ptr %sriov_wreg189.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sriov_wreg189.i, align 4
  %tobool190.not.i = icmp eq ptr %143, null
  br i1 %tobool190.not.i, label %land.lhs.true185.i.cond.false204.i_crit_edge, label %cond.true191.i

land.lhs.true185.i.cond.false204.i_crit_edge:     ; preds = %land.lhs.true185.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false204.i

cond.true191.i:                                   ; preds = %land.lhs.true185.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx197.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %144 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx197.i, align 8
  %arrayidx199.i = getelementptr i32, ptr %145, i32 1
  %146 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx199.i, align 4
  %add200.i = add i32 %147, 22612
  %148 = ptrtoint ptr %data_fw_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %data_fw_gpu_addr.i.i, align 8
  %conv203.i = trunc i64 %149 to i32
  tail call void %143(ptr noundef %handle, i32 noundef %add200.i, i32 noundef %conv203.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end214.i

cond.false204.i:                                  ; preds = %land.lhs.true185.i.cond.false204.i_crit_edge, %land.lhs.true180.i.cond.false204.i_crit_edge, %cond.end175.i.cond.false204.i_crit_edge
  %arrayidx206.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %150 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx206.i, align 8
  %arrayidx208.i = getelementptr i32, ptr %151, i32 1
  %152 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx208.i, align 4
  %add209.i = add i32 %153, 22612
  %154 = ptrtoint ptr %data_fw_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %data_fw_gpu_addr.i.i, align 8
  %conv213.i = trunc i64 %155 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add209.i, i32 noundef %conv213.i, i32 noundef 0) #9
  br label %cond.end214.i

cond.end214.i:                                    ; preds = %cond.false204.i, %cond.true191.i
  %156 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %virt.i, align 8
  %and217.i = and i32 %157, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217.i)
  %tobool218.not.i = icmp eq i32 %and217.i, 0
  br i1 %tobool218.not.i, label %cond.end214.i.cond.false245.i_crit_edge, label %land.lhs.true219.i

cond.end214.i.cond.false245.i_crit_edge:          ; preds = %cond.end214.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false245.i

land.lhs.true219.i:                               ; preds = %cond.end214.i
  %funcs222.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %158 = ptrtoint ptr %funcs222.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %funcs222.i, align 4
  %tobool223.not.i = icmp eq ptr %159, null
  br i1 %tobool223.not.i, label %land.lhs.true219.i.cond.false245.i_crit_edge, label %land.lhs.true224.i

land.lhs.true219.i.cond.false245.i_crit_edge:     ; preds = %land.lhs.true219.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false245.i

land.lhs.true224.i:                               ; preds = %land.lhs.true219.i
  %sriov_wreg228.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %159, i32 0, i32 12
  %160 = ptrtoint ptr %sriov_wreg228.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %sriov_wreg228.i, align 4
  %tobool229.not.i = icmp eq ptr %161, null
  br i1 %tobool229.not.i, label %land.lhs.true224.i.cond.false245.i_crit_edge, label %cond.true230.i

land.lhs.true224.i.cond.false245.i_crit_edge:     ; preds = %land.lhs.true224.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false245.i

cond.true230.i:                                   ; preds = %land.lhs.true224.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx236.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %162 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx236.i, align 8
  %arrayidx238.i = getelementptr i32, ptr %163, i32 1
  %164 = ptrtoint ptr %arrayidx238.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx238.i, align 4
  %add239.i = add i32 %165, 22613
  %166 = ptrtoint ptr %data_fw_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %data_fw_gpu_addr.i.i, align 8
  %shr242.i = lshr i64 %167, 32
  %conv244.i = trunc i64 %shr242.i to i32
  tail call void %161(ptr noundef %handle, i32 noundef %add239.i, i32 noundef %conv244.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end256.i

cond.false245.i:                                  ; preds = %land.lhs.true224.i.cond.false245.i_crit_edge, %land.lhs.true219.i.cond.false245.i_crit_edge, %cond.end214.i.cond.false245.i_crit_edge
  %arrayidx247.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %168 = ptrtoint ptr %arrayidx247.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx247.i, align 8
  %arrayidx249.i = getelementptr i32, ptr %169, i32 1
  %170 = ptrtoint ptr %arrayidx249.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx249.i, align 4
  %add250.i = add i32 %171, 22613
  %172 = ptrtoint ptr %data_fw_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %data_fw_gpu_addr.i.i, align 8
  %shr253.i = lshr i64 %173, 32
  %conv255.i = trunc i64 %shr253.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add250.i, i32 noundef %conv255.i, i32 noundef 0) #9
  br label %cond.end256.i

cond.end256.i:                                    ; preds = %cond.false245.i, %cond.true230.i
  %174 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %virt.i, align 8
  %and259.i = and i32 %175, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259.i)
  %tobool260.not.i = icmp eq i32 %and259.i, 0
  br i1 %tobool260.not.i, label %cond.end256.i.cond.false282.i_crit_edge, label %land.lhs.true261.i

cond.end256.i.cond.false282.i_crit_edge:          ; preds = %cond.end256.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false282.i

land.lhs.true261.i:                               ; preds = %cond.end256.i
  %funcs264.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %176 = ptrtoint ptr %funcs264.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %funcs264.i, align 4
  %tobool265.not.i = icmp eq ptr %177, null
  br i1 %tobool265.not.i, label %land.lhs.true261.i.cond.false282.i_crit_edge, label %land.lhs.true266.i

land.lhs.true261.i.cond.false282.i_crit_edge:     ; preds = %land.lhs.true261.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false282.i

land.lhs.true266.i:                               ; preds = %land.lhs.true261.i
  %sriov_wreg270.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %177, i32 0, i32 12
  %178 = ptrtoint ptr %sriov_wreg270.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %sriov_wreg270.i, align 4
  %tobool271.not.i = icmp eq ptr %179, null
  br i1 %tobool271.not.i, label %land.lhs.true266.i.cond.false282.i_crit_edge, label %cond.true272.i

land.lhs.true266.i.cond.false282.i_crit_edge:     ; preds = %land.lhs.true266.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false282.i

cond.true272.i:                                   ; preds = %land.lhs.true266.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx278.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %180 = ptrtoint ptr %arrayidx278.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx278.i, align 8
  %arrayidx280.i = getelementptr i32, ptr %181, i32 1
  %182 = ptrtoint ptr %arrayidx280.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx280.i, align 4
  %add281.i = add i32 %183, 22621
  tail call void %179(ptr noundef %handle, i32 noundef %add281.i, i32 noundef 262143, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end288.i

cond.false282.i:                                  ; preds = %land.lhs.true266.i.cond.false282.i_crit_edge, %land.lhs.true261.i.cond.false282.i_crit_edge, %cond.end256.i.cond.false282.i_crit_edge
  %arrayidx284.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %184 = ptrtoint ptr %arrayidx284.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx284.i, align 8
  %arrayidx286.i = getelementptr i32, ptr %185, i32 1
  %186 = ptrtoint ptr %arrayidx286.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx286.i, align 4
  %add287.i = add i32 %187, 22621
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add287.i, i32 noundef 262143, i32 noundef 0) #9
  br label %cond.end288.i

cond.end288.i:                                    ; preds = %cond.false282.i, %cond.true272.i
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %188 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %189)
  %cond574.i = icmp eq i32 %189, 30
  %190 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %virt.i, align 8
  %and291.i = and i32 %191, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291.i)
  %tobool292.not.i = icmp eq i32 %and291.i, 0
  br i1 %cond574.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %cond.end288.i
  br i1 %tobool292.not.i, label %sw.bb.i.cond.false314.i_crit_edge, label %land.lhs.true293.i

sw.bb.i.cond.false314.i_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false314.i

land.lhs.true293.i:                               ; preds = %sw.bb.i
  %funcs296.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %192 = ptrtoint ptr %funcs296.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %funcs296.i, align 4
  %tobool297.not.i = icmp eq ptr %193, null
  br i1 %tobool297.not.i, label %land.lhs.true293.i.cond.false314.i_crit_edge, label %land.lhs.true298.i

land.lhs.true293.i.cond.false314.i_crit_edge:     ; preds = %land.lhs.true293.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false314.i

land.lhs.true298.i:                               ; preds = %land.lhs.true293.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %193, i32 0, i32 13
  %194 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool302.not.i = icmp eq ptr %195, null
  br i1 %tobool302.not.i, label %land.lhs.true298.i.cond.false314.i_crit_edge, label %cond.true303.i

land.lhs.true298.i.cond.false314.i_crit_edge:     ; preds = %land.lhs.true298.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false314.i

cond.true303.i:                                   ; preds = %land.lhs.true298.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx309.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %196 = ptrtoint ptr %arrayidx309.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx309.i, align 8
  %arrayidx311.i = getelementptr i32, ptr %197, i32 1
  %198 = ptrtoint ptr %arrayidx311.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx311.i, align 4
  %add312.i = add i32 %199, 10272
  %call313.i = tail call i32 %195(ptr noundef %handle, i32 noundef %add312.i, i32 noundef 0, i32 noundef 1) #9
  br label %sw.epilog.i

cond.false314.i:                                  ; preds = %land.lhs.true298.i.cond.false314.i_crit_edge, %land.lhs.true293.i.cond.false314.i_crit_edge, %sw.bb.i.cond.false314.i_crit_edge
  %arrayidx316.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %200 = ptrtoint ptr %arrayidx316.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx316.i, align 8
  %arrayidx318.i = getelementptr i32, ptr %201, i32 1
  %202 = ptrtoint ptr %arrayidx318.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx318.i, align 4
  %add319.i = add i32 %203, 10272
  %call320.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add319.i, i32 noundef 0) #9
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %cond.end288.i
  br i1 %tobool292.not.i, label %sw.default.i.cond.false348.i_crit_edge, label %land.lhs.true326.i

sw.default.i.cond.false348.i_crit_edge:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false348.i

land.lhs.true326.i:                               ; preds = %sw.default.i
  %funcs329.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %204 = ptrtoint ptr %funcs329.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %funcs329.i, align 4
  %tobool330.not.i = icmp eq ptr %205, null
  br i1 %tobool330.not.i, label %land.lhs.true326.i.cond.false348.i_crit_edge, label %land.lhs.true331.i

land.lhs.true326.i.cond.false348.i_crit_edge:     ; preds = %land.lhs.true326.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false348.i

land.lhs.true331.i:                               ; preds = %land.lhs.true326.i
  %sriov_rreg335.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %205, i32 0, i32 13
  %206 = ptrtoint ptr %sriov_rreg335.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %sriov_rreg335.i, align 4
  %tobool336.not.i = icmp eq ptr %207, null
  br i1 %tobool336.not.i, label %land.lhs.true331.i.cond.false348.i_crit_edge, label %cond.true337.i

land.lhs.true331.i.cond.false348.i_crit_edge:     ; preds = %land.lhs.true331.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false348.i

cond.true337.i:                                   ; preds = %land.lhs.true331.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx343.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %208 = ptrtoint ptr %arrayidx343.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx343.i, align 8
  %arrayidx345.i = getelementptr i32, ptr %209, i32 1
  %210 = ptrtoint ptr %arrayidx345.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx345.i, align 4
  %add346.i = add i32 %211, 22611
  %call347.i = tail call i32 %207(ptr noundef %handle, i32 noundef %add346.i, i32 noundef 0, i32 noundef 1) #9
  br label %sw.epilog.i

cond.false348.i:                                  ; preds = %land.lhs.true331.i.cond.false348.i_crit_edge, %land.lhs.true326.i.cond.false348.i_crit_edge, %sw.default.i.cond.false348.i_crit_edge
  %arrayidx350.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %212 = ptrtoint ptr %arrayidx350.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx350.i, align 8
  %arrayidx352.i = getelementptr i32, ptr %213, i32 1
  %214 = ptrtoint ptr %arrayidx352.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx352.i, align 4
  %add353.i = add i32 %215, 22611
  %call354.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add353.i, i32 noundef 0) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %cond.false348.i, %cond.true337.i, %cond.false314.i, %cond.true303.i
  %data.0.i = phi i32 [ %call313.i, %cond.true303.i ], [ %call320.i, %cond.false314.i ], [ %call347.i, %cond.true337.i ], [ %call354.i, %cond.false348.i ]
  %and358.i = and i32 %data.0.i, -18
  %or359.i = or i32 %and358.i, 1
  %216 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %217)
  %cond575.i = icmp eq i32 %217, 30
  %218 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %virt.i, align 8
  %and364.i = and i32 %219, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and364.i)
  %tobool365.not.i = icmp eq i32 %and364.i, 0
  br i1 %cond575.i, label %sw.bb361.i, label %sw.default394.i

sw.bb361.i:                                       ; preds = %sw.epilog.i
  br i1 %tobool365.not.i, label %sw.bb361.i.cond.false387.i_crit_edge, label %land.lhs.true366.i

sw.bb361.i.cond.false387.i_crit_edge:             ; preds = %sw.bb361.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false387.i

land.lhs.true366.i:                               ; preds = %sw.bb361.i
  %funcs369.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %220 = ptrtoint ptr %funcs369.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %funcs369.i, align 4
  %tobool370.not.i = icmp eq ptr %221, null
  br i1 %tobool370.not.i, label %land.lhs.true366.i.cond.false387.i_crit_edge, label %land.lhs.true371.i

land.lhs.true366.i.cond.false387.i_crit_edge:     ; preds = %land.lhs.true366.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false387.i

land.lhs.true371.i:                               ; preds = %land.lhs.true366.i
  %sriov_wreg375.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %221, i32 0, i32 12
  %222 = ptrtoint ptr %sriov_wreg375.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %sriov_wreg375.i, align 4
  %tobool376.not.i = icmp eq ptr %223, null
  br i1 %tobool376.not.i, label %land.lhs.true371.i.cond.false387.i_crit_edge, label %cond.true377.i

land.lhs.true371.i.cond.false387.i_crit_edge:     ; preds = %land.lhs.true371.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false387.i

cond.true377.i:                                   ; preds = %land.lhs.true371.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx383.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %224 = ptrtoint ptr %arrayidx383.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx383.i, align 8
  %arrayidx385.i = getelementptr i32, ptr %225, i32 1
  %226 = ptrtoint ptr %arrayidx385.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx385.i, align 4
  %add386.i = add i32 %227, 10272
  tail call void %223(ptr noundef %handle, i32 noundef %add386.i, i32 noundef %or359.i, i32 noundef 0, i32 noundef 1) #9
  br label %sw.epilog427.i

cond.false387.i:                                  ; preds = %land.lhs.true371.i.cond.false387.i_crit_edge, %land.lhs.true366.i.cond.false387.i_crit_edge, %sw.bb361.i.cond.false387.i_crit_edge
  %arrayidx389.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %228 = ptrtoint ptr %arrayidx389.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx389.i, align 8
  %arrayidx391.i = getelementptr i32, ptr %229, i32 1
  %230 = ptrtoint ptr %arrayidx391.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx391.i, align 4
  %add392.i = add i32 %231, 10272
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add392.i, i32 noundef %or359.i, i32 noundef 0) #9
  br label %sw.epilog427.i

sw.default394.i:                                  ; preds = %sw.epilog.i
  br i1 %tobool365.not.i, label %sw.default394.i.cond.false420.i_crit_edge, label %land.lhs.true399.i

sw.default394.i.cond.false420.i_crit_edge:        ; preds = %sw.default394.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false420.i

land.lhs.true399.i:                               ; preds = %sw.default394.i
  %funcs402.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %232 = ptrtoint ptr %funcs402.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %funcs402.i, align 4
  %tobool403.not.i = icmp eq ptr %233, null
  br i1 %tobool403.not.i, label %land.lhs.true399.i.cond.false420.i_crit_edge, label %land.lhs.true404.i

land.lhs.true399.i.cond.false420.i_crit_edge:     ; preds = %land.lhs.true399.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false420.i

land.lhs.true404.i:                               ; preds = %land.lhs.true399.i
  %sriov_wreg408.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %233, i32 0, i32 12
  %234 = ptrtoint ptr %sriov_wreg408.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %sriov_wreg408.i, align 4
  %tobool409.not.i = icmp eq ptr %235, null
  br i1 %tobool409.not.i, label %land.lhs.true404.i.cond.false420.i_crit_edge, label %cond.true410.i

land.lhs.true404.i.cond.false420.i_crit_edge:     ; preds = %land.lhs.true404.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false420.i

cond.true410.i:                                   ; preds = %land.lhs.true404.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx416.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %236 = ptrtoint ptr %arrayidx416.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx416.i, align 8
  %arrayidx418.i = getelementptr i32, ptr %237, i32 1
  %238 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx418.i, align 4
  %add419.i = add i32 %239, 22611
  tail call void %235(ptr noundef %handle, i32 noundef %add419.i, i32 noundef %or359.i, i32 noundef 0, i32 noundef 1) #9
  br label %sw.epilog427.i

cond.false420.i:                                  ; preds = %land.lhs.true404.i.cond.false420.i_crit_edge, %land.lhs.true399.i.cond.false420.i_crit_edge, %sw.default394.i.cond.false420.i_crit_edge
  %arrayidx422.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %240 = ptrtoint ptr %arrayidx422.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx422.i, align 8
  %arrayidx424.i = getelementptr i32, ptr %241, i32 1
  %242 = ptrtoint ptr %arrayidx424.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx424.i, align 4
  %add425.i = add i32 %243, 22611
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add425.i, i32 noundef %or359.i, i32 noundef 0) #9
  br label %sw.epilog427.i

sw.epilog427.i:                                   ; preds = %cond.false420.i, %cond.true410.i, %cond.false387.i, %cond.true377.i
  %244 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %245)
  %cond576.i = icmp eq i32 %245, 30
  %246 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %virt.i, align 8
  %and432.i = and i32 %247, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and432.i)
  %tobool433.not.i = icmp eq i32 %and432.i, 0
  br i1 %cond576.i, label %sw.bb429.i, label %sw.default465.i

sw.bb429.i:                                       ; preds = %sw.epilog427.i
  br i1 %tobool433.not.i, label %sw.bb429.i.cond.false456.i_crit_edge, label %land.lhs.true434.i

sw.bb429.i.cond.false456.i_crit_edge:             ; preds = %sw.bb429.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false456.i

land.lhs.true434.i:                               ; preds = %sw.bb429.i
  %funcs437.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %248 = ptrtoint ptr %funcs437.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %funcs437.i, align 4
  %tobool438.not.i = icmp eq ptr %249, null
  br i1 %tobool438.not.i, label %land.lhs.true434.i.cond.false456.i_crit_edge, label %land.lhs.true439.i

land.lhs.true434.i.cond.false456.i_crit_edge:     ; preds = %land.lhs.true434.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false456.i

land.lhs.true439.i:                               ; preds = %land.lhs.true434.i
  %sriov_rreg443.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %249, i32 0, i32 13
  %250 = ptrtoint ptr %sriov_rreg443.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %sriov_rreg443.i, align 4
  %tobool444.not.i = icmp eq ptr %251, null
  br i1 %tobool444.not.i, label %land.lhs.true439.i.cond.false456.i_crit_edge, label %cond.true445.i

land.lhs.true439.i.cond.false456.i_crit_edge:     ; preds = %land.lhs.true439.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false456.i

cond.true445.i:                                   ; preds = %land.lhs.true439.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx451.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %252 = ptrtoint ptr %arrayidx451.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %arrayidx451.i, align 8
  %arrayidx453.i = getelementptr i32, ptr %253, i32 1
  %254 = ptrtoint ptr %arrayidx453.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx453.i, align 4
  %add454.i = add i32 %255, 10272
  %call455.i = tail call i32 %251(ptr noundef %handle, i32 noundef %add454.i, i32 noundef 0, i32 noundef 1) #9
  br label %sw.epilog501.i

cond.false456.i:                                  ; preds = %land.lhs.true439.i.cond.false456.i_crit_edge, %land.lhs.true434.i.cond.false456.i_crit_edge, %sw.bb429.i.cond.false456.i_crit_edge
  %arrayidx458.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %256 = ptrtoint ptr %arrayidx458.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx458.i, align 8
  %arrayidx460.i = getelementptr i32, ptr %257, i32 1
  %258 = ptrtoint ptr %arrayidx460.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx460.i, align 4
  %add461.i = add i32 %259, 10272
  %call462.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add461.i, i32 noundef 0) #9
  br label %sw.epilog501.i

sw.default465.i:                                  ; preds = %sw.epilog427.i
  br i1 %tobool433.not.i, label %sw.default465.i.cond.false492.i_crit_edge, label %land.lhs.true470.i

sw.default465.i.cond.false492.i_crit_edge:        ; preds = %sw.default465.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false492.i

land.lhs.true470.i:                               ; preds = %sw.default465.i
  %funcs473.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %260 = ptrtoint ptr %funcs473.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %funcs473.i, align 4
  %tobool474.not.i = icmp eq ptr %261, null
  br i1 %tobool474.not.i, label %land.lhs.true470.i.cond.false492.i_crit_edge, label %land.lhs.true475.i

land.lhs.true470.i.cond.false492.i_crit_edge:     ; preds = %land.lhs.true470.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false492.i

land.lhs.true475.i:                               ; preds = %land.lhs.true470.i
  %sriov_rreg479.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %261, i32 0, i32 13
  %262 = ptrtoint ptr %sriov_rreg479.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %sriov_rreg479.i, align 4
  %tobool480.not.i = icmp eq ptr %263, null
  br i1 %tobool480.not.i, label %land.lhs.true475.i.cond.false492.i_crit_edge, label %cond.true481.i

land.lhs.true475.i.cond.false492.i_crit_edge:     ; preds = %land.lhs.true475.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false492.i

cond.true481.i:                                   ; preds = %land.lhs.true475.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx487.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %264 = ptrtoint ptr %arrayidx487.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %arrayidx487.i, align 8
  %arrayidx489.i = getelementptr i32, ptr %265, i32 1
  %266 = ptrtoint ptr %arrayidx489.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx489.i, align 4
  %add490.i = add i32 %267, 22611
  %call491.i = tail call i32 %263(ptr noundef %handle, i32 noundef %add490.i, i32 noundef 0, i32 noundef 1) #9
  br label %sw.epilog501.i

cond.false492.i:                                  ; preds = %land.lhs.true475.i.cond.false492.i_crit_edge, %land.lhs.true470.i.cond.false492.i_crit_edge, %sw.default465.i.cond.false492.i_crit_edge
  %arrayidx494.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %268 = ptrtoint ptr %arrayidx494.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx494.i, align 8
  %arrayidx496.i = getelementptr i32, ptr %269, i32 1
  %270 = ptrtoint ptr %arrayidx496.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx496.i, align 4
  %add497.i = add i32 %271, 22611
  %call498.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add497.i, i32 noundef 0) #9
  br label %sw.epilog501.i

sw.epilog501.i:                                   ; preds = %cond.false492.i, %cond.true481.i, %cond.false456.i, %cond.true445.i
  %data.1.i = phi i32 [ %call455.i, %cond.true445.i ], [ %call462.i, %cond.false456.i ], [ %call491.i, %cond.true481.i ], [ %call498.i, %cond.false492.i ]
  %or503.i = or i32 %data.1.i, 16
  %272 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %273)
  %cond577.i = icmp eq i32 %273, 30
  %274 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %virt.i, align 8
  %and508.i = and i32 %275, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and508.i)
  %tobool509.not.i = icmp eq i32 %and508.i, 0
  br i1 %cond577.i, label %sw.bb505.i, label %sw.default538.i

sw.bb505.i:                                       ; preds = %sw.epilog501.i
  br i1 %tobool509.not.i, label %sw.bb505.i.cond.false531.i_crit_edge, label %land.lhs.true510.i

sw.bb505.i.cond.false531.i_crit_edge:             ; preds = %sw.bb505.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false531.i

land.lhs.true510.i:                               ; preds = %sw.bb505.i
  %funcs513.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %276 = ptrtoint ptr %funcs513.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %funcs513.i, align 4
  %tobool514.not.i = icmp eq ptr %277, null
  br i1 %tobool514.not.i, label %land.lhs.true510.i.cond.false531.i_crit_edge, label %land.lhs.true515.i

land.lhs.true510.i.cond.false531.i_crit_edge:     ; preds = %land.lhs.true510.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false531.i

land.lhs.true515.i:                               ; preds = %land.lhs.true510.i
  %sriov_wreg519.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %277, i32 0, i32 12
  %278 = ptrtoint ptr %sriov_wreg519.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %sriov_wreg519.i, align 4
  %tobool520.not.i = icmp eq ptr %279, null
  br i1 %tobool520.not.i, label %land.lhs.true515.i.cond.false531.i_crit_edge, label %cond.true521.i

land.lhs.true515.i.cond.false531.i_crit_edge:     ; preds = %land.lhs.true515.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false531.i

cond.true521.i:                                   ; preds = %land.lhs.true515.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx527.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %280 = ptrtoint ptr %arrayidx527.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %arrayidx527.i, align 8
  %arrayidx529.i = getelementptr i32, ptr %281, i32 1
  %282 = ptrtoint ptr %arrayidx529.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx529.i, align 4
  %add530.i = add i32 %283, 10272
  tail call void %279(ptr noundef %handle, i32 noundef %add530.i, i32 noundef %or503.i, i32 noundef 0, i32 noundef 1) #9
  br label %mes_v10_1_load_microcode.exit

cond.false531.i:                                  ; preds = %land.lhs.true515.i.cond.false531.i_crit_edge, %land.lhs.true510.i.cond.false531.i_crit_edge, %sw.bb505.i.cond.false531.i_crit_edge
  %arrayidx533.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %284 = ptrtoint ptr %arrayidx533.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx533.i, align 8
  %arrayidx535.i = getelementptr i32, ptr %285, i32 1
  %286 = ptrtoint ptr %arrayidx535.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx535.i, align 4
  %add536.i = add i32 %287, 10272
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add536.i, i32 noundef %or503.i, i32 noundef 0) #9
  br label %mes_v10_1_load_microcode.exit

sw.default538.i:                                  ; preds = %sw.epilog501.i
  br i1 %tobool509.not.i, label %sw.default538.i.cond.false564.i_crit_edge, label %land.lhs.true543.i

sw.default538.i.cond.false564.i_crit_edge:        ; preds = %sw.default538.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false564.i

land.lhs.true543.i:                               ; preds = %sw.default538.i
  %funcs546.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %288 = ptrtoint ptr %funcs546.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %funcs546.i, align 4
  %tobool547.not.i = icmp eq ptr %289, null
  br i1 %tobool547.not.i, label %land.lhs.true543.i.cond.false564.i_crit_edge, label %land.lhs.true548.i

land.lhs.true543.i.cond.false564.i_crit_edge:     ; preds = %land.lhs.true543.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false564.i

land.lhs.true548.i:                               ; preds = %land.lhs.true543.i
  %sriov_wreg552.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %289, i32 0, i32 12
  %290 = ptrtoint ptr %sriov_wreg552.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %sriov_wreg552.i, align 4
  %tobool553.not.i = icmp eq ptr %291, null
  br i1 %tobool553.not.i, label %land.lhs.true548.i.cond.false564.i_crit_edge, label %cond.true554.i

land.lhs.true548.i.cond.false564.i_crit_edge:     ; preds = %land.lhs.true548.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false564.i

cond.true554.i:                                   ; preds = %land.lhs.true548.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx560.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %292 = ptrtoint ptr %arrayidx560.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx560.i, align 8
  %arrayidx562.i = getelementptr i32, ptr %293, i32 1
  %294 = ptrtoint ptr %arrayidx562.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx562.i, align 4
  %add563.i = add i32 %295, 22611
  tail call void %291(ptr noundef %handle, i32 noundef %add563.i, i32 noundef %or503.i, i32 noundef 0, i32 noundef 1) #9
  br label %mes_v10_1_load_microcode.exit

cond.false564.i:                                  ; preds = %land.lhs.true548.i.cond.false564.i_crit_edge, %land.lhs.true543.i.cond.false564.i_crit_edge, %sw.default538.i.cond.false564.i_crit_edge
  %arrayidx566.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %296 = ptrtoint ptr %arrayidx566.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx566.i, align 8
  %arrayidx568.i = getelementptr i32, ptr %297, i32 1
  %298 = ptrtoint ptr %arrayidx568.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx568.i, align 4
  %add569.i = add i32 %299, 22611
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add569.i, i32 noundef %or503.i, i32 noundef 0) #9
  br label %mes_v10_1_load_microcode.exit

mes_v10_1_load_microcode.exit:                    ; preds = %cond.false564.i, %cond.true554.i, %cond.false531.i, %cond.true521.i
  tail call void @nv_grbm_select(ptr noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %srbm_mutex.i) #9
  br label %if.end2

if.then1:                                         ; preds = %if.then6.i, %mes_v10_1_allocate_ucode_buffer.exit.i, %if.then.if.then1_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %mes_v10_1_allocate_ucode_buffer.exit.i ], [ -22, %if.then.if.then1_crit_edge ], [ %call.i774.i, %if.then6.i ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end2:                                          ; preds = %mes_v10_1_load_microcode.exit, %entry.if.end2_crit_edge
  tail call fastcc void @mes_v10_1_enable(ptr noundef %handle, i1 noundef zeroext true)
  %ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6
  %300 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %ring.i, align 8
  %mqd_ptr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 21
  %302 = ptrtoint ptr %mqd_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %mqd_ptr.i.i, align 8
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 -1070528512, ptr %303, align 4
  %compute_pipelinestat_enable.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 11
  %305 = ptrtoint ptr %compute_pipelinestat_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 1, ptr %compute_pipelinestat_enable.i.i, align 4
  %compute_static_thread_mgmt_se0.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 23
  %306 = ptrtoint ptr %compute_static_thread_mgmt_se0.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 -1, ptr %compute_static_thread_mgmt_se0.i.i, align 4
  %compute_static_thread_mgmt_se1.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 24
  %307 = ptrtoint ptr %compute_static_thread_mgmt_se1.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 -1, ptr %compute_static_thread_mgmt_se1.i.i, align 4
  %compute_static_thread_mgmt_se2.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 26
  %308 = ptrtoint ptr %compute_static_thread_mgmt_se2.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 -1, ptr %compute_static_thread_mgmt_se2.i.i, align 4
  %compute_static_thread_mgmt_se3.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 27
  %309 = ptrtoint ptr %compute_static_thread_mgmt_se3.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 -1, ptr %compute_static_thread_mgmt_se3.i.i, align 4
  %compute_misc_reserved.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 32
  %310 = ptrtoint ptr %compute_misc_reserved.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 3, ptr %compute_misc_reserved.i.i, align 4
  %eop_gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 22
  %311 = ptrtoint ptr %eop_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %311)
  %312 = load i64, ptr %eop_gpu_addr.i.i, align 8
  %shr.i.i = lshr i64 %312, 8
  %conv.i.i = trunc i64 %shr.i.i to i32
  %cp_hqd_eop_base_addr_lo.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 165
  %313 = ptrtoint ptr %cp_hqd_eop_base_addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %conv.i.i, ptr %cp_hqd_eop_base_addr_lo.i.i, align 4
  %shr2.i.i = lshr i64 %312, 40
  %conv4.i.i = trunc i64 %shr2.i.i to i32
  %cp_hqd_eop_base_addr_hi.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 166
  %314 = ptrtoint ptr %cp_hqd_eop_base_addr_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %conv4.i.i, ptr %cp_hqd_eop_base_addr_hi.i.i, align 4
  %virt.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %301, i32 0, i32 132
  %315 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %virt.i.i, align 8
  %and.i.i = and i32 %316, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i30 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i30, label %if.end2.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

if.end2.cond.false.i.i_crit_edge:                 ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %if.end2
  %funcs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %301, i32 0, i32 106, i32 2, i32 15
  %317 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %funcs.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %318, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %sriov_rreg.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %318, i32 0, i32 13
  %319 = ptrtoint ptr %sriov_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %sriov_rreg.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %320, null
  br i1 %tobool10.not.i.i, label %land.lhs.true6.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true6.i.i.cond.false.i.i_crit_edge:      ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %321 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %arrayidx.i.i, align 8
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %322, align 4
  %add.i.i = add i32 %324, 8144
  %call.i.i31 = tail call i32 %320(ptr noundef %301, i32 noundef %add.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true6.i.i.cond.false.i.i_crit_edge, %land.lhs.true.i.i.cond.false.i.i_crit_edge, %if.end2.cond.false.i.i_crit_edge
  %arrayidx18.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %325 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %arrayidx18.i.i, align 8
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %326, align 4
  %add21.i.i = add i32 %328, 8144
  %call22.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %301, i32 noundef %add21.i.i, i32 noundef 0) #9
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call.i.i31, %cond.true.i.i ], [ %call22.i.i, %cond.false.i.i ]
  %and23.i.i = and i32 %cond.i.i, -64
  %or.i.i = or i32 %and23.i.i, 8
  %cp_hqd_eop_control.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 167
  %329 = ptrtoint ptr %cp_hqd_eop_control.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %or.i.i, ptr %cp_hqd_eop_control.i.i, align 4
  %330 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %virt.i.i, align 8
  %and26.i.i = and i32 %331, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %cond.end.i.i.cond.false50.i.i_crit_edge, label %land.lhs.true28.i.i

cond.end.i.i.cond.false50.i.i_crit_edge:          ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false50.i.i

land.lhs.true28.i.i:                              ; preds = %cond.end.i.i
  %funcs31.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %301, i32 0, i32 106, i32 2, i32 15
  %332 = ptrtoint ptr %funcs31.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %funcs31.i.i, align 4
  %tobool32.not.i.i = icmp eq ptr %333, null
  br i1 %tobool32.not.i.i, label %land.lhs.true28.i.i.cond.false50.i.i_crit_edge, label %land.lhs.true33.i.i

land.lhs.true28.i.i.cond.false50.i.i_crit_edge:   ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false50.i.i

land.lhs.true33.i.i:                              ; preds = %land.lhs.true28.i.i
  %sriov_rreg37.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %333, i32 0, i32 13
  %334 = ptrtoint ptr %sriov_rreg37.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %sriov_rreg37.i.i, align 4
  %tobool38.not.i.i = icmp eq ptr %335, null
  br i1 %tobool38.not.i.i, label %land.lhs.true33.i.i.cond.false50.i.i_crit_edge, label %cond.true39.i.i

land.lhs.true33.i.i.cond.false50.i.i_crit_edge:   ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false50.i.i

cond.true39.i.i:                                  ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx45.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %336 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %arrayidx45.i.i, align 8
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %337, align 4
  %add48.i.i = add i32 %339, 8120
  %call49.i.i = tail call i32 %335(ptr noundef %301, i32 noundef %add48.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end57.i.i

cond.false50.i.i:                                 ; preds = %land.lhs.true33.i.i.cond.false50.i.i_crit_edge, %land.lhs.true28.i.i.cond.false50.i.i_crit_edge, %cond.end.i.i.cond.false50.i.i_crit_edge
  %arrayidx52.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %340 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %arrayidx52.i.i, align 8
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %341, align 4
  %add55.i.i = add i32 %343, 8120
  %call56.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %301, i32 noundef %add55.i.i, i32 noundef 0) #9
  br label %cond.end57.i.i

cond.end57.i.i:                                   ; preds = %cond.false50.i.i, %cond.true39.i.i
  %cond58.i.i = phi i32 [ %call49.i.i, %cond.true39.i.i ], [ %call56.i.i, %cond.false50.i.i ]
  %use_doorbell.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 24
  %344 = ptrtoint ptr %use_doorbell.i.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %use_doorbell.i.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %345)
  %tobool59.not.i.i = icmp eq i8 %345, 0
  br i1 %tobool59.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and60.i.i = and i32 %cond58.i.i, 536870915
  %doorbell_index.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 23
  %346 = ptrtoint ptr %doorbell_index.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %doorbell_index.i.i, align 8
  %shl.i.i = shl i32 %347, 2
  %and61.i.i = and i32 %shl.i.i, 268435452
  %or62.i.i = or i32 %and60.i.i, %and61.i.i
  %or64.i.i = or i32 %or62.i.i, 1073741824
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %cond.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and69.i.i = and i32 %cond58.i.i, -1073741825
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %tmp.0.i.i = phi i32 [ %or64.i.i, %if.then.i.i ], [ %and69.i.i, %if.else.i.i ]
  %cp_hqd_pq_doorbell_control.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 143
  %348 = ptrtoint ptr %cp_hqd_pq_doorbell_control.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %tmp.0.i.i, ptr %cp_hqd_pq_doorbell_control.i.i, align 4
  %wptr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 7
  %349 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_store8_noabort(i32 %349)
  store i64 0, ptr %wptr.i.i, align 8
  %cp_hqd_dequeue_request.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 152
  %350 = ptrtoint ptr %cp_hqd_dequeue_request.i.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 0, ptr %cp_hqd_dequeue_request.i.i, align 4
  %cp_hqd_pq_rptr.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 138
  %351 = ptrtoint ptr %cp_hqd_pq_rptr.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 0, ptr %cp_hqd_pq_rptr.i.i, align 4
  %cp_hqd_pq_wptr_lo.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 182
  %352 = ptrtoint ptr %cp_hqd_pq_wptr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 0, ptr %cp_hqd_pq_wptr_lo.i.i, align 4
  %cp_hqd_pq_wptr_hi.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 183
  %353 = ptrtoint ptr %cp_hqd_pq_wptr_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 0, ptr %cp_hqd_pq_wptr_hi.i.i, align 4
  %mqd_gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 20
  %354 = ptrtoint ptr %mqd_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %354)
  %355 = load i64, ptr %mqd_gpu_addr.i.i, align 8
  %356 = trunc i64 %355 to i32
  %conv72.i.i = and i32 %356, -4
  %cp_mqd_base_addr_lo.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 128
  %357 = ptrtoint ptr %cp_mqd_base_addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %conv72.i.i, ptr %cp_mqd_base_addr_lo.i.i, align 4
  %358 = load i64, ptr %mqd_gpu_addr.i.i, align 8
  %shr74.i.i = lshr i64 %358, 32
  %conv76.i.i = trunc i64 %shr74.i.i to i32
  %cp_mqd_base_addr_hi.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 129
  %359 = ptrtoint ptr %cp_mqd_base_addr_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %conv76.i.i, ptr %cp_mqd_base_addr_hi.i.i, align 4
  %360 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %virt.i.i, align 8
  %and79.i.i = and i32 %361, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i)
  %tobool80.not.i.i = icmp eq i32 %and79.i.i, 0
  br i1 %tobool80.not.i.i, label %if.end.i.i.cond.false103.i.i_crit_edge, label %land.lhs.true81.i.i

if.end.i.i.cond.false103.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false103.i.i

land.lhs.true81.i.i:                              ; preds = %if.end.i.i
  %funcs84.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %301, i32 0, i32 106, i32 2, i32 15
  %362 = ptrtoint ptr %funcs84.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %funcs84.i.i, align 4
  %tobool85.not.i.i = icmp eq ptr %363, null
  br i1 %tobool85.not.i.i, label %land.lhs.true81.i.i.cond.false103.i.i_crit_edge, label %land.lhs.true86.i.i

land.lhs.true81.i.i.cond.false103.i.i_crit_edge:  ; preds = %land.lhs.true81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false103.i.i

land.lhs.true86.i.i:                              ; preds = %land.lhs.true81.i.i
  %sriov_rreg90.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %363, i32 0, i32 13
  %364 = ptrtoint ptr %sriov_rreg90.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %sriov_rreg90.i.i, align 4
  %tobool91.not.i.i = icmp eq ptr %365, null
  br i1 %tobool91.not.i.i, label %land.lhs.true86.i.i.cond.false103.i.i_crit_edge, label %cond.true92.i.i

land.lhs.true86.i.i.cond.false103.i.i_crit_edge:  ; preds = %land.lhs.true86.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false103.i.i

cond.true92.i.i:                                  ; preds = %land.lhs.true86.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx98.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %366 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %arrayidx98.i.i, align 8
  %368 = ptrtoint ptr %367 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %367, align 4
  %add101.i.i = add i32 %369, 8139
  %call102.i.i = tail call i32 %365(ptr noundef %301, i32 noundef %add101.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end110.i.i

cond.false103.i.i:                                ; preds = %land.lhs.true86.i.i.cond.false103.i.i_crit_edge, %land.lhs.true81.i.i.cond.false103.i.i_crit_edge, %if.end.i.i.cond.false103.i.i_crit_edge
  %arrayidx105.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %370 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %arrayidx105.i.i, align 8
  %372 = ptrtoint ptr %371 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %371, align 4
  %add108.i.i = add i32 %373, 8139
  %call109.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %301, i32 noundef %add108.i.i, i32 noundef 0) #9
  br label %cond.end110.i.i

cond.end110.i.i:                                  ; preds = %cond.false103.i.i, %cond.true92.i.i
  %cond111.i.i = phi i32 [ %call102.i.i, %cond.true92.i.i ], [ %call109.i.i, %cond.false103.i.i ]
  %and112.i.i = and i32 %cond111.i.i, -16
  %cp_mqd_control.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 162
  %374 = ptrtoint ptr %cp_mqd_control.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %and112.i.i, ptr %cp_mqd_control.i.i, align 4
  %gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 12
  %375 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %375)
  %376 = load i64, ptr %gpu_addr.i.i, align 8
  %shr114.i.i = lshr i64 %376, 8
  %conv115.i.i = trunc i64 %shr114.i.i to i32
  %cp_hqd_pq_base_lo.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 136
  %377 = ptrtoint ptr %cp_hqd_pq_base_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %conv115.i.i, ptr %cp_hqd_pq_base_lo.i.i, align 4
  %shr116.i.i = lshr i64 %376, 40
  %conv118.i.i = trunc i64 %shr116.i.i to i32
  %cp_hqd_pq_base_hi.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 137
  %378 = ptrtoint ptr %cp_hqd_pq_base_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %conv118.i.i, ptr %cp_hqd_pq_base_hi.i.i, align 4
  %379 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %virt.i.i, align 8
  %and121.i.i = and i32 %380, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i.i)
  %tobool122.not.i.i = icmp eq i32 %and121.i.i, 0
  br i1 %tobool122.not.i.i, label %cond.end110.i.i.cond.false145.i.i_crit_edge, label %land.lhs.true123.i.i

cond.end110.i.i.cond.false145.i.i_crit_edge:      ; preds = %cond.end110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false145.i.i

land.lhs.true123.i.i:                             ; preds = %cond.end110.i.i
  %funcs126.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %301, i32 0, i32 106, i32 2, i32 15
  %381 = ptrtoint ptr %funcs126.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %funcs126.i.i, align 4
  %tobool127.not.i.i = icmp eq ptr %382, null
  br i1 %tobool127.not.i.i, label %land.lhs.true123.i.i.cond.false145.i.i_crit_edge, label %land.lhs.true128.i.i

land.lhs.true123.i.i.cond.false145.i.i_crit_edge: ; preds = %land.lhs.true123.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false145.i.i

land.lhs.true128.i.i:                             ; preds = %land.lhs.true123.i.i
  %sriov_rreg132.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %382, i32 0, i32 13
  %383 = ptrtoint ptr %sriov_rreg132.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %sriov_rreg132.i.i, align 4
  %tobool133.not.i.i = icmp eq ptr %384, null
  br i1 %tobool133.not.i.i, label %land.lhs.true128.i.i.cond.false145.i.i_crit_edge, label %cond.true134.i.i

land.lhs.true128.i.i.cond.false145.i.i_crit_edge: ; preds = %land.lhs.true128.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false145.i.i

cond.true134.i.i:                                 ; preds = %land.lhs.true128.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx140.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %385 = ptrtoint ptr %arrayidx140.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %arrayidx140.i.i, align 8
  %387 = ptrtoint ptr %386 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %386, align 4
  %add143.i.i = add i32 %388, 8122
  %call144.i.i = tail call i32 %384(ptr noundef %301, i32 noundef %add143.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end152.i.i

cond.false145.i.i:                                ; preds = %land.lhs.true128.i.i.cond.false145.i.i_crit_edge, %land.lhs.true123.i.i.cond.false145.i.i_crit_edge, %cond.end110.i.i.cond.false145.i.i_crit_edge
  %arrayidx147.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %389 = ptrtoint ptr %arrayidx147.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %arrayidx147.i.i, align 8
  %391 = ptrtoint ptr %390 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %390, align 4
  %add150.i.i = add i32 %392, 8122
  %call151.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %301, i32 noundef %add150.i.i, i32 noundef 0) #9
  br label %cond.end152.i.i

cond.end152.i.i:                                  ; preds = %cond.false145.i.i, %cond.true134.i.i
  %cond153.i.i = phi i32 [ %call144.i.i, %cond.true134.i.i ], [ %call151.i.i, %cond.false145.i.i ]
  %and154.i.i = and i32 %cond153.i.i, 268222656
  %ring_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 9
  %393 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %ring_size.i.i, align 8
  %div1.i.i = lshr i32 %394, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %394)
  %cmp.i.i.i = icmp ugt i32 %394, 7
  %sub.i2.i.i = add nsw i32 %div1.i.i, -1
  %395 = tail call i32 @llvm.ctlz.i32(i32 %sub.i2.i.i, i1 false) #9, !range !81
  %add.i.i.i.op = sub nsw i32 31, %395
  %add.i.i.i.op.op = and i32 %add.i.i.i.op, 63
  %and200.i.i = select i1 %cmp.i.i.i, i32 %add.i.i.i.op.op, i32 63
  %or201.i.i = or i32 %and154.i.i, %and200.i.i
  %or213.i.i = or i32 %or201.i.i, -1073676288
  %cp_hqd_pq_control.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 145
  %396 = ptrtoint ptr %cp_hqd_pq_control.i.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %or213.i.i, ptr %cp_hqd_pq_control.i.i, align 4
  %gpu_addr214.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %301, i32 0, i32 70, i32 2
  %397 = ptrtoint ptr %gpu_addr214.i.i to i32
  call void @__asan_load8_noabort(i32 %397)
  %398 = load i64, ptr %gpu_addr214.i.i, align 8
  %rptr_offs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 6
  %399 = ptrtoint ptr %rptr_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %rptr_offs.i.i, align 8
  %mul.i.i = shl i32 %400, 2
  %conv215.i.i = zext i32 %mul.i.i to i64
  %add216.i.i = add i64 %398, %conv215.i.i
  %401 = trunc i64 %add216.i.i to i32
  %conv218.i.i = and i32 %401, -4
  %cp_hqd_pq_rptr_report_addr_lo.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 139
  %402 = ptrtoint ptr %cp_hqd_pq_rptr_report_addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %conv218.i.i, ptr %cp_hqd_pq_rptr_report_addr_lo.i.i, align 4
  %shr219.i.i = lshr i64 %add216.i.i, 32
  %conv221.i.i = trunc i64 %shr219.i.i to i32
  %and222.i.i = and i32 %conv221.i.i, 65535
  %cp_hqd_pq_rptr_report_addr_hi.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 140
  %403 = ptrtoint ptr %cp_hqd_pq_rptr_report_addr_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %and222.i.i, ptr %cp_hqd_pq_rptr_report_addr_hi.i.i, align 4
  %404 = load i64, ptr %gpu_addr214.i.i, align 8
  %wptr_offs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 26
  %405 = ptrtoint ptr %wptr_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %wptr_offs.i.i, align 8
  %mul225.i.i = shl i32 %406, 2
  %conv226.i.i = zext i32 %mul225.i.i to i64
  %add227.i.i = add i64 %404, %conv226.i.i
  %407 = trunc i64 %add227.i.i to i32
  %conv229.i.i = and i32 %407, -8
  %cp_hqd_pq_wptr_poll_addr_lo.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 141
  %408 = ptrtoint ptr %cp_hqd_pq_wptr_poll_addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %conv229.i.i, ptr %cp_hqd_pq_wptr_poll_addr_lo.i.i, align 4
  %shr230.i.i = lshr i64 %add227.i.i, 32
  %conv232.i.i = trunc i64 %shr230.i.i to i32
  %and233.i.i = and i32 %conv232.i.i, 65535
  %cp_hqd_pq_wptr_poll_addr_hi.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 142
  %409 = ptrtoint ptr %cp_hqd_pq_wptr_poll_addr_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %and233.i.i, ptr %cp_hqd_pq_wptr_poll_addr_hi.i.i, align 4
  %410 = ptrtoint ptr %use_doorbell.i.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %use_doorbell.i.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %411)
  %tobool235.not.i.i = icmp eq i8 %411, 0
  br i1 %tobool235.not.i.i, label %cond.end152.i.i.if.end283.i.i_crit_edge, label %if.then236.i.i

cond.end152.i.i.if.end283.i.i_crit_edge:          ; preds = %cond.end152.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end283.i.i

if.then236.i.i:                                   ; preds = %cond.end152.i.i
  %412 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %virt.i.i, align 8
  %and239.i.i = and i32 %413, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239.i.i)
  %tobool240.not.i.i = icmp eq i32 %and239.i.i, 0
  br i1 %tobool240.not.i.i, label %if.then236.i.i.cond.false263.i.i_crit_edge, label %land.lhs.true241.i.i

if.then236.i.i.cond.false263.i.i_crit_edge:       ; preds = %if.then236.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false263.i.i

land.lhs.true241.i.i:                             ; preds = %if.then236.i.i
  %funcs244.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %301, i32 0, i32 106, i32 2, i32 15
  %414 = ptrtoint ptr %funcs244.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %funcs244.i.i, align 4
  %tobool245.not.i.i = icmp eq ptr %415, null
  br i1 %tobool245.not.i.i, label %land.lhs.true241.i.i.cond.false263.i.i_crit_edge, label %land.lhs.true246.i.i

land.lhs.true241.i.i.cond.false263.i.i_crit_edge: ; preds = %land.lhs.true241.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false263.i.i

land.lhs.true246.i.i:                             ; preds = %land.lhs.true241.i.i
  %sriov_rreg250.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %415, i32 0, i32 13
  %416 = ptrtoint ptr %sriov_rreg250.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %sriov_rreg250.i.i, align 4
  %tobool251.not.i.i = icmp eq ptr %417, null
  br i1 %tobool251.not.i.i, label %land.lhs.true246.i.i.cond.false263.i.i_crit_edge, label %cond.true252.i.i

land.lhs.true246.i.i.cond.false263.i.i_crit_edge: ; preds = %land.lhs.true246.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false263.i.i

cond.true252.i.i:                                 ; preds = %land.lhs.true246.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx258.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %418 = ptrtoint ptr %arrayidx258.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %arrayidx258.i.i, align 8
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %419, align 4
  %add261.i.i = add i32 %421, 8120
  %call262.i.i = tail call i32 %417(ptr noundef %301, i32 noundef %add261.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end270.i.i

cond.false263.i.i:                                ; preds = %land.lhs.true246.i.i.cond.false263.i.i_crit_edge, %land.lhs.true241.i.i.cond.false263.i.i_crit_edge, %if.then236.i.i.cond.false263.i.i_crit_edge
  %arrayidx265.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %422 = ptrtoint ptr %arrayidx265.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %arrayidx265.i.i, align 8
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %423, align 4
  %add268.i.i = add i32 %425, 8120
  %call269.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %301, i32 noundef %add268.i.i, i32 noundef 0) #9
  br label %cond.end270.i.i

cond.end270.i.i:                                  ; preds = %cond.false263.i.i, %cond.true252.i.i
  %cond271.i.i = phi i32 [ %call262.i.i, %cond.true252.i.i ], [ %call269.i.i, %cond.false263.i.i ]
  %and272.i.i = and i32 %cond271.i.i, 536870915
  %doorbell_index273.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 23
  %426 = ptrtoint ptr %doorbell_index273.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %doorbell_index273.i.i, align 8
  %shl274.i.i = shl i32 %427, 2
  %and275.i.i = and i32 %shl274.i.i, 268435452
  %or276.i.i = or i32 %and272.i.i, %and275.i.i
  %or278.i.i = or i32 %or276.i.i, 1073741824
  br label %if.end283.i.i

if.end283.i.i:                                    ; preds = %cond.end270.i.i, %cond.end152.i.i.if.end283.i.i_crit_edge
  %tmp.1.i.i = phi i32 [ %or278.i.i, %cond.end270.i.i ], [ 0, %cond.end152.i.i.if.end283.i.i_crit_edge ]
  %428 = ptrtoint ptr %cp_hqd_pq_doorbell_control.i.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %tmp.1.i.i, ptr %cp_hqd_pq_doorbell_control.i.i, align 4
  %429 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_store8_noabort(i32 %429)
  store i64 0, ptr %wptr.i.i, align 8
  %430 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %virt.i.i, align 8
  %and288.i.i = and i32 %431, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and288.i.i)
  %tobool289.not.i.i = icmp eq i32 %and288.i.i, 0
  br i1 %tobool289.not.i.i, label %if.end283.i.i.cond.false312.i.i_crit_edge, label %land.lhs.true290.i.i

if.end283.i.i.cond.false312.i.i_crit_edge:        ; preds = %if.end283.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false312.i.i

land.lhs.true290.i.i:                             ; preds = %if.end283.i.i
  %funcs293.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %301, i32 0, i32 106, i32 2, i32 15
  %432 = ptrtoint ptr %funcs293.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %funcs293.i.i, align 4
  %tobool294.not.i.i = icmp eq ptr %433, null
  br i1 %tobool294.not.i.i, label %land.lhs.true290.i.i.cond.false312.i.i_crit_edge, label %land.lhs.true295.i.i

land.lhs.true290.i.i.cond.false312.i.i_crit_edge: ; preds = %land.lhs.true290.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false312.i.i

land.lhs.true295.i.i:                             ; preds = %land.lhs.true290.i.i
  %sriov_rreg299.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %433, i32 0, i32 13
  %434 = ptrtoint ptr %sriov_rreg299.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %sriov_rreg299.i.i, align 4
  %tobool300.not.i.i = icmp eq ptr %435, null
  br i1 %tobool300.not.i.i, label %land.lhs.true295.i.i.cond.false312.i.i_crit_edge, label %cond.true301.i.i

land.lhs.true295.i.i.cond.false312.i.i_crit_edge: ; preds = %land.lhs.true295.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false312.i.i

cond.true301.i.i:                                 ; preds = %land.lhs.true295.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx307.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %436 = ptrtoint ptr %arrayidx307.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %arrayidx307.i.i, align 8
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %437, align 4
  %add310.i.i = add i32 %439, 8115
  %call311.i.i = tail call i32 %435(ptr noundef %301, i32 noundef %add310.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end319.i.i

cond.false312.i.i:                                ; preds = %land.lhs.true295.i.i.cond.false312.i.i_crit_edge, %land.lhs.true290.i.i.cond.false312.i.i_crit_edge, %if.end283.i.i.cond.false312.i.i_crit_edge
  %arrayidx314.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %440 = ptrtoint ptr %arrayidx314.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %arrayidx314.i.i, align 8
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %441, align 4
  %add317.i.i = add i32 %443, 8115
  %call318.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %301, i32 noundef %add317.i.i, i32 noundef 0) #9
  br label %cond.end319.i.i

cond.end319.i.i:                                  ; preds = %cond.false312.i.i, %cond.true301.i.i
  %cond320.i.i = phi i32 [ %call311.i.i, %cond.true301.i.i ], [ %call318.i.i, %cond.false312.i.i ]
  %444 = ptrtoint ptr %cp_hqd_pq_rptr.i.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %cond320.i.i, ptr %cp_hqd_pq_rptr.i.i, align 4
  %cp_hqd_vmid.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 131
  %445 = ptrtoint ptr %cp_hqd_vmid.i.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 0, ptr %cp_hqd_vmid.i.i, align 4
  %446 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %virt.i.i, align 8
  %and324.i.i = and i32 %447, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324.i.i)
  %tobool325.not.i.i = icmp eq i32 %and324.i.i, 0
  br i1 %tobool325.not.i.i, label %cond.end319.i.i.cond.false348.i.i_crit_edge, label %land.lhs.true326.i.i

cond.end319.i.i.cond.false348.i.i_crit_edge:      ; preds = %cond.end319.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false348.i.i

land.lhs.true326.i.i:                             ; preds = %cond.end319.i.i
  %funcs329.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %301, i32 0, i32 106, i32 2, i32 15
  %448 = ptrtoint ptr %funcs329.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %funcs329.i.i, align 4
  %tobool330.not.i.i = icmp eq ptr %449, null
  br i1 %tobool330.not.i.i, label %land.lhs.true326.i.i.cond.false348.i.i_crit_edge, label %land.lhs.true331.i.i

land.lhs.true326.i.i.cond.false348.i.i_crit_edge: ; preds = %land.lhs.true326.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false348.i.i

land.lhs.true331.i.i:                             ; preds = %land.lhs.true326.i.i
  %sriov_rreg335.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %449, i32 0, i32 13
  %450 = ptrtoint ptr %sriov_rreg335.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %sriov_rreg335.i.i, align 4
  %tobool336.not.i.i = icmp eq ptr %451, null
  br i1 %tobool336.not.i.i, label %land.lhs.true331.i.i.cond.false348.i.i_crit_edge, label %cond.true337.i.i

land.lhs.true331.i.i.cond.false348.i.i_crit_edge: ; preds = %land.lhs.true331.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false348.i.i

cond.true337.i.i:                                 ; preds = %land.lhs.true331.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx343.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %452 = ptrtoint ptr %arrayidx343.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %arrayidx343.i.i, align 8
  %454 = ptrtoint ptr %453 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %453, align 4
  %add346.i.i = add i32 %455, 8109
  %call347.i.i = tail call i32 %451(ptr noundef %301, i32 noundef %add346.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end355.i.i

cond.false348.i.i:                                ; preds = %land.lhs.true331.i.i.cond.false348.i.i_crit_edge, %land.lhs.true326.i.i.cond.false348.i.i_crit_edge, %cond.end319.i.i.cond.false348.i.i_crit_edge
  %arrayidx350.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %456 = ptrtoint ptr %arrayidx350.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %arrayidx350.i.i, align 8
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %457, align 4
  %add353.i.i = add i32 %459, 8109
  %call354.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %301, i32 noundef %add353.i.i, i32 noundef 0) #9
  br label %cond.end355.i.i

cond.end355.i.i:                                  ; preds = %cond.false348.i.i, %cond.true337.i.i
  %cond356.i.i = phi i32 [ %call347.i.i, %cond.true337.i.i ], [ %call354.i.i, %cond.false348.i.i ]
  %and357.i.i = and i32 %cond356.i.i, -261889
  %or358.i.i = or i32 %and357.i.i, 21248
  %cp_hqd_persistent_state.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 132
  %460 = ptrtoint ptr %cp_hqd_persistent_state.i.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %or358.i.i, ptr %cp_hqd_persistent_state.i.i, align 4
  %461 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %virt.i.i, align 8
  %and361.i.i = and i32 %462, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361.i.i)
  %tobool362.not.i.i = icmp eq i32 %and361.i.i, 0
  br i1 %tobool362.not.i.i, label %cond.end355.i.i.cond.false385.i.i_crit_edge, label %land.lhs.true363.i.i

cond.end355.i.i.cond.false385.i.i_crit_edge:      ; preds = %cond.end355.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false385.i.i

land.lhs.true363.i.i:                             ; preds = %cond.end355.i.i
  %funcs366.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %301, i32 0, i32 106, i32 2, i32 15
  %463 = ptrtoint ptr %funcs366.i.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %funcs366.i.i, align 4
  %tobool367.not.i.i = icmp eq ptr %464, null
  br i1 %tobool367.not.i.i, label %land.lhs.true363.i.i.cond.false385.i.i_crit_edge, label %land.lhs.true368.i.i

land.lhs.true363.i.i.cond.false385.i.i_crit_edge: ; preds = %land.lhs.true363.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false385.i.i

land.lhs.true368.i.i:                             ; preds = %land.lhs.true363.i.i
  %sriov_rreg372.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %464, i32 0, i32 13
  %465 = ptrtoint ptr %sriov_rreg372.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %sriov_rreg372.i.i, align 4
  %tobool373.not.i.i = icmp eq ptr %466, null
  br i1 %tobool373.not.i.i, label %land.lhs.true368.i.i.cond.false385.i.i_crit_edge, label %cond.true374.i.i

land.lhs.true368.i.i.cond.false385.i.i_crit_edge: ; preds = %land.lhs.true368.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false385.i.i

cond.true374.i.i:                                 ; preds = %land.lhs.true368.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx380.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %467 = ptrtoint ptr %arrayidx380.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %arrayidx380.i.i, align 8
  %469 = ptrtoint ptr %468 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %468, align 4
  %add383.i.i = add i32 %470, 8126
  %call384.i.i = tail call i32 %466(ptr noundef %301, i32 noundef %add383.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %mes_v10_1_mqd_init.exit.i

cond.false385.i.i:                                ; preds = %land.lhs.true368.i.i.cond.false385.i.i_crit_edge, %land.lhs.true363.i.i.cond.false385.i.i_crit_edge, %cond.end355.i.i.cond.false385.i.i_crit_edge
  %arrayidx387.i.i = getelementptr %struct.amdgpu_device, ptr %301, i32 0, i32 130, i32 1
  %471 = ptrtoint ptr %arrayidx387.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %arrayidx387.i.i, align 8
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %472, align 4
  %add390.i.i = add i32 %474, 8126
  %call391.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %301, i32 noundef %add390.i.i, i32 noundef 0) #9
  br label %mes_v10_1_mqd_init.exit.i

mes_v10_1_mqd_init.exit.i:                        ; preds = %cond.false385.i.i, %cond.true374.i.i
  %cond393.i.i = phi i32 [ %call384.i.i, %cond.true374.i.i ], [ %call391.i.i, %cond.false385.i.i ]
  %or395.i.i = or i32 %cond393.i.i, 3145728
  %cp_hqd_ib_control.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 149
  %475 = ptrtoint ptr %cp_hqd_ib_control.i.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %or395.i.i, ptr %cp_hqd_ib_control.i.i, align 4
  %cp_hqd_active.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %303, i32 0, i32 130
  %476 = ptrtoint ptr %cp_hqd_active.i.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 1, ptr %cp_hqd_active.i.i, align 4
  %477 = ptrtoint ptr %mqd_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %mqd_ptr.i.i, align 8
  %479 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %ring.i, align 8
  %srbm_mutex.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %srbm_mutex.i.i, i32 noundef 0) #9
  tail call void @nv_grbm_select(ptr noundef %480, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %virt.i2.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 132
  %481 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %virt.i2.i, align 8
  %and.i3.i = and i32 %482, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i4.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i4.i, label %mes_v10_1_mqd_init.exit.i.cond.false.i12.i_crit_edge, label %land.lhs.true.i6.i

mes_v10_1_mqd_init.exit.i.cond.false.i12.i_crit_edge: ; preds = %mes_v10_1_mqd_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i12.i

land.lhs.true.i6.i:                               ; preds = %mes_v10_1_mqd_init.exit.i
  %funcs.i5.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %483 = ptrtoint ptr %funcs.i5.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %funcs.i5.i, align 4
  %tobool2.not.i.i = icmp eq ptr %484, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i6.i.cond.false.i12.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i6.i.cond.false.i12.i_crit_edge:    ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i12.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i6.i
  %sriov_rreg.i7.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %484, i32 0, i32 13
  %485 = ptrtoint ptr %sriov_rreg.i7.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %sriov_rreg.i7.i, align 4
  %tobool7.not.i.i = icmp eq ptr %486, null
  br i1 %tobool7.not.i.i, label %land.lhs.true3.i.i.cond.false.i12.i_crit_edge, label %cond.true.i11.i

land.lhs.true3.i.i.cond.false.i12.i_crit_edge:    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i12.i

cond.true.i11.i:                                  ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i8.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %487 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %arrayidx.i8.i, align 8
  %489 = ptrtoint ptr %488 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %488, align 4
  %add.i9.i = add i32 %490, 8108
  %call.i10.i = tail call i32 %486(ptr noundef %480, i32 noundef %add.i9.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end.i15.i

cond.false.i12.i:                                 ; preds = %land.lhs.true3.i.i.cond.false.i12.i_crit_edge, %land.lhs.true.i6.i.cond.false.i12.i_crit_edge, %mes_v10_1_mqd_init.exit.i.cond.false.i12.i_crit_edge
  %arrayidx15.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %491 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %arrayidx15.i.i, align 8
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %492, align 4
  %add18.i.i = add i32 %494, 8108
  %call19.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %480, i32 noundef %add18.i.i, i32 noundef 0) #9
  br label %cond.end.i15.i

cond.end.i15.i:                                   ; preds = %cond.false.i12.i, %cond.true.i11.i
  %cond.i13.i = phi i32 [ %call.i10.i, %cond.true.i11.i ], [ %call19.i.i, %cond.false.i12.i ]
  %and20.i.i = and i32 %cond.i13.i, -16
  %495 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %virt.i2.i, align 8
  %and23.i14.i = and i32 %496, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i14.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i14.i, 0
  br i1 %tobool24.not.i.i, label %cond.end.i15.i.cond.false45.i.i_crit_edge, label %land.lhs.true25.i.i

cond.end.i15.i.cond.false45.i.i_crit_edge:        ; preds = %cond.end.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false45.i.i

land.lhs.true25.i.i:                              ; preds = %cond.end.i15.i
  %funcs28.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %497 = ptrtoint ptr %funcs28.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %funcs28.i.i, align 4
  %tobool29.not.i.i = icmp eq ptr %498, null
  br i1 %tobool29.not.i.i, label %land.lhs.true25.i.i.cond.false45.i.i_crit_edge, label %land.lhs.true30.i.i

land.lhs.true25.i.i.cond.false45.i.i_crit_edge:   ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false45.i.i

land.lhs.true30.i.i:                              ; preds = %land.lhs.true25.i.i
  %sriov_wreg.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %498, i32 0, i32 12
  %499 = ptrtoint ptr %sriov_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %sriov_wreg.i.i, align 4
  %tobool34.not.i.i = icmp eq ptr %500, null
  br i1 %tobool34.not.i.i, label %land.lhs.true30.i.i.cond.false45.i.i_crit_edge, label %cond.true35.i.i

land.lhs.true30.i.i.cond.false45.i.i_crit_edge:   ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false45.i.i

cond.true35.i.i:                                  ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx41.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %501 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %arrayidx41.i.i, align 8
  %503 = ptrtoint ptr %502 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %502, align 4
  %add44.i.i = add i32 %504, 8108
  tail call void %500(ptr noundef %480, i32 noundef %add44.i.i, i32 noundef %and20.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end51.i.i

cond.false45.i.i:                                 ; preds = %land.lhs.true30.i.i.cond.false45.i.i_crit_edge, %land.lhs.true25.i.i.cond.false45.i.i_crit_edge, %cond.end.i15.i.cond.false45.i.i_crit_edge
  %arrayidx47.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %505 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %arrayidx47.i.i, align 8
  %507 = ptrtoint ptr %506 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %506, align 4
  %add50.i.i = add i32 %508, 8108
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add50.i.i, i32 noundef %and20.i.i, i32 noundef 0) #9
  br label %cond.end51.i.i

cond.end51.i.i:                                   ; preds = %cond.false45.i.i, %cond.true35.i.i
  %509 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %virt.i2.i, align 8
  %and54.i.i = and i32 %510, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i)
  %tobool55.not.i.i = icmp eq i32 %and54.i.i, 0
  br i1 %tobool55.not.i.i, label %cond.end51.i.i.cond.false78.i.i_crit_edge, label %land.lhs.true56.i.i

cond.end51.i.i.cond.false78.i.i_crit_edge:        ; preds = %cond.end51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false78.i.i

land.lhs.true56.i.i:                              ; preds = %cond.end51.i.i
  %funcs59.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %511 = ptrtoint ptr %funcs59.i.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %funcs59.i.i, align 4
  %tobool60.not.i.i = icmp eq ptr %512, null
  br i1 %tobool60.not.i.i, label %land.lhs.true56.i.i.cond.false78.i.i_crit_edge, label %land.lhs.true61.i.i

land.lhs.true56.i.i.cond.false78.i.i_crit_edge:   ; preds = %land.lhs.true56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false78.i.i

land.lhs.true61.i.i:                              ; preds = %land.lhs.true56.i.i
  %sriov_rreg65.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %512, i32 0, i32 13
  %513 = ptrtoint ptr %sriov_rreg65.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %sriov_rreg65.i.i, align 4
  %tobool66.not.i.i = icmp eq ptr %514, null
  br i1 %tobool66.not.i.i, label %land.lhs.true61.i.i.cond.false78.i.i_crit_edge, label %cond.true67.i.i

land.lhs.true61.i.i.cond.false78.i.i_crit_edge:   ; preds = %land.lhs.true61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false78.i.i

cond.true67.i.i:                                  ; preds = %land.lhs.true61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx73.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %515 = ptrtoint ptr %arrayidx73.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %arrayidx73.i.i, align 8
  %517 = ptrtoint ptr %516 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %516, align 4
  %add76.i.i = add i32 %518, 8120
  %call77.i.i = tail call i32 %514(ptr noundef %480, i32 noundef %add76.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end85.i.i

cond.false78.i.i:                                 ; preds = %land.lhs.true61.i.i.cond.false78.i.i_crit_edge, %land.lhs.true56.i.i.cond.false78.i.i_crit_edge, %cond.end51.i.i.cond.false78.i.i_crit_edge
  %arrayidx80.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %519 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %arrayidx80.i.i, align 8
  %521 = ptrtoint ptr %520 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %520, align 4
  %add83.i.i = add i32 %522, 8120
  %call84.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %480, i32 noundef %add83.i.i, i32 noundef 0) #9
  br label %cond.end85.i.i

cond.end85.i.i:                                   ; preds = %cond.false78.i.i, %cond.true67.i.i
  %cond86.i.i = phi i32 [ %call77.i.i, %cond.true67.i.i ], [ %call84.i.i, %cond.false78.i.i ]
  %and87.i.i = and i32 %cond86.i.i, -1073741825
  %523 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %virt.i2.i, align 8
  %and91.i.i = and i32 %524, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i.i)
  %tobool92.not.i.i = icmp eq i32 %and91.i.i, 0
  br i1 %tobool92.not.i.i, label %cond.end85.i.i.cond.false114.i.i_crit_edge, label %land.lhs.true93.i.i

cond.end85.i.i.cond.false114.i.i_crit_edge:       ; preds = %cond.end85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false114.i.i

land.lhs.true93.i.i:                              ; preds = %cond.end85.i.i
  %funcs96.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %525 = ptrtoint ptr %funcs96.i.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %funcs96.i.i, align 4
  %tobool97.not.i.i = icmp eq ptr %526, null
  br i1 %tobool97.not.i.i, label %land.lhs.true93.i.i.cond.false114.i.i_crit_edge, label %land.lhs.true98.i.i

land.lhs.true93.i.i.cond.false114.i.i_crit_edge:  ; preds = %land.lhs.true93.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false114.i.i

land.lhs.true98.i.i:                              ; preds = %land.lhs.true93.i.i
  %sriov_wreg102.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %526, i32 0, i32 12
  %527 = ptrtoint ptr %sriov_wreg102.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %sriov_wreg102.i.i, align 4
  %tobool103.not.i.i = icmp eq ptr %528, null
  br i1 %tobool103.not.i.i, label %land.lhs.true98.i.i.cond.false114.i.i_crit_edge, label %cond.true104.i.i

land.lhs.true98.i.i.cond.false114.i.i_crit_edge:  ; preds = %land.lhs.true98.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false114.i.i

cond.true104.i.i:                                 ; preds = %land.lhs.true98.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx110.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %529 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %arrayidx110.i.i, align 8
  %531 = ptrtoint ptr %530 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %530, align 4
  %add113.i.i = add i32 %532, 8120
  tail call void %528(ptr noundef %480, i32 noundef %add113.i.i, i32 noundef %and87.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end120.i.i

cond.false114.i.i:                                ; preds = %land.lhs.true98.i.i.cond.false114.i.i_crit_edge, %land.lhs.true93.i.i.cond.false114.i.i_crit_edge, %cond.end85.i.i.cond.false114.i.i_crit_edge
  %arrayidx116.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %533 = ptrtoint ptr %arrayidx116.i.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %arrayidx116.i.i, align 8
  %535 = ptrtoint ptr %534 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %534, align 4
  %add119.i.i = add i32 %536, 8120
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add119.i.i, i32 noundef %and87.i.i, i32 noundef 0) #9
  br label %cond.end120.i.i

cond.end120.i.i:                                  ; preds = %cond.false114.i.i, %cond.true104.i.i
  %537 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %virt.i2.i, align 8
  %and123.i.i = and i32 %538, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i.i)
  %tobool124.not.i.i = icmp eq i32 %and123.i.i, 0
  br i1 %tobool124.not.i.i, label %cond.end120.i.i.cond.false146.i.i_crit_edge, label %land.lhs.true125.i.i

cond.end120.i.i.cond.false146.i.i_crit_edge:      ; preds = %cond.end120.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false146.i.i

land.lhs.true125.i.i:                             ; preds = %cond.end120.i.i
  %funcs128.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %539 = ptrtoint ptr %funcs128.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %funcs128.i.i, align 4
  %tobool129.not.i.i = icmp eq ptr %540, null
  br i1 %tobool129.not.i.i, label %land.lhs.true125.i.i.cond.false146.i.i_crit_edge, label %land.lhs.true130.i.i

land.lhs.true125.i.i.cond.false146.i.i_crit_edge: ; preds = %land.lhs.true125.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false146.i.i

land.lhs.true130.i.i:                             ; preds = %land.lhs.true125.i.i
  %sriov_wreg134.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %540, i32 0, i32 12
  %541 = ptrtoint ptr %sriov_wreg134.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %sriov_wreg134.i.i, align 4
  %tobool135.not.i.i = icmp eq ptr %542, null
  br i1 %tobool135.not.i.i, label %land.lhs.true130.i.i.cond.false146.i.i_crit_edge, label %cond.true136.i.i

land.lhs.true130.i.i.cond.false146.i.i_crit_edge: ; preds = %land.lhs.true130.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false146.i.i

cond.true136.i.i:                                 ; preds = %land.lhs.true130.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx142.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %543 = ptrtoint ptr %arrayidx142.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %arrayidx142.i.i, align 8
  %545 = ptrtoint ptr %544 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %544, align 4
  %add145.i.i = add i32 %546, 8105
  %cp_mqd_base_addr_lo.i16.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 128
  %547 = ptrtoint ptr %cp_mqd_base_addr_lo.i16.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %cp_mqd_base_addr_lo.i16.i, align 4
  tail call void %542(ptr noundef %480, i32 noundef %add145.i.i, i32 noundef %548, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end153.i.i

cond.false146.i.i:                                ; preds = %land.lhs.true130.i.i.cond.false146.i.i_crit_edge, %land.lhs.true125.i.i.cond.false146.i.i_crit_edge, %cond.end120.i.i.cond.false146.i.i_crit_edge
  %arrayidx148.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %549 = ptrtoint ptr %arrayidx148.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %arrayidx148.i.i, align 8
  %551 = ptrtoint ptr %550 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %550, align 4
  %add151.i.i = add i32 %552, 8105
  %cp_mqd_base_addr_lo152.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 128
  %553 = ptrtoint ptr %cp_mqd_base_addr_lo152.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %cp_mqd_base_addr_lo152.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add151.i.i, i32 noundef %554, i32 noundef 0) #9
  br label %cond.end153.i.i

cond.end153.i.i:                                  ; preds = %cond.false146.i.i, %cond.true136.i.i
  %555 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %virt.i2.i, align 8
  %and156.i.i = and i32 %556, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i.i)
  %tobool157.not.i.i = icmp eq i32 %and156.i.i, 0
  br i1 %tobool157.not.i.i, label %cond.end153.i.i.cond.false179.i.i_crit_edge, label %land.lhs.true158.i.i

cond.end153.i.i.cond.false179.i.i_crit_edge:      ; preds = %cond.end153.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false179.i.i

land.lhs.true158.i.i:                             ; preds = %cond.end153.i.i
  %funcs161.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %557 = ptrtoint ptr %funcs161.i.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %funcs161.i.i, align 4
  %tobool162.not.i.i = icmp eq ptr %558, null
  br i1 %tobool162.not.i.i, label %land.lhs.true158.i.i.cond.false179.i.i_crit_edge, label %land.lhs.true163.i.i

land.lhs.true158.i.i.cond.false179.i.i_crit_edge: ; preds = %land.lhs.true158.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false179.i.i

land.lhs.true163.i.i:                             ; preds = %land.lhs.true158.i.i
  %sriov_wreg167.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %558, i32 0, i32 12
  %559 = ptrtoint ptr %sriov_wreg167.i.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %sriov_wreg167.i.i, align 4
  %tobool168.not.i.i = icmp eq ptr %560, null
  br i1 %tobool168.not.i.i, label %land.lhs.true163.i.i.cond.false179.i.i_crit_edge, label %cond.true169.i.i

land.lhs.true163.i.i.cond.false179.i.i_crit_edge: ; preds = %land.lhs.true163.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false179.i.i

cond.true169.i.i:                                 ; preds = %land.lhs.true163.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx175.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %561 = ptrtoint ptr %arrayidx175.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %arrayidx175.i.i, align 8
  %563 = ptrtoint ptr %562 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %562, align 4
  %add178.i.i = add i32 %564, 8106
  %cp_mqd_base_addr_hi.i17.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 129
  %565 = ptrtoint ptr %cp_mqd_base_addr_hi.i17.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %cp_mqd_base_addr_hi.i17.i, align 4
  tail call void %560(ptr noundef %480, i32 noundef %add178.i.i, i32 noundef %566, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end186.i.i

cond.false179.i.i:                                ; preds = %land.lhs.true163.i.i.cond.false179.i.i_crit_edge, %land.lhs.true158.i.i.cond.false179.i.i_crit_edge, %cond.end153.i.i.cond.false179.i.i_crit_edge
  %arrayidx181.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %567 = ptrtoint ptr %arrayidx181.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %arrayidx181.i.i, align 8
  %569 = ptrtoint ptr %568 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %568, align 4
  %add184.i.i = add i32 %570, 8106
  %cp_mqd_base_addr_hi185.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 129
  %571 = ptrtoint ptr %cp_mqd_base_addr_hi185.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %cp_mqd_base_addr_hi185.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add184.i.i, i32 noundef %572, i32 noundef 0) #9
  br label %cond.end186.i.i

cond.end186.i.i:                                  ; preds = %cond.false179.i.i, %cond.true169.i.i
  %573 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %virt.i2.i, align 8
  %and189.i.i = and i32 %574, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189.i.i)
  %tobool190.not.i.i = icmp eq i32 %and189.i.i, 0
  br i1 %tobool190.not.i.i, label %cond.end186.i.i.cond.false213.i.i_crit_edge, label %land.lhs.true191.i.i

cond.end186.i.i.cond.false213.i.i_crit_edge:      ; preds = %cond.end186.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false213.i.i

land.lhs.true191.i.i:                             ; preds = %cond.end186.i.i
  %funcs194.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %575 = ptrtoint ptr %funcs194.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %funcs194.i.i, align 4
  %tobool195.not.i.i = icmp eq ptr %576, null
  br i1 %tobool195.not.i.i, label %land.lhs.true191.i.i.cond.false213.i.i_crit_edge, label %land.lhs.true196.i.i

land.lhs.true191.i.i.cond.false213.i.i_crit_edge: ; preds = %land.lhs.true191.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false213.i.i

land.lhs.true196.i.i:                             ; preds = %land.lhs.true191.i.i
  %sriov_rreg200.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %576, i32 0, i32 13
  %577 = ptrtoint ptr %sriov_rreg200.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %sriov_rreg200.i.i, align 4
  %tobool201.not.i.i = icmp eq ptr %578, null
  br i1 %tobool201.not.i.i, label %land.lhs.true196.i.i.cond.false213.i.i_crit_edge, label %cond.true202.i.i

land.lhs.true196.i.i.cond.false213.i.i_crit_edge: ; preds = %land.lhs.true196.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false213.i.i

cond.true202.i.i:                                 ; preds = %land.lhs.true196.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx208.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %579 = ptrtoint ptr %arrayidx208.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %arrayidx208.i.i, align 8
  %581 = ptrtoint ptr %580 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %580, align 4
  %add211.i.i = add i32 %582, 8139
  %call212.i.i = tail call i32 %578(ptr noundef %480, i32 noundef %add211.i.i, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end220.i.i

cond.false213.i.i:                                ; preds = %land.lhs.true196.i.i.cond.false213.i.i_crit_edge, %land.lhs.true191.i.i.cond.false213.i.i_crit_edge, %cond.end186.i.i.cond.false213.i.i_crit_edge
  %arrayidx215.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %583 = ptrtoint ptr %arrayidx215.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %arrayidx215.i.i, align 8
  %585 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %584, align 4
  %add218.i.i = add i32 %586, 8139
  %call219.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %480, i32 noundef %add218.i.i, i32 noundef 0) #9
  br label %cond.end220.i.i

cond.end220.i.i:                                  ; preds = %cond.false213.i.i, %cond.true202.i.i
  %587 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %virt.i2.i, align 8
  %and226.i.i = and i32 %588, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226.i.i)
  %tobool227.not.i.i = icmp eq i32 %and226.i.i, 0
  br i1 %tobool227.not.i.i, label %cond.end220.i.i.cond.false249.i.i_crit_edge, label %land.lhs.true228.i.i

cond.end220.i.i.cond.false249.i.i_crit_edge:      ; preds = %cond.end220.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false249.i.i

land.lhs.true228.i.i:                             ; preds = %cond.end220.i.i
  %funcs231.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %589 = ptrtoint ptr %funcs231.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %funcs231.i.i, align 4
  %tobool232.not.i.i = icmp eq ptr %590, null
  br i1 %tobool232.not.i.i, label %land.lhs.true228.i.i.cond.false249.i.i_crit_edge, label %land.lhs.true233.i.i

land.lhs.true228.i.i.cond.false249.i.i_crit_edge: ; preds = %land.lhs.true228.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false249.i.i

land.lhs.true233.i.i:                             ; preds = %land.lhs.true228.i.i
  %sriov_wreg237.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %590, i32 0, i32 12
  %591 = ptrtoint ptr %sriov_wreg237.i.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %sriov_wreg237.i.i, align 4
  %tobool238.not.i.i = icmp eq ptr %592, null
  br i1 %tobool238.not.i.i, label %land.lhs.true233.i.i.cond.false249.i.i_crit_edge, label %cond.true239.i.i

land.lhs.true233.i.i.cond.false249.i.i_crit_edge: ; preds = %land.lhs.true233.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false249.i.i

cond.true239.i.i:                                 ; preds = %land.lhs.true233.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx245.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %593 = ptrtoint ptr %arrayidx245.i.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %arrayidx245.i.i, align 8
  %595 = ptrtoint ptr %594 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %594, align 4
  %add248.i.i = add i32 %596, 8139
  tail call void %592(ptr noundef %480, i32 noundef %add248.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end255.i.i

cond.false249.i.i:                                ; preds = %land.lhs.true233.i.i.cond.false249.i.i_crit_edge, %land.lhs.true228.i.i.cond.false249.i.i_crit_edge, %cond.end220.i.i.cond.false249.i.i_crit_edge
  %arrayidx251.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %597 = ptrtoint ptr %arrayidx251.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %arrayidx251.i.i, align 8
  %599 = ptrtoint ptr %598 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %598, align 4
  %add254.i.i = add i32 %600, 8139
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add254.i.i, i32 noundef 0, i32 noundef 0) #9
  br label %cond.end255.i.i

cond.end255.i.i:                                  ; preds = %cond.false249.i.i, %cond.true239.i.i
  %601 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %virt.i2.i, align 8
  %and258.i.i = and i32 %602, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and258.i.i)
  %tobool259.not.i.i = icmp eq i32 %and258.i.i, 0
  br i1 %tobool259.not.i.i, label %cond.end255.i.i.cond.false281.i.i_crit_edge, label %land.lhs.true260.i.i

cond.end255.i.i.cond.false281.i.i_crit_edge:      ; preds = %cond.end255.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false281.i.i

land.lhs.true260.i.i:                             ; preds = %cond.end255.i.i
  %funcs263.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %603 = ptrtoint ptr %funcs263.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %funcs263.i.i, align 4
  %tobool264.not.i.i = icmp eq ptr %604, null
  br i1 %tobool264.not.i.i, label %land.lhs.true260.i.i.cond.false281.i.i_crit_edge, label %land.lhs.true265.i.i

land.lhs.true260.i.i.cond.false281.i.i_crit_edge: ; preds = %land.lhs.true260.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false281.i.i

land.lhs.true265.i.i:                             ; preds = %land.lhs.true260.i.i
  %sriov_wreg269.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %604, i32 0, i32 12
  %605 = ptrtoint ptr %sriov_wreg269.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %sriov_wreg269.i.i, align 4
  %tobool270.not.i.i = icmp eq ptr %606, null
  br i1 %tobool270.not.i.i, label %land.lhs.true265.i.i.cond.false281.i.i_crit_edge, label %cond.true271.i.i

land.lhs.true265.i.i.cond.false281.i.i_crit_edge: ; preds = %land.lhs.true265.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false281.i.i

cond.true271.i.i:                                 ; preds = %land.lhs.true265.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx277.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %607 = ptrtoint ptr %arrayidx277.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %arrayidx277.i.i, align 8
  %609 = ptrtoint ptr %608 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %608, align 4
  %add280.i.i = add i32 %610, 8113
  %cp_hqd_pq_base_lo.i18.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 136
  %611 = ptrtoint ptr %cp_hqd_pq_base_lo.i18.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %cp_hqd_pq_base_lo.i18.i, align 4
  tail call void %606(ptr noundef %480, i32 noundef %add280.i.i, i32 noundef %612, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end288.i.i

cond.false281.i.i:                                ; preds = %land.lhs.true265.i.i.cond.false281.i.i_crit_edge, %land.lhs.true260.i.i.cond.false281.i.i_crit_edge, %cond.end255.i.i.cond.false281.i.i_crit_edge
  %arrayidx283.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %613 = ptrtoint ptr %arrayidx283.i.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %arrayidx283.i.i, align 8
  %615 = ptrtoint ptr %614 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %614, align 4
  %add286.i.i = add i32 %616, 8113
  %cp_hqd_pq_base_lo287.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 136
  %617 = ptrtoint ptr %cp_hqd_pq_base_lo287.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %cp_hqd_pq_base_lo287.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add286.i.i, i32 noundef %618, i32 noundef 0) #9
  br label %cond.end288.i.i

cond.end288.i.i:                                  ; preds = %cond.false281.i.i, %cond.true271.i.i
  %619 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %virt.i2.i, align 8
  %and291.i.i = and i32 %620, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291.i.i)
  %tobool292.not.i.i = icmp eq i32 %and291.i.i, 0
  br i1 %tobool292.not.i.i, label %cond.end288.i.i.cond.false314.i.i_crit_edge, label %land.lhs.true293.i.i

cond.end288.i.i.cond.false314.i.i_crit_edge:      ; preds = %cond.end288.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false314.i.i

land.lhs.true293.i.i:                             ; preds = %cond.end288.i.i
  %funcs296.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %621 = ptrtoint ptr %funcs296.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %funcs296.i.i, align 4
  %tobool297.not.i.i = icmp eq ptr %622, null
  br i1 %tobool297.not.i.i, label %land.lhs.true293.i.i.cond.false314.i.i_crit_edge, label %land.lhs.true298.i.i

land.lhs.true293.i.i.cond.false314.i.i_crit_edge: ; preds = %land.lhs.true293.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false314.i.i

land.lhs.true298.i.i:                             ; preds = %land.lhs.true293.i.i
  %sriov_wreg302.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %622, i32 0, i32 12
  %623 = ptrtoint ptr %sriov_wreg302.i.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %sriov_wreg302.i.i, align 4
  %tobool303.not.i.i = icmp eq ptr %624, null
  br i1 %tobool303.not.i.i, label %land.lhs.true298.i.i.cond.false314.i.i_crit_edge, label %cond.true304.i.i

land.lhs.true298.i.i.cond.false314.i.i_crit_edge: ; preds = %land.lhs.true298.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false314.i.i

cond.true304.i.i:                                 ; preds = %land.lhs.true298.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx310.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %625 = ptrtoint ptr %arrayidx310.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %arrayidx310.i.i, align 8
  %627 = ptrtoint ptr %626 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %626, align 4
  %add313.i.i = add i32 %628, 8114
  %cp_hqd_pq_base_hi.i19.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 137
  %629 = ptrtoint ptr %cp_hqd_pq_base_hi.i19.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %cp_hqd_pq_base_hi.i19.i, align 4
  tail call void %624(ptr noundef %480, i32 noundef %add313.i.i, i32 noundef %630, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end321.i.i

cond.false314.i.i:                                ; preds = %land.lhs.true298.i.i.cond.false314.i.i_crit_edge, %land.lhs.true293.i.i.cond.false314.i.i_crit_edge, %cond.end288.i.i.cond.false314.i.i_crit_edge
  %arrayidx316.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %631 = ptrtoint ptr %arrayidx316.i.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %arrayidx316.i.i, align 8
  %633 = ptrtoint ptr %632 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %632, align 4
  %add319.i.i = add i32 %634, 8114
  %cp_hqd_pq_base_hi320.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 137
  %635 = ptrtoint ptr %cp_hqd_pq_base_hi320.i.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %cp_hqd_pq_base_hi320.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add319.i.i, i32 noundef %636, i32 noundef 0) #9
  br label %cond.end321.i.i

cond.end321.i.i:                                  ; preds = %cond.false314.i.i, %cond.true304.i.i
  %637 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %virt.i2.i, align 8
  %and324.i20.i = and i32 %638, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324.i20.i)
  %tobool325.not.i21.i = icmp eq i32 %and324.i20.i, 0
  br i1 %tobool325.not.i21.i, label %cond.end321.i.i.cond.false347.i.i_crit_edge, label %land.lhs.true326.i24.i

cond.end321.i.i.cond.false347.i.i_crit_edge:      ; preds = %cond.end321.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false347.i.i

land.lhs.true326.i24.i:                           ; preds = %cond.end321.i.i
  %funcs329.i22.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %639 = ptrtoint ptr %funcs329.i22.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %funcs329.i22.i, align 4
  %tobool330.not.i23.i = icmp eq ptr %640, null
  br i1 %tobool330.not.i23.i, label %land.lhs.true326.i24.i.cond.false347.i.i_crit_edge, label %land.lhs.true331.i26.i

land.lhs.true326.i24.i.cond.false347.i.i_crit_edge: ; preds = %land.lhs.true326.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false347.i.i

land.lhs.true331.i26.i:                           ; preds = %land.lhs.true326.i24.i
  %sriov_wreg335.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %640, i32 0, i32 12
  %641 = ptrtoint ptr %sriov_wreg335.i.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %sriov_wreg335.i.i, align 4
  %tobool336.not.i25.i = icmp eq ptr %642, null
  br i1 %tobool336.not.i25.i, label %land.lhs.true331.i26.i.cond.false347.i.i_crit_edge, label %cond.true337.i30.i

land.lhs.true331.i26.i.cond.false347.i.i_crit_edge: ; preds = %land.lhs.true331.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false347.i.i

cond.true337.i30.i:                               ; preds = %land.lhs.true331.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx343.i27.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %643 = ptrtoint ptr %arrayidx343.i27.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %arrayidx343.i27.i, align 8
  %645 = ptrtoint ptr %644 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %644, align 4
  %add346.i28.i = add i32 %646, 8116
  %cp_hqd_pq_rptr_report_addr_lo.i29.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 139
  %647 = ptrtoint ptr %cp_hqd_pq_rptr_report_addr_lo.i29.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %cp_hqd_pq_rptr_report_addr_lo.i29.i, align 4
  tail call void %642(ptr noundef %480, i32 noundef %add346.i28.i, i32 noundef %648, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end354.i.i

cond.false347.i.i:                                ; preds = %land.lhs.true331.i26.i.cond.false347.i.i_crit_edge, %land.lhs.true326.i24.i.cond.false347.i.i_crit_edge, %cond.end321.i.i.cond.false347.i.i_crit_edge
  %arrayidx349.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %649 = ptrtoint ptr %arrayidx349.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %arrayidx349.i.i, align 8
  %651 = ptrtoint ptr %650 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %650, align 4
  %add352.i.i = add i32 %652, 8116
  %cp_hqd_pq_rptr_report_addr_lo353.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 139
  %653 = ptrtoint ptr %cp_hqd_pq_rptr_report_addr_lo353.i.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %cp_hqd_pq_rptr_report_addr_lo353.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add352.i.i, i32 noundef %654, i32 noundef 0) #9
  br label %cond.end354.i.i

cond.end354.i.i:                                  ; preds = %cond.false347.i.i, %cond.true337.i30.i
  %655 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %virt.i2.i, align 8
  %and357.i31.i = and i32 %656, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and357.i31.i)
  %tobool358.not.i.i = icmp eq i32 %and357.i31.i, 0
  br i1 %tobool358.not.i.i, label %cond.end354.i.i.cond.false380.i.i_crit_edge, label %land.lhs.true359.i.i

cond.end354.i.i.cond.false380.i.i_crit_edge:      ; preds = %cond.end354.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false380.i.i

land.lhs.true359.i.i:                             ; preds = %cond.end354.i.i
  %funcs362.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %657 = ptrtoint ptr %funcs362.i.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %funcs362.i.i, align 4
  %tobool363.not.i.i = icmp eq ptr %658, null
  br i1 %tobool363.not.i.i, label %land.lhs.true359.i.i.cond.false380.i.i_crit_edge, label %land.lhs.true364.i.i

land.lhs.true359.i.i.cond.false380.i.i_crit_edge: ; preds = %land.lhs.true359.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false380.i.i

land.lhs.true364.i.i:                             ; preds = %land.lhs.true359.i.i
  %sriov_wreg368.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %658, i32 0, i32 12
  %659 = ptrtoint ptr %sriov_wreg368.i.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %sriov_wreg368.i.i, align 4
  %tobool369.not.i.i = icmp eq ptr %660, null
  br i1 %tobool369.not.i.i, label %land.lhs.true364.i.i.cond.false380.i.i_crit_edge, label %cond.true370.i.i

land.lhs.true364.i.i.cond.false380.i.i_crit_edge: ; preds = %land.lhs.true364.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false380.i.i

cond.true370.i.i:                                 ; preds = %land.lhs.true364.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx376.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %661 = ptrtoint ptr %arrayidx376.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %arrayidx376.i.i, align 8
  %663 = ptrtoint ptr %662 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %662, align 4
  %add379.i.i = add i32 %664, 8117
  %cp_hqd_pq_rptr_report_addr_hi.i32.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 140
  %665 = ptrtoint ptr %cp_hqd_pq_rptr_report_addr_hi.i32.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %cp_hqd_pq_rptr_report_addr_hi.i32.i, align 4
  tail call void %660(ptr noundef %480, i32 noundef %add379.i.i, i32 noundef %666, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end387.i.i

cond.false380.i.i:                                ; preds = %land.lhs.true364.i.i.cond.false380.i.i_crit_edge, %land.lhs.true359.i.i.cond.false380.i.i_crit_edge, %cond.end354.i.i.cond.false380.i.i_crit_edge
  %arrayidx382.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %667 = ptrtoint ptr %arrayidx382.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %arrayidx382.i.i, align 8
  %669 = ptrtoint ptr %668 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load i32, ptr %668, align 4
  %add385.i.i = add i32 %670, 8117
  %cp_hqd_pq_rptr_report_addr_hi386.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 140
  %671 = ptrtoint ptr %cp_hqd_pq_rptr_report_addr_hi386.i.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %cp_hqd_pq_rptr_report_addr_hi386.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add385.i.i, i32 noundef %672, i32 noundef 0) #9
  br label %cond.end387.i.i

cond.end387.i.i:                                  ; preds = %cond.false380.i.i, %cond.true370.i.i
  %673 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %virt.i2.i, align 8
  %and390.i.i = and i32 %674, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390.i.i)
  %tobool391.not.i.i = icmp eq i32 %and390.i.i, 0
  br i1 %tobool391.not.i.i, label %cond.end387.i.i.cond.false413.i.i_crit_edge, label %land.lhs.true392.i.i

cond.end387.i.i.cond.false413.i.i_crit_edge:      ; preds = %cond.end387.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false413.i.i

land.lhs.true392.i.i:                             ; preds = %cond.end387.i.i
  %funcs395.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %675 = ptrtoint ptr %funcs395.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %funcs395.i.i, align 4
  %tobool396.not.i.i = icmp eq ptr %676, null
  br i1 %tobool396.not.i.i, label %land.lhs.true392.i.i.cond.false413.i.i_crit_edge, label %land.lhs.true397.i.i

land.lhs.true392.i.i.cond.false413.i.i_crit_edge: ; preds = %land.lhs.true392.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false413.i.i

land.lhs.true397.i.i:                             ; preds = %land.lhs.true392.i.i
  %sriov_wreg401.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %676, i32 0, i32 12
  %677 = ptrtoint ptr %sriov_wreg401.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %sriov_wreg401.i.i, align 4
  %tobool402.not.i.i = icmp eq ptr %678, null
  br i1 %tobool402.not.i.i, label %land.lhs.true397.i.i.cond.false413.i.i_crit_edge, label %cond.true403.i.i

land.lhs.true397.i.i.cond.false413.i.i_crit_edge: ; preds = %land.lhs.true397.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false413.i.i

cond.true403.i.i:                                 ; preds = %land.lhs.true397.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx409.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %679 = ptrtoint ptr %arrayidx409.i.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %arrayidx409.i.i, align 8
  %681 = ptrtoint ptr %680 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %680, align 4
  %add412.i.i = add i32 %682, 8122
  %cp_hqd_pq_control.i33.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 145
  %683 = ptrtoint ptr %cp_hqd_pq_control.i33.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %cp_hqd_pq_control.i33.i, align 4
  tail call void %678(ptr noundef %480, i32 noundef %add412.i.i, i32 noundef %684, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end420.i.i

cond.false413.i.i:                                ; preds = %land.lhs.true397.i.i.cond.false413.i.i_crit_edge, %land.lhs.true392.i.i.cond.false413.i.i_crit_edge, %cond.end387.i.i.cond.false413.i.i_crit_edge
  %arrayidx415.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %685 = ptrtoint ptr %arrayidx415.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %arrayidx415.i.i, align 8
  %687 = ptrtoint ptr %686 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %686, align 4
  %add418.i.i = add i32 %688, 8122
  %cp_hqd_pq_control419.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 145
  %689 = ptrtoint ptr %cp_hqd_pq_control419.i.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %cp_hqd_pq_control419.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add418.i.i, i32 noundef %690, i32 noundef 0) #9
  br label %cond.end420.i.i

cond.end420.i.i:                                  ; preds = %cond.false413.i.i, %cond.true403.i.i
  %691 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %virt.i2.i, align 8
  %and423.i.i = and i32 %692, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and423.i.i)
  %tobool424.not.i.i = icmp eq i32 %and423.i.i, 0
  br i1 %tobool424.not.i.i, label %cond.end420.i.i.cond.false446.i.i_crit_edge, label %land.lhs.true425.i.i

cond.end420.i.i.cond.false446.i.i_crit_edge:      ; preds = %cond.end420.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false446.i.i

land.lhs.true425.i.i:                             ; preds = %cond.end420.i.i
  %funcs428.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %693 = ptrtoint ptr %funcs428.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %funcs428.i.i, align 4
  %tobool429.not.i.i = icmp eq ptr %694, null
  br i1 %tobool429.not.i.i, label %land.lhs.true425.i.i.cond.false446.i.i_crit_edge, label %land.lhs.true430.i.i

land.lhs.true425.i.i.cond.false446.i.i_crit_edge: ; preds = %land.lhs.true425.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false446.i.i

land.lhs.true430.i.i:                             ; preds = %land.lhs.true425.i.i
  %sriov_wreg434.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %694, i32 0, i32 12
  %695 = ptrtoint ptr %sriov_wreg434.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %sriov_wreg434.i.i, align 4
  %tobool435.not.i.i = icmp eq ptr %696, null
  br i1 %tobool435.not.i.i, label %land.lhs.true430.i.i.cond.false446.i.i_crit_edge, label %cond.true436.i.i

land.lhs.true430.i.i.cond.false446.i.i_crit_edge: ; preds = %land.lhs.true430.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false446.i.i

cond.true436.i.i:                                 ; preds = %land.lhs.true430.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx442.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %697 = ptrtoint ptr %arrayidx442.i.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %arrayidx442.i.i, align 8
  %699 = ptrtoint ptr %698 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %698, align 4
  %add445.i.i = add i32 %700, 8118
  %cp_hqd_pq_wptr_poll_addr_lo.i34.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 141
  %701 = ptrtoint ptr %cp_hqd_pq_wptr_poll_addr_lo.i34.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %cp_hqd_pq_wptr_poll_addr_lo.i34.i, align 4
  tail call void %696(ptr noundef %480, i32 noundef %add445.i.i, i32 noundef %702, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end453.i.i

cond.false446.i.i:                                ; preds = %land.lhs.true430.i.i.cond.false446.i.i_crit_edge, %land.lhs.true425.i.i.cond.false446.i.i_crit_edge, %cond.end420.i.i.cond.false446.i.i_crit_edge
  %arrayidx448.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %703 = ptrtoint ptr %arrayidx448.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %arrayidx448.i.i, align 8
  %705 = ptrtoint ptr %704 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %704, align 4
  %add451.i.i = add i32 %706, 8118
  %cp_hqd_pq_wptr_poll_addr_lo452.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 141
  %707 = ptrtoint ptr %cp_hqd_pq_wptr_poll_addr_lo452.i.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %cp_hqd_pq_wptr_poll_addr_lo452.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add451.i.i, i32 noundef %708, i32 noundef 0) #9
  br label %cond.end453.i.i

cond.end453.i.i:                                  ; preds = %cond.false446.i.i, %cond.true436.i.i
  %709 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %virt.i2.i, align 8
  %and456.i.i = and i32 %710, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and456.i.i)
  %tobool457.not.i.i = icmp eq i32 %and456.i.i, 0
  br i1 %tobool457.not.i.i, label %cond.end453.i.i.cond.false479.i.i_crit_edge, label %land.lhs.true458.i.i

cond.end453.i.i.cond.false479.i.i_crit_edge:      ; preds = %cond.end453.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false479.i.i

land.lhs.true458.i.i:                             ; preds = %cond.end453.i.i
  %funcs461.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %711 = ptrtoint ptr %funcs461.i.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %funcs461.i.i, align 4
  %tobool462.not.i.i = icmp eq ptr %712, null
  br i1 %tobool462.not.i.i, label %land.lhs.true458.i.i.cond.false479.i.i_crit_edge, label %land.lhs.true463.i.i

land.lhs.true458.i.i.cond.false479.i.i_crit_edge: ; preds = %land.lhs.true458.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false479.i.i

land.lhs.true463.i.i:                             ; preds = %land.lhs.true458.i.i
  %sriov_wreg467.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %712, i32 0, i32 12
  %713 = ptrtoint ptr %sriov_wreg467.i.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %sriov_wreg467.i.i, align 4
  %tobool468.not.i.i = icmp eq ptr %714, null
  br i1 %tobool468.not.i.i, label %land.lhs.true463.i.i.cond.false479.i.i_crit_edge, label %cond.true469.i.i

land.lhs.true463.i.i.cond.false479.i.i_crit_edge: ; preds = %land.lhs.true463.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false479.i.i

cond.true469.i.i:                                 ; preds = %land.lhs.true463.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx475.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %715 = ptrtoint ptr %arrayidx475.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %arrayidx475.i.i, align 8
  %717 = ptrtoint ptr %716 to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %716, align 4
  %add478.i.i = add i32 %718, 8119
  %cp_hqd_pq_wptr_poll_addr_hi.i35.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 142
  %719 = ptrtoint ptr %cp_hqd_pq_wptr_poll_addr_hi.i35.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load i32, ptr %cp_hqd_pq_wptr_poll_addr_hi.i35.i, align 4
  tail call void %714(ptr noundef %480, i32 noundef %add478.i.i, i32 noundef %720, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end486.i.i

cond.false479.i.i:                                ; preds = %land.lhs.true463.i.i.cond.false479.i.i_crit_edge, %land.lhs.true458.i.i.cond.false479.i.i_crit_edge, %cond.end453.i.i.cond.false479.i.i_crit_edge
  %arrayidx481.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %721 = ptrtoint ptr %arrayidx481.i.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %arrayidx481.i.i, align 8
  %723 = ptrtoint ptr %722 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load i32, ptr %722, align 4
  %add484.i.i = add i32 %724, 8119
  %cp_hqd_pq_wptr_poll_addr_hi485.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 142
  %725 = ptrtoint ptr %cp_hqd_pq_wptr_poll_addr_hi485.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %cp_hqd_pq_wptr_poll_addr_hi485.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add484.i.i, i32 noundef %726, i32 noundef 0) #9
  br label %cond.end486.i.i

cond.end486.i.i:                                  ; preds = %cond.false479.i.i, %cond.true469.i.i
  %727 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load i32, ptr %virt.i2.i, align 8
  %and489.i.i = and i32 %728, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and489.i.i)
  %tobool490.not.i.i = icmp eq i32 %and489.i.i, 0
  br i1 %tobool490.not.i.i, label %cond.end486.i.i.cond.false512.i.i_crit_edge, label %land.lhs.true491.i.i

cond.end486.i.i.cond.false512.i.i_crit_edge:      ; preds = %cond.end486.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false512.i.i

land.lhs.true491.i.i:                             ; preds = %cond.end486.i.i
  %funcs494.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %729 = ptrtoint ptr %funcs494.i.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %funcs494.i.i, align 4
  %tobool495.not.i.i = icmp eq ptr %730, null
  br i1 %tobool495.not.i.i, label %land.lhs.true491.i.i.cond.false512.i.i_crit_edge, label %land.lhs.true496.i.i

land.lhs.true491.i.i.cond.false512.i.i_crit_edge: ; preds = %land.lhs.true491.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false512.i.i

land.lhs.true496.i.i:                             ; preds = %land.lhs.true491.i.i
  %sriov_wreg500.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %730, i32 0, i32 12
  %731 = ptrtoint ptr %sriov_wreg500.i.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %sriov_wreg500.i.i, align 4
  %tobool501.not.i.i = icmp eq ptr %732, null
  br i1 %tobool501.not.i.i, label %land.lhs.true496.i.i.cond.false512.i.i_crit_edge, label %cond.true502.i.i

land.lhs.true496.i.i.cond.false512.i.i_crit_edge: ; preds = %land.lhs.true496.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false512.i.i

cond.true502.i.i:                                 ; preds = %land.lhs.true496.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx508.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %733 = ptrtoint ptr %arrayidx508.i.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %arrayidx508.i.i, align 8
  %735 = ptrtoint ptr %734 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %734, align 4
  %add511.i.i = add i32 %736, 8120
  %cp_hqd_pq_doorbell_control.i36.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 143
  %737 = ptrtoint ptr %cp_hqd_pq_doorbell_control.i36.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load i32, ptr %cp_hqd_pq_doorbell_control.i36.i, align 4
  tail call void %732(ptr noundef %480, i32 noundef %add511.i.i, i32 noundef %738, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end519.i.i

cond.false512.i.i:                                ; preds = %land.lhs.true496.i.i.cond.false512.i.i_crit_edge, %land.lhs.true491.i.i.cond.false512.i.i_crit_edge, %cond.end486.i.i.cond.false512.i.i_crit_edge
  %arrayidx514.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %739 = ptrtoint ptr %arrayidx514.i.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %arrayidx514.i.i, align 8
  %741 = ptrtoint ptr %740 to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load i32, ptr %740, align 4
  %add517.i.i = add i32 %742, 8120
  %cp_hqd_pq_doorbell_control518.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 143
  %743 = ptrtoint ptr %cp_hqd_pq_doorbell_control518.i.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load i32, ptr %cp_hqd_pq_doorbell_control518.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add517.i.i, i32 noundef %744, i32 noundef 0) #9
  br label %cond.end519.i.i

cond.end519.i.i:                                  ; preds = %cond.false512.i.i, %cond.true502.i.i
  %745 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load i32, ptr %virt.i2.i, align 8
  %and522.i.i = and i32 %746, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and522.i.i)
  %tobool523.not.i.i = icmp eq i32 %and522.i.i, 0
  br i1 %tobool523.not.i.i, label %cond.end519.i.i.cond.false545.i.i_crit_edge, label %land.lhs.true524.i.i

cond.end519.i.i.cond.false545.i.i_crit_edge:      ; preds = %cond.end519.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false545.i.i

land.lhs.true524.i.i:                             ; preds = %cond.end519.i.i
  %funcs527.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %747 = ptrtoint ptr %funcs527.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %funcs527.i.i, align 4
  %tobool528.not.i.i = icmp eq ptr %748, null
  br i1 %tobool528.not.i.i, label %land.lhs.true524.i.i.cond.false545.i.i_crit_edge, label %land.lhs.true529.i.i

land.lhs.true524.i.i.cond.false545.i.i_crit_edge: ; preds = %land.lhs.true524.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false545.i.i

land.lhs.true529.i.i:                             ; preds = %land.lhs.true524.i.i
  %sriov_wreg533.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %748, i32 0, i32 12
  %749 = ptrtoint ptr %sriov_wreg533.i.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %sriov_wreg533.i.i, align 4
  %tobool534.not.i.i = icmp eq ptr %750, null
  br i1 %tobool534.not.i.i, label %land.lhs.true529.i.i.cond.false545.i.i_crit_edge, label %cond.true535.i.i

land.lhs.true529.i.i.cond.false545.i.i_crit_edge: ; preds = %land.lhs.true529.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false545.i.i

cond.true535.i.i:                                 ; preds = %land.lhs.true529.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx541.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %751 = ptrtoint ptr %arrayidx541.i.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %arrayidx541.i.i, align 8
  %753 = ptrtoint ptr %752 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load i32, ptr %752, align 4
  %add544.i.i = add i32 %754, 8109
  %cp_hqd_persistent_state.i37.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 132
  %755 = ptrtoint ptr %cp_hqd_persistent_state.i37.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %cp_hqd_persistent_state.i37.i, align 4
  tail call void %750(ptr noundef %480, i32 noundef %add544.i.i, i32 noundef %756, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end552.i.i

cond.false545.i.i:                                ; preds = %land.lhs.true529.i.i.cond.false545.i.i_crit_edge, %land.lhs.true524.i.i.cond.false545.i.i_crit_edge, %cond.end519.i.i.cond.false545.i.i_crit_edge
  %arrayidx547.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %757 = ptrtoint ptr %arrayidx547.i.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %arrayidx547.i.i, align 8
  %759 = ptrtoint ptr %758 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load i32, ptr %758, align 4
  %add550.i.i = add i32 %760, 8109
  %cp_hqd_persistent_state551.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 132
  %761 = ptrtoint ptr %cp_hqd_persistent_state551.i.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load i32, ptr %cp_hqd_persistent_state551.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add550.i.i, i32 noundef %762, i32 noundef 0) #9
  br label %cond.end552.i.i

cond.end552.i.i:                                  ; preds = %cond.false545.i.i, %cond.true535.i.i
  %763 = ptrtoint ptr %virt.i2.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %virt.i2.i, align 8
  %and555.i.i = and i32 %764, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and555.i.i)
  %tobool556.not.i.i = icmp eq i32 %and555.i.i, 0
  br i1 %tobool556.not.i.i, label %cond.end552.i.i.cond.false578.i.i_crit_edge, label %land.lhs.true557.i.i

cond.end552.i.i.cond.false578.i.i_crit_edge:      ; preds = %cond.end552.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false578.i.i

land.lhs.true557.i.i:                             ; preds = %cond.end552.i.i
  %funcs560.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %480, i32 0, i32 106, i32 2, i32 15
  %765 = ptrtoint ptr %funcs560.i.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %funcs560.i.i, align 4
  %tobool561.not.i.i = icmp eq ptr %766, null
  br i1 %tobool561.not.i.i, label %land.lhs.true557.i.i.cond.false578.i.i_crit_edge, label %land.lhs.true562.i.i

land.lhs.true557.i.i.cond.false578.i.i_crit_edge: ; preds = %land.lhs.true557.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false578.i.i

land.lhs.true562.i.i:                             ; preds = %land.lhs.true557.i.i
  %sriov_wreg566.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %766, i32 0, i32 12
  %767 = ptrtoint ptr %sriov_wreg566.i.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %sriov_wreg566.i.i, align 4
  %tobool567.not.i.i = icmp eq ptr %768, null
  br i1 %tobool567.not.i.i, label %land.lhs.true562.i.i.cond.false578.i.i_crit_edge, label %cond.true568.i.i

land.lhs.true562.i.i.cond.false578.i.i_crit_edge: ; preds = %land.lhs.true562.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false578.i.i

cond.true568.i.i:                                 ; preds = %land.lhs.true562.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx574.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %769 = ptrtoint ptr %arrayidx574.i.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %arrayidx574.i.i, align 8
  %771 = ptrtoint ptr %770 to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %770, align 4
  %add577.i.i = add i32 %772, 8107
  %cp_hqd_active.i38.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 130
  %773 = ptrtoint ptr %cp_hqd_active.i38.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %cp_hqd_active.i38.i, align 4
  tail call void %768(ptr noundef %480, i32 noundef %add577.i.i, i32 noundef %774, i32 noundef 0, i32 noundef 1) #9
  br label %mes_v10_1_queue_init.exit

cond.false578.i.i:                                ; preds = %land.lhs.true562.i.i.cond.false578.i.i_crit_edge, %land.lhs.true557.i.i.cond.false578.i.i_crit_edge, %cond.end552.i.i.cond.false578.i.i_crit_edge
  %arrayidx580.i.i = getelementptr %struct.amdgpu_device, ptr %480, i32 0, i32 130, i32 1
  %775 = ptrtoint ptr %arrayidx580.i.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %arrayidx580.i.i, align 8
  %777 = ptrtoint ptr %776 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load i32, ptr %776, align 4
  %add583.i.i = add i32 %778, 8107
  %cp_hqd_active584.i.i = getelementptr inbounds %struct.v10_compute_mqd, ptr %478, i32 0, i32 130
  %779 = ptrtoint ptr %cp_hqd_active584.i.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %cp_hqd_active584.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %480, i32 noundef %add583.i.i, i32 noundef %780, i32 noundef 0) #9
  br label %mes_v10_1_queue_init.exit

mes_v10_1_queue_init.exit:                        ; preds = %cond.false578.i.i, %cond.true568.i.i
  tail call void @nv_grbm_select(ptr noundef %480, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %srbm_mutex.i.i) #9
  %mes = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119
  %781 = ptrtoint ptr %mes to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %mes, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mes_set_hw_res_pkt.i) #9
  %783 = getelementptr inbounds i8, ptr %mes_set_hw_res_pkt.i, i32 120
  %784 = call ptr @memset(ptr %783, i32 0, i32 136)
  %785 = ptrtoint ptr %mes_set_hw_res_pkt.i to i32
  call void @__asan_store4_noabort(i32 %785)
  store i32 268697600, ptr %mes_set_hw_res_pkt.i, align 4
  %vmid_mask_mmhub.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 22
  %786 = ptrtoint ptr %vmid_mask_mmhub.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load i32, ptr %vmid_mask_mmhub.i, align 8
  %vmid_mask_mmhub10.i = getelementptr inbounds %struct.anon.118, ptr %mes_set_hw_res_pkt.i, i32 0, i32 1
  %788 = ptrtoint ptr %vmid_mask_mmhub10.i to i32
  call void @__asan_store4_noabort(i32 %788)
  store i32 %787, ptr %vmid_mask_mmhub10.i, align 4
  %vmid_mask_gfxhub.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 21
  %789 = ptrtoint ptr %vmid_mask_gfxhub.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load i32, ptr %vmid_mask_gfxhub.i, align 4
  %vmid_mask_gfxhub11.i = getelementptr inbounds %struct.anon.118, ptr %mes_set_hw_res_pkt.i, i32 0, i32 2
  %791 = ptrtoint ptr %vmid_mask_gfxhub11.i to i32
  call void @__asan_store4_noabort(i32 %791)
  store i32 %790, ptr %vmid_mask_gfxhub11.i, align 4
  %gds.i = getelementptr inbounds %struct.amdgpu_device, ptr %782, i32 0, i32 114
  %792 = ptrtoint ptr %gds.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load i32, ptr %gds.i, align 8
  %gds_size12.i = getelementptr inbounds %struct.anon.118, ptr %mes_set_hw_res_pkt.i, i32 0, i32 3
  %794 = ptrtoint ptr %gds_size12.i to i32
  call void @__asan_store4_noabort(i32 %794)
  store i32 %793, ptr %gds_size12.i, align 4
  %paging_vmid.i = getelementptr inbounds %struct.anon.118, ptr %mes_set_hw_res_pkt.i, i32 0, i32 4
  %795 = ptrtoint ptr %paging_vmid.i to i32
  call void @__asan_store4_noabort(i32 %795)
  store i32 0, ptr %paging_vmid.i, align 4
  %sch_ctx_gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 28
  %796 = ptrtoint ptr %sch_ctx_gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %796)
  %797 = load i64, ptr %sch_ctx_gpu_addr.i, align 8
  %g_sch_ctx_gpu_mc_ptr.i = getelementptr inbounds %struct.anon.118, ptr %mes_set_hw_res_pkt.i, i32 0, i32 9
  %798 = ptrtoint ptr %g_sch_ctx_gpu_mc_ptr.i to i32
  call void @__asan_storeN_noabort(i32 %798, i32 8)
  store i64 %797, ptr %g_sch_ctx_gpu_mc_ptr.i, align 4
  %query_status_fence_gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 31
  %799 = ptrtoint ptr %query_status_fence_gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %799)
  %800 = load i64, ptr %query_status_fence_gpu_addr.i, align 8
  %query_status_fence_gpu_mc_ptr.i = getelementptr inbounds %struct.anon.118, ptr %mes_set_hw_res_pkt.i, i32 0, i32 10
  %801 = ptrtoint ptr %query_status_fence_gpu_mc_ptr.i to i32
  call void @__asan_storeN_noabort(i32 %801, i32 8)
  store i64 %800, ptr %query_status_fence_gpu_mc_ptr.i, align 4
  %uglygep.i = getelementptr inbounds i8, ptr %mes_set_hw_res_pkt.i, i32 20
  %uglygep76.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 23
  %802 = call ptr @memcpy(ptr %uglygep.i, ptr %uglygep76.i, i32 32)
  %uglygep77.i = getelementptr inbounds i8, ptr %mes_set_hw_res_pkt.i, i32 52
  %uglygep78.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 24
  %803 = ptrtoint ptr %uglygep78.i to i32
  call void @__asan_loadN_noabort(i32 %803, i32 8)
  %804 = load i64, ptr %uglygep78.i, align 4
  %805 = ptrtoint ptr %uglygep77.i to i32
  call void @__asan_storeN_noabort(i32 %805, i32 8)
  store i64 %804, ptr %uglygep77.i, align 4
  %uglygep79.i = getelementptr inbounds i8, ptr %mes_set_hw_res_pkt.i, i32 60
  %uglygep80.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 25
  %806 = ptrtoint ptr %uglygep80.i to i32
  call void @__asan_loadN_noabort(i32 %806, i32 8)
  %807 = load i64, ptr %uglygep80.i, align 4
  %808 = ptrtoint ptr %uglygep79.i to i32
  call void @__asan_storeN_noabort(i32 %808, i32 8)
  store i64 %807, ptr %uglygep79.i, align 4
  %uglygep81.i = getelementptr inbounds i8, ptr %mes_set_hw_res_pkt.i, i32 68
  %uglygep82.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 26
  %809 = call ptr @memcpy(ptr %uglygep81.i, ptr %uglygep82.i, i32 20)
  %fence_drv.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 2
  %810 = ptrtoint ptr %fence_drv.i to i32
  call void @__asan_load8_noabort(i32 %810)
  %811 = load i64, ptr %fence_drv.i, align 8
  %api_status.i = getelementptr inbounds %struct.anon.118, ptr %mes_set_hw_res_pkt.i, i32 0, i32 11
  %812 = ptrtoint ptr %api_status.i to i32
  call void @__asan_storeN_noabort(i32 %812, i32 8)
  store i64 %811, ptr %api_status.i, align 4
  %sync_seq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 6, i32 2, i32 2
  %813 = ptrtoint ptr %sync_seq.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load i32, ptr %sync_seq.i, align 4
  %inc44.i = add i32 %814, 1
  store i32 %inc44.i, ptr %sync_seq.i, align 4
  %conv.i32 = zext i32 %inc44.i to i64
  %api_completion_fence_value.i = getelementptr inbounds %struct.anon.118, ptr %mes_set_hw_res_pkt.i, i32 0, i32 11, i32 1
  %815 = ptrtoint ptr %api_completion_fence_value.i to i32
  call void @__asan_storeN_noabort(i32 %815, i32 8)
  store i64 %conv.i32, ptr %api_completion_fence_value.i, align 4
  %call.i = call fastcc i32 @mes_v10_1_submit_pkt_and_poll_completion(ptr noundef %mes, ptr noundef nonnull %mes_set_hw_res_pkt.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mes_set_hw_res_pkt.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %mes_v10_1_queue_init.exit.failure_crit_edge

mes_v10_1_queue_init.exit.failure_crit_edge:      ; preds = %mes_v10_1_queue_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %failure

if.end10:                                         ; preds = %mes_v10_1_queue_init.exit
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mes_status_pkt.i) #9
  %816 = getelementptr inbounds i8, ptr %mes_status_pkt.i, i32 4
  %817 = call ptr @memset(ptr %816, i32 0, i32 252)
  %818 = ptrtoint ptr %mes_status_pkt.i to i32
  call void @__asan_store4_noabort(i32 %818)
  store i32 280231936, ptr %mes_status_pkt.i, align 4
  %819 = ptrtoint ptr %fence_drv.i to i32
  call void @__asan_load8_noabort(i32 %819)
  %820 = load i64, ptr %fence_drv.i, align 8
  %api_status.i34 = getelementptr inbounds %struct.anon.121, ptr %mes_status_pkt.i, i32 0, i32 2
  %821 = ptrtoint ptr %api_status.i34 to i32
  call void @__asan_storeN_noabort(i32 %821, i32 8)
  store i64 %820, ptr %api_status.i34, align 4
  %822 = ptrtoint ptr %sync_seq.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load i32, ptr %sync_seq.i, align 4
  %inc.i = add i32 %823, 1
  store i32 %inc.i, ptr %sync_seq.i, align 4
  %conv.i36 = zext i32 %inc.i to i64
  %api_completion_fence_value.i37 = getelementptr inbounds %struct.anon.121, ptr %mes_status_pkt.i, i32 0, i32 2, i32 1
  %824 = ptrtoint ptr %api_completion_fence_value.i37 to i32
  call void @__asan_storeN_noabort(i32 %824, i32 8)
  store i64 %conv.i36, ptr %api_completion_fence_value.i37, align 4
  %call.i38 = call fastcc i32 @mes_v10_1_submit_pkt_and_poll_completion(ptr noundef %mes, ptr noundef nonnull %mes_status_pkt.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mes_status_pkt.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool13.not = icmp eq i32 %call.i38, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.then14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #9
  br label %failure

failure:                                          ; preds = %if.then14, %mes_v10_1_queue_init.exit.failure_crit_edge
  %r.0 = phi i32 [ %call.i, %mes_v10_1_queue_init.exit.failure_crit_edge ], [ %call.i38, %if.then14 ]
  tail call fastcc void @mes_v10_1_enable(ptr noundef %handle, i1 noundef zeroext false) #9
  %825 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %826)
  %cmp.i = icmp eq i32 %826, 0
  br i1 %cmp.i, label %if.then.i, label %failure.cleanup_crit_edge

failure.cleanup_crit_edge:                        ; preds = %failure
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %failure
  call void @__sanitizer_cov_trace_pc() #11
  %data_fw_obj.i.i39 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 13
  %data_fw_gpu_addr.i.i40 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 14
  %data_fw_ptr.i.i41 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 15
  tail call void @amdgpu_bo_free_kernel(ptr noundef %data_fw_obj.i.i39, ptr noundef %data_fw_gpu_addr.i.i40, ptr noundef %data_fw_ptr.i.i41) #9
  %ucode_fw_obj.i.i42 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 8
  %ucode_fw_gpu_addr.i.i43 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 9
  %ucode_fw_ptr.i.i44 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 10
  tail call void @amdgpu_bo_free_kernel(ptr noundef %ucode_fw_obj.i.i42, ptr noundef %ucode_fw_gpu_addr.i.i43, ptr noundef %ucode_fw_ptr.i.i44) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %failure.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then1
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then1 ], [ 0, %if.end10.cleanup_crit_edge ], [ %r.0, %failure.cleanup_crit_edge ], [ %r.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mes_v10_1_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mes_v10_1_enable(ptr noundef %handle, i1 noundef zeroext false)
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %0 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data_fw_obj.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 13
  %data_fw_gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 14
  %data_fw_ptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 15
  tail call void @amdgpu_bo_free_kernel(ptr noundef %data_fw_obj.i, ptr noundef %data_fw_gpu_addr.i, ptr noundef %data_fw_ptr.i) #9
  %ucode_fw_obj.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 8
  %ucode_fw_gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 9
  %ucode_fw_ptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 119, i32 10
  tail call void @amdgpu_bo_free_kernel(ptr noundef %ucode_fw_obj.i, ptr noundef %ucode_fw_gpu_addr.i, ptr noundef %ucode_fw_ptr.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mes_v10_1_suspend(ptr nocapture noundef readnone %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mes_v10_1_resume(ptr nocapture noundef readnone %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mes_v10_1_add_hw_queue(ptr noundef %mes, ptr nocapture noundef readonly %input) #0 align 64 {
entry:
  %mes_add_queue_pkt = alloca %union.MESAPI__ADD_QUEUE, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mes, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mes_add_queue_pkt) #9
  %2 = getelementptr inbounds i8, ptr %mes_add_queue_pkt, i32 96
  %3 = call ptr @memset(ptr %2, i32 0, i32 160)
  %4 = ptrtoint ptr %mes_add_queue_pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 270794752, ptr %mes_add_queue_pkt, align 4
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input, align 8
  %process_id10 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 1
  %7 = ptrtoint ptr %process_id10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %process_id10, align 4
  %page_table_base_addr = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 1
  %8 = ptrtoint ptr %page_table_base_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %page_table_base_addr, align 8
  %vram_start = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 10
  %10 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vram_start, align 8
  %sub = sub i64 %9, %11
  %page_table_base_addr11 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 2
  %12 = ptrtoint ptr %page_table_base_addr11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %sub, ptr %page_table_base_addr11, align 4
  %process_va_start = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 2
  %13 = ptrtoint ptr %process_va_start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %process_va_start, align 8
  %process_va_start12 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 3
  %15 = ptrtoint ptr %process_va_start12 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %process_va_start12, align 4
  %process_va_end = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 3
  %16 = ptrtoint ptr %process_va_end to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %process_va_end, align 8
  %process_va_end13 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 4
  %18 = ptrtoint ptr %process_va_end13 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %process_va_end13, align 4
  %process_quantum = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 4
  %19 = ptrtoint ptr %process_quantum to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %process_quantum, align 8
  %process_quantum14 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 5
  %21 = ptrtoint ptr %process_quantum14 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %process_quantum14, align 4
  %process_context_addr = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 5
  %22 = ptrtoint ptr %process_context_addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %process_context_addr, align 8
  %process_context_addr15 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 6
  %24 = ptrtoint ptr %process_context_addr15 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %process_context_addr15, align 4
  %gang_quantum = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 6
  %25 = ptrtoint ptr %gang_quantum to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %gang_quantum, align 8
  %gang_quantum16 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 7
  %27 = ptrtoint ptr %gang_quantum16 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %gang_quantum16, align 4
  %gang_context_addr = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 7
  %28 = ptrtoint ptr %gang_context_addr to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %gang_context_addr, align 8
  %gang_context_addr17 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 8
  %30 = ptrtoint ptr %gang_context_addr17 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %gang_context_addr17, align 4
  %inprocess_gang_priority = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 8
  %31 = ptrtoint ptr %inprocess_gang_priority to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %inprocess_gang_priority, align 8
  %inprocess_gang_priority18 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 9
  %33 = ptrtoint ptr %inprocess_gang_priority18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %inprocess_gang_priority18, align 4
  %gang_global_priority_level = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 9
  %34 = ptrtoint ptr %gang_global_priority_level to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gang_global_priority_level, align 4
  %gang_global_priority_level19 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 10
  %36 = ptrtoint ptr %gang_global_priority_level19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %gang_global_priority_level19, align 4
  %doorbell_offset = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 10
  %37 = ptrtoint ptr %doorbell_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %doorbell_offset, align 8
  %doorbell_offset20 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 11
  %39 = ptrtoint ptr %doorbell_offset20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %doorbell_offset20, align 4
  %mqd_addr = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 11
  %40 = ptrtoint ptr %mqd_addr to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %mqd_addr, align 8
  %mqd_addr21 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 12
  %42 = ptrtoint ptr %mqd_addr21 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %mqd_addr21, align 4
  %wptr_addr = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 12
  %43 = ptrtoint ptr %wptr_addr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr_addr, align 8
  %wptr_addr22 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 13
  %45 = ptrtoint ptr %wptr_addr22 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %wptr_addr22, align 4
  %queue_type = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 13
  %46 = ptrtoint ptr %queue_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %queue_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %switch.i = icmp ult i32 %47, 3
  br i1 %switch.i, label %convert_to_mes_queue_type.exit, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/mes_v10_1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #9, !srcloc !82
  unreachable

convert_to_mes_queue_type.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %queue_type23 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 14
  %48 = ptrtoint ptr %queue_type23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %queue_type23, align 4
  %paging = getelementptr inbounds %struct.mes_add_queue_input, ptr %input, i32 0, i32 14
  %49 = ptrtoint ptr %paging to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %paging, align 4
  %51 = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 20
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load24 = load i32, ptr %51, align 4
  %bf.shl = shl i32 %50, 31
  %bf.clear25 = and i32 %bf.load24, 2147483647
  %bf.set26 = or i32 %bf.clear25, %bf.shl
  store i32 %bf.set26, ptr %51, align 4
  %fence_drv = getelementptr inbounds %struct.amdgpu_mes, ptr %mes, i32 0, i32 6, i32 2
  %53 = ptrtoint ptr %fence_drv to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %fence_drv, align 8
  %api_status = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 21
  %55 = ptrtoint ptr %api_status to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %api_status, align 4
  %sync_seq = getelementptr inbounds %struct.amdgpu_mes, ptr %mes, i32 0, i32 6, i32 2, i32 2
  %56 = ptrtoint ptr %sync_seq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sync_seq, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %sync_seq, align 4
  %conv = zext i32 %inc to i64
  %api_completion_fence_value = getelementptr inbounds %struct.anon.113, ptr %mes_add_queue_pkt, i32 0, i32 21, i32 1
  %58 = ptrtoint ptr %api_completion_fence_value to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 %conv, ptr %api_completion_fence_value, align 4
  %call30 = call fastcc i32 @mes_v10_1_submit_pkt_and_poll_completion(ptr noundef %mes, ptr noundef nonnull %mes_add_queue_pkt)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mes_add_queue_pkt) #9
  ret i32 %call30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mes_v10_1_remove_hw_queue(ptr noundef %mes, ptr nocapture noundef readonly %input) #0 align 64 {
entry:
  %mes_remove_queue_pkt = alloca %union.MESAPI__REMOVE_QUEUE, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mes_remove_queue_pkt) #9
  %0 = getelementptr inbounds i8, ptr %mes_remove_queue_pkt, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 240)
  %2 = ptrtoint ptr %mes_remove_queue_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 271843328, ptr %mes_remove_queue_pkt, align 4
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %input, align 8
  %doorbell_offset9 = getelementptr inbounds %struct.anon.116, ptr %mes_remove_queue_pkt, i32 0, i32 1
  %5 = ptrtoint ptr %doorbell_offset9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %doorbell_offset9, align 4
  %gang_context_addr = getelementptr inbounds %struct.mes_remove_queue_input, ptr %input, i32 0, i32 1
  %6 = ptrtoint ptr %gang_context_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %gang_context_addr, align 8
  %gang_context_addr10 = getelementptr inbounds %struct.anon.116, ptr %mes_remove_queue_pkt, i32 0, i32 2
  %8 = ptrtoint ptr %gang_context_addr10 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %gang_context_addr10, align 4
  %fence_drv = getelementptr inbounds %struct.amdgpu_mes, ptr %mes, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %fence_drv to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fence_drv, align 8
  %api_status = getelementptr inbounds %struct.anon.116, ptr %mes_remove_queue_pkt, i32 0, i32 4
  %11 = ptrtoint ptr %api_status to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %api_status, align 4
  %sync_seq = getelementptr inbounds %struct.amdgpu_mes, ptr %mes, i32 0, i32 6, i32 2, i32 2
  %12 = ptrtoint ptr %sync_seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sync_seq, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %sync_seq, align 4
  %conv = zext i32 %inc to i64
  %api_completion_fence_value = getelementptr inbounds %struct.anon.116, ptr %mes_remove_queue_pkt, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %api_completion_fence_value to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %conv, ptr %api_completion_fence_value, align 4
  %call = call fastcc i32 @mes_v10_1_submit_pkt_and_poll_completion(ptr noundef %mes, ptr noundef nonnull %mes_remove_queue_pkt)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mes_remove_queue_pkt) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mes_v10_1_suspend_gang(ptr nocapture noundef readnone %mes, ptr nocapture noundef readnone %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mes_v10_1_resume_gang(ptr nocapture noundef readnone %mes, ptr nocapture noundef readnone %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mes_v10_1_submit_pkt_and_poll_completion(ptr noundef %mes, ptr nocapture noundef readonly %pkt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mes, align 8
  %ring2 = getelementptr inbounds %struct.amdgpu_mes, ptr %mes, i32 0, i32 6
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring2, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %entry
  %count_dw1.i = getelementptr inbounds %struct.amdgpu_mes, ptr %mes, i32 0, i32 6, i32 11
  %2 = ptrtoint ptr %count_dw1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp.i = icmp slt i32 %3, 64
  br i1 %cmp.i, label %if.then.i, label %if.end12.if.end.i_crit_edge, !prof !83

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end12.if.end.i_crit_edge
  %wptr.i = getelementptr inbounds %struct.amdgpu_mes, ptr %mes, i32 0, i32 6, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_mes, ptr %mes, i32 0, i32 6, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %conv3.i = and i32 %7, %8
  %ring4.i = getelementptr inbounds %struct.amdgpu_mes, ptr %mes, i32 0, i32 6, i32 5
  %add.i = add i32 %7, 1
  %sub.i = sub i32 %add.i, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i)
  %cmp6.i = icmp ugt i32 %sub.i, 63
  %phi.bo.i = shl i32 %sub.i, 2
  %cond.i = select i1 %cmp6.i, i32 256, i32 %phi.bo.i
  %shl9.i = sub i32 256, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cond1.i = icmp eq i32 %cond.i, 0
  br i1 %cond1.i, label %if.end.i.if.then14.i_crit_edge, label %if.then11.i

if.end.i.if.then14.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then11.i:                                      ; preds = %if.end.i
  %9 = ptrtoint ptr %ring4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring4.i, align 4
  %arrayidx.i = getelementptr i32, ptr %10, i32 %conv3.i
  %11 = call ptr @memcpy(ptr %arrayidx.i, ptr %pkt, i32 %cond.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cond.i)
  %tobool13.not.i = icmp eq i32 %cond.i, 256
  br i1 %tobool13.not.i, label %if.then11.i.amdgpu_ring_write_multiple.exit_crit_edge, label %if.then11.i.if.then14.i_crit_edge

if.then11.i.if.then14.i_crit_edge:                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then11.i.amdgpu_ring_write_multiple.exit_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write_multiple.exit

if.then14.i:                                      ; preds = %if.then11.i.if.then14.i_crit_edge, %if.end.i.if.then14.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %pkt, i32 %cond.i
  %12 = ptrtoint ptr %ring4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring4.i, align 4
  %14 = call ptr @memcpy(ptr %13, ptr %add.ptr.i, i32 %shl9.i)
  br label %amdgpu_ring_write_multiple.exit

amdgpu_ring_write_multiple.exit:                  ; preds = %if.then14.i, %if.then11.i.amdgpu_ring_write_multiple.exit_crit_edge
  %15 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %wptr.i, align 8
  %add19.i = add i64 %16, 64
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_mes, ptr %mes, i32 0, i32 6, i32 13
  %17 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ptr_mask.i, align 8
  %and21.i = and i64 %18, %add19.i
  store i64 %and21.i, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %count_dw1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_dw1.i, align 8
  %sub23.i = add i32 %20, -64
  store i32 %sub23.i, ptr %count_dw1.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring2) #9
  %21 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %pkt, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 255
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %bf.clear) #9
  %sync_seq = getelementptr inbounds %struct.amdgpu_mes, ptr %mes, i32 0, i32 6, i32 2, i32 2
  %22 = ptrtoint ptr %sync_seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sync_seq, align 4
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usec_timeout, align 8
  %call13 = tail call i32 @amdgpu_fence_wait_polling(ptr noundef %ring2, i32 noundef %23, i32 noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.then15, label %amdgpu_ring_write_multiple.exit.cleanup_crit_edge

amdgpu_ring_write_multiple.exit.cleanup_crit_edge: ; preds = %amdgpu_ring_write_multiple.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %amdgpu_ring_write_multiple.exit
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load17 = load i32, ptr %pkt, align 4
  %bf.lshr18 = lshr i32 %bf.load17, 20
  %bf.clear19 = and i32 %bf.lshr18, 255
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %bf.clear19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %amdgpu_ring_write_multiple.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then15 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %amdgpu_ring_write_multiple.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_wait_polling(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_reserved(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_kunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @mes_v10_1_ring_get_rptr(ptr nocapture noundef readonly %ring) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %wb1 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %2 = ptrtoint ptr %wb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wb1, align 4
  %rptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 6
  %4 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  %conv = zext i32 %7 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mes_v10_1_ring_get_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %0 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_doorbell, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 8
  %wb1 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 70, i32 1
  %4 = ptrtoint ptr %wb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb1, align 4
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %6 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 8) #9
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx) #9
  ret i64 %call.i

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/mes_v10_1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 70, 0\0A.popsection", ""() #9, !srcloc !84
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mes_v10_1_ring_set_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %0 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_doorbell, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 8
  %wb2 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 70, i32 1
  %4 = ptrtoint ptr %wb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb2, align 4
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %6 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 8) #9
  tail call void @generic_atomic64_set(ptr noundef %arrayidx, i64 noundef %9) #9
  %doorbell_index = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 23
  %10 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %doorbell_index, align 8
  %12 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wptr, align 8
  tail call void @amdgpu_mm_wdoorbell64(ptr noundef %3, i32 noundef %11, i64 noundef %13) #9
  ret void

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/mes_v10_1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 53, 0\0A.popsection", ""() #9, !srcloc !85
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_insert_nop(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wdoorbell64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_wb_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wb_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mes_v10_1_enable(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx13 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %9, 10247
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %13, 10247
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add18, i32 noundef 0) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  %or = or i32 %cond, 65536
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and23 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cond.end.cond.false45_crit_edge, label %land.lhs.true25

cond.end.cond.false45_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false45

land.lhs.true25:                                  ; preds = %cond.end
  %funcs28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false45_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false45_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false45

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool34.not = icmp eq ptr %19, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false45_crit_edge, label %cond.true35

land.lhs.true30.cond.false45_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false45

cond.true35:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx41 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx41, align 8
  %arrayidx43 = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx43, align 4
  %add44 = add i32 %23, 10247
  tail call void %19(ptr noundef %adev, i32 noundef %add44, i32 noundef %or, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end51

cond.false45:                                     ; preds = %land.lhs.true30.cond.false45_crit_edge, %land.lhs.true25.cond.false45_crit_edge, %cond.end.cond.false45_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %27, 10247
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add50, i32 noundef %or, i32 noundef 0) #9
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false45, %cond.true35
  %28 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt, align 8
  %and54 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %cond.end51.cond.false77_crit_edge, label %land.lhs.true56

cond.end51.cond.false77_crit_edge:                ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false77

land.lhs.true56:                                  ; preds = %cond.end51
  %funcs59 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %30 = ptrtoint ptr %funcs59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs59, align 4
  %tobool60.not = icmp eq ptr %31, null
  br i1 %tobool60.not, label %land.lhs.true56.cond.false77_crit_edge, label %land.lhs.true61

land.lhs.true56.cond.false77_crit_edge:           ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false77

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %sriov_wreg65 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %sriov_wreg65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_wreg65, align 4
  %tobool66.not = icmp eq ptr %33, null
  br i1 %tobool66.not, label %land.lhs.true61.cond.false77_crit_edge, label %cond.true67

land.lhs.true61.cond.false77_crit_edge:           ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false77

cond.true67:                                      ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx73 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %34 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx73, align 8
  %arrayidx75 = getelementptr i32, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx75, align 4
  %add76 = add i32 %37, 10240
  %uc_start_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 119, i32 12
  %38 = ptrtoint ptr %uc_start_addr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %uc_start_addr, align 8
  %conv = trunc i64 %39 to i32
  %shr = lshr i32 %conv, 2
  tail call void %33(ptr noundef %adev, i32 noundef %add76, i32 noundef %shr, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end87

cond.false77:                                     ; preds = %land.lhs.true61.cond.false77_crit_edge, %land.lhs.true56.cond.false77_crit_edge, %cond.end51.cond.false77_crit_edge
  %arrayidx79 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %40 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx79, align 8
  %arrayidx81 = getelementptr i32, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx81, align 4
  %add82 = add i32 %43, 10240
  %uc_start_addr84 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 119, i32 12
  %44 = ptrtoint ptr %uc_start_addr84 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %uc_start_addr84, align 8
  %conv85 = trunc i64 %45 to i32
  %shr86 = lshr i32 %conv85, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add82, i32 noundef %shr86, i32 noundef 0) #9
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false77, %cond.true67
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %virt, align 8
  %and90 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %cond.end87.cond.false114_crit_edge, label %land.lhs.true92

cond.end87.cond.false114_crit_edge:               ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false114

land.lhs.true92:                                  ; preds = %cond.end87
  %funcs95 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %48 = ptrtoint ptr %funcs95 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %funcs95, align 4
  %tobool96.not = icmp eq ptr %49, null
  br i1 %tobool96.not, label %land.lhs.true92.cond.false114_crit_edge, label %land.lhs.true97

land.lhs.true92.cond.false114_crit_edge:          ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false114

land.lhs.true97:                                  ; preds = %land.lhs.true92
  %sriov_rreg101 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %sriov_rreg101 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sriov_rreg101, align 4
  %tobool102.not = icmp eq ptr %51, null
  br i1 %tobool102.not, label %land.lhs.true97.cond.false114_crit_edge, label %cond.true103

land.lhs.true97.cond.false114_crit_edge:          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false114

cond.true103:                                     ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx109 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %52 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx109, align 8
  %arrayidx111 = getelementptr i32, ptr %53, i32 1
  %54 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx111, align 4
  %add112 = add i32 %55, 10295
  %call113 = tail call i32 %51(ptr noundef %adev, i32 noundef %add112, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end121

cond.false114:                                    ; preds = %land.lhs.true97.cond.false114_crit_edge, %land.lhs.true92.cond.false114_crit_edge, %cond.end87.cond.false114_crit_edge
  %arrayidx116 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %56 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx116, align 8
  %arrayidx118 = getelementptr i32, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx118, align 4
  %add119 = add i32 %59, 10295
  %call120 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add119, i32 noundef 0) #9
  br label %cond.end121

cond.end121:                                      ; preds = %cond.false114, %cond.true103
  %cond122 = phi i32 [ %call113, %cond.true103 ], [ %call120, %cond.false114 ]
  %and123 = and i32 %cond122, -9
  %60 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %virt, align 8
  %and127 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %cond.end121.cond.false150_crit_edge, label %land.lhs.true129

cond.end121.cond.false150_crit_edge:              ; preds = %cond.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false150

land.lhs.true129:                                 ; preds = %cond.end121
  %funcs132 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %62 = ptrtoint ptr %funcs132 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %funcs132, align 4
  %tobool133.not = icmp eq ptr %63, null
  br i1 %tobool133.not, label %land.lhs.true129.cond.false150_crit_edge, label %land.lhs.true134

land.lhs.true129.cond.false150_crit_edge:         ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false150

land.lhs.true134:                                 ; preds = %land.lhs.true129
  %sriov_wreg138 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %sriov_wreg138 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sriov_wreg138, align 4
  %tobool139.not = icmp eq ptr %65, null
  br i1 %tobool139.not, label %land.lhs.true134.cond.false150_crit_edge, label %cond.true140

land.lhs.true134.cond.false150_crit_edge:         ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false150

cond.true140:                                     ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx146 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %66 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx146, align 8
  %arrayidx148 = getelementptr i32, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx148, align 4
  %add149 = add i32 %69, 10295
  tail call void %65(ptr noundef %adev, i32 noundef %add149, i32 noundef %and123, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end156

cond.false150:                                    ; preds = %land.lhs.true134.cond.false150_crit_edge, %land.lhs.true129.cond.false150_crit_edge, %cond.end121.cond.false150_crit_edge
  %arrayidx152 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %70 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx152, align 8
  %arrayidx154 = getelementptr i32, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx154, align 4
  %add155 = add i32 %73, 10295
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add155, i32 noundef %and123, i32 noundef 0) #9
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false150, %cond.true140
  %74 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %virt, align 8
  %and159 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %cond.end156.cond.false182_crit_edge, label %land.lhs.true161

cond.end156.cond.false182_crit_edge:              ; preds = %cond.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false182

land.lhs.true161:                                 ; preds = %cond.end156
  %funcs164 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %76 = ptrtoint ptr %funcs164 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %funcs164, align 4
  %tobool165.not = icmp eq ptr %77, null
  br i1 %tobool165.not, label %land.lhs.true161.cond.false182_crit_edge, label %land.lhs.true166

land.lhs.true161.cond.false182_crit_edge:         ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false182

land.lhs.true166:                                 ; preds = %land.lhs.true161
  %sriov_wreg170 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %sriov_wreg170 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sriov_wreg170, align 4
  %tobool171.not = icmp eq ptr %79, null
  br i1 %tobool171.not, label %land.lhs.true166.cond.false182_crit_edge, label %cond.true172

land.lhs.true166.cond.false182_crit_edge:         ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false182

cond.true172:                                     ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx178 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %80 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx178, align 8
  %arrayidx180 = getelementptr i32, ptr %81, i32 1
  %82 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx180, align 4
  %add181 = add i32 %83, 10247
  tail call void %79(ptr noundef %adev, i32 noundef %add181, i32 noundef 67108864, i32 noundef 0, i32 noundef 1) #9
  br label %if.end

cond.false182:                                    ; preds = %land.lhs.true166.cond.false182_crit_edge, %land.lhs.true161.cond.false182_crit_edge, %cond.end156.cond.false182_crit_edge
  %arrayidx184 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %84 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx184, align 8
  %arrayidx186 = getelementptr i32, ptr %85, i32 1
  %86 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx186, align 4
  %add187 = add i32 %87, 10247
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add187, i32 noundef 67108864, i32 noundef 0) #9
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.cond.false215_crit_edge, label %land.lhs.true193

if.else.cond.false215_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false215

land.lhs.true193:                                 ; preds = %if.else
  %funcs196 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %88 = ptrtoint ptr %funcs196 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %funcs196, align 4
  %tobool197.not = icmp eq ptr %89, null
  br i1 %tobool197.not, label %land.lhs.true193.cond.false215_crit_edge, label %land.lhs.true198

land.lhs.true193.cond.false215_crit_edge:         ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false215

land.lhs.true198:                                 ; preds = %land.lhs.true193
  %sriov_rreg202 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %89, i32 0, i32 13
  %90 = ptrtoint ptr %sriov_rreg202 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sriov_rreg202, align 4
  %tobool203.not = icmp eq ptr %91, null
  br i1 %tobool203.not, label %land.lhs.true198.cond.false215_crit_edge, label %cond.true204

land.lhs.true198.cond.false215_crit_edge:         ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false215

cond.true204:                                     ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx210 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %92 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx210, align 8
  %arrayidx212 = getelementptr i32, ptr %93, i32 1
  %94 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx212, align 4
  %add213 = add i32 %95, 10247
  %call214 = tail call i32 %91(ptr noundef %adev, i32 noundef %add213, i32 noundef 0, i32 noundef 1) #9
  br label %cond.end222

cond.false215:                                    ; preds = %land.lhs.true198.cond.false215_crit_edge, %land.lhs.true193.cond.false215_crit_edge, %if.else.cond.false215_crit_edge
  %arrayidx217 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %96 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx217, align 8
  %arrayidx219 = getelementptr i32, ptr %97, i32 1
  %98 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx219, align 4
  %add220 = add i32 %99, 10247
  %call221 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add220, i32 noundef 0) #9
  br label %cond.end222

cond.end222:                                      ; preds = %cond.false215, %cond.true204
  %cond223 = phi i32 [ %call214, %cond.true204 ], [ %call221, %cond.false215 ]
  %and226 = and i32 %cond223, -1140916241
  %or231 = or i32 %and226, 1073807376
  %100 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %virt, align 8
  %and234 = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %cond.end222.cond.false257_crit_edge, label %land.lhs.true236

cond.end222.cond.false257_crit_edge:              ; preds = %cond.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false257

land.lhs.true236:                                 ; preds = %cond.end222
  %funcs239 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %102 = ptrtoint ptr %funcs239 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %funcs239, align 4
  %tobool240.not = icmp eq ptr %103, null
  br i1 %tobool240.not, label %land.lhs.true236.cond.false257_crit_edge, label %land.lhs.true241

land.lhs.true236.cond.false257_crit_edge:         ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false257

land.lhs.true241:                                 ; preds = %land.lhs.true236
  %sriov_wreg245 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %103, i32 0, i32 12
  %104 = ptrtoint ptr %sriov_wreg245 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sriov_wreg245, align 4
  %tobool246.not = icmp eq ptr %105, null
  br i1 %tobool246.not, label %land.lhs.true241.cond.false257_crit_edge, label %cond.true247

land.lhs.true241.cond.false257_crit_edge:         ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false257

cond.true247:                                     ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx253 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %106 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx253, align 8
  %arrayidx255 = getelementptr i32, ptr %107, i32 1
  %108 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx255, align 4
  %add256 = add i32 %109, 10247
  tail call void %105(ptr noundef %adev, i32 noundef %add256, i32 noundef %or231, i32 noundef 0, i32 noundef 1) #9
  br label %if.end

cond.false257:                                    ; preds = %land.lhs.true241.cond.false257_crit_edge, %land.lhs.true236.cond.false257_crit_edge, %cond.end222.cond.false257_crit_edge
  %arrayidx259 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %110 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx259, align 8
  %arrayidx261 = getelementptr i32, ptr %111, i32 1
  %112 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx261, align 4
  %add262 = add i32 %113, 10247
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add262, i32 noundef %or231, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %cond.false257, %cond.true247, %cond.false182, %cond.true172
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv_grbm_select(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 38, i32 1}
!4 = !{ptr @mes_v10_1_ip_block, !5, !"mes_v10_1_ip_block", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 1002, i32 38}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 993, i32 10}
!8 = !{ptr @mes_v10_1_ip_funcs, !9, !"mes_v10_1_ip_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 992, i32 34}
!10 = !{ptr @mes_v10_1_funcs, !11, !"mes_v10_1_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 266, i32 38}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 102, i32 2}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 107, i32 3}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 327, i32 3}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 283, i32 15}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 286, i32 15}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 292, i32 37}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 553, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mes_v10_1_allocate_eop_buf._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @mes_v10_1_allocate_eop_buf._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 867, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mes_v10_1_mqd_sw_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mes_v10_1_mqd_sw_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 874, i32 3}
!39 = !{ptr @mes_v10_1_mqd_sw_init._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mes_v10_1_mqd_sw_init._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 849, i32 22}
!43 = !{ptr @mes_v10_1_ring_funcs, !44, !"mes_v10_1_ring_funcs", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 74, i32 39}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 571, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mes_v10_1_allocate_mem_slots._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @mes_v10_1_allocate_mem_slots._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 582, i32 3}
!53 = !{ptr @mes_v10_1_allocate_mem_slots._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mes_v10_1_allocate_mem_slots._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 942, i32 4}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 959, i32 3}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 360, i32 3}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mes_v10_1_allocate_ucode_buffer._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mes_v10_1_allocate_ucode_buffer._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/mes_v10_1.c", i32 392, i32 3}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mes_v10_1_allocate_ucode_data_buffer._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @mes_v10_1_allocate_ucode_data_buffer._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2164632250, i64 2164632753, i64 2164632287, i64 2164632343, i64 2164632377, i64 2164632401, i64 2164632442, i64 2164632463, i64 2164632491, i64 2164632525}
!79 = !{!"auto-init"}
!80 = !{i8 0, i8 2}
!81 = !{i32 0, i32 33}
!82 = !{i64 2164630715, i64 2164631218, i64 2164630752, i64 2164630808, i64 2164630842, i64 2164630866, i64 2164630907, i64 2164630928, i64 2164630956, i64 2164630990}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 2164627362, i64 2164627864, i64 2164627399, i64 2164627455, i64 2164627489, i64 2164627513, i64 2164627554, i64 2164627575, i64 2164627603, i64 2164627637}
!85 = !{i64 2164625830, i64 2164626332, i64 2164625867, i64 2164625923, i64 2164625957, i64 2164625981, i64 2164626022, i64 2164626043, i64 2164626071, i64 2164626105}
