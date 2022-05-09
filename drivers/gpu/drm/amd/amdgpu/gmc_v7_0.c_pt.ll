; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c"
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
%struct.kfd_vm_fault_info = type { i64, i32, i32, i32, i8, i8, i8, i8 }

@__UNIQUE_ID_firmware343 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/bonaire_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/hawaii_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [36 x i8] c"amdgpu.firmware=amdgpu/topaz_mc.bin\00", section ".modinfo", align 1
@gmc_v7_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @gmc_v7_0_early_init, ptr @gmc_v7_0_late_init, ptr @gmc_v7_0_sw_init, ptr @gmc_v7_0_sw_fini, ptr null, ptr @gmc_v7_0_hw_init, ptr @gmc_v7_0_hw_fini, ptr null, ptr @gmc_v7_0_suspend, ptr @gmc_v7_0_resume, ptr @gmc_v7_0_is_idle, ptr @gmc_v7_0_wait_for_idle, ptr null, ptr null, ptr @gmc_v7_0_soft_reset, ptr null, ptr @gmc_v7_0_set_clockgating_state, ptr @gmc_v7_0_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gmc_v7_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 1, i32 7, i32 0, i32 0, ptr @gmc_v7_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@gmc_v7_4_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 1, i32 7, i32 4, i32 0, ptr @gmc_v7_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gmc_v7_0\00", [23 x i8] zeroinitializer }, align 32
@gmc_v7_0_gmc_funcs = internal constant { %struct.amdgpu_gmc_funcs, [60 x i8] } { %struct.amdgpu_gmc_funcs { ptr @gmc_v7_0_flush_gpu_tlb, ptr @gmc_v7_0_flush_gpu_tlb_pasid, ptr @gmc_v7_0_emit_flush_gpu_tlb, ptr @gmc_v7_0_emit_pasid_mapping, ptr @gmc_v7_0_set_prt, ptr null, ptr @gmc_v7_0_get_vm_pde, ptr @gmc_v7_0_get_vm_pte, ptr @gmc_v7_0_get_vbios_fb_size }, [60 x i8] zeroinitializer }, align 32
@gmc_v7_0_set_prt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 556, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Disabling VM faults because of PRT request!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gmc_v7_0_set_prt\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gmc_v7_0_set_prt._entry_ptr = internal global ptr @gmc_v7_0_set_prt._entry, section ".printk_index", align 4
@gmc_v7_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gmc_v7_0_vm_fault_interrupt_state, ptr @gmc_v7_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@amdgpu_vm_fault_stop = external dso_local local_unnamed_addr global i32, align 4
@__func__.gmc_v7_0_process_interrupt = private unnamed_addr constant [27 x i8] c"gmc_v7_0_process_interrupt\00", align 1
@gmc_v7_0_process_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.gmc_v7_0_process_interrupt, ptr @.str.3, i32 1290, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: GPU fault detected: %d 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gmc_v7_0_process_interrupt._entry_ptr = internal global ptr @gmc_v7_0_process_interrupt._entry, section ".printk_index", align 4
@gmc_v7_0_process_interrupt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.gmc_v7_0_process_interrupt, ptr @.str.3, i32 1292, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu:   VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@gmc_v7_0_process_interrupt._entry_ptr.10 = internal global ptr @gmc_v7_0_process_interrupt._entry.8, section ".printk_index", align 4
@gmc_v7_0_process_interrupt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.gmc_v7_0_process_interrupt, ptr @.str.3, i32 1294, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu:   VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@gmc_v7_0_process_interrupt._entry_ptr.13 = internal global ptr @gmc_v7_0_process_interrupt._entry.11, section ".printk_index", align 4
@gmc_v7_0_vm_decode_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 791, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"amdgpu: VM fault (0x%02x, vmid %d, pasid %d) at page %u, %s from '%s' (0x%08x) (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gmc_v7_0_vm_decode_fault\00", [39 x i8] zeroinitializer }, align 32
@gmc_v7_0_vm_decode_fault._entry_ptr = internal global ptr @gmc_v7_0_vm_decode_fault._entry, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@gmc_v7_0_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014amdgpu: No suitable DMA available\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gmc_v7_0_sw_init\00", [47 x i8] zeroinitializer }, align 32
@gmc_v7_0_sw_init._entry_ptr = internal global ptr @gmc_v7_0_sw_init._entry, section ".printk_index", align 4
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to load mc firmware!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bonaire\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hawaii\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"topaz\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu/%s_mc.bin\00", [47 x i8] zeroinitializer }, align 32
@gmc_v7_0_init_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013amdgpu: cik_mc: Failed to load firmware \22%s\22\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gmc_v7_0_init_microcode\00", [40 x i8] zeroinitializer }, align 32
@gmc_v7_0_init_microcode._entry_ptr = internal global ptr @gmc_v7_0_init_microcode._entry, section ".printk_index", align 4
@amdgpu_gart_size = external dso_local local_unnamed_addr global i32, align 4
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"R600 PCIE GART already initialized\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to load MC firmware!\0A\00", [35 x i8] zeroinitializer }, align 32
@iceland_mgcg_cgcg_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2090, i32 -1, i32 260], [20 x i8] zeroinitializer }, align 32
@golden_settings_iceland_a11 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1324, i32 268435455, i32 268435455, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [48 x i8] zeroinitializer }, align 32
@gmc_v7_0_mc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Wait for MC idle timedout !\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gmc_v7_0_mc_program\00", [44 x i8] zeroinitializer }, align 32
@gmc_v7_0_mc_program._entry_ptr = internal global ptr @gmc_v7_0_mc_program._entry, section ".printk_index", align 4
@gmc_v7_0_mc_program._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@gmc_v7_0_mc_program._entry_ptr.33 = internal global ptr @gmc_v7_0_mc_program._entry.32, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gmc_v7_0_gart_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 620, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: No VRAM object for PCIE GART.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gmc_v7_0_gart_enable\00", [43 x i8] zeroinitializer }, align 32
@gmc_v7_0_gart_enable._entry_ptr = internal global ptr @gmc_v7_0_gart_enable._entry, section ".printk_index", align 4
@gmc_v7_0_gart_enable._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", [40 x i8] zeroinitializer }, align 32
@gmc_v7_0_gart_enable._entry_ptr.38 = internal global ptr @gmc_v7_0_gart_enable._entry.36, section ".printk_index", align 4
@gmc_v7_0_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Wait for GMC idle timed out !\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gmc_v7_0_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@gmc_v7_0_soft_reset._entry_ptr = internal global ptr @gmc_v7_0_soft_reset._entry, section ".printk_index", align 4
@gmc_v7_0_soft_reset._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 1209, ptr @.str.43, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: SRBM_SOFT_RESET=0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gmc_v7_0_soft_reset._entry_ptr.44 = internal global ptr @gmc_v7_0_soft_reset._entry.41, section ".printk_index", align 4
@mc_cg_registers = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 2094, i32 2096, i32 2095, i32 2334, i32 3284, i32 2451, i32 2450, i32 2452, i32 1392], [60 x i8] zeroinitializer }, align 32
@mc_cg_en = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 262144, i32 262144, i32 262144, i32 262144, i32 262144, i32 262144, i32 262144, i32 262144, i32 262144], [60 x i8] zeroinitializer }, align 32
@mc_cg_ls_en = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 524288, i32 524288, i32 524288, i32 524288, i32 524288, i32 524288, i32 524288, i32 524288, i32 524288], [60 x i8] zeroinitializer }, align 32
@switch.table.gmc_v7_0_sw_init = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], [48 x i8] zeroinitializer }, align 32
@switch.table.gmc_v7_0_sw_init.45 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 4, i32 8, i32 3, i32 6, i32 10, i32 12, i32 16], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"gmc_v7_0_ip_funcs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1351, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"gmc_v7_0_ip_block\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1395, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"gmc_v7_4_ip_block\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1404, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1352, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"gmc_v7_0_gmc_funcs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1368, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 556, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"gmc_v7_0_irq_funcs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1379, i32 42 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1289, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1291, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1293, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 787, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1024, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1031, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 138, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 142, i32 15 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 145, i32 15 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 148, i32 15 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 157, i32 37 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 166, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 724, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1105, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [23 x i8] c"iceland_mgcg_cgcg_init\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 69, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant [28 x i8] c"golden_settings_iceland_a11\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 61, i32 18 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 276, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 300, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 620, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 712, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1203, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1209, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [16 x i8] c"mc_cg_registers\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 795, i32 18 }
@___asan_gen_.215 = private unnamed_addr constant [9 x i8] c"mc_cg_en\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 819, i32 18 }
@___asan_gen_.218 = private unnamed_addr constant [12 x i8] c"mc_cg_ls_en\00", align 1
@___asan_gen_.219 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 807, i32 18 }
@___asan_gen_.221 = private unnamed_addr constant [30 x i8] c"switch.table.gmc_v7_0_sw_init\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [33 x i8] c"switch.table.gmc_v7_0_sw_init.45\00", align 1
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @gmc_v7_0_gart_enable._entry, ptr @gmc_v7_0_gart_enable._entry.36, ptr @gmc_v7_0_gart_enable._entry_ptr, ptr @gmc_v7_0_gart_enable._entry_ptr.38, ptr @gmc_v7_0_init_microcode._entry, ptr @gmc_v7_0_init_microcode._entry_ptr, ptr @gmc_v7_0_mc_program._entry, ptr @gmc_v7_0_mc_program._entry.32, ptr @gmc_v7_0_mc_program._entry_ptr, ptr @gmc_v7_0_mc_program._entry_ptr.33, ptr @gmc_v7_0_process_interrupt._entry, ptr @gmc_v7_0_process_interrupt._entry.11, ptr @gmc_v7_0_process_interrupt._entry.8, ptr @gmc_v7_0_process_interrupt._entry_ptr, ptr @gmc_v7_0_process_interrupt._entry_ptr.10, ptr @gmc_v7_0_process_interrupt._entry_ptr.13, ptr @gmc_v7_0_set_prt._entry, ptr @gmc_v7_0_set_prt._entry_ptr, ptr @gmc_v7_0_soft_reset._entry, ptr @gmc_v7_0_soft_reset._entry.41, ptr @gmc_v7_0_soft_reset._entry_ptr, ptr @gmc_v7_0_soft_reset._entry_ptr.44, ptr @gmc_v7_0_sw_init._entry, ptr @gmc_v7_0_sw_init._entry_ptr, ptr @gmc_v7_0_vm_decode_fault._entry, ptr @gmc_v7_0_vm_decode_fault._entry_ptr, ptr @gmc_v7_0_ip_funcs, ptr @gmc_v7_0_ip_block, ptr @gmc_v7_4_ip_block, ptr @.str, ptr @gmc_v7_0_gmc_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gmc_v7_0_irq_funcs, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @iceland_mgcg_cgcg_init, ptr @golden_settings_iceland_a11, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @mc_cg_registers, ptr @mc_cg_en, ptr @mc_cg_ls_en, ptr @switch.table.gmc_v7_0_sw_init, ptr @switch.table.gmc_v7_0_sw_init.45], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_4_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_gmc_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_set_prt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_process_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_process_interrupt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_process_interrupt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_vm_decode_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_init_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_mgcg_cgcg_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_iceland_a11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_mc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_mc_program._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_gart_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_gart_enable._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v7_0_soft_reset._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_cg_registers to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_cg_en to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_cg_ls_en to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gmc_v7_0_sw_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gmc_v7_0_sw_init.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gmc_v7_0_early_init(ptr nocapture noundef writeonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gmc_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 38
  %0 = ptrtoint ptr %gmc_funcs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @gmc_v7_0_gmc_funcs, ptr %gmc_funcs.i, align 4
  %vm_fault.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %1 = ptrtoint ptr %vm_fault.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %vm_fault.i, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20, i32 2
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @gmc_v7_0_irq_funcs, ptr %funcs.i, align 8
  %shared_aperture_start = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 26
  %3 = ptrtoint ptr %shared_aperture_start to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 2305843009213693952, ptr %shared_aperture_start, align 8
  %shared_aperture_end = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 27
  %4 = ptrtoint ptr %shared_aperture_end to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 2305843013508661247, ptr %shared_aperture_end, align 8
  %private_aperture_start = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 28
  %5 = ptrtoint ptr %private_aperture_start to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2305843013508661248, ptr %private_aperture_start, align 8
  %private_aperture_end = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 29
  %6 = ptrtoint ptr %private_aperture_end to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 2305843017803628543, ptr %private_aperture_end, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_late_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %0 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call = tail call i32 @amdgpu_irq_get(ptr noundef %handle, ptr noundef %vm_fault, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  %fw_name.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2688, i32 noundef 0) #10
  %3 = add i32 %call, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %3)
  %4 = icmp ult i32 %3, -1073741824
  br i1 %4, label %switch.lookup, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %5 = lshr i32 %3, 28
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.gmc_v7_0_sw_init, i32 0, i32 %5
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
  %call6 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 146, ptr noundef %vm_fault) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call12 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 147, ptr noundef %vm_fault) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  tail call void @amdgpu_vm_adjust_size(ptr noundef %handle, i32 noundef 64, i32 noundef 9, i32 noundef 1, i32 noundef 40) #10
  %mc_mask = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 17
  %8 = ptrtoint ptr %mc_mask to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1099511627775, ptr %mc_mask, align 8
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handle, align 8
  %call.i = tail call i32 @dma_set_mask(ptr noundef %10, i64 noundef 1099511627775) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end22, label %do.end

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %10, i64 noundef 1099511627775) #10
  %call23 = tail call zeroext i1 @drm_need_swiotlb(i32 noundef 40) #10
  %need_swiotlb = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 14
  %frombool = zext i1 %call23 to i8
  %11 = ptrtoint ptr %need_swiotlb to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %need_swiotlb, align 1
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name.i) #10
  %12 = call ptr @memset(ptr %fw_name.i, i32 255, i32 30)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21) #10
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %13 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asic_type.i, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %do.body.i [
    i32 5, label %if.end22.sw.epilog.i_crit_edge
    i32 8, label %sw.bb1.i101
    i32 10, label %sw.bb2.i102
    i32 6, label %if.end22.if.end27_crit_edge
    i32 7, label %if.end22.if.end27_crit_edge120
    i32 9, label %if.end22.if.end27_crit_edge121
  ]

