; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.mc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32 }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@__UNIQUE_ID_firmware343 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/tahiti_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/pitcairn_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [36 x i8] c"amdgpu.firmware=amdgpu/verde_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [36 x i8] c"amdgpu.firmware=amdgpu/oland_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/hainan_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [35 x i8] c"amdgpu.firmware=amdgpu/si58_mc.bin\00", section ".modinfo", align 1
@gmc_v6_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @gmc_v6_0_early_init, ptr @gmc_v6_0_late_init, ptr @gmc_v6_0_sw_init, ptr @gmc_v6_0_sw_fini, ptr null, ptr @gmc_v6_0_hw_init, ptr @gmc_v6_0_hw_fini, ptr null, ptr @gmc_v6_0_suspend, ptr @gmc_v6_0_resume, ptr @gmc_v6_0_is_idle, ptr @gmc_v6_0_wait_for_idle, ptr null, ptr null, ptr @gmc_v6_0_soft_reset, ptr null, ptr @gmc_v6_0_set_clockgating_state, ptr @gmc_v6_0_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gmc_v6_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 1, i32 6, i32 0, i32 0, ptr @gmc_v6_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gmc_v6_0\00", [23 x i8] zeroinitializer }, align 32
@gmc_v6_0_gmc_funcs = internal constant { %struct.amdgpu_gmc_funcs, [60 x i8] } { %struct.amdgpu_gmc_funcs { ptr @gmc_v6_0_flush_gpu_tlb, ptr null, ptr @gmc_v6_0_emit_flush_gpu_tlb, ptr null, ptr @gmc_v6_0_set_prt, ptr null, ptr @gmc_v6_0_get_vm_pde, ptr @gmc_v6_0_get_vm_pte, ptr @gmc_v6_0_get_vbios_fb_size }, [60 x i8] zeroinitializer }, align 32
@gmc_v6_0_set_prt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Disabling VM faults because of PRT request!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gmc_v6_0_set_prt\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gmc_v6_0_set_prt._entry_ptr = internal global ptr @gmc_v6_0_set_prt._entry, section ".printk_index", align 4
@gmc_v6_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gmc_v6_0_vm_fault_interrupt_state, ptr @gmc_v6_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@amdgpu_vm_fault_stop = external dso_local local_unnamed_addr global i32, align 4
@__func__.gmc_v6_0_process_interrupt = private unnamed_addr constant [27 x i8] c"gmc_v6_0_process_interrupt\00", align 1
@gmc_v6_0_process_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.gmc_v6_0_process_interrupt, ptr @.str.3, i32 1087, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: GPU fault detected: %d 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gmc_v6_0_process_interrupt._entry_ptr = internal global ptr @gmc_v6_0_process_interrupt._entry, section ".printk_index", align 4
@gmc_v6_0_process_interrupt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.gmc_v6_0_process_interrupt, ptr @.str.3, i32 1089, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu:   VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@gmc_v6_0_process_interrupt._entry_ptr.10 = internal global ptr @gmc_v6_0_process_interrupt._entry.8, section ".printk_index", align 4
@gmc_v6_0_process_interrupt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.gmc_v6_0_process_interrupt, ptr @.str.3, i32 1091, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu:   VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@gmc_v6_0_process_interrupt._entry_ptr.13 = internal global ptr @gmc_v6_0_process_interrupt._entry.11, section ".printk_index", align 4
@gmc_v6_0_vm_decode_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 630, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"amdgpu: VM fault (0x%02x, vmid %d) at page %u, %s from '%s' (0x%08x) (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gmc_v6_0_vm_decode_fault\00", [39 x i8] zeroinitializer }, align 32
@gmc_v6_0_vm_decode_fault._entry_ptr = internal global ptr @gmc_v6_0_vm_decode_fault._entry, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@gmc_v6_0_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: No suitable DMA available.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gmc_v6_0_sw_init\00", [47 x i8] zeroinitializer }, align 32
@gmc_v6_0_sw_init._entry_ptr = internal global ptr @gmc_v6_0_sw_init._entry, section ".printk_index", align 4
@gmc_v6_0_sw_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 852, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Failed to load mc firmware!\0A\00", [59 x i8] zeroinitializer }, align 32
@gmc_v6_0_sw_init._entry_ptr.22 = internal global ptr @gmc_v6_0_sw_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tahiti\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pitcairn\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"verde\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oland\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hainan\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu/si58_mc.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu/%s_mc.bin\00", [47 x i8] zeroinitializer }, align 32
@gmc_v6_0_init_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 144, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: si_mc: Failed to load firmware \22%s\22\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gmc_v6_0_init_microcode\00", [40 x i8] zeroinitializer }, align 32
@gmc_v6_0_init_microcode._entry_ptr = internal global ptr @gmc_v6_0_init_microcode._entry, section ".printk_index", align 4
@amdgpu_gart_size = external dso_local local_unnamed_addr global i32, align 4
@gmc_v6_0_gart_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 570, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: gmc_v6_0 PCIE GART already initialized\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gmc_v6_0_gart_init\00", [45 x i8] zeroinitializer }, align 32
@gmc_v6_0_gart_init._entry_ptr = internal global ptr @gmc_v6_0_gart_init._entry, section ".printk_index", align 4
@gmc_v6_0_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 916, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Failed to load MC firmware!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gmc_v6_0_hw_init\00", [47 x i8] zeroinitializer }, align 32
@gmc_v6_0_hw_init._entry_ptr = internal global ptr @gmc_v6_0_hw_init._entry, section ".printk_index", align 4
@gmc_v6_0_mc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Wait for MC idle timedout !\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gmc_v6_0_mc_program\00", [44 x i8] zeroinitializer }, align 32
@gmc_v6_0_mc_program._entry_ptr = internal global ptr @gmc_v6_0_mc_program._entry, section ".printk_index", align 4
@gmc_v6_0_mc_program._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@gmc_v6_0_mc_program._entry_ptr.40 = internal global ptr @gmc_v6_0_mc_program._entry.39, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gmc_v6_0_gart_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 476, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: No VRAM object for PCIE GART.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gmc_v6_0_gart_enable\00", [43 x i8] zeroinitializer }, align 32
@gmc_v6_0_gart_enable._entry_ptr = internal global ptr @gmc_v6_0_gart_enable._entry, section ".printk_index", align 4
@gmc_v6_0_gart_enable._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 560, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gmc_v6_0_gart_enable._entry_ptr.46 = internal global ptr @gmc_v6_0_gart_enable._entry.43, section ".printk_index", align 4
@gmc_v6_0_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1007, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Wait for GMC idle timed out !\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gmc_v6_0_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@gmc_v6_0_soft_reset._entry_ptr = internal global ptr @gmc_v6_0_soft_reset._entry, section ".printk_index", align 4
@gmc_v6_0_soft_reset._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 1013, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: SRBM_SOFT_RESET=0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@gmc_v6_0_soft_reset._entry_ptr.51 = internal global ptr @gmc_v6_0_soft_reset._entry.49, section ".printk_index", align 4
@switch.table.gmc_v6_0_sw_init = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], [52 x i8] zeroinitializer }, align 32
@switch.table.gmc_v6_0_sw_init.52 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], [44 x i8] zeroinitializer }, align 32
@switch.table.gmc_v6_0_sw_init.53 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 4, i32 8, i32 3, i32 6, i32 10, i32 12, i32 16], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"gmc_v6_0_ip_funcs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1110, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"gmc_v6_0_ip_block\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1152, i32 38 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1111, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"gmc_v6_0_gmc_funcs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1127, i32 38 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 425, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"gmc_v6_0_irq_funcs\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1136, i32 42 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1086, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1088, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1090, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 626, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 845, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 852, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 105, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 109, i32 15 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 112, i32 15 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 115, i32 15 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 118, i32 15 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 121, i32 15 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 131, i32 38 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 133, i32 38 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 142, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 570, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 916, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 239, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 267, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 476, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 558, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1007, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1013, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [30 x i8] c"switch.table.gmc_v6_0_sw_init\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [33 x i8] c"switch.table.gmc_v6_0_sw_init.52\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [33 x i8] c"switch.table.gmc_v6_0_sw_init.53\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @gmc_v6_0_gart_enable._entry, ptr @gmc_v6_0_gart_enable._entry.43, ptr @gmc_v6_0_gart_enable._entry_ptr, ptr @gmc_v6_0_gart_enable._entry_ptr.46, ptr @gmc_v6_0_gart_init._entry, ptr @gmc_v6_0_gart_init._entry_ptr, ptr @gmc_v6_0_hw_init._entry, ptr @gmc_v6_0_hw_init._entry_ptr, ptr @gmc_v6_0_init_microcode._entry, ptr @gmc_v6_0_init_microcode._entry_ptr, ptr @gmc_v6_0_mc_program._entry, ptr @gmc_v6_0_mc_program._entry.39, ptr @gmc_v6_0_mc_program._entry_ptr, ptr @gmc_v6_0_mc_program._entry_ptr.40, ptr @gmc_v6_0_process_interrupt._entry, ptr @gmc_v6_0_process_interrupt._entry.11, ptr @gmc_v6_0_process_interrupt._entry.8, ptr @gmc_v6_0_process_interrupt._entry_ptr, ptr @gmc_v6_0_process_interrupt._entry_ptr.10, ptr @gmc_v6_0_process_interrupt._entry_ptr.13, ptr @gmc_v6_0_set_prt._entry, ptr @gmc_v6_0_set_prt._entry_ptr, ptr @gmc_v6_0_soft_reset._entry, ptr @gmc_v6_0_soft_reset._entry.49, ptr @gmc_v6_0_soft_reset._entry_ptr, ptr @gmc_v6_0_soft_reset._entry_ptr.51, ptr @gmc_v6_0_sw_init._entry, ptr @gmc_v6_0_sw_init._entry.20, ptr @gmc_v6_0_sw_init._entry_ptr, ptr @gmc_v6_0_sw_init._entry_ptr.22, ptr @gmc_v6_0_vm_decode_fault._entry, ptr @gmc_v6_0_vm_decode_fault._entry_ptr, ptr @gmc_v6_0_ip_funcs, ptr @gmc_v6_0_ip_block, ptr @.str, ptr @gmc_v6_0_gmc_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gmc_v6_0_irq_funcs, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @switch.table.gmc_v6_0_sw_init, ptr @switch.table.gmc_v6_0_sw_init.52, ptr @switch.table.gmc_v6_0_sw_init.53], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_gmc_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_set_prt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_process_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_process_interrupt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_process_interrupt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_vm_decode_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_sw_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_init_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_gart_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_mc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_mc_program._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_gart_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_gart_enable._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v6_0_soft_reset._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gmc_v6_0_sw_init to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gmc_v6_0_sw_init.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gmc_v6_0_sw_init.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gmc_v6_0_early_init(ptr nocapture noundef writeonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gmc_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 38
  %0 = ptrtoint ptr %gmc_funcs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @gmc_v6_0_gmc_funcs, ptr %gmc_funcs.i, align 4
  %vm_fault.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %1 = ptrtoint ptr %vm_fault.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %vm_fault.i, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20, i32 2
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @gmc_v6_0_irq_funcs, ptr %funcs.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_late_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %0 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call = tail call i32 @amdgpu_irq_get(ptr noundef %handle, ptr noundef %vm_fault, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  %fw_name.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vmhubs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 67
  %0 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num_vmhubs, align 8
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2688, i32 noundef 0) #9
  %3 = add i32 %call, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1342177280, i32 %3)
  %4 = icmp ult i32 %3, -1342177280
  br i1 %4, label %switch.lookup, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %5 = lshr i32 %3, 28
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.gmc_v6_0_sw_init, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.sink = phi i32 [ 0, %entry.if.end_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.else.if.end_crit_edge ]
  %vram_type4 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 21
  %7 = ptrtoint ptr %vram_type4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i.sink, ptr %vram_type4, align 4
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call6 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 146, ptr noundef %vm_fault) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call12 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 147, ptr noundef %vm_fault) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  tail call void @amdgpu_vm_adjust_size(ptr noundef %handle, i32 noundef 64, i32 noundef 9, i32 noundef 1, i32 noundef 40) #9
  %mc_mask = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 17
  %8 = ptrtoint ptr %mc_mask to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1099511627775, ptr %mc_mask, align 8
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handle, align 8
  %call.i = tail call i32 @dma_set_mask(ptr noundef %10, i64 noundef 1099511627775) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %10, i64 noundef 1099511627775) #9
  %call22 = tail call zeroext i1 @drm_need_swiotlb(i32 noundef 40) #9
  %need_swiotlb = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 14
  %frombool = zext i1 %call22 to i8
  %13 = ptrtoint ptr %need_swiotlb to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %need_swiotlb, align 1
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name.i) #9
  %14 = call ptr @memset(ptr %fw_name.i, i32 255, i32 30)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23) #9
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %15 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %17 = icmp ult i32 %16, 5
  br i1 %17, label %switch.lookup111, label %do.body.i

