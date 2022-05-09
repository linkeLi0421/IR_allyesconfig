; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
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
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.92, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.92 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }

@uvd_v6_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @uvd_v6_0_early_init, ptr null, ptr @uvd_v6_0_sw_init, ptr @uvd_v6_0_sw_fini, ptr null, ptr @uvd_v6_0_hw_init, ptr @uvd_v6_0_hw_fini, ptr null, ptr @uvd_v6_0_suspend, ptr @uvd_v6_0_resume, ptr @uvd_v6_0_is_idle, ptr @uvd_v6_0_wait_for_idle, ptr @uvd_v6_0_check_soft_reset, ptr @uvd_v6_0_pre_soft_reset, ptr @uvd_v6_0_soft_reset, ptr @uvd_v6_0_post_soft_reset, ptr @uvd_v6_0_set_clockgating_state, ptr @uvd_v6_0_set_powergating_state, ptr @uvd_v6_0_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvd_v6_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 8, i32 6, i32 0, i32 0, ptr @uvd_v6_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@uvd_v6_2_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 8, i32 6, i32 2, i32 0, ptr @uvd_v6_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@uvd_v6_3_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 8, i32 6, i32 3, i32 0, ptr @uvd_v6_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uvd_v6_0\00", [23 x i8] zeroinitializer }, align 32
@uvd_v6_0_ring_vm_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 3, i32 15, i32 0, i8 0, i8 1, i32 0, i32 0, ptr @uvd_v6_0_ring_get_rptr, ptr @uvd_v6_0_ring_get_wptr, ptr @uvd_v6_0_ring_set_wptr, ptr null, ptr null, i32 70, i32 8, ptr @uvd_v6_0_ring_emit_ib, ptr @uvd_v6_0_ring_emit_fence, ptr @uvd_v6_0_ring_emit_pipeline_sync, ptr @uvd_v6_0_ring_emit_vm_flush, ptr @uvd_v6_0_ring_emit_hdp_flush, ptr null, ptr @uvd_v6_0_ring_test_ring, ptr @amdgpu_uvd_ring_test_ib, ptr @uvd_v6_0_ring_insert_nop, ptr null, ptr null, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_uvd_ring_begin_use, ptr @amdgpu_uvd_ring_end_use, ptr null, ptr null, ptr null, ptr @uvd_v6_0_ring_emit_wreg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvd_v6_0_set_ring_funcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[drm] UVD is enabled in VM mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uvd_v6_0_set_ring_funcs\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c\00", [58 x i8] zeroinitializer }, align 32
@uvd_v6_0_set_ring_funcs._entry_ptr = internal global ptr @uvd_v6_0_set_ring_funcs._entry, section ".printk_index", align 4
@uvd_v6_0_ring_phys_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 3, i32 15, i32 0, i8 0, i8 1, i32 0, i32 0, ptr @uvd_v6_0_ring_get_rptr, ptr @uvd_v6_0_ring_get_wptr, ptr @uvd_v6_0_ring_set_wptr, ptr @amdgpu_uvd_ring_parse_cs, ptr null, i32 30, i32 8, ptr @uvd_v6_0_ring_emit_ib, ptr @uvd_v6_0_ring_emit_fence, ptr null, ptr null, ptr @uvd_v6_0_ring_emit_hdp_flush, ptr null, ptr @uvd_v6_0_ring_test_ring, ptr @amdgpu_uvd_ring_test_ib, ptr @uvd_v6_0_ring_insert_nop, ptr null, ptr null, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_uvd_ring_begin_use, ptr @amdgpu_uvd_ring_end_use, ptr null, ptr null, ptr null, ptr @uvd_v6_0_ring_emit_wreg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvd_v6_0_set_ring_funcs._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016[drm] UVD is enabled in physical mode\0A\00", [55 x i8] zeroinitializer }, align 32
@uvd_v6_0_set_ring_funcs._entry_ptr.6 = internal global ptr @uvd_v6_0_set_ring_funcs._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@uvd_v6_0_enc_ring_vm_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 5, i32 63, i32 0, i8 0, i8 1, i32 0, i32 0, ptr @uvd_v6_0_enc_ring_get_rptr, ptr @uvd_v6_0_enc_ring_get_wptr, ptr @uvd_v6_0_enc_ring_set_wptr, ptr null, ptr null, i32 20, i32 5, ptr @uvd_v6_0_enc_ring_emit_ib, ptr @uvd_v6_0_enc_ring_emit_fence, ptr @uvd_v6_0_enc_ring_emit_pipeline_sync, ptr @uvd_v6_0_enc_ring_emit_vm_flush, ptr null, ptr null, ptr @uvd_v6_0_enc_ring_test_ring, ptr @uvd_v6_0_enc_ring_test_ib, ptr @amdgpu_ring_insert_nop, ptr null, ptr @uvd_v6_0_enc_ring_insert_end, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_uvd_ring_begin_use, ptr @amdgpu_uvd_ring_end_use, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvd_v6_0_set_enc_ring_funcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] UVD ENC is enabled in VM mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"uvd_v6_0_set_enc_ring_funcs\00", [36 x i8] zeroinitializer }, align 32
@uvd_v6_0_set_enc_ring_funcs._entry_ptr = internal global ptr @uvd_v6_0_set_enc_ring_funcs._entry, section ".printk_index", align 4
@uvd_v6_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @uvd_v6_0_set_interrupt_state, ptr @uvd_v6_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IH: UVD TRAP\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled interrupt: %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@uvd_v6_0_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016[drm] UVD ENC is disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uvd_v6_0_sw_init\00", [47 x i8] zeroinitializer }, align 32
@uvd_v6_0_sw_init._entry_ptr = internal global ptr @uvd_v6_0_sw_init._entry, section ".printk_index", align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uvd_enc%d\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: ring failed to lock UVD ring (%d).\0A\00", [52 x i8] zeroinitializer }, align 32
@uvd_v6_0_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016[drm] UVD and UVD ENC initialized successfully.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uvd_v6_0_hw_init\00", [47 x i8] zeroinitializer }, align 32
@uvd_v6_0_hw_init._entry_ptr = internal global ptr @uvd_v6_0_hw_init._entry, section ".printk_index", align 4
@uvd_v6_0_hw_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] UVD initialized successfully.\0A\00", [57 x i8] zeroinitializer }, align 32
@uvd_v6_0_hw_init._entry_ptr.21 = internal global ptr @uvd_v6_0_hw_init._entry.19, section ".printk_index", align 4
@uvd_v6_0_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1207, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: SRBM_SOFT_RESET=0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvd_v6_0_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvd_v6_0_soft_reset._entry_ptr = internal global ptr @uvd_v6_0_soft_reset._entry, section ".printk_index", align 4
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UVD not responding, trying to reset the VCPU!!!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UVD not responding, giving up!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@uvd_v6_0_get_clockgating_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 1510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016[drm] Cannot get clockgating state when UVD is powergated.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uvd_v6_0_get_clockgating_state\00", [33 x i8] zeroinitializer }, align 32
@uvd_v6_0_get_clockgating_state._entry_ptr = internal global ptr @uvd_v6_0_get_clockgating_state._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 119, i64 120, i64 124]
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"uvd_v6_0_ip_funcs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1523, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"uvd_v6_0_ip_block\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1662, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"uvd_v6_2_ip_block\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1671, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"uvd_v6_3_ip_block\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1680, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1524, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"uvd_v6_0_ring_vm_funcs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1570, i32 39 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1630, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [25 x i8] c"uvd_v6_0_ring_phys_funcs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1544, i32 39 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1633, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 314, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [27 x i8] c"uvd_v6_0_enc_ring_vm_funcs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1598, i32 39 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1644, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"uvd_v6_0_irq_funcs\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1647, i32 42 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1250, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1271, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 409, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 426, i32 24 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 481, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 518, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 520, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1207, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 811, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 820, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1510, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @uvd_v6_0_get_clockgating_state._entry, ptr @uvd_v6_0_get_clockgating_state._entry_ptr, ptr @uvd_v6_0_hw_init._entry, ptr @uvd_v6_0_hw_init._entry.19, ptr @uvd_v6_0_hw_init._entry_ptr, ptr @uvd_v6_0_hw_init._entry_ptr.21, ptr @uvd_v6_0_set_enc_ring_funcs._entry, ptr @uvd_v6_0_set_enc_ring_funcs._entry_ptr, ptr @uvd_v6_0_set_ring_funcs._entry, ptr @uvd_v6_0_set_ring_funcs._entry.4, ptr @uvd_v6_0_set_ring_funcs._entry_ptr, ptr @uvd_v6_0_set_ring_funcs._entry_ptr.6, ptr @uvd_v6_0_soft_reset._entry, ptr @uvd_v6_0_soft_reset._entry_ptr, ptr @uvd_v6_0_sw_init._entry, ptr @uvd_v6_0_sw_init._entry_ptr, ptr @uvd_v6_0_ip_funcs, ptr @uvd_v6_0_ip_block, ptr @uvd_v6_2_ip_block, ptr @uvd_v6_3_ip_block, ptr @.str, ptr @uvd_v6_0_ring_vm_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @uvd_v6_0_ring_phys_funcs, ptr @.str.5, ptr @.str.7, ptr @uvd_v6_0_enc_ring_vm_funcs, ptr @.str.8, ptr @.str.9, ptr @uvd_v6_0_irq_funcs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_2_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_3_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_ring_vm_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_set_ring_funcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_ring_phys_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_set_ring_funcs._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_enc_ring_vm_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_set_enc_ring_funcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_hw_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v6_0_get_clockgating_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_uvd_inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 4
  %0 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %num_uvd_inst, align 8
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %3 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smc_rreg, align 4
  %call = tail call i32 %4(ptr noundef %handle, i32 noundef -1072955352) #8
  %and1 = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %5 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %cmp.i = icmp ugt i32 %6, 14
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 1
  %uvd_v6_0_ring_vm_funcs.uvd_v6_0_ring_phys_funcs.i = select i1 %cmp.i, ptr @uvd_v6_0_ring_vm_funcs, ptr @uvd_v6_0_ring_phys_funcs
  %.str.1..str.5.i = select i1 %cmp.i, ptr @.str.1, ptr @.str.5
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %uvd_v6_0_ring_vm_funcs.uvd_v6_0_ring_phys_funcs.i, ptr %funcs.i, align 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.1..str.5.i) #11
  %8 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_type.i, align 8
  %10 = add i32 %9, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %uvd_v6_0_enc_support.exit, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

uvd_v6_0_enc_support.exit:                        ; preds = %if.end
  %fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 1
  %12 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_version.i, align 4
  %14 = add i32 %13, -25300992
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25300991, i32 %14)
  %15 = icmp ult i32 %14, -25300991
  br i1 %15, label %if.then4, label %uvd_v6_0_enc_support.exit.if.end6_crit_edge

uvd_v6_0_enc_support.exit.if.end6_crit_edge:      ; preds = %uvd_v6_0_enc_support.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %uvd_v6_0_enc_support.exit
  %num_enc_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  %16 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %num_enc_rings, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then4 ]
  %funcs.i16 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 5, i32 %i.06.i, i32 1
  %17 = ptrtoint ptr %funcs.i16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @uvd_v6_0_enc_ring_vm_funcs, ptr %funcs.i16, align 4
  %inc.i = add nuw i32 %i.06.i, 1
  %18 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_enc_rings, align 4
  %cmp.i17 = icmp ult i32 %inc.i, %19
  br i1 %cmp.i17, label %for.body.i.for.body.i_crit_edge, label %uvd_v6_0_set_enc_ring_funcs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

uvd_v6_0_set_enc_ring_funcs.exit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %if.end6

if.end6:                                          ; preds = %uvd_v6_0_set_enc_ring_funcs.exit, %uvd_v6_0_enc_support.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %20 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %asic_type.i, align 8
  %22 = add i32 %21, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %uvd_v6_0_enc_support.exit.i, label %if.end6.uvd_v6_0_set_irq_funcs.exit_crit_edge

if.end6.uvd_v6_0_set_irq_funcs.exit_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %uvd_v6_0_set_irq_funcs.exit

uvd_v6_0_enc_support.exit.i:                      ; preds = %if.end6
  %fw_version.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 1
  %24 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fw_version.i.i, align 4
  %26 = add i32 %25, -25300992
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25300991, i32 %26)
  %27 = icmp ult i32 %26, -25300991
  br i1 %27, label %if.then.i, label %uvd_v6_0_enc_support.exit.i.uvd_v6_0_set_irq_funcs.exit_crit_edge

uvd_v6_0_enc_support.exit.i.uvd_v6_0_set_irq_funcs.exit_crit_edge: ; preds = %uvd_v6_0_enc_support.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uvd_v6_0_set_irq_funcs.exit

if.then.i:                                        ; preds = %uvd_v6_0_enc_support.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %num_enc_rings.i18 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  %28 = ptrtoint ptr %num_enc_rings.i18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_enc_rings.i18, align 4
  %add.i = add i32 %29, 1
  br label %uvd_v6_0_set_irq_funcs.exit

uvd_v6_0_set_irq_funcs.exit:                      ; preds = %if.then.i, %uvd_v6_0_enc_support.exit.i.uvd_v6_0_set_irq_funcs.exit_crit_edge, %if.end6.uvd_v6_0_set_irq_funcs.exit_crit_edge
  %.sink.i = phi i32 [ %add.i, %if.then.i ], [ 1, %if.end6.uvd_v6_0_set_irq_funcs.exit_crit_edge ], [ 1, %uvd_v6_0_enc_support.exit.i.uvd_v6_0_set_irq_funcs.exit_crit_edge ]
  %irq5.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 6
  %30 = ptrtoint ptr %irq5.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink.i, ptr %irq5.i, align 8
  %funcs.i19 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 6, i32 2
  %31 = ptrtoint ptr %funcs.i19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @uvd_v6_0_irq_funcs, ptr %funcs.i19, align 8
  br label %cleanup

cleanup:                                          ; preds = %uvd_v6_0_set_irq_funcs.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %uvd_v6_0_set_irq_funcs.exit ], [ -2, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 6
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 124, ptr noundef %irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  %2 = add i32 %1, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %uvd_v6_0_enc_support.exit, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

uvd_v6_0_enc_support.exit:                        ; preds = %if.end
  %fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 1
  %4 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_version.i, align 4
  %6 = add i32 %5, -25300992
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25300991, i32 %6)
  %7 = icmp ult i32 %6, -25300991
  br i1 %7, label %for.cond.preheader, label %uvd_v6_0_enc_support.exit.if.end12_crit_edge

uvd_v6_0_enc_support.exit.if.end12_crit_edge:     ; preds = %uvd_v6_0_enc_support.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.cond.preheader:                               ; preds = %uvd_v6_0_enc_support.exit
  %num_enc_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  %8 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp141.not = icmp eq i32 %9, 0
  br i1 %cmp141.not, label %for.cond.preheader.if.end12_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0142, 1
  %10 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_enc_rings, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.if.end12_crit_edge

for.cond.if.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0142 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %i.0142, 119
  %call8 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef %add, ptr noundef %irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %for.cond.if.end12_crit_edge, %for.cond.preheader.if.end12_crit_edge, %uvd_v6_0_enc_support.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call13 = tail call i32 @amdgpu_uvd_sw_init(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asic_type.i, align 8
  %14 = add i32 %13, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %land.rhs.i134, label %if.end16.for.cond19.preheader_crit_edge

if.end16.for.cond19.preheader_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond19.preheader

land.rhs.i134:                                    ; preds = %if.end16
  %fw_version.i133 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 1
  %16 = ptrtoint ptr %fw_version.i133 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_version.i133, align 4
  %18 = add i32 %17, -25300992
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25300991, i32 %18)
  %19 = icmp ult i32 %18, -25300991
  br i1 %19, label %land.rhs.i134.if.end37_crit_edge, label %land.rhs.i134.for.cond19.preheader_crit_edge

land.rhs.i134.for.cond19.preheader_crit_edge:     ; preds = %land.rhs.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond19.preheader

land.rhs.i134.if.end37_crit_edge:                 ; preds = %land.rhs.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.cond19.preheader:                             ; preds = %land.rhs.i134.for.cond19.preheader_crit_edge, %if.end16.for.cond19.preheader_crit_edge
  %num_enc_rings21 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  %20 = ptrtoint ptr %num_enc_rings21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_enc_rings21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp22143.not = icmp eq i32 %21, 0
  br i1 %cmp22143.not, label %for.cond19.preheader.for.end29_crit_edge, label %for.cond19.preheader.for.body23_crit_edge

for.cond19.preheader.for.body23_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body23

for.cond19.preheader.for.end29_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.cond19.preheader.for.body23_crit_edge
  %i.1144 = phi i32 [ %inc28, %for.body23.for.body23_crit_edge ], [ 0, %for.cond19.preheader.for.body23_crit_edge ]
  %funcs = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 5, i32 %i.1144, i32 1
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %funcs, align 4
  %inc28 = add nuw i32 %i.1144, 1
  %23 = ptrtoint ptr %num_enc_rings21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_enc_rings21, align 4
  %cmp22 = icmp ult i32 %inc28, %24
  br i1 %cmp22, label %for.body23.for.body23_crit_edge, label %for.body23.for.end29_crit_edge

for.body23.for.end29_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.end29:                                        ; preds = %for.body23.for.end29_crit_edge, %for.cond19.preheader.for.end29_crit_edge
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %irq, align 8
  %26 = ptrtoint ptr %num_enc_rings21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %num_enc_rings21, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %if.end37

if.end37:                                         ; preds = %for.end29, %land.rhs.i134.if.end37_crit_edge
  %ring41 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4
  %name = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 29
  %27 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 1970693120, ptr %name, align 1
  %call48 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %ring41, i32 noundef 512, ptr noundef %irq, i32 noundef 0, i32 noundef 1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end37
  %call52 = tail call i32 @amdgpu_uvd_resume(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %28 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asic_type.i, align 8
  %30 = add i32 %29, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %uvd_v6_0_enc_support.exit139, label %if.end55.if.end82_crit_edge

if.end55.if.end82_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

uvd_v6_0_enc_support.exit139:                     ; preds = %if.end55
  %fw_version.i137 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 1
  %32 = ptrtoint ptr %fw_version.i137 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_version.i137, align 4
  %34 = add i32 %33, -25300992
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25300991, i32 %34)
  %35 = icmp ult i32 %34, -25300991
  br i1 %35, label %for.cond58.preheader, label %uvd_v6_0_enc_support.exit139.if.end82_crit_edge

uvd_v6_0_enc_support.exit139.if.end82_crit_edge:  ; preds = %uvd_v6_0_enc_support.exit139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

for.cond58.preheader:                             ; preds = %uvd_v6_0_enc_support.exit139
  %num_enc_rings60 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  %36 = ptrtoint ptr %num_enc_rings60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_enc_rings60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp61145.not = icmp eq i32 %37, 0
  br i1 %cmp61145.not, label %for.cond58.preheader.if.end82_crit_edge, label %for.cond58.preheader.for.body62_crit_edge

for.cond58.preheader.for.body62_crit_edge:        ; preds = %for.cond58.preheader
  br label %for.body62

for.cond58.preheader.if.end82_crit_edge:          ; preds = %for.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