if.end22.if.end27_crit_edge121:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end22.if.end27_crit_edge120:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end22.sw.epilog.i_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb1.i101:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb2.i102:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.body.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 154, 0\0A.popsection", ""() #10, !srcloc !120
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb2.i102, %sw.bb1.i101, %if.end22.sw.epilog.i_crit_edge
  %chip_name.0.i = phi ptr [ @.str.24, %sw.bb2.i102 ], [ @.str.23, %sw.bb1.i101 ], [ @.str.22, %if.end22.sw.epilog.i_crit_edge ]
  %call.i103 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.25, ptr noundef nonnull %chip_name.0.i) #10
  %fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 18
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle, align 8
  %call8.i = call i32 @request_firmware(ptr noundef %fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %out.i, label %sw.epilog.i.if.then26_crit_edge

sw.epilog.i.if.then26_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

out.i:                                            ; preds = %sw.epilog.i
  %18 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw.i, align 8
  %call11.i = call i32 @amdgpu_ucode_validate(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %out.i.if.end27_crit_edge, label %out.i.if.then26_crit_edge

out.i.if.then26_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

out.i.if.end27_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %out.i.if.then26_crit_edge, %sw.epilog.i.if.then26_crit_edge
  %err.035.i = phi i32 [ %call11.i, %out.i.if.then26_crit_edge ], [ %call8.i, %sw.epilog.i.if.then26_crit_edge ]
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull %fw_name.i) #13
  %20 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw.i, align 8
  call void @release_firmware(ptr noundef %21) #10
  %22 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %fw.i, align 8
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end27:                                         ; preds = %out.i.if.end27_crit_edge, %if.end22.if.end27_crit_edge, %if.end22.if.end27_crit_edge120, %if.end22.if.end27_crit_edge121
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #10
  %call.i105 = call i32 @amdgpu_atombios_get_vram_width(ptr noundef %handle) #10
  %gmc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62
  %vram_width.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 14
  %23 = ptrtoint ptr %vram_width.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i105, ptr %vram_width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %if.then.i107, label %if.end27.if.end19.i_crit_edge

if.end27.if.end19.i_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then.i107:                                     ; preds = %if.end27
  %call3.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2520, i32 noundef 0) #10
  %24 = and i32 %call3.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not.i = icmp eq i32 %24, 0
  %..i = select i1 %tobool4.not.i, i32 32, i32 64
  %call6.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2049, i32 noundef 0) #10
  %and7.i = lshr i32 %call6.i, 12
  %shr8.i = and i32 %and7.i, 15
  %switch.tableidx = add nsw i32 %shr8.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %25 = icmp ult i32 %switch.tableidx, 8
  br i1 %25, label %switch.lookup117, label %if.then.i107.sw.epilog.i108_crit_edge

if.then.i107.sw.epilog.i108_crit_edge:            ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i108

switch.lookup117:                                 ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep118 = getelementptr inbounds [8 x i32], ptr @switch.table.gmc_v7_0_sw_init.45, i32 0, i32 %switch.tableidx
  %26 = ptrtoint ptr %switch.gep118 to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load119 = load i32, ptr %switch.gep118, align 4
  br label %sw.epilog.i108

sw.epilog.i108:                                   ; preds = %switch.lookup117, %if.then.i107.sw.epilog.i108_crit_edge
  %numchan.0.i = phi i32 [ 1, %if.then.i107.sw.epilog.i108_crit_edge ], [ %switch.load119, %switch.lookup117 ]
  %mul.i = mul nuw nsw i32 %numchan.0.i, %..i
  %27 = ptrtoint ptr %vram_width.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i, ptr %vram_width.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %sw.epilog.i108, %if.end27.if.end19.i_crit_edge
  %call20.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5386, i32 noundef 0) #10
  %conv.i = zext i32 %call20.i to i64
  %mul22.i = shl nuw nsw i64 %conv.i, 20
  %mc_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 2
  %28 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %mul22.i, ptr %mc_vram_size.i, align 8
  %call24.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5386, i32 noundef 0) #10
  %conv25.i = zext i32 %call24.i to i64
  %mul27.i = shl nuw nsw i64 %conv25.i, 20
  %real_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 15
  %29 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %mul27.i, ptr %real_vram_size.i, align 8
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 8
  %and29.i = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end19.i.if.end36.i_crit_edge