do.body.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

switch.lookup111:                                 ; preds = %if.end21
  %switch.gep112 = getelementptr inbounds [5 x ptr], ptr @switch.table.gmc_v6_0_sw_init.52, i32 0, i32 %16
  %18 = ptrtoint ptr %switch.gep112 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load113 = load ptr, ptr %switch.gep112, align 4
  %call.i99 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2688, i32 noundef 0) #9
  %shr.mask.i = and i32 %call.i99, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1476395008, i32 %shr.mask.i)
  %cmp.i100 = icmp eq i32 %shr.mask.i, 1476395008
  br i1 %cmp.i100, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %switch.lookup111
  call void @__sanitizer_cov_trace_pc() #11
  %19 = call ptr @memcpy(ptr %fw_name.i, ptr @.str.29, i32 19)
  br label %if.end12.i

if.else.i:                                        ; preds = %switch.lookup111
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.30, ptr noundef nonnull %switch.load113) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then8.i
  %fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 18
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle, align 8
  %call14.i = call i32 @request_firmware(ptr noundef %fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %out.i, label %if.end12.i.do.end28_crit_edge

if.end12.i.do.end28_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

out.i:                                            ; preds = %if.end12.i
  %22 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw.i, align 8
  %call20.i = call i32 @amdgpu_ucode_validate(ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end30, label %out.i.do.end28_crit_edge

out.i.do.end28_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

do.end28:                                         ; preds = %out.i.do.end28_crit_edge, %if.end12.i.do.end28_crit_edge
  %err.044.i = phi i32 [ %call20.i, %out.i.do.end28_crit_edge ], [ %call14.i, %if.end12.i.do.end28_crit_edge ]
  %24 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.31, ptr noundef nonnull %fw_name.i) #12
  %26 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw.i, align 8
  call void @release_firmware(ptr noundef %27) #9
  %28 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %fw.i, align 8
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #9
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end30:                                         ; preds = %out.i
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #9
  %call.i101 = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2520, i32 noundef 0) #9
  %and.i = and i32 %call.i101, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %call.i101, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %..i = select i1 %tobool2.not.i, i32 32, i32 64
  %chansize.0.i = select i1 %tobool.not.i, i32 %..i, i32 16
  %call6.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2049, i32 noundef 0) #9
  %and7.i = lshr i32 %call6.i, 12
  %shr.i = and i32 %and7.i, 15
  %switch.tableidx = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %31 = icmp ult i32 %switch.tableidx, 8
  br i1 %31, label %switch.lookup114, label %if.end30.sw.epilog.i103_crit_edge