for.cond58:                                       ; preds = %for.body62
  %inc80 = add nuw i32 %i.2146, 1
  %38 = ptrtoint ptr %num_enc_rings60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_enc_rings60, align 4
  %cmp61 = icmp ult i32 %inc80, %39
  br i1 %cmp61, label %for.cond58.for.body62_crit_edge, label %for.cond58.if.end82_crit_edge

for.cond58.if.end82_crit_edge:                    ; preds = %for.cond58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

for.cond58.for.body62_crit_edge:                  ; preds = %for.cond58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62

for.body62:                                       ; preds = %for.cond58.for.body62_crit_edge, %for.cond58.preheader.for.body62_crit_edge
  %i.2146 = phi i32 [ %inc80, %for.cond58.for.body62_crit_edge ], [ 0, %for.cond58.preheader.for.body62_crit_edge ]
  %arrayidx67 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 5, i32 %i.2146
  %name68 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 5, i32 %i.2146, i32 29
  %call70 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name68, ptr noundef nonnull @.str.15, i32 noundef %i.2146)
  %call75 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %arrayidx67, i32 noundef 512, ptr noundef %irq, i32 noundef 0, i32 noundef 1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %for.cond58, label %for.body62.cleanup_crit_edge

for.body62.cleanup_crit_edge:                     ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end82:                                         ; preds = %for.cond58.if.end82_crit_edge, %for.cond58.preheader.if.end82_crit_edge, %uvd_v6_0_enc_support.exit139.if.end82_crit_edge, %if.end55.if.end82_crit_edge
  %call83 = tail call i32 @amdgpu_uvd_entity_init(ptr noundef %handle) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %for.body62.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call83, %if.end82 ], [ %call, %entry.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call48, %if.end37.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ %call75, %for.body62.cleanup_crit_edge ], [ %call8, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_uvd_suspend(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  %2 = add i32 %1, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %uvd_v6_0_enc_support.exit, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

uvd_v6_0_enc_support.exit:                        ; preds = %if.end
  %fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 1
  %4 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_version.i, align 4
  %6 = add i32 %5, -25300992
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25300991, i32 %6)
  %7 = icmp ult i32 %6, -25300991
  br i1 %7, label %for.cond.preheader, label %uvd_v6_0_enc_support.exit.if.end4_crit_edge

uvd_v6_0_enc_support.exit.if.end4_crit_edge:      ; preds = %uvd_v6_0_enc_support.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.cond.preheader:                               ; preds = %uvd_v6_0_enc_support.exit
  %num_enc_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  %8 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15.not = icmp eq i32 %9, 0
  br i1 %cmp15.not, label %for.cond.preheader.if.end4_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end4_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 5, i32 %i.016
  tail call void @amdgpu_ring_fini(ptr noundef %arrayidx) #8
  %inc = add nuw i32 %i.016, 1
  %10 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_enc_rings, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end4_crit_edge

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end4:                                          ; preds = %for.body.if.end4_crit_edge, %for.cond.preheader.if.end4_crit_edge, %uvd_v6_0_enc_support.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @amdgpu_uvd_sw_fini(ptr noundef %handle) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ring1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %0 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs, align 4
  %set_uvd_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_uvd_clocks, align 4
  %call = tail call i32 %3(ptr noundef %handle, i32 noundef 10000, i32 noundef 10000) #8
  %call2 = tail call i32 @uvd_v6_0_set_clockgating_state(ptr noundef %handle, i32 noundef 1)
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %4 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %uvd_ctx_rreg5.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 46
  %6 = ptrtoint ptr %uvd_ctx_rreg5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uvd_ctx_rreg5.i, align 4
  %call6.i = tail call i32 %7(ptr noundef %handle, i32 noundef 192) #8
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %or.i = or i32 %call6.i, 4095
  %uvd_ctx_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 47
  %8 = ptrtoint ptr %uvd_ctx_wreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uvd_ctx_wreg.i, align 8
  tail call void %9(ptr noundef %handle, i32 noundef 192, i32 noundef %or.i) #8
  %call2.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15660, i32 noundef 0) #8
  %or3.i = or i32 %call2.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %or3.i)
  %cmp.not.i = icmp eq i32 %call2.i, %or3.i
  br i1 %cmp.not.i, label %if.then.i.uvd_v6_0_enable_mgcg.exit_crit_edge, label %if.then.i.if.end14.sink.split.i_crit_edge

if.then.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split.i

if.then.i.uvd_v6_0_enable_mgcg.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uvd_v6_0_enable_mgcg.exit

if.else.i:                                        ; preds = %entry
  %and7.i = and i32 %call6.i, -4096
  %uvd_ctx_wreg8.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 47
  %10 = ptrtoint ptr %uvd_ctx_wreg8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uvd_ctx_wreg8.i, align 8
  tail call void %11(ptr noundef %handle, i32 noundef 192, i32 noundef %and7.i) #8
  %call9.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15660, i32 noundef 0) #8
  %and10.i = and i32 %call9.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %and10.i)
  %cmp11.not.i = icmp eq i32 %call9.i, %and10.i
  br i1 %cmp11.not.i, label %if.else.i.uvd_v6_0_enable_mgcg.exit_crit_edge, label %if.else.i.if.end14.sink.split.i_crit_edge

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split.i

if.else.i.uvd_v6_0_enable_mgcg.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uvd_v6_0_enable_mgcg.exit

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.then.i.if.end14.sink.split.i_crit_edge
  %and10.sink.i = phi i32 [ %or3.i, %if.then.i.if.end14.sink.split.i_crit_edge ], [ %and10.i, %if.else.i.if.end14.sink.split.i_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15660, i32 noundef %and10.sink.i, i32 noundef 0) #8
  br label %uvd_v6_0_enable_mgcg.exit

uvd_v6_0_enable_mgcg.exit:                        ; preds = %if.end14.sink.split.i, %if.else.i.uvd_v6_0_enable_mgcg.exit_crit_edge, %if.then.i.uvd_v6_0_enable_mgcg.exit_crit_edge
  %call3 = tail call i32 @amdgpu_ring_test_helper(ptr noundef %ring1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %uvd_v6_0_enable_mgcg.exit.if.end31_crit_edge

uvd_v6_0_enable_mgcg.exit.if.end31_crit_edge:     ; preds = %uvd_v6_0_enable_mgcg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end:                                           ; preds = %uvd_v6_0_enable_mgcg.exit
  %call4 = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring1, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %call4) #8
  br label %if.end31

if.end7:                                          ; preds = %if.end
  %count_dw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 11
  %12 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp slt i32 %13, 1
  br i1 %cmp.i, label %if.then.i62, label %if.end7.amdgpu_ring_write.exit_crit_edge

if.end7.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i62:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i62, %if.end7.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 5
  %14 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 7
  %16 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %17, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 14
  %18 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_mask.i, align 8
  %20 = trunc i64 %17 to i32
  %idxprom.i = and i32 %19, %20
  %arrayidx.i = getelementptr i32, ptr %15, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 15794, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 13
  %22 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ptr_mask.i, align 8
  %24 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %24, %23
  store i64 %and3.i, ptr %wptr.i, align 8
  %25 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i64 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i64, label %if.then.i65, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit75_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit75_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit75

if.then.i65:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit75

amdgpu_ring_write.exit75:                         ; preds = %if.then.i65, %amdgpu_ring_write.exit.amdgpu_ring_write.exit75_crit_edge
  %27 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring1.i, align 4
  %29 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %wptr.i, align 8
  %inc.i68 = add i64 %30, 1
  store i64 %inc.i68, ptr %wptr.i, align 8
  %31 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_mask.i, align 8
  %33 = trunc i64 %30 to i32
  %idxprom.i70 = and i32 %32, %33
  %arrayidx.i71 = getelementptr i32, ptr %28, i32 %idxprom.i70
  %34 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 1048575, ptr %arrayidx.i71, align 4
  %35 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ptr_mask.i, align 8
  %37 = load i64, ptr %wptr.i, align 8
  %and3.i73 = and i64 %37, %36
  store i64 %and3.i73, ptr %wptr.i, align 8
  %38 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count_dw.i, align 8
  %dec.i74 = add i32 %39, -1
  store i32 %dec.i74, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i74)
  %cmp.i77 = icmp slt i32 %dec.i74, 1
  br i1 %cmp.i77, label %if.then.i78, label %amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge

amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge: ; preds = %amdgpu_ring_write.exit75
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit88

if.then.i78:                                      ; preds = %amdgpu_ring_write.exit75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit88

amdgpu_ring_write.exit88:                         ; preds = %if.then.i78, %amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge
  %40 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ring1.i, align 4
  %42 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %wptr.i, align 8
  %inc.i81 = add i64 %43, 1
  store i64 %inc.i81, ptr %wptr.i, align 8
  %44 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf_mask.i, align 8
  %46 = trunc i64 %43 to i32
  %idxprom.i83 = and i32 %45, %46
  %arrayidx.i84 = getelementptr i32, ptr %41, i32 %idxprom.i83
  %47 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 15793, ptr %arrayidx.i84, align 4
  %48 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ptr_mask.i, align 8
  %50 = load i64, ptr %wptr.i, align 8
  %and3.i86 = and i64 %50, %49
  store i64 %and3.i86, ptr %wptr.i, align 8
  %51 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count_dw.i, align 8
  %dec.i87 = add i32 %52, -1
  store i32 %dec.i87, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i87)
  %cmp.i90 = icmp slt i32 %dec.i87, 1
  br i1 %cmp.i90, label %if.then.i91, label %amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge

amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge: ; preds = %amdgpu_ring_write.exit88
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit101

if.then.i91:                                      ; preds = %amdgpu_ring_write.exit88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit101

amdgpu_ring_write.exit101:                        ; preds = %if.then.i91, %amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge
  %53 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring1.i, align 4
  %55 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %wptr.i, align 8
  %inc.i94 = add i64 %56, 1
  store i64 %inc.i94, ptr %wptr.i, align 8
  %57 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_mask.i, align 8
  %59 = trunc i64 %56 to i32
  %idxprom.i96 = and i32 %58, %59
  %arrayidx.i97 = getelementptr i32, ptr %54, i32 %idxprom.i96
  %60 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 1048575, ptr %arrayidx.i97, align 4
  %61 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ptr_mask.i, align 8
  %63 = load i64, ptr %wptr.i, align 8
  %and3.i99 = and i64 %63, %62
  store i64 %and3.i99, ptr %wptr.i, align 8
  %64 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count_dw.i, align 8
  %dec.i100 = add i32 %65, -1
  store i32 %dec.i100, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i100)
  %cmp.i103 = icmp slt i32 %dec.i100, 1
  br i1 %cmp.i103, label %if.then.i104, label %amdgpu_ring_write.exit101.amdgpu_ring_write.exit114_crit_edge

amdgpu_ring_write.exit101.amdgpu_ring_write.exit114_crit_edge: ; preds = %amdgpu_ring_write.exit101
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit114

if.then.i104:                                     ; preds = %amdgpu_ring_write.exit101
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit114

amdgpu_ring_write.exit114:                        ; preds = %if.then.i104, %amdgpu_ring_write.exit101.amdgpu_ring_write.exit114_crit_edge
  %66 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ring1.i, align 4
  %68 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %wptr.i, align 8
  %inc.i107 = add i64 %69, 1
  store i64 %inc.i107, ptr %wptr.i, align 8
  %70 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %buf_mask.i, align 8
  %72 = trunc i64 %69 to i32
  %idxprom.i109 = and i32 %71, %72
  %arrayidx.i110 = getelementptr i32, ptr %67, i32 %idxprom.i109
  %73 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 15795, ptr %arrayidx.i110, align 4
  %74 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %ptr_mask.i, align 8
  %76 = load i64, ptr %wptr.i, align 8
  %and3.i112 = and i64 %76, %75
  store i64 %and3.i112, ptr %wptr.i, align 8
  %77 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %count_dw.i, align 8
  %dec.i113 = add i32 %78, -1
  store i32 %dec.i113, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i113)
  %cmp.i116 = icmp slt i32 %dec.i113, 1
  br i1 %cmp.i116, label %if.then.i117, label %amdgpu_ring_write.exit114.amdgpu_ring_write.exit127_crit_edge

amdgpu_ring_write.exit114.amdgpu_ring_write.exit127_crit_edge: ; preds = %amdgpu_ring_write.exit114
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit127

if.then.i117:                                     ; preds = %amdgpu_ring_write.exit114
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit127

amdgpu_ring_write.exit127:                        ; preds = %if.then.i117, %amdgpu_ring_write.exit114.amdgpu_ring_write.exit127_crit_edge
  %79 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ring1.i, align 4
  %81 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %wptr.i, align 8
  %inc.i120 = add i64 %82, 1
  store i64 %inc.i120, ptr %wptr.i, align 8
  %83 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %buf_mask.i, align 8
  %85 = trunc i64 %82 to i32
  %idxprom.i122 = and i32 %84, %85
  %arrayidx.i123 = getelementptr i32, ptr %80, i32 %idxprom.i122
  %86 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 1048575, ptr %arrayidx.i123, align 4
  %87 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %ptr_mask.i, align 8
  %89 = load i64, ptr %wptr.i, align 8
  %and3.i125 = and i64 %89, %88
  store i64 %and3.i125, ptr %wptr.i, align 8
  %90 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %count_dw.i, align 8
  %dec.i126 = add i32 %91, -1
  store i32 %dec.i126, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i126)
  %cmp.i129 = icmp slt i32 %dec.i126, 1
  br i1 %cmp.i129, label %if.then.i130, label %amdgpu_ring_write.exit127.amdgpu_ring_write.exit140_crit_edge

amdgpu_ring_write.exit127.amdgpu_ring_write.exit140_crit_edge: ; preds = %amdgpu_ring_write.exit127
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit140

if.then.i130:                                     ; preds = %amdgpu_ring_write.exit127
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit140

amdgpu_ring_write.exit140:                        ; preds = %if.then.i130, %amdgpu_ring_write.exit127.amdgpu_ring_write.exit140_crit_edge
  %92 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ring1.i, align 4
  %94 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %wptr.i, align 8
  %inc.i133 = add i64 %95, 1
  store i64 %inc.i133, ptr %wptr.i, align 8
  %96 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %buf_mask.i, align 8
  %98 = trunc i64 %95 to i32
  %idxprom.i135 = and i32 %97, %98
  %arrayidx.i136 = getelementptr i32, ptr %93, i32 %idxprom.i135
  %99 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 15792, ptr %arrayidx.i136, align 4
  %100 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %ptr_mask.i, align 8
  %102 = load i64, ptr %wptr.i, align 8
  %and3.i138 = and i64 %102, %101
  store i64 %and3.i138, ptr %wptr.i, align 8
  %103 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %count_dw.i, align 8
  %dec.i139 = add i32 %104, -1
  store i32 %dec.i139, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i139)
  %cmp.i142 = icmp slt i32 %dec.i139, 1
  br i1 %cmp.i142, label %if.then.i143, label %amdgpu_ring_write.exit140.amdgpu_ring_write.exit153_crit_edge

amdgpu_ring_write.exit140.amdgpu_ring_write.exit153_crit_edge: ; preds = %amdgpu_ring_write.exit140
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit153

if.then.i143:                                     ; preds = %amdgpu_ring_write.exit140
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit153

amdgpu_ring_write.exit153:                        ; preds = %if.then.i143, %amdgpu_ring_write.exit140.amdgpu_ring_write.exit153_crit_edge
  %105 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ring1.i, align 4
  %107 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %wptr.i, align 8
  %inc.i146 = add i64 %108, 1
  store i64 %inc.i146, ptr %wptr.i, align 8
  %109 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %buf_mask.i, align 8
  %111 = trunc i64 %108 to i32
  %idxprom.i148 = and i32 %110, %111
  %arrayidx.i149 = getelementptr i32, ptr %106, i32 %idxprom.i148
  %112 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 8, ptr %arrayidx.i149, align 4
  %113 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %ptr_mask.i, align 8
  %115 = load i64, ptr %wptr.i, align 8
  %and3.i151 = and i64 %115, %114
  store i64 %and3.i151, ptr %wptr.i, align 8
  %116 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %count_dw.i, align 8
  %dec.i152 = add i32 %117, -1
  store i32 %dec.i152, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i152)
  %cmp.i155 = icmp slt i32 %dec.i152, 1
  br i1 %cmp.i155, label %if.then.i156, label %amdgpu_ring_write.exit153.amdgpu_ring_write.exit166_crit_edge

amdgpu_ring_write.exit153.amdgpu_ring_write.exit166_crit_edge: ; preds = %amdgpu_ring_write.exit153
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit166

if.then.i156:                                     ; preds = %amdgpu_ring_write.exit153
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit166

amdgpu_ring_write.exit166:                        ; preds = %if.then.i156, %amdgpu_ring_write.exit153.amdgpu_ring_write.exit166_crit_edge
  %118 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ring1.i, align 4
  %120 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %wptr.i, align 8
  %inc.i159 = add i64 %121, 1
  store i64 %inc.i159, ptr %wptr.i, align 8
  %122 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %buf_mask.i, align 8
  %124 = trunc i64 %121 to i32
  %idxprom.i161 = and i32 %123, %124
  %arrayidx.i162 = getelementptr i32, ptr %119, i32 %idxprom.i161
  %125 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile i32 15616, ptr %arrayidx.i162, align 4
  %126 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %ptr_mask.i, align 8
  %128 = load i64, ptr %wptr.i, align 8
  %and3.i164 = and i64 %128, %127
  store i64 %and3.i164, ptr %wptr.i, align 8
  %129 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %count_dw.i, align 8
  %dec.i165 = add i32 %130, -1
  store i32 %dec.i165, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i165)
  %cmp.i168 = icmp slt i32 %dec.i165, 1
  br i1 %cmp.i168, label %if.then.i169, label %amdgpu_ring_write.exit166.amdgpu_ring_write.exit179_crit_edge

amdgpu_ring_write.exit166.amdgpu_ring_write.exit179_crit_edge: ; preds = %amdgpu_ring_write.exit166
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit179

if.then.i169:                                     ; preds = %amdgpu_ring_write.exit166
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit179

amdgpu_ring_write.exit179:                        ; preds = %if.then.i169, %amdgpu_ring_write.exit166.amdgpu_ring_write.exit179_crit_edge
  %131 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ring1.i, align 4
  %133 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %wptr.i, align 8
  %inc.i172 = add i64 %134, 1
  store i64 %inc.i172, ptr %wptr.i, align 8
  %135 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %buf_mask.i, align 8
  %137 = trunc i64 %134 to i32
  %idxprom.i174 = and i32 %136, %137
  %arrayidx.i175 = getelementptr i32, ptr %132, i32 %idxprom.i174
  %138 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile i32 3, ptr %arrayidx.i175, align 4
  %139 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %ptr_mask.i, align 8
  %141 = load i64, ptr %wptr.i, align 8
  %and3.i177 = and i64 %141, %140
  store i64 %and3.i177, ptr %wptr.i, align 8
  %142 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %count_dw.i, align 8
  %dec.i178 = add i32 %143, -1
  store i32 %dec.i178, ptr %count_dw.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring1) #8
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %144 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %asic_type.i, align 8
  %146 = add i32 %145, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %146)
  %147 = icmp ult i32 %146, 4
  br i1 %147, label %uvd_v6_0_enc_support.exit, label %amdgpu_ring_write.exit179.if.then20_crit_edge