if.end19.i.if.end36.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then31.i:                                      ; preds = %if.end19.i
  %call32.i = call i32 @amdgpu_device_resize_fb_bar(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then31.i.if.end36.i_crit_edge, label %if.then31.i.cleanup_crit_edge

if.then31.i.cleanup_crit_edge:                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31.i.if.end36.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then31.i.if.end36.i_crit_edge, %if.end19.i.if.end36.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 47
  %34 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resource.i, align 8
  %aper_base.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 1
  %36 = ptrtoint ptr %aper_base.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %aper_base.i, align 4
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 47, i32 0, i32 1
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i109 = icmp eq i32 %38, 0
  br i1 %cmp.i109, label %if.end36.i.cond.end.i_crit_edge, label %cond.false.i

if.end36.i.cond.end.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %resource.i, align 8
  %sub.i = add i32 %38, 1
  %add.i = sub i32 %sub.i, %40
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end36.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end36.i.cond.end.i_crit_edge ]
  %41 = ptrtoint ptr %gmc.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond.i, ptr %gmc.i, align 8
  %conv53.i = zext i32 %cond.i to i64
  %visible_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 3
  %42 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %real_vram_size.i, align 8
  %44 = call i64 @llvm.umin.i64(i64 %43, i64 %conv53.i) #10
  %45 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %visible_vram_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_gart_size to i32))
  %46 = load i32, ptr @amdgpu_gart_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp67.i = icmp eq i32 %46, -1
  br i1 %cmp67.i, label %if.then69.i, label %if.else77.i

if.then69.i:                                      ; preds = %cond.end.i
  %47 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %asic_type.i, align 8
  %.off.i = add i32 %48, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 5
  %gart_size75.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  br i1 %switch.i, label %sw.bb73.i, label %sw.default71.i

sw.default71.i:                                   ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %gart_size75.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 268435456, ptr %gart_size75.i, align 8
  br label %if.end31

sw.bb73.i:                                        ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %gart_size75.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1073741824, ptr %gart_size75.i, align 8
  br label %if.end31

if.else77.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv78.i = sext i32 %46 to i64
  %shl.i = shl nsw i64 %conv78.i, 20
  %gart_size80.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %51 = ptrtoint ptr %gart_size80.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %shl.i, ptr %gart_size80.i, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else77.i, %sw.bb73.i, %sw.default71.i
  %smu_prv_buffer_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 21
  %52 = ptrtoint ptr %smu_prv_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %smu_prv_buffer_size.i, align 4
  %conv82.i = zext i32 %53 to i64
  %gart_size84.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %54 = ptrtoint ptr %gart_size84.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %gart_size84.i, align 8
  %add85.i = add i64 %55, %conv82.i
  store i64 %add85.i, ptr %gart_size84.i, align 8
  %call.i.i111 = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2057, i32 noundef 0) #10
  %and.i.i = and i32 %call.i.i111, 65535
  %conv.i.i = zext i32 %and.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 24
  call void @amdgpu_gmc_vram_location(ptr noundef %handle, ptr noundef %gmc.i, i64 noundef %shl.i.i) #10
  call void @amdgpu_gmc_gart_location(ptr noundef %handle, ptr noundef %gmc.i) #10
  call void @amdgpu_gmc_get_vbios_allocations(ptr noundef %handle) #10
  %call32 = call i32 @amdgpu_bo_init(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %call36 = call fastcc i32 @gmc_v7_0_gart_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %first_kfd_vmid = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 1
  %56 = ptrtoint ptr %first_kfd_vmid to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %first_kfd_vmid, align 8
  call void @amdgpu_vm_manager_init(ptr noundef %handle) #10
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 8
  %and41 = and i32 %58, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end50_crit_edge, label %if.then43

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2074, i32 noundef 0) #10
  %conv = zext i32 %call45 to i64
  %shl = shl nuw nsw i64 %conv, 22
  br label %if.end50

if.end50:                                         ; preds = %if.then43, %if.end39.if.end50_crit_edge
  %shl.sink = phi i64 [ %shl, %if.then43 ], [ 0, %if.end39.if.end50_crit_edge ]
  %59 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 10
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %shl.sink, ptr %59, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3264, i32 noundef 24) #14
  %vm_fault_info = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 32
  %62 = ptrtoint ptr %vm_fault_info to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i, ptr %vm_fault_info, align 8
  %tobool55.not = icmp eq ptr %call7.i, null
  br i1 %tobool55.not, label %if.end50.cleanup_crit_edge, label %if.end57

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %vm_fault_info_updated = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 33
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %vm_fault_info_updated, i32 noundef 4) #10
  %63 = ptrtoint ptr %vm_fault_info_updated to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 0, ptr %vm_fault_info_updated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end50.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then31.i.cleanup_crit_edge, %if.then26, %do.end, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %err.035.i, %if.then26 ], [ 0, %if.end57 ], [ %call6, %if.end.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ -12, %if.end50.cleanup_crit_edge ], [ %call32.i, %if.then31.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_gem_force_release(ptr noundef %handle) #10
  tail call void @amdgpu_vm_manager_fini(ptr noundef %handle) #10
  %vm_fault_info = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 32
  %0 = ptrtoint ptr %vm_fault_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_fault_info, align 8
  tail call void @kfree(ptr noundef %1) #10
  tail call void @amdgpu_gart_table_vram_free(ptr noundef %handle) #10
  tail call void @amdgpu_bo_fini(ptr noundef %handle) #10
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 18
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 8
  tail call void @release_firmware(ptr noundef %3) #10
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fw, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cond.i = icmp eq i32 %1, 10
  br i1 %cond.i, label %sw.bb.i, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @iceland_mgcg_cgcg_init, i32 noundef 3) #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_iceland_a11, i32 noundef 12) #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %sw.bb.i, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %j.087.i = phi i32 [ %add5.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.086.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %add.i = add nuw nsw i32 %j.087.i, 2821
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #10
  %add1.i = add nuw nsw i32 %j.087.i, 2822
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1.i, i32 noundef 0, i32 noundef 0) #10
  %add2.i = add nuw nsw i32 %j.087.i, 2823
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add2.i, i32 noundef 0, i32 noundef 0) #10
  %add3.i = add nuw nsw i32 %j.087.i, 2824
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add3.i, i32 noundef 0, i32 noundef 0) #10
  %add4.i = add nuw nsw i32 %j.087.i, 2825
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add4.i, i32 noundef 0, i32 noundef 0) #10
  %inc.i = add nuw nsw i32 %i.086.i, 1
  %add5.i = add nuw nsw i32 %j.087.i, 6
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5416, i32 noundef 0, i32 noundef 0) #10
  %usec_timeout.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %2 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp5.not.i.i, label %for.end.i.do.end.i_crit_edge, label %for.end.i.for.body.i.i_crit_edge

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and.i.i = and i32 %call.i.i, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i_crit_edge, label %if.end.i.i

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %5 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %6
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %for.end.i.do.end.i_crit_edge
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.30) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.i.if.end.i_crit_edge
  %num_crtc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %9 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_crtc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not.i = icmp eq i32 %10, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then7.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 202, i32 noundef 0) #10
  %or.i = or i32 %call8.i, 16
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 202, i32 noundef %or.i, i32 noundef 0) #10
  %call9.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 192, i32 noundef 0) #10
  %and10.i = and i32 %call9.i, -196609
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 192, i32 noundef %and10.i, i32 noundef 0) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %if.end.i.if.end12.i_crit_edge
  %vram_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 10
  %11 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %vram_start.i, align 8
  %shr.i = lshr i64 %12, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2061, i32 noundef %conv.i, i32 noundef 0) #10
  %vram_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 11
  %13 = ptrtoint ptr %vram_end.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vram_end.i, align 8
  %shr14.i = lshr i64 %14, 12
  %conv15.i = trunc i64 %shr14.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2062, i32 noundef %conv15.i, i32 noundef 0) #10
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 69, i32 2
  %15 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %gpu_addr.i, align 8
  %shr16.i = lshr i64 %16, 12
  %conv17.i = trunc i64 %shr16.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2063, i32 noundef %conv17.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2060, i32 noundef 0, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2058, i32 noundef 268435455, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2059, i32 noundef 268435455, i32 noundef 0) #10
  %17 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp5.not.i71.i = icmp eq i32 %18, 0
  br i1 %cmp5.not.i71.i, label %if.end12.i.do.end23.i_crit_edge, label %if.end12.i.for.body.i76.i_crit_edge

if.end12.i.for.body.i76.i_crit_edge:              ; preds = %if.end12.i
  br label %for.body.i76.i

if.end12.i.do.end23.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23.i