if.end30.sw.epilog.i103_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i103

switch.lookup114:                                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep115 = getelementptr inbounds [8 x i32], ptr @switch.table.gmc_v6_0_sw_init.53, i32 0, i32 %switch.tableidx
  %32 = ptrtoint ptr %switch.gep115 to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load116 = load i32, ptr %switch.gep115, align 4
  br label %sw.epilog.i103

sw.epilog.i103:                                   ; preds = %switch.lookup114, %if.end30.sw.epilog.i103_crit_edge
  %numchan.0.i = phi i32 [ 1, %if.end30.sw.epilog.i103_crit_edge ], [ %switch.load116, %switch.lookup114 ]
  %mul.i = mul nuw nsw i32 %numchan.0.i, %chansize.0.i
  %gmc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62
  %vram_width.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 14
  %33 = ptrtoint ptr %vram_width.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul.i, ptr %vram_width.i, align 8
  %call16.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5386, i32 noundef 0) #9
  %conv.i = zext i32 %call16.i to i64
  %mul18.i = shl nuw nsw i64 %conv.i, 20
  %mc_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 2
  %34 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %mul18.i, ptr %mc_vram_size.i, align 8
  %call20.i102 = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5386, i32 noundef 0) #9
  %conv21.i = zext i32 %call20.i102 to i64
  %mul23.i = shl nuw nsw i64 %conv21.i, 20
  %real_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 15
  %35 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %mul23.i, ptr %real_vram_size.i, align 8
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 8
  %and25.i = and i32 %37, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %sw.epilog.i103.if.end32.i_crit_edge

sw.epilog.i103.if.end32.i_crit_edge:              ; preds = %sw.epilog.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then27.i:                                      ; preds = %sw.epilog.i103
  %call28.i = call i32 @amdgpu_device_resize_fb_bar(ptr noundef %handle) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then27.i.if.end32.i_crit_edge, label %if.then27.i.cleanup_crit_edge

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27.i.if.end32.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i.if.end32.i_crit_edge, %sw.epilog.i103.if.end32.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %38 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 47
  %40 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %resource.i, align 8
  %aper_base.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 1
  %42 = ptrtoint ptr %aper_base.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %aper_base.i, align 4
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 47, i32 0, i32 1
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i104 = icmp eq i32 %44, 0
  br i1 %cmp.i104, label %if.end32.i.cond.end.i_crit_edge, label %cond.false.i

if.end32.i.cond.end.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %resource.i, align 8
  %sub.i = add i32 %44, 1
  %add.i = sub i32 %sub.i, %46
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end32.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end32.i.cond.end.i_crit_edge ]
  %47 = ptrtoint ptr %gmc.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond.i, ptr %gmc.i, align 8
  %conv49.i = zext i32 %cond.i to i64
  %visible_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 3
  %48 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv49.i, ptr %visible_vram_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_gart_size to i32))
  %49 = load i32, ptr @amdgpu_gart_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp51.i = icmp eq i32 %49, -1
  br i1 %cmp51.i, label %if.then53.i, label %if.else61.i

if.then53.i:                                      ; preds = %cond.end.i
  %50 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %switch.i = icmp ult i32 %51, 4
  %gart_size59.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  br i1 %switch.i, label %sw.bb57.i, label %sw.default55.i

sw.default55.i:                                   ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %gart_size59.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 268435456, ptr %gart_size59.i, align 8
  br label %if.end34

sw.bb57.i:                                        ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %gart_size59.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1073741824, ptr %gart_size59.i, align 8
  br label %if.end34

if.else61.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv62.i = sext i32 %49 to i64
  %shl.i = shl nsw i64 %conv62.i, 20
  %gart_size64.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %54 = ptrtoint ptr %gart_size64.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %shl.i, ptr %gart_size64.i, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else61.i, %sw.bb57.i, %sw.default55.i
  %smu_prv_buffer_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 21
  %55 = ptrtoint ptr %smu_prv_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %smu_prv_buffer_size.i, align 4
  %conv66.i = zext i32 %56 to i64
  %gart_size68.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %57 = ptrtoint ptr %gart_size68.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %gart_size68.i, align 8
  %add69.i = add i64 %58, %conv66.i
  store i64 %add69.i, ptr %gart_size68.i, align 8
  %call.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2057, i32 noundef 0) #9
  %and.i.i = and i32 %call.i.i, 65535
  %conv.i.i = zext i32 %and.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 24
  call void @amdgpu_gmc_vram_location(ptr noundef %handle, ptr noundef %gmc.i, i64 noundef %shl.i.i) #9
  call void @amdgpu_gmc_gart_location(ptr noundef %handle, ptr noundef %gmc.i) #9
  call void @amdgpu_gmc_get_vbios_allocations(ptr noundef %handle) #9
  %call35 = call i32 @amdgpu_bo_init(ptr noundef %handle) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %call39 = call fastcc i32 @gmc_v6_0_gart_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %first_kfd_vmid = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 1
  %59 = ptrtoint ptr %first_kfd_vmid to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8, ptr %first_kfd_vmid, align 8
  call void @amdgpu_vm_manager_init(ptr noundef %handle) #9
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags, align 8
  %and44 = and i32 %61, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else50, label %if.then46

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2074, i32 noundef 0) #9
  %conv = zext i32 %call48 to i64
  %shl = shl nuw nsw i64 %conv, 22
  %vram_base_offset = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 10
  %62 = ptrtoint ptr %vram_base_offset to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %shl, ptr %vram_base_offset, align 8
  br label %cleanup