amdgpu_ring_write.exit179.if.then20_crit_edge:    ; preds = %amdgpu_ring_write.exit179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

uvd_v6_0_enc_support.exit:                        ; preds = %amdgpu_ring_write.exit179
  %fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 1
  %148 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %fw_version.i, align 4
  %150 = add i32 %149, -25300992
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25300991, i32 %150)
  %151 = icmp ult i32 %150, -25300991
  br i1 %151, label %for.cond.preheader, label %uvd_v6_0_enc_support.exit.if.then20_crit_edge

uvd_v6_0_enc_support.exit.if.then20_crit_edge:    ; preds = %uvd_v6_0_enc_support.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

for.cond.preheader:                               ; preds = %uvd_v6_0_enc_support.exit
  %num_enc_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  %152 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp188.not = icmp eq i32 %153, 0
  br i1 %cmp188.not, label %for.cond.preheader.if.then20_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.then20_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0189, 1
  %154 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %num_enc_rings, align 4
  %cmp = icmp ult i32 %inc, %155
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.if.then20_crit_edge

for.cond.if.then20_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0189 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 5, i32 %i.0189
  %call14 = tail call i32 @amdgpu_ring_test_helper(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond, label %for.body.if.end31_crit_edge

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then20:                                        ; preds = %for.cond.if.then20_crit_edge, %for.cond.preheader.if.then20_crit_edge, %uvd_v6_0_enc_support.exit.if.then20_crit_edge, %amdgpu_ring_write.exit179.if.then20_crit_edge
  %156 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %asic_type.i, align 8
  %158 = add i32 %157, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %158)
  %159 = icmp ult i32 %158, 4
  br i1 %159, label %uvd_v6_0_enc_support.exit183, label %if.then20.do.end27_crit_edge

if.then20.do.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

uvd_v6_0_enc_support.exit183:                     ; preds = %if.then20
  %fw_version.i181 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 1
  %160 = ptrtoint ptr %fw_version.i181 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %fw_version.i181, align 4
  %162 = add i32 %161, -25300992
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25300991, i32 %162)
  %163 = icmp ult i32 %162, -25300991
  br i1 %163, label %do.end, label %uvd_v6_0_enc_support.exit183.do.end27_crit_edge

uvd_v6_0_enc_support.exit183.do.end27_crit_edge:  ; preds = %uvd_v6_0_enc_support.exit183
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

do.end:                                           ; preds = %uvd_v6_0_enc_support.exit183
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end31

do.end27:                                         ; preds = %uvd_v6_0_enc_support.exit183.do.end27_crit_edge, %if.then20.do.end27_crit_edge
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %if.end31

if.end31:                                         ; preds = %do.end27, %do.end, %for.body.if.end31_crit_edge, %if.then6, %uvd_v6_0_enable_mgcg.exit.if.end31_crit_edge
  %r.1186 = phi i32 [ 0, %do.end ], [ 0, %do.end27 ], [ %call3, %uvd_v6_0_enable_mgcg.exit.if.end31_crit_edge ], [ %call4, %if.then6 ], [ %call14, %for.body.if.end31_crit_edge ]
  ret i32 %r.1186
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #8
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15791, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @uvd_v6_0_stop(ptr noundef %handle)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_dpm_enable_uvd(ptr noundef %handle, i1 noundef zeroext false) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 4
  %set_uvd_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_uvd_clocks, align 4
  %call1 = tail call i32 %5(ptr noundef %handle, i32 noundef 0, i32 noundef 0) #8
  %call2 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %handle, i32 noundef 8, i32 noundef 0) #8
  %call3 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %handle, i32 noundef 8, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #8
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15791, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end.uvd_v6_0_hw_fini.exit_crit_edge, label %if.then.i

if.end.uvd_v6_0_hw_fini.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %uvd_v6_0_hw_fini.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @uvd_v6_0_stop(ptr noundef %handle) #8
  br label %uvd_v6_0_hw_fini.exit

uvd_v6_0_hw_fini.exit:                            ; preds = %if.then.i, %if.end.uvd_v6_0_hw_fini.exit_crit_edge
  %call8 = tail call i32 @amdgpu_uvd_suspend(ptr noundef %handle) #8
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_uvd_resume(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @uvd_v6_0_hw_init(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @uvd_v6_0_is_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #8
  %and = and i32 %call, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_wait_for_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.05, 1
  %2 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #8
  %and.i = and i32 %call.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %for.cond.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @uvd_v6_0_check_soft_reset(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #8
  %0 = and i32 %call, 524290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %lor.lhs.false4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15791, i32 noundef 0) #8
  %and6 = and i32 %call5, 253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 262144
  %not.tobool7.not = xor i1 %tobool7.not, true
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false4, %entry.cleanup_crit_edge
  %.sink = phi i32 [ 262144, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false4 ]
  %tobool9.not26 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %not.tobool7.not, %lor.lhs.false4 ]
  %srbm_soft_reset15 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 7
  %2 = ptrtoint ptr %srbm_soft_reset15 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %srbm_soft_reset15, align 4
  ret i1 %tobool9.not26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_pre_soft_reset(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 7
  %0 = ptrtoint ptr %srbm_soft_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @uvd_v6_0_stop(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_soft_reset(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 7
  %0 = ptrtoint ptr %srbm_soft_reset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #8
  %or = or i32 %call, %1
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %or) #11
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %or, i32 noundef 0) #8
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #8
  %neg = xor i32 %1, -1
  %and = and i32 %call8, %neg
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %and, i32 noundef 0) #8
  %call9 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 10737400) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_post_soft_reset(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 7
  %0 = ptrtoint ptr %srbm_soft_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  %call = tail call fastcc i32 @uvd_v6_0_start(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %while.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %while.body.preheader ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not.i = icmp eq i32 %1, 0
  br i1 %cmp4.not.i, label %if.then.cleanup_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.05.i, 1
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %3
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #8
  %and.i.i = and i32 %call.i.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end, label %for.cond.i

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15332, i32 noundef 0) #8
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15658, i32 noundef 0) #8
  %pg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %4 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pg_flags.i, align 4
  %and.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %spec.select.v.i = select i1 %tobool3.not.i, i32 3932151, i32 4194295
  %call1.masked.i = and i32 %call1.i, -3932160
  %and6.i = or i32 %spec.select.v.i, %call1.masked.i
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i8 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15332, i32 noundef 0) #8
  %call1.i9 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15658, i32 noundef 0) #8
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  %call.i8.sink = phi i32 [ %call.i8, %if.else ], [ %call.i, %if.end ]
  %.sink = phi i32 [ 0, %if.else ], [ %and6.i, %if.end ]
  %or.i10 = or i32 %call.i8.sink, 8191
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15332, i32 noundef %or.i10, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15658, i32 noundef %.sink, i32 noundef 0) #8
  %call.i11 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15660, i32 noundef 0) #8
  %call1.i12 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15334, i32 noundef 0) #8
  %and3.i = and i32 %call1.i12, -32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15660, i32 noundef 261, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15334, i32 noundef %and3.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %for.cond.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -16, %if.then.cleanup_crit_edge ], [ -16, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_set_powergating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 14532, i32 noundef 256, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @uvd_v6_0_stop(ptr noundef %handle)
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @uvd_v6_0_start(ptr noundef %handle)
  br label %out

out:                                              ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %call, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_get_clockgating_state(ptr noundef %handle, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #8
  %flags1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %smc_rreg2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %2 = ptrtoint ptr %smc_rreg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_rreg2, align 4
  %. = select i1 %tobool.not, i32 -1071644004, i32 -803208548
  %call3 = tail call i32 %3(ptr noundef %handle, i32 noundef %.) #8
  %and4 = and i32 %call3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %out

if.end8:                                          ; preds = %entry
  %call9 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15660, i32 noundef 0) #8
  %and10 = and i32 %call9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.out_crit_edge, label %if.then12

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 8192
  store i32 %or, ptr %flags, align 4
  br label %out

out:                                              ; preds = %if.then12, %if.end8.out_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %pm) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @uvd_v6_0_ring_get_rptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef 15780, i32 noundef 0) #8
  %conv = zext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @uvd_v6_0_ring_get_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef 15781, i32 noundef 0) #8
  %conv = zext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_ring_set_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %3 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 15781, i32 noundef %conv, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vmid1 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %0 = ptrtoint ptr %vmid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vmid1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end.amdgpu_ring_write.exit_crit_edge

cond.end.amdgpu_ring_write.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %cond.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %7, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %8 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_mask.i, align 8
  %10 = trunc i64 %7 to i32
  %idxprom.i = and i32 %9, %10
  %arrayidx.i = getelementptr i32, ptr %5, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 15777, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %12 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ptr_mask.i, align 8
  %14 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %14, %13
  store i64 %and3.i, ptr %wptr.i, align 8
  %15 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i16 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i16, label %if.then.i17, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit27_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit27_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit27

if.then.i17:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit27

amdgpu_ring_write.exit27:                         ; preds = %if.then.i17, %amdgpu_ring_write.exit.amdgpu_ring_write.exit27_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i20 = add i64 %20, 1
  store i64 %inc.i20, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i22 = and i32 %22, %23
  %arrayidx.i23 = getelementptr i32, ptr %18, i32 %idxprom.i22
  %24 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %cond, ptr %arrayidx.i23, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i25 = and i64 %27, %26
  store i64 %and3.i25, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i26 = add i32 %29, -1
  store i32 %dec.i26, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i26)
  %cmp.i29 = icmp slt i32 %dec.i26, 1
  br i1 %cmp.i29, label %if.then.i30, label %amdgpu_ring_write.exit27.amdgpu_ring_write.exit40_crit_edge

amdgpu_ring_write.exit27.amdgpu_ring_write.exit40_crit_edge: ; preds = %amdgpu_ring_write.exit27
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit40

if.then.i30:                                      ; preds = %amdgpu_ring_write.exit27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit40

amdgpu_ring_write.exit40:                         ; preds = %if.then.i30, %amdgpu_ring_write.exit27.amdgpu_ring_write.exit40_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 4
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wptr.i, align 8
  %inc.i33 = add i64 %33, 1
  store i64 %inc.i33, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_mask.i, align 8
  %36 = trunc i64 %33 to i32
  %idxprom.i35 = and i32 %35, %36
  %arrayidx.i36 = getelementptr i32, ptr %31, i32 %idxprom.i35
  %37 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 15463, ptr %arrayidx.i36, align 4
  %38 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ptr_mask.i, align 8
  %40 = load i64, ptr %wptr.i, align 8
  %and3.i38 = and i64 %40, %39
  store i64 %and3.i38, ptr %wptr.i, align 8
  %41 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_dw.i, align 8
  %dec.i39 = add i32 %42, -1
  store i32 %dec.i39, ptr %count_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %43 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i39)
  %cmp.i42 = icmp slt i32 %dec.i39, 1
  br i1 %cmp.i42, label %if.then.i43, label %amdgpu_ring_write.exit40.amdgpu_ring_write.exit53_crit_edge

amdgpu_ring_write.exit40.amdgpu_ring_write.exit53_crit_edge: ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit53

if.then.i43:                                      ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit53

amdgpu_ring_write.exit53:                         ; preds = %if.then.i43, %amdgpu_ring_write.exit40.amdgpu_ring_write.exit53_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 4
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %wptr.i, align 8
  %inc.i46 = add i64 %48, 1
  store i64 %inc.i46, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_mask.i, align 8
  %51 = trunc i64 %48 to i32
  %idxprom.i48 = and i32 %50, %51
  %arrayidx.i49 = getelementptr i32, ptr %46, i32 %idxprom.i48
  %52 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %conv, ptr %arrayidx.i49, align 4
  %53 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ptr_mask.i, align 8
  %55 = load i64, ptr %wptr.i, align 8
  %and3.i51 = and i64 %55, %54
  store i64 %and3.i51, ptr %wptr.i, align 8
  %56 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count_dw.i, align 8
  %dec.i52 = add i32 %57, -1
  store i32 %dec.i52, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i52)
  %cmp.i55 = icmp slt i32 %dec.i52, 1
  br i1 %cmp.i55, label %if.then.i56, label %amdgpu_ring_write.exit53.amdgpu_ring_write.exit66_crit_edge

amdgpu_ring_write.exit53.amdgpu_ring_write.exit66_crit_edge: ; preds = %amdgpu_ring_write.exit53
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit66

if.then.i56:                                      ; preds = %amdgpu_ring_write.exit53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit66

amdgpu_ring_write.exit66:                         ; preds = %if.then.i56, %amdgpu_ring_write.exit53.amdgpu_ring_write.exit66_crit_edge
  %58 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ring1.i, align 4
  %60 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %wptr.i, align 8
  %inc.i59 = add i64 %61, 1
  store i64 %inc.i59, ptr %wptr.i, align 8
  %62 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf_mask.i, align 8
  %64 = trunc i64 %61 to i32
  %idxprom.i61 = and i32 %63, %64
  %arrayidx.i62 = getelementptr i32, ptr %59, i32 %idxprom.i61
  %65 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 15462, ptr %arrayidx.i62, align 4
  %66 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %ptr_mask.i, align 8
  %68 = load i64, ptr %wptr.i, align 8
  %and3.i64 = and i64 %68, %67
  store i64 %and3.i64, ptr %wptr.i, align 8
  %69 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count_dw.i, align 8
  %dec.i65 = add i32 %70, -1
  store i32 %dec.i65, ptr %count_dw.i, align 8
  %71 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %72, 32
  %conv4 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i65)
  %cmp.i68 = icmp slt i32 %dec.i65, 1
  br i1 %cmp.i68, label %if.then.i69, label %amdgpu_ring_write.exit66.amdgpu_ring_write.exit79_crit_edge

amdgpu_ring_write.exit66.amdgpu_ring_write.exit79_crit_edge: ; preds = %amdgpu_ring_write.exit66
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit79

if.then.i69:                                      ; preds = %amdgpu_ring_write.exit66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit79

amdgpu_ring_write.exit79:                         ; preds = %if.then.i69, %amdgpu_ring_write.exit66.amdgpu_ring_write.exit79_crit_edge
  %73 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ring1.i, align 4
  %75 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %wptr.i, align 8
  %inc.i72 = add i64 %76, 1
  store i64 %inc.i72, ptr %wptr.i, align 8
  %77 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buf_mask.i, align 8
  %79 = trunc i64 %76 to i32
  %idxprom.i74 = and i32 %78, %79
  %arrayidx.i75 = getelementptr i32, ptr %74, i32 %idxprom.i74
  %80 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 %conv4, ptr %arrayidx.i75, align 4
  %81 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %ptr_mask.i, align 8
  %83 = load i64, ptr %wptr.i, align 8
  %and3.i77 = and i64 %83, %82
  store i64 %and3.i77, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count_dw.i, align 8
  %dec.i78 = add i32 %85, -1
  store i32 %dec.i78, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i78)
  %cmp.i81 = icmp slt i32 %dec.i78, 1
  br i1 %cmp.i81, label %if.then.i82, label %amdgpu_ring_write.exit79.amdgpu_ring_write.exit92_crit_edge

amdgpu_ring_write.exit79.amdgpu_ring_write.exit92_crit_edge: ; preds = %amdgpu_ring_write.exit79
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit92

if.then.i82:                                      ; preds = %amdgpu_ring_write.exit79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit92

amdgpu_ring_write.exit92:                         ; preds = %if.then.i82, %amdgpu_ring_write.exit79.amdgpu_ring_write.exit92_crit_edge
  %86 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ring1.i, align 4
  %88 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %wptr.i, align 8
  %inc.i85 = add i64 %89, 1
  store i64 %inc.i85, ptr %wptr.i, align 8
  %90 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %buf_mask.i, align 8
  %92 = trunc i64 %89 to i32
  %idxprom.i87 = and i32 %91, %92
  %arrayidx.i88 = getelementptr i32, ptr %87, i32 %idxprom.i87
  %93 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 15778, ptr %arrayidx.i88, align 4
  %94 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %ptr_mask.i, align 8
  %96 = load i64, ptr %wptr.i, align 8
  %and3.i90 = and i64 %96, %95
  store i64 %and3.i90, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %count_dw.i, align 8
  %dec.i91 = add i32 %98, -1
  store i32 %dec.i91, ptr %count_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %99 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i91)
  %cmp.i94 = icmp slt i32 %dec.i91, 1
  br i1 %cmp.i94, label %if.then.i95, label %amdgpu_ring_write.exit92.amdgpu_ring_write.exit105_crit_edge

amdgpu_ring_write.exit92.amdgpu_ring_write.exit105_crit_edge: ; preds = %amdgpu_ring_write.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit105

if.then.i95:                                      ; preds = %amdgpu_ring_write.exit92
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit105

amdgpu_ring_write.exit105:                        ; preds = %if.then.i95, %amdgpu_ring_write.exit92.amdgpu_ring_write.exit105_crit_edge
  %101 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ring1.i, align 4
  %103 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %wptr.i, align 8
  %inc.i98 = add i64 %104, 1
  store i64 %inc.i98, ptr %wptr.i, align 8
  %105 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %buf_mask.i, align 8
  %107 = trunc i64 %104 to i32
  %idxprom.i100 = and i32 %106, %107
  %arrayidx.i101 = getelementptr i32, ptr %102, i32 %idxprom.i100
  %108 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 %100, ptr %arrayidx.i101, align 4
  %109 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %ptr_mask.i, align 8
  %111 = load i64, ptr %wptr.i, align 8
  %and3.i103 = and i64 %111, %110
  store i64 %and3.i103, ptr %wptr.i, align 8
  %112 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %count_dw.i, align 8
  %dec.i104 = add i32 %113, -1
  store i32 %dec.i104, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !85

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 922, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 15805, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i41 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i41, label %if.then.i42, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit52_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit52_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit52

if.then.i42:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit52

amdgpu_ring_write.exit52:                         ; preds = %if.then.i42, %amdgpu_ring_write.exit.amdgpu_ring_write.exit52_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i45 = add i64 %18, 1
  store i64 %inc.i45, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i47 = and i32 %20, %21
  %arrayidx.i48 = getelementptr i32, ptr %16, i32 %idxprom.i47
  %22 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i48, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i50 = and i64 %25, %24
  store i64 %and3.i50, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i51 = add i32 %27, -1
  store i32 %dec.i51, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i51)
  %cmp.i54 = icmp slt i32 %dec.i51, 1
  br i1 %cmp.i54, label %if.then.i55, label %amdgpu_ring_write.exit52.amdgpu_ring_write.exit65_crit_edge

amdgpu_ring_write.exit52.amdgpu_ring_write.exit65_crit_edge: ; preds = %amdgpu_ring_write.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit65

if.then.i55:                                      ; preds = %amdgpu_ring_write.exit52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit65

amdgpu_ring_write.exit65:                         ; preds = %if.then.i55, %amdgpu_ring_write.exit52.amdgpu_ring_write.exit65_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i58 = add i64 %31, 1
  store i64 %inc.i58, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i60 = and i32 %33, %34
  %arrayidx.i61 = getelementptr i32, ptr %29, i32 %idxprom.i60
  %35 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 15300, ptr %arrayidx.i61, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i63 = and i64 %38, %37
  store i64 %and3.i63, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i64 = add i32 %40, -1
  store i32 %dec.i64, ptr %count_dw.i, align 8
  %conv21 = trunc i64 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i64)
  %cmp.i67 = icmp slt i32 %dec.i64, 1
  br i1 %cmp.i67, label %if.then.i68, label %amdgpu_ring_write.exit65.amdgpu_ring_write.exit78_crit_edge