for.body.i76.i:                                   ; preds = %if.end.i79.i.for.body.i76.i_crit_edge, %if.end12.i.for.body.i76.i_crit_edge
  %i.06.i72.i = phi i32 [ %inc.i77.i, %if.end.i79.i.for.body.i76.i_crit_edge ], [ 0, %if.end12.i.for.body.i76.i_crit_edge ]
  %call.i73.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and.i74.i = and i32 %call.i73.i, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74.i)
  %tobool.not.i75.i = icmp eq i32 %and.i74.i, 0
  br i1 %tobool.not.i75.i, label %for.body.i76.i.gmc_v7_0_mc_program.exit_crit_edge, label %if.end.i79.i

for.body.i76.i.gmc_v7_0_mc_program.exit_crit_edge: ; preds = %for.body.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v7_0_mc_program.exit

if.end.i79.i:                                     ; preds = %for.body.i76.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #10
  %inc.i77.i = add nuw i32 %i.06.i72.i, 1
  %20 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i78.i = icmp ult i32 %inc.i77.i, %21
  br i1 %cmp.i78.i, label %if.end.i79.i.for.body.i76.i_crit_edge, label %if.end.i79.i.do.end23.i_crit_edge

if.end.i79.i.do.end23.i_crit_edge:                ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23.i

if.end.i79.i.for.body.i76.i_crit_edge:            ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i76.i

do.end23.i:                                       ; preds = %if.end.i79.i.do.end23.i_crit_edge, %if.end12.i.do.end23.i_crit_edge
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.30) #13
  br label %gmc_v7_0_mc_program.exit

gmc_v7_0_mc_program.exit:                         ; preds = %do.end23.i, %for.body.i76.i.gmc_v7_0_mc_program.exit_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5412, i32 noundef 3, i32 noundef 0) #10
  %call26.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3027, i32 noundef 0) #10
  %and27.i = and i32 %call26.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3027, i32 noundef %and27.i, i32 noundef 0) #10
  %call29.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2816, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2816, i32 noundef %call29.i, i32 noundef 0) #10
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 8
  %and = and i32 %25, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %gmc_v7_0_mc_program.exit.if.end3_crit_edge

gmc_v7_0_mc_program.exit.if.end3_crit_edge:       ; preds = %gmc_v7_0_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %gmc_v7_0_mc_program.exit
  %fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 18
  %26 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.then2, label %if.end.i17

if.end.i17:                                       ; preds = %if.then
  %data.i = getelementptr inbounds %struct.firmware, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  tail call void @amdgpu_ucode_print_mc_hdr(ptr noundef %29) #10
  %ucode_version.i = getelementptr inbounds %struct.common_firmware_header, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %ucode_version.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ucode_version.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  %fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 19
  %33 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %fw_version.i, align 4
  %io_debug_size_bytes.i = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %io_debug_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_debug_size_bytes.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  %div90.i = lshr i32 %36, 3
  %37 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw.i, align 8
  %data7.i = getelementptr inbounds %struct.firmware, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data7.i, align 4
  %io_debug_array_offset_bytes.i = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %29, i32 0, i32 2
  %41 = ptrtoint ptr %io_debug_array_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_debug_array_offset_bytes.i, align 4
  %ucode_size_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %29, i32 0, i32 7
  %43 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ucode_size_bytes.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  %div991.i = lshr i32 %45, 2
  %ucode_array_offset_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %29, i32 0, i32 8
  %46 = ptrtoint ptr %ucode_array_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ucode_array_offset_bytes.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  %add.ptr14.i = getelementptr i8, ptr %40, i32 %48
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 0) #10
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then15.i, label %if.end.i17.if.end3_crit_edge

if.end.i17.if.end3_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then15.i:                                      ; preds = %if.end.i17
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 8, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 16, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %36)
  %cmp1692.not.i = icmp ult i32 %36, 8
  br i1 %cmp1692.not.i, label %if.then15.i.for.cond20.preheader.i_crit_edge, label %for.body.preheader.i

if.then15.i.for.cond20.preheader.i_crit_edge:     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond20.preheader.i

for.body.preheader.i:                             ; preds = %if.then15.i
  %49 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  %add.ptr.i = getelementptr i8, ptr %40, i32 %49
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div90.i, i32 1) #10
  br label %for.body.i20

for.cond20.preheader.i:                           ; preds = %for.body.i20.for.cond20.preheader.i_crit_edge, %if.then15.i.for.cond20.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp2195.not.i = icmp ult i32 %45, 4
  br i1 %cmp2195.not.i, label %for.cond20.preheader.i.for.end27.i_crit_edge, label %for.body22.preheader.i

for.cond20.preheader.i.for.end27.i_crit_edge:     ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27.i

for.body22.preheader.i:                           ; preds = %for.cond20.preheader.i
  %umax102.i = tail call i32 @llvm.umax.i32(i32 %div991.i, i32 1) #10
  br label %for.body22.i

for.body.i20:                                     ; preds = %for.body.i20.for.body.i20_crit_edge, %for.body.preheader.i
  %i.094.i = phi i32 [ %inc.i18, %for.body.i20.for.body.i20_crit_edge ], [ 0, %for.body.preheader.i ]
  %io_mc_regs.093.i = phi ptr [ %incdec.ptr18.i, %for.body.i20.for.body.i20_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %io_mc_regs.093.i, i32 1
  %50 = ptrtoint ptr %io_mc_regs.093.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %io_mc_regs.093.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2705, i32 noundef %52, i32 noundef 0) #10
  %incdec.ptr18.i = getelementptr i32, ptr %io_mc_regs.093.i, i32 2
  %53 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %incdec.ptr.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2706, i32 noundef %55, i32 noundef 0) #10
  %inc.i18 = add nuw nsw i32 %i.094.i, 1
  %exitcond.not.i19 = icmp eq i32 %inc.i18, %umax.i
  br i1 %exitcond.not.i19, label %for.body.i20.for.cond20.preheader.i_crit_edge, label %for.body.i20.for.body.i20_crit_edge

for.body.i20.for.body.i20_crit_edge:              ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i20

for.body.i20.for.cond20.preheader.i_crit_edge:    ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond20.preheader.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %for.body22.preheader.i
  %i.197.i = phi i32 [ %inc26.i, %for.body22.i.for.body22.i_crit_edge ], [ 0, %for.body22.preheader.i ]
  %fw_data.096.i = phi ptr [ %incdec.ptr23.i, %for.body22.i.for.body22.i_crit_edge ], [ %add.ptr14.i, %for.body22.preheader.i ]
  %incdec.ptr23.i = getelementptr i32, ptr %fw_data.096.i, i32 1
  %56 = ptrtoint ptr %fw_data.096.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fw_data.096.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2611, i32 noundef %58, i32 noundef 0) #10
  %inc26.i = add nuw nsw i32 %i.197.i, 1
  %exitcond103.not.i = icmp eq i32 %inc26.i, %umax102.i
  br i1 %exitcond103.not.i, label %for.body22.i.for.end27.i_crit_edge, label %for.body22.i.for.body22.i_crit_edge

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body22.i

for.body22.i.for.end27.i_crit_edge:               ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27.i

for.end27.i:                                      ; preds = %for.body22.i.for.end27.i_crit_edge, %for.cond20.preheader.i.for.end27.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 8, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 4, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 1, i32 noundef 0) #10
  %59 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp2998.i = icmp sgt i32 %60, 0
  br i1 %cmp2998.i, label %for.end27.i.for.body30.i_crit_edge, label %for.end27.i.if.end3_crit_edge

for.end27.i.if.end3_crit_edge:                    ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

for.end27.i.for.body30.i_crit_edge:               ; preds = %for.end27.i
  br label %for.body30.i

for.body30.i:                                     ; preds = %if.end36.i.for.body30.i_crit_edge, %for.end27.i.for.body30.i_crit_edge
  %i.299.i = phi i32 [ %inc38.i, %if.end36.i.for.body30.i_crit_edge ], [ 0, %for.end27.i.for.body30.i_crit_edge ]
  %call31.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2618, i32 noundef 0) #10
  %61 = and i32 %call31.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool34.not.i = icmp eq i32 %61, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %for.end39thread-pre-split.i

if.end36.i:                                       ; preds = %for.body30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #10
  %inc38.i = add nuw nsw i32 %i.299.i, 1
  %63 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp29.i = icmp slt i32 %inc38.i, %64
  br i1 %cmp29.i, label %if.end36.i.for.body30.i_crit_edge, label %if.end36.i.for.end39.i_crit_edge

if.end36.i.for.end39.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end39.i

if.end36.i.for.body30.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30.i

for.end39thread-pre-split.i:                      ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr.i = load i32, ptr %usec_timeout.i.i, align 8
  br label %for.end39.i

for.end39.i:                                      ; preds = %for.end39thread-pre-split.i, %if.end36.i.for.end39.i_crit_edge
  %66 = phi i32 [ %.pr.i, %for.end39thread-pre-split.i ], [ %64, %if.end36.i.for.end39.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp42100.i = icmp sgt i32 %66, 0
  br i1 %cmp42100.i, label %for.end39.i.for.body43.i_crit_edge, label %for.end39.i.if.end3_crit_edge

for.end39.i.if.end3_crit_edge:                    ; preds = %for.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

for.end39.i.for.body43.i_crit_edge:               ; preds = %for.end39.i
  br label %for.body43.i

for.body43.i:                                     ; preds = %if.end49.i.for.body43.i_crit_edge, %for.end39.i.for.body43.i_crit_edge
  %i.3101.i = phi i32 [ %inc51.i, %if.end49.i.for.body43.i_crit_edge ], [ 0, %for.end39.i.for.body43.i_crit_edge ]
  %call44.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2618, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call44.i)
  %tobool47.not.i = icmp sgt i32 %call44.i, -1
  br i1 %tobool47.not.i, label %if.end49.i, label %for.body43.i.if.end3_crit_edge