if.else50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %vram_base_offset52 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 10
  %63 = ptrtoint ptr %vram_base_offset52 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 0, ptr %vram_base_offset52, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else50, %if.then46, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %do.end28, %do.end, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %err.044.i, %do.end28 ], [ %call6, %if.end.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ 0, %if.else50 ], [ 0, %if.then46 ], [ %call28.i, %if.then27.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_gem_force_release(ptr noundef %handle) #9
  tail call void @amdgpu_vm_manager_fini(ptr noundef %handle) #9
  tail call void @amdgpu_gart_table_vram_free(ptr noundef %handle) #9
  tail call void @amdgpu_bo_fini(ptr noundef %handle) #9
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 18
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  tail call void @release_firmware(ptr noundef %1) #9
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.073.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %j.072.i = phi i32 [ 0, %entry ], [ %add5.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %j.072.i, 2821
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #9
  %add1.i = add nuw nsw i32 %j.072.i, 2822
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1.i, i32 noundef 0, i32 noundef 0) #9
  %add2.i = add nuw nsw i32 %j.072.i, 2823
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add2.i, i32 noundef 0, i32 noundef 0) #9
  %add3.i = add nuw nsw i32 %j.072.i, 2824
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add3.i, i32 noundef 0, i32 noundef 0) #9
  %add4.i = add nuw nsw i32 %j.072.i, 2825
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add4.i, i32 noundef 0, i32 noundef 0) #9
  %inc.i = add nuw nsw i32 %i.073.i, 1
  %add5.i = add nuw nsw i32 %j.072.i, 6
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5416, i32 noundef 0, i32 noundef 0) #9
  %usec_timeout.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp4.not.i.i, label %for.end.i.do.end.i_crit_edge, label %for.end.i.for.body.i.i_crit_edge

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %call.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #9
  %and.i.i.i = and i32 %call.i.i.i, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.if.end.i_crit_edge, label %if.end.i.i

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #9
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %3 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %4
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %for.end.i.do.end.i_crit_edge
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.37) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.i.if.end.i_crit_edge
  %num_crtc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %7 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_crtc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not.i = icmp eq i32 %8, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then7.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 202, i32 noundef 0) #9
  %or.i = or i32 %call8.i, 16
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 202, i32 noundef %or.i, i32 noundef 0) #9
  %call9.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 192, i32 noundef 0) #9
  %and.i = and i32 %call9.i, 196608
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 192, i32 noundef %and.i, i32 noundef 0) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge
  %vram_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 10
  %9 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vram_start.i, align 8
  %shr.i = lshr i64 %10, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2061, i32 noundef %conv.i, i32 noundef 0) #9
  %vram_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 11
  %11 = ptrtoint ptr %vram_end.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %vram_end.i, align 8
  %shr12.i = lshr i64 %12, 12
  %conv13.i = trunc i64 %shr12.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2062, i32 noundef %conv13.i, i32 noundef 0) #9
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 69, i32 2
  %13 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %gpu_addr.i, align 8
  %shr14.i = lshr i64 %14, 12
  %conv15.i = trunc i64 %shr14.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2063, i32 noundef %conv15.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2060, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2058, i32 noundef 268435455, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2059, i32 noundef 268435455, i32 noundef 0) #9
  %15 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4.not.i57.i = icmp eq i32 %16, 0
  br i1 %cmp4.not.i57.i, label %if.end10.i.do.end21.i_crit_edge, label %if.end10.i.for.body.i62.i_crit_edge

if.end10.i.for.body.i62.i_crit_edge:              ; preds = %if.end10.i
  br label %for.body.i62.i

if.end10.i.do.end21.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i

for.body.i62.i:                                   ; preds = %if.end.i65.i.for.body.i62.i_crit_edge, %if.end10.i.for.body.i62.i_crit_edge
  %i.05.i58.i = phi i32 [ %inc.i63.i, %if.end.i65.i.for.body.i62.i_crit_edge ], [ 0, %if.end10.i.for.body.i62.i_crit_edge ]
  %call.i.i59.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #9
  %and.i.i60.i = and i32 %call.i.i59.i, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i60.i)
  %tobool.not.i.i61.i = icmp eq i32 %and.i.i60.i, 0
  br i1 %tobool.not.i.i61.i, label %for.body.i62.i.gmc_v6_0_mc_program.exit_crit_edge, label %if.end.i65.i

for.body.i62.i.gmc_v6_0_mc_program.exit_crit_edge: ; preds = %for.body.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gmc_v6_0_mc_program.exit

if.end.i65.i:                                     ; preds = %for.body.i62.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #9
  %inc.i63.i = add nuw i32 %i.05.i58.i, 1
  %18 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i64.i = icmp ult i32 %inc.i63.i, %19
  br i1 %cmp.i64.i, label %if.end.i65.i.for.body.i62.i_crit_edge, label %if.end.i65.i.do.end21.i_crit_edge

if.end.i65.i.do.end21.i_crit_edge:                ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i

if.end.i65.i.for.body.i62.i_crit_edge:            ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i62.i

do.end21.i:                                       ; preds = %if.end.i65.i.do.end21.i_crit_edge, %if.end10.i.do.end21.i_crit_edge
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.37) #12
  br label %gmc_v6_0_mc_program.exit

gmc_v6_0_mc_program.exit:                         ; preds = %do.end21.i, %for.body.i62.i.gmc_v6_0_mc_program.exit_crit_edge
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %gmc_v6_0_mc_program.exit.if.end3_crit_edge

gmc_v6_0_mc_program.exit.if.end3_crit_edge:       ; preds = %gmc_v6_0_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %gmc_v6_0_mc_program.exit
  %fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 18
  %24 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %do.end, label %if.end.i18