amdgpu_ring_write.exit65.amdgpu_ring_write.exit78_crit_edge: ; preds = %amdgpu_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit78

if.then.i68:                                      ; preds = %amdgpu_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit78

amdgpu_ring_write.exit78:                         ; preds = %if.then.i68, %amdgpu_ring_write.exit65.amdgpu_ring_write.exit78_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i71 = add i64 %44, 1
  store i64 %inc.i71, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i73 = and i32 %46, %47
  %arrayidx.i74 = getelementptr i32, ptr %42, i32 %idxprom.i73
  %48 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv21, ptr %arrayidx.i74, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i76 = and i64 %51, %50
  store i64 %and3.i76, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i77 = add i32 %53, -1
  store i32 %dec.i77, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i77)
  %cmp.i80 = icmp slt i32 %dec.i77, 1
  br i1 %cmp.i80, label %if.then.i81, label %amdgpu_ring_write.exit78.amdgpu_ring_write.exit91_crit_edge

amdgpu_ring_write.exit78.amdgpu_ring_write.exit91_crit_edge: ; preds = %amdgpu_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit91

if.then.i81:                                      ; preds = %amdgpu_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit91

amdgpu_ring_write.exit91:                         ; preds = %if.then.i81, %amdgpu_ring_write.exit78.amdgpu_ring_write.exit91_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i84 = add i64 %57, 1
  store i64 %inc.i84, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i86 = and i32 %59, %60
  %arrayidx.i87 = getelementptr i32, ptr %55, i32 %idxprom.i86
  %61 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 15301, ptr %arrayidx.i87, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i89 = and i64 %64, %63
  store i64 %and3.i89, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i90 = add i32 %66, -1
  store i32 %dec.i90, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv23 = trunc i64 %shr to i32
  %and24 = and i32 %conv23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i90)
  %cmp.i93 = icmp slt i32 %dec.i90, 1
  br i1 %cmp.i93, label %if.then.i94, label %amdgpu_ring_write.exit91.amdgpu_ring_write.exit104_crit_edge

amdgpu_ring_write.exit91.amdgpu_ring_write.exit104_crit_edge: ; preds = %amdgpu_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit104

if.then.i94:                                      ; preds = %amdgpu_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit104

amdgpu_ring_write.exit104:                        ; preds = %if.then.i94, %amdgpu_ring_write.exit91.amdgpu_ring_write.exit104_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i97 = add i64 %70, 1
  store i64 %inc.i97, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i99 = and i32 %72, %73
  %arrayidx.i100 = getelementptr i32, ptr %68, i32 %idxprom.i99
  %74 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %and24, ptr %arrayidx.i100, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i102 = and i64 %77, %76
  store i64 %and3.i102, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i103 = add i32 %79, -1
  store i32 %dec.i103, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i103)
  %cmp.i106 = icmp slt i32 %dec.i103, 1
  br i1 %cmp.i106, label %if.then.i107, label %amdgpu_ring_write.exit104.amdgpu_ring_write.exit117_crit_edge

amdgpu_ring_write.exit104.amdgpu_ring_write.exit117_crit_edge: ; preds = %amdgpu_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit117

if.then.i107:                                     ; preds = %amdgpu_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit117

amdgpu_ring_write.exit117:                        ; preds = %if.then.i107, %amdgpu_ring_write.exit104.amdgpu_ring_write.exit117_crit_edge
  %80 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ring1.i, align 4
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %wptr.i, align 8
  %inc.i110 = add i64 %83, 1
  store i64 %inc.i110, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buf_mask.i, align 8
  %86 = trunc i64 %83 to i32
  %idxprom.i112 = and i32 %85, %86
  %arrayidx.i113 = getelementptr i32, ptr %81, i32 %idxprom.i112
  %87 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 15299, ptr %arrayidx.i113, align 4
  %88 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ptr_mask.i, align 8
  %90 = load i64, ptr %wptr.i, align 8
  %and3.i115 = and i64 %90, %89
  store i64 %and3.i115, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count_dw.i, align 8
  %dec.i116 = add i32 %92, -1
  store i32 %dec.i116, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i116)
  %cmp.i119 = icmp slt i32 %dec.i116, 1
  br i1 %cmp.i119, label %if.then.i120, label %amdgpu_ring_write.exit117.amdgpu_ring_write.exit130_crit_edge

amdgpu_ring_write.exit117.amdgpu_ring_write.exit130_crit_edge: ; preds = %amdgpu_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit130

if.then.i120:                                     ; preds = %amdgpu_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit130

amdgpu_ring_write.exit130:                        ; preds = %if.then.i120, %amdgpu_ring_write.exit117.amdgpu_ring_write.exit130_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 4
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %wptr.i, align 8
  %inc.i123 = add i64 %96, 1
  store i64 %inc.i123, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf_mask.i, align 8
  %99 = trunc i64 %96 to i32
  %idxprom.i125 = and i32 %98, %99
  %arrayidx.i126 = getelementptr i32, ptr %94, i32 %idxprom.i125
  %100 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 0, ptr %arrayidx.i126, align 4
  %101 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %ptr_mask.i, align 8
  %103 = load i64, ptr %wptr.i, align 8
  %and3.i128 = and i64 %103, %102
  store i64 %and3.i128, ptr %wptr.i, align 8
  %104 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count_dw.i, align 8
  %dec.i129 = add i32 %105, -1
  store i32 %dec.i129, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i129)
  %cmp.i132 = icmp slt i32 %dec.i129, 1
  br i1 %cmp.i132, label %if.then.i133, label %amdgpu_ring_write.exit130.amdgpu_ring_write.exit143_crit_edge

amdgpu_ring_write.exit130.amdgpu_ring_write.exit143_crit_edge: ; preds = %amdgpu_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit143

if.then.i133:                                     ; preds = %amdgpu_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit143

amdgpu_ring_write.exit143:                        ; preds = %if.then.i133, %amdgpu_ring_write.exit130.amdgpu_ring_write.exit143_crit_edge
  %106 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ring1.i, align 4
  %108 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %wptr.i, align 8
  %inc.i136 = add i64 %109, 1
  store i64 %inc.i136, ptr %wptr.i, align 8
  %110 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buf_mask.i, align 8
  %112 = trunc i64 %109 to i32
  %idxprom.i138 = and i32 %111, %112
  %arrayidx.i139 = getelementptr i32, ptr %107, i32 %idxprom.i138
  %113 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 15300, ptr %arrayidx.i139, align 4
  %114 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ptr_mask.i, align 8
  %116 = load i64, ptr %wptr.i, align 8
  %and3.i141 = and i64 %116, %115
  store i64 %and3.i141, ptr %wptr.i, align 8
  %117 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %count_dw.i, align 8
  %dec.i142 = add i32 %118, -1
  store i32 %dec.i142, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i142)
  %cmp.i145 = icmp slt i32 %dec.i142, 1
  br i1 %cmp.i145, label %if.then.i146, label %amdgpu_ring_write.exit143.amdgpu_ring_write.exit156_crit_edge

amdgpu_ring_write.exit143.amdgpu_ring_write.exit156_crit_edge: ; preds = %amdgpu_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit156

if.then.i146:                                     ; preds = %amdgpu_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit156

amdgpu_ring_write.exit156:                        ; preds = %if.then.i146, %amdgpu_ring_write.exit143.amdgpu_ring_write.exit156_crit_edge
  %119 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ring1.i, align 4
  %121 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %wptr.i, align 8
  %inc.i149 = add i64 %122, 1
  store i64 %inc.i149, ptr %wptr.i, align 8
  %123 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %buf_mask.i, align 8
  %125 = trunc i64 %122 to i32
  %idxprom.i151 = and i32 %124, %125
  %arrayidx.i152 = getelementptr i32, ptr %120, i32 %idxprom.i151
  %126 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 0, ptr %arrayidx.i152, align 4
  %127 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %ptr_mask.i, align 8
  %129 = load i64, ptr %wptr.i, align 8
  %and3.i154 = and i64 %129, %128
  store i64 %and3.i154, ptr %wptr.i, align 8
  %130 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %count_dw.i, align 8
  %dec.i155 = add i32 %131, -1
  store i32 %dec.i155, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i155)
  %cmp.i158 = icmp slt i32 %dec.i155, 1
  br i1 %cmp.i158, label %if.then.i159, label %amdgpu_ring_write.exit156.amdgpu_ring_write.exit169_crit_edge

amdgpu_ring_write.exit156.amdgpu_ring_write.exit169_crit_edge: ; preds = %amdgpu_ring_write.exit156
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit169

if.then.i159:                                     ; preds = %amdgpu_ring_write.exit156
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit169

amdgpu_ring_write.exit169:                        ; preds = %if.then.i159, %amdgpu_ring_write.exit156.amdgpu_ring_write.exit169_crit_edge
  %132 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ring1.i, align 4
  %134 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %wptr.i, align 8
  %inc.i162 = add i64 %135, 1
  store i64 %inc.i162, ptr %wptr.i, align 8
  %136 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %buf_mask.i, align 8
  %138 = trunc i64 %135 to i32
  %idxprom.i164 = and i32 %137, %138
  %arrayidx.i165 = getelementptr i32, ptr %133, i32 %idxprom.i164
  %139 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile i32 15301, ptr %arrayidx.i165, align 4
  %140 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %ptr_mask.i, align 8
  %142 = load i64, ptr %wptr.i, align 8
  %and3.i167 = and i64 %142, %141
  store i64 %and3.i167, ptr %wptr.i, align 8
  %143 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %count_dw.i, align 8
  %dec.i168 = add i32 %144, -1
  store i32 %dec.i168, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i168)
  %cmp.i171 = icmp slt i32 %dec.i168, 1
  br i1 %cmp.i171, label %if.then.i172, label %amdgpu_ring_write.exit169.amdgpu_ring_write.exit182_crit_edge

amdgpu_ring_write.exit169.amdgpu_ring_write.exit182_crit_edge: ; preds = %amdgpu_ring_write.exit169
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit182

if.then.i172:                                     ; preds = %amdgpu_ring_write.exit169
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit182

amdgpu_ring_write.exit182:                        ; preds = %if.then.i172, %amdgpu_ring_write.exit169.amdgpu_ring_write.exit182_crit_edge
  %145 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ring1.i, align 4
  %147 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %wptr.i, align 8
  %inc.i175 = add i64 %148, 1
  store i64 %inc.i175, ptr %wptr.i, align 8
  %149 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %buf_mask.i, align 8
  %151 = trunc i64 %148 to i32
  %idxprom.i177 = and i32 %150, %151
  %arrayidx.i178 = getelementptr i32, ptr %146, i32 %idxprom.i177
  %152 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 0, ptr %arrayidx.i178, align 4
  %153 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %ptr_mask.i, align 8
  %155 = load i64, ptr %wptr.i, align 8
  %and3.i180 = and i64 %155, %154
  store i64 %and3.i180, ptr %wptr.i, align 8
  %156 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %count_dw.i, align 8
  %dec.i181 = add i32 %157, -1
  store i32 %dec.i181, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i181)
  %cmp.i184 = icmp slt i32 %dec.i181, 1
  br i1 %cmp.i184, label %if.then.i185, label %amdgpu_ring_write.exit182.amdgpu_ring_write.exit195_crit_edge

amdgpu_ring_write.exit182.amdgpu_ring_write.exit195_crit_edge: ; preds = %amdgpu_ring_write.exit182
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit195

if.then.i185:                                     ; preds = %amdgpu_ring_write.exit182
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit195

amdgpu_ring_write.exit195:                        ; preds = %if.then.i185, %amdgpu_ring_write.exit182.amdgpu_ring_write.exit195_crit_edge
  %158 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ring1.i, align 4
  %160 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %wptr.i, align 8
  %inc.i188 = add i64 %161, 1
  store i64 %inc.i188, ptr %wptr.i, align 8
  %162 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %buf_mask.i, align 8
  %164 = trunc i64 %161 to i32
  %idxprom.i190 = and i32 %163, %164
  %arrayidx.i191 = getelementptr i32, ptr %159, i32 %idxprom.i190
  %165 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile i32 15299, ptr %arrayidx.i191, align 4
  %166 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %ptr_mask.i, align 8
  %168 = load i64, ptr %wptr.i, align 8
  %and3.i193 = and i64 %168, %167
  store i64 %and3.i193, ptr %wptr.i, align 8
  %169 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %count_dw.i, align 8
  %dec.i194 = add i32 %170, -1
  store i32 %dec.i194, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i194)
  %cmp.i197 = icmp slt i32 %dec.i194, 1
  br i1 %cmp.i197, label %if.then.i198, label %amdgpu_ring_write.exit195.amdgpu_ring_write.exit208_crit_edge

amdgpu_ring_write.exit195.amdgpu_ring_write.exit208_crit_edge: ; preds = %amdgpu_ring_write.exit195
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit208

if.then.i198:                                     ; preds = %amdgpu_ring_write.exit195
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit208

amdgpu_ring_write.exit208:                        ; preds = %if.then.i198, %amdgpu_ring_write.exit195.amdgpu_ring_write.exit208_crit_edge
  %171 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ring1.i, align 4
  %173 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %wptr.i, align 8
  %inc.i201 = add i64 %174, 1
  store i64 %inc.i201, ptr %wptr.i, align 8
  %175 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %buf_mask.i, align 8
  %177 = trunc i64 %174 to i32
  %idxprom.i203 = and i32 %176, %177
  %arrayidx.i204 = getelementptr i32, ptr %172, i32 %idxprom.i203
  %178 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile i32 2, ptr %arrayidx.i204, align 4
  %179 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %ptr_mask.i, align 8
  %181 = load i64, ptr %wptr.i, align 8
  %and3.i206 = and i64 %181, %180
  store i64 %and3.i206, ptr %wptr.i, align 8
  %182 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %count_dw.i, align 8
  %dec.i207 = add i32 %183, -1
  store i32 %dec.i207, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_ring_emit_pipeline_sync(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_drv = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2
  %sync_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %sync_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_seq, align 4
  %2 = ptrtoint ptr %fence_drv to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fence_drv, align 8
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %9, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %10 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_mask.i, align 8
  %12 = trunc i64 %9 to i32
  %idxprom.i = and i32 %11, %12
  %arrayidx.i = getelementptr i32, ptr %7, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 15300, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %14 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ptr_mask.i, align 8
  %16 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %16, %15
  store i64 %and3.i, ptr %wptr.i, align 8
  %17 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i17 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i17, label %if.then.i18, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit28_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit28_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit28

if.then.i18:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit28

amdgpu_ring_write.exit28:                         ; preds = %if.then.i18, %amdgpu_ring_write.exit.amdgpu_ring_write.exit28_crit_edge
  %19 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring1.i, align 4
  %21 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %wptr.i, align 8
  %inc.i21 = add i64 %22, 1
  store i64 %inc.i21, ptr %wptr.i, align 8
  %23 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_mask.i, align 8
  %25 = trunc i64 %22 to i32
  %idxprom.i23 = and i32 %24, %25
  %arrayidx.i24 = getelementptr i32, ptr %20, i32 %idxprom.i23
  %26 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %conv, ptr %arrayidx.i24, align 4
  %27 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ptr_mask.i, align 8
  %29 = load i64, ptr %wptr.i, align 8
  %and3.i26 = and i64 %29, %28
  store i64 %and3.i26, ptr %wptr.i, align 8
  %30 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count_dw.i, align 8
  %dec.i27 = add i32 %31, -1
  store i32 %dec.i27, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i27)
  %cmp.i30 = icmp slt i32 %dec.i27, 1
  br i1 %cmp.i30, label %if.then.i31, label %amdgpu_ring_write.exit28.amdgpu_ring_write.exit41_crit_edge

amdgpu_ring_write.exit28.amdgpu_ring_write.exit41_crit_edge: ; preds = %amdgpu_ring_write.exit28
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit41

if.then.i31:                                      ; preds = %amdgpu_ring_write.exit28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit41

amdgpu_ring_write.exit41:                         ; preds = %if.then.i31, %amdgpu_ring_write.exit28.amdgpu_ring_write.exit41_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 4
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wptr.i, align 8
  %inc.i34 = add i64 %35, 1
  store i64 %inc.i34, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_mask.i, align 8
  %38 = trunc i64 %35 to i32
  %idxprom.i36 = and i32 %37, %38
  %arrayidx.i37 = getelementptr i32, ptr %33, i32 %idxprom.i36
  %39 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 15301, ptr %arrayidx.i37, align 4
  %40 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ptr_mask.i, align 8
  %42 = load i64, ptr %wptr.i, align 8
  %and3.i39 = and i64 %42, %41
  store i64 %and3.i39, ptr %wptr.i, align 8
  %43 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count_dw.i, align 8
  %dec.i40 = add i32 %44, -1
  store i32 %dec.i40, ptr %count_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv3 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i40)
  %cmp.i43 = icmp slt i32 %dec.i40, 1
  br i1 %cmp.i43, label %if.then.i44, label %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge

amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge: ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit54

if.then.i44:                                      ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit54

amdgpu_ring_write.exit54:                         ; preds = %if.then.i44, %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 4
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %wptr.i, align 8
  %inc.i47 = add i64 %48, 1
  store i64 %inc.i47, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_mask.i, align 8
  %51 = trunc i64 %48 to i32
  %idxprom.i49 = and i32 %50, %51
  %arrayidx.i50 = getelementptr i32, ptr %46, i32 %idxprom.i49
  %52 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %conv3, ptr %arrayidx.i50, align 4
  %53 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ptr_mask.i, align 8
  %55 = load i64, ptr %wptr.i, align 8
  %and3.i52 = and i64 %55, %54
  store i64 %and3.i52, ptr %wptr.i, align 8
  %56 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count_dw.i, align 8
  %dec.i53 = add i32 %57, -1
  store i32 %dec.i53, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i53)
  %cmp.i56 = icmp slt i32 %dec.i53, 1
  br i1 %cmp.i56, label %if.then.i57, label %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge

amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge: ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit67

amdgpu_ring_write.exit67:                         ; preds = %if.then.i57, %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge
  %58 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ring1.i, align 4
  %60 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %wptr.i, align 8
  %inc.i60 = add i64 %61, 1
  store i64 %inc.i60, ptr %wptr.i, align 8
  %62 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf_mask.i, align 8
  %64 = trunc i64 %61 to i32
  %idxprom.i62 = and i32 %63, %64
  %arrayidx.i63 = getelementptr i32, ptr %59, i32 %idxprom.i62
  %65 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 15370, ptr %arrayidx.i63, align 4
  %66 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %ptr_mask.i, align 8
  %68 = load i64, ptr %wptr.i, align 8
  %and3.i65 = and i64 %68, %67
  store i64 %and3.i65, ptr %wptr.i, align 8
  %69 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count_dw.i, align 8
  %dec.i66 = add i32 %70, -1
  store i32 %dec.i66, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i66)
  %cmp.i69 = icmp slt i32 %dec.i66, 1
  br i1 %cmp.i69, label %if.then.i70, label %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge

amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge: ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit80

amdgpu_ring_write.exit80:                         ; preds = %if.then.i70, %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge
  %71 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ring1.i, align 4
  %73 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %wptr.i, align 8
  %inc.i73 = add i64 %74, 1
  store i64 %inc.i73, ptr %wptr.i, align 8
  %75 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %buf_mask.i, align 8
  %77 = trunc i64 %74 to i32
  %idxprom.i75 = and i32 %76, %77
  %arrayidx.i76 = getelementptr i32, ptr %72, i32 %idxprom.i75
  %78 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 -1, ptr %arrayidx.i76, align 4
  %79 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %ptr_mask.i, align 8
  %81 = load i64, ptr %wptr.i, align 8
  %and3.i78 = and i64 %81, %80
  store i64 %and3.i78, ptr %wptr.i, align 8
  %82 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %count_dw.i, align 8
  %dec.i79 = add i32 %83, -1
  store i32 %dec.i79, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i79)
  %cmp.i82 = icmp slt i32 %dec.i79, 1
  br i1 %cmp.i82, label %if.then.i83, label %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge

amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge: ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit93

if.then.i83:                                      ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit93

amdgpu_ring_write.exit93:                         ; preds = %if.then.i83, %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge
  %84 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ring1.i, align 4
  %86 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %wptr.i, align 8
  %inc.i86 = add i64 %87, 1
  store i64 %inc.i86, ptr %wptr.i, align 8
  %88 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %buf_mask.i, align 8
  %90 = trunc i64 %87 to i32
  %idxprom.i88 = and i32 %89, %90
  %arrayidx.i89 = getelementptr i32, ptr %85, i32 %idxprom.i88
  %91 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 15371, ptr %arrayidx.i89, align 4
  %92 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %ptr_mask.i, align 8
  %94 = load i64, ptr %wptr.i, align 8
  %and3.i91 = and i64 %94, %93
  store i64 %and3.i91, ptr %wptr.i, align 8
  %95 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %count_dw.i, align 8
  %dec.i92 = add i32 %96, -1
  store i32 %dec.i92, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i92)
  %cmp.i95 = icmp slt i32 %dec.i92, 1
  br i1 %cmp.i95, label %if.then.i96, label %amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge

amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge: ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit106

if.then.i96:                                      ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit106

amdgpu_ring_write.exit106:                        ; preds = %if.then.i96, %amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge
  %97 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ring1.i, align 4
  %99 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %wptr.i, align 8
  %inc.i99 = add i64 %100, 1
  store i64 %inc.i99, ptr %wptr.i, align 8
  %101 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %buf_mask.i, align 8
  %103 = trunc i64 %100 to i32
  %idxprom.i101 = and i32 %102, %103
  %arrayidx.i102 = getelementptr i32, ptr %98, i32 %idxprom.i101
  %104 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 %1, ptr %arrayidx.i102, align 4
  %105 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %ptr_mask.i, align 8
  %107 = load i64, ptr %wptr.i, align 8
  %and3.i104 = and i64 %107, %106
  store i64 %and3.i104, ptr %wptr.i, align 8
  %108 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count_dw.i, align 8
  %dec.i105 = add i32 %109, -1
  store i32 %dec.i105, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i105)
  %cmp.i108 = icmp slt i32 %dec.i105, 1
  br i1 %cmp.i108, label %if.then.i109, label %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge

amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge: ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit119

if.then.i109:                                     ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit119

amdgpu_ring_write.exit119:                        ; preds = %if.then.i109, %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge
  %110 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ring1.i, align 4
  %112 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %wptr.i, align 8
  %inc.i112 = add i64 %113, 1
  store i64 %inc.i112, ptr %wptr.i, align 8
  %114 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %buf_mask.i, align 8
  %116 = trunc i64 %113 to i32
  %idxprom.i114 = and i32 %115, %116
  %arrayidx.i115 = getelementptr i32, ptr %111, i32 %idxprom.i114
  %117 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 15299, ptr %arrayidx.i115, align 4
  %118 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %ptr_mask.i, align 8
  %120 = load i64, ptr %wptr.i, align 8
  %and3.i117 = and i64 %120, %119
  store i64 %and3.i117, ptr %wptr.i, align 8
  %121 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %count_dw.i, align 8
  %dec.i118 = add i32 %122, -1
  store i32 %dec.i118, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i118)
  %cmp.i121 = icmp slt i32 %dec.i118, 1
  br i1 %cmp.i121, label %if.then.i122, label %amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge

amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge: ; preds = %amdgpu_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit132

if.then.i122:                                     ; preds = %amdgpu_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit132

amdgpu_ring_write.exit132:                        ; preds = %if.then.i122, %amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge
  %123 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ring1.i, align 4
  %125 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %wptr.i, align 8
  %inc.i125 = add i64 %126, 1
  store i64 %inc.i125, ptr %wptr.i, align 8
  %127 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %buf_mask.i, align 8
  %129 = trunc i64 %126 to i32
  %idxprom.i127 = and i32 %128, %129
  %arrayidx.i128 = getelementptr i32, ptr %124, i32 %idxprom.i127
  %130 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile i32 14, ptr %arrayidx.i128, align 4
  %131 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %ptr_mask.i, align 8
  %133 = load i64, ptr %wptr.i, align 8
  %and3.i130 = and i64 %133, %132
  store i64 %and3.i130, ptr %wptr.i, align 8
  %134 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %count_dw.i, align 8
  %dec.i131 = add i32 %135, -1
  store i32 %dec.i131, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 38
  %2 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gmc_funcs, align 4
  %emit_flush_gpu_tlb = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %emit_flush_gpu_tlb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %emit_flush_gpu_tlb, align 4
  %call = tail call i64 %5(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #8
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %10 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %12 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_mask.i, align 8
  %14 = trunc i64 %11 to i32
  %idxprom.i = and i32 %13, %14
  %arrayidx.i = getelementptr i32, ptr %9, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 15300, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %16 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ptr_mask.i, align 8
  %18 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %18, %17
  store i64 %and3.i, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i12 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i12, label %if.then.i13, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit23_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit23_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit23

if.then.i13:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit23

amdgpu_ring_write.exit23:                         ; preds = %if.then.i13, %amdgpu_ring_write.exit.amdgpu_ring_write.exit23_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 4
  %23 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wptr.i, align 8
  %inc.i16 = add i64 %24, 1
  store i64 %inc.i16, ptr %wptr.i, align 8
  %25 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_mask.i, align 8
  %27 = trunc i64 %24 to i32
  %idxprom.i18 = and i32 %26, %27
  %arrayidx.i19 = getelementptr i32, ptr %22, i32 %idxprom.i18
  %28 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 5240, ptr %arrayidx.i19, align 4
  %29 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr_mask.i, align 8
  %31 = load i64, ptr %wptr.i, align 8
  %and3.i21 = and i64 %31, %30
  store i64 %and3.i21, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i, align 8
  %dec.i22 = add i32 %33, -1
  store i32 %dec.i22, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i22)
  %cmp.i25 = icmp slt i32 %dec.i22, 1
  br i1 %cmp.i25, label %if.then.i26, label %amdgpu_ring_write.exit23.amdgpu_ring_write.exit36_crit_edge

amdgpu_ring_write.exit23.amdgpu_ring_write.exit36_crit_edge: ; preds = %amdgpu_ring_write.exit23
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit36

if.then.i26:                                      ; preds = %amdgpu_ring_write.exit23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit36

amdgpu_ring_write.exit36:                         ; preds = %if.then.i26, %amdgpu_ring_write.exit23.amdgpu_ring_write.exit36_crit_edge
  %34 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring1.i, align 4
  %36 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %wptr.i, align 8
  %inc.i29 = add i64 %37, 1
  store i64 %inc.i29, ptr %wptr.i, align 8
  %38 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_mask.i, align 8
  %40 = trunc i64 %37 to i32
  %idxprom.i31 = and i32 %39, %40
  %arrayidx.i32 = getelementptr i32, ptr %35, i32 %idxprom.i31
  %41 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 15301, ptr %arrayidx.i32, align 4
  %42 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ptr_mask.i, align 8
  %44 = load i64, ptr %wptr.i, align 8
  %and3.i34 = and i64 %44, %43
  store i64 %and3.i34, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_dw.i, align 8
  %dec.i35 = add i32 %46, -1
  store i32 %dec.i35, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i35)
  %cmp.i38 = icmp slt i32 %dec.i35, 1
  br i1 %cmp.i38, label %if.then.i39, label %amdgpu_ring_write.exit36.amdgpu_ring_write.exit49_crit_edge

amdgpu_ring_write.exit36.amdgpu_ring_write.exit49_crit_edge: ; preds = %amdgpu_ring_write.exit36
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit49

if.then.i39:                                      ; preds = %amdgpu_ring_write.exit36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit49

amdgpu_ring_write.exit49:                         ; preds = %if.then.i39, %amdgpu_ring_write.exit36.amdgpu_ring_write.exit49_crit_edge
  %47 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring1.i, align 4
  %49 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wptr.i, align 8
  %inc.i42 = add i64 %50, 1
  store i64 %inc.i42, ptr %wptr.i, align 8
  %51 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_mask.i, align 8
  %53 = trunc i64 %50 to i32
  %idxprom.i44 = and i32 %52, %53
  %arrayidx.i45 = getelementptr i32, ptr %48, i32 %idxprom.i44
  %54 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %arrayidx.i45, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ptr_mask.i, align 8
  %57 = load i64, ptr %wptr.i, align 8
  %and3.i47 = and i64 %57, %56
  store i64 %and3.i47, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 8
  %dec.i48 = add i32 %59, -1
  store i32 %dec.i48, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i48)
  %cmp.i51 = icmp slt i32 %dec.i48, 1
  br i1 %cmp.i51, label %if.then.i52, label %amdgpu_ring_write.exit49.amdgpu_ring_write.exit62_crit_edge

amdgpu_ring_write.exit49.amdgpu_ring_write.exit62_crit_edge: ; preds = %amdgpu_ring_write.exit49
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit62

if.then.i52:                                      ; preds = %amdgpu_ring_write.exit49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit62

amdgpu_ring_write.exit62:                         ; preds = %if.then.i52, %amdgpu_ring_write.exit49.amdgpu_ring_write.exit62_crit_edge
  %60 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ring1.i, align 4
  %62 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %wptr.i, align 8
  %inc.i55 = add i64 %63, 1
  store i64 %inc.i55, ptr %wptr.i, align 8
  %64 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buf_mask.i, align 8
  %66 = trunc i64 %63 to i32
  %idxprom.i57 = and i32 %65, %66
  %arrayidx.i58 = getelementptr i32, ptr %61, i32 %idxprom.i57
  %67 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 15370, ptr %arrayidx.i58, align 4
  %68 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ptr_mask.i, align 8
  %70 = load i64, ptr %wptr.i, align 8
  %and3.i60 = and i64 %70, %69
  store i64 %and3.i60, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count_dw.i, align 8
  %dec.i61 = add i32 %72, -1
  store i32 %dec.i61, ptr %count_dw.i, align 8
  %shl = shl nuw i32 1, %vmid
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i61)
  %cmp.i64 = icmp slt i32 %dec.i61, 1
  br i1 %cmp.i64, label %if.then.i65, label %amdgpu_ring_write.exit62.amdgpu_ring_write.exit75_crit_edge

amdgpu_ring_write.exit62.amdgpu_ring_write.exit75_crit_edge: ; preds = %amdgpu_ring_write.exit62
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit75

if.then.i65:                                      ; preds = %amdgpu_ring_write.exit62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit75

amdgpu_ring_write.exit75:                         ; preds = %if.then.i65, %amdgpu_ring_write.exit62.amdgpu_ring_write.exit75_crit_edge
  %73 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ring1.i, align 4
  %75 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %wptr.i, align 8
  %inc.i68 = add i64 %76, 1
  store i64 %inc.i68, ptr %wptr.i, align 8
  %77 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buf_mask.i, align 8
  %79 = trunc i64 %76 to i32
  %idxprom.i70 = and i32 %78, %79
  %arrayidx.i71 = getelementptr i32, ptr %74, i32 %idxprom.i70
  %80 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 %shl, ptr %arrayidx.i71, align 4
  %81 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %ptr_mask.i, align 8
  %83 = load i64, ptr %wptr.i, align 8
  %and3.i73 = and i64 %83, %82
  store i64 %and3.i73, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count_dw.i, align 8
  %dec.i74 = add i32 %85, -1
  store i32 %dec.i74, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i74)
  %cmp.i77 = icmp slt i32 %dec.i74, 1
  br i1 %cmp.i77, label %if.then.i78, label %amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge

amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge: ; preds = %amdgpu_ring_write.exit75
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit88

if.then.i78:                                      ; preds = %amdgpu_ring_write.exit75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit88

amdgpu_ring_write.exit88:                         ; preds = %if.then.i78, %amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge
  %86 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ring1.i, align 4
  %88 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %wptr.i, align 8
  %inc.i81 = add i64 %89, 1
  store i64 %inc.i81, ptr %wptr.i, align 8
  %90 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %buf_mask.i, align 8
  %92 = trunc i64 %89 to i32
  %idxprom.i83 = and i32 %91, %92
  %arrayidx.i84 = getelementptr i32, ptr %87, i32 %idxprom.i83
  %93 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 15299, ptr %arrayidx.i84, align 4
  %94 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %ptr_mask.i, align 8
  %96 = load i64, ptr %wptr.i, align 8
  %and3.i86 = and i64 %96, %95
  store i64 %and3.i86, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %count_dw.i, align 8
  %dec.i87 = add i32 %98, -1
  store i32 %dec.i87, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i87)
  %cmp.i90 = icmp slt i32 %dec.i87, 1
  br i1 %cmp.i90, label %if.then.i91, label %amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge

amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge: ; preds = %amdgpu_ring_write.exit88
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit101

if.then.i91:                                      ; preds = %amdgpu_ring_write.exit88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit101

amdgpu_ring_write.exit101:                        ; preds = %if.then.i91, %amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge
  %99 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ring1.i, align 4
  %101 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %wptr.i, align 8
  %inc.i94 = add i64 %102, 1
  store i64 %inc.i94, ptr %wptr.i, align 8
  %103 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %buf_mask.i, align 8
  %105 = trunc i64 %102 to i32
  %idxprom.i96 = and i32 %104, %105
  %arrayidx.i97 = getelementptr i32, ptr %100, i32 %idxprom.i96
  %106 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 12, ptr %arrayidx.i97, align 4
  %107 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %ptr_mask.i, align 8
  %109 = load i64, ptr %wptr.i, align 8
  %and3.i99 = and i64 %109, %108
  store i64 %and3.i99, ptr %wptr.i, align 8
  %110 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %count_dw.i, align 8
  %dec.i100 = add i32 %111, -1
  store i32 %dec.i100, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @uvd_v6_0_ring_emit_hdp_flush(ptr nocapture noundef %ring) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_ring_test_ring(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 15805, i32 noundef -889266515, i32 noundef 0) #8
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %7, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %8 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_mask.i, align 8
  %10 = trunc i64 %7 to i32
  %idxprom.i = and i32 %9, %10
  %arrayidx.i = getelementptr i32, ptr %5, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 15805, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %12 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ptr_mask.i, align 8
  %14 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %14, %13
  store i64 %and3.i, ptr %wptr.i, align 8
  %15 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i25 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i25, label %if.then.i26, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit36_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit36_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit36

if.then.i26:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit36

amdgpu_ring_write.exit36:                         ; preds = %if.then.i26, %amdgpu_ring_write.exit.amdgpu_ring_write.exit36_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i29 = add i64 %20, 1
  store i64 %inc.i29, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i31 = and i32 %22, %23
  %arrayidx.i32 = getelementptr i32, ptr %18, i32 %idxprom.i31
  %24 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 -559038737, ptr %arrayidx.i32, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i34 = and i64 %27, %26
  store i64 %and3.i34, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i35 = add i32 %29, -1
  store i32 %dec.i35, ptr %count_dw.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring) #8
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %30 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp37.not = icmp eq i32 %31, 0
  br i1 %cmp37.not, label %amdgpu_ring_write.exit36.for.end_crit_edge, label %amdgpu_ring_write.exit36.for.body_crit_edge

amdgpu_ring_write.exit36.for.body_crit_edge:      ; preds = %amdgpu_ring_write.exit36
  br label %for.body