for.body43.i.if.end3_crit_edge:                   ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end49.i:                                       ; preds = %for.body43.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #10
  %inc51.i = add nuw nsw i32 %i.3101.i, 1
  %68 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp42.i = icmp slt i32 %inc51.i, %69
  br i1 %cmp42.i, label %if.end49.i.for.body43.i_crit_edge, label %if.end49.i.if.end3_crit_edge

if.end49.i.if.end3_crit_edge:                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end49.i.for.body43.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body43.i

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end49.i.if.end3_crit_edge, %for.body43.i.if.end3_crit_edge, %for.end39.i.if.end3_crit_edge, %for.end27.i.if.end3_crit_edge, %if.end.i17.if.end3_crit_edge, %gmc_v7_0_mc_program.exit.if.end3_crit_edge
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 63
  %70 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gart.i, align 8
  %cmp.i21 = icmp eq ptr %71, null
  br i1 %cmp.i21, label %do.end.i22, label %if.end.i25

do.end.i22:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.end.i25:                                       ; preds = %if.end3
  %gtt_mgr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 9
  %call.i23 = tail call i32 @amdgpu_gtt_mgr_recover(ptr noundef %gtt_mgr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %if.end2.i, label %if.end.i25.cleanup_crit_edge

if.end.i25.cleanup_crit_edge:                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i25
  %74 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gart.i, align 8
  %call5.i = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %75) #10
  %call6.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2073, i32 noundef 0) #10
  %or12.i = and i32 %call6.i, -124
  %and13.i = or i32 %or12.i, 91
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2073, i32 noundef %and13.i, i32 noundef 0) #10
  %call15.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1280, i32 noundef 0) #10
  %or25.i = and i32 %call15.i, -1805828
  %or29.i = or i32 %or25.i, 757251
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1280, i32 noundef %or29.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1281, i32 noundef 3, i32 noundef 0) #10
  %fragment_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 8
  %76 = ptrtoint ptr %fragment_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fragment_size.i, align 8
  %call32.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1282, i32 noundef 0) #10
  %or34.i = and i32 %call32.i, -2064448
  %and36.i = and i32 %77, 63
  %shl39.i = shl i32 %77, 15
  %and40.i = and i32 %shl39.i, 1015808
  %and35.i = or i32 %and36.i, %or34.i
  %or37.i = or i32 %and35.i, %and40.i
  %or41.i = or i32 %or37.i, 1048576
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1282, i32 noundef %or41.i, i32 noundef 0) #10
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 8
  %78 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %gart_start.i, align 8
  %shr.i26 = lshr i64 %79, 12
  %conv.i27 = trunc i64 %shr.i26 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1367, i32 noundef %conv.i27, i32 noundef 0) #10
  %gart_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 9
  %80 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %gart_end.i, align 8
  %shr43.i = lshr i64 %81, 12
  %conv44.i = trunc i64 %shr43.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1375, i32 noundef %conv44.i, i32 noundef 0) #10
  %shr45.i = lshr i64 %call5.i, 12
  %conv46.i = trunc i64 %shr45.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1359, i32 noundef %conv46.i, i32 noundef 0) #10
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 64
  %82 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dummy_page_addr.i, align 8
  %shr47.i = lshr i32 %83, 12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1350, i32 noundef %shr47.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1292, i32 noundef 0, i32 noundef 0) #10
  %call48.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1284, i32 noundef 0) #10
  %or50.i = and i32 %call48.i, -24
  %or54.i = or i32 %or50.i, 17
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1284, i32 noundef %or54.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1397, i32 noundef 0, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1398, i32 noundef 0, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1399, i32 noundef 0, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1368, i32 noundef 0, i32 noundef 0) #10
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 5
  %84 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %max_pfn.i, align 8
  %86 = trunc i64 %85 to i32
  %conv56.i = add i32 %86, -1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1376, i32 noundef %conv56.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1360, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1361, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1362, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1363, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1364, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1365, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1366, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1294, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1295, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1296, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1297, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1298, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1299, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1300, i32 noundef %conv46.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1301, i32 noundef %conv46.i, i32 noundef 0) #10
  %87 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dummy_page_addr.i, align 8
  %shr70.i = lshr i32 %88, 12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1351, i32 noundef %shr70.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1293, i32 noundef 4, i32 noundef 0) #10
  %call71.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1285, i32 noundef 0) #10
  %or73.i = and i32 %call71.i, -251658248
  %block_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 7
  %89 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %block_size.i, align 4
  %sub78.i = shl i32 %90, 24
  %shl79.i = add i32 %sub78.i, 117440512
  %and80.i = and i32 %shl79.i, 251658240
  %or75.i = or i32 %or73.i, %and80.i
  %or81.i = or i32 %or75.i, 3
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1285, i32 noundef %or81.i, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %91 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp82.i = icmp eq i32 %91, 2
  %call.i.i32 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1285, i32 noundef 0) #10
  %and.i.i33 = and i32 %call.i.i32, -599185
  %masksel.i = select i1 %cmp82.i, i32 0, i32 599184
  %or31.i.sink.i = or i32 %and.i.i33, %masksel.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1285, i32 noundef %or31.i.sink.i, i32 noundef 0) #10
  %92 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %93)
  %cmp87.i = icmp eq i32 %93, 6
  br i1 %cmp87.i, label %if.then89.i, label %if.end2.i.if.end92.i_crit_edge

if.end2.i.if.end92.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

if.then89.i:                                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call90.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1561, i32 noundef 0) #10
  %and91.i = and i32 %call90.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1561, i32 noundef %and91.i, i32 noundef 0) #10
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then89.i, %if.end2.i.if.end92.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1310, i32 noundef 1, i32 noundef 0) #10
  %gart_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %94 = ptrtoint ptr %gart_size.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %gart_size.i, align 8
  %shr98.i = lshr i64 %95, 20
  %conv99.i = trunc i64 %shr98.i to i32
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv99.i, i64 noundef %call5.i) #13
  %ready.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 63, i32 5
  %96 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %ready.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end92.i, %if.end.i25.cleanup_crit_edge, %do.end.i22, %if.then2
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %do.end.i22 ], [ 0, %if.end92.i ], [ %call.i23, %if.end.i25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %vm_fault, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1284, i32 noundef 0, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1285, i32 noundef 0, i32 noundef 0) #10
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2073, i32 noundef 0) #10
  %and3.i = and i32 %call.i, -68
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2073, i32 noundef %and3.i, i32 noundef 0) #10
  %call5.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1280, i32 noundef 0) #10
  %and6.i = and i32 %call5.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1280, i32 noundef %and6.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1281, i32 noundef 0, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gmc_v7_0_hw_fini(ptr noundef %handle)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gmc_v7_0_hw_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_vmid_reset_all(ptr noundef %handle) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gmc_v7_0_is_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and = and i32 %call, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_wait_for_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and = and i32 %call, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  %inc = add nuw i32 %i.06, 1
  %3 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and = shl i32 %call, 9
  %0 = and i32 %and, 131072
  %and2 = and i32 %call, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %entry.if.end11_crit_edge, label %if.then4

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4.if.then13_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool12.not = icmp eq i32 %0, 0
  br i1 %tobool12.not, label %if.end11.if.end27_crit_edge, label %if.end11.if.then13_crit_edge

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %if.then4.if.then13_crit_edge
  %srbm_soft_reset.155 = phi i32 [ 131072, %if.end11.if.then13_crit_edge ], [ %or9, %if.then4.if.then13_crit_edge ]
  %usec_timeout.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %3 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp5.not.i.i, label %if.then13.gmc_v7_0_wait_for_idle.exit.i_crit_edge, label %if.then13.for.body.i.i_crit_edge

if.then13.for.body.i.i_crit_edge:                 ; preds = %if.then13
  br label %for.body.i.i

if.then13.gmc_v7_0_wait_for_idle.exit.i_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v7_0_wait_for_idle.exit.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then13.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.then13.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and.i.i = and i32 %call.i.i, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.gmc_v7_0_wait_for_idle.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.gmc_v7_0_wait_for_idle.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v7_0_wait_for_idle.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #10
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %6 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %7
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.gmc_v7_0_wait_for_idle.exit.i_crit_edge

if.end.i.i.gmc_v7_0_wait_for_idle.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v7_0_wait_for_idle.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

gmc_v7_0_wait_for_idle.exit.i:                    ; preds = %if.end.i.i.gmc_v7_0_wait_for_idle.exit.i_crit_edge, %for.body.i.i.gmc_v7_0_wait_for_idle.exit.i_crit_edge, %if.then13.gmc_v7_0_wait_for_idle.exit.i_crit_edge
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2091, i32 noundef 0) #10
  %and.i = and i32 %call1.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 1
  br i1 %cmp.not.i, label %gmc_v7_0_wait_for_idle.exit.i.gmc_v7_0_mc_stop.exit_crit_edge, label %if.then.i