if.end.i18:                                       ; preds = %if.then
  %data.i = getelementptr inbounds %struct.firmware, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  tail call void @amdgpu_ucode_print_mc_hdr(ptr noundef %27) #9
  %ucode_version.i = getelementptr inbounds %struct.common_firmware_header, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %ucode_version.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ucode_version.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 19
  %31 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %fw_version.i, align 4
  %io_debug_size_bytes.i = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %io_debug_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_debug_size_bytes.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %div88.i = lshr i32 %34, 3
  %35 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw.i, align 8
  %data7.i = getelementptr inbounds %struct.firmware, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data7.i, align 4
  %io_debug_array_offset_bytes.i = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %27, i32 0, i32 2
  %39 = ptrtoint ptr %io_debug_array_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %io_debug_array_offset_bytes.i, align 4
  %ucode_size_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %27, i32 0, i32 7
  %41 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ucode_size_bytes.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %div989.i = lshr i32 %43, 2
  %ucode_array_offset_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %27, i32 0, i32 8
  %44 = ptrtoint ptr %ucode_array_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ucode_array_offset_bytes.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  %add.ptr14.i = getelementptr i8, ptr %38, i32 %46
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 0) #9
  %and.i17 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %cmp.i = icmp eq i32 %and.i17, 0
  br i1 %cmp.i, label %if.then15.i, label %if.end.i18.if.end3_crit_edge

if.end.i18.if.end3_crit_edge:                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then15.i:                                      ; preds = %if.end.i18
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 8, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 16, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %34)
  %cmp1690.not.i = icmp ult i32 %34, 8
  br i1 %cmp1690.not.i, label %if.then15.i.for.cond20.preheader.i_crit_edge, label %for.body.preheader.i

if.then15.i.for.cond20.preheader.i_crit_edge:     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond20.preheader.i

for.body.preheader.i:                             ; preds = %if.then15.i
  %47 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  %add.ptr.i = getelementptr i8, ptr %38, i32 %47
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div88.i, i32 1) #9
  br label %for.body.i21

for.cond20.preheader.i:                           ; preds = %for.body.i21.for.cond20.preheader.i_crit_edge, %if.then15.i.for.cond20.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp2193.not.i = icmp ult i32 %43, 4
  br i1 %cmp2193.not.i, label %for.cond20.preheader.i.for.end27.i_crit_edge, label %for.body22.preheader.i

for.cond20.preheader.i.for.end27.i_crit_edge:     ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27.i

for.body22.preheader.i:                           ; preds = %for.cond20.preheader.i
  %umax100.i = tail call i32 @llvm.umax.i32(i32 %div989.i, i32 1) #9
  br label %for.body22.i

for.body.i21:                                     ; preds = %for.body.i21.for.body.i21_crit_edge, %for.body.preheader.i
  %i.092.i = phi i32 [ %inc.i19, %for.body.i21.for.body.i21_crit_edge ], [ 0, %for.body.preheader.i ]
  %new_io_mc_regs.091.i = phi ptr [ %incdec.ptr18.i, %for.body.i21.for.body.i21_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %new_io_mc_regs.091.i, i32 1
  %48 = ptrtoint ptr %new_io_mc_regs.091.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %new_io_mc_regs.091.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2705, i32 noundef %50, i32 noundef 0) #9
  %incdec.ptr18.i = getelementptr i32, ptr %new_io_mc_regs.091.i, i32 2
  %51 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %incdec.ptr.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2706, i32 noundef %53, i32 noundef 0) #9
  %inc.i19 = add nuw nsw i32 %i.092.i, 1
  %exitcond.not.i20 = icmp eq i32 %inc.i19, %umax.i
  br i1 %exitcond.not.i20, label %for.body.i21.for.cond20.preheader.i_crit_edge, label %for.body.i21.for.body.i21_crit_edge

for.body.i21.for.body.i21_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i21

for.body.i21.for.cond20.preheader.i_crit_edge:    ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond20.preheader.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %for.body22.preheader.i
  %i.195.i = phi i32 [ %inc26.i, %for.body22.i.for.body22.i_crit_edge ], [ 0, %for.body22.preheader.i ]
  %new_fw_data.094.i = phi ptr [ %incdec.ptr23.i, %for.body22.i.for.body22.i_crit_edge ], [ %add.ptr14.i, %for.body22.preheader.i ]
  %incdec.ptr23.i = getelementptr i32, ptr %new_fw_data.094.i, i32 1
  %54 = ptrtoint ptr %new_fw_data.094.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %new_fw_data.094.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2611, i32 noundef %56, i32 noundef 0) #9
  %inc26.i = add nuw nsw i32 %i.195.i, 1
  %exitcond101.not.i = icmp eq i32 %inc26.i, %umax100.i
  br i1 %exitcond101.not.i, label %for.body22.i.for.end27.i_crit_edge, label %for.body22.i.for.body22.i_crit_edge

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22.i

for.body22.i.for.end27.i_crit_edge:               ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27.i

for.end27.i:                                      ; preds = %for.body22.i.for.end27.i_crit_edge, %for.cond20.preheader.i.for.end27.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 8, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 4, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 1, i32 noundef 0) #9
  %57 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp2996.i = icmp sgt i32 %58, 0
  br i1 %cmp2996.i, label %for.end27.i.for.body30.i_crit_edge, label %for.end27.i.if.end3_crit_edge

for.end27.i.if.end3_crit_edge:                    ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

for.end27.i.for.body30.i_crit_edge:               ; preds = %for.end27.i
  br label %for.body30.i

for.body30.i:                                     ; preds = %if.end35.i.for.body30.i_crit_edge, %for.end27.i.for.body30.i_crit_edge
  %i.297.i = phi i32 [ %inc37.i, %if.end35.i.for.body30.i_crit_edge ], [ 0, %for.end27.i.for.body30.i_crit_edge ]
  %call31.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2618, i32 noundef 0) #9
  %and32.i = and i32 %call31.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %for.end38thread-pre-split.i

if.end35.i:                                       ; preds = %for.body30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #9
  %inc37.i = add nuw nsw i32 %i.297.i, 1
  %60 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp29.i = icmp slt i32 %inc37.i, %61
  br i1 %cmp29.i, label %if.end35.i.for.body30.i_crit_edge, label %if.end35.i.for.end38.i_crit_edge

if.end35.i.for.end38.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end38.i

if.end35.i.for.body30.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30.i

for.end38thread-pre-split.i:                      ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr.i = load i32, ptr %usec_timeout.i.i, align 8
  br label %for.end38.i