amdgpu_ring_write.exit36.for.end_crit_edge:       ; preds = %amdgpu_ring_write.exit36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %amdgpu_ring_write.exit36.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %if.end5.for.body_crit_edge ], [ 0, %amdgpu_ring_write.exit36.for.body_crit_edge ]
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef 15805, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %call2)
  %cmp3 = icmp eq i32 %call2, -559038737
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end5

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end5:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #8
  %inc = add nuw i32 %i.038, 1
  %33 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end5.for.end_crit_edge, %for.body.for.end_crit_edge, %amdgpu_ring_write.exit36.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %amdgpu_ring_write.exit36.for.end_crit_edge ], [ %i.038, %for.body.for.end_crit_edge ], [ %inc, %if.end5.for.end_crit_edge ]
  %35 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %36)
  %cmp7.not = icmp ult i32 %i.0.lcssa, %36
  %spec.select = select i1 %cmp7.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_ring_test_ib(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_ring_insert_nop(ptr nocapture noundef %ring, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %0 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wptr, align 8
  %rem = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem)
  %tobool.not = icmp ne i64 %rem, 0
  %rem1 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %tobool2 = icmp ne i32 %rem1, 0
  %2 = or i1 %tobool2, %tobool.not
  br i1 %2, label %do.end, label %entry.if.end_crit_edge, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1107, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp41.not = icmp ult i32 %count, 2
  br i1 %cmp41.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %div27 = lshr i32 %count, 1
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %3 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %count_dw.i, align 8
  br label %for.body

for.body:                                         ; preds = %amdgpu_ring_write.exit40.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %.pr, %for.body.lr.ph ], [ %dec.i39, %amdgpu_ring_write.exit40.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %amdgpu_ring_write.exit40.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp slt i32 %4, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.amdgpu_ring_write.exit_crit_edge

for.body.amdgpu_ring_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %for.body.amdgpu_ring_write.exit_crit_edge
  %5 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring1.i, align 4
  %7 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %wptr, align 8
  %inc.i = add i64 %8, 1
  store i64 %inc.i, ptr %wptr, align 8
  %9 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_mask.i, align 8
  %11 = trunc i64 %8 to i32
  %idxprom.i = and i32 %10, %11
  %arrayidx.i = getelementptr i32, ptr %6, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 15359, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ptr_mask.i, align 8
  %15 = load i64, ptr %wptr, align 8
  %and3.i = and i64 %15, %14
  store i64 %and3.i, ptr %wptr, align 8
  %16 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i29 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i29, label %if.then.i30, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit40

if.then.i30:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit40

amdgpu_ring_write.exit40:                         ; preds = %if.then.i30, %amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 4
  %20 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %wptr, align 8
  %inc.i33 = add i64 %21, 1
  store i64 %inc.i33, ptr %wptr, align 8
  %22 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_mask.i, align 8
  %24 = trunc i64 %21 to i32
  %idxprom.i35 = and i32 %23, %24
  %arrayidx.i36 = getelementptr i32, ptr %19, i32 %idxprom.i35
  %25 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %arrayidx.i36, align 4
  %26 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ptr_mask.i, align 8
  %28 = load i64, ptr %wptr, align 8
  %and3.i38 = and i64 %28, %27
  store i64 %and3.i38, ptr %wptr, align 8
  %29 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count_dw.i, align 8
  %dec.i39 = add i32 %30, -1
  store i32 %dec.i39, ptr %count_dw.i, align 8
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %div27
  br i1 %exitcond.not, label %amdgpu_ring_write.exit40.for.end_crit_edge, label %amdgpu_ring_write.exit40.for.body_crit_edge

amdgpu_ring_write.exit40.for.body_crit_edge:      ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

amdgpu_ring_write.exit40.for.end_crit_edge:       ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %amdgpu_ring_write.exit40.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_generic_pad_ib(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_uvd_ring_begin_use(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_uvd_ring_end_use(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_ring_emit_wreg(ptr noundef %ring, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 15300, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %shl = shl i32 %reg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i7 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i7, label %if.then.i8, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit18

if.then.i8:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit18

amdgpu_ring_write.exit18:                         ; preds = %if.then.i8, %amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i11 = add i64 %18, 1
  store i64 %inc.i11, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i13 = and i32 %20, %21
  %arrayidx.i14 = getelementptr i32, ptr %16, i32 %idxprom.i13
  %22 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %shl, ptr %arrayidx.i14, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i16 = and i64 %25, %24
  store i64 %and3.i16, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i17 = add i32 %27, -1
  store i32 %dec.i17, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i17)
  %cmp.i20 = icmp slt i32 %dec.i17, 1
  br i1 %cmp.i20, label %if.then.i21, label %amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge

amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge: ; preds = %amdgpu_ring_write.exit18
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit31

if.then.i21:                                      ; preds = %amdgpu_ring_write.exit18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit31

amdgpu_ring_write.exit31:                         ; preds = %if.then.i21, %amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i24 = add i64 %31, 1
  store i64 %inc.i24, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i26 = and i32 %33, %34
  %arrayidx.i27 = getelementptr i32, ptr %29, i32 %idxprom.i26
  %35 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 15301, ptr %arrayidx.i27, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i29 = and i64 %38, %37
  store i64 %and3.i29, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i30 = add i32 %40, -1
  store i32 %dec.i30, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i30)
  %cmp.i33 = icmp slt i32 %dec.i30, 1
  br i1 %cmp.i33, label %if.then.i34, label %amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge

amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge: ; preds = %amdgpu_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit44

if.then.i34:                                      ; preds = %amdgpu_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit44

amdgpu_ring_write.exit44:                         ; preds = %if.then.i34, %amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i37 = add i64 %44, 1
  store i64 %inc.i37, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i39 = and i32 %46, %47
  %arrayidx.i40 = getelementptr i32, ptr %42, i32 %idxprom.i39
  %48 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %val, ptr %arrayidx.i40, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i42 = and i64 %51, %50
  store i64 %and3.i42, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i43 = add i32 %53, -1
  store i32 %dec.i43, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i43)
  %cmp.i46 = icmp slt i32 %dec.i43, 1
  br i1 %cmp.i46, label %if.then.i47, label %amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge

amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge: ; preds = %amdgpu_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit57

if.then.i47:                                      ; preds = %amdgpu_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit57

amdgpu_ring_write.exit57:                         ; preds = %if.then.i47, %amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i50 = add i64 %57, 1
  store i64 %inc.i50, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i52 = and i32 %59, %60
  %arrayidx.i53 = getelementptr i32, ptr %55, i32 %idxprom.i52
  %61 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 15299, ptr %arrayidx.i53, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i55 = and i64 %64, %63
  store i64 %and3.i55, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i56 = add i32 %66, -1
  store i32 %dec.i56, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i56)
  %cmp.i59 = icmp slt i32 %dec.i56, 1
  br i1 %cmp.i59, label %if.then.i60, label %amdgpu_ring_write.exit57.amdgpu_ring_write.exit70_crit_edge

amdgpu_ring_write.exit57.amdgpu_ring_write.exit70_crit_edge: ; preds = %amdgpu_ring_write.exit57
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit70

if.then.i60:                                      ; preds = %amdgpu_ring_write.exit57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit70

amdgpu_ring_write.exit70:                         ; preds = %if.then.i60, %amdgpu_ring_write.exit57.amdgpu_ring_write.exit70_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i63 = add i64 %70, 1
  store i64 %inc.i63, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i65 = and i32 %72, %73
  %arrayidx.i66 = getelementptr i32, ptr %68, i32 %idxprom.i65
  %74 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 8, ptr %arrayidx.i66, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i68 = and i64 %77, %76
  store i64 %and3.i68, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i69 = add i32 %79, -1
  store i32 %dec.i69, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_ring_parse_cs(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @uvd_v6_0_enc_ring_get_rptr(ptr noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %ring_enc = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 7, i32 0, i32 5
  %cmp = icmp eq ptr %ring_enc, %ring
  %. = select i1 %cmp, i32 15401, i32 15396
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %., i32 noundef 0) #8
  %retval.0 = zext i32 %call2 to i64
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @uvd_v6_0_enc_ring_get_wptr(ptr noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %ring_enc = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 7, i32 0, i32 5
  %cmp = icmp eq ptr %ring_enc, %ring
  %. = select i1 %cmp, i32 15402, i32 15397
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %., i32 noundef 0) #8
  %retval.0 = zext i32 %call2 to i64
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_enc_ring_set_wptr(ptr noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %ring_enc = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 7, i32 0, i32 5
  %cmp = icmp eq ptr %ring_enc, %ring
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %3 to i32
  %. = select i1 %cmp, i32 15402, i32 15397
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %., i32 noundef %conv, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_enc_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vmid1 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %0 = ptrtoint ptr %vmid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vmid1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end.amdgpu_ring_write.exit_crit_edge

cond.end.amdgpu_ring_write.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %cond.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %7, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %8 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_mask.i, align 8
  %10 = trunc i64 %7 to i32
  %idxprom.i = and i32 %9, %10
  %arrayidx.i = getelementptr i32, ptr %5, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 258, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %12 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ptr_mask.i, align 8
  %14 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %14, %13
  store i64 %and3.i, ptr %wptr.i, align 8
  %15 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i13 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i13, label %if.then.i14, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit24_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit24_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit24

if.then.i14:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit24

amdgpu_ring_write.exit24:                         ; preds = %if.then.i14, %amdgpu_ring_write.exit.amdgpu_ring_write.exit24_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i17 = add i64 %20, 1
  store i64 %inc.i17, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i19 = and i32 %22, %23
  %arrayidx.i20 = getelementptr i32, ptr %18, i32 %idxprom.i19
  %24 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %cond, ptr %arrayidx.i20, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i22 = and i64 %27, %26
  store i64 %and3.i22, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i23 = add i32 %29, -1
  store i32 %dec.i23, ptr %count_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %30 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i23)
  %cmp.i26 = icmp slt i32 %dec.i23, 1
  br i1 %cmp.i26, label %if.then.i27, label %amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge

amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge: ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit37

if.then.i27:                                      ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit37

amdgpu_ring_write.exit37:                         ; preds = %if.then.i27, %amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 4
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wptr.i, align 8
  %inc.i30 = add i64 %35, 1
  store i64 %inc.i30, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_mask.i, align 8
  %38 = trunc i64 %35 to i32
  %idxprom.i32 = and i32 %37, %38
  %arrayidx.i33 = getelementptr i32, ptr %33, i32 %idxprom.i32
  %39 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %conv, ptr %arrayidx.i33, align 4
  %40 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ptr_mask.i, align 8
  %42 = load i64, ptr %wptr.i, align 8
  %and3.i35 = and i64 %42, %41
  store i64 %and3.i35, ptr %wptr.i, align 8
  %43 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count_dw.i, align 8
  %dec.i36 = add i32 %44, -1
  store i32 %dec.i36, ptr %count_dw.i, align 8
  %45 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %46, 32
  %conv4 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i36)
  %cmp.i39 = icmp slt i32 %dec.i36, 1
  br i1 %cmp.i39, label %if.then.i40, label %amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge

amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge: ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit50

if.then.i40:                                      ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit50

amdgpu_ring_write.exit50:                         ; preds = %if.then.i40, %amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge
  %47 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring1.i, align 4
  %49 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wptr.i, align 8
  %inc.i43 = add i64 %50, 1
  store i64 %inc.i43, ptr %wptr.i, align 8
  %51 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_mask.i, align 8
  %53 = trunc i64 %50 to i32
  %idxprom.i45 = and i32 %52, %53
  %arrayidx.i46 = getelementptr i32, ptr %48, i32 %idxprom.i45
  %54 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %conv4, ptr %arrayidx.i46, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ptr_mask.i, align 8
  %57 = load i64, ptr %wptr.i, align 8
  %and3.i48 = and i64 %57, %56
  store i64 %and3.i48, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 8
  %dec.i49 = add i32 %59, -1
  store i32 %dec.i49, ptr %count_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %60 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i49)
  %cmp.i52 = icmp slt i32 %dec.i49, 1
  br i1 %cmp.i52, label %if.then.i53, label %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge

amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge: ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit63

if.then.i53:                                      ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit63

amdgpu_ring_write.exit63:                         ; preds = %if.then.i53, %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge
  %62 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ring1.i, align 4
  %64 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %wptr.i, align 8
  %inc.i56 = add i64 %65, 1
  store i64 %inc.i56, ptr %wptr.i, align 8
  %66 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buf_mask.i, align 8
  %68 = trunc i64 %65 to i32
  %idxprom.i58 = and i32 %67, %68
  %arrayidx.i59 = getelementptr i32, ptr %63, i32 %idxprom.i58
  %69 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %61, ptr %arrayidx.i59, align 4
  %70 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %ptr_mask.i, align 8
  %72 = load i64, ptr %wptr.i, align 8
  %and3.i61 = and i64 %72, %71
  store i64 %and3.i61, ptr %wptr.i, align 8
  %73 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count_dw.i, align 8
  %dec.i62 = add i32 %74, -1
  store i32 %dec.i62, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_enc_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !85

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 954, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 3, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv = trunc i64 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i30 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i30, label %if.then.i31, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit41

if.then.i31:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit41

amdgpu_ring_write.exit41:                         ; preds = %if.then.i31, %amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i34 = add i64 %18, 1
  store i64 %inc.i34, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i36 = and i32 %20, %21
  %arrayidx.i37 = getelementptr i32, ptr %16, i32 %idxprom.i36
  %22 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i37, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i39 = and i64 %25, %24
  store i64 %and3.i39, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i40 = add i32 %27, -1
  store i32 %dec.i40, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv21 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i40)
  %cmp.i43 = icmp slt i32 %dec.i40, 1
  br i1 %cmp.i43, label %if.then.i44, label %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge

amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge: ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit54

if.then.i44:                                      ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit54

amdgpu_ring_write.exit54:                         ; preds = %if.then.i44, %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i47 = add i64 %31, 1
  store i64 %inc.i47, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i49 = and i32 %33, %34
  %arrayidx.i50 = getelementptr i32, ptr %29, i32 %idxprom.i49
  %35 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %conv21, ptr %arrayidx.i50, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i52 = and i64 %38, %37
  store i64 %and3.i52, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i53 = add i32 %40, -1
  store i32 %dec.i53, ptr %count_dw.i, align 8
  %conv22 = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i53)
  %cmp.i56 = icmp slt i32 %dec.i53, 1
  br i1 %cmp.i56, label %if.then.i57, label %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge

amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge: ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit67

amdgpu_ring_write.exit67:                         ; preds = %if.then.i57, %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i60 = add i64 %44, 1
  store i64 %inc.i60, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i62 = and i32 %46, %47
  %arrayidx.i63 = getelementptr i32, ptr %42, i32 %idxprom.i62
  %48 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv22, ptr %arrayidx.i63, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i65 = and i64 %51, %50
  store i64 %and3.i65, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i66 = add i32 %53, -1
  store i32 %dec.i66, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i66)
  %cmp.i69 = icmp slt i32 %dec.i66, 1
  br i1 %cmp.i69, label %if.then.i70, label %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge

amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge: ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit80

amdgpu_ring_write.exit80:                         ; preds = %if.then.i70, %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i73 = add i64 %57, 1
  store i64 %inc.i73, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i75 = and i32 %59, %60
  %arrayidx.i76 = getelementptr i32, ptr %55, i32 %idxprom.i75
  %61 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 4, ptr %arrayidx.i76, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i78 = and i64 %64, %63
  store i64 %and3.i78, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i79 = add i32 %66, -1
  store i32 %dec.i79, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_enc_ring_emit_pipeline_sync(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_drv = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2
  %sync_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %sync_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_seq, align 4
  %2 = ptrtoint ptr %fence_drv to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fence_drv, align 8
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %9, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %10 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_mask.i, align 8
  %12 = trunc i64 %9 to i32
  %idxprom.i = and i32 %11, %12
  %arrayidx.i = getelementptr i32, ptr %7, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 262, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %14 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ptr_mask.i, align 8
  %16 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %16, %15
  store i64 %and3.i, ptr %wptr.i, align 8
  %17 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i11 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i11, label %if.then.i12, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit22

if.then.i12:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit22

amdgpu_ring_write.exit22:                         ; preds = %if.then.i12, %amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge
  %19 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring1.i, align 4
  %21 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %wptr.i, align 8
  %inc.i15 = add i64 %22, 1
  store i64 %inc.i15, ptr %wptr.i, align 8
  %23 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_mask.i, align 8
  %25 = trunc i64 %22 to i32
  %idxprom.i17 = and i32 %24, %25
  %arrayidx.i18 = getelementptr i32, ptr %20, i32 %idxprom.i17
  %26 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %conv, ptr %arrayidx.i18, align 4
  %27 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ptr_mask.i, align 8
  %29 = load i64, ptr %wptr.i, align 8
  %and3.i20 = and i64 %29, %28
  store i64 %and3.i20, ptr %wptr.i, align 8
  %30 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count_dw.i, align 8
  %dec.i21 = add i32 %31, -1
  store i32 %dec.i21, ptr %count_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv3 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i21)
  %cmp.i24 = icmp slt i32 %dec.i21, 1
  br i1 %cmp.i24, label %if.then.i25, label %amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge

amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge: ; preds = %amdgpu_ring_write.exit22
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit35

if.then.i25:                                      ; preds = %amdgpu_ring_write.exit22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit35

amdgpu_ring_write.exit35:                         ; preds = %if.then.i25, %amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 4
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wptr.i, align 8
  %inc.i28 = add i64 %35, 1
  store i64 %inc.i28, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_mask.i, align 8
  %38 = trunc i64 %35 to i32
  %idxprom.i30 = and i32 %37, %38
  %arrayidx.i31 = getelementptr i32, ptr %33, i32 %idxprom.i30
  %39 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %conv3, ptr %arrayidx.i31, align 4
  %40 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ptr_mask.i, align 8
  %42 = load i64, ptr %wptr.i, align 8
  %and3.i33 = and i64 %42, %41
  store i64 %and3.i33, ptr %wptr.i, align 8
  %43 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count_dw.i, align 8
  %dec.i34 = add i32 %44, -1
  store i32 %dec.i34, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i34)
  %cmp.i37 = icmp slt i32 %dec.i34, 1
  br i1 %cmp.i37, label %if.then.i38, label %amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge

amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge: ; preds = %amdgpu_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit48

if.then.i38:                                      ; preds = %amdgpu_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit48

amdgpu_ring_write.exit48:                         ; preds = %if.then.i38, %amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 4
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %wptr.i, align 8
  %inc.i41 = add i64 %48, 1
  store i64 %inc.i41, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_mask.i, align 8
  %51 = trunc i64 %48 to i32
  %idxprom.i43 = and i32 %50, %51
  %arrayidx.i44 = getelementptr i32, ptr %46, i32 %idxprom.i43
  %52 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %1, ptr %arrayidx.i44, align 4
  %53 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ptr_mask.i, align 8
  %55 = load i64, ptr %wptr.i, align 8
  %and3.i46 = and i64 %55, %54
  store i64 %and3.i46, ptr %wptr.i, align 8
  %56 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count_dw.i, align 8
  %dec.i47 = add i32 %57, -1
  store i32 %dec.i47, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_enc_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 263, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i7 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i7, label %if.then.i8, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit18

if.then.i8:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit18

amdgpu_ring_write.exit18:                         ; preds = %if.then.i8, %amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i11 = add i64 %18, 1
  store i64 %inc.i11, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i13 = and i32 %20, %21
  %arrayidx.i14 = getelementptr i32, ptr %16, i32 %idxprom.i13
  %22 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %vmid, ptr %arrayidx.i14, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i16 = and i64 %25, %24
  store i64 %and3.i16, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i17 = add i32 %27, -1
  store i32 %dec.i17, ptr %count_dw.i, align 8
  %shr = lshr i64 %pd_addr, 12
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i17)
  %cmp.i20 = icmp slt i32 %dec.i17, 1
  br i1 %cmp.i20, label %if.then.i21, label %amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge

amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge: ; preds = %amdgpu_ring_write.exit18
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit31

if.then.i21:                                      ; preds = %amdgpu_ring_write.exit18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit31

amdgpu_ring_write.exit31:                         ; preds = %if.then.i21, %amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i24 = add i64 %31, 1
  store i64 %inc.i24, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i26 = and i32 %33, %34
  %arrayidx.i27 = getelementptr i32, ptr %29, i32 %idxprom.i26
  %35 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %conv, ptr %arrayidx.i27, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i29 = and i64 %38, %37
  store i64 %and3.i29, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i30 = add i32 %40, -1
  store i32 %dec.i30, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i30)
  %cmp.i33 = icmp slt i32 %dec.i30, 1
  br i1 %cmp.i33, label %if.then.i34, label %amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge

amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge: ; preds = %amdgpu_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit44

if.then.i34:                                      ; preds = %amdgpu_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit44

amdgpu_ring_write.exit44:                         ; preds = %if.then.i34, %amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i37 = add i64 %44, 1
  store i64 %inc.i37, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i39 = and i32 %46, %47
  %arrayidx.i40 = getelementptr i32, ptr %42, i32 %idxprom.i39
  %48 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 264, ptr %arrayidx.i40, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i42 = and i64 %51, %50
  store i64 %and3.i42, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i43 = add i32 %53, -1
  store i32 %dec.i43, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i43)
  %cmp.i46 = icmp slt i32 %dec.i43, 1
  br i1 %cmp.i46, label %if.then.i47, label %amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge

amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge: ; preds = %amdgpu_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit57

if.then.i47:                                      ; preds = %amdgpu_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit57