gmc_v7_0_wait_for_idle.exit.i.gmc_v7_0_mc_stop.exit_crit_edge: ; preds = %gmc_v7_0_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v7_0_mc_stop.exit

if.then.i:                                        ; preds = %gmc_v7_0_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5412, i32 noundef 0, i32 noundef 0) #10
  %and2.i = and i32 %call1.i, -8
  %or3.i = or i32 %and2.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2091, i32 noundef %or3.i, i32 noundef 0) #10
  br label %gmc_v7_0_mc_stop.exit

gmc_v7_0_mc_stop.exit:                            ; preds = %if.then.i, %gmc_v7_0_wait_for_idle.exit.i.gmc_v7_0_mc_stop.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #10
  %9 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.not.i = icmp eq i32 %10, 0
  br i1 %cmp5.not.i, label %gmc_v7_0_mc_stop.exit.do.end_crit_edge, label %gmc_v7_0_mc_stop.exit.for.body.i_crit_edge

gmc_v7_0_mc_stop.exit.for.body.i_crit_edge:       ; preds = %gmc_v7_0_mc_stop.exit
  br label %for.body.i

gmc_v7_0_mc_stop.exit.do.end_crit_edge:           ; preds = %gmc_v7_0_mc_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %gmc_v7_0_mc_stop.exit.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %gmc_v7_0_mc_stop.exit.for.body.i_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and.i50 = and i32 %call.i, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.not.i = icmp eq i32 %and.i50, 0
  br i1 %tobool.not.i, label %for.body.i.if.end17_crit_edge, label %if.end.i

for.body.i.if.end17_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #10
  %inc.i = add nuw i32 %i.06.i, 1
  %12 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %gmc_v7_0_mc_stop.exit.do.end_crit_edge
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.39) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end, %for.body.i.if.end17_crit_edge
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #10
  %or19 = or i32 %call18, %srbm_soft_reset.155
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.42, i32 noundef %or19) #13
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %or19, i32 noundef 0) #10
  %call24 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 10737400) #10
  %neg = xor i32 %srbm_soft_reset.155, -1
  %and25 = and i32 %call24, %neg
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %and25, i32 noundef 0) #10
  %call26 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 10737400) #10
  %call.i51 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2091, i32 noundef 0) #10
  %and.i52 = and i32 %call.i51, -8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2091, i32 noundef %and.i52, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5412, i32 noundef 3, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 10737400) #10
  br label %if.end27

if.end27:                                         ; preds = %if.end17, %if.end11.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then1:                                         ; preds = %entry
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then1
  %i.019.i = phi i32 [ 0, %if.then1 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x i32], ptr @mc_cg_registers, i32 0, i32 %i.019.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %3, i32 noundef 0) #10
  br i1 %cmp, label %land.lhs.true.i, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %4 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2.i = getelementptr [9 x i32], ptr @mc_cg_en, i32 0, i32 %i.019.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %7, %call.i
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %arrayidx3.i = getelementptr [9 x i32], ptr @mc_cg_en, i32 0, i32 %i.019.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %neg.i = xor i32 %9, -1
  %and4.i = and i32 %call.i, %neg.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %or.i, %if.then.i ], [ %and4.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %data.0.i, i32 %call.i)
  %cmp5.not.i = icmp eq i32 %data.0.i, %call.i
  br i1 %cmp5.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then6.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %3, i32 noundef %data.0.i, i32 noundef 0) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.inc.i.for.body.i21_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.body.i21_crit_edge:                 ; preds = %for.inc.i
  br label %for.body.i21

for.body.i21:                                     ; preds = %for.inc.i38.for.body.i21_crit_edge, %for.inc.i.for.body.i21_crit_edge
  %i.019.i18 = phi i32 [ %inc.i36, %for.inc.i38.for.body.i21_crit_edge ], [ 0, %for.inc.i.for.body.i21_crit_edge ]
  %arrayidx.i19 = getelementptr [9 x i32], ptr @mc_cg_registers, i32 0, i32 %i.019.i18
  %10 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i19, align 4
  %call.i20 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %11, i32 noundef 0) #10
  br i1 %cmp, label %land.lhs.true.i24, label %for.body.i21.if.else.i31_crit_edge

for.body.i21.if.else.i31_crit_edge:               ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i31

land.lhs.true.i24:                                ; preds = %for.body.i21
  %12 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cg_flags.i, align 8
  %and.i22 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool1.not.i23 = icmp eq i32 %and.i22, 0
  br i1 %tobool1.not.i23, label %land.lhs.true.i24.if.else.i31_crit_edge, label %if.then.i27

land.lhs.true.i24.if.else.i31_crit_edge:          ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i31

if.then.i27:                                      ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2.i25 = getelementptr [9 x i32], ptr @mc_cg_ls_en, i32 0, i32 %i.019.i18
  %14 = ptrtoint ptr %arrayidx2.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i25, align 4
  %or.i26 = or i32 %15, %call.i20
  br label %if.end.i34

if.else.i31:                                      ; preds = %land.lhs.true.i24.if.else.i31_crit_edge, %for.body.i21.if.else.i31_crit_edge
  %arrayidx3.i28 = getelementptr [9 x i32], ptr @mc_cg_ls_en, i32 0, i32 %i.019.i18
  %16 = ptrtoint ptr %arrayidx3.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3.i28, align 4
  %neg.i29 = xor i32 %17, -1
  %and4.i30 = and i32 %call.i20, %neg.i29
  br label %if.end.i34

if.end.i34:                                       ; preds = %if.else.i31, %if.then.i27
  %data.0.i32 = phi i32 [ %or.i26, %if.then.i27 ], [ %and4.i30, %if.else.i31 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %data.0.i32, i32 %call.i20)
  %cmp5.not.i33 = icmp eq i32 %data.0.i32, %call.i20
  br i1 %cmp5.not.i33, label %if.end.i34.for.inc.i38_crit_edge, label %if.then6.i35

if.end.i34.for.inc.i38_crit_edge:                 ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i38

if.then6.i35:                                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %11, i32 noundef %data.0.i32, i32 noundef 0) #10
  br label %for.inc.i38

for.inc.i38:                                      ; preds = %if.then6.i35, %if.end.i34.for.inc.i38_crit_edge
  %inc.i36 = add nuw nsw i32 %i.019.i18, 1
  %exitcond.not.i37 = icmp eq i32 %inc.i36, 9
  br i1 %exitcond.not.i37, label %for.inc.i38.if.end4_crit_edge, label %for.inc.i38.for.body.i21_crit_edge

for.inc.i38.for.body.i21_crit_edge:               ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i21

for.inc.i38.if.end4_crit_edge:                    ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %for.inc.i38.if.end4_crit_edge, %entry.if.end4_crit_edge
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 39
  %18 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcie_rreg.i, align 8
  %call.i39 = tail call i32 %19(ptr noundef %handle, i32 noundef 20971548) #10
  br i1 %cmp, label %land.lhs.true.i43, label %if.end4.if.else.i45_crit_edge

if.end4.if.else.i45_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i45

land.lhs.true.i43:                                ; preds = %if.end4
  %cg_flags.i40 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %20 = ptrtoint ptr %cg_flags.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cg_flags.i40, align 8
  %and.i41 = and i32 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool1.not.i42 = icmp eq i32 %and.i41, 0
  br i1 %tobool1.not.i42, label %land.lhs.true.i43.if.else.i45_crit_edge, label %if.then.i44

land.lhs.true.i43.if.else.i45_crit_edge:          ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i45

if.then.i44:                                      ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #12
  %or8.i = or i32 %call.i39, 983040
  br label %if.end.i47

if.else.i45:                                      ; preds = %land.lhs.true.i43.if.else.i45_crit_edge, %if.end4.if.else.i45_crit_edge
  %and15.i = and i32 %call.i39, -983041
  br label %if.end.i47

if.end.i47:                                       ; preds = %if.else.i45, %if.then.i44
  %data.0.i46 = phi i32 [ %or8.i, %if.then.i44 ], [ %and15.i, %if.else.i45 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i39, i32 %data.0.i46)
  %cmp.not.i = icmp eq i32 %call.i39, %data.0.i46
  br i1 %cmp.not.i, label %if.end.i47.gmc_v7_0_enable_bif_mgls.exit_crit_edge, label %if.then17.i

if.end.i47.gmc_v7_0_enable_bif_mgls.exit_crit_edge: ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v7_0_enable_bif_mgls.exit

if.then17.i:                                      ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #12
  %pcie_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 40
  %22 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %23(ptr noundef %handle, i32 noundef 20971548, i32 noundef %data.0.i46) #10
  br label %gmc_v7_0_enable_bif_mgls.exit

gmc_v7_0_enable_bif_mgls.exit:                    ; preds = %if.then17.i, %if.end.i47.gmc_v7_0_enable_bif_mgls.exit_crit_edge
  %call.i48 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2816, i32 noundef 0) #10
  br i1 %cmp, label %land.lhs.true.i52, label %gmc_v7_0_enable_bif_mgls.exit.if.else.i54_crit_edge

gmc_v7_0_enable_bif_mgls.exit.if.else.i54_crit_edge: ; preds = %gmc_v7_0_enable_bif_mgls.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i54