for.end38.i:                                      ; preds = %for.end38thread-pre-split.i, %if.end35.i.for.end38.i_crit_edge
  %63 = phi i32 [ %.pr.i, %for.end38thread-pre-split.i ], [ %61, %if.end35.i.for.end38.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp4198.i = icmp sgt i32 %63, 0
  br i1 %cmp4198.i, label %for.end38.i.for.body42.i_crit_edge, label %for.end38.i.if.end3_crit_edge

for.end38.i.if.end3_crit_edge:                    ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

for.end38.i.for.body42.i_crit_edge:               ; preds = %for.end38.i
  br label %for.body42.i

for.body42.i:                                     ; preds = %if.end47.i.for.body42.i_crit_edge, %for.end38.i.for.body42.i_crit_edge
  %i.399.i = phi i32 [ %inc49.i, %if.end47.i.for.body42.i_crit_edge ], [ 0, %for.end38.i.for.body42.i_crit_edge ]
  %call43.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2618, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call43.i)
  %tobool45.not.i = icmp sgt i32 %call43.i, -1
  br i1 %tobool45.not.i, label %if.end47.i, label %for.body42.i.if.end3_crit_edge

for.body42.i.if.end3_crit_edge:                   ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end47.i:                                       ; preds = %for.body42.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #9
  %inc49.i = add nuw nsw i32 %i.399.i, 1
  %65 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp41.i = icmp slt i32 %inc49.i, %66
  br i1 %cmp41.i, label %if.end47.i.for.body42.i_crit_edge, label %if.end47.i.if.end3_crit_edge

if.end47.i.if.end3_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end47.i.for.body42.i_crit_edge:                ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42.i

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.35) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end47.i.if.end3_crit_edge, %for.body42.i.if.end3_crit_edge, %for.end38.i.if.end3_crit_edge, %for.end27.i.if.end3_crit_edge, %if.end.i18.if.end3_crit_edge, %gmc_v6_0_mc_program.exit.if.end3_crit_edge
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 63
  %69 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %gart.i, align 8
  %cmp.i22 = icmp eq ptr %70, null
  br i1 %cmp.i22, label %do.end.i23, label %if.end.i26

do.end.i23:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end.i26:                                       ; preds = %if.end3
  %gtt_mgr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 9
  %call.i24 = tail call i32 @amdgpu_gtt_mgr_recover(ptr noundef %gtt_mgr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %if.end2.i, label %if.end.i26.cleanup_crit_edge

if.end.i26.cleanup_crit_edge:                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %gart.i, align 8
  %call5.i = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %74) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2073, i32 noundef 1371, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1280, i32 noundef 755203, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1281, i32 noundef 3, i32 noundef 0) #9
  %fragment_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 8
  %75 = ptrtoint ptr %fragment_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fragment_size.i, align 8
  %shl6.i = shl i32 %76, 15
  %or.i27 = or i32 %76, %shl6.i
  %or7.i = or i32 %or.i27, 1048576
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1282, i32 noundef %or7.i, i32 noundef 0) #9
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 8
  %77 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %gart_start.i, align 8
  %shr.i28 = lshr i64 %78, 12
  %conv.i29 = trunc i64 %shr.i28 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1367, i32 noundef %conv.i29, i32 noundef 0) #9
  %gart_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 9
  %79 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %gart_end.i, align 8
  %shr9.i = lshr i64 %80, 12
  %conv10.i = trunc i64 %shr9.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1375, i32 noundef %conv10.i, i32 noundef 0) #9
  %shr11.i = lshr i64 %call5.i, 12
  %conv12.i = trunc i64 %shr11.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1359, i32 noundef %conv12.i, i32 noundef 0) #9
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 64
  %81 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dummy_page_addr.i, align 8
  %shr13.i = lshr i32 %82, 12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1350, i32 noundef %shr13.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1292, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1284, i32 noundef 17, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1397, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1398, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1399, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1368, i32 noundef 0, i32 noundef 0) #9
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 5
  %83 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %max_pfn.i, align 8
  %85 = trunc i64 %84 to i32
  %conv15.i30 = add i32 %85, -1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1376, i32 noundef %conv15.i30, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1360, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1361, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1362, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1363, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1364, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1365, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1366, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1294, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1295, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1296, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1297, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1298, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1299, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1300, i32 noundef %conv12.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1301, i32 noundef %conv12.i, i32 noundef 0) #9
  %86 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dummy_page_addr.i, align 8
  %shr29.i = lshr i32 %87, 12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1351, i32 noundef %shr29.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1293, i32 noundef 4, i32 noundef 0) #9
  %block_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 7
  %88 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %block_size.i, align 4
  %sub31.i = shl i32 %89, 24
  %or33.i = add i32 %sub31.i, -150994941
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1285, i32 noundef %or33.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %90 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp34.i = icmp eq i32 %90, 2
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1285, i32 noundef 0) #9
  %and.i.i = and i32 %call.i.i, -599185
  %masksel.i = select i1 %cmp34.i, i32 0, i32 599184
  %or31.i.sink.i = or i32 %and.i.i, %masksel.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1285, i32 noundef %or31.i.sink.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1310, i32 noundef 1, i32 noundef 0) #9
  %91 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %handle, align 8
  %gart_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %93 = ptrtoint ptr %gart_size.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %gart_size.i, align 8
  %shr44.i = lshr i64 %94, 20
  %conv45.i = trunc i64 %shr44.i to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.44, i32 noundef %conv45.i, i64 noundef %call5.i) #12
  %ready.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 63, i32 5
  %95 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %ready.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i, %if.end.i26.cleanup_crit_edge, %do.end.i23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end.i23 ], [ 0, %if.end2.i ], [ %call.i24, %if.end.i26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %vm_fault, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1284, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1285, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2073, i32 noundef 24, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1280, i32 noundef 755200, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1281, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1282, i32 noundef 1048576, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_fault.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call.i = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %vm_fault.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1284, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1285, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2073, i32 noundef 24, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1280, i32 noundef 755200, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1281, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1282, i32 noundef 1048576, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gmc_v6_0_hw_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_vmid_reset_all(ptr noundef %handle) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gmc_v6_0_is_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #9
  %and = and i32 %call, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_wait_for_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #9
  %and.i = and i32 %call.i, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #9
  %inc = add nuw i32 %i.05, 1
  %3 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #9
  %and = shl i32 %call, 9
  %0 = and i32 %and, 131072
  %and2 = and i32 %call, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %entry.if.end11_crit_edge, label %if.then4

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then4:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and5 = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or9 = or i32 %0, 2048
  br i1 %tobool6.not, label %if.then4.if.then13_crit_edge, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then4.if.then13_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool12.not = icmp eq i32 %0, 0
  br i1 %tobool12.not, label %if.end11.if.end27_crit_edge, label %if.end11.if.then13_crit_edge

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %if.then4.if.then13_crit_edge
  %srbm_soft_reset.153 = phi i32 [ 131072, %if.end11.if.then13_crit_edge ], [ %or9, %if.then4.if.then13_crit_edge ]
  %usec_timeout.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %3 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp4.not.i.i, label %if.then13.gmc_v6_0_wait_for_idle.exit.i_crit_edge, label %if.then13.for.body.i.i_crit_edge

if.then13.for.body.i.i_crit_edge:                 ; preds = %if.then13
  br label %for.body.i.i

if.then13.gmc_v6_0_wait_for_idle.exit.i_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %gmc_v6_0_wait_for_idle.exit.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then13.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.then13.for.body.i.i_crit_edge ]
  %call.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #9
  %and.i.i.i = and i32 %call.i.i.i, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.gmc_v6_0_wait_for_idle.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.gmc_v6_0_wait_for_idle.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gmc_v6_0_wait_for_idle.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #9
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %6 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %7
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.gmc_v6_0_wait_for_idle.exit.i_crit_edge