amdgpu_ring_write.exit57:                         ; preds = %if.then.i47, %amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i50 = add i64 %57, 1
  store i64 %inc.i50, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i52 = and i32 %59, %60
  %arrayidx.i53 = getelementptr i32, ptr %55, i32 %idxprom.i52
  %61 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %vmid, ptr %arrayidx.i53, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i55 = and i64 %64, %63
  store i64 %and3.i55, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i56 = add i32 %66, -1
  store i32 %dec.i56, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_enc_ring_test_ring(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %get_rptr = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %get_rptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_rptr, align 4
  %call2 = tail call i64 %5(ptr noundef %ring) #8
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %10 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %12 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_mask.i, align 8
  %14 = trunc i64 %11 to i32
  %idxprom.i = and i32 %13, %14
  %arrayidx.i = getelementptr i32, ptr %9, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %16 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ptr_mask.i, align 8
  %18 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %18, %17
  store i64 %and3.i, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring) #8
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp32.not = icmp eq i32 %22, 0
  br i1 %cmp32.not, label %amdgpu_ring_write.exit.for.end_crit_edge, label %for.body.lr.ph

amdgpu_ring_write.exit.for.end_crit_edge:         ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %amdgpu_ring_write.exit
  %conv7 = and i64 %call2, 4294967295
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %23 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %funcs, align 4
  %get_rptr5 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %get_rptr5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_rptr5, align 4
  %call6 = tail call i64 %26(ptr noundef %ring) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call6, i64 %conv7)
  %cmp8.not = icmp eq i64 %call6, %conv7
  br i1 %cmp8.not, label %if.end11, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end11:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #8
  %inc = add nuw i32 %i.033, 1
  %28 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %for.body.for.end_crit_edge, %amdgpu_ring_write.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %amdgpu_ring_write.exit.for.end_crit_edge ], [ %i.033, %for.body.for.end_crit_edge ], [ %inc, %if.end11.for.end_crit_edge ]
  %30 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %31)
  %cmp13.not = icmp ult i32 %i.0.lcssa, %31
  %spec.select = select i1 %cmp13.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_enc_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) #0 align 64 {
entry:
  %job.i18 = alloca ptr, align 4
  %f.i19 = alloca ptr, align 4
  %job.i = alloca ptr, align 4
  %f.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %ib_bo = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 15
  %2 = ptrtoint ptr %ib_bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ib_bo, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job.i) #8
  %4 = ptrtoint ptr %job.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %job.i, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f.i) #8
  %5 = ptrtoint ptr %f.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %f.i, align 4
  %call.i = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %1, i32 noundef 64, i32 noundef 2, ptr noundef nonnull %job.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.uvd_v6_0_enc_get_create_msg.exit_crit_edge

entry.uvd_v6_0_enc_get_create_msg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %uvd_v6_0_enc_get_create_msg.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %job.i, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibs.i, align 4
  %call1.i = call i64 @amdgpu_bo_gpu_offset(ptr noundef %3) #8
  %length_dw.i = getelementptr inbounds %struct.amdgpu_ib, ptr %9, i32 0, i32 1
  %ptr.i = getelementptr inbounds %struct.amdgpu_ib, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptr.i, align 8
  %12 = ptrtoint ptr %length_dw.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %length_dw.i, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 24, ptr %11, align 4
  %14 = load ptr, ptr %ptr.i, align 8
  %15 = load i32, ptr %length_dw.i, align 4
  %inc6.i = add i32 %15, 1
  store i32 %inc6.i, ptr %length_dw.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arrayidx7.i, align 4
  %17 = load ptr, ptr %ptr.i, align 8
  %18 = load i32, ptr %length_dw.i, align 4
  %inc10.i = add i32 %18, 1
  store i32 %inc10.i, ptr %length_dw.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx11.i, align 4
  %20 = load ptr, ptr %ptr.i, align 8
  %21 = load i32, ptr %length_dw.i, align 4
  %inc14.i = add i32 %21, 1
  store i32 %inc14.i, ptr %length_dw.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %20, i32 %21
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65536, ptr %arrayidx15.i, align 4
  %shr.i = lshr i64 %call1.i, 32
  %conv.i = trunc i64 %shr.i to i32
  %23 = load ptr, ptr %ptr.i, align 8
  %24 = load i32, ptr %length_dw.i, align 4
  %inc19.i = add i32 %24, 1
  store i32 %inc19.i, ptr %length_dw.i, align 4
  %arrayidx20.i = getelementptr i32, ptr %23, i32 %24
  %25 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i, ptr %arrayidx20.i, align 4
  %conv21.i = trunc i64 %call1.i to i32
  %26 = load ptr, ptr %ptr.i, align 8
  %27 = load i32, ptr %length_dw.i, align 4
  %inc24.i = add i32 %27, 1
  store i32 %inc24.i, ptr %length_dw.i, align 4
  %arrayidx25.i = getelementptr i32, ptr %26, i32 %27
  %28 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv21.i, ptr %arrayidx25.i, align 4
  %29 = load ptr, ptr %ptr.i, align 8
  %30 = load i32, ptr %length_dw.i, align 4
  %inc28.i = add i32 %30, 1
  store i32 %inc28.i, ptr %length_dw.i, align 4
  %arrayidx29.i = getelementptr i32, ptr %29, i32 %30
  %31 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 20, ptr %arrayidx29.i, align 4
  %32 = load ptr, ptr %ptr.i, align 8
  %33 = load i32, ptr %length_dw.i, align 4
  %inc32.i = add i32 %33, 1
  store i32 %inc32.i, ptr %length_dw.i, align 4
  %arrayidx33.i = getelementptr i32, ptr %32, i32 %33
  %34 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %arrayidx33.i, align 4
  %35 = load ptr, ptr %ptr.i, align 8
  %36 = load i32, ptr %length_dw.i, align 4
  %inc36.i = add i32 %36, 1
  store i32 %inc36.i, ptr %length_dw.i, align 4
  %arrayidx37.i = getelementptr i32, ptr %35, i32 %36
  %37 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 28, ptr %arrayidx37.i, align 4
  %38 = load ptr, ptr %ptr.i, align 8
  %39 = load i32, ptr %length_dw.i, align 4
  %inc40.i = add i32 %39, 1
  store i32 %inc40.i, ptr %length_dw.i, align 4
  %arrayidx41.i = getelementptr i32, ptr %38, i32 %39
  %40 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %arrayidx41.i, align 4
  %41 = load ptr, ptr %ptr.i, align 8
  %42 = load i32, ptr %length_dw.i, align 4
  %inc44.i = add i32 %42, 1
  store i32 %inc44.i, ptr %length_dw.i, align 4
  %arrayidx45.i = getelementptr i32, ptr %41, i32 %42
  %43 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx45.i, align 4
  %44 = load ptr, ptr %ptr.i, align 8
  %45 = load i32, ptr %length_dw.i, align 4
  %inc48.i = add i32 %45, 1
  store i32 %inc48.i, ptr %length_dw.i, align 4
  %arrayidx49.i = getelementptr i32, ptr %44, i32 %45
  %46 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8, ptr %arrayidx49.i, align 4
  %47 = load ptr, ptr %ptr.i, align 8
  %48 = load i32, ptr %length_dw.i, align 4
  %inc52.i = add i32 %48, 1
  store i32 %inc52.i, ptr %length_dw.i, align 4
  %arrayidx53.i = getelementptr i32, ptr %47, i32 %48
  %49 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 134217729, ptr %arrayidx53.i, align 4
  %50 = load i32, ptr %length_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %50)
  %cmp1.i = icmp ult i32 %50, 16
  br i1 %cmp1.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc58.i, %for.body.i.for.body.i_crit_edge ], [ %50, %if.end.i.for.body.i_crit_edge ]
  %51 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ptr.i, align 8
  %arrayidx57.i = getelementptr i32, ptr %52, i32 %i.02.i
  %53 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx57.i, align 4
  %inc58.i = add i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc58.i, 16
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %54 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %job.i, align 4
  %call59.i = call i32 @amdgpu_job_submit_direct(ptr noundef %55, ptr noundef %ring, ptr noundef nonnull %f.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end66.i, label %err.i

if.end66.i:                                       ; preds = %for.end.i
  %56 = ptrtoint ptr %f.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %f.i, align 4
  %tobool.not.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i, label %if.end66.i.if.end_crit_edge, label %if.then.i.i

if.end66.i.if.end_crit_edge:                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i.i:                                      ; preds = %if.end66.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %57, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !85

if.end5.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #8
  br label %if.end

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !90
  call void @dma_fence_release(ptr noundef %refcount.i.i) #8
  br label %if.end

err.i:                                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %job.i, align 4
  call void @amdgpu_job_free(ptr noundef %60) #8
  br label %uvd_v6_0_enc_get_create_msg.exit

uvd_v6_0_enc_get_create_msg.exit:                 ; preds = %err.i, %entry.uvd_v6_0_enc_get_create_msg.exit_crit_edge
  %retval.0.i = phi i32 [ %call59.i, %err.i ], [ %call.i, %entry.uvd_v6_0_enc_get_create_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i) #8
  br label %dma_fence_put.exit

if.end:                                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end_crit_edge, %if.end66.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job.i18) #8
  %61 = ptrtoint ptr %job.i18 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %job.i18, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f.i19) #8
  %62 = ptrtoint ptr %f.i19 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %f.i19, align 4
  %63 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ring, align 8
  %call.i20 = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %64, i32 noundef 64, i32 noundef 2, ptr noundef nonnull %job.i18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i53, label %if.end.uvd_v6_0_enc_get_destroy_msg.exit_crit_edge

if.end.uvd_v6_0_enc_get_destroy_msg.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %uvd_v6_0_enc_get_destroy_msg.exit

if.end.i53:                                       ; preds = %if.end
  %65 = ptrtoint ptr %job.i18 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %job.i18, align 4
  %ibs.i22 = getelementptr inbounds %struct.amdgpu_job, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %ibs.i22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ibs.i22, align 4
  %call1.i23 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %3) #8
  %length_dw.i24 = getelementptr inbounds %struct.amdgpu_ib, ptr %68, i32 0, i32 1
  %ptr.i25 = getelementptr inbounds %struct.amdgpu_ib, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %ptr.i25 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ptr.i25, align 8
  %71 = ptrtoint ptr %length_dw.i24 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %length_dw.i24, align 4
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 24, ptr %70, align 4
  %73 = load ptr, ptr %ptr.i25, align 8
  %74 = load i32, ptr %length_dw.i24, align 4
  %inc6.i26 = add i32 %74, 1
  store i32 %inc6.i26, ptr %length_dw.i24, align 4
  %arrayidx7.i27 = getelementptr i32, ptr %73, i32 %74
  %75 = ptrtoint ptr %arrayidx7.i27 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %arrayidx7.i27, align 4
  %76 = load ptr, ptr %ptr.i25, align 8
  %77 = load i32, ptr %length_dw.i24, align 4
  %inc10.i28 = add i32 %77, 1
  store i32 %inc10.i28, ptr %length_dw.i24, align 4
  %arrayidx11.i29 = getelementptr i32, ptr %76, i32 %77
  %78 = ptrtoint ptr %arrayidx11.i29 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %arrayidx11.i29, align 4
  %79 = load ptr, ptr %ptr.i25, align 8
  %80 = load i32, ptr %length_dw.i24, align 4
  %inc14.i30 = add i32 %80, 1
  store i32 %inc14.i30, ptr %length_dw.i24, align 4
  %arrayidx15.i31 = getelementptr i32, ptr %79, i32 %80
  %81 = ptrtoint ptr %arrayidx15.i31 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 65536, ptr %arrayidx15.i31, align 4
  %shr.i32 = lshr i64 %call1.i23, 32
  %conv.i33 = trunc i64 %shr.i32 to i32
  %82 = load ptr, ptr %ptr.i25, align 8
  %83 = load i32, ptr %length_dw.i24, align 4
  %inc19.i34 = add i32 %83, 1
  store i32 %inc19.i34, ptr %length_dw.i24, align 4
  %arrayidx20.i35 = getelementptr i32, ptr %82, i32 %83
  %84 = ptrtoint ptr %arrayidx20.i35 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv.i33, ptr %arrayidx20.i35, align 4
  %conv21.i36 = trunc i64 %call1.i23 to i32
  %85 = load ptr, ptr %ptr.i25, align 8
  %86 = load i32, ptr %length_dw.i24, align 4
  %inc24.i37 = add i32 %86, 1
  store i32 %inc24.i37, ptr %length_dw.i24, align 4
  %arrayidx25.i38 = getelementptr i32, ptr %85, i32 %86
  %87 = ptrtoint ptr %arrayidx25.i38 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv21.i36, ptr %arrayidx25.i38, align 4
  %88 = load ptr, ptr %ptr.i25, align 8
  %89 = load i32, ptr %length_dw.i24, align 4
  %inc28.i39 = add i32 %89, 1
  store i32 %inc28.i39, ptr %length_dw.i24, align 4
  %arrayidx29.i40 = getelementptr i32, ptr %88, i32 %89
  %90 = ptrtoint ptr %arrayidx29.i40 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 20, ptr %arrayidx29.i40, align 4
  %91 = load ptr, ptr %ptr.i25, align 8
  %92 = load i32, ptr %length_dw.i24, align 4
  %inc32.i41 = add i32 %92, 1
  store i32 %inc32.i41, ptr %length_dw.i24, align 4
  %arrayidx33.i42 = getelementptr i32, ptr %91, i32 %92
  %93 = ptrtoint ptr %arrayidx33.i42 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %arrayidx33.i42, align 4
  %94 = load ptr, ptr %ptr.i25, align 8
  %95 = load i32, ptr %length_dw.i24, align 4
  %inc36.i43 = add i32 %95, 1
  store i32 %inc36.i43, ptr %length_dw.i24, align 4
  %arrayidx37.i44 = getelementptr i32, ptr %94, i32 %95
  %96 = ptrtoint ptr %arrayidx37.i44 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 28, ptr %arrayidx37.i44, align 4
  %97 = load ptr, ptr %ptr.i25, align 8
  %98 = load i32, ptr %length_dw.i24, align 4
  %inc40.i45 = add i32 %98, 1
  store i32 %inc40.i45, ptr %length_dw.i24, align 4
  %arrayidx41.i46 = getelementptr i32, ptr %97, i32 %98
  %99 = ptrtoint ptr %arrayidx41.i46 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %arrayidx41.i46, align 4
  %100 = load ptr, ptr %ptr.i25, align 8
  %101 = load i32, ptr %length_dw.i24, align 4
  %inc44.i47 = add i32 %101, 1
  store i32 %inc44.i47, ptr %length_dw.i24, align 4
  %arrayidx45.i48 = getelementptr i32, ptr %100, i32 %101
  %102 = ptrtoint ptr %arrayidx45.i48 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %arrayidx45.i48, align 4
  %103 = load ptr, ptr %ptr.i25, align 8
  %104 = load i32, ptr %length_dw.i24, align 4
  %inc48.i49 = add i32 %104, 1
  store i32 %inc48.i49, ptr %length_dw.i24, align 4
  %arrayidx49.i50 = getelementptr i32, ptr %103, i32 %104
  %105 = ptrtoint ptr %arrayidx49.i50 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 8, ptr %arrayidx49.i50, align 4
  %106 = load ptr, ptr %ptr.i25, align 8
  %107 = load i32, ptr %length_dw.i24, align 4
  %inc52.i51 = add i32 %107, 1
  store i32 %inc52.i51, ptr %length_dw.i24, align 4
  %arrayidx53.i52 = getelementptr i32, ptr %106, i32 %107
  %108 = ptrtoint ptr %arrayidx53.i52 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 134217730, ptr %arrayidx53.i52, align 4
  %109 = load i32, ptr %length_dw.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %109)
  %cmp6.i = icmp ult i32 %109, 16
  br i1 %cmp6.i, label %if.end.i53.for.body.i57_crit_edge, label %if.end.i53.for.end.i60_crit_edge

if.end.i53.for.end.i60_crit_edge:                 ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i60

if.end.i53.for.body.i57_crit_edge:                ; preds = %if.end.i53
  br label %for.body.i57

for.body.i57:                                     ; preds = %for.body.i57.for.body.i57_crit_edge, %if.end.i53.for.body.i57_crit_edge
  %i.07.i = phi i32 [ %inc58.i55, %for.body.i57.for.body.i57_crit_edge ], [ %109, %if.end.i53.for.body.i57_crit_edge ]
  %110 = ptrtoint ptr %ptr.i25 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ptr.i25, align 8
  %arrayidx57.i54 = getelementptr i32, ptr %111, i32 %i.07.i
  %112 = ptrtoint ptr %arrayidx57.i54 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %arrayidx57.i54, align 4
  %inc58.i55 = add i32 %i.07.i, 1
  %exitcond.not.i56 = icmp eq i32 %inc58.i55, 16
  br i1 %exitcond.not.i56, label %for.body.i57.for.end.i60_crit_edge, label %for.body.i57.for.body.i57_crit_edge

for.body.i57.for.body.i57_crit_edge:              ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i57

for.body.i57.for.end.i60_crit_edge:               ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i60

for.end.i60:                                      ; preds = %for.body.i57.for.end.i60_crit_edge, %if.end.i53.for.end.i60_crit_edge
  %113 = ptrtoint ptr %job.i18 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %job.i18, align 4
  %call59.i58 = call i32 @amdgpu_job_submit_direct(ptr noundef %114, ptr noundef %ring, ptr noundef nonnull %f.i19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i58)
  %tobool60.not.i59 = icmp eq i32 %call59.i58, 0
  br i1 %tobool60.not.i59, label %if.end62.i, label %err.i72

if.end62.i:                                       ; preds = %for.end.i60
  %115 = ptrtoint ptr %f.i19 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %f.i19, align 4
  %tobool.not.i.i61 = icmp eq ptr %116, null
  br i1 %tobool.not.i.i61, label %if.end62.i.error_crit_edge, label %if.then.i.i64

if.end62.i.error_crit_edge:                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then.i.i64:                                    ; preds = %if.end62.i
  %refcount.i.i62 = getelementptr inbounds %struct.dma_fence, ptr %116, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i63 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i62, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcount.i.i62, i32 1, i32 3, i32 1) #8
  %117 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i62, ptr %refcount.i.i62, i32 1, ptr elementtype(i32) %refcount.i.i62) #8, !srcloc !91
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i64.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !86

if.then.i.i64.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i64
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %118 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %.not.i.i.i.i.i.i65 = icmp sgt i32 %118, -1
  br i1 %.not.i.i.i.i.i.i65, label %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !85

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i64.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i64.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i62, i32 noundef %.sink.i.i.i.i.i.i) #8
  br label %dma_fence_get.exit.i

dma_fence_get.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge
  %119 = ptrtoint ptr %f.i19 to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pr = load ptr, ptr %f.i19, align 4
  %tobool.not.i1.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i1.i, label %dma_fence_get.exit.i.error_crit_edge, label %if.then.i4.i

dma_fence_get.exit.i.error_crit_edge:             ; preds = %dma_fence_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then.i4.i:                                     ; preds = %dma_fence_get.exit.i
  %refcount.i2.i = getelementptr inbounds %struct.dma_fence, ptr %.pr, i32 0, i32 6
  %call.i.i.i.i.i.i.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i2.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  call void @llvm.prefetch.p0(ptr %refcount.i2.i, i32 1, i32 3, i32 1) #8
  %120 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i2.i, ptr %refcount.i2.i, i32 1, ptr elementtype(i32) %refcount.i2.i) #8, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i67 = extractvalue { i32, i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i67)
  %cmp.i.i.i.i.i.i68 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i67, 1
  br i1 %cmp.i.i.i.i.i.i68, label %if.then.i.i.i71, label %if.end5.i.i.i.i.i.i69