land.lhs.true.i52:                                ; preds = %gmc_v7_0_enable_bif_mgls.exit
  %cg_flags.i49 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %24 = ptrtoint ptr %cg_flags.i49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cg_flags.i49, align 8
  %and.i50 = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool1.not.i51 = icmp eq i32 %and.i50, 0
  br i1 %tobool1.not.i51, label %land.lhs.true.i52.if.else.i54_crit_edge, label %if.then.i53

land.lhs.true.i52.if.else.i54_crit_edge:          ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i54

if.then.i53:                                      ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #12
  %and2.i = and i32 %call.i48, -8388609
  br label %if.end.i57

if.else.i54:                                      ; preds = %land.lhs.true.i52.if.else.i54_crit_edge, %gmc_v7_0_enable_bif_mgls.exit.if.else.i54_crit_edge
  %or4.i = or i32 %call.i48, 8388608
  br label %if.end.i57

if.end.i57:                                       ; preds = %if.else.i54, %if.then.i53
  %data.0.i55 = phi i32 [ %and2.i, %if.then.i53 ], [ %or4.i, %if.else.i54 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i48, i32 %data.0.i55)
  %cmp.not.i56 = icmp eq i32 %call.i48, %data.0.i55
  br i1 %cmp.not.i56, label %if.end.i57.gmc_v7_0_enable_hdp_mgcg.exit_crit_edge, label %if.then5.i

if.end.i57.gmc_v7_0_enable_hdp_mgcg.exit_crit_edge: ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v7_0_enable_hdp_mgcg.exit

if.then5.i:                                       ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2816, i32 noundef %data.0.i55, i32 noundef 0) #10
  br label %gmc_v7_0_enable_hdp_mgcg.exit

gmc_v7_0_enable_hdp_mgcg.exit:                    ; preds = %if.then5.i, %if.end.i57.gmc_v7_0_enable_hdp_mgcg.exit_crit_edge
  %call.i58 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3028, i32 noundef 0) #10
  br i1 %cmp, label %land.lhs.true.i62, label %gmc_v7_0_enable_hdp_mgcg.exit.if.else.i65_crit_edge

gmc_v7_0_enable_hdp_mgcg.exit.if.else.i65_crit_edge: ; preds = %gmc_v7_0_enable_hdp_mgcg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i65

land.lhs.true.i62:                                ; preds = %gmc_v7_0_enable_hdp_mgcg.exit
  %cg_flags.i59 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %26 = ptrtoint ptr %cg_flags.i59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cg_flags.i59, align 8
  %and.i60 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool1.not.i61 = icmp eq i32 %and.i60, 0
  br i1 %tobool1.not.i61, label %land.lhs.true.i62.if.else.i65_crit_edge, label %if.then.i64

land.lhs.true.i62.if.else.i65_crit_edge:          ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i65

if.then.i64:                                      ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #12
  %or.i63 = or i32 %call.i58, 1
  br label %if.end.i68

if.else.i65:                                      ; preds = %land.lhs.true.i62.if.else.i65_crit_edge, %gmc_v7_0_enable_hdp_mgcg.exit.if.else.i65_crit_edge
  %and3.i = and i32 %call.i58, -2
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.else.i65, %if.then.i64
  %data.0.i66 = phi i32 [ %or.i63, %if.then.i64 ], [ %and3.i, %if.else.i65 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i58, i32 %data.0.i66)
  %cmp.not.i67 = icmp eq i32 %call.i58, %data.0.i66
  br i1 %cmp.not.i67, label %if.end.i68.gmc_v7_0_enable_hdp_ls.exit_crit_edge, label %if.then5.i69

if.end.i68.gmc_v7_0_enable_hdp_ls.exit_crit_edge: ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v7_0_enable_hdp_ls.exit

if.then5.i69:                                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3028, i32 noundef %data.0.i66, i32 noundef 0) #10
  br label %gmc_v7_0_enable_hdp_ls.exit