if.end.i.i.gmc_v6_0_wait_for_idle.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gmc_v6_0_wait_for_idle.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

gmc_v6_0_wait_for_idle.exit.i:                    ; preds = %if.end.i.i.gmc_v6_0_wait_for_idle.exit.i_crit_edge, %for.body.i.i.gmc_v6_0_wait_for_idle.exit.i_crit_edge, %if.then13.gmc_v6_0_wait_for_idle.exit.i_crit_edge
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2091, i32 noundef 0) #9
  %and.i = and i32 %call1.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 1
  br i1 %cmp.not.i, label %gmc_v6_0_wait_for_idle.exit.i.gmc_v6_0_mc_stop.exit_crit_edge, label %if.then.i

gmc_v6_0_wait_for_idle.exit.i.gmc_v6_0_mc_stop.exit_crit_edge: ; preds = %gmc_v6_0_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gmc_v6_0_mc_stop.exit

if.then.i:                                        ; preds = %gmc_v6_0_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5412, i32 noundef 0, i32 noundef 0) #9
  %and2.i = and i32 %call1.i, -8
  %or3.i = or i32 %and2.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2091, i32 noundef %or3.i, i32 noundef 0) #9
  br label %gmc_v6_0_mc_stop.exit

gmc_v6_0_mc_stop.exit:                            ; preds = %if.then.i, %gmc_v6_0_wait_for_idle.exit.i.gmc_v6_0_mc_stop.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #9
  %9 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.not.i = icmp eq i32 %10, 0
  br i1 %cmp4.not.i, label %gmc_v6_0_mc_stop.exit.do.end_crit_edge, label %gmc_v6_0_mc_stop.exit.for.body.i_crit_edge

gmc_v6_0_mc_stop.exit.for.body.i_crit_edge:       ; preds = %gmc_v6_0_mc_stop.exit
  br label %for.body.i

gmc_v6_0_mc_stop.exit.do.end_crit_edge:           ; preds = %gmc_v6_0_mc_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %gmc_v6_0_mc_stop.exit.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %gmc_v6_0_mc_stop.exit.for.body.i_crit_edge ]
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #9
  %and.i.i = and i32 %call.i.i, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.if.end17_crit_edge, label %if.end.i

for.body.i.if.end17_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #9
  %inc.i = add nuw i32 %i.05.i, 1
  %12 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %gmc_v6_0_mc_stop.exit.do.end_crit_edge
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.47) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end, %for.body.i.if.end17_crit_edge
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #9
  %or19 = or i32 %call18, %srbm_soft_reset.153
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.50, i32 noundef %or19) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %or19, i32 noundef 0) #9
  %call24 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 10737400) #9
  %neg = xor i32 %srbm_soft_reset.153, -1
  %and25 = and i32 %call24, %neg
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %and25, i32 noundef 0) #9
  %call26 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 10737400) #9
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2091, i32 noundef 0) #9
  %and.i50 = and i32 %call.i, -8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2091, i32 noundef %and.i50, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5412, i32 noundef 3, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 10737400) #9
  br label %if.end27

if.end27:                                         ; preds = %if.end17, %if.end11.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v6_0_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v6_0_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v6_0_flush_gpu_tlb(ptr noundef %adev, i32 noundef %vmid, i32 noundef %vmhub, i32 noundef %flush_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %vmid
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1310, i32 noundef %shl, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gmc_v6_0_emit_flush_gpu_tlb(ptr noundef %ring, i32 noundef %vmid, i64 noundef returned %pd_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %vmid)
  %cmp = icmp ult i32 %vmid, 8
  %reg.0.v = select i1 %cmp, i32 1359, i32 1286
  %reg.0 = add i32 %reg.0.v, %vmid
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emit_wreg, align 4
  %shr = lshr i64 %pd_addr, 12
  %conv = trunc i64 %shr to i32
  tail call void %3(ptr noundef %ring, i32 noundef %reg.0, i32 noundef %conv) #9
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %emit_wreg3 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %emit_wreg3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emit_wreg3, align 4
  %shl = shl nuw i32 1, %vmid
  tail call void %7(ptr noundef %ring, i32 noundef 1310, i32 noundef %shl) #9
  ret i64 %pd_addr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v6_0_set_prt(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %land.lhs.true, label %if.else.critedge

land.lhs.true:                                    ; preds = %entry
  %prt_warning = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 24
  %0 = ptrtoint ptr %prt_warning to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prt_warning, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.end, label %land.lhs.true.if.then25_crit_edge

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1) #12
  %4 = ptrtoint ptr %prt_warning to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %prt_warning, align 8
  br label %if.then25

if.then25:                                        ; preds = %do.end, %land.lhs.true.if.then25_crit_edge
  %call.c65 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1332, i32 noundef 0) #9
  %or23.c70 = or i32 %call.c65, 15
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1332, i32 noundef %or23.c70, i32 noundef 0) #9
  %max_pfn = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %5 = ptrtoint ptr %max_pfn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %max_pfn, align 8
  %7 = trunc i64 %6 to i32
  %conv26 = add i32 %7, -512
  br label %if.end27

if.else.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.c71 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1332, i32 noundef 0) #9
  %and.c72 = and i32 %call.c71, -16
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1332, i32 noundef %and.c72, i32 noundef 0) #9
  br label %if.end27