if.end5.i.i.i.i.i.i69:                            ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i67)
  %.not.i.i.i.i.i5.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i67, 0
  br i1 %.not.i.i.i.i.i5.i, label %if.end5.i.i.i.i.i.i69.error_crit_edge, label %if.then10.i.i.i.i.i.i70, !prof !85

if.end5.i.i.i.i.i.i69.error_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then10.i.i.i.i.i.i70:                          ; preds = %if.end5.i.i.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i2.i, i32 noundef 3) #8
  br label %error

if.then.i.i.i71:                                  ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !90
  call void @dma_fence_release(ptr noundef %refcount.i2.i) #8
  br label %error

err.i72:                                          ; preds = %for.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %job.i18 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %job.i18, align 4
  call void @amdgpu_job_free(ptr noundef %122) #8
  br label %uvd_v6_0_enc_get_destroy_msg.exit

uvd_v6_0_enc_get_destroy_msg.exit:                ; preds = %err.i72, %if.end.uvd_v6_0_enc_get_destroy_msg.exit_crit_edge
  %retval.0.i73 = phi i32 [ %call59.i58, %err.i72 ], [ %call.i20, %if.end.uvd_v6_0_enc_get_destroy_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i18) #8
  br label %dma_fence_put.exit

error:                                            ; preds = %if.then.i.i.i71, %if.then10.i.i.i.i.i.i70, %if.end5.i.i.i.i.i.i69.error_crit_edge, %dma_fence_get.exit.i.error_crit_edge, %if.end62.i.error_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i18) #8
  %call5 = call i32 @dma_fence_wait_timeout(ptr noundef %116, i1 noundef zeroext false, i32 noundef %timeout) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  %123 = call i32 @llvm.smin.i32(i32 %call5, i32 0)
  %spec.select = select i1 %cmp, i32 -110, i32 %123
  br i1 %tobool.not.i.i61, label %error.dma_fence_put.exit_crit_edge, label %if.then.i

error.dma_fence_put.exit_crit_edge:               ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %error
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %116, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %124 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i75 = extractvalue { i32, i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i75)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i75, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i76, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i75)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i75, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !85

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %dma_fence_put.exit

if.then.i.i76:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !90
  call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i76, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %error.dma_fence_put.exit_crit_edge, %uvd_v6_0_enc_get_destroy_msg.exit, %uvd_v6_0_enc_get_create_msg.exit
  %r.089 = phi i32 [ %spec.select, %error.dma_fence_put.exit_crit_edge ], [ %spec.select, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge ], [ %spec.select, %if.then10.i.i.i.i.i ], [ %spec.select, %if.then.i.i76 ], [ %retval.0.i73, %uvd_v6_0_enc_get_destroy_msg.exit ], [ %retval.0.i, %uvd_v6_0_enc_get_create_msg.exit ]
  ret i32 %r.089
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_insert_nop(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v6_0_enc_ring_insert_end(ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_alloc_with_ib(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvd_v6_0_set_interrupt_state(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v6_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10) #8
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_id, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end30_crit_edge [
    i32 124, label %sw.bb
    i32 119, label %sw.bb2
    i32 120, label %sw.bb9
  ]

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 4
  %call = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %ring) #8
  br label %if.end30

sw.bb2:                                           ; preds = %entry
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %3 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_type.i, align 8
  %5 = add i32 %4, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %uvd_v6_0_enc_support.exit, label %sw.bb2.if.then27_crit_edge, !prof !92

sw.bb2.if.then27_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

uvd_v6_0_enc_support.exit:                        ; preds = %sw.bb2
  %fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 1
  %7 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_version.i, align 4
  %9 = add i32 %8, -25300992
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25300991, i32 %9)
  %10 = icmp ult i32 %9, -25300991
  br i1 %10, label %if.then, label %uvd_v6_0_enc_support.exit.if.then27_crit_edge, !prof !85

uvd_v6_0_enc_support.exit.if.then27_crit_edge:    ; preds = %uvd_v6_0_enc_support.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

if.then:                                          ; preds = %uvd_v6_0_enc_support.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ring_enc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 5
  %call8 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %ring_enc) #8
  br label %if.end30

sw.bb9:                                           ; preds = %entry
  %asic_type.i40 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %11 = ptrtoint ptr %asic_type.i40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asic_type.i40, align 8
  %13 = add i32 %12, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %uvd_v6_0_enc_support.exit43, label %sw.bb9.if.then27_crit_edge, !prof !92

sw.bb9.if.then27_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

uvd_v6_0_enc_support.exit43:                      ; preds = %sw.bb9
  %fw_version.i41 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 1
  %15 = ptrtoint ptr %fw_version.i41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_version.i41, align 4
  %17 = add i32 %16, -25300992
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25300991, i32 %17)
  %18 = icmp ult i32 %17, -25300991
  br i1 %18, label %if.then17, label %uvd_v6_0_enc_support.exit43.if.then27_crit_edge, !prof !85

uvd_v6_0_enc_support.exit43.if.then27_crit_edge:  ; preds = %uvd_v6_0_enc_support.exit43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

if.then17:                                        ; preds = %uvd_v6_0_enc_support.exit43
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx22 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 5, i32 1
  %call23 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %arrayidx22) #8
  br label %if.end30

if.then27:                                        ; preds = %uvd_v6_0_enc_support.exit43.if.then27_crit_edge, %sw.bb9.if.then27_crit_edge, %uvd_v6_0_enc_support.exit.if.then27_crit_edge, %sw.bb2.if.then27_crit_edge
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %19 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_data, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %1, i32 noundef %20) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then17, %if.then, %sw.bb, %entry.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_sw_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_entity_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_sw_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uvd_v6_0_stop(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15785, i32 noundef 285278465, i32 noundef 0) #8
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15677, i32 noundef 0) #8
  %or = or i32 %call, 256
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15677, i32 noundef %or, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 8, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15768, i32 noundef 0, i32 noundef 0) #8
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15677, i32 noundef 0) #8
  %and4 = and i32 %call3, -257
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15677, i32 noundef %and4, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15791, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_enable_uvd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvd_v6_0_start(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 14532, i32 noundef 0) #8
  %and = and i32 %call, -5
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 14532, i32 noundef %and, i32 noundef 0) #8
  %uvd.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 2
  %0 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gpu_addr.i, align 8
  %conv.i = trunc i64 %1 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15455, i32 noundef %conv.i, i32 noundef 0) #8
  %2 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gpu_addr.i, align 8
  %shr.i = lshr i64 %3, 32
  %conv6.i = trunc i64 %shr.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15454, i32 noundef %conv6.i, i32 noundef 0) #8
  %4 = ptrtoint ptr %uvd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uvd.i, align 8
  %data.i = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %ucode_size_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ucode_size_bytes.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %add8.i = add i32 %10, 4103
  %and9.i = and i32 %add8.i, -4096
  %sub.i = add i32 %and9.i, -256
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15746, i32 noundef 32, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15747, i32 noundef %sub.i, i32 noundef 0) #8
  %conv12.i = zext i32 %sub.i to i64
  %add13.i = add nuw nsw i64 %conv12.i, 256
  %shr14.i = lshr exact i64 %add13.i, 3
  %conv15.i = trunc i64 %shr14.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15748, i32 noundef %conv15.i, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15749, i32 noundef 262144, i32 noundef 0) #8
  %add17.i = add nuw nsw i64 %conv12.i, 262400
  %max_handles.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 2
  %11 = ptrtoint ptr %max_handles.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_handles.i, align 8
  %mul.i = mul i32 %12, 51200
  %add19.i = add i32 %mul.i, 204800
  %shr20.i = lshr exact i64 %add17.i, 3
  %conv21.i = trunc i64 %shr20.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15750, i32 noundef %conv21.i, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15751, i32 noundef %add19.i, i32 noundef 0) #8
  %gb_addr_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 23
  %13 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gb_addr_config.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15315, i32 noundef %14, i32 noundef 0) #8
  %15 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gb_addr_config.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15316, i32 noundef %16, i32 noundef 0) #8
  %17 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gb_addr_config.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15317, i32 noundef %18, i32 noundef 0) #8
  %19 = ptrtoint ptr %max_handles.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_handles.i, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15672, i32 noundef %20, i32 noundef 0) #8
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15680, i32 noundef 0) #8
  %and3 = and i32 %call2, -3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15680, i32 noundef %and3, i32 noundef 0) #8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15677, i32 noundef 0) #8
  %or7 = or i32 %call5, 256
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15677, i32 noundef %or7, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 8431, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #8
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 920, i32 noundef 0) #8
  %and9 = and i32 %call8, -262145
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 920, i32 noundef %and9, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15718, i32 noundef 3154752, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15725, i32 noundef 10, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15727, i32 noundef 0, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15737, i32 noundef 67903552, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15738, i32 noundef 0, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15739, i32 noundef 67903552, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15740, i32 noundef 0, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15742, i32 noundef 0, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15741, i32 noundef 136, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 8, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15768, i32 noundef 512, i32 noundef 0) #8
  %call23 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15677, i32 noundef 0) #8
  %and24 = and i32 %call23, -257
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15677, i32 noundef %and24, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 0, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #8
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %if.end47.for.cond32.preheader_crit_edge, %entry
  %i.0303 = phi i32 [ %inc67, %if.end47.for.cond32.preheader_crit_edge ], [ 0, %entry ]
  br label %for.body34

for.body34:                                       ; preds = %while.body42.preheader.for.body34_crit_edge, %for.cond32.preheader
  %j.0300 = phi i32 [ 0, %for.cond32.preheader ], [ %inc, %while.body42.preheader.for.body34_crit_edge ]
  %call35 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15791, i32 noundef 0) #8
  %and36 = and i32 %call35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %while.body42.preheader, label %do.body72

while.body42.preheader:                           ; preds = %for.body34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #8
  %inc = add nuw nsw i32 %j.0300, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end47, label %while.body42.preheader.for.body34_crit_edge

while.body42.preheader.for.body34_crit_edge:      ; preds = %while.body42.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body34

if.end47:                                         ; preds = %while.body42.preheader
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #8
  %call48 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 0) #8
  %or50 = or i32 %call48, 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef %or50, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #8
  %call57 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 0) #8
  %and58 = and i32 %call57, -9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef %and58, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #8
  %inc67 = add nuw nsw i32 %i.0303, 1
  %exitcond304.not = icmp eq i32 %inc67, 10
  br i1 %exitcond304.not, label %if.then70, label %if.end47.for.cond32.preheader_crit_edge

if.end47.for.cond32.preheader_crit_edge:          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond32.preheader

if.then70:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27) #8
  br label %cleanup182

do.body72:                                        ; preds = %for.body34
  %call74 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15680, i32 noundef 0) #8
  %or76 = or i32 %call74, 6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15680, i32 noundef %or76, i32 noundef 0) #8
  %call81 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15791, i32 noundef 0) #8
  %and82 = and i32 %call81, -5
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15791, i32 noundef %and82, i32 noundef 0) #8
  %ring_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 4, i32 9
  %77 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ring_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp.i = icmp ugt i32 %78, 1
  br i1 %cmp.i, label %cond.end9.i, label %do.body72.cond.end112_crit_edge

do.body72.cond.end112_crit_edge:                  ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end112

cond.end9.i:                                      ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i288 = add i32 %78, -1
  %79 = tail call i32 @llvm.ctlz.i32(i32 %sub.i288, i1 false) #8, !range !93
  %add.i = sub nsw i32 0, %79
  %phi.bo = and i32 %add.i, 31
  %phi.bo305 = or i32 %phi.bo, 285278464
  br label %cond.end112

cond.end112:                                      ; preds = %cond.end9.i, %do.body72.cond.end112_crit_edge
  %cond113 = phi i32 [ %phi.bo305, %cond.end9.i ], [ 285278464, %do.body72.cond.end112_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15785, i32 noundef %cond113, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15782, i32 noundef 0, i32 noundef 0) #8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 4, i32 12
  %80 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %gpu_addr, align 8
  %sum.shift = lshr i64 %81, 34
  %shr128283 = trunc i64 %sum.shift to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15786, i32 noundef %shr128283, i32 noundef 0) #8
  %82 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %gpu_addr, align 8
  %conv131 = trunc i64 %83 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15465, i32 noundef %conv131, i32 noundef 0) #8
  %84 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %gpu_addr, align 8
  %shr133 = lshr i64 %85, 32
  %conv135 = trunc i64 %shr133 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15464, i32 noundef %conv135, i32 noundef 0) #8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15780, i32 noundef 0, i32 noundef 0) #8
  %call136 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15780, i32 noundef 0) #8
  %conv137 = zext i32 %call136 to i64
  %wptr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 4, i32 7
  %86 = ptrtoint ptr %wptr to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv137, ptr %wptr, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15781, i32 noundef %call136, i32 noundef 0) #8
  %call141 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15785, i32 noundef 0) #8
  %and142 = and i32 %call141, -65537
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15785, i32 noundef %and142, i32 noundef 0) #8
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %87 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %asic_type.i, align 8
  %89 = add i32 %88, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %89)
  %90 = icmp ult i32 %89, 4
  br i1 %90, label %uvd_v6_0_enc_support.exit, label %cond.end112.cleanup182_crit_edge

cond.end112.cleanup182_crit_edge:                 ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup182

uvd_v6_0_enc_support.exit:                        ; preds = %cond.end112
  %fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 1
  %91 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fw_version.i, align 4
  %93 = add i32 %92, -25300992
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25300991, i32 %93)
  %94 = icmp ult i32 %93, -25300991
  br i1 %94, label %if.then145, label %uvd_v6_0_enc_support.exit.cleanup182_crit_edge

uvd_v6_0_enc_support.exit.cleanup182_crit_edge:   ; preds = %uvd_v6_0_enc_support.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup182

if.then145:                                       ; preds = %uvd_v6_0_enc_support.exit
  call void @__sanitizer_cov_trace_pc() #10
  %wptr149 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 5, i32 0, i32 7
  %95 = ptrtoint ptr %wptr149 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %wptr149, align 8
  %conv151 = trunc i64 %96 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15401, i32 noundef %conv151, i32 noundef 0) #8
  %97 = ptrtoint ptr %wptr149 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %wptr149, align 8
  %conv154 = trunc i64 %98 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15402, i32 noundef %conv154, i32 noundef 0) #8
  %gpu_addr155 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 5, i32 0, i32 12
  %99 = ptrtoint ptr %gpu_addr155 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %gpu_addr155, align 8
  %conv156 = trunc i64 %100 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15398, i32 noundef %conv156, i32 noundef 0) #8
  %101 = ptrtoint ptr %gpu_addr155 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %gpu_addr155, align 8
  %shr158 = lshr i64 %102, 32
  %conv160 = trunc i64 %shr158 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15399, i32 noundef %conv160, i32 noundef 0) #8
  %ring_size161 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 5, i32 0, i32 9
  %103 = ptrtoint ptr %ring_size161 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ring_size161, align 8
  %div284 = lshr i32 %104, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15400, i32 noundef %div284, i32 noundef 0) #8
  %wptr167 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 5, i32 1, i32 7
  %105 = ptrtoint ptr %wptr167 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %wptr167, align 8
  %conv169 = trunc i64 %106 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15396, i32 noundef %conv169, i32 noundef 0) #8
  %107 = ptrtoint ptr %wptr167 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %wptr167, align 8
  %conv172 = trunc i64 %108 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15397, i32 noundef %conv172, i32 noundef 0) #8
  %gpu_addr173 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 5, i32 1, i32 12
  %109 = ptrtoint ptr %gpu_addr173 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %gpu_addr173, align 8
  %conv174 = trunc i64 %110 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15393, i32 noundef %conv174, i32 noundef 0) #8
  %111 = ptrtoint ptr %gpu_addr173 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %gpu_addr173, align 8
  %shr176 = lshr i64 %112, 32
  %conv178 = trunc i64 %shr176 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15394, i32 noundef %conv178, i32 noundef 0) #8
  %ring_size179 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 5, i32 1, i32 9
  %113 = ptrtoint ptr %ring_size179 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ring_size179, align 8
  %div180285 = lshr i32 %114, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15395, i32 noundef %div180285, i32 noundef 0) #8
  br label %cleanup182

cleanup182:                                       ; preds = %if.then145, %uvd_v6_0_enc_support.exit.cleanup182_crit_edge, %cond.end112.cleanup182_crit_edge, %if.then70
  %retval.0 = phi i32 [ -1, %if.then70 ], [ 0, %if.then145 ], [ 0, %uvd_v6_0_enc_support.exit.cleanup182_crit_edge ], [ 0, %cond.end112.cleanup182_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !65, !66, !68, !70, !72, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @uvd_v6_0_ip_block, !1, !"uvd_v6_0_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1662, i32 38}
!2 = !{ptr @uvd_v6_2_ip_block, !3, !"uvd_v6_2_ip_block", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1671, i32 38}
!4 = !{ptr @uvd_v6_3_ip_block, !5, !"uvd_v6_3_ip_block", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1680, i32 38}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1524, i32 10}
!8 = !{ptr @uvd_v6_0_ip_funcs, !9, !"uvd_v6_0_ip_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1523, i32 34}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1630, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @uvd_v6_0_set_ring_funcs._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @uvd_v6_0_set_ring_funcs._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1633, i32 3}
!18 = !{ptr @uvd_v6_0_set_ring_funcs._entry.4, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @uvd_v6_0_set_ring_funcs._entry_ptr.6, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @uvd_v6_0_ring_vm_funcs, !21, !"uvd_v6_0_ring_vm_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1570, i32 39}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!24 = !{ptr @uvd_v6_0_ring_phys_funcs, !25, !"uvd_v6_0_ring_phys_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1544, i32 39}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1644, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @uvd_v6_0_set_enc_ring_funcs._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @uvd_v6_0_set_enc_ring_funcs._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @uvd_v6_0_enc_ring_vm_funcs, !32, !"uvd_v6_0_enc_ring_vm_funcs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1598, i32 39}
!33 = !{ptr @uvd_v6_0_irq_funcs, !34, !"uvd_v6_0_irq_funcs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1647, i32 42}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1250, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1271, i32 3}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 409, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @uvd_v6_0_sw_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @uvd_v6_0_sw_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 413, i32 22}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 426, i32 24}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 481, i32 3}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 518, i32 4}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @uvd_v6_0_hw_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @uvd_v6_0_hw_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 520, i32 4}
!57 = !{ptr @uvd_v6_0_hw_init._entry.19, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @uvd_v6_0_hw_init._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1207, i32 3}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @uvd_v6_0_soft_reset._entry, !60, !"_entry", i1 false, i1 false}
!65 = !{ptr @uvd_v6_0_soft_reset._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 811, i32 3}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 820, i32 3}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v6_0.c", i32 1510, i32 3}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @uvd_v6_0_get_clockgating_state._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @uvd_v6_0_get_clockgating_state._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i8 0, i8 2}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{!"auto-init"}
!88 = !{i64 2148692724}
!89 = !{i64 2148607164, i64 2148607196, i64 2148607225, i64 2148607259, i64 2148607290, i64 2148607313}
!90 = !{i64 2149890497}
!91 = !{i64 2148604699, i64 2148604731, i64 2148604760, i64 2148604794, i64 2148604825, i64 2148604848}
!92 = !{!"branch_weights", i32 2146410443, i32 1073205}
!93 = !{i32 0, i32 33}