gmc_v7_0_enable_hdp_ls.exit:                      ; preds = %if.then5.i69, %if.end.i68.gmc_v7_0_enable_hdp_ls.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v7_0_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v7_0_flush_gpu_tlb(ptr noundef %adev, i32 noundef %vmid, i32 noundef %vmhub, i32 noundef %flush_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %vmid
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1310, i32 noundef %shl, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_flush_gpu_tlb_pasid(ptr noundef %adev, i16 noundef zeroext %pasid, i32 noundef %flush_type, i1 noundef zeroext %all_hub) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #10
  %0 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %vmid.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %add = add nuw nsw i32 %vmid.018, 3303
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp slt i32 %call1, 0
  %2 = trunc i32 %call1 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %pasid)
  %cmp4 = icmp eq i16 %2, %pasid
  %or.cond = and i1 %tobool2.not, %cmp4
  br i1 %or.cond, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw nsw i32 1, %vmid.018
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1310, i32 noundef %shl, i32 noundef 0) #10
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1311, i32 noundef 0) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %vmid.018, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gmc_v7_0_emit_flush_gpu_tlb(ptr noundef %ring, i32 noundef %vmid, i64 noundef returned %pd_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %3(ptr noundef %ring, i32 noundef %reg.0, i32 noundef %conv) #10
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %emit_wreg3 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %emit_wreg3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emit_wreg3, align 4
  %shl = shl nuw i32 1, %vmid
  tail call void %7(ptr noundef %ring, i32 noundef 1310, i32 noundef %shl) #10
  ret i64 %pd_addr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v7_0_emit_pasid_mapping(ptr noundef %ring, i32 noundef %vmid, i32 noundef %pasid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emit_wreg, align 4
  %add = add i32 %vmid, 3920
  tail call void %3(ptr noundef %ring, i32 noundef %add, i32 noundef %pasid) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v7_0_set_prt(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %prt_warning = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 24
  %0 = ptrtoint ptr %prt_warning to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prt_warning, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1) #13
  %4 = ptrtoint ptr %prt_warning to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %prt_warning, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %shl39 = phi i32 [ 64, %do.end ], [ 64, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %shl33 = phi i32 [ 8, %do.end ], [ 8, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %shl27 = phi i32 [ 4, %do.end ], [ 4, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %shl21 = phi i32 [ 32, %do.end ], [ 32, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %shl15 = phi i32 [ 2, %do.end ], [ 2, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %shl9 = phi i32 [ 16, %do.end ], [ 16, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1332, i32 noundef 0) #10
  %and = and i32 %call, -128
  %conv = zext i1 %enable to i32
  %or = or i32 %shl39, %conv
  %or11 = or i32 %or, %shl33
  %or17 = or i32 %or11, %shl27
  %or23 = or i32 %or17, %shl21
  %and30.masked = or i32 %or23, %shl15
  %and36 = or i32 %and30.masked, %shl9
  %or41 = or i32 %and36, %and
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1332, i32 noundef %or41, i32 noundef 0) #10
  br i1 %enable, label %if.then43, label %if.end.if.end45_crit_edge

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %max_pfn = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %5 = ptrtoint ptr %max_pfn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %max_pfn, align 8
  %7 = trunc i64 %6 to i32
  %conv44 = add i32 %7, -512
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end.if.end45_crit_edge
  %.sink94 = phi i32 [ 512, %if.then43 ], [ 268435455, %if.end.if.end45_crit_edge ]
  %.sink90 = phi i32 [ %conv44, %if.then43 ], [ 0, %if.end.if.end45_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1324, i32 noundef %.sink94, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1325, i32 noundef %.sink94, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1326, i32 noundef %.sink94, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1327, i32 noundef %.sink94, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1328, i32 noundef %.sink90, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1329, i32 noundef %.sink90, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1330, i32 noundef %.sink90, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1331, i32 noundef %.sink90, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v7_0_get_vm_pde(ptr nocapture noundef readnone %adev, i32 noundef %level, ptr nocapture noundef readonly %addr, ptr nocapture noundef readnone %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %addr, align 8
  %and = and i64 %1, -1099511623681
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !122

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 507, 0\0A.popsection", ""() #10, !srcloc !123
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gmc_v7_0_get_vm_pte(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %mapping, ptr nocapture noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %and1 = and i64 %1, -2251799813685265
  store i64 %and1, ptr %flags, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_get_vbios_fb_size(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 204, i32 noundef 0) #10
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 7005, i32 noundef 0) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_vm_fault_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1284, i32 noundef 0) #10
  %and = and i32 %call, -299593
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1284, i32 noundef %and, i32 noundef 0) #10
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1285, i32 noundef 0) #10
  %and3 = and i32 %call1, -299593
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1284, i32 noundef 0) #10
  %or = or i32 %call5, 299592
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1284, i32 noundef %or, i32 noundef 0) #10
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1285, i32 noundef 0) #10
  %or7 = or i32 %call6, 299592
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb
  %or7.sink = phi i32 [ %or7, %sw.bb4 ], [ %and3, %sw.bb ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1285, i32 noundef %or7.sink, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v7_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  %block.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1343, i32 noundef 0) #10
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1335, i32 noundef 0) #10
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1337, i32 noundef 0) #10
  %call4 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1293, i32 noundef 0) #10
  %or = or i32 %call4, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1293, i32 noundef %or, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool5.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %0 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1285, i32 noundef 0) #10
  %and.i = and i32 %call.i, -599185
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1285, i32 noundef %and.i, i32 noundef 0) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.gmc_v7_0_process_interrupt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.if.end22_crit_edge, label %do.end13

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = lshr i32 %call2, 25
  %.pre102 = and i32 %.pre, 15
  br label %if.end22

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %6) #13
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %call) #13
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.12, i32 noundef %call2) #13
  %pasid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 8
  %11 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pasid, align 4
  %and.i101 = lshr i32 %call2, 25
  %shr.i = and i32 %and.i101, 15
  %and1.i = and i32 %call2, 255
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %block.i) #10
  %13 = getelementptr inbounds [5 x i8], ptr %block.i, i32 0, i32 1
  %14 = getelementptr inbounds [5 x i8], ptr %block.i, i32 0, i32 2
  %15 = getelementptr inbounds [5 x i8], ptr %block.i, i32 0, i32 3
  %16 = getelementptr inbounds [5 x i8], ptr %block.i, i32 0, i32 4
  %shr3.i = lshr i32 %call3, 24
  %conv.i = trunc i32 %shr3.i to i8
  %17 = ptrtoint ptr %block.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %block.i, align 1
  %shr4.i = lshr i32 %call3, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv6.i, ptr %13, align 1
  %shr8.i = lshr i32 %call3, 8
  %conv10.i = trunc i32 %shr8.i to i8
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv10.i, ptr %14, align 1
  %conv13.i = trunc i32 %call3 to i8
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13.i, ptr %15, align 1
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %16, align 1
  %and15.i = lshr i32 %call2, 12
  %shr16.i = and i32 %and15.i, 511
  %22 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev, align 8
  %24 = and i32 %call2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.17, ptr @.str.16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14, i32 noundef %and1.i, i32 noundef %shr.i, i32 noundef %12, i32 noundef %call, ptr noundef nonnull %cond.i, ptr noundef nonnull %block.i, i32 noundef %call3, i32 noundef %shr16.i) #13
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %block.i) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end13, %if.end7.if.end22_crit_edge
  %shr.pre-phi = phi i32 [ %.pre102, %if.end7.if.end22_crit_edge ], [ %shr.i, %do.end13 ]
  %call24 = call zeroext i1 @amdgpu_amdkfd_is_kfd_vmid(ptr noundef %adev, i32 noundef %shr.pre-phi) #10
  br i1 %call24, label %land.lhs.true25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true25:                                  ; preds = %if.end22
  %vm_fault_info_updated = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 33
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %vm_fault_info_updated, i32 noundef 4) #10
  %25 = ptrtoint ptr %vm_fault_info_updated to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %vm_fault_info_updated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool27.not = icmp eq i32 %26, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true25.cleanup_crit_edge

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  %vm_fault_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 32
  %27 = ptrtoint ptr %vm_fault_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vm_fault_info, align 8
  %vmid32 = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %vmid32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr.pre-phi, ptr %vmid32, align 8
  %and33 = lshr i32 %call2, 12
  %shr34 = and i32 %and33, 511
  %mc_id = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %28, i32 0, i32 2
  %30 = ptrtoint ptr %mc_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr34, ptr %mc_id, align 4
  %status35 = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %status35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call2, ptr %status35, align 8
  %conv = zext i32 %call to i64
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %28, align 8
  %and36 = and i32 %call2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37 = icmp ne i32 %and36, 0
  %prot_valid = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %28, i32 0, i32 4
  %frombool = zext i1 %tobool37 to i8
  %33 = ptrtoint ptr %prot_valid to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %prot_valid, align 4
  %prot_read = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %28, i32 0, i32 5
  %34 = trunc i32 %call2 to i8
  %35 = lshr i8 %34, 3
  %36 = and i8 %35, 1
  %37 = ptrtoint ptr %prot_read to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %prot_read, align 1
  %prot_write = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %28, i32 0, i32 6
  %38 = lshr i8 %34, 4
  %39 = and i8 %38, 1
  %40 = ptrtoint ptr %prot_write to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %prot_write, align 2
  %prot_exec = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %28, i32 0, i32 7
  %41 = lshr i8 %34, 5
  %42 = and i8 %41, 1
  %43 = ptrtoint ptr %prot_exec to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %prot_exec, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  call void @arm_heavy_mb() #10
  %call.i.i100 = call zeroext i1 @__kasan_check_write(ptr noundef %vm_fault_info_updated, i32 noundef 4) #10
  %44 = ptrtoint ptr %vm_fault_info_updated to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %vm_fault_info_updated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %land.lhs.true25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_amdkfd_is_kfd_vmid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_adjust_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_need_swiotlb(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_get_vbios_allocations(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gmc_v7_0_gart_init(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gart = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %0 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gart, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end17, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 724, i32 noundef 9, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end17:                                         ; preds = %entry
  %call = tail call i32 @amdgpu_gart_init(ptr noundef %adev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %num_gpu_pages = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 2
  %2 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_gpu_pages, align 8
  %mul = shl i32 %3, 3
  %table_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 4
  %4 = ptrtoint ptr %table_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %table_size, align 8
  %gart_pte_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 6
  %5 = ptrtoint ptr %gart_pte_flags to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %gart_pte_flags, align 8
  %call24 = tail call i32 @amdgpu_gart_table_vram_alloc(ptr noundef %adev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end17.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call24, %if.end20 ], [ %call, %if.end17.cleanup_crit_edge ]
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
declare dso_local i32 @amdgpu_atombios_get_vram_width(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_resize_fb_bar(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_gart_location(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_table_vram_alloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gem_force_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_manager_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gart_table_vram_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_mc_hdr(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gtt_mgr_recover(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vmid_reset_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
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
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 57, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 58, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 59, i32 1}
!6 = !{ptr @gmc_v7_0_ip_block, !7, !"gmc_v7_0_ip_block", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1395, i32 38}
!8 = !{ptr @gmc_v7_4_ip_block, !9, !"gmc_v7_4_ip_block", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1404, i32 38}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1352, i32 10}
!12 = !{ptr @gmc_v7_0_ip_funcs, !13, !"gmc_v7_0_ip_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1351, i32 34}
!14 = !{ptr @gmc_v7_0_gmc_funcs, !15, !"gmc_v7_0_gmc_funcs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1368, i32 38}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 556, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gmc_v7_0_set_prt._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @gmc_v7_0_set_prt._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @gmc_v7_0_irq_funcs, !25, !"gmc_v7_0_irq_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1379, i32 42}
!26 = !{ptr @__func__.gmc_v7_0_process_interrupt, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1288, i32 6}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1289, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gmc_v7_0_process_interrupt._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @gmc_v7_0_process_interrupt._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1291, i32 3}
!35 = !{ptr @gmc_v7_0_process_interrupt._entry.8, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @gmc_v7_0_process_interrupt._entry_ptr.10, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1293, i32 3}
!39 = !{ptr @gmc_v7_0_process_interrupt._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @gmc_v7_0_process_interrupt._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 787, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @gmc_v7_0_vm_decode_fault._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @gmc_v7_0_vm_decode_fault._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1024, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @gmc_v7_0_sw_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @gmc_v7_0_sw_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1031, i32 3}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 138, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 142, i32 15}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 145, i32 15}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 148, i32 15}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 157, i32 37}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 166, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @gmc_v7_0_init_microcode._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @gmc_v7_0_init_microcode._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 724, i32 3}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1105, i32 4}
!74 = !{ptr @iceland_mgcg_cgcg_init, !75, !"iceland_mgcg_cgcg_init", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 69, i32 18}
!76 = !{ptr @golden_settings_iceland_a11, !77, !"golden_settings_iceland_a11", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 61, i32 18}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 276, i32 3}
!80 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @gmc_v7_0_mc_program._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @gmc_v7_0_mc_program._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @gmc_v7_0_mc_program._entry.32, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 300, i32 3}
!85 = !{ptr @gmc_v7_0_mc_program._entry_ptr.33, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 620, i32 3}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @gmc_v7_0_gart_enable._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @gmc_v7_0_gart_enable._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 712, i32 2}
!93 = !{ptr @gmc_v7_0_gart_enable._entry.36, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @gmc_v7_0_gart_enable._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1203, i32 4}
!97 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @gmc_v7_0_soft_reset._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @gmc_v7_0_soft_reset._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 1209, i32 3}
!102 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @gmc_v7_0_soft_reset._entry.41, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @gmc_v7_0_soft_reset._entry_ptr.44, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @mc_cg_registers, !106, !"mc_cg_registers", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 795, i32 18}
!107 = !{ptr @mc_cg_en, !108, !"mc_cg_en", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 819, i32 18}
!109 = !{ptr @mc_cg_ls_en, !110, !"mc_cg_ls_en", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c", i32 807, i32 18}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2161941353, i64 2161941855, i64 2161941390, i64 2161941446, i64 2161941480, i64 2161941504, i64 2161941545, i64 2161941566, i64 2161941594, i64 2161941628}
!121 = !{i8 0, i8 2}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 2161960802, i64 2161961304, i64 2161960839, i64 2161960895, i64 2161960929, i64 2161960953, i64 2161960994, i64 2161961015, i64 2161961043, i64 2161961077}
!124 = !{i64 2162047769}