if.end27:                                         ; preds = %if.else.critedge, %if.then25
  %.sink79 = phi i32 [ 268435455, %if.else.critedge ], [ 512, %if.then25 ]
  %.sink75 = phi i32 [ 0, %if.else.critedge ], [ %conv26, %if.then25 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1324, i32 noundef %.sink79, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1325, i32 noundef %.sink79, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1326, i32 noundef %.sink79, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1327, i32 noundef %.sink79, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1328, i32 noundef %.sink75, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1329, i32 noundef %.sink75, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1330, i32 noundef %.sink75, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1331, i32 noundef %.sink75, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v6_0_get_vm_pde(ptr nocapture noundef readnone %adev, i32 noundef %level, ptr nocapture noundef readonly %addr, ptr nocapture noundef readnone %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %addr, align 8
  %and = and i64 %1, -1099511623681
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !130

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #9, !srcloc !131
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gmc_v6_0_get_vm_pte(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %mapping, ptr nocapture noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %and1 = and i64 %1, -2251799813685265
  store i64 %and1, ptr %flags, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_get_vbios_fb_size(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 204, i32 noundef 0) #9
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 7005, i32 noundef 0) #9
  %and4 = lshr i32 %call1, 16
  %shr5 = and i32 %and4, 16383
  %and2 = shl i32 %call1, 2
  %mul = and i32 %and2, 65532
  %mul6 = mul nuw nsw i32 %mul, %shr5
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %size.0 = phi i32 [ %mul6, %if.else ], [ 9437184, %entry.if.end_crit_edge ]
  ret i32 %size.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_vm_fault_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1284, i32 noundef 0) #9
  %and = and i32 %call, -299593
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1284, i32 noundef %and, i32 noundef 0) #9
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1285, i32 noundef 0) #9
  %and3 = and i32 %call1, -299593
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1284, i32 noundef 0) #9
  %or = or i32 %call5, 299592
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1284, i32 noundef %or, i32 noundef 0) #9
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1285, i32 noundef 0) #9
  %or7 = or i32 %call6, 299592
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb
  %or7.sink = phi i32 [ %or7, %sw.bb4 ], [ %and3, %sw.bb ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1285, i32 noundef %or7.sink, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v6_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  %block.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1343, i32 noundef 0) #9
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1335, i32 noundef 0) #9
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1293, i32 noundef 0) #9
  %or = or i32 %call3, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1293, i32 noundef %or, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %0 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1285, i32 noundef 0) #9
  %and.i = and i32 %call.i, -599185
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1285, i32 noundef %and.i, i32 noundef 0) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.gmc_v6_0_process_interrupt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %do.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adev, align 8
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %3 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %src_id, align 8
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %5 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %6) #12
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %call) #12
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.12, i32 noundef %call2) #12
  %and.i38 = lshr i32 %call2, 25
  %shr.i = and i32 %and.i38, 15
  %and1.i = and i32 %call2, 255
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %block.i) #9
  %and15.i = lshr i32 %call2, 12
  %shr16.i = and i32 %and15.i, 255
  %11 = call ptr @memset(ptr %block.i, i32 0, i32 5)
  %12 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adev, align 8
  %14 = and i32 %call2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.17, ptr @.str.16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.14, i32 noundef %and1.i, i32 noundef %shr.i, i32 noundef %call, ptr noundef nonnull %cond.i, ptr noundef nonnull %block.i, i32 noundef 0, i32 noundef %shr16.i) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %block.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_adjust_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_need_swiotlb(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_get_vbios_allocations(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gmc_v6_0_gart_init(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gart = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %0 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gart, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @amdgpu_gart_init(ptr noundef %adev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %num_gpu_pages = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 2
  %4 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_gpu_pages, align 8
  %mul = shl i32 %5, 3
  %table_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 4
  %6 = ptrtoint ptr %table_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %table_size, align 8
  %gart_pte_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 6
  %7 = ptrtoint ptr %gart_pte_flags to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %gart_pte_flags, align 8
  %call7 = tail call i32 @amdgpu_gart_table_vram_alloc(ptr noundef %adev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call7, %if.end3 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_manager_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_resize_fb_bar(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_gart_location(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_table_vram_alloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gem_force_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_manager_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gart_table_vram_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_mc_hdr(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gtt_mgr_recover(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vmid_reset_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 49, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 50, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware346, !7, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 51, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware347, !9, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 52, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware348, !11, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 53, i32 1}
!12 = !{ptr @gmc_v6_0_ip_block, !13, !"gmc_v6_0_ip_block", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 1152, i32 38}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 1111, i32 10}
!16 = !{ptr @gmc_v6_0_ip_funcs, !17, !"gmc_v6_0_ip_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 1110, i32 34}
!18 = !{ptr @gmc_v6_0_gmc_funcs, !19, !"gmc_v6_0_gmc_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 1127, i32 38}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 425, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @gmc_v6_0_set_prt._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @gmc_v6_0_set_prt._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @gmc_v6_0_irq_funcs, !29, !"gmc_v6_0_irq_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 1136, i32 42}
!30 = !{ptr @__func__.gmc_v6_0_process_interrupt, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 1085, i32 6}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 1086, i32 3}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @gmc_v6_0_process_interrupt._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @gmc_v6_0_process_interrupt._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 1088, i32 3}
!39 = !{ptr @gmc_v6_0_process_interrupt._entry.8, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @gmc_v6_0_process_interrupt._entry_ptr.10, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 1090, i32 3}
!43 = !{ptr @gmc_v6_0_process_interrupt._entry.11, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @gmc_v6_0_process_interrupt._entry_ptr.13, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 626, i32 2}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @gmc_v6_0_vm_decode_fault._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @gmc_v6_0_vm_decode_fault._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 845, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @gmc_v6_0_sw_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @gmc_v6_0_sw_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 852, i32 3}
!59 = !{ptr @gmc_v6_0_sw_init._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @gmc_v6_0_sw_init._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 105, i32 2}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 109, i32 15}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 112, i32 15}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 115, i32 15}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 118, i32 15}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 121, i32 15}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 131, i32 38}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 133, i32 38}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 142, i32 3}
!79 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @gmc_v6_0_init_microcode._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @gmc_v6_0_init_microcode._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 570, i32 3}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @gmc_v6_0_gart_init._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @gmc_v6_0_gart_init._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 916, i32 4}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @gmc_v6_0_hw_init._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @gmc_v6_0_hw_init._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 239, i32 3}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @gmc_v6_0_mc_program._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @gmc_v6_0_mc_program._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @gmc_v6_0_mc_program._entry.39, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 267, i32 3}
!99 = !{ptr @gmc_v6_0_mc_program._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 476, i32 3}
!102 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @gmc_v6_0_gart_enable._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @gmc_v6_0_gart_enable._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 558, i32 2}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @gmc_v6_0_gart_enable._entry.43, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @gmc_v6_0_gart_enable._entry_ptr.46, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 1007, i32 4}
!112 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @gmc_v6_0_soft_reset._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @gmc_v6_0_soft_reset._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c", i32 1013, i32 3}
!117 = !{ptr @gmc_v6_0_soft_reset._entry.49, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @gmc_v6_0_soft_reset._entry_ptr.51, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 2161032835, i64 2161033337, i64 2161032872, i64 2161032928, i64 2161032962, i64 2161032986, i64 2161033027, i64 2161033048, i64 2161033076, i64 2161033110}
!129 = !{i8 0, i8 2}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2161044586, i64 2161045088, i64 2161044623, i64 2161044679, i64 2161044713, i64 2161044737, i64 2161044778, i64 2161044799, i64 2161044827, i64 2161044861}
