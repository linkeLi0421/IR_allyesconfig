; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c"
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.mmsch_v1_0_init_header = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ww_acquire_ctx, ptr, ptr, %struct.amdgpu_bo_list_entry, %struct.list_head, ptr, i64, i64, i64, i64, %struct.amdgpu_bo_list_entry, i32, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.amdgpu_bo_list_entry = type { %struct.ttm_validate_buffer, ptr, ptr, i32, ptr, i8 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
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

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uvd_v7_0\00", [23 x i8] zeroinitializer }, align 32
@uvd_v7_0_ip_funcs = dso_local constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @uvd_v7_0_early_init, ptr null, ptr @uvd_v7_0_sw_init, ptr @uvd_v7_0_sw_fini, ptr null, ptr @uvd_v7_0_hw_init, ptr @uvd_v7_0_hw_fini, ptr null, ptr @uvd_v7_0_suspend, ptr @uvd_v7_0_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvd_v7_0_set_clockgating_state, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvd_v7_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 8, i32 7, i32 0, i32 0, ptr @uvd_v7_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@uvd_v7_0_ring_vm_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 3, i32 15, i32 0, i8 0, i8 1, i32 1, i32 0, ptr @uvd_v7_0_ring_get_rptr, ptr @uvd_v7_0_ring_get_wptr, ptr @uvd_v7_0_ring_set_wptr, ptr null, ptr @uvd_v7_0_ring_patch_cs_in_place, i32 102, i32 8, ptr @uvd_v7_0_ring_emit_ib, ptr @uvd_v7_0_ring_emit_fence, ptr null, ptr @uvd_v7_0_ring_emit_vm_flush, ptr @uvd_v7_0_ring_emit_hdp_flush, ptr null, ptr @uvd_v7_0_ring_test_ring, ptr @amdgpu_uvd_ring_test_ib, ptr @uvd_v7_0_ring_insert_nop, ptr null, ptr null, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_uvd_ring_begin_use, ptr @amdgpu_uvd_ring_end_use, ptr null, ptr null, ptr null, ptr @uvd_v7_0_ring_emit_wreg, ptr @uvd_v7_0_ring_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvd_v7_0_set_ring_funcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] UVD(%d) is enabled in VM mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uvd_v7_0_set_ring_funcs\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c\00", [58 x i8] zeroinitializer }, align 32
@uvd_v7_0_set_ring_funcs._entry_ptr = internal global ptr @uvd_v7_0_set_ring_funcs._entry, section ".printk_index", align 4
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@uvd_v7_0_enc_ring_vm_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 5, i32 63, i32 0, i8 0, i8 1, i32 1, i32 0, ptr @uvd_v7_0_enc_ring_get_rptr, ptr @uvd_v7_0_enc_ring_get_wptr, ptr @uvd_v7_0_enc_ring_set_wptr, ptr null, ptr null, i32 51, i32 5, ptr @uvd_v7_0_enc_ring_emit_ib, ptr @uvd_v7_0_enc_ring_emit_fence, ptr null, ptr @uvd_v7_0_enc_ring_emit_vm_flush, ptr null, ptr null, ptr @uvd_v7_0_enc_ring_test_ring, ptr @uvd_v7_0_enc_ring_test_ib, ptr @amdgpu_ring_insert_nop, ptr null, ptr @uvd_v7_0_enc_ring_insert_end, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_uvd_ring_begin_use, ptr @amdgpu_uvd_ring_end_use, ptr null, ptr null, ptr null, ptr @uvd_v7_0_enc_ring_emit_wreg, ptr @uvd_v7_0_enc_ring_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvd_v7_0_set_enc_ring_funcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 1888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016[drm] UVD(%d) ENC is enabled in VM mode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"uvd_v7_0_set_enc_ring_funcs\00", [36 x i8] zeroinitializer }, align 32
@uvd_v7_0_set_enc_ring_funcs._entry_ptr = internal global ptr @uvd_v7_0_set_enc_ring_funcs._entry, section ".printk_index", align 4
@uvd_v7_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @uvd_v7_0_set_interrupt_state, ptr @uvd_v7_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unhandled client id: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IH: UVD TRAP\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled interrupt: %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@amdgpu_ih_clientid_uvds = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 14], [24 x i8] zeroinitializer }, align 32
@uvd_v7_0_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] PSP loading UVD firmware\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uvd_v7_0_sw_init\00", [47 x i8] zeroinitializer }, align 32
@uvd_v7_0_sw_init._entry_ptr = internal global ptr @uvd_v7_0_sw_init._entry, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uvd_%d\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uvd_enc_%d.%d\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: (%d)ring failed to lock UVD ring (%d).\0A\00", [48 x i8] zeroinitializer }, align 32
@uvd_v7_0_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016[drm] UVD and UVD ENC initialized successfully.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uvd_v7_0_hw_init\00", [47 x i8] zeroinitializer }, align 32
@uvd_v7_0_hw_init._entry_ptr = internal global ptr @uvd_v7_0_hw_init._entry, section ".printk_index", align 4
@uvd_v7_0_mmsch_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 774, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"amdgpu: failed to init MMSCH, mmVCE_MMSCH_VF_MAILBOX_RESP = %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uvd_v7_0_mmsch_start\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvd_v7_0_mmsch_start._entry_ptr = internal global ptr @uvd_v7_0_mmsch_start._entry, section ".printk_index", align 4
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UVD(%d) not responding, trying to reset the VCPU!!!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UVD(%d) not responding, giving up!!!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"For SRIOV client, shouldn't do anything.\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 119, i64 120, i64 124]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1779, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"uvd_v7_0_ip_funcs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1778, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"uvd_v7_0_ip_block\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1909, i32 38 }
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"uvd_v7_0_ring_vm_funcs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1798, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1872, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 314, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"uvd_v7_0_enc_ring_vm_funcs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1830, i32 39 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1888, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"uvd_v7_0_irq_funcs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1892, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1580, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1584, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1598, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"amdgpu_ih_clientid_uvds\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 58, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 438, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 446, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 456, i32 24 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 544, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 584, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 774, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1053, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1065, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 606, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @uvd_v7_0_hw_init._entry, ptr @uvd_v7_0_hw_init._entry_ptr, ptr @uvd_v7_0_mmsch_start._entry, ptr @uvd_v7_0_mmsch_start._entry_ptr, ptr @uvd_v7_0_set_enc_ring_funcs._entry, ptr @uvd_v7_0_set_enc_ring_funcs._entry_ptr, ptr @uvd_v7_0_set_ring_funcs._entry, ptr @uvd_v7_0_set_ring_funcs._entry_ptr, ptr @uvd_v7_0_sw_init._entry, ptr @uvd_v7_0_sw_init._entry_ptr, ptr @.str, ptr @uvd_v7_0_ip_funcs, ptr @uvd_v7_0_ip_block, ptr @uvd_v7_0_ring_vm_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @uvd_v7_0_enc_ring_vm_funcs, ptr @.str.5, ptr @.str.6, ptr @uvd_v7_0_irq_funcs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @amdgpu_ih_clientid_uvds, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v7_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v7_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v7_0_ring_vm_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v7_0_set_ring_funcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v7_0_enc_ring_vm_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v7_0_set_enc_ring_funcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v7_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ih_clientid_uvds to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v7_0_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v7_0_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v7_0_mmsch_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %1)
  %cmp = icmp eq i32 %1, 21
  %num_uvd_inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 4
  br i1 %cmp, label %for.body.lr.ph, label %if.else

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %num_uvd_inst, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cond.false_crit_edge, label %land.lhs.true

for.body.cond.false_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sriov_rreg, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.0107
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx16, align 4
  %add = add i32 %12, 199
  %call = tail call i32 %8(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %for.body.cond.false_crit_edge
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.0107
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr i32, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %16, 199
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add21, i32 noundef 0) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call22, %cond.false ]
  %and23 = and i32 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cond.end.for.inc_crit_edge, label %if.then25

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then25:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %i.0107
  %17 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %harvest_config, align 4
  %or = or i32 %18, %shl
  store i32 %or, ptr %harvest_config, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %cond.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0107, 1
  %19 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_uvd_inst, align 8
  %conv = zext i8 %20 to i32
  %cmp3 = icmp ult i32 %inc, %conv
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %harvest_config28 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  %21 = ptrtoint ptr %harvest_config28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %harvest_config28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp29 = icmp eq i32 %22, 3
  br i1 %cmp29, label %for.end.cleanup47_crit_edge, label %for.end.if.end36_crit_edge

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

for.end.cleanup47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup47

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %num_uvd_inst, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else, %for.end.if.end36_crit_edge
  %virt37 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %24 = ptrtoint ptr %virt37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %virt37, align 8
  %and39 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %spec.select = select i1 %tobool40.not, i32 2, i32 1
  %26 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select, ptr %26, align 4
  %num_uvd_inst.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 4
  %28 = ptrtoint ptr %num_uvd_inst.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_uvd_inst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp18.not.i = icmp eq i8 %29, 0
  br i1 %cmp18.not.i, label %if.end36.cleanup47_crit_edge, label %for.body.lr.ph.i

if.end36.cleanup47_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup47

for.body.lr.ph.i:                                 ; preds = %if.end36
  %harvest_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %harvest_config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %harvest_config.i, align 4
  %shl.i = shl nuw i32 1, %i.019.i
  %and.i = and i32 %31, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %funcs.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.019.i, i32 4, i32 1
  %32 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @uvd_v7_0_ring_vm_funcs, ptr %funcs.i, align 4
  %me.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.019.i, i32 4, i32 16
  %33 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.019.i, ptr %me.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %i.019.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %34 = ptrtoint ptr %num_uvd_inst.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_uvd_inst.i, align 8
  %conv.i = zext i8 %35 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %uvd_v7_0_set_ring_funcs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

uvd_v7_0_set_ring_funcs.exit:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp34.not.i = icmp eq i8 %35, 0
  br i1 %cmp34.not.i, label %uvd_v7_0_set_enc_ring_funcs.exitthread-pre-split, label %uvd_v7_0_set_ring_funcs.exit.for.body.i79_crit_edge

uvd_v7_0_set_ring_funcs.exit.for.body.i79_crit_edge: ; preds = %uvd_v7_0_set_ring_funcs.exit
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.inc15.i.for.body.i79_crit_edge, %uvd_v7_0_set_ring_funcs.exit.for.body.i79_crit_edge
  %j.035.i = phi i32 [ %inc16.i, %for.inc15.i.for.body.i79_crit_edge ], [ 0, %uvd_v7_0_set_ring_funcs.exit.for.body.i79_crit_edge ]
  %36 = ptrtoint ptr %harvest_config.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %harvest_config.i, align 4
  %shl.i76 = shl nuw i32 1, %j.035.i
  %and.i77 = and i32 %37, %shl.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i78 = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i78, label %for.cond3.preheader.i, label %for.body.i79.for.inc15.i_crit_edge

for.body.i79.for.inc15.i_crit_edge:               ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.i

for.cond3.preheader.i:                            ; preds = %for.body.i79
  %38 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp531.not.i = icmp eq i32 %39, 0
  br i1 %cmp531.not.i, label %for.cond3.preheader.i.do.end.i_crit_edge, label %for.cond3.preheader.i.for.body7.i_crit_edge

for.cond3.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body7.i

for.cond3.preheader.i.do.end.i_crit_edge:         ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond3.preheader.i.for.body7.i_crit_edge
  %i.032.i = phi i32 [ %inc.i82, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body7.i_crit_edge ]
  %funcs.i80 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.035.i, i32 5, i32 %i.032.i, i32 1
  %40 = ptrtoint ptr %funcs.i80 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @uvd_v7_0_enc_ring_vm_funcs, ptr %funcs.i80, align 4
  %me.i81 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.035.i, i32 5, i32 %i.032.i, i32 16
  %41 = ptrtoint ptr %me.i81 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %j.035.i, ptr %me.i81, align 8
  %inc.i82 = add nuw i32 %i.032.i, 1
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %26, align 4
  %cmp5.i = icmp ult i32 %inc.i82, %43
  br i1 %cmp5.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.do.end.i_crit_edge

for.body7.i.do.end.i_crit_edge:                   ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.i

do.end.i:                                         ; preds = %for.body7.i.do.end.i_crit_edge, %for.cond3.preheader.i.do.end.i_crit_edge
  %call.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %j.035.i) #12
  br label %for.inc15.i

for.inc15.i:                                      ; preds = %do.end.i, %for.body.i79.for.inc15.i_crit_edge
  %inc16.i = add nuw nsw i32 %j.035.i, 1
  %44 = ptrtoint ptr %num_uvd_inst.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %num_uvd_inst.i, align 8
  %conv.i84 = zext i8 %45 to i32
  %cmp.i85 = icmp ult i32 %inc16.i, %conv.i84
  br i1 %cmp.i85, label %for.inc15.i.for.body.i79_crit_edge, label %for.inc15.i.uvd_v7_0_set_enc_ring_funcs.exit_crit_edge

for.inc15.i.uvd_v7_0_set_enc_ring_funcs.exit_crit_edge: ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvd_v7_0_set_enc_ring_funcs.exit

for.inc15.i.for.body.i79_crit_edge:               ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i79

uvd_v7_0_set_enc_ring_funcs.exitthread-pre-split: ; preds = %uvd_v7_0_set_ring_funcs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %num_uvd_inst.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %.pr = load i8, ptr %num_uvd_inst.i, align 8
  br label %uvd_v7_0_set_enc_ring_funcs.exit

uvd_v7_0_set_enc_ring_funcs.exit:                 ; preds = %uvd_v7_0_set_enc_ring_funcs.exitthread-pre-split, %for.inc15.i.uvd_v7_0_set_enc_ring_funcs.exit_crit_edge
  %47 = phi i8 [ %.pr, %uvd_v7_0_set_enc_ring_funcs.exitthread-pre-split ], [ %45, %for.inc15.i.uvd_v7_0_set_enc_ring_funcs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp18.not.i87 = icmp eq i8 %47, 0
  br i1 %cmp18.not.i87, label %uvd_v7_0_set_enc_ring_funcs.exit.cleanup47_crit_edge, label %for.body.lr.ph.i90

uvd_v7_0_set_enc_ring_funcs.exit.cleanup47_crit_edge: ; preds = %uvd_v7_0_set_enc_ring_funcs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup47

for.body.lr.ph.i90:                               ; preds = %uvd_v7_0_set_enc_ring_funcs.exit
  %48 = ptrtoint ptr %harvest_config.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %harvest_config.i, align 4
  br label %for.body.i95

for.body.i95:                                     ; preds = %for.inc.i101.for.body.i95_crit_edge, %for.body.lr.ph.i90
  %i.019.i91 = phi i32 [ 0, %for.body.lr.ph.i90 ], [ %inc.i98, %for.inc.i101.for.body.i95_crit_edge ]
  %shl.i92 = shl nuw i32 1, %i.019.i91
  %and.i93 = and i32 %shl.i92, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %tobool.not.i94 = icmp eq i32 %and.i93, 0
  br i1 %tobool.not.i94, label %if.end.i97, label %for.body.i95.for.inc.i101_crit_edge

for.body.i95.for.inc.i101_crit_edge:              ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i101

if.end.i97:                                       ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %26, align 4
  %add.i = add i32 %51, 1
  %irq.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.019.i91, i32 6
  %52 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i, ptr %irq.i, align 8
  %funcs.i96 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.019.i91, i32 6, i32 2
  %53 = ptrtoint ptr %funcs.i96 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @uvd_v7_0_irq_funcs, ptr %funcs.i96, align 8
  br label %for.inc.i101

for.inc.i101:                                     ; preds = %if.end.i97, %for.body.i95.for.inc.i101_crit_edge
  %inc.i98 = add nuw nsw i32 %i.019.i91, 1
  %54 = ptrtoint ptr %num_uvd_inst.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_uvd_inst.i, align 8
  %conv.i99 = zext i8 %55 to i32
  %cmp.i100 = icmp ult i32 %inc.i98, %conv.i99
  br i1 %cmp.i100, label %for.inc.i101.for.body.i95_crit_edge, label %for.inc.i101.cleanup47_crit_edge

for.inc.i101.cleanup47_crit_edge:                 ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup47

for.inc.i101.for.body.i95_crit_edge:              ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i95

cleanup47:                                        ; preds = %for.inc.i101.cleanup47_crit_edge, %uvd_v7_0_set_enc_ring_funcs.exit.cleanup47_crit_edge, %if.end36.cleanup47_crit_edge, %for.end.cleanup47_crit_edge
  %retval.1 = phi i32 [ -2, %for.end.cleanup47_crit_edge ], [ 0, %uvd_v7_0_set_enc_ring_funcs.exit.cleanup47_crit_edge ], [ 0, %if.end36.cleanup47_crit_edge ], [ 0, %for.inc.i101.cleanup47_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_uvd_inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 4
  %0 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_uvd_inst, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp251.not = icmp eq i8 %1, 0
  br i1 %cmp251.not, label %entry.for.end24_crit_edge, label %for.body.lr.ph

entry.for.end24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end24

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  %num_enc_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %for.body.lr.ph
  %j.0252 = phi i32 [ 0, %for.body.lr.ph ], [ %inc23, %for.inc22.for.body_crit_edge ]
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %j.0252
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc22_crit_edge

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [2 x i32], ptr @amdgpu_ih_clientid_uvds, i32 0, i32 %j.0252
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %irq = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.0252, i32 6
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef %5, i32 noundef 124, ptr noundef %irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %for.cond8.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond8.preheader:                              ; preds = %if.end
  %6 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10248.not = icmp eq i32 %7, 0
  br i1 %cmp10248.not, label %for.cond8.preheader.for.inc22_crit_edge, label %for.cond8.preheader.for.body12_crit_edge

for.cond8.preheader.for.body12_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body12

for.cond8.preheader.for.inc22_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22

for.cond8:                                        ; preds = %for.body12
  %inc = add nuw i32 %i.0249, 1
  %8 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_enc_rings, align 4
  %cmp10 = icmp ult i32 %inc, %9
  br i1 %cmp10, label %for.cond8.for.body12_crit_edge, label %for.cond8.for.inc22_crit_edge

for.cond8.for.inc22_crit_edge:                    ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22

for.cond8.for.body12_crit_edge:                   ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.body12:                                       ; preds = %for.cond8.for.body12_crit_edge, %for.cond8.preheader.for.body12_crit_edge
  %i.0249 = phi i32 [ %inc, %for.cond8.for.body12_crit_edge ], [ 0, %for.cond8.preheader.for.body12_crit_edge ]
  %add = add i32 %i.0249, 119
  %call18 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef %5, i32 noundef %add, ptr noundef %irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond8, label %for.body12.cleanup_crit_edge

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc22:                                        ; preds = %for.cond8.for.inc22_crit_edge, %for.cond8.preheader.for.inc22_crit_edge, %for.body.for.inc22_crit_edge
  %inc23 = add nuw nsw i32 %j.0252, 1
  %10 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_uvd_inst, align 8
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc23, %conv
  br i1 %cmp, label %for.inc22.for.body_crit_edge, label %for.inc22.for.end24_crit_edge

for.inc22.for.end24_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end24

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end24:                                        ; preds = %for.inc22.for.end24_crit_edge, %entry.for.end24_crit_edge
  %uvd.le = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108
  %call25 = tail call i32 @amdgpu_uvd_sw_init(ptr noundef %handle) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %for.end24.cleanup_crit_edge

for.end24.cleanup_crit_edge:                      ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %for.end24
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %12 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp29 = icmp eq i32 %13, 2
  br i1 %cmp29, label %if.then31, label %if.end28.if.end69_crit_edge

if.end28.if.end69_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then31:                                        ; preds = %if.end28
  %14 = ptrtoint ptr %uvd.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %uvd.le, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %arrayidx34 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 25
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 25, ptr %arrayidx34, align 8
  %fw40 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 25, i32 1
  %19 = ptrtoint ptr %fw40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %15, ptr %fw40, align 4
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %17, i32 0, i32 7
  %20 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucode_size_bytes, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %add41 = add i32 %22, 4095
  %and42 = and i32 %add41, -4096
  %fw_size = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 3
  %23 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_size, align 8
  %add44 = add i32 %and42, %24
  store i32 %add44, ptr %fw_size, align 8
  %25 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_uvd_inst, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp48 = icmp eq i8 %26, 2
  br i1 %cmp48, label %if.then50, label %if.then31.do.end_crit_edge

if.then31.do.end_crit_edge:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then50:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx53 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 26
  %27 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 26, ptr %arrayidx53, align 8
  %fw60 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 26, i32 1
  %28 = ptrtoint ptr %fw60 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %15, ptr %fw60, align 4
  %29 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ucode_size_bytes, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %add62 = add i32 %31, 4095
  %and63 = and i32 %add62, -4096
  %add66 = add i32 %and63, %add44
  %32 = ptrtoint ptr %fw_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add66, ptr %fw_size, align 8
  br label %do.end

do.end:                                           ; preds = %if.then50, %if.then31.do.end_crit_edge
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %if.end69

if.end69:                                         ; preds = %do.end, %if.end28.if.end69_crit_edge
  %33 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_uvd_inst, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp74258.not = icmp eq i8 %34, 0
  br i1 %cmp74258.not, label %if.end69.for.end143_crit_edge, label %for.body76.lr.ph

if.end69.for.end143_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end143

for.body76.lr.ph:                                 ; preds = %if.end69
  %harvest_config78 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %num_enc_rings103 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  %uvd_ring2_3 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16, i32 0, i32 1
  %35 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16
  br label %for.body76

for.body76:                                       ; preds = %for.inc141.for.body76_crit_edge, %for.body76.lr.ph
  %j.1259 = phi i32 [ 0, %for.body76.lr.ph ], [ %inc142, %for.inc141.for.body76_crit_edge ]
  %36 = ptrtoint ptr %harvest_config78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %harvest_config78, align 4
  %shl79 = shl nuw i32 1, %j.1259
  %and80 = and i32 %37, %shl79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end83, label %for.body76.for.inc141_crit_edge

for.body76.for.inc141_crit_edge:                  ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141

if.end83:                                         ; preds = %for.body76
  %38 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %virt, align 8
  %and84 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.then86, label %if.end83.if.end100_crit_edge

if.end83.if.end100_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then86:                                        ; preds = %if.end83
  %ring90 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.1259, i32 4
  %name = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.1259, i32 4, i32 29
  %me = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.1259, i32 4, i32 16
  %40 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %me, align 8
  %call91 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.12, i32 noundef %41)
  %irq95 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.1259, i32 6
  %call96 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %ring90, i32 noundef 512, ptr noundef %irq95, i32 noundef 0, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then86.if.end100_crit_edge, label %if.then86.cleanup_crit_edge

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then86.if.end100_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.end100:                                        ; preds = %if.then86.if.end100_crit_edge, %if.end83.if.end100_crit_edge
  %42 = ptrtoint ptr %num_enc_rings103 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_enc_rings103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp104254.not = icmp eq i32 %43, 0
  br i1 %cmp104254.not, label %if.end100.for.inc141_crit_edge, label %for.body106.lr.ph

if.end100.for.inc141_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141

for.body106.lr.ph:                                ; preds = %if.end100
  %irq133 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.1259, i32 6
  %doorbell_index123 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.1259, i32 5, i32 0, i32 23
  br label %for.body106

for.cond101:                                      ; preds = %if.end129
  %inc139 = add nuw i32 %i.1255, 1
  %44 = ptrtoint ptr %num_enc_rings103 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_enc_rings103, align 4
  %cmp104 = icmp ult i32 %inc139, %45
  br i1 %cmp104, label %for.cond101.for.body106_crit_edge, label %for.cond101.for.inc141_crit_edge

for.cond101.for.inc141_crit_edge:                 ; preds = %for.cond101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141

for.cond101.for.body106_crit_edge:                ; preds = %for.cond101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body106

for.body106:                                      ; preds = %for.cond101.for.body106_crit_edge, %for.body106.lr.ph
  %i.1255 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc139, %for.cond101.for.body106_crit_edge ]
  %arrayidx110 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.1259, i32 5, i32 %i.1255
  %name111 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.1259, i32 5, i32 %i.1255, i32 29
  %me113 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.1259, i32 5, i32 %i.1255, i32 16
  %46 = ptrtoint ptr %me113 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %me113, align 8
  %call114 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name111, ptr noundef nonnull @.str.13, i32 noundef %47, i32 noundef %i.1255)
  %48 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %virt, align 8
  %and117 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %for.body106.if.end129_crit_edge, label %if.then119

for.body106.if.end129_crit_edge:                  ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then119:                                       ; preds = %for.body106
  %use_doorbell = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.1259, i32 5, i32 %i.1255, i32 24
  %50 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %use_doorbell, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1255)
  %cmp120 = icmp eq i32 %i.1255, 0
  br i1 %cmp120, label %if.then122, label %if.else

if.then122:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %35, align 4
  %mul = shl i32 %52, 1
  %53 = ptrtoint ptr %doorbell_index123 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul, ptr %doorbell_index123, align 8
  br label %if.end129

if.else:                                          ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %uvd_ring2_3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %uvd_ring2_3, align 4
  %mul125 = shl i32 %55, 1
  %add126 = or i32 %mul125, 1
  %doorbell_index127 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.1259, i32 5, i32 %i.1255, i32 23
  %56 = ptrtoint ptr %doorbell_index127 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add126, ptr %doorbell_index127, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.else, %if.then122, %for.body106.if.end129_crit_edge
  %call134 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %arrayidx110, i32 noundef 512, ptr noundef %irq133, i32 noundef 0, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %for.cond101, label %if.end129.cleanup_crit_edge

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc141:                                       ; preds = %for.cond101.for.inc141_crit_edge, %if.end100.for.inc141_crit_edge, %for.body76.for.inc141_crit_edge
  %inc142 = add nuw nsw i32 %j.1259, 1
  %57 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %num_uvd_inst, align 8
  %conv73 = zext i8 %58 to i32
  %cmp74 = icmp ult i32 %inc142, %conv73
  br i1 %cmp74, label %for.inc141.for.body76_crit_edge, label %for.inc141.for.end143_crit_edge

for.inc141.for.end143_crit_edge:                  ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end143

for.inc141.for.body76_crit_edge:                  ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body76

for.end143:                                       ; preds = %for.inc141.for.end143_crit_edge, %if.end69.for.end143_crit_edge
  %call144 = tail call i32 @amdgpu_uvd_resume(ptr noundef %handle) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %for.end143.cleanup_crit_edge

for.end143.cleanup_crit_edge:                     ; preds = %for.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end147:                                        ; preds = %for.end143
  %call148 = tail call i32 @amdgpu_uvd_entity_init(ptr noundef %handle) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end147.cleanup_crit_edge

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end151:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  %call152 = tail call i32 @amdgpu_virt_alloc_mm_table(ptr noundef %handle) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %if.end147.cleanup_crit_edge, %for.end143.cleanup_crit_edge, %if.end129.cleanup_crit_edge, %if.then86.cleanup_crit_edge, %for.end24.cleanup_crit_edge, %for.body12.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %for.end24.cleanup_crit_edge ], [ %call144, %for.end143.cleanup_crit_edge ], [ %call148, %if.end147.cleanup_crit_edge ], [ %call152, %if.end151 ], [ %call134, %if.end129.cleanup_crit_edge ], [ %call96, %if.then86.cleanup_crit_edge ], [ %call18, %for.body12.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_virt_free_mm_table(ptr noundef %handle) #9
  %call = tail call i32 @amdgpu_uvd_suspend(ptr noundef %handle) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_uvd_inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 4
  %0 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_uvd_inst, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp35.not = icmp eq i8 %1, 0
  br i1 %cmp35.not, label %for.cond.preheader.for.end15_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end15_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end15

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  %num_enc_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc13.for.body_crit_edge, %for.body.lr.ph
  %j.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14, %for.inc13.for.body_crit_edge ]
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %j.036
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %for.cond6.preheader, label %for.body.for.inc13_crit_edge

for.body.for.inc13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13

for.cond6.preheader:                              ; preds = %for.body
  %4 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp832.not = icmp eq i32 %5, 0
  br i1 %cmp832.not, label %for.cond6.preheader.for.inc13_crit_edge, label %for.cond6.preheader.for.body10_crit_edge

for.cond6.preheader.for.body10_crit_edge:         ; preds = %for.cond6.preheader
  br label %for.body10

for.cond6.preheader.for.inc13_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond6.preheader.for.body10_crit_edge
  %i.033 = phi i32 [ %inc, %for.body10.for.body10_crit_edge ], [ 0, %for.cond6.preheader.for.body10_crit_edge ]
  %arrayidx12 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.036, i32 5, i32 %i.033
  tail call void @amdgpu_ring_fini(ptr noundef %arrayidx12) #9
  %inc = add nuw i32 %i.033, 1
  %6 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_enc_rings, align 4
  %cmp8 = icmp ult i32 %inc, %7
  br i1 %cmp8, label %for.body10.for.body10_crit_edge, label %for.body10.for.inc13_crit_edge

for.body10.for.inc13_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

for.inc13:                                        ; preds = %for.body10.for.inc13_crit_edge, %for.cond6.preheader.for.inc13_crit_edge, %for.body.for.inc13_crit_edge
  %inc14 = add nuw nsw i32 %j.036, 1
  %8 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_uvd_inst, align 8
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc14, %conv
  br i1 %cmp, label %for.inc13.for.body_crit_edge, label %for.inc13.for.end15_crit_edge

for.inc13.for.end15_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end15

for.inc13.for.body_crit_edge:                     ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end15:                                        ; preds = %for.inc13.for.end15_crit_edge, %for.cond.preheader.for.end15_crit_edge
  %call16 = tail call i32 @amdgpu_uvd_sw_fini(ptr noundef %handle) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %for.end15 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132, i32 8, i32 1
  %2 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_addr.i, align 4
  %uvd_table_offset.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %uvd_table_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uvd_table_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end414.i_crit_edge

if.then.if.end414.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end414.i

land.lhs.true.i:                                  ; preds = %if.then
  %uvd_table_size.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %uvd_table_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uvd_table_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.i = icmp eq i32 %7, 0
  br i1 %cmp13.i, label %if.then.i, label %land.lhs.true.i.if.end414.i_crit_edge

land.lhs.true.i.if.end414.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end414.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %3, align 4
  %header_size.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %header_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %header_size.i, align 4
  %vce_table_offset.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %vce_table_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vce_table_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14.i = icmp eq i32 %11, 0
  br i1 %cmp14.i, label %land.lhs.true15.i, label %if.then.i.if.else.i_crit_edge

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true15.i:                                ; preds = %if.then.i
  %vce_table_size.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %vce_table_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vce_table_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16.i = icmp eq i32 %13, 0
  br i1 %cmp16.i, label %land.lhs.true15.i.if.end.i_crit_edge, label %land.lhs.true15.i.if.else.i_crit_edge

land.lhs.true15.i.if.else.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true15.i.if.end.i_crit_edge:             ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true15.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %vce_table_size20.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %vce_table_size20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vce_table_size20.i, align 4
  %add.i = add i32 %15, %11
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true15.i.if.end.i_crit_edge
  %storemerge.i = phi i32 [ %add.i, %if.else.i ], [ 8, %land.lhs.true15.i.if.end.i_crit_edge ]
  %16 = ptrtoint ptr %uvd_table_offset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge.i, ptr %uvd_table_offset.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 %storemerge.i
  %uvd.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108
  %num_uvd_inst.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 4
  %17 = ptrtoint ptr %num_uvd_inst.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_uvd_inst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp251068.not.i = icmp eq i8 %18, 0
  br i1 %cmp251068.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %harvest_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  %arrayidx38.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %tmr_mc_addr_lo.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 25, i32 5
  %tmr_mc_addr_hi.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 25, i32 6
  %max_handles.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %init_table.01073.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %init_table.2.i, %for.inc.i.for.body.i_crit_edge ]
  %table_size.01072.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %table_size.2.i, %for.inc.i.for.body.i_crit_edge ]
  %direct_poll.sroa.0.01071.i = phi i32 [ 2, %for.body.lr.ph.i ], [ %direct_poll.sroa.0.1.i, %for.inc.i.for.body.i_crit_edge ]
  %direct_rd_mod_wt.sroa.0.01070.i = phi i32 [ 3, %for.body.lr.ph.i ], [ %direct_rd_mod_wt.sroa.0.1.i, %for.inc.i.for.body.i_crit_edge ]
  %direct_wt.sroa.0.01069.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %direct_wt.sroa.0.2.i, %for.inc.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %harvest_config.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %harvest_config.i, align 4
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %and.i = and i32 %20, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end30.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end30.i:                                       ; preds = %for.body.i
  %wptr.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %indvars.iv.i, i32 4, i32 7
  %21 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %wptr.i, align 8
  %22 = ptrtoint ptr %uvd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uvd.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add36.i = add i32 %25, 4099
  %and37.i = and i32 %add36.i, -4096
  %arrayidx40.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %indvars.iv.i
  %26 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx41.i = getelementptr i32, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx41.i, align 4
  %add42.i = shl i32 %29, 4
  %bf.shl.i.i = add i32 %add42.i, 23280
  %bf.clear.i.i = and i32 %direct_rd_mod_wt.sroa.0.01070.i, 15
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear.i.i
  %30 = ptrtoint ptr %init_table.01073.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %bf.set.i.i, ptr %init_table.01073.i, align 1
  %direct_rd_mod_wt.sroa.26.0.init_table.0.sroa_idx.i = getelementptr inbounds i8, ptr %init_table.01073.i, i32 4
  %31 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.init_table.0.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 4, ptr %direct_rd_mod_wt.sroa.26.0.init_table.0.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.init_table.0.sroa_idx.i = getelementptr inbounds i8, ptr %init_table.01073.i, i32 8
  %32 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.init_table.0.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 -1, ptr %direct_rd_mod_wt.sroa.33.0.init_table.0.sroa_idx.i, align 1
  %add.ptr43.i = getelementptr i32, ptr %init_table.01073.i, i32 3
  %33 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp45.i = icmp eq i32 %34, 2
  %35 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx52.i = getelementptr i32, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx52.i, align 4
  br i1 %cmp45.i, label %if.then47.i, label %if.else76.i

if.then47.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %tmr_mc_addr_lo.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tmr_mc_addr_lo.i, align 8
  %add53.i = shl i32 %38, 4
  %bf.shl.i643.i = add i32 %add53.i, 17904
  %bf.clear.i644.i = and i32 %direct_wt.sroa.0.01069.i, 15
  %bf.set.i645.i = or i32 %bf.shl.i643.i, %bf.clear.i644.i
  %direct_wt.sroa.80.0.insert.ext.i = zext i32 %40 to i64
  %direct_wt.sroa.0.0.insert.ext.i = zext i32 %bf.set.i645.i to i64
  %direct_wt.sroa.0.0.insert.shift.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext.i, 32
  %direct_wt.sroa.0.0.insert.insert.i = or i64 %direct_wt.sroa.0.0.insert.shift.i, %direct_wt.sroa.80.0.insert.ext.i
  %41 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert.i, ptr %add.ptr43.i, align 1
  %add.ptr56.i = getelementptr i32, ptr %init_table.01073.i, i32 5
  %42 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx62.i = getelementptr i32, ptr %43, i32 1
  %44 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx62.i, align 4
  %46 = ptrtoint ptr %tmr_mc_addr_hi.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tmr_mc_addr_hi.i, align 4
  %add63.i = shl i32 %45, 4
  %bf.shl.i647.i = add i32 %add63.i, 17888
  %bf.set.i649.i = or i32 %bf.shl.i647.i, %bf.clear.i644.i
  %direct_wt.sroa.80.0.insert.ext973.i = zext i32 %47 to i64
  %direct_wt.sroa.0.0.insert.ext853.i = zext i32 %bf.set.i649.i to i64
  %direct_wt.sroa.0.0.insert.shift854.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext853.i, 32
  %direct_wt.sroa.0.0.insert.insert856.i = or i64 %direct_wt.sroa.0.0.insert.shift854.i, %direct_wt.sroa.80.0.insert.ext973.i
  %48 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert856.i, ptr %add.ptr56.i, align 1
  %49 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx38.i, align 8
  %arrayidx72.i = getelementptr i32, ptr %50, i32 1
  %51 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx72.i, align 4
  %add73.i = shl i32 %52, 4
  %bf.shl.i652.i = add i32 %add73.i, 22560
  %bf.set.i654.i = or i32 %bf.shl.i652.i, %bf.clear.i644.i
  %direct_wt.sroa.0.0.insert.ext858.i = zext i32 %bf.set.i654.i to i64
  %direct_wt.sroa.0.0.insert.shift859.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext858.i, 32
  br label %if.end113.i

if.else76.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %gpu_addr.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %indvars.iv.i, i32 2
  %53 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %gpu_addr.i, align 8
  %add82.i = shl i32 %38, 4
  %bf.shl.i657.i = add i32 %add82.i, 17904
  %bf.clear.i658.i = and i32 %direct_wt.sroa.0.01069.i, 15
  %bf.set.i659.i = or i32 %bf.shl.i657.i, %bf.clear.i658.i
  %direct_wt.sroa.80.0.insert.ext981.i = and i64 %54, 4294967295
  %direct_wt.sroa.0.0.insert.ext863.i = zext i32 %bf.set.i659.i to i64
  %direct_wt.sroa.0.0.insert.shift864.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext863.i, 32
  %direct_wt.sroa.0.0.insert.insert866.i = or i64 %direct_wt.sroa.80.0.insert.ext981.i, %direct_wt.sroa.0.0.insert.shift864.i
  %55 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert866.i, ptr %add.ptr43.i, align 1
  %add.ptr89.i = getelementptr i32, ptr %init_table.01073.i, i32 5
  %56 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx95.i = getelementptr i32, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx95.i, align 4
  %60 = load i64, ptr %gpu_addr.i, align 8
  %add96.i = shl i32 %59, 4
  %bf.shl.i662.i = add i32 %add96.i, 17888
  %bf.set.i664.i = or i32 %bf.shl.i662.i, %bf.clear.i658.i
  %direct_wt.sroa.0.0.insert.ext868.i = zext i32 %bf.set.i664.i to i64
  %direct_wt.sroa.0.0.insert.insert871.i = tail call i64 @llvm.fshl.i64(i64 %direct_wt.sroa.0.0.insert.ext868.i, i64 %60, i64 32) #9
  %61 = ptrtoint ptr %add.ptr89.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert871.i, ptr %add.ptr89.i, align 1
  %62 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx38.i, align 8
  %arrayidx109.i = getelementptr i32, ptr %63, i32 1
  %64 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx109.i, align 4
  %add110.i = shl i32 %65, 4
  %bf.shl.i667.i = add i32 %add110.i, 22560
  %bf.set.i669.i = or i32 %bf.shl.i667.i, %bf.clear.i658.i
  %direct_wt.sroa.0.0.insert.ext873.i = zext i32 %bf.set.i669.i to i64
  %direct_wt.sroa.0.0.insert.shift874.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext873.i, 32
  %direct_wt.sroa.0.0.insert.insert876.i = or i64 %direct_wt.sroa.0.0.insert.shift874.i, 32
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.else76.i, %if.then47.i
  %direct_wt.sroa.0.0.insert.insert876.sink.i = phi i64 [ %direct_wt.sroa.0.0.insert.shift859.i, %if.then47.i ], [ %direct_wt.sroa.0.0.insert.insert876.i, %if.else76.i ]
  %direct_wt.sroa.0.1.i = phi i32 [ %bf.set.i654.i, %if.then47.i ], [ %bf.set.i669.i, %if.else76.i ]
  %offset.0.i = phi i32 [ 0, %if.then47.i ], [ %and37.i, %if.else76.i ]
  %66 = getelementptr i32, ptr %init_table.01073.i, i32 7
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert876.sink.i, ptr %66, align 1
  %init_table.1.i = getelementptr i32, ptr %init_table.01073.i, i32 9
  %68 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx118.i = getelementptr i32, ptr %69, i32 1
  %70 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx118.i, align 4
  %add119.i = shl i32 %71, 4
  %bf.shl.i672.i = add i32 %add119.i, 22576
  %bf.clear.i673.i = and i32 %direct_wt.sroa.0.1.i, 15
  %bf.set.i674.i = or i32 %bf.shl.i672.i, %bf.clear.i673.i
  %direct_wt.sroa.80.0.insert.ext993.i = zext i32 %and37.i to i64
  %direct_wt.sroa.0.0.insert.ext878.i = zext i32 %bf.set.i674.i to i64
  %direct_wt.sroa.0.0.insert.shift879.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext878.i, 32
  %direct_wt.sroa.0.0.insert.insert881.i = or i64 %direct_wt.sroa.0.0.insert.shift879.i, %direct_wt.sroa.80.0.insert.ext993.i
  %72 = ptrtoint ptr %init_table.1.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert881.i, ptr %init_table.1.i, align 1
  %add.ptr120.i = getelementptr i32, ptr %init_table.01073.i, i32 11
  %73 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx126.i = getelementptr i32, ptr %73, i32 1
  %74 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx126.i, align 4
  %gpu_addr132.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %indvars.iv.i, i32 2
  %76 = ptrtoint ptr %gpu_addr132.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %gpu_addr132.i, align 8
  %conv133.i = zext i32 %offset.0.i to i64
  %78 = trunc i64 %77 to i32
  %conv136.i = add i32 %offset.0.i, %78
  %add127.i = shl i32 %75, 4
  %bf.shl.i677.i = add i32 %add127.i, 16064
  %bf.set.i679.i = or i32 %bf.shl.i677.i, %bf.clear.i673.i
  %direct_wt.sroa.80.0.insert.ext997.i = zext i32 %conv136.i to i64
  %direct_wt.sroa.0.0.insert.ext883.i = zext i32 %bf.set.i679.i to i64
  %direct_wt.sroa.0.0.insert.shift884.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext883.i, 32
  %direct_wt.sroa.0.0.insert.insert886.i = or i64 %direct_wt.sroa.0.0.insert.shift884.i, %direct_wt.sroa.80.0.insert.ext997.i
  %79 = ptrtoint ptr %add.ptr120.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert886.i, ptr %add.ptr120.i, align 1
  %add.ptr137.i = getelementptr i32, ptr %init_table.01073.i, i32 13
  %80 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx143.i = getelementptr i32, ptr %80, i32 1
  %81 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx143.i, align 4
  %83 = load i64, ptr %gpu_addr132.i, align 8
  %add151.i = add i64 %83, %conv133.i
  %add144.i = shl i32 %82, 4
  %bf.shl.i682.i = add i32 %add144.i, 16080
  %bf.set.i684.i = or i32 %bf.shl.i682.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext888.i = zext i32 %bf.set.i684.i to i64
  %direct_wt.sroa.0.0.insert.insert891.i = tail call i64 @llvm.fshl.i64(i64 %direct_wt.sroa.0.0.insert.ext888.i, i64 %add151.i, i64 32) #9
  %84 = ptrtoint ptr %add.ptr137.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert891.i, ptr %add.ptr137.i, align 1
  %add.ptr155.i = getelementptr i32, ptr %init_table.01073.i, i32 15
  %85 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx161.i = getelementptr i32, ptr %86, i32 1
  %87 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx161.i, align 4
  %add162.i = shl i32 %88, 4
  %bf.shl.i687.i = add i32 %add162.i, 22592
  %bf.set.i689.i = or i32 %bf.shl.i687.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext893.i = zext i32 %bf.set.i689.i to i64
  %direct_wt.sroa.0.0.insert.shift894.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext893.i, 32
  %direct_wt.sroa.0.0.insert.insert896.i = or i64 %direct_wt.sroa.0.0.insert.shift894.i, 2097152
  %89 = ptrtoint ptr %add.ptr155.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert896.i, ptr %add.ptr155.i, align 1
  %add.ptr163.i = getelementptr i32, ptr %init_table.01073.i, i32 17
  %90 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx169.i = getelementptr i32, ptr %90, i32 1
  %91 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx169.i, align 4
  %add170.i = shl i32 %92, 4
  %bf.shl.i692.i = add i32 %add170.i, 22608
  %bf.set.i694.i = or i32 %bf.shl.i692.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext898.i = zext i32 %bf.set.i694.i to i64
  %direct_wt.sroa.0.0.insert.shift899.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext898.i, 32
  %direct_wt.sroa.0.0.insert.insert901.i = or i64 %direct_wt.sroa.0.0.insert.shift899.i, 262144
  %93 = ptrtoint ptr %add.ptr163.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert901.i, ptr %add.ptr163.i, align 1
  %add.ptr171.i = getelementptr i32, ptr %init_table.01073.i, i32 19
  %94 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx177.i = getelementptr i32, ptr %94, i32 1
  %95 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx177.i, align 4
  %97 = ptrtoint ptr %gpu_addr132.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %gpu_addr132.i, align 8
  %99 = trunc i64 %98 to i32
  %100 = add i32 %offset.0.i, 262144
  %conv188.i = add i32 %100, %99
  %add178.i = shl i32 %96, 4
  %bf.shl.i697.i = add i32 %add178.i, 16128
  %bf.set.i699.i = or i32 %bf.shl.i697.i, %bf.clear.i673.i
  %direct_wt.sroa.80.0.insert.ext1013.i = zext i32 %conv188.i to i64
  %direct_wt.sroa.0.0.insert.ext903.i = zext i32 %bf.set.i699.i to i64
  %direct_wt.sroa.0.0.insert.shift904.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext903.i, 32
  %direct_wt.sroa.0.0.insert.insert906.i = or i64 %direct_wt.sroa.0.0.insert.shift904.i, %direct_wt.sroa.80.0.insert.ext1013.i
  %101 = ptrtoint ptr %add.ptr171.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert906.i, ptr %add.ptr171.i, align 1
  %add.ptr189.i = getelementptr i32, ptr %init_table.01073.i, i32 21
  %102 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx195.i = getelementptr i32, ptr %102, i32 1
  %103 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx195.i, align 4
  %105 = load i64, ptr %gpu_addr132.i, align 8
  %add203.i = add nuw nsw i64 %conv133.i, 262144
  %add204.i = add i64 %add203.i, %105
  %add196.i = shl i32 %104, 4
  %bf.shl.i702.i = add i32 %add196.i, 16144
  %bf.set.i704.i = or i32 %bf.shl.i702.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext908.i = zext i32 %bf.set.i704.i to i64
  %direct_wt.sroa.0.0.insert.insert911.i = tail call i64 @llvm.fshl.i64(i64 %direct_wt.sroa.0.0.insert.ext908.i, i64 %add204.i, i64 32) #9
  %106 = ptrtoint ptr %add.ptr189.i to i32
  call void @__asan_storeN_noabort(i32 %106, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert911.i, ptr %add.ptr189.i, align 1
  %add.ptr208.i = getelementptr i32, ptr %init_table.01073.i, i32 23
  %107 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx214.i = getelementptr i32, ptr %108, i32 1
  %109 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx214.i, align 4
  %add215.i = shl i32 %110, 4
  %bf.shl.i707.i = add i32 %add215.i, 22624
  %bf.set.i709.i = or i32 %bf.shl.i707.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext913.i = zext i32 %bf.set.i709.i to i64
  %direct_wt.sroa.0.0.insert.shift914.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext913.i, 32
  %direct_wt.sroa.0.0.insert.insert916.i = or i64 %direct_wt.sroa.0.0.insert.shift914.i, 4194304
  %111 = ptrtoint ptr %add.ptr208.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert916.i, ptr %add.ptr208.i, align 1
  %add.ptr216.i = getelementptr i32, ptr %init_table.01073.i, i32 25
  %112 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx222.i = getelementptr i32, ptr %112, i32 1
  %113 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx222.i, align 4
  %add223.i = shl i32 %114, 4
  %bf.shl.i712.i = add i32 %add223.i, 22640
  %bf.set.i714.i = or i32 %bf.shl.i712.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext918.i = zext i32 %bf.set.i714.i to i64
  %direct_wt.sroa.0.0.insert.shift919.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext918.i, 32
  %direct_wt.sroa.0.0.insert.insert921.i = or i64 %direct_wt.sroa.0.0.insert.shift919.i, 2252800
  %115 = ptrtoint ptr %add.ptr216.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert921.i, ptr %add.ptr216.i, align 1
  %add.ptr224.i = getelementptr i32, ptr %init_table.01073.i, i32 27
  %116 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx230.i = getelementptr i32, ptr %116, i32 1
  %117 = ptrtoint ptr %arrayidx230.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx230.i, align 4
  %119 = ptrtoint ptr %max_handles.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max_handles.i, align 8
  %add231.i = shl i32 %118, 4
  %bf.shl.i717.i = add i32 %add231.i, 21376
  %bf.set.i719.i = or i32 %bf.shl.i717.i, %bf.clear.i673.i
  %direct_wt.sroa.80.0.insert.ext1029.i = zext i32 %120 to i64
  %direct_wt.sroa.0.0.insert.ext923.i = zext i32 %bf.set.i719.i to i64
  %direct_wt.sroa.0.0.insert.shift924.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext923.i, 32
  %direct_wt.sroa.0.0.insert.insert926.i = or i64 %direct_wt.sroa.0.0.insert.shift924.i, %direct_wt.sroa.80.0.insert.ext1029.i
  %121 = ptrtoint ptr %add.ptr224.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert926.i, ptr %add.ptr224.i, align 1
  %add.ptr233.i = getelementptr i32, ptr %init_table.01073.i, i32 29
  %122 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx239.i = getelementptr i32, ptr %122, i32 1
  %123 = ptrtoint ptr %arrayidx239.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx239.i, align 4
  %add240.i = shl i32 %124, 4
  %bf.shl.i722.i = add i32 %add240.i, 21184
  %bf.set.i724.i = or i32 %bf.shl.i722.i, %bf.clear.i.i
  %125 = ptrtoint ptr %add.ptr233.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %bf.set.i724.i, ptr %add.ptr233.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr233.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 30
  %126 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr233.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 0, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr233.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr233.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 31
  %127 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr233.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 -2, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr233.sroa_idx.i, align 1
  %add.ptr241.i = getelementptr i32, ptr %init_table.01073.i, i32 32
  %128 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx247.i = getelementptr i32, ptr %128, i32 1
  %129 = ptrtoint ptr %arrayidx247.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx247.i, align 4
  %add248.i = shl i32 %130, 4
  %bf.shl.i728.i = add i32 %add248.i, 21504
  %bf.set.i730.i = or i32 %bf.shl.i728.i, %bf.clear.i.i
  %131 = ptrtoint ptr %add.ptr241.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 %bf.set.i730.i, ptr %add.ptr241.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr241.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 33
  %132 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr241.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store i32 0, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr241.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr241.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 34
  %133 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr241.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 -3, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr241.sroa_idx.i, align 1
  %add.ptr249.i = getelementptr i32, ptr %init_table.01073.i, i32 35
  %134 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx255.i = getelementptr i32, ptr %134, i32 1
  %135 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx255.i, align 4
  %add256.i = shl i32 %136, 4
  %bf.shl.i734.i = add i32 %add256.i, 21456
  %bf.set.i736.i = or i32 %bf.shl.i734.i, %bf.clear.i.i
  %137 = ptrtoint ptr %add.ptr249.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 %bf.set.i736.i, ptr %add.ptr249.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr249.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 36
  %138 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr249.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 256, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr249.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr249.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 37
  %139 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr249.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 -257, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr249.sroa_idx.i, align 1
  %add.ptr257.i = getelementptr i32, ptr %init_table.01073.i, i32 38
  %140 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx263.i = getelementptr i32, ptr %140, i32 1
  %141 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx263.i, align 4
  %add264.i = shl i32 %142, 4
  %bf.shl.i740.i = add i32 %add264.i, 23040
  %bf.set.i742.i = or i32 %bf.shl.i740.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext928.i = zext i32 %bf.set.i742.i to i64
  %direct_wt.sroa.0.0.insert.shift929.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext928.i, 32
  %direct_wt.sroa.0.0.insert.insert931.i = or i64 %direct_wt.sroa.0.0.insert.shift929.i, 8431
  %143 = ptrtoint ptr %add.ptr257.i to i32
  call void @__asan_storeN_noabort(i32 %143, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert931.i, ptr %add.ptr257.i, align 1
  %add.ptr265.i = getelementptr i32, ptr %init_table.01073.i, i32 40
  %144 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx271.i = getelementptr i32, ptr %144, i32 1
  %145 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx271.i, align 4
  %add272.i = shl i32 %146, 4
  %bf.shl.i745.i = add i32 %add272.i, 22112
  %bf.set.i747.i = or i32 %bf.shl.i745.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext933.i = zext i32 %bf.set.i747.i to i64
  %direct_wt.sroa.0.0.insert.shift934.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext933.i, 32
  %direct_wt.sroa.0.0.insert.insert936.i = or i64 %direct_wt.sroa.0.0.insert.shift934.i, 3154752
  %147 = ptrtoint ptr %add.ptr265.i to i32
  call void @__asan_storeN_noabort(i32 %147, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert936.i, ptr %add.ptr265.i, align 1
  %add.ptr273.i = getelementptr i32, ptr %init_table.01073.i, i32 42
  %148 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx279.i = getelementptr i32, ptr %148, i32 1
  %149 = ptrtoint ptr %arrayidx279.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx279.i, align 4
  %add280.i = shl i32 %150, 4
  %bf.shl.i750.i = add i32 %add280.i, 23040
  %bf.set.i752.i = or i32 %bf.shl.i750.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext938.i = zext i32 %bf.set.i752.i to i64
  %direct_wt.sroa.0.0.insert.shift939.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext938.i, 32
  %direct_wt.sroa.0.0.insert.insert941.i = or i64 %direct_wt.sroa.0.0.insert.shift939.i, 8
  %151 = ptrtoint ptr %add.ptr273.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert941.i, ptr %add.ptr273.i, align 1
  %add.ptr281.i = getelementptr i32, ptr %init_table.01073.i, i32 44
  %152 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx287.i = getelementptr i32, ptr %152, i32 1
  %153 = ptrtoint ptr %arrayidx287.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx287.i, align 4
  %add288.i = shl i32 %154, 4
  %bf.shl.i755.i = add i32 %add288.i, 22912
  %bf.set.i757.i = or i32 %bf.shl.i755.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext943.i = zext i32 %bf.set.i757.i to i64
  %direct_wt.sroa.0.0.insert.shift944.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext943.i, 32
  %direct_wt.sroa.0.0.insert.insert946.i = or i64 %direct_wt.sroa.0.0.insert.shift944.i, 512
  %155 = ptrtoint ptr %add.ptr281.i to i32
  call void @__asan_storeN_noabort(i32 %155, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert946.i, ptr %add.ptr281.i, align 1
  %add.ptr289.i = getelementptr i32, ptr %init_table.01073.i, i32 46
  %156 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx295.i = getelementptr i32, ptr %156, i32 1
  %157 = ptrtoint ptr %arrayidx295.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx295.i, align 4
  %add296.i = shl i32 %158, 4
  %bf.shl.i760.i = add i32 %add296.i, 21504
  %bf.set.i762.i = or i32 %bf.shl.i760.i, %bf.clear.i.i
  %159 = ptrtoint ptr %add.ptr289.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 4)
  store i32 %bf.set.i762.i, ptr %add.ptr289.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr289.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 47
  %160 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr289.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 4)
  store i32 6, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr289.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr289.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 48
  %161 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr289.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 -7, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr289.sroa_idx.i, align 1
  %add.ptr297.i = getelementptr i32, ptr %init_table.01073.i, i32 49
  %162 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx303.i = getelementptr i32, ptr %162, i32 1
  %163 = ptrtoint ptr %arrayidx303.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx303.i, align 4
  %add304.i = shl i32 %164, 4
  %bf.shl.i766.i = add i32 %add304.i, 23280
  %bf.set.i768.i = or i32 %bf.shl.i766.i, %bf.clear.i.i
  %165 = ptrtoint ptr %add.ptr297.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 %bf.set.i768.i, ptr %add.ptr297.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr297.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 50
  %166 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr297.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %166, i32 4)
  store i32 0, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr297.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr297.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 51
  %167 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr297.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %167, i32 4)
  store i32 -5, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr297.sroa_idx.i, align 1
  %add.ptr305.i = getelementptr i32, ptr %init_table.01073.i, i32 52
  %ring_size.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %indvars.iv.i, i32 4, i32 9
  %168 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %ring_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %169)
  %cmp.i.i = icmp ugt i32 %169, 1
  %sub.i771.i = add i32 %169, -1
  %170 = tail call i32 @llvm.ctlz.i32(i32 %sub.i771.i, i1 false) #9, !range !71
  %add.i.i = sub nsw i32 0, %170
  %add.i.i.op = and i32 %add.i.i, 31
  %add.i.i.op.op = or i32 %add.i.i.op, 65536
  %or342.i = select i1 %cmp.i.i, i32 %add.i.i.op.op, i32 65536
  %171 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx347.i = getelementptr i32, ptr %172, i32 1
  %173 = ptrtoint ptr %arrayidx347.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx347.i, align 4
  %add348.i = shl i32 %174, 4
  %bf.shl.i773.i = add i32 %add348.i, 23184
  %bf.set.i775.i = or i32 %bf.shl.i773.i, %bf.clear.i673.i
  %direct_wt.sroa.80.0.insert.ext1049.i = zext i32 %or342.i to i64
  %direct_wt.sroa.0.0.insert.ext948.i = zext i32 %bf.set.i775.i to i64
  %direct_wt.sroa.0.0.insert.shift949.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext948.i, 32
  %direct_wt.sroa.0.0.insert.insert951.i = or i64 %direct_wt.sroa.0.0.insert.shift949.i, %direct_wt.sroa.80.0.insert.ext1049.i
  %175 = ptrtoint ptr %add.ptr305.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert951.i, ptr %add.ptr305.i, align 1
  %add.ptr349.i = getelementptr i32, ptr %init_table.01073.i, i32 54
  %ring_enc.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %indvars.iv.i, i32 5
  %wptr356.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i, i32 0, i32 7
  %176 = ptrtoint ptr %wptr356.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 0, ptr %wptr356.i, align 8
  %177 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx361.i = getelementptr i32, ptr %177, i32 1
  %178 = ptrtoint ptr %arrayidx361.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx361.i, align 4
  %gpu_addr363.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i, i32 0, i32 12
  %180 = ptrtoint ptr %gpu_addr363.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %gpu_addr363.i, align 8
  %add362.i = shl i32 %179, 4
  %bf.shl.i778.i = add i32 %add362.i, 16992
  %bf.set.i780.i = or i32 %bf.shl.i778.i, %bf.clear.i673.i
  %direct_wt.sroa.80.0.insert.ext1053.i = and i64 %181, 4294967295
  %direct_wt.sroa.0.0.insert.ext953.i = zext i32 %bf.set.i780.i to i64
  %direct_wt.sroa.0.0.insert.shift954.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext953.i, 32
  %direct_wt.sroa.0.0.insert.insert956.i = or i64 %direct_wt.sroa.0.0.insert.shift954.i, %direct_wt.sroa.80.0.insert.ext1053.i
  %182 = ptrtoint ptr %add.ptr349.i to i32
  call void @__asan_storeN_noabort(i32 %182, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert956.i, ptr %add.ptr349.i, align 1
  %add.ptr365.i = getelementptr i32, ptr %init_table.01073.i, i32 56
  %183 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx371.i = getelementptr i32, ptr %183, i32 1
  %184 = ptrtoint ptr %arrayidx371.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx371.i, align 4
  %186 = load i64, ptr %gpu_addr363.i, align 8
  %add372.i = shl i32 %185, 4
  %bf.shl.i783.i = add i32 %add372.i, 17008
  %bf.set.i785.i = or i32 %bf.shl.i783.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext958.i = zext i32 %bf.set.i785.i to i64
  %direct_wt.sroa.0.0.insert.insert961.i = tail call i64 @llvm.fshl.i64(i64 %direct_wt.sroa.0.0.insert.ext958.i, i64 %186, i64 32) #9
  %187 = ptrtoint ptr %add.ptr365.i to i32
  call void @__asan_storeN_noabort(i32 %187, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert961.i, ptr %add.ptr365.i, align 1
  %add.ptr377.i = getelementptr i32, ptr %init_table.01073.i, i32 58
  %188 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx383.i = getelementptr i32, ptr %189, i32 1
  %190 = ptrtoint ptr %arrayidx383.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx383.i, align 4
  %ring_size385.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i, i32 0, i32 9
  %192 = ptrtoint ptr %ring_size385.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %ring_size385.i, align 8
  %div641.i = lshr i32 %193, 2
  %add384.i = shl i32 %191, 4
  %bf.shl.i788.i = add i32 %add384.i, 17024
  %bf.set.i790.i = or i32 %bf.shl.i788.i, %bf.clear.i673.i
  %direct_wt.sroa.80.0.insert.ext1061.i = zext i32 %div641.i to i64
  %direct_wt.sroa.0.0.insert.ext963.i = zext i32 %bf.set.i790.i to i64
  %direct_wt.sroa.0.0.insert.shift964.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext963.i, 32
  %direct_wt.sroa.0.0.insert.insert966.i = or i64 %direct_wt.sroa.0.0.insert.shift964.i, %direct_wt.sroa.80.0.insert.ext1061.i
  %194 = ptrtoint ptr %add.ptr377.i to i32
  call void @__asan_storeN_noabort(i32 %194, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert966.i, ptr %add.ptr377.i, align 1
  %add.ptr386.i = getelementptr i32, ptr %init_table.01073.i, i32 60
  %195 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx392.i = getelementptr i32, ptr %195, i32 1
  %196 = ptrtoint ptr %arrayidx392.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx392.i, align 4
  %add393.i = shl i32 %197, 4
  %bf.shl.i793.i = add i32 %add393.i, 23040
  %bf.set.i795.i = or i32 %bf.shl.i793.i, %bf.clear.i673.i
  %direct_wt.sroa.0.0.insert.ext968.i = zext i32 %bf.set.i795.i to i64
  %direct_wt.sroa.0.0.insert.shift969.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext968.i, 32
  %198 = ptrtoint ptr %add.ptr386.i to i32
  call void @__asan_storeN_noabort(i32 %198, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.shift969.i, ptr %add.ptr386.i, align 1
  %add.ptr394.i = getelementptr i32, ptr %init_table.01073.i, i32 62
  %199 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx400.i = getelementptr i32, ptr %199, i32 1
  %200 = ptrtoint ptr %arrayidx400.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx400.i, align 4
  %add401.i = shl i32 %201, 4
  %bf.shl.i798.i = add i32 %add401.i, 21456
  %bf.set.i800.i = or i32 %bf.shl.i798.i, %bf.clear.i.i
  %202 = ptrtoint ptr %add.ptr394.i to i32
  call void @__asan_storeN_noabort(i32 %202, i32 4)
  store i32 %bf.set.i800.i, ptr %add.ptr394.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr394.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 63
  %203 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr394.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %203, i32 4)
  store i32 0, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr394.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr394.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 64
  %204 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr394.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 -257, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr394.sroa_idx.i, align 1
  %add.ptr402.i = getelementptr i32, ptr %init_table.01073.i, i32 65
  %205 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx408.i = getelementptr i32, ptr %205, i32 1
  %206 = ptrtoint ptr %arrayidx408.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx408.i, align 4
  %add409.i = shl i32 %207, 4
  %bf.shl.i804.i = add i32 %add409.i, 23280
  %bf.clear.i805.i = and i32 %direct_poll.sroa.0.01071.i, 15
  %bf.set.i806.i = or i32 %bf.shl.i804.i, %bf.clear.i805.i
  %208 = ptrtoint ptr %add.ptr402.i to i32
  call void @__asan_storeN_noabort(i32 %208, i32 4)
  store i32 %bf.set.i806.i, ptr %add.ptr402.i, align 1
  %direct_poll.sroa.8.0.add.ptr402.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 66
  %209 = ptrtoint ptr %direct_poll.sroa.8.0.add.ptr402.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %209, i32 4)
  store i32 2, ptr %direct_poll.sroa.8.0.add.ptr402.sroa_idx.i, align 1
  %direct_poll.sroa.9.0.add.ptr402.sroa_idx.i = getelementptr i32, ptr %init_table.01073.i, i32 67
  %210 = ptrtoint ptr %direct_poll.sroa.9.0.add.ptr402.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 2, ptr %direct_poll.sroa.9.0.add.ptr402.sroa_idx.i, align 1
  %add.ptr410.i = getelementptr i32, ptr %init_table.01073.i, i32 68
  %add411.i = add i32 %table_size.01072.i, 68
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end113.i, %for.body.i.for.inc.i_crit_edge
  %direct_wt.sroa.0.2.i = phi i32 [ %bf.set.i795.i, %if.end113.i ], [ %direct_wt.sroa.0.01069.i, %for.body.i.for.inc.i_crit_edge ]
  %direct_rd_mod_wt.sroa.0.1.i = phi i32 [ %bf.set.i800.i, %if.end113.i ], [ %direct_rd_mod_wt.sroa.0.01070.i, %for.body.i.for.inc.i_crit_edge ]
  %direct_poll.sroa.0.1.i = phi i32 [ %bf.set.i806.i, %if.end113.i ], [ %direct_poll.sroa.0.01071.i, %for.body.i.for.inc.i_crit_edge ]
  %table_size.2.i = phi i32 [ %add411.i, %if.end113.i ], [ %table_size.01072.i, %for.body.i.for.inc.i_crit_edge ]
  %init_table.2.i = phi ptr [ %add.ptr410.i, %if.end113.i ], [ %init_table.01073.i, %for.body.i.for.inc.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %211 = ptrtoint ptr %num_uvd_inst.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %num_uvd_inst.i, align 8
  %213 = zext i8 %212 to i32
  %cmp25.i = icmp ult i32 %indvars.iv.next.i, %213
  br i1 %cmp25.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %table_size.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %table_size.2.i, %for.inc.i.for.end.i_crit_edge ]
  %init_table.0.lcssa.i = phi ptr [ %add.ptr.i, %if.end.i.for.end.i_crit_edge ], [ %init_table.2.i, %for.inc.i.for.end.i_crit_edge ]
  %214 = ptrtoint ptr %init_table.0.lcssa.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 15, ptr %init_table.0.lcssa.i, align 1
  %add412.i = add i32 %table_size.0.lcssa.i, 1
  %215 = ptrtoint ptr %uvd_table_size.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %add412.i, ptr %uvd_table_size.i, align 4
  br label %if.end414.i

if.end414.i:                                      ; preds = %for.end.i, %land.lhs.true.i.if.end414.i_crit_edge, %if.then.if.end414.i_crit_edge
  %gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132, i32 8, i32 2
  %216 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %gpu_addr.i.i, align 8
  %218 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cpu_addr.i, align 4
  %header_size.i.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %header_size.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %header_size.i.i, align 4
  %vce_table_size.i.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %219, i32 0, i32 5
  %222 = ptrtoint ptr %vce_table_size.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %vce_table_size.i.i, align 4
  %add.i808.i = add i32 %223, %221
  %uvd_table_size.i.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %219, i32 0, i32 7
  %224 = ptrtoint ptr %uvd_table_size.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %uvd_table_size.i.i, align 4
  %add1.i.i = add i32 %add.i808.i, %225
  %226 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %virt, align 8
  %and.i.i = and i32 %227, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end414.i.cond.false.i810.i_crit_edge, label %land.lhs.true.i.i

if.end414.i.cond.false.i810.i_crit_edge:          ; preds = %if.end414.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i810.i

land.lhs.true.i.i:                                ; preds = %if.end414.i
  %funcs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %228 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %funcs.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %229, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cond.false.i810.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.cond.false.i810.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i810.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %sriov_wreg.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %229, i32 0, i32 12
  %230 = ptrtoint ptr %sriov_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %sriov_wreg.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %231, null
  br i1 %tobool7.not.i.i, label %land.lhs.true3.i.i.cond.false.i810.i_crit_edge, label %cond.true.i809.i

land.lhs.true3.i.i.cond.false.i810.i_crit_edge:   ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i810.i

cond.true.i809.i:                                 ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %232 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx.i.i, align 8
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %233, align 4
  %add14.i.i = add i32 %235, 4300
  %conv.i.i = trunc i64 %217 to i32
  tail call void %231(ptr noundef %handle, i32 noundef %add14.i.i, i32 noundef %conv.i.i, i32 noundef 0, i32 noundef 18) #9
  br label %cond.end.i.i

cond.false.i810.i:                                ; preds = %land.lhs.true3.i.i.cond.false.i810.i_crit_edge, %land.lhs.true.i.i.cond.false.i810.i_crit_edge, %if.end414.i.cond.false.i810.i_crit_edge
  %arrayidx17.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %236 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx17.i.i, align 8
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %237, align 4
  %add20.i.i = add i32 %239, 4300
  %conv22.i.i = trunc i64 %217 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add20.i.i, i32 noundef %conv22.i.i, i32 noundef 0) #9
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i810.i, %cond.true.i809.i
  %240 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %virt, align 8
  %and25.i.i = and i32 %241, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.end.i.i.cond.false50.i.i_crit_edge, label %land.lhs.true27.i.i

cond.end.i.i.cond.false50.i.i_crit_edge:          ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false50.i.i

land.lhs.true27.i.i:                              ; preds = %cond.end.i.i
  %funcs30.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %242 = ptrtoint ptr %funcs30.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %funcs30.i.i, align 4
  %tobool31.not.i.i = icmp eq ptr %243, null
  br i1 %tobool31.not.i.i, label %land.lhs.true27.i.i.cond.false50.i.i_crit_edge, label %land.lhs.true32.i.i

land.lhs.true27.i.i.cond.false50.i.i_crit_edge:   ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false50.i.i

land.lhs.true32.i.i:                              ; preds = %land.lhs.true27.i.i
  %sriov_wreg36.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %243, i32 0, i32 12
  %244 = ptrtoint ptr %sriov_wreg36.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %sriov_wreg36.i.i, align 4
  %tobool37.not.i.i = icmp eq ptr %245, null
  br i1 %tobool37.not.i.i, label %land.lhs.true32.i.i.cond.false50.i.i_crit_edge, label %cond.true38.i.i

land.lhs.true32.i.i.cond.false50.i.i_crit_edge:   ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false50.i.i

cond.true38.i.i:                                  ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx44.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %246 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx44.i.i, align 8
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %247, align 4
  %add47.i.i = add i32 %249, 4301
  %shr.i.i = lshr i64 %217, 32
  %conv49.i.i = trunc i64 %shr.i.i to i32
  tail call void %245(ptr noundef %handle, i32 noundef %add47.i.i, i32 noundef %conv49.i.i, i32 noundef 0, i32 noundef 18) #9
  br label %cond.end59.i.i

cond.false50.i.i:                                 ; preds = %land.lhs.true32.i.i.cond.false50.i.i_crit_edge, %land.lhs.true27.i.i.cond.false50.i.i_crit_edge, %cond.end.i.i.cond.false50.i.i_crit_edge
  %arrayidx52.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %250 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx52.i.i, align 8
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %251, align 4
  %add55.i.i = add i32 %253, 4301
  %shr56.i.i = lshr i64 %217, 32
  %conv58.i.i = trunc i64 %shr56.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add55.i.i, i32 noundef %conv58.i.i, i32 noundef 0) #9
  br label %cond.end59.i.i

cond.end59.i.i:                                   ; preds = %cond.false50.i.i, %cond.true38.i.i
  %254 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %virt, align 8
  %and62.i.i = and i32 %255, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i.i)
  %tobool63.not.i.i = icmp eq i32 %and62.i.i, 0
  br i1 %tobool63.not.i.i, label %cond.end59.i.i.cond.false84.i.i_crit_edge, label %land.lhs.true64.i.i

cond.end59.i.i.cond.false84.i.i_crit_edge:        ; preds = %cond.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false84.i.i

land.lhs.true64.i.i:                              ; preds = %cond.end59.i.i
  %funcs67.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %256 = ptrtoint ptr %funcs67.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %funcs67.i.i, align 4
  %tobool68.not.i.i = icmp eq ptr %257, null
  br i1 %tobool68.not.i.i, label %land.lhs.true64.i.i.cond.false84.i.i_crit_edge, label %land.lhs.true69.i.i

land.lhs.true64.i.i.cond.false84.i.i_crit_edge:   ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false84.i.i

land.lhs.true69.i.i:                              ; preds = %land.lhs.true64.i.i
  %sriov_rreg.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %257, i32 0, i32 13
  %258 = ptrtoint ptr %sriov_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %sriov_rreg.i.i, align 4
  %tobool73.not.i.i = icmp eq ptr %259, null
  br i1 %tobool73.not.i.i, label %land.lhs.true69.i.i.cond.false84.i.i_crit_edge, label %cond.true74.i.i

land.lhs.true69.i.i.cond.false84.i.i_crit_edge:   ; preds = %land.lhs.true69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false84.i.i

cond.true74.i.i:                                  ; preds = %land.lhs.true69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx80.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %260 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx80.i.i, align 8
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %261, align 4
  %add83.i.i = add i32 %263, 4299
  %call.i.i = tail call i32 %259(ptr noundef %handle, i32 noundef %add83.i.i, i32 noundef 0, i32 noundef 18) #9
  br label %cond.end91.i.i

cond.false84.i.i:                                 ; preds = %land.lhs.true69.i.i.cond.false84.i.i_crit_edge, %land.lhs.true64.i.i.cond.false84.i.i_crit_edge, %cond.end59.i.i.cond.false84.i.i_crit_edge
  %arrayidx86.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %264 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %arrayidx86.i.i, align 8
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %265, align 4
  %add89.i.i = add i32 %267, 4299
  %call90.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add89.i.i, i32 noundef 0) #9
  br label %cond.end91.i.i

cond.end91.i.i:                                   ; preds = %cond.false84.i.i, %cond.true74.i.i
  %cond.i.i = phi i32 [ %call.i.i, %cond.true74.i.i ], [ %call90.i.i, %cond.false84.i.i ]
  %and92.i.i = and i32 %cond.i.i, -16
  %268 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %virt, align 8
  %and95.i.i = and i32 %269, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i.i)
  %tobool96.not.i.i = icmp eq i32 %and95.i.i, 0
  br i1 %tobool96.not.i.i, label %cond.end91.i.i.cond.false118.i.i_crit_edge, label %land.lhs.true97.i.i

cond.end91.i.i.cond.false118.i.i_crit_edge:       ; preds = %cond.end91.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false118.i.i

land.lhs.true97.i.i:                              ; preds = %cond.end91.i.i
  %funcs100.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %270 = ptrtoint ptr %funcs100.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %funcs100.i.i, align 4
  %tobool101.not.i.i = icmp eq ptr %271, null
  br i1 %tobool101.not.i.i, label %land.lhs.true97.i.i.cond.false118.i.i_crit_edge, label %land.lhs.true102.i.i

land.lhs.true97.i.i.cond.false118.i.i_crit_edge:  ; preds = %land.lhs.true97.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false118.i.i

land.lhs.true102.i.i:                             ; preds = %land.lhs.true97.i.i
  %sriov_wreg106.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %271, i32 0, i32 12
  %272 = ptrtoint ptr %sriov_wreg106.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %sriov_wreg106.i.i, align 4
  %tobool107.not.i.i = icmp eq ptr %273, null
  br i1 %tobool107.not.i.i, label %land.lhs.true102.i.i.cond.false118.i.i_crit_edge, label %cond.true108.i.i

land.lhs.true102.i.i.cond.false118.i.i_crit_edge: ; preds = %land.lhs.true102.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false118.i.i

cond.true108.i.i:                                 ; preds = %land.lhs.true102.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx114.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %274 = ptrtoint ptr %arrayidx114.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx114.i.i, align 8
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %275, align 4
  %add117.i.i = add i32 %277, 4299
  tail call void %273(ptr noundef %handle, i32 noundef %add117.i.i, i32 noundef %and92.i.i, i32 noundef 0, i32 noundef 18) #9
  br label %cond.end124.i.i

cond.false118.i.i:                                ; preds = %land.lhs.true102.i.i.cond.false118.i.i_crit_edge, %land.lhs.true97.i.i.cond.false118.i.i_crit_edge, %cond.end91.i.i.cond.false118.i.i_crit_edge
  %arrayidx120.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %278 = ptrtoint ptr %arrayidx120.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %arrayidx120.i.i, align 8
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %279, align 4
  %add123.i.i = add i32 %281, 4299
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add123.i.i, i32 noundef %and92.i.i, i32 noundef 0) #9
  br label %cond.end124.i.i

cond.end124.i.i:                                  ; preds = %cond.false118.i.i, %cond.true108.i.i
  %282 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %virt, align 8
  %and127.i.i = and i32 %283, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i.i)
  %tobool128.not.i.i = icmp eq i32 %and127.i.i, 0
  br i1 %tobool128.not.i.i, label %cond.end124.i.i.cond.false150.i.i_crit_edge, label %land.lhs.true129.i.i

cond.end124.i.i.cond.false150.i.i_crit_edge:      ; preds = %cond.end124.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false150.i.i

land.lhs.true129.i.i:                             ; preds = %cond.end124.i.i
  %funcs132.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %284 = ptrtoint ptr %funcs132.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %funcs132.i.i, align 4
  %tobool133.not.i.i = icmp eq ptr %285, null
  br i1 %tobool133.not.i.i, label %land.lhs.true129.i.i.cond.false150.i.i_crit_edge, label %land.lhs.true134.i.i

land.lhs.true129.i.i.cond.false150.i.i_crit_edge: ; preds = %land.lhs.true129.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false150.i.i

land.lhs.true134.i.i:                             ; preds = %land.lhs.true129.i.i
  %sriov_wreg138.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %285, i32 0, i32 12
  %286 = ptrtoint ptr %sriov_wreg138.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %sriov_wreg138.i.i, align 4
  %tobool139.not.i.i = icmp eq ptr %287, null
  br i1 %tobool139.not.i.i, label %land.lhs.true134.i.i.cond.false150.i.i_crit_edge, label %cond.true140.i.i

land.lhs.true134.i.i.cond.false150.i.i_crit_edge: ; preds = %land.lhs.true134.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false150.i.i

cond.true140.i.i:                                 ; preds = %land.lhs.true134.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx146.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %288 = ptrtoint ptr %arrayidx146.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx146.i.i, align 8
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %289, align 4
  %add149.i.i = add i32 %291, 4302
  tail call void %287(ptr noundef %handle, i32 noundef %add149.i.i, i32 noundef %add1.i.i, i32 noundef 0, i32 noundef 18) #9
  br label %cond.end156.i.i

cond.false150.i.i:                                ; preds = %land.lhs.true134.i.i.cond.false150.i.i_crit_edge, %land.lhs.true129.i.i.cond.false150.i.i_crit_edge, %cond.end124.i.i.cond.false150.i.i_crit_edge
  %arrayidx152.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %292 = ptrtoint ptr %arrayidx152.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx152.i.i, align 8
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %293, align 4
  %add155.i.i = add i32 %295, 4302
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add155.i.i, i32 noundef %add1.i.i, i32 noundef 0) #9
  br label %cond.end156.i.i

cond.end156.i.i:                                  ; preds = %cond.false150.i.i, %cond.true140.i.i
  %296 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %virt, align 8
  %and159.i.i = and i32 %297, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159.i.i)
  %tobool160.not.i.i = icmp eq i32 %and159.i.i, 0
  br i1 %tobool160.not.i.i, label %cond.end156.i.i.cond.false182.i.i_crit_edge, label %land.lhs.true161.i.i

cond.end156.i.i.cond.false182.i.i_crit_edge:      ; preds = %cond.end156.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false182.i.i

land.lhs.true161.i.i:                             ; preds = %cond.end156.i.i
  %funcs164.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %298 = ptrtoint ptr %funcs164.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %funcs164.i.i, align 4
  %tobool165.not.i.i = icmp eq ptr %299, null
  br i1 %tobool165.not.i.i, label %land.lhs.true161.i.i.cond.false182.i.i_crit_edge, label %land.lhs.true166.i.i

land.lhs.true161.i.i.cond.false182.i.i_crit_edge: ; preds = %land.lhs.true161.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false182.i.i

land.lhs.true166.i.i:                             ; preds = %land.lhs.true161.i.i
  %sriov_wreg170.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %299, i32 0, i32 12
  %300 = ptrtoint ptr %sriov_wreg170.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %sriov_wreg170.i.i, align 4
  %tobool171.not.i.i = icmp eq ptr %301, null
  br i1 %tobool171.not.i.i, label %land.lhs.true166.i.i.cond.false182.i.i_crit_edge, label %cond.true172.i.i

land.lhs.true166.i.i.cond.false182.i.i_crit_edge: ; preds = %land.lhs.true166.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false182.i.i

cond.true172.i.i:                                 ; preds = %land.lhs.true166.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx178.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %302 = ptrtoint ptr %arrayidx178.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx178.i.i, align 8
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %303, align 4
  %add181.i.i = add i32 %305, 4307
  tail call void %301(ptr noundef %handle, i32 noundef %add181.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 18) #9
  br label %cond.end188.i.i

cond.false182.i.i:                                ; preds = %land.lhs.true166.i.i.cond.false182.i.i_crit_edge, %land.lhs.true161.i.i.cond.false182.i.i_crit_edge, %cond.end156.i.i.cond.false182.i.i_crit_edge
  %arrayidx184.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %306 = ptrtoint ptr %arrayidx184.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %arrayidx184.i.i, align 8
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %307, align 4
  %add187.i.i = add i32 %309, 4307
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add187.i.i, i32 noundef 0, i32 noundef 0) #9
  br label %cond.end188.i.i

cond.end188.i.i:                                  ; preds = %cond.false182.i.i, %cond.true172.i.i
  %num_uvd_inst.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 4
  %310 = ptrtoint ptr %num_uvd_inst.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %num_uvd_inst.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %cmp452.not.i.i = icmp eq i8 %311, 0
  br i1 %cmp452.not.i.i, label %cond.end188.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

cond.end188.i.i.for.end.i.i_crit_edge:            ; preds = %cond.end188.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %cond.end188.i.i
  %harvest_config.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  %wb197.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 70, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0453.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %312 = ptrtoint ptr %harvest_config.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %harvest_config.i.i, align 4
  %shl.i.i = shl nuw i32 1, %i.0453.i.i
  %and192.i.i = and i32 %313, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192.i.i)
  %tobool193.not.i.i = icmp eq i32 %and192.i.i, 0
  br i1 %tobool193.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ring_enc.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.0453.i.i, i32 5
  %doorbell_index.i.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i.i, i32 0, i32 23
  %314 = ptrtoint ptr %doorbell_index.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %doorbell_index.i.i, align 8
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %handle, i32 noundef %315, i32 noundef 0) #9
  %316 = ptrtoint ptr %wb197.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %wb197.i.i, align 4
  %wptr_offs.i.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i.i, i32 0, i32 26
  %318 = ptrtoint ptr %wptr_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %wptr_offs.i.i, align 8
  %arrayidx203.i.i = getelementptr i32, ptr %317, i32 %319
  %320 = ptrtoint ptr %arrayidx203.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store volatile i32 0, ptr %arrayidx203.i.i, align 4
  %wptr.i.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i.i, i32 0, i32 7
  %321 = call ptr @memset(ptr %wptr.i.i, i32 0, i32 16)
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0453.i.i, 1
  %322 = ptrtoint ptr %num_uvd_inst.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %num_uvd_inst.i.i, align 8
  %conv189.i.i = zext i8 %323 to i32
  %cmp.i811.i = icmp ult i32 %inc.i.i, %conv189.i.i
  br i1 %cmp.i811.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %cond.end188.i.i.for.end.i.i_crit_edge
  %324 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %virt, align 8
  %and216.i.i = and i32 %325, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216.i.i)
  %tobool217.not.i.i = icmp eq i32 %and216.i.i, 0
  br i1 %tobool217.not.i.i, label %for.end.i.i.cond.false239.i.i_crit_edge, label %land.lhs.true218.i.i

for.end.i.i.cond.false239.i.i_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false239.i.i

land.lhs.true218.i.i:                             ; preds = %for.end.i.i
  %funcs221.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %326 = ptrtoint ptr %funcs221.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %funcs221.i.i, align 4
  %tobool222.not.i.i = icmp eq ptr %327, null
  br i1 %tobool222.not.i.i, label %land.lhs.true218.i.i.cond.false239.i.i_crit_edge, label %land.lhs.true223.i.i

land.lhs.true218.i.i.cond.false239.i.i_crit_edge: ; preds = %land.lhs.true218.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false239.i.i

land.lhs.true223.i.i:                             ; preds = %land.lhs.true218.i.i
  %sriov_wreg227.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %327, i32 0, i32 12
  %328 = ptrtoint ptr %sriov_wreg227.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %sriov_wreg227.i.i, align 4
  %tobool228.not.i.i = icmp eq ptr %329, null
  br i1 %tobool228.not.i.i, label %land.lhs.true223.i.i.cond.false239.i.i_crit_edge, label %cond.true229.i.i

land.lhs.true223.i.i.cond.false239.i.i_crit_edge: ; preds = %land.lhs.true223.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false239.i.i

cond.true229.i.i:                                 ; preds = %land.lhs.true223.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx235.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %330 = ptrtoint ptr %arrayidx235.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx235.i.i, align 8
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %331, align 4
  %add238.i.i = add i32 %333, 4306
  tail call void %329(ptr noundef %handle, i32 noundef %add238.i.i, i32 noundef 268435457, i32 noundef 0, i32 noundef 18) #9
  br label %cond.end245.i.i

cond.false239.i.i:                                ; preds = %land.lhs.true223.i.i.cond.false239.i.i_crit_edge, %land.lhs.true218.i.i.cond.false239.i.i_crit_edge, %for.end.i.i.cond.false239.i.i_crit_edge
  %arrayidx241.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %334 = ptrtoint ptr %arrayidx241.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %arrayidx241.i.i, align 8
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %335, align 4
  %add244.i.i = add i32 %337, 4306
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add244.i.i, i32 noundef 268435457, i32 noundef 0) #9
  br label %cond.end245.i.i

cond.end245.i.i:                                  ; preds = %cond.false239.i.i, %cond.true229.i.i
  %338 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %virt, align 8
  %and248.i.i = and i32 %339, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248.i.i)
  %tobool249.not.i.i = icmp eq i32 %and248.i.i, 0
  br i1 %tobool249.not.i.i, label %cond.end245.i.i.cond.false272.i.i_crit_edge, label %land.lhs.true250.i.i

cond.end245.i.i.cond.false272.i.i_crit_edge:      ; preds = %cond.end245.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false272.i.i

land.lhs.true250.i.i:                             ; preds = %cond.end245.i.i
  %funcs253.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %340 = ptrtoint ptr %funcs253.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %funcs253.i.i, align 4
  %tobool254.not.i.i = icmp eq ptr %341, null
  br i1 %tobool254.not.i.i, label %land.lhs.true250.i.i.cond.false272.i.i_crit_edge, label %land.lhs.true255.i.i

land.lhs.true250.i.i.cond.false272.i.i_crit_edge: ; preds = %land.lhs.true250.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false272.i.i

land.lhs.true255.i.i:                             ; preds = %land.lhs.true250.i.i
  %sriov_rreg259.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %341, i32 0, i32 13
  %342 = ptrtoint ptr %sriov_rreg259.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %sriov_rreg259.i.i, align 4
  %tobool260.not.i.i = icmp eq ptr %343, null
  br i1 %tobool260.not.i.i, label %land.lhs.true255.i.i.cond.false272.i.i_crit_edge, label %cond.true261.i.i

land.lhs.true255.i.i.cond.false272.i.i_crit_edge: ; preds = %land.lhs.true255.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false272.i.i

cond.true261.i.i:                                 ; preds = %land.lhs.true255.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx267.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %344 = ptrtoint ptr %arrayidx267.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %arrayidx267.i.i, align 8
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %345, align 4
  %add270.i.i = add i32 %347, 4307
  %call271.i.i = tail call i32 %343(ptr noundef %handle, i32 noundef %add270.i.i, i32 noundef 0, i32 noundef 18) #9
  br label %cond.end279.i.i

cond.false272.i.i:                                ; preds = %land.lhs.true255.i.i.cond.false272.i.i_crit_edge, %land.lhs.true250.i.i.cond.false272.i.i_crit_edge, %cond.end245.i.i.cond.false272.i.i_crit_edge
  %arrayidx274.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %348 = ptrtoint ptr %arrayidx274.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx274.i.i, align 8
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %349, align 4
  %add277.i.i = add i32 %351, 4307
  %call278.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add277.i.i, i32 noundef 0) #9
  br label %cond.end279.i.i

cond.end279.i.i:                                  ; preds = %cond.false272.i.i, %cond.true261.i.i
  %cond280.i.i = phi i32 [ %call271.i.i, %cond.true261.i.i ], [ %call278.i.i, %cond.false272.i.i ]
  %funcs291.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %arrayidx305.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %cond.end317.i.i.while.cond.i.i_crit_edge, %cond.end279.i.i
  %data.0.i.i = phi i32 [ %cond280.i.i, %cond.end279.i.i ], [ %cond318.i.i, %cond.end317.i.i.while.cond.i.i_crit_edge ]
  %loop.0.i.i = phi i32 [ 1000, %cond.end279.i.i ], [ %dec.i.i, %cond.end317.i.i.while.cond.i.i_crit_edge ]
  %and281.i.i = and i32 %data.0.i.i, 268435458
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435458, i32 %and281.i.i)
  %cmp282.not.i.i = icmp eq i32 %and281.i.i, 268435458
  br i1 %cmp282.not.i.i, label %while.cond.i.i.if.end_crit_edge, label %while.body.i.i

while.cond.i.i.if.end_crit_edge:                  ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %352 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %352(i32 noundef 2147480) #9
  %353 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %virt, align 8
  %and286.i.i = and i32 %354, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286.i.i)
  %tobool287.not.i.i = icmp eq i32 %and286.i.i, 0
  br i1 %tobool287.not.i.i, label %while.body.i.i.cond.false310.i.i_crit_edge, label %land.lhs.true288.i.i

while.body.i.i.cond.false310.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false310.i.i

land.lhs.true288.i.i:                             ; preds = %while.body.i.i
  %355 = ptrtoint ptr %funcs291.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %funcs291.i.i, align 4
  %tobool292.not.i.i = icmp eq ptr %356, null
  br i1 %tobool292.not.i.i, label %land.lhs.true288.i.i.cond.false310.i.i_crit_edge, label %land.lhs.true293.i.i

land.lhs.true288.i.i.cond.false310.i.i_crit_edge: ; preds = %land.lhs.true288.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false310.i.i

land.lhs.true293.i.i:                             ; preds = %land.lhs.true288.i.i
  %sriov_rreg297.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %356, i32 0, i32 13
  %357 = ptrtoint ptr %sriov_rreg297.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %sriov_rreg297.i.i, align 4
  %tobool298.not.i.i = icmp eq ptr %358, null
  br i1 %tobool298.not.i.i, label %land.lhs.true293.i.i.cond.false310.i.i_crit_edge, label %cond.true299.i.i

land.lhs.true293.i.i.cond.false310.i.i_crit_edge: ; preds = %land.lhs.true293.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false310.i.i

cond.true299.i.i:                                 ; preds = %land.lhs.true293.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %359 = ptrtoint ptr %arrayidx305.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %arrayidx305.i.i, align 8
  %361 = ptrtoint ptr %360 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %360, align 4
  %add308.i.i = add i32 %362, 4307
  %call309.i.i = tail call i32 %358(ptr noundef %handle, i32 noundef %add308.i.i, i32 noundef 0, i32 noundef 18) #9
  br label %cond.end317.i.i

cond.false310.i.i:                                ; preds = %land.lhs.true293.i.i.cond.false310.i.i_crit_edge, %land.lhs.true288.i.i.cond.false310.i.i_crit_edge, %while.body.i.i.cond.false310.i.i_crit_edge
  %363 = ptrtoint ptr %arrayidx305.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %arrayidx305.i.i, align 8
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %364, align 4
  %add315.i.i = add i32 %366, 4307
  %call316.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add315.i.i, i32 noundef 0) #9
  br label %cond.end317.i.i

cond.end317.i.i:                                  ; preds = %cond.false310.i.i, %cond.true299.i.i
  %cond318.i.i = phi i32 [ %call309.i.i, %cond.true299.i.i ], [ %call316.i.i, %cond.false310.i.i ]
  %dec.i.i = add nsw i32 %loop.0.i.i, -1
  %tobool319.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool319.not.i.i, label %do.end.i.i, label %cond.end317.i.i.while.cond.i.i_crit_edge

cond.end317.i.i.while.cond.i.i_crit_edge:         ; preds = %cond.end317.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

do.end.i.i:                                       ; preds = %cond.end317.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %367 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %368, ptr noundef nonnull @.str.17, i32 noundef %cond318.i.i) #12
  br label %if.end84

if.else:                                          ; preds = %entry
  %num_uvd_inst.i131 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 4
  %369 = ptrtoint ptr %num_uvd_inst.i131 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %num_uvd_inst.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %370)
  %cmp1960.not.i = icmp eq i8 %370, 0
  br i1 %cmp1960.not.i, label %if.else.for.end.i144_crit_edge, label %for.body.lr.ph.i133

if.else.for.end.i144_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i144

for.body.lr.ph.i133:                              ; preds = %if.else
  %harvest_config.i132 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  br label %for.body.i137

for.body.i137:                                    ; preds = %for.inc.i140.for.body.i137_crit_edge, %for.body.lr.ph.i133
  %k.01961.i = phi i32 [ 0, %for.body.lr.ph.i133 ], [ %inc.i, %for.inc.i140.for.body.i137_crit_edge ]
  %371 = ptrtoint ptr %harvest_config.i132 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %harvest_config.i132, align 4
  %shl.i134 = shl nuw i32 1, %k.01961.i
  %and.i135 = and i32 %372, %shl.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %tobool.not.i136 = icmp eq i32 %and.i135, 0
  br i1 %tobool.not.i136, label %do.body.i, label %for.body.i137.for.inc.i140_crit_edge

for.body.i137.for.inc.i140_crit_edge:             ; preds = %for.body.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i140

do.body.i:                                        ; preds = %for.body.i137
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %k.01961.i
  %373 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %374, i32 1
  %375 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %arrayidx4.i, align 4
  %add.i138 = add i32 %376, 196
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i138, i32 noundef 0) #9
  %and5.i = and i32 %call.i, -5
  %377 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %arrayidx3.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %378, i32 1
  %379 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx9.i, align 4
  %add10.i = add i32 %380, 196
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add10.i, i32 noundef %and5.i, i32 noundef 0) #9
  br label %for.inc.i140

for.inc.i140:                                     ; preds = %do.body.i, %for.body.i137.for.inc.i140_crit_edge
  %inc.i = add nuw nsw i32 %k.01961.i, 1
  %381 = ptrtoint ptr %num_uvd_inst.i131 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %num_uvd_inst.i131, align 8
  %conv.i = zext i8 %382 to i32
  %cmp.i139 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i139, label %for.inc.i140.for.body.i137_crit_edge, label %for.end.loopexit.i

for.inc.i140.for.body.i137_crit_edge:             ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i137

for.end.loopexit.i:                               ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %phi.cmp.i = icmp eq i8 %382, 0
  br label %for.end.i144

for.end.i144:                                     ; preds = %for.end.loopexit.i, %if.else.for.end.i144_crit_edge
  %.lcssa.i = phi i1 [ true, %if.else.for.end.i144_crit_edge ], [ %phi.cmp.i, %for.end.loopexit.i ]
  %uvd.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108
  %383 = ptrtoint ptr %uvd.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %uvd.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %384, i32 0, i32 1
  %385 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %data.i.i, align 4
  %ucode_size_bytes.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %386, i32 0, i32 7
  %387 = ptrtoint ptr %ucode_size_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %ucode_size_bytes.i.i, align 4
  %389 = tail call i32 @llvm.bswap.i32(i32 %388) #9
  %add1.i.i141 = add i32 %389, 4103
  %and.i.i142 = and i32 %add1.i.i141, -4096
  %sub.i.i143 = add i32 %and.i.i142, -256
  br i1 %.lcssa.i, label %uvd_v7_0_mc_resume.exitthread-pre-split.i, label %for.body.lr.ph.i.i146

for.body.lr.ph.i.i146:                            ; preds = %for.end.i144
  %harvest_config.i.i145 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  %load_type.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %funcs152.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %tmr_mc_addr_lo.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 25, i32 5
  %tmr_mc_addr_lo32.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 26, i32 5
  %tmr_mc_addr_hi.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 25, i32 6
  %tmr_mc_addr_hi89.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 26, i32 6
  %gb_addr_config.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  %max_handles.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 2
  br label %for.body.i.i149

for.body.i.i149:                                  ; preds = %for.inc.i.i162.for.body.i.i149_crit_edge, %for.body.lr.ph.i.i146
  %i.01059.i.i = phi i32 [ 0, %for.body.lr.ph.i.i146 ], [ %inc.i.i159, %for.inc.i.i162.for.body.i.i149_crit_edge ]
  %390 = ptrtoint ptr %harvest_config.i.i145 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %harvest_config.i.i145, align 4
  %shl.i.i147 = shl nuw i32 1, %i.01059.i.i
  %and5.i.i = and i32 %391, %shl.i.i147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not.i.i148 = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not.i.i148, label %if.end.i.i150, label %for.body.i.i149.for.inc.i.i162_crit_edge

for.body.i.i149.for.inc.i.i162_crit_edge:         ; preds = %for.body.i.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i162

if.end.i.i150:                                    ; preds = %for.body.i.i149
  %392 = ptrtoint ptr %load_type.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %load_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %393)
  %cmp6.i.i = icmp eq i32 %393, 2
  %394 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %virt, align 8
  %and9.i.i = and i32 %395, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i150
  br i1 %tobool10.not.i.i, label %if.then8.i.i.cond.false33.i.i_crit_edge, label %land.lhs.true.i.i151

if.then8.i.i.cond.false33.i.i_crit_edge:          ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false33.i.i

land.lhs.true.i.i151:                             ; preds = %if.then8.i.i
  %396 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %funcs152.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %397, null
  br i1 %tobool11.not.i.i, label %land.lhs.true.i.i151.cond.false33.i.i_crit_edge, label %land.lhs.true12.i.i

land.lhs.true.i.i151.cond.false33.i.i_crit_edge:  ; preds = %land.lhs.true.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false33.i.i

land.lhs.true12.i.i:                              ; preds = %land.lhs.true.i.i151
  %sriov_wreg.i.i152 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %397, i32 0, i32 12
  %398 = ptrtoint ptr %sriov_wreg.i.i152 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %sriov_wreg.i.i152, align 4
  %tobool16.not.i.i = icmp eq ptr %399, null
  br i1 %tobool16.not.i.i, label %land.lhs.true12.i.i.cond.false33.i.i_crit_edge, label %cond.true.i.i154

land.lhs.true12.i.i.cond.false33.i.i_crit_edge:   ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false33.i.i

cond.true.i.i154:                                 ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %400 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %arrayidx21.i.i, align 4
  %arrayidx22.i.i = getelementptr i32, ptr %401, i32 1
  %402 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx22.i.i, align 4
  %add23.i.i = add i32 %403, 1119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.01059.i.i)
  %cmp24.i.i = icmp eq i32 %i.01059.i.i, 0
  %cond.in.i.i = select i1 %cmp24.i.i, ptr %tmr_mc_addr_lo.i.i, ptr %tmr_mc_addr_lo32.i.i
  %404 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %cond.i.i153 = load i32, ptr %cond.in.i.i, align 8
  tail call void %399(ptr noundef %handle, i32 noundef %add23.i.i, i32 noundef %cond.i.i153, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end53.i.i

cond.false33.i.i:                                 ; preds = %land.lhs.true12.i.i.cond.false33.i.i_crit_edge, %land.lhs.true.i.i151.cond.false33.i.i_crit_edge, %if.then8.i.i.cond.false33.i.i_crit_edge
  %arrayidx36.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %405 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %arrayidx36.i.i, align 4
  %arrayidx37.i.i = getelementptr i32, ptr %406, i32 1
  %407 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %arrayidx37.i.i, align 4
  %add38.i.i = add i32 %408, 1119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.01059.i.i)
  %cmp39.i.i = icmp eq i32 %i.01059.i.i, 0
  %cond52.in.i.i = select i1 %cmp39.i.i, ptr %tmr_mc_addr_lo.i.i, ptr %tmr_mc_addr_lo32.i.i
  %409 = ptrtoint ptr %cond52.in.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %cond52.i.i = load i32, ptr %cond52.in.i.i, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add38.i.i, i32 noundef %cond52.i.i, i32 noundef 0) #9
  br label %cond.end53.i.i

cond.end53.i.i:                                   ; preds = %cond.false33.i.i, %cond.true.i.i154
  %410 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %virt, align 8
  %and56.i.i = and i32 %411, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %tobool57.not.i.i = icmp eq i32 %and56.i.i, 0
  br i1 %tobool57.not.i.i, label %cond.end53.i.i.cond.false92.i.i_crit_edge, label %land.lhs.true58.i.i

cond.end53.i.i.cond.false92.i.i_crit_edge:        ; preds = %cond.end53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false92.i.i

land.lhs.true58.i.i:                              ; preds = %cond.end53.i.i
  %412 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %funcs152.i.i, align 4
  %tobool62.not.i.i = icmp eq ptr %413, null
  br i1 %tobool62.not.i.i, label %land.lhs.true58.i.i.cond.false92.i.i_crit_edge, label %land.lhs.true63.i.i

land.lhs.true58.i.i.cond.false92.i.i_crit_edge:   ; preds = %land.lhs.true58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false92.i.i

land.lhs.true63.i.i:                              ; preds = %land.lhs.true58.i.i
  %sriov_wreg67.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %413, i32 0, i32 12
  %414 = ptrtoint ptr %sriov_wreg67.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %sriov_wreg67.i.i, align 4
  %tobool68.not.i.i155 = icmp eq ptr %415, null
  br i1 %tobool68.not.i.i155, label %land.lhs.true63.i.i.cond.false92.i.i_crit_edge, label %cond.true69.i.i

land.lhs.true63.i.i.cond.false92.i.i_crit_edge:   ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false92.i.i

cond.true69.i.i:                                  ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx76.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %416 = ptrtoint ptr %arrayidx76.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %arrayidx76.i.i, align 4
  %arrayidx77.i.i = getelementptr i32, ptr %417, i32 1
  %418 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx77.i.i, align 4
  %add78.i.i = add i32 %419, 1118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.01059.i.i)
  %cmp79.i.i = icmp eq i32 %i.01059.i.i, 0
  %cond91.in.i.i = select i1 %cmp79.i.i, ptr %tmr_mc_addr_hi.i.i, ptr %tmr_mc_addr_hi89.i.i
  %420 = ptrtoint ptr %cond91.in.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %cond91.i.i = load i32, ptr %cond91.in.i.i, align 4
  tail call void %415(ptr noundef %handle, i32 noundef %add78.i.i, i32 noundef %cond91.i.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end112.i.i

cond.false92.i.i:                                 ; preds = %land.lhs.true63.i.i.cond.false92.i.i_crit_edge, %land.lhs.true58.i.i.cond.false92.i.i_crit_edge, %cond.end53.i.i.cond.false92.i.i_crit_edge
  %arrayidx95.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %421 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %arrayidx95.i.i, align 4
  %arrayidx96.i.i = getelementptr i32, ptr %422, i32 1
  %423 = ptrtoint ptr %arrayidx96.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %arrayidx96.i.i, align 4
  %add97.i.i = add i32 %424, 1118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.01059.i.i)
  %cmp98.i.i = icmp eq i32 %i.01059.i.i, 0
  %cond111.in.i.i = select i1 %cmp98.i.i, ptr %tmr_mc_addr_hi.i.i, ptr %tmr_mc_addr_hi89.i.i
  %425 = ptrtoint ptr %cond111.in.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %cond111.i.i = load i32, ptr %cond111.in.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add97.i.i, i32 noundef %cond111.i.i, i32 noundef 0) #9
  br label %cond.end112.i.i

cond.end112.i.i:                                  ; preds = %cond.false92.i.i, %cond.true69.i.i
  %426 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %virt, align 8
  %and115.i.i = and i32 %427, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i.i)
  %tobool116.not.i.i = icmp eq i32 %and115.i.i, 0
  br i1 %tobool116.not.i.i, label %cond.end112.i.i.cond.false138.i.i_crit_edge, label %land.lhs.true117.i.i

cond.end112.i.i.cond.false138.i.i_crit_edge:      ; preds = %cond.end112.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false138.i.i

land.lhs.true117.i.i:                             ; preds = %cond.end112.i.i
  %428 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %funcs152.i.i, align 4
  %tobool121.not.i.i = icmp eq ptr %429, null
  br i1 %tobool121.not.i.i, label %land.lhs.true117.i.i.cond.false138.i.i_crit_edge, label %land.lhs.true122.i.i

land.lhs.true117.i.i.cond.false138.i.i_crit_edge: ; preds = %land.lhs.true117.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false138.i.i

land.lhs.true122.i.i:                             ; preds = %land.lhs.true117.i.i
  %sriov_wreg126.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %429, i32 0, i32 12
  %430 = ptrtoint ptr %sriov_wreg126.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %sriov_wreg126.i.i, align 4
  %tobool127.not.i.i = icmp eq ptr %431, null
  br i1 %tobool127.not.i.i, label %land.lhs.true122.i.i.cond.false138.i.i_crit_edge, label %cond.true128.i.i

land.lhs.true122.i.i.cond.false138.i.i_crit_edge: ; preds = %land.lhs.true122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false138.i.i

cond.true128.i.i:                                 ; preds = %land.lhs.true122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx135.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %432 = ptrtoint ptr %arrayidx135.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %arrayidx135.i.i, align 4
  %arrayidx136.i.i = getelementptr i32, ptr %433, i32 1
  %434 = ptrtoint ptr %arrayidx136.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx136.i.i, align 4
  %add137.i.i = add i32 %435, 1410
  tail call void %431(ptr noundef %handle, i32 noundef %add137.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #9
  br label %if.end264.i.i

cond.false138.i.i:                                ; preds = %land.lhs.true122.i.i.cond.false138.i.i_crit_edge, %land.lhs.true117.i.i.cond.false138.i.i_crit_edge, %cond.end112.i.i.cond.false138.i.i_crit_edge
  %arrayidx141.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %436 = ptrtoint ptr %arrayidx141.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %arrayidx141.i.i, align 4
  %arrayidx142.i.i = getelementptr i32, ptr %437, i32 1
  %438 = ptrtoint ptr %arrayidx142.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx142.i.i, align 4
  %add143.i.i = add i32 %439, 1410
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add143.i.i, i32 noundef 0, i32 noundef 0) #9
  br label %if.end264.i.i

if.else.i.i:                                      ; preds = %if.end.i.i150
  br i1 %tobool10.not.i.i, label %if.else.i.i.cond.false174.i.i_crit_edge, label %land.lhs.true149.i.i

if.else.i.i.cond.false174.i.i_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false174.i.i

land.lhs.true149.i.i:                             ; preds = %if.else.i.i
  %440 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %funcs152.i.i, align 4
  %tobool153.not.i.i = icmp eq ptr %441, null
  br i1 %tobool153.not.i.i, label %land.lhs.true149.i.i.cond.false174.i.i_crit_edge, label %land.lhs.true154.i.i

land.lhs.true149.i.i.cond.false174.i.i_crit_edge: ; preds = %land.lhs.true149.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false174.i.i

land.lhs.true154.i.i:                             ; preds = %land.lhs.true149.i.i
  %sriov_wreg158.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %441, i32 0, i32 12
  %442 = ptrtoint ptr %sriov_wreg158.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %sriov_wreg158.i.i, align 4
  %tobool159.not.i.i = icmp eq ptr %443, null
  br i1 %tobool159.not.i.i, label %land.lhs.true154.i.i.cond.false174.i.i_crit_edge, label %cond.true160.i.i

land.lhs.true154.i.i.cond.false174.i.i_crit_edge: ; preds = %land.lhs.true154.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false174.i.i

cond.true160.i.i:                                 ; preds = %land.lhs.true154.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx167.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %444 = ptrtoint ptr %arrayidx167.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %arrayidx167.i.i, align 4
  %arrayidx168.i.i = getelementptr i32, ptr %445, i32 1
  %446 = ptrtoint ptr %arrayidx168.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx168.i.i, align 4
  %add169.i.i = add i32 %447, 1119
  %gpu_addr.i.i156 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %448 = ptrtoint ptr %gpu_addr.i.i156 to i32
  call void @__asan_load8_noabort(i32 %448)
  %449 = load i64, ptr %gpu_addr.i.i156, align 8
  %conv173.i.i = trunc i64 %449 to i32
  tail call void %443(ptr noundef %handle, i32 noundef %add169.i.i, i32 noundef %conv173.i.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end186.i.i

cond.false174.i.i:                                ; preds = %land.lhs.true154.i.i.cond.false174.i.i_crit_edge, %land.lhs.true149.i.i.cond.false174.i.i_crit_edge, %if.else.i.i.cond.false174.i.i_crit_edge
  %arrayidx177.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %450 = ptrtoint ptr %arrayidx177.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %arrayidx177.i.i, align 4
  %arrayidx178.i.i157 = getelementptr i32, ptr %451, i32 1
  %452 = ptrtoint ptr %arrayidx178.i.i157 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx178.i.i157, align 4
  %add179.i.i = add i32 %453, 1119
  %gpu_addr183.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %454 = ptrtoint ptr %gpu_addr183.i.i to i32
  call void @__asan_load8_noabort(i32 %454)
  %455 = load i64, ptr %gpu_addr183.i.i, align 8
  %conv185.i.i = trunc i64 %455 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add179.i.i, i32 noundef %conv185.i.i, i32 noundef 0) #9
  br label %cond.end186.i.i

cond.end186.i.i:                                  ; preds = %cond.false174.i.i, %cond.true160.i.i
  %456 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %virt, align 8
  %and189.i.i = and i32 %457, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189.i.i)
  %tobool190.not.i.i = icmp eq i32 %and189.i.i, 0
  br i1 %tobool190.not.i.i, label %cond.end186.i.i.cond.false218.i.i_crit_edge, label %land.lhs.true191.i.i

cond.end186.i.i.cond.false218.i.i_crit_edge:      ; preds = %cond.end186.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false218.i.i

land.lhs.true191.i.i:                             ; preds = %cond.end186.i.i
  %458 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %funcs152.i.i, align 4
  %tobool195.not.i.i = icmp eq ptr %459, null
  br i1 %tobool195.not.i.i, label %land.lhs.true191.i.i.cond.false218.i.i_crit_edge, label %land.lhs.true196.i.i

land.lhs.true191.i.i.cond.false218.i.i_crit_edge: ; preds = %land.lhs.true191.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false218.i.i

land.lhs.true196.i.i:                             ; preds = %land.lhs.true191.i.i
  %sriov_wreg200.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %459, i32 0, i32 12
  %460 = ptrtoint ptr %sriov_wreg200.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %sriov_wreg200.i.i, align 4
  %tobool201.not.i.i = icmp eq ptr %461, null
  br i1 %tobool201.not.i.i, label %land.lhs.true196.i.i.cond.false218.i.i_crit_edge, label %cond.true202.i.i

land.lhs.true196.i.i.cond.false218.i.i_crit_edge: ; preds = %land.lhs.true196.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false218.i.i

cond.true202.i.i:                                 ; preds = %land.lhs.true196.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx209.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %462 = ptrtoint ptr %arrayidx209.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %arrayidx209.i.i, align 4
  %arrayidx210.i.i = getelementptr i32, ptr %463, i32 1
  %464 = ptrtoint ptr %arrayidx210.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %arrayidx210.i.i, align 4
  %add211.i.i = add i32 %465, 1118
  %gpu_addr215.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %466 = ptrtoint ptr %gpu_addr215.i.i to i32
  call void @__asan_load8_noabort(i32 %466)
  %467 = load i64, ptr %gpu_addr215.i.i, align 8
  %shr.i.i158 = lshr i64 %467, 32
  %conv217.i.i = trunc i64 %shr.i.i158 to i32
  tail call void %461(ptr noundef %handle, i32 noundef %add211.i.i, i32 noundef %conv217.i.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end231.i.i

cond.false218.i.i:                                ; preds = %land.lhs.true196.i.i.cond.false218.i.i_crit_edge, %land.lhs.true191.i.i.cond.false218.i.i_crit_edge, %cond.end186.i.i.cond.false218.i.i_crit_edge
  %arrayidx221.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %468 = ptrtoint ptr %arrayidx221.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %arrayidx221.i.i, align 4
  %arrayidx222.i.i = getelementptr i32, ptr %469, i32 1
  %470 = ptrtoint ptr %arrayidx222.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %arrayidx222.i.i, align 4
  %add223.i.i = add i32 %471, 1118
  %gpu_addr227.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %472 = ptrtoint ptr %gpu_addr227.i.i to i32
  call void @__asan_load8_noabort(i32 %472)
  %473 = load i64, ptr %gpu_addr227.i.i, align 8
  %shr228.i.i = lshr i64 %473, 32
  %conv230.i.i = trunc i64 %shr228.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add223.i.i, i32 noundef %conv230.i.i, i32 noundef 0) #9
  br label %cond.end231.i.i

cond.end231.i.i:                                  ; preds = %cond.false218.i.i, %cond.true202.i.i
  %474 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %virt, align 8
  %and234.i.i = and i32 %475, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234.i.i)
  %tobool235.not.i.i = icmp eq i32 %and234.i.i, 0
  br i1 %tobool235.not.i.i, label %cond.end231.i.i.cond.false257.i.i_crit_edge, label %land.lhs.true236.i.i

cond.end231.i.i.cond.false257.i.i_crit_edge:      ; preds = %cond.end231.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false257.i.i

land.lhs.true236.i.i:                             ; preds = %cond.end231.i.i
  %476 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %funcs152.i.i, align 4
  %tobool240.not.i.i = icmp eq ptr %477, null
  br i1 %tobool240.not.i.i, label %land.lhs.true236.i.i.cond.false257.i.i_crit_edge, label %land.lhs.true241.i.i

land.lhs.true236.i.i.cond.false257.i.i_crit_edge: ; preds = %land.lhs.true236.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false257.i.i

land.lhs.true241.i.i:                             ; preds = %land.lhs.true236.i.i
  %sriov_wreg245.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %477, i32 0, i32 12
  %478 = ptrtoint ptr %sriov_wreg245.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %sriov_wreg245.i.i, align 4
  %tobool246.not.i.i = icmp eq ptr %479, null
  br i1 %tobool246.not.i.i, label %land.lhs.true241.i.i.cond.false257.i.i_crit_edge, label %cond.true247.i.i

land.lhs.true241.i.i.cond.false257.i.i_crit_edge: ; preds = %land.lhs.true241.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false257.i.i

cond.true247.i.i:                                 ; preds = %land.lhs.true241.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx254.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %480 = ptrtoint ptr %arrayidx254.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %arrayidx254.i.i, align 4
  %arrayidx255.i.i = getelementptr i32, ptr %481, i32 1
  %482 = ptrtoint ptr %arrayidx255.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %arrayidx255.i.i, align 4
  %add256.i.i = add i32 %483, 1410
  tail call void %479(ptr noundef %handle, i32 noundef %add256.i.i, i32 noundef 32, i32 noundef 0, i32 noundef 16) #9
  br label %if.end264.i.i

cond.false257.i.i:                                ; preds = %land.lhs.true241.i.i.cond.false257.i.i_crit_edge, %land.lhs.true236.i.i.cond.false257.i.i_crit_edge, %cond.end231.i.i.cond.false257.i.i_crit_edge
  %arrayidx260.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %484 = ptrtoint ptr %arrayidx260.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %arrayidx260.i.i, align 4
  %arrayidx261.i.i = getelementptr i32, ptr %485, i32 1
  %486 = ptrtoint ptr %arrayidx261.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %arrayidx261.i.i, align 4
  %add262.i.i = add i32 %487, 1410
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add262.i.i, i32 noundef 32, i32 noundef 0) #9
  br label %if.end264.i.i

if.end264.i.i:                                    ; preds = %cond.false257.i.i, %cond.true247.i.i, %cond.false138.i.i, %cond.true128.i.i
  %offset.0.i.i = phi i32 [ %sub.i.i143, %cond.true247.i.i ], [ %sub.i.i143, %cond.false257.i.i ], [ 0, %cond.false138.i.i ], [ 0, %cond.true128.i.i ]
  %488 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %virt, align 8
  %and267.i.i = and i32 %489, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and267.i.i)
  %tobool268.not.i.i = icmp eq i32 %and267.i.i, 0
  br i1 %tobool268.not.i.i, label %if.end264.i.i.cond.false290.i.i_crit_edge, label %land.lhs.true269.i.i

if.end264.i.i.cond.false290.i.i_crit_edge:        ; preds = %if.end264.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false290.i.i

land.lhs.true269.i.i:                             ; preds = %if.end264.i.i
  %490 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %funcs152.i.i, align 4
  %tobool273.not.i.i = icmp eq ptr %491, null
  br i1 %tobool273.not.i.i, label %land.lhs.true269.i.i.cond.false290.i.i_crit_edge, label %land.lhs.true274.i.i

land.lhs.true269.i.i.cond.false290.i.i_crit_edge: ; preds = %land.lhs.true269.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false290.i.i

land.lhs.true274.i.i:                             ; preds = %land.lhs.true269.i.i
  %sriov_wreg278.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %491, i32 0, i32 12
  %492 = ptrtoint ptr %sriov_wreg278.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %sriov_wreg278.i.i, align 4
  %tobool279.not.i.i = icmp eq ptr %493, null
  br i1 %tobool279.not.i.i, label %land.lhs.true274.i.i.cond.false290.i.i_crit_edge, label %cond.true280.i.i

land.lhs.true274.i.i.cond.false290.i.i_crit_edge: ; preds = %land.lhs.true274.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false290.i.i

cond.true280.i.i:                                 ; preds = %land.lhs.true274.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx287.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %494 = ptrtoint ptr %arrayidx287.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %arrayidx287.i.i, align 4
  %arrayidx288.i.i = getelementptr i32, ptr %495, i32 1
  %496 = ptrtoint ptr %arrayidx288.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %arrayidx288.i.i, align 4
  %add289.i.i = add i32 %497, 1411
  tail call void %493(ptr noundef %handle, i32 noundef %add289.i.i, i32 noundef %sub.i.i143, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end296.i.i

cond.false290.i.i:                                ; preds = %land.lhs.true274.i.i.cond.false290.i.i_crit_edge, %land.lhs.true269.i.i.cond.false290.i.i_crit_edge, %if.end264.i.i.cond.false290.i.i_crit_edge
  %arrayidx293.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %498 = ptrtoint ptr %arrayidx293.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %arrayidx293.i.i, align 4
  %arrayidx294.i.i = getelementptr i32, ptr %499, i32 1
  %500 = ptrtoint ptr %arrayidx294.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %arrayidx294.i.i, align 4
  %add295.i.i = add i32 %501, 1411
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add295.i.i, i32 noundef %sub.i.i143, i32 noundef 0) #9
  br label %cond.end296.i.i

cond.end296.i.i:                                  ; preds = %cond.false290.i.i, %cond.true280.i.i
  %502 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %virt, align 8
  %and299.i.i = and i32 %503, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299.i.i)
  %tobool300.not.i.i = icmp eq i32 %and299.i.i, 0
  br i1 %tobool300.not.i.i, label %cond.end296.i.i.cond.false330.i.i_crit_edge, label %land.lhs.true301.i.i

cond.end296.i.i.cond.false330.i.i_crit_edge:      ; preds = %cond.end296.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false330.i.i

land.lhs.true301.i.i:                             ; preds = %cond.end296.i.i
  %504 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %funcs152.i.i, align 4
  %tobool305.not.i.i = icmp eq ptr %505, null
  br i1 %tobool305.not.i.i, label %land.lhs.true301.i.i.cond.false330.i.i_crit_edge, label %land.lhs.true306.i.i

land.lhs.true301.i.i.cond.false330.i.i_crit_edge: ; preds = %land.lhs.true301.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false330.i.i

land.lhs.true306.i.i:                             ; preds = %land.lhs.true301.i.i
  %sriov_wreg310.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %505, i32 0, i32 12
  %506 = ptrtoint ptr %sriov_wreg310.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %sriov_wreg310.i.i, align 4
  %tobool311.not.i.i = icmp eq ptr %507, null
  br i1 %tobool311.not.i.i, label %land.lhs.true306.i.i.cond.false330.i.i_crit_edge, label %cond.true312.i.i

land.lhs.true306.i.i.cond.false330.i.i_crit_edge: ; preds = %land.lhs.true306.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false330.i.i

cond.true312.i.i:                                 ; preds = %land.lhs.true306.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx319.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %508 = ptrtoint ptr %arrayidx319.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %arrayidx319.i.i, align 4
  %arrayidx320.i.i = getelementptr i32, ptr %509, i32 1
  %510 = ptrtoint ptr %arrayidx320.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %arrayidx320.i.i, align 4
  %add321.i.i = add i32 %511, 1004
  %gpu_addr325.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %512 = ptrtoint ptr %gpu_addr325.i.i to i32
  call void @__asan_load8_noabort(i32 %512)
  %513 = load i64, ptr %gpu_addr325.i.i, align 8
  %514 = trunc i64 %513 to i32
  %conv329.i.i = add i32 %offset.0.i.i, %514
  tail call void %507(ptr noundef %handle, i32 noundef %add321.i.i, i32 noundef %conv329.i.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end344.i.i

cond.false330.i.i:                                ; preds = %land.lhs.true306.i.i.cond.false330.i.i_crit_edge, %land.lhs.true301.i.i.cond.false330.i.i_crit_edge, %cond.end296.i.i.cond.false330.i.i_crit_edge
  %arrayidx333.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %515 = ptrtoint ptr %arrayidx333.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %arrayidx333.i.i, align 4
  %arrayidx334.i.i = getelementptr i32, ptr %516, i32 1
  %517 = ptrtoint ptr %arrayidx334.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %arrayidx334.i.i, align 4
  %add335.i.i = add i32 %518, 1004
  %gpu_addr339.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %519 = ptrtoint ptr %gpu_addr339.i.i to i32
  call void @__asan_load8_noabort(i32 %519)
  %520 = load i64, ptr %gpu_addr339.i.i, align 8
  %521 = trunc i64 %520 to i32
  %conv343.i.i = add i32 %offset.0.i.i, %521
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add335.i.i, i32 noundef %conv343.i.i, i32 noundef 0) #9
  br label %cond.end344.i.i

cond.end344.i.i:                                  ; preds = %cond.false330.i.i, %cond.true312.i.i
  %522 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %virt, align 8
  %and347.i.i = and i32 %523, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and347.i.i)
  %tobool348.not.i.i = icmp eq i32 %and347.i.i, 0
  br i1 %tobool348.not.i.i, label %cond.end344.i.i.cond.false379.i.i_crit_edge, label %land.lhs.true349.i.i

cond.end344.i.i.cond.false379.i.i_crit_edge:      ; preds = %cond.end344.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false379.i.i

land.lhs.true349.i.i:                             ; preds = %cond.end344.i.i
  %524 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %funcs152.i.i, align 4
  %tobool353.not.i.i = icmp eq ptr %525, null
  br i1 %tobool353.not.i.i, label %land.lhs.true349.i.i.cond.false379.i.i_crit_edge, label %land.lhs.true354.i.i

land.lhs.true349.i.i.cond.false379.i.i_crit_edge: ; preds = %land.lhs.true349.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false379.i.i

land.lhs.true354.i.i:                             ; preds = %land.lhs.true349.i.i
  %sriov_wreg358.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %525, i32 0, i32 12
  %526 = ptrtoint ptr %sriov_wreg358.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %sriov_wreg358.i.i, align 4
  %tobool359.not.i.i = icmp eq ptr %527, null
  br i1 %tobool359.not.i.i, label %land.lhs.true354.i.i.cond.false379.i.i_crit_edge, label %cond.true360.i.i

land.lhs.true354.i.i.cond.false379.i.i_crit_edge: ; preds = %land.lhs.true354.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false379.i.i

cond.true360.i.i:                                 ; preds = %land.lhs.true354.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx367.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %528 = ptrtoint ptr %arrayidx367.i.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %arrayidx367.i.i, align 4
  %arrayidx368.i.i = getelementptr i32, ptr %529, i32 1
  %530 = ptrtoint ptr %arrayidx368.i.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %arrayidx368.i.i, align 4
  %add369.i.i = add i32 %531, 1005
  %gpu_addr373.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %532 = ptrtoint ptr %gpu_addr373.i.i to i32
  call void @__asan_load8_noabort(i32 %532)
  %533 = load i64, ptr %gpu_addr373.i.i, align 8
  %conv374.i.i = zext i32 %offset.0.i.i to i64
  %add375.i.i = add i64 %533, %conv374.i.i
  %shr376.i.i = lshr i64 %add375.i.i, 32
  %conv378.i.i = trunc i64 %shr376.i.i to i32
  tail call void %527(ptr noundef %handle, i32 noundef %add369.i.i, i32 noundef %conv378.i.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end394.i.i

cond.false379.i.i:                                ; preds = %land.lhs.true354.i.i.cond.false379.i.i_crit_edge, %land.lhs.true349.i.i.cond.false379.i.i_crit_edge, %cond.end344.i.i.cond.false379.i.i_crit_edge
  %arrayidx382.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %534 = ptrtoint ptr %arrayidx382.i.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %arrayidx382.i.i, align 4
  %arrayidx383.i.i = getelementptr i32, ptr %535, i32 1
  %536 = ptrtoint ptr %arrayidx383.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %arrayidx383.i.i, align 4
  %add384.i.i = add i32 %537, 1005
  %gpu_addr388.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %538 = ptrtoint ptr %gpu_addr388.i.i to i32
  call void @__asan_load8_noabort(i32 %538)
  %539 = load i64, ptr %gpu_addr388.i.i, align 8
  %conv389.i.i = zext i32 %offset.0.i.i to i64
  %add390.i.i = add i64 %539, %conv389.i.i
  %shr391.i.i = lshr i64 %add390.i.i, 32
  %conv393.i.i = trunc i64 %shr391.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add384.i.i, i32 noundef %conv393.i.i, i32 noundef 0) #9
  br label %cond.end394.i.i

cond.end394.i.i:                                  ; preds = %cond.false379.i.i, %cond.true360.i.i
  %540 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %virt, align 8
  %and397.i.i = and i32 %541, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and397.i.i)
  %tobool398.not.i.i = icmp eq i32 %and397.i.i, 0
  br i1 %tobool398.not.i.i, label %cond.end394.i.i.cond.false420.i.i_crit_edge, label %land.lhs.true399.i.i

cond.end394.i.i.cond.false420.i.i_crit_edge:      ; preds = %cond.end394.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false420.i.i

land.lhs.true399.i.i:                             ; preds = %cond.end394.i.i
  %542 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %funcs152.i.i, align 4
  %tobool403.not.i.i = icmp eq ptr %543, null
  br i1 %tobool403.not.i.i, label %land.lhs.true399.i.i.cond.false420.i.i_crit_edge, label %land.lhs.true404.i.i

land.lhs.true399.i.i.cond.false420.i.i_crit_edge: ; preds = %land.lhs.true399.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false420.i.i

land.lhs.true404.i.i:                             ; preds = %land.lhs.true399.i.i
  %sriov_wreg408.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %543, i32 0, i32 12
  %544 = ptrtoint ptr %sriov_wreg408.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %sriov_wreg408.i.i, align 4
  %tobool409.not.i.i = icmp eq ptr %545, null
  br i1 %tobool409.not.i.i, label %land.lhs.true404.i.i.cond.false420.i.i_crit_edge, label %cond.true410.i.i

land.lhs.true404.i.i.cond.false420.i.i_crit_edge: ; preds = %land.lhs.true404.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false420.i.i

cond.true410.i.i:                                 ; preds = %land.lhs.true404.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx417.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %546 = ptrtoint ptr %arrayidx417.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %arrayidx417.i.i, align 4
  %arrayidx418.i.i = getelementptr i32, ptr %547, i32 1
  %548 = ptrtoint ptr %arrayidx418.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %arrayidx418.i.i, align 4
  %add419.i.i = add i32 %549, 1412
  tail call void %545(ptr noundef %handle, i32 noundef %add419.i.i, i32 noundef 2097152, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end426.i.i

cond.false420.i.i:                                ; preds = %land.lhs.true404.i.i.cond.false420.i.i_crit_edge, %land.lhs.true399.i.i.cond.false420.i.i_crit_edge, %cond.end394.i.i.cond.false420.i.i_crit_edge
  %arrayidx423.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %550 = ptrtoint ptr %arrayidx423.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %arrayidx423.i.i, align 4
  %arrayidx424.i.i = getelementptr i32, ptr %551, i32 1
  %552 = ptrtoint ptr %arrayidx424.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %arrayidx424.i.i, align 4
  %add425.i.i = add i32 %553, 1412
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add425.i.i, i32 noundef 2097152, i32 noundef 0) #9
  br label %cond.end426.i.i

cond.end426.i.i:                                  ; preds = %cond.false420.i.i, %cond.true410.i.i
  %554 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %virt, align 8
  %and429.i.i = and i32 %555, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and429.i.i)
  %tobool430.not.i.i = icmp eq i32 %and429.i.i, 0
  br i1 %tobool430.not.i.i, label %cond.end426.i.i.cond.false452.i.i_crit_edge, label %land.lhs.true431.i.i

cond.end426.i.i.cond.false452.i.i_crit_edge:      ; preds = %cond.end426.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false452.i.i

land.lhs.true431.i.i:                             ; preds = %cond.end426.i.i
  %556 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %funcs152.i.i, align 4
  %tobool435.not.i.i = icmp eq ptr %557, null
  br i1 %tobool435.not.i.i, label %land.lhs.true431.i.i.cond.false452.i.i_crit_edge, label %land.lhs.true436.i.i

land.lhs.true431.i.i.cond.false452.i.i_crit_edge: ; preds = %land.lhs.true431.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false452.i.i

land.lhs.true436.i.i:                             ; preds = %land.lhs.true431.i.i
  %sriov_wreg440.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %557, i32 0, i32 12
  %558 = ptrtoint ptr %sriov_wreg440.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %sriov_wreg440.i.i, align 4
  %tobool441.not.i.i = icmp eq ptr %559, null
  br i1 %tobool441.not.i.i, label %land.lhs.true436.i.i.cond.false452.i.i_crit_edge, label %cond.true442.i.i

land.lhs.true436.i.i.cond.false452.i.i_crit_edge: ; preds = %land.lhs.true436.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false452.i.i

cond.true442.i.i:                                 ; preds = %land.lhs.true436.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx449.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %560 = ptrtoint ptr %arrayidx449.i.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %arrayidx449.i.i, align 4
  %arrayidx450.i.i = getelementptr i32, ptr %561, i32 1
  %562 = ptrtoint ptr %arrayidx450.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %arrayidx450.i.i, align 4
  %add451.i.i = add i32 %563, 1413
  tail call void %559(ptr noundef %handle, i32 noundef %add451.i.i, i32 noundef 262144, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end458.i.i

cond.false452.i.i:                                ; preds = %land.lhs.true436.i.i.cond.false452.i.i_crit_edge, %land.lhs.true431.i.i.cond.false452.i.i_crit_edge, %cond.end426.i.i.cond.false452.i.i_crit_edge
  %arrayidx455.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %564 = ptrtoint ptr %arrayidx455.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %arrayidx455.i.i, align 4
  %arrayidx456.i.i = getelementptr i32, ptr %565, i32 1
  %566 = ptrtoint ptr %arrayidx456.i.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %arrayidx456.i.i, align 4
  %add457.i.i = add i32 %567, 1413
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add457.i.i, i32 noundef 262144, i32 noundef 0) #9
  br label %cond.end458.i.i

cond.end458.i.i:                                  ; preds = %cond.false452.i.i, %cond.true442.i.i
  %568 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %virt, align 8
  %and461.i.i = and i32 %569, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and461.i.i)
  %tobool462.not.i.i = icmp eq i32 %and461.i.i, 0
  br i1 %tobool462.not.i.i, label %cond.end458.i.i.cond.false493.i.i_crit_edge, label %land.lhs.true463.i.i

cond.end458.i.i.cond.false493.i.i_crit_edge:      ; preds = %cond.end458.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false493.i.i

land.lhs.true463.i.i:                             ; preds = %cond.end458.i.i
  %570 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %funcs152.i.i, align 4
  %tobool467.not.i.i = icmp eq ptr %571, null
  br i1 %tobool467.not.i.i, label %land.lhs.true463.i.i.cond.false493.i.i_crit_edge, label %land.lhs.true468.i.i

land.lhs.true463.i.i.cond.false493.i.i_crit_edge: ; preds = %land.lhs.true463.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false493.i.i

land.lhs.true468.i.i:                             ; preds = %land.lhs.true463.i.i
  %sriov_wreg472.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %571, i32 0, i32 12
  %572 = ptrtoint ptr %sriov_wreg472.i.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %sriov_wreg472.i.i, align 4
  %tobool473.not.i.i = icmp eq ptr %573, null
  br i1 %tobool473.not.i.i, label %land.lhs.true468.i.i.cond.false493.i.i_crit_edge, label %cond.true474.i.i

land.lhs.true468.i.i.cond.false493.i.i_crit_edge: ; preds = %land.lhs.true468.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false493.i.i

cond.true474.i.i:                                 ; preds = %land.lhs.true468.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx481.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %574 = ptrtoint ptr %arrayidx481.i.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %arrayidx481.i.i, align 4
  %arrayidx482.i.i = getelementptr i32, ptr %575, i32 1
  %576 = ptrtoint ptr %arrayidx482.i.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %arrayidx482.i.i, align 4
  %add483.i.i = add i32 %577, 1008
  %gpu_addr487.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %578 = ptrtoint ptr %gpu_addr487.i.i to i32
  call void @__asan_load8_noabort(i32 %578)
  %579 = load i64, ptr %gpu_addr487.i.i, align 8
  %580 = trunc i64 %579 to i32
  %581 = add i32 %offset.0.i.i, 262144
  %conv492.i.i = add i32 %581, %580
  tail call void %573(ptr noundef %handle, i32 noundef %add483.i.i, i32 noundef %conv492.i.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end508.i.i

cond.false493.i.i:                                ; preds = %land.lhs.true468.i.i.cond.false493.i.i_crit_edge, %land.lhs.true463.i.i.cond.false493.i.i_crit_edge, %cond.end458.i.i.cond.false493.i.i_crit_edge
  %arrayidx496.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %582 = ptrtoint ptr %arrayidx496.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %arrayidx496.i.i, align 4
  %arrayidx497.i.i = getelementptr i32, ptr %583, i32 1
  %584 = ptrtoint ptr %arrayidx497.i.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %arrayidx497.i.i, align 4
  %add498.i.i = add i32 %585, 1008
  %gpu_addr502.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %586 = ptrtoint ptr %gpu_addr502.i.i to i32
  call void @__asan_load8_noabort(i32 %586)
  %587 = load i64, ptr %gpu_addr502.i.i, align 8
  %588 = trunc i64 %587 to i32
  %589 = add i32 %offset.0.i.i, 262144
  %conv507.i.i = add i32 %589, %588
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add498.i.i, i32 noundef %conv507.i.i, i32 noundef 0) #9
  br label %cond.end508.i.i

cond.end508.i.i:                                  ; preds = %cond.false493.i.i, %cond.true474.i.i
  %590 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %virt, align 8
  %and511.i.i = and i32 %591, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and511.i.i)
  %tobool512.not.i.i = icmp eq i32 %and511.i.i, 0
  br i1 %tobool512.not.i.i, label %cond.end508.i.i.cond.false544.i.i_crit_edge, label %land.lhs.true513.i.i

cond.end508.i.i.cond.false544.i.i_crit_edge:      ; preds = %cond.end508.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false544.i.i

land.lhs.true513.i.i:                             ; preds = %cond.end508.i.i
  %592 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %funcs152.i.i, align 4
  %tobool517.not.i.i = icmp eq ptr %593, null
  br i1 %tobool517.not.i.i, label %land.lhs.true513.i.i.cond.false544.i.i_crit_edge, label %land.lhs.true518.i.i

land.lhs.true513.i.i.cond.false544.i.i_crit_edge: ; preds = %land.lhs.true513.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false544.i.i

land.lhs.true518.i.i:                             ; preds = %land.lhs.true513.i.i
  %sriov_wreg522.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %593, i32 0, i32 12
  %594 = ptrtoint ptr %sriov_wreg522.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %sriov_wreg522.i.i, align 4
  %tobool523.not.i.i = icmp eq ptr %595, null
  br i1 %tobool523.not.i.i, label %land.lhs.true518.i.i.cond.false544.i.i_crit_edge, label %cond.true524.i.i

land.lhs.true518.i.i.cond.false544.i.i_crit_edge: ; preds = %land.lhs.true518.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false544.i.i

cond.true524.i.i:                                 ; preds = %land.lhs.true518.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx531.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %596 = ptrtoint ptr %arrayidx531.i.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %arrayidx531.i.i, align 4
  %arrayidx532.i.i = getelementptr i32, ptr %597, i32 1
  %598 = ptrtoint ptr %arrayidx532.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %arrayidx532.i.i, align 4
  %add533.i.i = add i32 %599, 1009
  %gpu_addr537.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %600 = ptrtoint ptr %gpu_addr537.i.i to i32
  call void @__asan_load8_noabort(i32 %600)
  %601 = load i64, ptr %gpu_addr537.i.i, align 8
  %conv538.i.i = zext i32 %offset.0.i.i to i64
  %add539.i.i = add nuw nsw i64 %conv538.i.i, 262144
  %add540.i.i = add i64 %add539.i.i, %601
  %shr541.i.i = lshr i64 %add540.i.i, 32
  %conv543.i.i = trunc i64 %shr541.i.i to i32
  tail call void %595(ptr noundef %handle, i32 noundef %add533.i.i, i32 noundef %conv543.i.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end560.i.i

cond.false544.i.i:                                ; preds = %land.lhs.true518.i.i.cond.false544.i.i_crit_edge, %land.lhs.true513.i.i.cond.false544.i.i_crit_edge, %cond.end508.i.i.cond.false544.i.i_crit_edge
  %arrayidx547.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %602 = ptrtoint ptr %arrayidx547.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %arrayidx547.i.i, align 4
  %arrayidx548.i.i = getelementptr i32, ptr %603, i32 1
  %604 = ptrtoint ptr %arrayidx548.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %arrayidx548.i.i, align 4
  %add549.i.i = add i32 %605, 1009
  %gpu_addr553.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %i.01059.i.i, i32 2
  %606 = ptrtoint ptr %gpu_addr553.i.i to i32
  call void @__asan_load8_noabort(i32 %606)
  %607 = load i64, ptr %gpu_addr553.i.i, align 8
  %conv554.i.i = zext i32 %offset.0.i.i to i64
  %add555.i.i = add nuw nsw i64 %conv554.i.i, 262144
  %add556.i.i = add i64 %add555.i.i, %607
  %shr557.i.i = lshr i64 %add556.i.i, 32
  %conv559.i.i = trunc i64 %shr557.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add549.i.i, i32 noundef %conv559.i.i, i32 noundef 0) #9
  br label %cond.end560.i.i

cond.end560.i.i:                                  ; preds = %cond.false544.i.i, %cond.true524.i.i
  %608 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %virt, align 8
  %and563.i.i = and i32 %609, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and563.i.i)
  %tobool564.not.i.i = icmp eq i32 %and563.i.i, 0
  br i1 %tobool564.not.i.i, label %cond.end560.i.i.cond.false586.i.i_crit_edge, label %land.lhs.true565.i.i

cond.end560.i.i.cond.false586.i.i_crit_edge:      ; preds = %cond.end560.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false586.i.i

land.lhs.true565.i.i:                             ; preds = %cond.end560.i.i
  %610 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %funcs152.i.i, align 4
  %tobool569.not.i.i = icmp eq ptr %611, null
  br i1 %tobool569.not.i.i, label %land.lhs.true565.i.i.cond.false586.i.i_crit_edge, label %land.lhs.true570.i.i

land.lhs.true565.i.i.cond.false586.i.i_crit_edge: ; preds = %land.lhs.true565.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false586.i.i

land.lhs.true570.i.i:                             ; preds = %land.lhs.true565.i.i
  %sriov_wreg574.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %611, i32 0, i32 12
  %612 = ptrtoint ptr %sriov_wreg574.i.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %sriov_wreg574.i.i, align 4
  %tobool575.not.i.i = icmp eq ptr %613, null
  br i1 %tobool575.not.i.i, label %land.lhs.true570.i.i.cond.false586.i.i_crit_edge, label %cond.true576.i.i

land.lhs.true570.i.i.cond.false586.i.i_crit_edge: ; preds = %land.lhs.true570.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false586.i.i

cond.true576.i.i:                                 ; preds = %land.lhs.true570.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx583.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %614 = ptrtoint ptr %arrayidx583.i.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %arrayidx583.i.i, align 4
  %arrayidx584.i.i = getelementptr i32, ptr %615, i32 1
  %616 = ptrtoint ptr %arrayidx584.i.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %arrayidx584.i.i, align 4
  %add585.i.i = add i32 %617, 1414
  tail call void %613(ptr noundef %handle, i32 noundef %add585.i.i, i32 noundef 4194304, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end592.i.i

cond.false586.i.i:                                ; preds = %land.lhs.true570.i.i.cond.false586.i.i_crit_edge, %land.lhs.true565.i.i.cond.false586.i.i_crit_edge, %cond.end560.i.i.cond.false586.i.i_crit_edge
  %arrayidx589.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %618 = ptrtoint ptr %arrayidx589.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %arrayidx589.i.i, align 4
  %arrayidx590.i.i = getelementptr i32, ptr %619, i32 1
  %620 = ptrtoint ptr %arrayidx590.i.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %arrayidx590.i.i, align 4
  %add591.i.i = add i32 %621, 1414
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add591.i.i, i32 noundef 4194304, i32 noundef 0) #9
  br label %cond.end592.i.i

cond.end592.i.i:                                  ; preds = %cond.false586.i.i, %cond.true576.i.i
  %622 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %virt, align 8
  %and595.i.i = and i32 %623, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and595.i.i)
  %tobool596.not.i.i = icmp eq i32 %and595.i.i, 0
  br i1 %tobool596.not.i.i, label %cond.end592.i.i.cond.false618.i.i_crit_edge, label %land.lhs.true597.i.i

cond.end592.i.i.cond.false618.i.i_crit_edge:      ; preds = %cond.end592.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false618.i.i

land.lhs.true597.i.i:                             ; preds = %cond.end592.i.i
  %624 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %funcs152.i.i, align 4
  %tobool601.not.i.i = icmp eq ptr %625, null
  br i1 %tobool601.not.i.i, label %land.lhs.true597.i.i.cond.false618.i.i_crit_edge, label %land.lhs.true602.i.i

land.lhs.true597.i.i.cond.false618.i.i_crit_edge: ; preds = %land.lhs.true597.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false618.i.i

land.lhs.true602.i.i:                             ; preds = %land.lhs.true597.i.i
  %sriov_wreg606.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %625, i32 0, i32 12
  %626 = ptrtoint ptr %sriov_wreg606.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %sriov_wreg606.i.i, align 4
  %tobool607.not.i.i = icmp eq ptr %627, null
  br i1 %tobool607.not.i.i, label %land.lhs.true602.i.i.cond.false618.i.i_crit_edge, label %cond.true608.i.i

land.lhs.true602.i.i.cond.false618.i.i_crit_edge: ; preds = %land.lhs.true602.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false618.i.i

cond.true608.i.i:                                 ; preds = %land.lhs.true602.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx615.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %628 = ptrtoint ptr %arrayidx615.i.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %arrayidx615.i.i, align 4
  %arrayidx616.i.i = getelementptr i32, ptr %629, i32 1
  %630 = ptrtoint ptr %arrayidx616.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %arrayidx616.i.i, align 4
  %add617.i.i = add i32 %631, 1415
  tail call void %627(ptr noundef %handle, i32 noundef %add617.i.i, i32 noundef 2252800, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end624.i.i

cond.false618.i.i:                                ; preds = %land.lhs.true602.i.i.cond.false618.i.i_crit_edge, %land.lhs.true597.i.i.cond.false618.i.i_crit_edge, %cond.end592.i.i.cond.false618.i.i_crit_edge
  %arrayidx621.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %632 = ptrtoint ptr %arrayidx621.i.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %arrayidx621.i.i, align 4
  %arrayidx622.i.i = getelementptr i32, ptr %633, i32 1
  %634 = ptrtoint ptr %arrayidx622.i.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %arrayidx622.i.i, align 4
  %add623.i.i = add i32 %635, 1415
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add623.i.i, i32 noundef 2252800, i32 noundef 0) #9
  br label %cond.end624.i.i

cond.end624.i.i:                                  ; preds = %cond.false618.i.i, %cond.true608.i.i
  %636 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %virt, align 8
  %and627.i.i = and i32 %637, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and627.i.i)
  %tobool628.not.i.i = icmp eq i32 %and627.i.i, 0
  br i1 %tobool628.not.i.i, label %cond.end624.i.i.cond.false651.i.i_crit_edge, label %land.lhs.true629.i.i

cond.end624.i.i.cond.false651.i.i_crit_edge:      ; preds = %cond.end624.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false651.i.i

land.lhs.true629.i.i:                             ; preds = %cond.end624.i.i
  %638 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %funcs152.i.i, align 4
  %tobool633.not.i.i = icmp eq ptr %639, null
  br i1 %tobool633.not.i.i, label %land.lhs.true629.i.i.cond.false651.i.i_crit_edge, label %land.lhs.true634.i.i

land.lhs.true629.i.i.cond.false651.i.i_crit_edge: ; preds = %land.lhs.true629.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false651.i.i

land.lhs.true634.i.i:                             ; preds = %land.lhs.true629.i.i
  %sriov_wreg638.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %639, i32 0, i32 12
  %640 = ptrtoint ptr %sriov_wreg638.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %sriov_wreg638.i.i, align 4
  %tobool639.not.i.i = icmp eq ptr %641, null
  br i1 %tobool639.not.i.i, label %land.lhs.true634.i.i.cond.false651.i.i_crit_edge, label %cond.true640.i.i

land.lhs.true634.i.i.cond.false651.i.i_crit_edge: ; preds = %land.lhs.true634.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false651.i.i

cond.true640.i.i:                                 ; preds = %land.lhs.true634.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx647.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %642 = ptrtoint ptr %arrayidx647.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %arrayidx647.i.i, align 4
  %arrayidx648.i.i = getelementptr i32, ptr %643, i32 1
  %644 = ptrtoint ptr %arrayidx648.i.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %arrayidx648.i.i, align 4
  %add649.i.i = add i32 %645, 979
  %646 = ptrtoint ptr %gb_addr_config.i.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %gb_addr_config.i.i, align 4
  tail call void %641(ptr noundef %handle, i32 noundef %add649.i.i, i32 noundef %647, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end660.i.i

cond.false651.i.i:                                ; preds = %land.lhs.true634.i.i.cond.false651.i.i_crit_edge, %land.lhs.true629.i.i.cond.false651.i.i_crit_edge, %cond.end624.i.i.cond.false651.i.i_crit_edge
  %arrayidx654.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %648 = ptrtoint ptr %arrayidx654.i.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %arrayidx654.i.i, align 4
  %arrayidx655.i.i = getelementptr i32, ptr %649, i32 1
  %650 = ptrtoint ptr %arrayidx655.i.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %arrayidx655.i.i, align 4
  %add656.i.i = add i32 %651, 979
  %652 = ptrtoint ptr %gb_addr_config.i.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %gb_addr_config.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add656.i.i, i32 noundef %653, i32 noundef 0) #9
  br label %cond.end660.i.i

cond.end660.i.i:                                  ; preds = %cond.false651.i.i, %cond.true640.i.i
  %654 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %virt, align 8
  %and663.i.i = and i32 %655, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and663.i.i)
  %tobool664.not.i.i = icmp eq i32 %and663.i.i, 0
  br i1 %tobool664.not.i.i, label %cond.end660.i.i.cond.false689.i.i_crit_edge, label %land.lhs.true665.i.i

cond.end660.i.i.cond.false689.i.i_crit_edge:      ; preds = %cond.end660.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false689.i.i

land.lhs.true665.i.i:                             ; preds = %cond.end660.i.i
  %656 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %funcs152.i.i, align 4
  %tobool669.not.i.i = icmp eq ptr %657, null
  br i1 %tobool669.not.i.i, label %land.lhs.true665.i.i.cond.false689.i.i_crit_edge, label %land.lhs.true670.i.i

land.lhs.true665.i.i.cond.false689.i.i_crit_edge: ; preds = %land.lhs.true665.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false689.i.i

land.lhs.true670.i.i:                             ; preds = %land.lhs.true665.i.i
  %sriov_wreg674.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %657, i32 0, i32 12
  %658 = ptrtoint ptr %sriov_wreg674.i.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %sriov_wreg674.i.i, align 4
  %tobool675.not.i.i = icmp eq ptr %659, null
  br i1 %tobool675.not.i.i, label %land.lhs.true670.i.i.cond.false689.i.i_crit_edge, label %cond.true676.i.i

land.lhs.true670.i.i.cond.false689.i.i_crit_edge: ; preds = %land.lhs.true670.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false689.i.i

cond.true676.i.i:                                 ; preds = %land.lhs.true670.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx683.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %660 = ptrtoint ptr %arrayidx683.i.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %arrayidx683.i.i, align 4
  %arrayidx684.i.i = getelementptr i32, ptr %661, i32 1
  %662 = ptrtoint ptr %arrayidx684.i.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %arrayidx684.i.i, align 4
  %add685.i.i = add i32 %663, 980
  %664 = ptrtoint ptr %gb_addr_config.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %gb_addr_config.i.i, align 4
  tail call void %659(ptr noundef %handle, i32 noundef %add685.i.i, i32 noundef %665, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end698.i.i

cond.false689.i.i:                                ; preds = %land.lhs.true670.i.i.cond.false689.i.i_crit_edge, %land.lhs.true665.i.i.cond.false689.i.i_crit_edge, %cond.end660.i.i.cond.false689.i.i_crit_edge
  %arrayidx692.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %666 = ptrtoint ptr %arrayidx692.i.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %arrayidx692.i.i, align 4
  %arrayidx693.i.i = getelementptr i32, ptr %667, i32 1
  %668 = ptrtoint ptr %arrayidx693.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %arrayidx693.i.i, align 4
  %add694.i.i = add i32 %669, 980
  %670 = ptrtoint ptr %gb_addr_config.i.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %gb_addr_config.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add694.i.i, i32 noundef %671, i32 noundef 0) #9
  br label %cond.end698.i.i

cond.end698.i.i:                                  ; preds = %cond.false689.i.i, %cond.true676.i.i
  %672 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %virt, align 8
  %and701.i.i = and i32 %673, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and701.i.i)
  %tobool702.not.i.i = icmp eq i32 %and701.i.i, 0
  br i1 %tobool702.not.i.i, label %cond.end698.i.i.cond.false727.i.i_crit_edge, label %land.lhs.true703.i.i

cond.end698.i.i.cond.false727.i.i_crit_edge:      ; preds = %cond.end698.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false727.i.i

land.lhs.true703.i.i:                             ; preds = %cond.end698.i.i
  %674 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %funcs152.i.i, align 4
  %tobool707.not.i.i = icmp eq ptr %675, null
  br i1 %tobool707.not.i.i, label %land.lhs.true703.i.i.cond.false727.i.i_crit_edge, label %land.lhs.true708.i.i

land.lhs.true703.i.i.cond.false727.i.i_crit_edge: ; preds = %land.lhs.true703.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false727.i.i

land.lhs.true708.i.i:                             ; preds = %land.lhs.true703.i.i
  %sriov_wreg712.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %675, i32 0, i32 12
  %676 = ptrtoint ptr %sriov_wreg712.i.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %sriov_wreg712.i.i, align 4
  %tobool713.not.i.i = icmp eq ptr %677, null
  br i1 %tobool713.not.i.i, label %land.lhs.true708.i.i.cond.false727.i.i_crit_edge, label %cond.true714.i.i

land.lhs.true708.i.i.cond.false727.i.i_crit_edge: ; preds = %land.lhs.true708.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false727.i.i

cond.true714.i.i:                                 ; preds = %land.lhs.true708.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx721.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %678 = ptrtoint ptr %arrayidx721.i.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %arrayidx721.i.i, align 4
  %arrayidx722.i.i = getelementptr i32, ptr %679, i32 1
  %680 = ptrtoint ptr %arrayidx722.i.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %arrayidx722.i.i, align 4
  %add723.i.i = add i32 %681, 981
  %682 = ptrtoint ptr %gb_addr_config.i.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %gb_addr_config.i.i, align 4
  tail call void %677(ptr noundef %handle, i32 noundef %add723.i.i, i32 noundef %683, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end736.i.i

cond.false727.i.i:                                ; preds = %land.lhs.true708.i.i.cond.false727.i.i_crit_edge, %land.lhs.true703.i.i.cond.false727.i.i_crit_edge, %cond.end698.i.i.cond.false727.i.i_crit_edge
  %arrayidx730.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %684 = ptrtoint ptr %arrayidx730.i.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %arrayidx730.i.i, align 4
  %arrayidx731.i.i = getelementptr i32, ptr %685, i32 1
  %686 = ptrtoint ptr %arrayidx731.i.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %arrayidx731.i.i, align 4
  %add732.i.i = add i32 %687, 981
  %688 = ptrtoint ptr %gb_addr_config.i.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %gb_addr_config.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add732.i.i, i32 noundef %689, i32 noundef 0) #9
  br label %cond.end736.i.i

cond.end736.i.i:                                  ; preds = %cond.false727.i.i, %cond.true714.i.i
  %690 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %virt, align 8
  %and739.i.i = and i32 %691, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and739.i.i)
  %tobool740.not.i.i = icmp eq i32 %and739.i.i, 0
  br i1 %tobool740.not.i.i, label %cond.end736.i.i.cond.false763.i.i_crit_edge, label %land.lhs.true741.i.i

cond.end736.i.i.cond.false763.i.i_crit_edge:      ; preds = %cond.end736.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false763.i.i

land.lhs.true741.i.i:                             ; preds = %cond.end736.i.i
  %692 = ptrtoint ptr %funcs152.i.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %funcs152.i.i, align 4
  %tobool745.not.i.i = icmp eq ptr %693, null
  br i1 %tobool745.not.i.i, label %land.lhs.true741.i.i.cond.false763.i.i_crit_edge, label %land.lhs.true746.i.i

land.lhs.true741.i.i.cond.false763.i.i_crit_edge: ; preds = %land.lhs.true741.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false763.i.i

land.lhs.true746.i.i:                             ; preds = %land.lhs.true741.i.i
  %sriov_wreg750.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %693, i32 0, i32 12
  %694 = ptrtoint ptr %sriov_wreg750.i.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %sriov_wreg750.i.i, align 4
  %tobool751.not.i.i = icmp eq ptr %695, null
  br i1 %tobool751.not.i.i, label %land.lhs.true746.i.i.cond.false763.i.i_crit_edge, label %cond.true752.i.i

land.lhs.true746.i.i.cond.false763.i.i_crit_edge: ; preds = %land.lhs.true746.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false763.i.i

cond.true752.i.i:                                 ; preds = %land.lhs.true746.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx759.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %696 = ptrtoint ptr %arrayidx759.i.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %arrayidx759.i.i, align 4
  %arrayidx760.i.i = getelementptr i32, ptr %697, i32 1
  %698 = ptrtoint ptr %arrayidx760.i.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %arrayidx760.i.i, align 4
  %add761.i.i = add i32 %699, 1336
  %700 = ptrtoint ptr %max_handles.i.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load i32, ptr %max_handles.i.i, align 8
  tail call void %695(ptr noundef %handle, i32 noundef %add761.i.i, i32 noundef %701, i32 noundef 0, i32 noundef 16) #9
  br label %for.inc.i.i162

cond.false763.i.i:                                ; preds = %land.lhs.true746.i.i.cond.false763.i.i_crit_edge, %land.lhs.true741.i.i.cond.false763.i.i_crit_edge, %cond.end736.i.i.cond.false763.i.i_crit_edge
  %arrayidx766.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.01059.i.i
  %702 = ptrtoint ptr %arrayidx766.i.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %arrayidx766.i.i, align 4
  %arrayidx767.i.i = getelementptr i32, ptr %703, i32 1
  %704 = ptrtoint ptr %arrayidx767.i.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load i32, ptr %arrayidx767.i.i, align 4
  %add768.i.i = add i32 %705, 1336
  %706 = ptrtoint ptr %max_handles.i.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %max_handles.i.i, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add768.i.i, i32 noundef %707, i32 noundef 0) #9
  br label %for.inc.i.i162

for.inc.i.i162:                                   ; preds = %cond.false763.i.i, %cond.true752.i.i, %for.body.i.i149.for.inc.i.i162_crit_edge
  %inc.i.i159 = add nuw nsw i32 %i.01059.i.i, 1
  %708 = ptrtoint ptr %num_uvd_inst.i131 to i32
  call void @__asan_load1_noabort(i32 %708)
  %709 = load i8, ptr %num_uvd_inst.i131, align 8
  %conv.i.i160 = zext i8 %709 to i32
  %cmp.i.i161 = icmp ult i32 %inc.i.i159, %conv.i.i160
  br i1 %cmp.i.i161, label %for.inc.i.i162.for.body.i.i149_crit_edge, label %for.inc.i.i162.uvd_v7_0_mc_resume.exit.i_crit_edge

for.inc.i.i162.uvd_v7_0_mc_resume.exit.i_crit_edge: ; preds = %for.inc.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvd_v7_0_mc_resume.exit.i

for.inc.i.i162.for.body.i.i149_crit_edge:         ; preds = %for.inc.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i149

uvd_v7_0_mc_resume.exitthread-pre-split.i:        ; preds = %for.end.i144
  call void @__sanitizer_cov_trace_pc() #11
  %710 = ptrtoint ptr %num_uvd_inst.i131 to i32
  call void @__asan_load1_noabort(i32 %710)
  %.pr.i = load i8, ptr %num_uvd_inst.i131, align 8
  br label %uvd_v7_0_mc_resume.exit.i

uvd_v7_0_mc_resume.exit.i:                        ; preds = %uvd_v7_0_mc_resume.exitthread-pre-split.i, %for.inc.i.i162.uvd_v7_0_mc_resume.exit.i_crit_edge
  %711 = phi i8 [ %.pr.i, %uvd_v7_0_mc_resume.exitthread-pre-split.i ], [ %709, %for.inc.i.i162.uvd_v7_0_mc_resume.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %711)
  %cmp151973.not.i = icmp eq i8 %711, 0
  br i1 %cmp151973.not.i, label %uvd_v7_0_mc_resume.exit.i.if.end_crit_edge, label %for.body17.lr.ph.i

uvd_v7_0_mc_resume.exit.i.if.end_crit_edge:       ; preds = %uvd_v7_0_mc_resume.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body17.lr.ph.i:                               ; preds = %uvd_v7_0_mc_resume.exit.i
  %harvest_config19.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.inc1398.i.for.body17.i_crit_edge, %for.body17.lr.ph.i
  %k.11975.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc1399.i, %for.inc1398.i.for.body17.i_crit_edge ]
  %712 = ptrtoint ptr %harvest_config19.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %harvest_config19.i, align 4
  %shl20.i = shl nuw i32 1, %k.11975.i
  %and21.i = and i32 %713, %shl20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %for.body17.i.for.inc1398.i_crit_edge

for.body17.i.for.inc1398.i_crit_edge:             ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc1398.i

if.end24.i:                                       ; preds = %for.body17.i
  %arrayidx32.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %k.11975.i
  %714 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx33.i = getelementptr i32, ptr %715, i32 1
  %716 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %arrayidx33.i, align 4
  %add34.i = add i32 %717, 1324
  %call35.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add34.i, i32 noundef 0) #9
  %and36.i = and i32 %call35.i, -2
  %718 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx41.i163 = getelementptr i32, ptr %719, i32 1
  %720 = ptrtoint ptr %arrayidx41.i163 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %arrayidx41.i163, align 4
  %add42.i164 = add i32 %721, 1324
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add42.i164, i32 noundef %and36.i, i32 noundef 0) #9
  %722 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx50.i = getelementptr i32, ptr %723, i32 1
  %724 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %arrayidx50.i, align 4
  %add51.i = add i32 %725, 1344
  %call52.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add51.i, i32 noundef 0) #9
  %and53.i = and i32 %call52.i, -3
  %726 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx58.i = getelementptr i32, ptr %727, i32 1
  %728 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load i32, ptr %arrayidx58.i, align 4
  %add59.i = add i32 %729, 1344
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add59.i, i32 noundef %and53.i, i32 noundef 0) #9
  %730 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx67.i = getelementptr i32, ptr %731, i32 1
  %732 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %arrayidx67.i, align 4
  %add68.i = add i32 %733, 1341
  %call69.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add68.i, i32 noundef 0) #9
  %or71.i = or i32 %call69.i, 256
  %734 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx75.i = getelementptr i32, ptr %735, i32 1
  %736 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %arrayidx75.i, align 4
  %add76.i = add i32 %737, 1341
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add76.i, i32 noundef %or71.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %738 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %738(i32 noundef 214748000) #9
  %739 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %virt, align 8
  %and79.i = and i32 %740, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end24.i.cond.false.i167_crit_edge, label %land.lhs.true.i165

if.end24.i.cond.false.i167_crit_edge:             ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i167

land.lhs.true.i165:                               ; preds = %if.end24.i
  %741 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %funcs.i, align 4
  %tobool81.not.i = icmp eq ptr %742, null
  br i1 %tobool81.not.i, label %land.lhs.true.i165.cond.false.i167_crit_edge, label %land.lhs.true82.i

land.lhs.true.i165.cond.false.i167_crit_edge:     ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i167

land.lhs.true82.i:                                ; preds = %land.lhs.true.i165
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %742, i32 0, i32 12
  %743 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool86.not.i = icmp eq ptr %744, null
  br i1 %tobool86.not.i, label %land.lhs.true82.i.cond.false.i167_crit_edge, label %cond.true.i166

land.lhs.true82.i.cond.false.i167_crit_edge:      ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i167

cond.true.i166:                                   ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #11
  %745 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx94.i = getelementptr i32, ptr %746, i32 1
  %747 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %arrayidx94.i, align 4
  %add95.i = add i32 %748, 1440
  tail call void %744(ptr noundef %handle, i32 noundef %add95.i, i32 noundef 8431, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end.i

cond.false.i167:                                  ; preds = %land.lhs.true82.i.cond.false.i167_crit_edge, %land.lhs.true.i165.cond.false.i167_crit_edge, %if.end24.i.cond.false.i167_crit_edge
  %749 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx99.i = getelementptr i32, ptr %750, i32 1
  %751 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %arrayidx99.i, align 4
  %add100.i = add i32 %752, 1440
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add100.i, i32 noundef 8431, i32 noundef 0) #9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i167, %cond.true.i166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %753 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %753(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %754 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %754(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %755 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %755(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %756 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %756(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %757 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %757(i32 noundef 214748000) #9
  %758 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %virt, align 8
  %and104.i = and i32 %759, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %cond.end.i.cond.false127.i_crit_edge, label %land.lhs.true106.i

cond.end.i.cond.false127.i_crit_edge:             ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false127.i

land.lhs.true106.i:                               ; preds = %cond.end.i
  %760 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %funcs.i, align 4
  %tobool110.not.i = icmp eq ptr %761, null
  br i1 %tobool110.not.i, label %land.lhs.true106.i.cond.false127.i_crit_edge, label %land.lhs.true111.i

land.lhs.true106.i.cond.false127.i_crit_edge:     ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false127.i

land.lhs.true111.i:                               ; preds = %land.lhs.true106.i
  %sriov_wreg115.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %761, i32 0, i32 12
  %762 = ptrtoint ptr %sriov_wreg115.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %sriov_wreg115.i, align 4
  %tobool116.not.i = icmp eq ptr %763, null
  br i1 %tobool116.not.i, label %land.lhs.true111.i.cond.false127.i_crit_edge, label %cond.true117.i

land.lhs.true111.i.cond.false127.i_crit_edge:     ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false127.i

cond.true117.i:                                   ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #11
  %764 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx125.i = getelementptr i32, ptr %765, i32 1
  %766 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load i32, ptr %arrayidx125.i, align 4
  %add126.i = add i32 %767, 1382
  tail call void %763(ptr noundef %handle, i32 noundef %add126.i, i32 noundef 3154752, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end133.i

cond.false127.i:                                  ; preds = %land.lhs.true111.i.cond.false127.i_crit_edge, %land.lhs.true106.i.cond.false127.i_crit_edge, %cond.end.i.cond.false127.i_crit_edge
  %768 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx131.i = getelementptr i32, ptr %769, i32 1
  %770 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %arrayidx131.i, align 4
  %add132.i = add i32 %771, 1382
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add132.i, i32 noundef 3154752, i32 noundef 0) #9
  br label %cond.end133.i

cond.end133.i:                                    ; preds = %cond.false127.i, %cond.true117.i
  %772 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load i32, ptr %virt, align 8
  %and136.i = and i32 %773, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %cond.end133.i.cond.false159.i_crit_edge, label %land.lhs.true138.i

cond.end133.i.cond.false159.i_crit_edge:          ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false159.i

land.lhs.true138.i:                               ; preds = %cond.end133.i
  %774 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %funcs.i, align 4
  %tobool142.not.i = icmp eq ptr %775, null
  br i1 %tobool142.not.i, label %land.lhs.true138.i.cond.false159.i_crit_edge, label %land.lhs.true143.i

land.lhs.true138.i.cond.false159.i_crit_edge:     ; preds = %land.lhs.true138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false159.i

land.lhs.true143.i:                               ; preds = %land.lhs.true138.i
  %sriov_wreg147.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %775, i32 0, i32 12
  %776 = ptrtoint ptr %sriov_wreg147.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %sriov_wreg147.i, align 4
  %tobool148.not.i = icmp eq ptr %777, null
  br i1 %tobool148.not.i, label %land.lhs.true143.i.cond.false159.i_crit_edge, label %cond.true149.i

land.lhs.true143.i.cond.false159.i_crit_edge:     ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false159.i

cond.true149.i:                                   ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #11
  %778 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx157.i = getelementptr i32, ptr %779, i32 1
  %780 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load i32, ptr %arrayidx157.i, align 4
  %add158.i = add i32 %781, 1389
  tail call void %777(ptr noundef %handle, i32 noundef %add158.i, i32 noundef 10, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end165.i

cond.false159.i:                                  ; preds = %land.lhs.true143.i.cond.false159.i_crit_edge, %land.lhs.true138.i.cond.false159.i_crit_edge, %cond.end133.i.cond.false159.i_crit_edge
  %782 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx163.i = getelementptr i32, ptr %783, i32 1
  %784 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load i32, ptr %arrayidx163.i, align 4
  %add164.i = add i32 %785, 1389
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add164.i, i32 noundef 10, i32 noundef 0) #9
  br label %cond.end165.i

cond.end165.i:                                    ; preds = %cond.false159.i, %cond.true149.i
  %786 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load i32, ptr %virt, align 8
  %and168.i = and i32 %787, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168.i)
  %tobool169.not.i = icmp eq i32 %and168.i, 0
  br i1 %tobool169.not.i, label %cond.end165.i.cond.false191.i_crit_edge, label %land.lhs.true170.i

cond.end165.i.cond.false191.i_crit_edge:          ; preds = %cond.end165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false191.i

land.lhs.true170.i:                               ; preds = %cond.end165.i
  %788 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %funcs.i, align 4
  %tobool174.not.i = icmp eq ptr %789, null
  br i1 %tobool174.not.i, label %land.lhs.true170.i.cond.false191.i_crit_edge, label %land.lhs.true175.i

land.lhs.true170.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true170.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false191.i

land.lhs.true175.i:                               ; preds = %land.lhs.true170.i
  %sriov_wreg179.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %789, i32 0, i32 12
  %790 = ptrtoint ptr %sriov_wreg179.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %sriov_wreg179.i, align 4
  %tobool180.not.i = icmp eq ptr %791, null
  br i1 %tobool180.not.i, label %land.lhs.true175.i.cond.false191.i_crit_edge, label %cond.true181.i

land.lhs.true175.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false191.i

cond.true181.i:                                   ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #11
  %792 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx189.i = getelementptr i32, ptr %793, i32 1
  %794 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load i32, ptr %arrayidx189.i, align 4
  %add190.i = add i32 %795, 1391
  tail call void %791(ptr noundef %handle, i32 noundef %add190.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end197.i

cond.false191.i:                                  ; preds = %land.lhs.true175.i.cond.false191.i_crit_edge, %land.lhs.true170.i.cond.false191.i_crit_edge, %cond.end165.i.cond.false191.i_crit_edge
  %796 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx195.i168 = getelementptr i32, ptr %797, i32 1
  %798 = ptrtoint ptr %arrayidx195.i168 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load i32, ptr %arrayidx195.i168, align 4
  %add196.i169 = add i32 %799, 1391
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add196.i169, i32 noundef 0, i32 noundef 0) #9
  br label %cond.end197.i

cond.end197.i:                                    ; preds = %cond.false191.i, %cond.true181.i
  %800 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load i32, ptr %virt, align 8
  %and200.i = and i32 %801, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200.i)
  %tobool201.not.i = icmp eq i32 %and200.i, 0
  br i1 %tobool201.not.i, label %cond.end197.i.cond.false223.i_crit_edge, label %land.lhs.true202.i

cond.end197.i.cond.false223.i_crit_edge:          ; preds = %cond.end197.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false223.i

land.lhs.true202.i:                               ; preds = %cond.end197.i
  %802 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %funcs.i, align 4
  %tobool206.not.i = icmp eq ptr %803, null
  br i1 %tobool206.not.i, label %land.lhs.true202.i.cond.false223.i_crit_edge, label %land.lhs.true207.i

land.lhs.true202.i.cond.false223.i_crit_edge:     ; preds = %land.lhs.true202.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false223.i

land.lhs.true207.i:                               ; preds = %land.lhs.true202.i
  %sriov_wreg211.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %803, i32 0, i32 12
  %804 = ptrtoint ptr %sriov_wreg211.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %sriov_wreg211.i, align 4
  %tobool212.not.i = icmp eq ptr %805, null
  br i1 %tobool212.not.i, label %land.lhs.true207.i.cond.false223.i_crit_edge, label %cond.true213.i

land.lhs.true207.i.cond.false223.i_crit_edge:     ; preds = %land.lhs.true207.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false223.i

cond.true213.i:                                   ; preds = %land.lhs.true207.i
  call void @__sanitizer_cov_trace_pc() #11
  %806 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx221.i = getelementptr i32, ptr %807, i32 1
  %808 = ptrtoint ptr %arrayidx221.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load i32, ptr %arrayidx221.i, align 4
  %add222.i = add i32 %809, 1401
  tail call void %805(ptr noundef %handle, i32 noundef %add222.i, i32 noundef 67903552, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end229.i

cond.false223.i:                                  ; preds = %land.lhs.true207.i.cond.false223.i_crit_edge, %land.lhs.true202.i.cond.false223.i_crit_edge, %cond.end197.i.cond.false223.i_crit_edge
  %810 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx227.i = getelementptr i32, ptr %811, i32 1
  %812 = ptrtoint ptr %arrayidx227.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load i32, ptr %arrayidx227.i, align 4
  %add228.i = add i32 %813, 1401
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add228.i, i32 noundef 67903552, i32 noundef 0) #9
  br label %cond.end229.i

cond.end229.i:                                    ; preds = %cond.false223.i, %cond.true213.i
  %814 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load i32, ptr %virt, align 8
  %and232.i = and i32 %815, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232.i)
  %tobool233.not.i = icmp eq i32 %and232.i, 0
  br i1 %tobool233.not.i, label %cond.end229.i.cond.false255.i_crit_edge, label %land.lhs.true234.i

cond.end229.i.cond.false255.i_crit_edge:          ; preds = %cond.end229.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false255.i

land.lhs.true234.i:                               ; preds = %cond.end229.i
  %816 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %funcs.i, align 4
  %tobool238.not.i = icmp eq ptr %817, null
  br i1 %tobool238.not.i, label %land.lhs.true234.i.cond.false255.i_crit_edge, label %land.lhs.true239.i

land.lhs.true234.i.cond.false255.i_crit_edge:     ; preds = %land.lhs.true234.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false255.i

land.lhs.true239.i:                               ; preds = %land.lhs.true234.i
  %sriov_wreg243.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %817, i32 0, i32 12
  %818 = ptrtoint ptr %sriov_wreg243.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %sriov_wreg243.i, align 4
  %tobool244.not.i = icmp eq ptr %819, null
  br i1 %tobool244.not.i, label %land.lhs.true239.i.cond.false255.i_crit_edge, label %cond.true245.i

land.lhs.true239.i.cond.false255.i_crit_edge:     ; preds = %land.lhs.true239.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false255.i

cond.true245.i:                                   ; preds = %land.lhs.true239.i
  call void @__sanitizer_cov_trace_pc() #11
  %820 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx253.i = getelementptr i32, ptr %821, i32 1
  %822 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load i32, ptr %arrayidx253.i, align 4
  %add254.i = add i32 %823, 1402
  tail call void %819(ptr noundef %handle, i32 noundef %add254.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end261.i

cond.false255.i:                                  ; preds = %land.lhs.true239.i.cond.false255.i_crit_edge, %land.lhs.true234.i.cond.false255.i_crit_edge, %cond.end229.i.cond.false255.i_crit_edge
  %824 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx259.i = getelementptr i32, ptr %825, i32 1
  %826 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load i32, ptr %arrayidx259.i, align 4
  %add260.i = add i32 %827, 1402
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add260.i, i32 noundef 0, i32 noundef 0) #9
  br label %cond.end261.i

cond.end261.i:                                    ; preds = %cond.false255.i, %cond.true245.i
  %828 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load i32, ptr %virt, align 8
  %and264.i = and i32 %829, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264.i)
  %tobool265.not.i = icmp eq i32 %and264.i, 0
  br i1 %tobool265.not.i, label %cond.end261.i.cond.false287.i_crit_edge, label %land.lhs.true266.i

cond.end261.i.cond.false287.i_crit_edge:          ; preds = %cond.end261.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false287.i

land.lhs.true266.i:                               ; preds = %cond.end261.i
  %830 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %funcs.i, align 4
  %tobool270.not.i = icmp eq ptr %831, null
  br i1 %tobool270.not.i, label %land.lhs.true266.i.cond.false287.i_crit_edge, label %land.lhs.true271.i

land.lhs.true266.i.cond.false287.i_crit_edge:     ; preds = %land.lhs.true266.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false287.i

land.lhs.true271.i:                               ; preds = %land.lhs.true266.i
  %sriov_wreg275.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %831, i32 0, i32 12
  %832 = ptrtoint ptr %sriov_wreg275.i to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %sriov_wreg275.i, align 4
  %tobool276.not.i = icmp eq ptr %833, null
  br i1 %tobool276.not.i, label %land.lhs.true271.i.cond.false287.i_crit_edge, label %cond.true277.i

land.lhs.true271.i.cond.false287.i_crit_edge:     ; preds = %land.lhs.true271.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false287.i

cond.true277.i:                                   ; preds = %land.lhs.true271.i
  call void @__sanitizer_cov_trace_pc() #11
  %834 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx285.i = getelementptr i32, ptr %835, i32 1
  %836 = ptrtoint ptr %arrayidx285.i to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load i32, ptr %arrayidx285.i, align 4
  %add286.i = add i32 %837, 1403
  tail call void %833(ptr noundef %handle, i32 noundef %add286.i, i32 noundef 67903552, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end293.i

cond.false287.i:                                  ; preds = %land.lhs.true271.i.cond.false287.i_crit_edge, %land.lhs.true266.i.cond.false287.i_crit_edge, %cond.end261.i.cond.false287.i_crit_edge
  %838 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx291.i = getelementptr i32, ptr %839, i32 1
  %840 = ptrtoint ptr %arrayidx291.i to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load i32, ptr %arrayidx291.i, align 4
  %add292.i = add i32 %841, 1403
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add292.i, i32 noundef 67903552, i32 noundef 0) #9
  br label %cond.end293.i

cond.end293.i:                                    ; preds = %cond.false287.i, %cond.true277.i
  %842 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load i32, ptr %virt, align 8
  %and296.i = and i32 %843, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and296.i)
  %tobool297.not.i = icmp eq i32 %and296.i, 0
  br i1 %tobool297.not.i, label %cond.end293.i.cond.false319.i_crit_edge, label %land.lhs.true298.i

cond.end293.i.cond.false319.i_crit_edge:          ; preds = %cond.end293.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false319.i

land.lhs.true298.i:                               ; preds = %cond.end293.i
  %844 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %funcs.i, align 4
  %tobool302.not.i = icmp eq ptr %845, null
  br i1 %tobool302.not.i, label %land.lhs.true298.i.cond.false319.i_crit_edge, label %land.lhs.true303.i

land.lhs.true298.i.cond.false319.i_crit_edge:     ; preds = %land.lhs.true298.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false319.i

land.lhs.true303.i:                               ; preds = %land.lhs.true298.i
  %sriov_wreg307.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %845, i32 0, i32 12
  %846 = ptrtoint ptr %sriov_wreg307.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %sriov_wreg307.i, align 4
  %tobool308.not.i = icmp eq ptr %847, null
  br i1 %tobool308.not.i, label %land.lhs.true303.i.cond.false319.i_crit_edge, label %cond.true309.i

land.lhs.true303.i.cond.false319.i_crit_edge:     ; preds = %land.lhs.true303.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false319.i

cond.true309.i:                                   ; preds = %land.lhs.true303.i
  call void @__sanitizer_cov_trace_pc() #11
  %848 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx317.i = getelementptr i32, ptr %849, i32 1
  %850 = ptrtoint ptr %arrayidx317.i to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load i32, ptr %arrayidx317.i, align 4
  %add318.i = add i32 %851, 1404
  tail call void %847(ptr noundef %handle, i32 noundef %add318.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end325.i

cond.false319.i:                                  ; preds = %land.lhs.true303.i.cond.false319.i_crit_edge, %land.lhs.true298.i.cond.false319.i_crit_edge, %cond.end293.i.cond.false319.i_crit_edge
  %852 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx323.i = getelementptr i32, ptr %853, i32 1
  %854 = ptrtoint ptr %arrayidx323.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load i32, ptr %arrayidx323.i, align 4
  %add324.i = add i32 %855, 1404
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add324.i, i32 noundef 0, i32 noundef 0) #9
  br label %cond.end325.i

cond.end325.i:                                    ; preds = %cond.false319.i, %cond.true309.i
  %856 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load i32, ptr %virt, align 8
  %and328.i = and i32 %857, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328.i)
  %tobool329.not.i = icmp eq i32 %and328.i, 0
  br i1 %tobool329.not.i, label %cond.end325.i.cond.false351.i_crit_edge, label %land.lhs.true330.i

cond.end325.i.cond.false351.i_crit_edge:          ; preds = %cond.end325.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false351.i

land.lhs.true330.i:                               ; preds = %cond.end325.i
  %858 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %funcs.i, align 4
  %tobool334.not.i = icmp eq ptr %859, null
  br i1 %tobool334.not.i, label %land.lhs.true330.i.cond.false351.i_crit_edge, label %land.lhs.true335.i

land.lhs.true330.i.cond.false351.i_crit_edge:     ; preds = %land.lhs.true330.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false351.i

land.lhs.true335.i:                               ; preds = %land.lhs.true330.i
  %sriov_wreg339.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %859, i32 0, i32 12
  %860 = ptrtoint ptr %sriov_wreg339.i to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %sriov_wreg339.i, align 4
  %tobool340.not.i = icmp eq ptr %861, null
  br i1 %tobool340.not.i, label %land.lhs.true335.i.cond.false351.i_crit_edge, label %cond.true341.i

land.lhs.true335.i.cond.false351.i_crit_edge:     ; preds = %land.lhs.true335.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false351.i

cond.true341.i:                                   ; preds = %land.lhs.true335.i
  call void @__sanitizer_cov_trace_pc() #11
  %862 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx349.i = getelementptr i32, ptr %863, i32 1
  %864 = ptrtoint ptr %arrayidx349.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load i32, ptr %arrayidx349.i, align 4
  %add350.i = add i32 %865, 1406
  tail call void %861(ptr noundef %handle, i32 noundef %add350.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end357.i

cond.false351.i:                                  ; preds = %land.lhs.true335.i.cond.false351.i_crit_edge, %land.lhs.true330.i.cond.false351.i_crit_edge, %cond.end325.i.cond.false351.i_crit_edge
  %866 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx355.i = getelementptr i32, ptr %867, i32 1
  %868 = ptrtoint ptr %arrayidx355.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load i32, ptr %arrayidx355.i, align 4
  %add356.i = add i32 %869, 1406
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add356.i, i32 noundef 0, i32 noundef 0) #9
  br label %cond.end357.i

cond.end357.i:                                    ; preds = %cond.false351.i, %cond.true341.i
  %870 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load i32, ptr %virt, align 8
  %and360.i = and i32 %871, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and360.i)
  %tobool361.not.i = icmp eq i32 %and360.i, 0
  br i1 %tobool361.not.i, label %cond.end357.i.cond.false383.i_crit_edge, label %land.lhs.true362.i

cond.end357.i.cond.false383.i_crit_edge:          ; preds = %cond.end357.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false383.i

land.lhs.true362.i:                               ; preds = %cond.end357.i
  %872 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %funcs.i, align 4
  %tobool366.not.i = icmp eq ptr %873, null
  br i1 %tobool366.not.i, label %land.lhs.true362.i.cond.false383.i_crit_edge, label %land.lhs.true367.i

land.lhs.true362.i.cond.false383.i_crit_edge:     ; preds = %land.lhs.true362.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false383.i

land.lhs.true367.i:                               ; preds = %land.lhs.true362.i
  %sriov_wreg371.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %873, i32 0, i32 12
  %874 = ptrtoint ptr %sriov_wreg371.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %sriov_wreg371.i, align 4
  %tobool372.not.i = icmp eq ptr %875, null
  br i1 %tobool372.not.i, label %land.lhs.true367.i.cond.false383.i_crit_edge, label %cond.true373.i

land.lhs.true367.i.cond.false383.i_crit_edge:     ; preds = %land.lhs.true367.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false383.i

cond.true373.i:                                   ; preds = %land.lhs.true367.i
  call void @__sanitizer_cov_trace_pc() #11
  %876 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx381.i = getelementptr i32, ptr %877, i32 1
  %878 = ptrtoint ptr %arrayidx381.i to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load i32, ptr %arrayidx381.i, align 4
  %add382.i = add i32 %879, 1405
  tail call void %875(ptr noundef %handle, i32 noundef %add382.i, i32 noundef 136, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end389.i

cond.false383.i:                                  ; preds = %land.lhs.true367.i.cond.false383.i_crit_edge, %land.lhs.true362.i.cond.false383.i_crit_edge, %cond.end357.i.cond.false383.i_crit_edge
  %880 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx387.i = getelementptr i32, ptr %881, i32 1
  %882 = ptrtoint ptr %arrayidx387.i to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load i32, ptr %arrayidx387.i, align 4
  %add388.i = add i32 %883, 1405
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add388.i, i32 noundef 136, i32 noundef 0) #9
  br label %cond.end389.i

cond.end389.i:                                    ; preds = %cond.false383.i, %cond.true373.i
  %884 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load i32, ptr %virt, align 8
  %and392.i = and i32 %885, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and392.i)
  %tobool393.not.i = icmp eq i32 %and392.i, 0
  br i1 %tobool393.not.i, label %cond.end389.i.cond.false415.i_crit_edge, label %land.lhs.true394.i

cond.end389.i.cond.false415.i_crit_edge:          ; preds = %cond.end389.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false415.i

land.lhs.true394.i:                               ; preds = %cond.end389.i
  %886 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %funcs.i, align 4
  %tobool398.not.i = icmp eq ptr %887, null
  br i1 %tobool398.not.i, label %land.lhs.true394.i.cond.false415.i_crit_edge, label %land.lhs.true399.i

land.lhs.true394.i.cond.false415.i_crit_edge:     ; preds = %land.lhs.true394.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false415.i

land.lhs.true399.i:                               ; preds = %land.lhs.true394.i
  %sriov_wreg403.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %887, i32 0, i32 12
  %888 = ptrtoint ptr %sriov_wreg403.i to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %sriov_wreg403.i, align 4
  %tobool404.not.i = icmp eq ptr %889, null
  br i1 %tobool404.not.i, label %land.lhs.true399.i.cond.false415.i_crit_edge, label %cond.true405.i

land.lhs.true399.i.cond.false415.i_crit_edge:     ; preds = %land.lhs.true399.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false415.i

cond.true405.i:                                   ; preds = %land.lhs.true399.i
  call void @__sanitizer_cov_trace_pc() #11
  %890 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx413.i = getelementptr i32, ptr %891, i32 1
  %892 = ptrtoint ptr %arrayidx413.i to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load i32, ptr %arrayidx413.i, align 4
  %add414.i = add i32 %893, 1440
  tail call void %889(ptr noundef %handle, i32 noundef %add414.i, i32 noundef 8, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end421.i

cond.false415.i:                                  ; preds = %land.lhs.true399.i.cond.false415.i_crit_edge, %land.lhs.true394.i.cond.false415.i_crit_edge, %cond.end389.i.cond.false415.i_crit_edge
  %894 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx419.i = getelementptr i32, ptr %895, i32 1
  %896 = ptrtoint ptr %arrayidx419.i to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load i32, ptr %arrayidx419.i, align 4
  %add420.i = add i32 %897, 1440
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add420.i, i32 noundef 8, i32 noundef 0) #9
  br label %cond.end421.i

cond.end421.i:                                    ; preds = %cond.false415.i, %cond.true405.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %898 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %898(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %899 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %899(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %900 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %900(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %901 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %901(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %902 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %902(i32 noundef 214748000) #9
  %903 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load i32, ptr %virt, align 8
  %and430.i = and i32 %904, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and430.i)
  %tobool431.not.i = icmp eq i32 %and430.i, 0
  br i1 %tobool431.not.i, label %cond.end421.i.cond.false453.i_crit_edge, label %land.lhs.true432.i

cond.end421.i.cond.false453.i_crit_edge:          ; preds = %cond.end421.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false453.i

land.lhs.true432.i:                               ; preds = %cond.end421.i
  %905 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %funcs.i, align 4
  %tobool436.not.i = icmp eq ptr %906, null
  br i1 %tobool436.not.i, label %land.lhs.true432.i.cond.false453.i_crit_edge, label %land.lhs.true437.i

land.lhs.true432.i.cond.false453.i_crit_edge:     ; preds = %land.lhs.true432.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false453.i

land.lhs.true437.i:                               ; preds = %land.lhs.true432.i
  %sriov_wreg441.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %906, i32 0, i32 12
  %907 = ptrtoint ptr %sriov_wreg441.i to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load ptr, ptr %sriov_wreg441.i, align 4
  %tobool442.not.i = icmp eq ptr %908, null
  br i1 %tobool442.not.i, label %land.lhs.true437.i.cond.false453.i_crit_edge, label %cond.true443.i

land.lhs.true437.i.cond.false453.i_crit_edge:     ; preds = %land.lhs.true437.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false453.i

cond.true443.i:                                   ; preds = %land.lhs.true437.i
  call void @__sanitizer_cov_trace_pc() #11
  %909 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx451.i = getelementptr i32, ptr %910, i32 1
  %911 = ptrtoint ptr %arrayidx451.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load i32, ptr %arrayidx451.i, align 4
  %add452.i = add i32 %912, 1432
  tail call void %908(ptr noundef %handle, i32 noundef %add452.i, i32 noundef 512, i32 noundef 0, i32 noundef 16) #9
  br label %do.body460.i

cond.false453.i:                                  ; preds = %land.lhs.true437.i.cond.false453.i_crit_edge, %land.lhs.true432.i.cond.false453.i_crit_edge, %cond.end421.i.cond.false453.i_crit_edge
  %913 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx457.i = getelementptr i32, ptr %914, i32 1
  %915 = ptrtoint ptr %arrayidx457.i to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load i32, ptr %arrayidx457.i, align 4
  %add458.i = add i32 %916, 1432
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add458.i, i32 noundef 512, i32 noundef 0) #9
  br label %do.body460.i

do.body460.i:                                     ; preds = %cond.false453.i, %cond.true443.i
  %917 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx465.i = getelementptr i32, ptr %918, i32 1
  %919 = ptrtoint ptr %arrayidx465.i to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load i32, ptr %arrayidx465.i, align 4
  %add466.i = add i32 %920, 1341
  %call467.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add466.i, i32 noundef 0) #9
  %and468.i = and i32 %call467.i, -257
  %921 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx473.i = getelementptr i32, ptr %922, i32 1
  %923 = ptrtoint ptr %arrayidx473.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load i32, ptr %arrayidx473.i, align 4
  %add474.i = add i32 %924, 1341
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add474.i, i32 noundef %and468.i, i32 noundef 0) #9
  %925 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load i32, ptr %virt, align 8
  %and479.i = and i32 %926, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and479.i)
  %tobool480.not.i = icmp eq i32 %and479.i, 0
  br i1 %tobool480.not.i, label %do.body460.i.cond.false502.i_crit_edge, label %land.lhs.true481.i

do.body460.i.cond.false502.i_crit_edge:           ; preds = %do.body460.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false502.i

land.lhs.true481.i:                               ; preds = %do.body460.i
  %927 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load ptr, ptr %funcs.i, align 4
  %tobool485.not.i = icmp eq ptr %928, null
  br i1 %tobool485.not.i, label %land.lhs.true481.i.cond.false502.i_crit_edge, label %land.lhs.true486.i

land.lhs.true481.i.cond.false502.i_crit_edge:     ; preds = %land.lhs.true481.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false502.i

land.lhs.true486.i:                               ; preds = %land.lhs.true481.i
  %sriov_wreg490.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %928, i32 0, i32 12
  %929 = ptrtoint ptr %sriov_wreg490.i to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %sriov_wreg490.i, align 4
  %tobool491.not.i = icmp eq ptr %930, null
  br i1 %tobool491.not.i, label %land.lhs.true486.i.cond.false502.i_crit_edge, label %cond.true492.i

land.lhs.true486.i.cond.false502.i_crit_edge:     ; preds = %land.lhs.true486.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false502.i

cond.true492.i:                                   ; preds = %land.lhs.true486.i
  call void @__sanitizer_cov_trace_pc() #11
  %931 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx500.i = getelementptr i32, ptr %932, i32 1
  %933 = ptrtoint ptr %arrayidx500.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load i32, ptr %arrayidx500.i, align 4
  %add501.i = add i32 %934, 1440
  tail call void %930(ptr noundef %handle, i32 noundef %add501.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end508.i

cond.false502.i:                                  ; preds = %land.lhs.true486.i.cond.false502.i_crit_edge, %land.lhs.true481.i.cond.false502.i_crit_edge, %do.body460.i.cond.false502.i_crit_edge
  %935 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx506.i = getelementptr i32, ptr %936, i32 1
  %937 = ptrtoint ptr %arrayidx506.i to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load i32, ptr %arrayidx506.i, align 4
  %add507.i = add i32 %938, 1440
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add507.i, i32 noundef 0, i32 noundef 0) #9
  br label %cond.end508.i

cond.end508.i:                                    ; preds = %cond.false502.i, %cond.true492.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %939 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %939(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %940 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %940(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %941 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %941(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %942 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %942(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %943 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %943(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %944 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %944(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %945 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %945(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %946 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %946(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %947 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %947(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %948 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %948(i32 noundef 214748000) #9
  br label %for.cond519.preheader.i

for.cond519.preheader.i:                          ; preds = %if.end572.i.for.cond519.preheader.i_crit_edge, %cond.end508.i
  %i.01971.i = phi i32 [ %inc620.i, %if.end572.i.for.cond519.preheader.i_crit_edge ], [ 0, %cond.end508.i ]
  br label %for.body522.i

for.body522.i:                                    ; preds = %while.body564.preheader.i.for.body522.i_crit_edge, %for.cond519.preheader.i
  %j.01968.i = phi i32 [ 0, %for.cond519.preheader.i ], [ %inc567.i, %while.body564.preheader.i.for.body522.i_crit_edge ]
  %949 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load i32, ptr %virt, align 8
  %and525.i = and i32 %950, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and525.i)
  %tobool526.not.i = icmp eq i32 %and525.i, 0
  br i1 %tobool526.not.i, label %for.body522.i.cond.false548.i_crit_edge, label %land.lhs.true527.i

for.body522.i.cond.false548.i_crit_edge:          ; preds = %for.body522.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false548.i

land.lhs.true527.i:                               ; preds = %for.body522.i
  %951 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %funcs.i, align 4
  %tobool531.not.i = icmp eq ptr %952, null
  br i1 %tobool531.not.i, label %land.lhs.true527.i.cond.false548.i_crit_edge, label %land.lhs.true532.i

land.lhs.true527.i.cond.false548.i_crit_edge:     ; preds = %land.lhs.true527.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false548.i

land.lhs.true532.i:                               ; preds = %land.lhs.true527.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %952, i32 0, i32 13
  %953 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool536.not.i = icmp eq ptr %954, null
  br i1 %tobool536.not.i, label %land.lhs.true532.i.cond.false548.i_crit_edge, label %cond.true537.i

land.lhs.true532.i.cond.false548.i_crit_edge:     ; preds = %land.lhs.true532.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false548.i

cond.true537.i:                                   ; preds = %land.lhs.true532.i
  call void @__sanitizer_cov_trace_pc() #11
  %955 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx545.i = getelementptr i32, ptr %956, i32 1
  %957 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load i32, ptr %arrayidx545.i, align 4
  %add546.i = add i32 %958, 1455
  %call547.i = tail call i32 %954(ptr noundef %handle, i32 noundef %add546.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end555.i

cond.false548.i:                                  ; preds = %land.lhs.true532.i.cond.false548.i_crit_edge, %land.lhs.true527.i.cond.false548.i_crit_edge, %for.body522.i.cond.false548.i_crit_edge
  %959 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx552.i = getelementptr i32, ptr %960, i32 1
  %961 = ptrtoint ptr %arrayidx552.i to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load i32, ptr %arrayidx552.i, align 4
  %add553.i = add i32 %962, 1455
  %call554.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add553.i, i32 noundef 0) #9
  br label %cond.end555.i

cond.end555.i:                                    ; preds = %cond.false548.i, %cond.true537.i
  %cond.i = phi i32 [ %call547.i, %cond.true537.i ], [ %call554.i, %cond.false548.i ]
  %and556.i = and i32 %cond.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and556.i)
  %tobool557.not.i = icmp eq i32 %and556.i, 0
  br i1 %tobool557.not.i, label %while.body564.preheader.i, label %do.body625.i

while.body564.preheader.i:                        ; preds = %cond.end555.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %963 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %963(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %964 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %964(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %965 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %965(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %966 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %966(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %967 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %967(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %968 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %968(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %969 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %969(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %970 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %970(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %971 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %971(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %972 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %972(i32 noundef 214748000) #9
  %inc567.i = add nuw nsw i32 %j.01968.i, 1
  %exitcond.not.i = icmp eq i32 %inc567.i, 100
  br i1 %exitcond.not.i, label %if.end572.i, label %while.body564.preheader.i.for.body522.i_crit_edge

while.body564.preheader.i.for.body522.i_crit_edge: ; preds = %while.body564.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body522.i

if.end572.i:                                      ; preds = %while.body564.preheader.i
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %k.11975.i) #9
  %973 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx578.i = getelementptr i32, ptr %974, i32 1
  %975 = ptrtoint ptr %arrayidx578.i to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load i32, ptr %arrayidx578.i, align 4
  %add579.i = add i32 %976, 1440
  %call580.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add579.i, i32 noundef 0) #9
  %or582.i = or i32 %call580.i, 8
  %977 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx586.i = getelementptr i32, ptr %978, i32 1
  %979 = ptrtoint ptr %arrayidx586.i to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load i32, ptr %arrayidx586.i, align 4
  %add587.i = add i32 %980, 1440
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add587.i, i32 noundef %or582.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %981 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %981(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %982 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %982(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %983 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %983(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %984 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %984(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %985 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %985(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %986 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %986(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %987 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %987(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %988 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %988(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %989 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %989(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %990 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %990(i32 noundef 214748000) #9
  %991 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx601.i = getelementptr i32, ptr %992, i32 1
  %993 = ptrtoint ptr %arrayidx601.i to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load i32, ptr %arrayidx601.i, align 4
  %add602.i = add i32 %994, 1440
  %call603.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add602.i, i32 noundef 0) #9
  %and604.i = and i32 %call603.i, -9
  %995 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx609.i = getelementptr i32, ptr %996, i32 1
  %997 = ptrtoint ptr %arrayidx609.i to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load i32, ptr %arrayidx609.i, align 4
  %add610.i = add i32 %998, 1440
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add610.i, i32 noundef %and604.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %999 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %999(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1000 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1000(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1001 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1001(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1002 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1002(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1003 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1003(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1004 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1004(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1005 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1005(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1006 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1006(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1007 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1007(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1008 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1008(i32 noundef 214748000) #9
  %inc620.i = add nuw nsw i32 %i.01971.i, 1
  %exitcond1995.not.i = icmp eq i32 %inc620.i, 10
  br i1 %exitcond1995.not.i, label %if.then623.i, label %if.end572.i.for.cond519.preheader.i_crit_edge

if.end572.i.for.cond519.preheader.i_crit_edge:    ; preds = %if.end572.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond519.preheader.i

if.then623.i:                                     ; preds = %if.end572.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %k.11975.i) #9
  br label %if.end84

do.body625.i:                                     ; preds = %cond.end555.i
  %1009 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx630.i = getelementptr i32, ptr %1010, i32 1
  %1011 = ptrtoint ptr %arrayidx630.i to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load i32, ptr %arrayidx630.i, align 4
  %add631.i = add i32 %1012, 1344
  %call632.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add631.i, i32 noundef 0) #9
  %or634.i = or i32 %call632.i, 6
  %1013 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx638.i = getelementptr i32, ptr %1014, i32 1
  %1015 = ptrtoint ptr %arrayidx638.i to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load i32, ptr %arrayidx638.i, align 4
  %add639.i = add i32 %1016, 1344
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add639.i, i32 noundef %or634.i, i32 noundef 0) #9
  %1017 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx647.i = getelementptr i32, ptr %1018, i32 1
  %1019 = ptrtoint ptr %arrayidx647.i to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load i32, ptr %arrayidx647.i, align 4
  %add648.i = add i32 %1020, 1455
  %call649.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add648.i, i32 noundef 0) #9
  %and650.i = and i32 %call649.i, -5
  %1021 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx655.i = getelementptr i32, ptr %1022, i32 1
  %1023 = ptrtoint ptr %arrayidx655.i to i32
  call void @__asan_load4_noabort(i32 %1023)
  %1024 = load i32, ptr %arrayidx655.i, align 4
  %add656.i = add i32 %1024, 1455
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add656.i, i32 noundef %and650.i, i32 noundef 0) #9
  %ring_size.i170 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 4, i32 9
  %1025 = ptrtoint ptr %ring_size.i170 to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load i32, ptr %ring_size.i170, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1026)
  %cmp.i1948.i = icmp ugt i32 %1026, 1
  %sub.i1949.i = add i32 %1026, -1
  %1027 = tail call i32 @llvm.ctlz.i32(i32 %sub.i1949.i, i1 false) #9, !range !71
  %add.i.i179 = sub nsw i32 0, %1027
  %add.i.i179.op = and i32 %add.i.i179, 31
  %add.i.i179.op.op = or i32 %add.i.i179.op, 285278464
  %or708.i = select i1 %cmp.i1948.i, i32 %add.i.i179.op.op, i32 285278464
  %1028 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load i32, ptr %virt, align 8
  %and711.i = and i32 %1029, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and711.i)
  %tobool712.not.i = icmp eq i32 %and711.i, 0
  br i1 %tobool712.not.i, label %do.body625.i.cond.false734.i_crit_edge, label %land.lhs.true713.i

do.body625.i.cond.false734.i_crit_edge:           ; preds = %do.body625.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false734.i

land.lhs.true713.i:                               ; preds = %do.body625.i
  %1030 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %funcs.i, align 4
  %tobool717.not.i = icmp eq ptr %1031, null
  br i1 %tobool717.not.i, label %land.lhs.true713.i.cond.false734.i_crit_edge, label %land.lhs.true718.i

land.lhs.true713.i.cond.false734.i_crit_edge:     ; preds = %land.lhs.true713.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false734.i

land.lhs.true718.i:                               ; preds = %land.lhs.true713.i
  %sriov_wreg722.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1031, i32 0, i32 12
  %1032 = ptrtoint ptr %sriov_wreg722.i to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %sriov_wreg722.i, align 4
  %tobool723.not.i = icmp eq ptr %1033, null
  br i1 %tobool723.not.i, label %land.lhs.true718.i.cond.false734.i_crit_edge, label %cond.true724.i

land.lhs.true718.i.cond.false734.i_crit_edge:     ; preds = %land.lhs.true718.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false734.i

cond.true724.i:                                   ; preds = %land.lhs.true718.i
  call void @__sanitizer_cov_trace_pc() #11
  %1034 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx732.i = getelementptr i32, ptr %1035, i32 1
  %1036 = ptrtoint ptr %arrayidx732.i to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load i32, ptr %arrayidx732.i, align 4
  %add733.i = add i32 %1037, 1449
  tail call void %1033(ptr noundef %handle, i32 noundef %add733.i, i32 noundef %or708.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end740.i

cond.false734.i:                                  ; preds = %land.lhs.true718.i.cond.false734.i_crit_edge, %land.lhs.true713.i.cond.false734.i_crit_edge, %do.body625.i.cond.false734.i_crit_edge
  %1038 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx738.i = getelementptr i32, ptr %1039, i32 1
  %1040 = ptrtoint ptr %arrayidx738.i to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load i32, ptr %arrayidx738.i, align 4
  %add739.i = add i32 %1041, 1449
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add739.i, i32 noundef %or708.i, i32 noundef 0) #9
  br label %cond.end740.i

cond.end740.i:                                    ; preds = %cond.false734.i, %cond.true724.i
  %1042 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load i32, ptr %virt, align 8
  %and743.i = and i32 %1043, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and743.i)
  %tobool744.not.i = icmp eq i32 %and743.i, 0
  br i1 %tobool744.not.i, label %cond.end740.i.cond.false766.i_crit_edge, label %land.lhs.true745.i

cond.end740.i.cond.false766.i_crit_edge:          ; preds = %cond.end740.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false766.i

land.lhs.true745.i:                               ; preds = %cond.end740.i
  %1044 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load ptr, ptr %funcs.i, align 4
  %tobool749.not.i = icmp eq ptr %1045, null
  br i1 %tobool749.not.i, label %land.lhs.true745.i.cond.false766.i_crit_edge, label %land.lhs.true750.i

land.lhs.true745.i.cond.false766.i_crit_edge:     ; preds = %land.lhs.true745.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false766.i

land.lhs.true750.i:                               ; preds = %land.lhs.true745.i
  %sriov_wreg754.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1045, i32 0, i32 12
  %1046 = ptrtoint ptr %sriov_wreg754.i to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load ptr, ptr %sriov_wreg754.i, align 4
  %tobool755.not.i = icmp eq ptr %1047, null
  br i1 %tobool755.not.i, label %land.lhs.true750.i.cond.false766.i_crit_edge, label %cond.true756.i

land.lhs.true750.i.cond.false766.i_crit_edge:     ; preds = %land.lhs.true750.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false766.i

cond.true756.i:                                   ; preds = %land.lhs.true750.i
  call void @__sanitizer_cov_trace_pc() #11
  %1048 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx764.i = getelementptr i32, ptr %1049, i32 1
  %1050 = ptrtoint ptr %arrayidx764.i to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load i32, ptr %arrayidx764.i, align 4
  %add765.i = add i32 %1051, 1446
  tail call void %1047(ptr noundef %handle, i32 noundef %add765.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end772.i

cond.false766.i:                                  ; preds = %land.lhs.true750.i.cond.false766.i_crit_edge, %land.lhs.true745.i.cond.false766.i_crit_edge, %cond.end740.i.cond.false766.i_crit_edge
  %1052 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx770.i = getelementptr i32, ptr %1053, i32 1
  %1054 = ptrtoint ptr %arrayidx770.i to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load i32, ptr %arrayidx770.i, align 4
  %add771.i = add i32 %1055, 1446
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add771.i, i32 noundef 0, i32 noundef 0) #9
  br label %cond.end772.i

cond.end772.i:                                    ; preds = %cond.false766.i, %cond.true756.i
  %1056 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load i32, ptr %virt, align 8
  %and775.i = and i32 %1057, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and775.i)
  %tobool776.not.i = icmp eq i32 %and775.i, 0
  br i1 %tobool776.not.i, label %cond.end772.i.cond.false801.i_crit_edge, label %land.lhs.true777.i

cond.end772.i.cond.false801.i_crit_edge:          ; preds = %cond.end772.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false801.i

land.lhs.true777.i:                               ; preds = %cond.end772.i
  %1058 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %funcs.i, align 4
  %tobool781.not.i = icmp eq ptr %1059, null
  br i1 %tobool781.not.i, label %land.lhs.true777.i.cond.false801.i_crit_edge, label %land.lhs.true782.i

land.lhs.true777.i.cond.false801.i_crit_edge:     ; preds = %land.lhs.true777.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false801.i

land.lhs.true782.i:                               ; preds = %land.lhs.true777.i
  %sriov_wreg786.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1059, i32 0, i32 12
  %1060 = ptrtoint ptr %sriov_wreg786.i to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load ptr, ptr %sriov_wreg786.i, align 4
  %tobool787.not.i = icmp eq ptr %1061, null
  br i1 %tobool787.not.i, label %land.lhs.true782.i.cond.false801.i_crit_edge, label %cond.true788.i

land.lhs.true782.i.cond.false801.i_crit_edge:     ; preds = %land.lhs.true782.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false801.i

cond.true788.i:                                   ; preds = %land.lhs.true782.i
  call void @__sanitizer_cov_trace_pc() #11
  %1062 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx796.i = getelementptr i32, ptr %1063, i32 1
  %1064 = ptrtoint ptr %arrayidx796.i to i32
  call void @__asan_load4_noabort(i32 %1064)
  %1065 = load i32, ptr %arrayidx796.i, align 4
  %add797.i = add i32 %1065, 1450
  %gpu_addr.i181 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 4, i32 12
  %1066 = ptrtoint ptr %gpu_addr.i181 to i32
  call void @__asan_load8_noabort(i32 %1066)
  %1067 = load i64, ptr %gpu_addr.i181, align 8
  %sum.shift1944.i = lshr i64 %1067, 34
  %shr8001945.i = trunc i64 %sum.shift1944.i to i32
  tail call void %1061(ptr noundef %handle, i32 noundef %add797.i, i32 noundef %shr8001945.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end812.i

cond.false801.i:                                  ; preds = %land.lhs.true782.i.cond.false801.i_crit_edge, %land.lhs.true777.i.cond.false801.i_crit_edge, %cond.end772.i.cond.false801.i_crit_edge
  %1068 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx805.i = getelementptr i32, ptr %1069, i32 1
  %1070 = ptrtoint ptr %arrayidx805.i to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load i32, ptr %arrayidx805.i, align 4
  %add806.i = add i32 %1071, 1450
  %gpu_addr807.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 4, i32 12
  %1072 = ptrtoint ptr %gpu_addr807.i to i32
  call void @__asan_load8_noabort(i32 %1072)
  %1073 = load i64, ptr %gpu_addr807.i, align 8
  %sum.shift.i = lshr i64 %1073, 34
  %shr8111939.i = trunc i64 %sum.shift.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add806.i, i32 noundef %shr8111939.i, i32 noundef 0) #9
  br label %cond.end812.i

cond.end812.i:                                    ; preds = %cond.false801.i, %cond.true788.i
  %1074 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load i32, ptr %virt, align 8
  %and815.i = and i32 %1075, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and815.i)
  %tobool816.not.i = icmp eq i32 %and815.i, 0
  br i1 %tobool816.not.i, label %cond.end812.i.cond.false841.i_crit_edge, label %land.lhs.true817.i

cond.end812.i.cond.false841.i_crit_edge:          ; preds = %cond.end812.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false841.i

land.lhs.true817.i:                               ; preds = %cond.end812.i
  %1076 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %funcs.i, align 4
  %tobool821.not.i = icmp eq ptr %1077, null
  br i1 %tobool821.not.i, label %land.lhs.true817.i.cond.false841.i_crit_edge, label %land.lhs.true822.i

land.lhs.true817.i.cond.false841.i_crit_edge:     ; preds = %land.lhs.true817.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false841.i

land.lhs.true822.i:                               ; preds = %land.lhs.true817.i
  %sriov_wreg826.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1077, i32 0, i32 12
  %1078 = ptrtoint ptr %sriov_wreg826.i to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load ptr, ptr %sriov_wreg826.i, align 4
  %tobool827.not.i = icmp eq ptr %1079, null
  br i1 %tobool827.not.i, label %land.lhs.true822.i.cond.false841.i_crit_edge, label %cond.true828.i

land.lhs.true822.i.cond.false841.i_crit_edge:     ; preds = %land.lhs.true822.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false841.i

cond.true828.i:                                   ; preds = %land.lhs.true822.i
  call void @__sanitizer_cov_trace_pc() #11
  %1080 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx836.i = getelementptr i32, ptr %1081, i32 1
  %1082 = ptrtoint ptr %arrayidx836.i to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load i32, ptr %arrayidx836.i, align 4
  %add837.i = add i32 %1083, 1129
  %gpu_addr838.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 4, i32 12
  %1084 = ptrtoint ptr %gpu_addr838.i to i32
  call void @__asan_load8_noabort(i32 %1084)
  %1085 = load i64, ptr %gpu_addr838.i, align 8
  %conv840.i = trunc i64 %1085 to i32
  tail call void %1079(ptr noundef %handle, i32 noundef %add837.i, i32 noundef %conv840.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end850.i

cond.false841.i:                                  ; preds = %land.lhs.true822.i.cond.false841.i_crit_edge, %land.lhs.true817.i.cond.false841.i_crit_edge, %cond.end812.i.cond.false841.i_crit_edge
  %1086 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx845.i = getelementptr i32, ptr %1087, i32 1
  %1088 = ptrtoint ptr %arrayidx845.i to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load i32, ptr %arrayidx845.i, align 4
  %add846.i = add i32 %1089, 1129
  %gpu_addr847.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 4, i32 12
  %1090 = ptrtoint ptr %gpu_addr847.i to i32
  call void @__asan_load8_noabort(i32 %1090)
  %1091 = load i64, ptr %gpu_addr847.i, align 8
  %conv849.i = trunc i64 %1091 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add846.i, i32 noundef %conv849.i, i32 noundef 0) #9
  br label %cond.end850.i

cond.end850.i:                                    ; preds = %cond.false841.i, %cond.true828.i
  %1092 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1092)
  %1093 = load i32, ptr %virt, align 8
  %and853.i = and i32 %1093, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and853.i)
  %tobool854.not.i = icmp eq i32 %and853.i, 0
  br i1 %tobool854.not.i, label %cond.end850.i.cond.false880.i_crit_edge, label %land.lhs.true855.i

cond.end850.i.cond.false880.i_crit_edge:          ; preds = %cond.end850.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false880.i

land.lhs.true855.i:                               ; preds = %cond.end850.i
  %1094 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load ptr, ptr %funcs.i, align 4
  %tobool859.not.i = icmp eq ptr %1095, null
  br i1 %tobool859.not.i, label %land.lhs.true855.i.cond.false880.i_crit_edge, label %land.lhs.true860.i

land.lhs.true855.i.cond.false880.i_crit_edge:     ; preds = %land.lhs.true855.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false880.i

land.lhs.true860.i:                               ; preds = %land.lhs.true855.i
  %sriov_wreg864.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1095, i32 0, i32 12
  %1096 = ptrtoint ptr %sriov_wreg864.i to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load ptr, ptr %sriov_wreg864.i, align 4
  %tobool865.not.i = icmp eq ptr %1097, null
  br i1 %tobool865.not.i, label %land.lhs.true860.i.cond.false880.i_crit_edge, label %cond.true866.i

land.lhs.true860.i.cond.false880.i_crit_edge:     ; preds = %land.lhs.true860.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false880.i

cond.true866.i:                                   ; preds = %land.lhs.true860.i
  call void @__sanitizer_cov_trace_pc() #11
  %1098 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1098)
  %1099 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx874.i = getelementptr i32, ptr %1099, i32 1
  %1100 = ptrtoint ptr %arrayidx874.i to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load i32, ptr %arrayidx874.i, align 4
  %add875.i = add i32 %1101, 1128
  %gpu_addr876.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 4, i32 12
  %1102 = ptrtoint ptr %gpu_addr876.i to i32
  call void @__asan_load8_noabort(i32 %1102)
  %1103 = load i64, ptr %gpu_addr876.i, align 8
  %shr877.i = lshr i64 %1103, 32
  %conv879.i = trunc i64 %shr877.i to i32
  tail call void %1097(ptr noundef %handle, i32 noundef %add875.i, i32 noundef %conv879.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end890.i

cond.false880.i:                                  ; preds = %land.lhs.true860.i.cond.false880.i_crit_edge, %land.lhs.true855.i.cond.false880.i_crit_edge, %cond.end850.i.cond.false880.i_crit_edge
  %1104 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx884.i = getelementptr i32, ptr %1105, i32 1
  %1106 = ptrtoint ptr %arrayidx884.i to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load i32, ptr %arrayidx884.i, align 4
  %add885.i = add i32 %1107, 1128
  %gpu_addr886.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 4, i32 12
  %1108 = ptrtoint ptr %gpu_addr886.i to i32
  call void @__asan_load8_noabort(i32 %1108)
  %1109 = load i64, ptr %gpu_addr886.i, align 8
  %shr887.i = lshr i64 %1109, 32
  %conv889.i = trunc i64 %shr887.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add885.i, i32 noundef %conv889.i, i32 noundef 0) #9
  br label %cond.end890.i

cond.end890.i:                                    ; preds = %cond.false880.i, %cond.true866.i
  %1110 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1110)
  %1111 = load i32, ptr %virt, align 8
  %and893.i = and i32 %1111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and893.i)
  %tobool894.not.i = icmp eq i32 %and893.i, 0
  br i1 %tobool894.not.i, label %cond.end890.i.cond.false916.i_crit_edge, label %land.lhs.true895.i

cond.end890.i.cond.false916.i_crit_edge:          ; preds = %cond.end890.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false916.i

land.lhs.true895.i:                               ; preds = %cond.end890.i
  %1112 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load ptr, ptr %funcs.i, align 4
  %tobool899.not.i = icmp eq ptr %1113, null
  br i1 %tobool899.not.i, label %land.lhs.true895.i.cond.false916.i_crit_edge, label %land.lhs.true900.i

land.lhs.true895.i.cond.false916.i_crit_edge:     ; preds = %land.lhs.true895.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false916.i

land.lhs.true900.i:                               ; preds = %land.lhs.true895.i
  %sriov_wreg904.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1113, i32 0, i32 12
  %1114 = ptrtoint ptr %sriov_wreg904.i to i32
  call void @__asan_load4_noabort(i32 %1114)
  %1115 = load ptr, ptr %sriov_wreg904.i, align 4
  %tobool905.not.i = icmp eq ptr %1115, null
  br i1 %tobool905.not.i, label %land.lhs.true900.i.cond.false916.i_crit_edge, label %cond.true906.i

land.lhs.true900.i.cond.false916.i_crit_edge:     ; preds = %land.lhs.true900.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false916.i

cond.true906.i:                                   ; preds = %land.lhs.true900.i
  call void @__sanitizer_cov_trace_pc() #11
  %1116 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx914.i = getelementptr i32, ptr %1117, i32 1
  %1118 = ptrtoint ptr %arrayidx914.i to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load i32, ptr %arrayidx914.i, align 4
  %add915.i = add i32 %1119, 1444
  tail call void %1115(ptr noundef %handle, i32 noundef %add915.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end922.i

cond.false916.i:                                  ; preds = %land.lhs.true900.i.cond.false916.i_crit_edge, %land.lhs.true895.i.cond.false916.i_crit_edge, %cond.end890.i.cond.false916.i_crit_edge
  %1120 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx920.i = getelementptr i32, ptr %1121, i32 1
  %1122 = ptrtoint ptr %arrayidx920.i to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load i32, ptr %arrayidx920.i, align 4
  %add921.i = add i32 %1123, 1444
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add921.i, i32 noundef 0, i32 noundef 0) #9
  br label %cond.end922.i

cond.end922.i:                                    ; preds = %cond.false916.i, %cond.true906.i
  %1124 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load i32, ptr %virt, align 8
  %and925.i = and i32 %1125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and925.i)
  %tobool926.not.i = icmp eq i32 %and925.i, 0
  br i1 %tobool926.not.i, label %cond.end922.i.cond.false949.i_crit_edge, label %land.lhs.true927.i

cond.end922.i.cond.false949.i_crit_edge:          ; preds = %cond.end922.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false949.i

land.lhs.true927.i:                               ; preds = %cond.end922.i
  %1126 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load ptr, ptr %funcs.i, align 4
  %tobool931.not.i = icmp eq ptr %1127, null
  br i1 %tobool931.not.i, label %land.lhs.true927.i.cond.false949.i_crit_edge, label %land.lhs.true932.i

land.lhs.true927.i.cond.false949.i_crit_edge:     ; preds = %land.lhs.true927.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false949.i

land.lhs.true932.i:                               ; preds = %land.lhs.true927.i
  %sriov_rreg936.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1127, i32 0, i32 13
  %1128 = ptrtoint ptr %sriov_rreg936.i to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load ptr, ptr %sriov_rreg936.i, align 4
  %tobool937.not.i = icmp eq ptr %1129, null
  br i1 %tobool937.not.i, label %land.lhs.true932.i.cond.false949.i_crit_edge, label %cond.true938.i

land.lhs.true932.i.cond.false949.i_crit_edge:     ; preds = %land.lhs.true932.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false949.i

cond.true938.i:                                   ; preds = %land.lhs.true932.i
  call void @__sanitizer_cov_trace_pc() #11
  %1130 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1130)
  %1131 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx946.i = getelementptr i32, ptr %1131, i32 1
  %1132 = ptrtoint ptr %arrayidx946.i to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load i32, ptr %arrayidx946.i, align 4
  %add947.i = add i32 %1133, 1444
  %call948.i = tail call i32 %1129(ptr noundef %handle, i32 noundef %add947.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end956.i

cond.false949.i:                                  ; preds = %land.lhs.true932.i.cond.false949.i_crit_edge, %land.lhs.true927.i.cond.false949.i_crit_edge, %cond.end922.i.cond.false949.i_crit_edge
  %1134 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx953.i = getelementptr i32, ptr %1135, i32 1
  %1136 = ptrtoint ptr %arrayidx953.i to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load i32, ptr %arrayidx953.i, align 4
  %add954.i = add i32 %1137, 1444
  %call955.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add954.i, i32 noundef 0) #9
  br label %cond.end956.i

cond.end956.i:                                    ; preds = %cond.false949.i, %cond.true938.i
  %cond957.i = phi i32 [ %call948.i, %cond.true938.i ], [ %call955.i, %cond.false949.i ]
  %conv958.i = zext i32 %cond957.i to i64
  %wptr.i182 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 4, i32 7
  %1138 = ptrtoint ptr %wptr.i182 to i32
  call void @__asan_store8_noabort(i32 %1138)
  store i64 %conv958.i, ptr %wptr.i182, align 8
  %1139 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1139)
  %1140 = load i32, ptr %virt, align 8
  %and961.i = and i32 %1140, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and961.i)
  %tobool962.not.i = icmp eq i32 %and961.i, 0
  br i1 %tobool962.not.i, label %cond.end956.i.cond.false987.i_crit_edge, label %land.lhs.true963.i

cond.end956.i.cond.false987.i_crit_edge:          ; preds = %cond.end956.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false987.i

land.lhs.true963.i:                               ; preds = %cond.end956.i
  %1141 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1141)
  %1142 = load ptr, ptr %funcs.i, align 4
  %tobool967.not.i = icmp eq ptr %1142, null
  br i1 %tobool967.not.i, label %land.lhs.true963.i.cond.false987.i_crit_edge, label %land.lhs.true968.i

land.lhs.true963.i.cond.false987.i_crit_edge:     ; preds = %land.lhs.true963.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false987.i

land.lhs.true968.i:                               ; preds = %land.lhs.true963.i
  %sriov_wreg972.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1142, i32 0, i32 12
  %1143 = ptrtoint ptr %sriov_wreg972.i to i32
  call void @__asan_load4_noabort(i32 %1143)
  %1144 = load ptr, ptr %sriov_wreg972.i, align 4
  %tobool973.not.i = icmp eq ptr %1144, null
  br i1 %tobool973.not.i, label %land.lhs.true968.i.cond.false987.i_crit_edge, label %cond.true974.i

land.lhs.true968.i.cond.false987.i_crit_edge:     ; preds = %land.lhs.true968.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false987.i

cond.true974.i:                                   ; preds = %land.lhs.true968.i
  call void @__sanitizer_cov_trace_pc() #11
  %1145 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1145)
  %1146 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx982.i = getelementptr i32, ptr %1146, i32 1
  %1147 = ptrtoint ptr %arrayidx982.i to i32
  call void @__asan_load4_noabort(i32 %1147)
  %1148 = load i32, ptr %arrayidx982.i, align 4
  %add983.i = add i32 %1148, 1445
  tail call void %1144(ptr noundef %handle, i32 noundef %add983.i, i32 noundef %cond957.i, i32 noundef 0, i32 noundef 16) #9
  br label %do.body997.i

cond.false987.i:                                  ; preds = %land.lhs.true968.i.cond.false987.i_crit_edge, %land.lhs.true963.i.cond.false987.i_crit_edge, %cond.end956.i.cond.false987.i_crit_edge
  %1149 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1149)
  %1150 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx991.i = getelementptr i32, ptr %1150, i32 1
  %1151 = ptrtoint ptr %arrayidx991.i to i32
  call void @__asan_load4_noabort(i32 %1151)
  %1152 = load i32, ptr %arrayidx991.i, align 4
  %add992.i = add i32 %1152, 1445
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add992.i, i32 noundef %cond957.i, i32 noundef 0) #9
  br label %do.body997.i

do.body997.i:                                     ; preds = %cond.false987.i, %cond.true974.i
  %1153 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1153)
  %1154 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1002.i = getelementptr i32, ptr %1154, i32 1
  %1155 = ptrtoint ptr %arrayidx1002.i to i32
  call void @__asan_load4_noabort(i32 %1155)
  %1156 = load i32, ptr %arrayidx1002.i, align 4
  %add1003.i = add i32 %1156, 1449
  %call1004.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add1003.i, i32 noundef 0) #9
  %and1005.i = and i32 %call1004.i, -65537
  %1157 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1010.i = getelementptr i32, ptr %1158, i32 1
  %1159 = ptrtoint ptr %arrayidx1010.i to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load i32, ptr %arrayidx1010.i, align 4
  %add1011.i = add i32 %1160, 1449
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1011.i, i32 noundef %and1005.i, i32 noundef 0) #9
  %ring_enc.i183 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 5
  %1161 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1161)
  %1162 = load i32, ptr %virt, align 8
  %and1020.i = and i32 %1162, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1020.i)
  %tobool1021.not.i = icmp eq i32 %and1020.i, 0
  br i1 %tobool1021.not.i, label %do.body997.i.cond.false1046.i_crit_edge, label %land.lhs.true1022.i

do.body997.i.cond.false1046.i_crit_edge:          ; preds = %do.body997.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1046.i

land.lhs.true1022.i:                              ; preds = %do.body997.i
  %1163 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1163)
  %1164 = load ptr, ptr %funcs.i, align 4
  %tobool1026.not.i = icmp eq ptr %1164, null
  br i1 %tobool1026.not.i, label %land.lhs.true1022.i.cond.false1046.i_crit_edge, label %land.lhs.true1027.i

land.lhs.true1022.i.cond.false1046.i_crit_edge:   ; preds = %land.lhs.true1022.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1046.i

land.lhs.true1027.i:                              ; preds = %land.lhs.true1022.i
  %sriov_wreg1031.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1164, i32 0, i32 12
  %1165 = ptrtoint ptr %sriov_wreg1031.i to i32
  call void @__asan_load4_noabort(i32 %1165)
  %1166 = load ptr, ptr %sriov_wreg1031.i, align 4
  %tobool1032.not.i = icmp eq ptr %1166, null
  br i1 %tobool1032.not.i, label %land.lhs.true1027.i.cond.false1046.i_crit_edge, label %cond.true1033.i

land.lhs.true1027.i.cond.false1046.i_crit_edge:   ; preds = %land.lhs.true1027.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1046.i

cond.true1033.i:                                  ; preds = %land.lhs.true1027.i
  call void @__sanitizer_cov_trace_pc() #11
  %1167 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1167)
  %1168 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1041.i = getelementptr i32, ptr %1168, i32 1
  %1169 = ptrtoint ptr %arrayidx1041.i to i32
  call void @__asan_load4_noabort(i32 %1169)
  %1170 = load i32, ptr %arrayidx1041.i, align 4
  %add1042.i = add i32 %1170, 1065
  %wptr1043.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i183, i32 0, i32 7
  %1171 = ptrtoint ptr %wptr1043.i to i32
  call void @__asan_load8_noabort(i32 %1171)
  %1172 = load i64, ptr %wptr1043.i, align 8
  %conv1045.i = trunc i64 %1172 to i32
  tail call void %1166(ptr noundef %handle, i32 noundef %add1042.i, i32 noundef %conv1045.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end1055.i

cond.false1046.i:                                 ; preds = %land.lhs.true1027.i.cond.false1046.i_crit_edge, %land.lhs.true1022.i.cond.false1046.i_crit_edge, %do.body997.i.cond.false1046.i_crit_edge
  %1173 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1173)
  %1174 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1050.i = getelementptr i32, ptr %1174, i32 1
  %1175 = ptrtoint ptr %arrayidx1050.i to i32
  call void @__asan_load4_noabort(i32 %1175)
  %1176 = load i32, ptr %arrayidx1050.i, align 4
  %add1051.i = add i32 %1176, 1065
  %wptr1052.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i183, i32 0, i32 7
  %1177 = ptrtoint ptr %wptr1052.i to i32
  call void @__asan_load8_noabort(i32 %1177)
  %1178 = load i64, ptr %wptr1052.i, align 8
  %conv1054.i = trunc i64 %1178 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1051.i, i32 noundef %conv1054.i, i32 noundef 0) #9
  br label %cond.end1055.i

cond.end1055.i:                                   ; preds = %cond.false1046.i, %cond.true1033.i
  %1179 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1179)
  %1180 = load i32, ptr %virt, align 8
  %and1058.i = and i32 %1180, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1058.i)
  %tobool1059.not.i = icmp eq i32 %and1058.i, 0
  br i1 %tobool1059.not.i, label %cond.end1055.i.cond.false1084.i_crit_edge, label %land.lhs.true1060.i

cond.end1055.i.cond.false1084.i_crit_edge:        ; preds = %cond.end1055.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1084.i

land.lhs.true1060.i:                              ; preds = %cond.end1055.i
  %1181 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1181)
  %1182 = load ptr, ptr %funcs.i, align 4
  %tobool1064.not.i = icmp eq ptr %1182, null
  br i1 %tobool1064.not.i, label %land.lhs.true1060.i.cond.false1084.i_crit_edge, label %land.lhs.true1065.i

land.lhs.true1060.i.cond.false1084.i_crit_edge:   ; preds = %land.lhs.true1060.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1084.i

land.lhs.true1065.i:                              ; preds = %land.lhs.true1060.i
  %sriov_wreg1069.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1182, i32 0, i32 12
  %1183 = ptrtoint ptr %sriov_wreg1069.i to i32
  call void @__asan_load4_noabort(i32 %1183)
  %1184 = load ptr, ptr %sriov_wreg1069.i, align 4
  %tobool1070.not.i = icmp eq ptr %1184, null
  br i1 %tobool1070.not.i, label %land.lhs.true1065.i.cond.false1084.i_crit_edge, label %cond.true1071.i

land.lhs.true1065.i.cond.false1084.i_crit_edge:   ; preds = %land.lhs.true1065.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1084.i

cond.true1071.i:                                  ; preds = %land.lhs.true1065.i
  call void @__sanitizer_cov_trace_pc() #11
  %1185 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1185)
  %1186 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1079.i = getelementptr i32, ptr %1186, i32 1
  %1187 = ptrtoint ptr %arrayidx1079.i to i32
  call void @__asan_load4_noabort(i32 %1187)
  %1188 = load i32, ptr %arrayidx1079.i, align 4
  %add1080.i = add i32 %1188, 1066
  %wptr1081.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i183, i32 0, i32 7
  %1189 = ptrtoint ptr %wptr1081.i to i32
  call void @__asan_load8_noabort(i32 %1189)
  %1190 = load i64, ptr %wptr1081.i, align 8
  %conv1083.i = trunc i64 %1190 to i32
  tail call void %1184(ptr noundef %handle, i32 noundef %add1080.i, i32 noundef %conv1083.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end1093.i

cond.false1084.i:                                 ; preds = %land.lhs.true1065.i.cond.false1084.i_crit_edge, %land.lhs.true1060.i.cond.false1084.i_crit_edge, %cond.end1055.i.cond.false1084.i_crit_edge
  %1191 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1191)
  %1192 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1088.i = getelementptr i32, ptr %1192, i32 1
  %1193 = ptrtoint ptr %arrayidx1088.i to i32
  call void @__asan_load4_noabort(i32 %1193)
  %1194 = load i32, ptr %arrayidx1088.i, align 4
  %add1089.i = add i32 %1194, 1066
  %wptr1090.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i183, i32 0, i32 7
  %1195 = ptrtoint ptr %wptr1090.i to i32
  call void @__asan_load8_noabort(i32 %1195)
  %1196 = load i64, ptr %wptr1090.i, align 8
  %conv1092.i = trunc i64 %1196 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1089.i, i32 noundef %conv1092.i, i32 noundef 0) #9
  br label %cond.end1093.i

cond.end1093.i:                                   ; preds = %cond.false1084.i, %cond.true1071.i
  %1197 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1197)
  %1198 = load i32, ptr %virt, align 8
  %and1096.i = and i32 %1198, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1096.i)
  %tobool1097.not.i = icmp eq i32 %and1096.i, 0
  br i1 %tobool1097.not.i, label %cond.end1093.i.cond.false1121.i_crit_edge, label %land.lhs.true1098.i

cond.end1093.i.cond.false1121.i_crit_edge:        ; preds = %cond.end1093.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1121.i

land.lhs.true1098.i:                              ; preds = %cond.end1093.i
  %1199 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1199)
  %1200 = load ptr, ptr %funcs.i, align 4
  %tobool1102.not.i = icmp eq ptr %1200, null
  br i1 %tobool1102.not.i, label %land.lhs.true1098.i.cond.false1121.i_crit_edge, label %land.lhs.true1103.i

land.lhs.true1098.i.cond.false1121.i_crit_edge:   ; preds = %land.lhs.true1098.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1121.i

land.lhs.true1103.i:                              ; preds = %land.lhs.true1098.i
  %sriov_wreg1107.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1200, i32 0, i32 12
  %1201 = ptrtoint ptr %sriov_wreg1107.i to i32
  call void @__asan_load4_noabort(i32 %1201)
  %1202 = load ptr, ptr %sriov_wreg1107.i, align 4
  %tobool1108.not.i = icmp eq ptr %1202, null
  br i1 %tobool1108.not.i, label %land.lhs.true1103.i.cond.false1121.i_crit_edge, label %cond.true1109.i

land.lhs.true1103.i.cond.false1121.i_crit_edge:   ; preds = %land.lhs.true1103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1121.i

cond.true1109.i:                                  ; preds = %land.lhs.true1103.i
  call void @__sanitizer_cov_trace_pc() #11
  %1203 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1203)
  %1204 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1117.i = getelementptr i32, ptr %1204, i32 1
  %1205 = ptrtoint ptr %arrayidx1117.i to i32
  call void @__asan_load4_noabort(i32 %1205)
  %1206 = load i32, ptr %arrayidx1117.i, align 4
  %add1118.i = add i32 %1206, 1062
  %gpu_addr1119.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i183, i32 0, i32 12
  %1207 = ptrtoint ptr %gpu_addr1119.i to i32
  call void @__asan_load8_noabort(i32 %1207)
  %1208 = load i64, ptr %gpu_addr1119.i, align 8
  %conv1120.i = trunc i64 %1208 to i32
  tail call void %1202(ptr noundef %handle, i32 noundef %add1118.i, i32 noundef %conv1120.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end1129.i

cond.false1121.i:                                 ; preds = %land.lhs.true1103.i.cond.false1121.i_crit_edge, %land.lhs.true1098.i.cond.false1121.i_crit_edge, %cond.end1093.i.cond.false1121.i_crit_edge
  %1209 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1209)
  %1210 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1125.i = getelementptr i32, ptr %1210, i32 1
  %1211 = ptrtoint ptr %arrayidx1125.i to i32
  call void @__asan_load4_noabort(i32 %1211)
  %1212 = load i32, ptr %arrayidx1125.i, align 4
  %add1126.i = add i32 %1212, 1062
  %gpu_addr1127.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i183, i32 0, i32 12
  %1213 = ptrtoint ptr %gpu_addr1127.i to i32
  call void @__asan_load8_noabort(i32 %1213)
  %1214 = load i64, ptr %gpu_addr1127.i, align 8
  %conv1128.i = trunc i64 %1214 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1126.i, i32 noundef %conv1128.i, i32 noundef 0) #9
  br label %cond.end1129.i

cond.end1129.i:                                   ; preds = %cond.false1121.i, %cond.true1109.i
  %1215 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1215)
  %1216 = load i32, ptr %virt, align 8
  %and1132.i = and i32 %1216, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1132.i)
  %tobool1133.not.i = icmp eq i32 %and1132.i, 0
  br i1 %tobool1133.not.i, label %cond.end1129.i.cond.false1159.i_crit_edge, label %land.lhs.true1134.i

cond.end1129.i.cond.false1159.i_crit_edge:        ; preds = %cond.end1129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1159.i

land.lhs.true1134.i:                              ; preds = %cond.end1129.i
  %1217 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1217)
  %1218 = load ptr, ptr %funcs.i, align 4
  %tobool1138.not.i = icmp eq ptr %1218, null
  br i1 %tobool1138.not.i, label %land.lhs.true1134.i.cond.false1159.i_crit_edge, label %land.lhs.true1139.i

land.lhs.true1134.i.cond.false1159.i_crit_edge:   ; preds = %land.lhs.true1134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1159.i

land.lhs.true1139.i:                              ; preds = %land.lhs.true1134.i
  %sriov_wreg1143.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1218, i32 0, i32 12
  %1219 = ptrtoint ptr %sriov_wreg1143.i to i32
  call void @__asan_load4_noabort(i32 %1219)
  %1220 = load ptr, ptr %sriov_wreg1143.i, align 4
  %tobool1144.not.i = icmp eq ptr %1220, null
  br i1 %tobool1144.not.i, label %land.lhs.true1139.i.cond.false1159.i_crit_edge, label %cond.true1145.i

land.lhs.true1139.i.cond.false1159.i_crit_edge:   ; preds = %land.lhs.true1139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1159.i

cond.true1145.i:                                  ; preds = %land.lhs.true1139.i
  call void @__sanitizer_cov_trace_pc() #11
  %1221 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1221)
  %1222 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1153.i = getelementptr i32, ptr %1222, i32 1
  %1223 = ptrtoint ptr %arrayidx1153.i to i32
  call void @__asan_load4_noabort(i32 %1223)
  %1224 = load i32, ptr %arrayidx1153.i, align 4
  %add1154.i = add i32 %1224, 1063
  %gpu_addr1155.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i183, i32 0, i32 12
  %1225 = ptrtoint ptr %gpu_addr1155.i to i32
  call void @__asan_load8_noabort(i32 %1225)
  %1226 = load i64, ptr %gpu_addr1155.i, align 8
  %shr1156.i = lshr i64 %1226, 32
  %conv1158.i = trunc i64 %shr1156.i to i32
  tail call void %1220(ptr noundef %handle, i32 noundef %add1154.i, i32 noundef %conv1158.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end1169.i

cond.false1159.i:                                 ; preds = %land.lhs.true1139.i.cond.false1159.i_crit_edge, %land.lhs.true1134.i.cond.false1159.i_crit_edge, %cond.end1129.i.cond.false1159.i_crit_edge
  %1227 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1227)
  %1228 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1163.i = getelementptr i32, ptr %1228, i32 1
  %1229 = ptrtoint ptr %arrayidx1163.i to i32
  call void @__asan_load4_noabort(i32 %1229)
  %1230 = load i32, ptr %arrayidx1163.i, align 4
  %add1164.i = add i32 %1230, 1063
  %gpu_addr1165.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i183, i32 0, i32 12
  %1231 = ptrtoint ptr %gpu_addr1165.i to i32
  call void @__asan_load8_noabort(i32 %1231)
  %1232 = load i64, ptr %gpu_addr1165.i, align 8
  %shr1166.i = lshr i64 %1232, 32
  %conv1168.i = trunc i64 %shr1166.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1164.i, i32 noundef %conv1168.i, i32 noundef 0) #9
  br label %cond.end1169.i

cond.end1169.i:                                   ; preds = %cond.false1159.i, %cond.true1145.i
  %1233 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1233)
  %1234 = load i32, ptr %virt, align 8
  %and1172.i = and i32 %1234, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1172.i)
  %tobool1173.not.i = icmp eq i32 %and1172.i, 0
  br i1 %tobool1173.not.i, label %cond.end1169.i.cond.false1196.i_crit_edge, label %land.lhs.true1174.i

cond.end1169.i.cond.false1196.i_crit_edge:        ; preds = %cond.end1169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1196.i

land.lhs.true1174.i:                              ; preds = %cond.end1169.i
  %1235 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1235)
  %1236 = load ptr, ptr %funcs.i, align 4
  %tobool1178.not.i = icmp eq ptr %1236, null
  br i1 %tobool1178.not.i, label %land.lhs.true1174.i.cond.false1196.i_crit_edge, label %land.lhs.true1179.i

land.lhs.true1174.i.cond.false1196.i_crit_edge:   ; preds = %land.lhs.true1174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1196.i

land.lhs.true1179.i:                              ; preds = %land.lhs.true1174.i
  %sriov_wreg1183.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1236, i32 0, i32 12
  %1237 = ptrtoint ptr %sriov_wreg1183.i to i32
  call void @__asan_load4_noabort(i32 %1237)
  %1238 = load ptr, ptr %sriov_wreg1183.i, align 4
  %tobool1184.not.i = icmp eq ptr %1238, null
  br i1 %tobool1184.not.i, label %land.lhs.true1179.i.cond.false1196.i_crit_edge, label %cond.true1185.i

land.lhs.true1179.i.cond.false1196.i_crit_edge:   ; preds = %land.lhs.true1179.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1196.i

cond.true1185.i:                                  ; preds = %land.lhs.true1179.i
  call void @__sanitizer_cov_trace_pc() #11
  %1239 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1239)
  %1240 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1193.i = getelementptr i32, ptr %1240, i32 1
  %1241 = ptrtoint ptr %arrayidx1193.i to i32
  call void @__asan_load4_noabort(i32 %1241)
  %1242 = load i32, ptr %arrayidx1193.i, align 4
  %add1194.i = add i32 %1242, 1064
  %ring_size1195.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i183, i32 0, i32 9
  %1243 = ptrtoint ptr %ring_size1195.i to i32
  call void @__asan_load4_noabort(i32 %1243)
  %1244 = load i32, ptr %ring_size1195.i, align 8
  %div1943.i = lshr i32 %1244, 2
  tail call void %1238(ptr noundef %handle, i32 noundef %add1194.i, i32 noundef %div1943.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end1204.i

cond.false1196.i:                                 ; preds = %land.lhs.true1179.i.cond.false1196.i_crit_edge, %land.lhs.true1174.i.cond.false1196.i_crit_edge, %cond.end1169.i.cond.false1196.i_crit_edge
  %1245 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1245)
  %1246 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1200.i = getelementptr i32, ptr %1246, i32 1
  %1247 = ptrtoint ptr %arrayidx1200.i to i32
  call void @__asan_load4_noabort(i32 %1247)
  %1248 = load i32, ptr %arrayidx1200.i, align 4
  %add1201.i = add i32 %1248, 1064
  %ring_size1202.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring_enc.i183, i32 0, i32 9
  %1249 = ptrtoint ptr %ring_size1202.i to i32
  call void @__asan_load4_noabort(i32 %1249)
  %1250 = load i32, ptr %ring_size1202.i, align 8
  %div12031940.i = lshr i32 %1250, 2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1201.i, i32 noundef %div12031940.i, i32 noundef 0) #9
  br label %cond.end1204.i

cond.end1204.i:                                   ; preds = %cond.false1196.i, %cond.true1185.i
  %1251 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1251)
  %1252 = load i32, ptr %virt, align 8
  %and1212.i = and i32 %1252, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1212.i)
  %tobool1213.not.i = icmp eq i32 %and1212.i, 0
  br i1 %tobool1213.not.i, label %cond.end1204.i.cond.false1238.i_crit_edge, label %land.lhs.true1214.i

cond.end1204.i.cond.false1238.i_crit_edge:        ; preds = %cond.end1204.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1238.i

land.lhs.true1214.i:                              ; preds = %cond.end1204.i
  %1253 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1253)
  %1254 = load ptr, ptr %funcs.i, align 4
  %tobool1218.not.i = icmp eq ptr %1254, null
  br i1 %tobool1218.not.i, label %land.lhs.true1214.i.cond.false1238.i_crit_edge, label %land.lhs.true1219.i

land.lhs.true1214.i.cond.false1238.i_crit_edge:   ; preds = %land.lhs.true1214.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1238.i

land.lhs.true1219.i:                              ; preds = %land.lhs.true1214.i
  %sriov_wreg1223.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1254, i32 0, i32 12
  %1255 = ptrtoint ptr %sriov_wreg1223.i to i32
  call void @__asan_load4_noabort(i32 %1255)
  %1256 = load ptr, ptr %sriov_wreg1223.i, align 4
  %tobool1224.not.i = icmp eq ptr %1256, null
  br i1 %tobool1224.not.i, label %land.lhs.true1219.i.cond.false1238.i_crit_edge, label %cond.true1225.i

land.lhs.true1219.i.cond.false1238.i_crit_edge:   ; preds = %land.lhs.true1219.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1238.i

cond.true1225.i:                                  ; preds = %land.lhs.true1219.i
  call void @__sanitizer_cov_trace_pc() #11
  %1257 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1257)
  %1258 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1233.i = getelementptr i32, ptr %1258, i32 1
  %1259 = ptrtoint ptr %arrayidx1233.i to i32
  call void @__asan_load4_noabort(i32 %1259)
  %1260 = load i32, ptr %arrayidx1233.i, align 4
  %add1234.i = add i32 %1260, 1060
  %wptr1235.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 5, i32 1, i32 7
  %1261 = ptrtoint ptr %wptr1235.i to i32
  call void @__asan_load8_noabort(i32 %1261)
  %1262 = load i64, ptr %wptr1235.i, align 8
  %conv1237.i = trunc i64 %1262 to i32
  tail call void %1256(ptr noundef %handle, i32 noundef %add1234.i, i32 noundef %conv1237.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end1247.i

cond.false1238.i:                                 ; preds = %land.lhs.true1219.i.cond.false1238.i_crit_edge, %land.lhs.true1214.i.cond.false1238.i_crit_edge, %cond.end1204.i.cond.false1238.i_crit_edge
  %1263 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1263)
  %1264 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1242.i = getelementptr i32, ptr %1264, i32 1
  %1265 = ptrtoint ptr %arrayidx1242.i to i32
  call void @__asan_load4_noabort(i32 %1265)
  %1266 = load i32, ptr %arrayidx1242.i, align 4
  %add1243.i = add i32 %1266, 1060
  %wptr1244.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 5, i32 1, i32 7
  %1267 = ptrtoint ptr %wptr1244.i to i32
  call void @__asan_load8_noabort(i32 %1267)
  %1268 = load i64, ptr %wptr1244.i, align 8
  %conv1246.i = trunc i64 %1268 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1243.i, i32 noundef %conv1246.i, i32 noundef 0) #9
  br label %cond.end1247.i

cond.end1247.i:                                   ; preds = %cond.false1238.i, %cond.true1225.i
  %1269 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1269)
  %1270 = load i32, ptr %virt, align 8
  %and1250.i = and i32 %1270, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1250.i)
  %tobool1251.not.i = icmp eq i32 %and1250.i, 0
  br i1 %tobool1251.not.i, label %cond.end1247.i.cond.false1276.i_crit_edge, label %land.lhs.true1252.i

cond.end1247.i.cond.false1276.i_crit_edge:        ; preds = %cond.end1247.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1276.i

land.lhs.true1252.i:                              ; preds = %cond.end1247.i
  %1271 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1271)
  %1272 = load ptr, ptr %funcs.i, align 4
  %tobool1256.not.i = icmp eq ptr %1272, null
  br i1 %tobool1256.not.i, label %land.lhs.true1252.i.cond.false1276.i_crit_edge, label %land.lhs.true1257.i

land.lhs.true1252.i.cond.false1276.i_crit_edge:   ; preds = %land.lhs.true1252.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1276.i

land.lhs.true1257.i:                              ; preds = %land.lhs.true1252.i
  %sriov_wreg1261.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1272, i32 0, i32 12
  %1273 = ptrtoint ptr %sriov_wreg1261.i to i32
  call void @__asan_load4_noabort(i32 %1273)
  %1274 = load ptr, ptr %sriov_wreg1261.i, align 4
  %tobool1262.not.i = icmp eq ptr %1274, null
  br i1 %tobool1262.not.i, label %land.lhs.true1257.i.cond.false1276.i_crit_edge, label %cond.true1263.i

land.lhs.true1257.i.cond.false1276.i_crit_edge:   ; preds = %land.lhs.true1257.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1276.i

cond.true1263.i:                                  ; preds = %land.lhs.true1257.i
  call void @__sanitizer_cov_trace_pc() #11
  %1275 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1275)
  %1276 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1271.i = getelementptr i32, ptr %1276, i32 1
  %1277 = ptrtoint ptr %arrayidx1271.i to i32
  call void @__asan_load4_noabort(i32 %1277)
  %1278 = load i32, ptr %arrayidx1271.i, align 4
  %add1272.i = add i32 %1278, 1061
  %wptr1273.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 5, i32 1, i32 7
  %1279 = ptrtoint ptr %wptr1273.i to i32
  call void @__asan_load8_noabort(i32 %1279)
  %1280 = load i64, ptr %wptr1273.i, align 8
  %conv1275.i = trunc i64 %1280 to i32
  tail call void %1274(ptr noundef %handle, i32 noundef %add1272.i, i32 noundef %conv1275.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end1285.i

cond.false1276.i:                                 ; preds = %land.lhs.true1257.i.cond.false1276.i_crit_edge, %land.lhs.true1252.i.cond.false1276.i_crit_edge, %cond.end1247.i.cond.false1276.i_crit_edge
  %1281 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1281)
  %1282 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1280.i = getelementptr i32, ptr %1282, i32 1
  %1283 = ptrtoint ptr %arrayidx1280.i to i32
  call void @__asan_load4_noabort(i32 %1283)
  %1284 = load i32, ptr %arrayidx1280.i, align 4
  %add1281.i = add i32 %1284, 1061
  %wptr1282.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 5, i32 1, i32 7
  %1285 = ptrtoint ptr %wptr1282.i to i32
  call void @__asan_load8_noabort(i32 %1285)
  %1286 = load i64, ptr %wptr1282.i, align 8
  %conv1284.i = trunc i64 %1286 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1281.i, i32 noundef %conv1284.i, i32 noundef 0) #9
  br label %cond.end1285.i

cond.end1285.i:                                   ; preds = %cond.false1276.i, %cond.true1263.i
  %1287 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1287)
  %1288 = load i32, ptr %virt, align 8
  %and1288.i = and i32 %1288, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1288.i)
  %tobool1289.not.i = icmp eq i32 %and1288.i, 0
  br i1 %tobool1289.not.i, label %cond.end1285.i.cond.false1313.i_crit_edge, label %land.lhs.true1290.i

cond.end1285.i.cond.false1313.i_crit_edge:        ; preds = %cond.end1285.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1313.i

land.lhs.true1290.i:                              ; preds = %cond.end1285.i
  %1289 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1289)
  %1290 = load ptr, ptr %funcs.i, align 4
  %tobool1294.not.i = icmp eq ptr %1290, null
  br i1 %tobool1294.not.i, label %land.lhs.true1290.i.cond.false1313.i_crit_edge, label %land.lhs.true1295.i

land.lhs.true1290.i.cond.false1313.i_crit_edge:   ; preds = %land.lhs.true1290.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1313.i

land.lhs.true1295.i:                              ; preds = %land.lhs.true1290.i
  %sriov_wreg1299.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1290, i32 0, i32 12
  %1291 = ptrtoint ptr %sriov_wreg1299.i to i32
  call void @__asan_load4_noabort(i32 %1291)
  %1292 = load ptr, ptr %sriov_wreg1299.i, align 4
  %tobool1300.not.i = icmp eq ptr %1292, null
  br i1 %tobool1300.not.i, label %land.lhs.true1295.i.cond.false1313.i_crit_edge, label %cond.true1301.i

land.lhs.true1295.i.cond.false1313.i_crit_edge:   ; preds = %land.lhs.true1295.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1313.i

cond.true1301.i:                                  ; preds = %land.lhs.true1295.i
  call void @__sanitizer_cov_trace_pc() #11
  %1293 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1293)
  %1294 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1309.i = getelementptr i32, ptr %1294, i32 1
  %1295 = ptrtoint ptr %arrayidx1309.i to i32
  call void @__asan_load4_noabort(i32 %1295)
  %1296 = load i32, ptr %arrayidx1309.i, align 4
  %add1310.i = add i32 %1296, 1057
  %gpu_addr1311.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 5, i32 1, i32 12
  %1297 = ptrtoint ptr %gpu_addr1311.i to i32
  call void @__asan_load8_noabort(i32 %1297)
  %1298 = load i64, ptr %gpu_addr1311.i, align 8
  %conv1312.i = trunc i64 %1298 to i32
  tail call void %1292(ptr noundef %handle, i32 noundef %add1310.i, i32 noundef %conv1312.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end1321.i

cond.false1313.i:                                 ; preds = %land.lhs.true1295.i.cond.false1313.i_crit_edge, %land.lhs.true1290.i.cond.false1313.i_crit_edge, %cond.end1285.i.cond.false1313.i_crit_edge
  %1299 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1299)
  %1300 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1317.i = getelementptr i32, ptr %1300, i32 1
  %1301 = ptrtoint ptr %arrayidx1317.i to i32
  call void @__asan_load4_noabort(i32 %1301)
  %1302 = load i32, ptr %arrayidx1317.i, align 4
  %add1318.i = add i32 %1302, 1057
  %gpu_addr1319.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 5, i32 1, i32 12
  %1303 = ptrtoint ptr %gpu_addr1319.i to i32
  call void @__asan_load8_noabort(i32 %1303)
  %1304 = load i64, ptr %gpu_addr1319.i, align 8
  %conv1320.i = trunc i64 %1304 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1318.i, i32 noundef %conv1320.i, i32 noundef 0) #9
  br label %cond.end1321.i

cond.end1321.i:                                   ; preds = %cond.false1313.i, %cond.true1301.i
  %1305 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1305)
  %1306 = load i32, ptr %virt, align 8
  %and1324.i = and i32 %1306, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1324.i)
  %tobool1325.not.i = icmp eq i32 %and1324.i, 0
  br i1 %tobool1325.not.i, label %cond.end1321.i.cond.false1351.i_crit_edge, label %land.lhs.true1326.i

cond.end1321.i.cond.false1351.i_crit_edge:        ; preds = %cond.end1321.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1351.i

land.lhs.true1326.i:                              ; preds = %cond.end1321.i
  %1307 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1307)
  %1308 = load ptr, ptr %funcs.i, align 4
  %tobool1330.not.i = icmp eq ptr %1308, null
  br i1 %tobool1330.not.i, label %land.lhs.true1326.i.cond.false1351.i_crit_edge, label %land.lhs.true1331.i

land.lhs.true1326.i.cond.false1351.i_crit_edge:   ; preds = %land.lhs.true1326.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1351.i

land.lhs.true1331.i:                              ; preds = %land.lhs.true1326.i
  %sriov_wreg1335.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1308, i32 0, i32 12
  %1309 = ptrtoint ptr %sriov_wreg1335.i to i32
  call void @__asan_load4_noabort(i32 %1309)
  %1310 = load ptr, ptr %sriov_wreg1335.i, align 4
  %tobool1336.not.i = icmp eq ptr %1310, null
  br i1 %tobool1336.not.i, label %land.lhs.true1331.i.cond.false1351.i_crit_edge, label %cond.true1337.i

land.lhs.true1331.i.cond.false1351.i_crit_edge:   ; preds = %land.lhs.true1331.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1351.i

cond.true1337.i:                                  ; preds = %land.lhs.true1331.i
  call void @__sanitizer_cov_trace_pc() #11
  %1311 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1311)
  %1312 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1345.i = getelementptr i32, ptr %1312, i32 1
  %1313 = ptrtoint ptr %arrayidx1345.i to i32
  call void @__asan_load4_noabort(i32 %1313)
  %1314 = load i32, ptr %arrayidx1345.i, align 4
  %add1346.i = add i32 %1314, 1058
  %gpu_addr1347.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 5, i32 1, i32 12
  %1315 = ptrtoint ptr %gpu_addr1347.i to i32
  call void @__asan_load8_noabort(i32 %1315)
  %1316 = load i64, ptr %gpu_addr1347.i, align 8
  %shr1348.i = lshr i64 %1316, 32
  %conv1350.i = trunc i64 %shr1348.i to i32
  tail call void %1310(ptr noundef %handle, i32 noundef %add1346.i, i32 noundef %conv1350.i, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end1361.i

cond.false1351.i:                                 ; preds = %land.lhs.true1331.i.cond.false1351.i_crit_edge, %land.lhs.true1326.i.cond.false1351.i_crit_edge, %cond.end1321.i.cond.false1351.i_crit_edge
  %1317 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1317)
  %1318 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1355.i = getelementptr i32, ptr %1318, i32 1
  %1319 = ptrtoint ptr %arrayidx1355.i to i32
  call void @__asan_load4_noabort(i32 %1319)
  %1320 = load i32, ptr %arrayidx1355.i, align 4
  %add1356.i = add i32 %1320, 1058
  %gpu_addr1357.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 5, i32 1, i32 12
  %1321 = ptrtoint ptr %gpu_addr1357.i to i32
  call void @__asan_load8_noabort(i32 %1321)
  %1322 = load i64, ptr %gpu_addr1357.i, align 8
  %shr1358.i = lshr i64 %1322, 32
  %conv1360.i = trunc i64 %shr1358.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1356.i, i32 noundef %conv1360.i, i32 noundef 0) #9
  br label %cond.end1361.i

cond.end1361.i:                                   ; preds = %cond.false1351.i, %cond.true1337.i
  %1323 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1323)
  %1324 = load i32, ptr %virt, align 8
  %and1364.i = and i32 %1324, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1364.i)
  %tobool1365.not.i = icmp eq i32 %and1364.i, 0
  br i1 %tobool1365.not.i, label %cond.end1361.i.cond.false1389.i_crit_edge, label %land.lhs.true1366.i

cond.end1361.i.cond.false1389.i_crit_edge:        ; preds = %cond.end1361.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1389.i

land.lhs.true1366.i:                              ; preds = %cond.end1361.i
  %1325 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %1325)
  %1326 = load ptr, ptr %funcs.i, align 4
  %tobool1370.not.i = icmp eq ptr %1326, null
  br i1 %tobool1370.not.i, label %land.lhs.true1366.i.cond.false1389.i_crit_edge, label %land.lhs.true1371.i

land.lhs.true1366.i.cond.false1389.i_crit_edge:   ; preds = %land.lhs.true1366.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1389.i

land.lhs.true1371.i:                              ; preds = %land.lhs.true1366.i
  %sriov_wreg1375.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1326, i32 0, i32 12
  %1327 = ptrtoint ptr %sriov_wreg1375.i to i32
  call void @__asan_load4_noabort(i32 %1327)
  %1328 = load ptr, ptr %sriov_wreg1375.i, align 4
  %tobool1376.not.i = icmp eq ptr %1328, null
  br i1 %tobool1376.not.i, label %land.lhs.true1371.i.cond.false1389.i_crit_edge, label %cond.true1377.i

land.lhs.true1371.i.cond.false1389.i_crit_edge:   ; preds = %land.lhs.true1371.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false1389.i

cond.true1377.i:                                  ; preds = %land.lhs.true1371.i
  call void @__sanitizer_cov_trace_pc() #11
  %1329 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1329)
  %1330 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1385.i = getelementptr i32, ptr %1330, i32 1
  %1331 = ptrtoint ptr %arrayidx1385.i to i32
  call void @__asan_load4_noabort(i32 %1331)
  %1332 = load i32, ptr %arrayidx1385.i, align 4
  %add1386.i = add i32 %1332, 1059
  %ring_size1387.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 5, i32 1, i32 9
  %1333 = ptrtoint ptr %ring_size1387.i to i32
  call void @__asan_load4_noabort(i32 %1333)
  %1334 = load i32, ptr %ring_size1387.i, align 8
  %div13881942.i = lshr i32 %1334, 2
  tail call void %1328(ptr noundef %handle, i32 noundef %add1386.i, i32 noundef %div13881942.i, i32 noundef 0, i32 noundef 16) #9
  br label %for.inc1398.i

cond.false1389.i:                                 ; preds = %land.lhs.true1371.i.cond.false1389.i_crit_edge, %land.lhs.true1366.i.cond.false1389.i_crit_edge, %cond.end1361.i.cond.false1389.i_crit_edge
  %1335 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %1335)
  %1336 = load ptr, ptr %arrayidx32.i, align 4
  %arrayidx1393.i = getelementptr i32, ptr %1336, i32 1
  %1337 = ptrtoint ptr %arrayidx1393.i to i32
  call void @__asan_load4_noabort(i32 %1337)
  %1338 = load i32, ptr %arrayidx1393.i, align 4
  %add1394.i = add i32 %1338, 1059
  %ring_size1395.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %k.11975.i, i32 5, i32 1, i32 9
  %1339 = ptrtoint ptr %ring_size1395.i to i32
  call void @__asan_load4_noabort(i32 %1339)
  %1340 = load i32, ptr %ring_size1395.i, align 8
  %div13961941.i = lshr i32 %1340, 2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1394.i, i32 noundef %div13961941.i, i32 noundef 0) #9
  br label %for.inc1398.i

for.inc1398.i:                                    ; preds = %cond.false1389.i, %cond.true1377.i, %for.body17.i.for.inc1398.i_crit_edge
  %inc1399.i = add nuw nsw i32 %k.11975.i, 1
  %1341 = ptrtoint ptr %num_uvd_inst.i131 to i32
  call void @__asan_load1_noabort(i32 %1341)
  %1342 = load i8, ptr %num_uvd_inst.i131, align 8
  %conv14.i = zext i8 %1342 to i32
  %cmp15.i = icmp ult i32 %inc1399.i, %conv14.i
  br i1 %cmp15.i, label %for.inc1398.i.for.body17.i_crit_edge, label %for.inc1398.i.if.end_crit_edge

for.inc1398.i.if.end_crit_edge:                   ; preds = %for.inc1398.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc1398.i.for.body17.i_crit_edge:             ; preds = %for.inc1398.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i

if.end:                                           ; preds = %for.inc1398.i.if.end_crit_edge, %uvd_v7_0_mc_resume.exit.i.if.end_crit_edge, %while.cond.i.i.if.end_crit_edge
  %num_uvd_inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 4
  %1343 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %1343)
  %1344 = load i8, ptr %num_uvd_inst, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1344)
  %cmp331.not = icmp eq i8 %1344, 0
  br i1 %cmp331.not, label %if.end.do.end_crit_edge, label %for.body.lr.ph

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph:                                   ; preds = %if.end
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  %num_enc_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc77.for.body_crit_edge, %for.body.lr.ph
  %j.0332 = phi i32 [ 0, %for.body.lr.ph ], [ %inc78, %for.inc77.for.body_crit_edge ]
  %1345 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %1345)
  %1346 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %j.0332
  %and7 = and i32 %1346, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %for.body.for.inc77_crit_edge

for.body.for.inc77_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc77

if.end10:                                         ; preds = %for.body
  %ring12 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.0332, i32 4
  %1347 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1347)
  %1348 = load i32, ptr %virt, align 8
  %and15 = and i32 %1348, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end10.if.end63_crit_edge

if.end10.if.end63_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then17:                                        ; preds = %if.end10
  %call18 = tail call i32 @amdgpu_ring_test_helper(ptr noundef %ring12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then17.if.end84_crit_edge

if.then17.if.end84_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.end21:                                         ; preds = %if.then17
  %call22 = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring12, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %j.0332, i32 noundef %call22) #9
  br label %if.end84

if.end25:                                         ; preds = %if.end21
  %arrayidx27 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %j.0332
  %1349 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %1349)
  %1350 = load ptr, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr i32, ptr %1350, i32 1
  %1351 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %1351)
  %1352 = load i32, ptr %arrayidx28, align 4
  %add = add i32 %1352, 1458
  %and29 = and i32 %add, 65535
  %count_dw.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.0332, i32 4, i32 11
  %1353 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1353)
  %1354 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1354)
  %cmp.i184 = icmp slt i32 %1354, 1
  br i1 %cmp.i184, label %if.then.i185, label %if.end25.amdgpu_ring_write.exit_crit_edge

if.end25.amdgpu_ring_write.exit_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i185:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i185, %if.end25.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.0332, i32 4, i32 5
  %1355 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %1355)
  %1356 = load ptr, ptr %ring1.i, align 4
  %wptr.i186 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.0332, i32 4, i32 7
  %1357 = ptrtoint ptr %wptr.i186 to i32
  call void @__asan_load8_noabort(i32 %1357)
  %1358 = load i64, ptr %wptr.i186, align 8
  %inc.i187 = add i64 %1358, 1
  store i64 %inc.i187, ptr %wptr.i186, align 8
  %buf_mask.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.0332, i32 4, i32 14
  %1359 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %1359)
  %1360 = load i32, ptr %buf_mask.i, align 8
  %1361 = trunc i64 %1358 to i32
  %idxprom.i = and i32 %1360, %1361
  %arrayidx.i = getelementptr i32, ptr %1356, i32 %idxprom.i
  %1362 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1362)
  store volatile i32 %and29, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.0332, i32 4, i32 13
  %1363 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %1363)
  %1364 = load i64, ptr %ptr_mask.i, align 8
  %1365 = load i64, ptr %wptr.i186, align 8
  %and3.i = and i64 %1365, %1364
  store i64 %and3.i, ptr %wptr.i186, align 8
  %1366 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1366)
  %1367 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %1367, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i190 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i190, label %if.then.i191, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit202_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit202_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit202

if.then.i191:                                     ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit202

amdgpu_ring_write.exit202:                        ; preds = %if.then.i191, %amdgpu_ring_write.exit.amdgpu_ring_write.exit202_crit_edge
  %1368 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %1368)
  %1369 = load ptr, ptr %ring1.i, align 4
  %1370 = ptrtoint ptr %wptr.i186 to i32
  call void @__asan_load8_noabort(i32 %1370)
  %1371 = load i64, ptr %wptr.i186, align 8
  %inc.i194 = add i64 %1371, 1
  store i64 %inc.i194, ptr %wptr.i186, align 8
  %1372 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %1372)
  %1373 = load i32, ptr %buf_mask.i, align 8
  %1374 = trunc i64 %1371 to i32
  %idxprom.i196 = and i32 %1373, %1374
  %arrayidx.i197 = getelementptr i32, ptr %1369, i32 %idxprom.i196
  %1375 = ptrtoint ptr %arrayidx.i197 to i32
  call void @__asan_store4_noabort(i32 %1375)
  store volatile i32 1048575, ptr %arrayidx.i197, align 4
  %1376 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %1376)
  %1377 = load i64, ptr %ptr_mask.i, align 8
  %1378 = load i64, ptr %wptr.i186, align 8
  %and3.i199 = and i64 %1378, %1377
  store i64 %and3.i199, ptr %wptr.i186, align 8
  %1379 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1379)
  %1380 = load i32, ptr %count_dw.i, align 8
  %dec.i200 = add i32 %1380, -1
  store i32 %dec.i200, ptr %count_dw.i, align 8
  %1381 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %1381)
  %1382 = load ptr, ptr %arrayidx27, align 4
  %arrayidx34 = getelementptr i32, ptr %1382, i32 1
  %1383 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %1383)
  %1384 = load i32, ptr %arrayidx34, align 4
  %add35 = add i32 %1384, 1457
  %and36 = and i32 %add35, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i200)
  %cmp.i204 = icmp slt i32 %dec.i200, 1
  br i1 %cmp.i204, label %if.then.i205, label %amdgpu_ring_write.exit202.amdgpu_ring_write.exit216_crit_edge

amdgpu_ring_write.exit202.amdgpu_ring_write.exit216_crit_edge: ; preds = %amdgpu_ring_write.exit202
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit216

if.then.i205:                                     ; preds = %amdgpu_ring_write.exit202
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit216

amdgpu_ring_write.exit216:                        ; preds = %if.then.i205, %amdgpu_ring_write.exit202.amdgpu_ring_write.exit216_crit_edge
  %1385 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %1385)
  %1386 = load ptr, ptr %ring1.i, align 4
  %1387 = ptrtoint ptr %wptr.i186 to i32
  call void @__asan_load8_noabort(i32 %1387)
  %1388 = load i64, ptr %wptr.i186, align 8
  %inc.i208 = add i64 %1388, 1
  store i64 %inc.i208, ptr %wptr.i186, align 8
  %1389 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %1389)
  %1390 = load i32, ptr %buf_mask.i, align 8
  %1391 = trunc i64 %1388 to i32
  %idxprom.i210 = and i32 %1390, %1391
  %arrayidx.i211 = getelementptr i32, ptr %1386, i32 %idxprom.i210
  %1392 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_store4_noabort(i32 %1392)
  store volatile i32 %and36, ptr %arrayidx.i211, align 4
  %1393 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %1393)
  %1394 = load i64, ptr %ptr_mask.i, align 8
  %1395 = load i64, ptr %wptr.i186, align 8
  %and3.i213 = and i64 %1395, %1394
  store i64 %and3.i213, ptr %wptr.i186, align 8
  %1396 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1396)
  %1397 = load i32, ptr %count_dw.i, align 8
  %dec.i214 = add i32 %1397, -1
  store i32 %dec.i214, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i214)
  %cmp.i218 = icmp slt i32 %dec.i214, 1
  br i1 %cmp.i218, label %if.then.i219, label %amdgpu_ring_write.exit216.amdgpu_ring_write.exit230_crit_edge

amdgpu_ring_write.exit216.amdgpu_ring_write.exit230_crit_edge: ; preds = %amdgpu_ring_write.exit216
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit230

if.then.i219:                                     ; preds = %amdgpu_ring_write.exit216
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit230

amdgpu_ring_write.exit230:                        ; preds = %if.then.i219, %amdgpu_ring_write.exit216.amdgpu_ring_write.exit230_crit_edge
  %1398 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %1398)
  %1399 = load ptr, ptr %ring1.i, align 4
  %1400 = ptrtoint ptr %wptr.i186 to i32
  call void @__asan_load8_noabort(i32 %1400)
  %1401 = load i64, ptr %wptr.i186, align 8
  %inc.i222 = add i64 %1401, 1
  store i64 %inc.i222, ptr %wptr.i186, align 8
  %1402 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %1402)
  %1403 = load i32, ptr %buf_mask.i, align 8
  %1404 = trunc i64 %1401 to i32
  %idxprom.i224 = and i32 %1403, %1404
  %arrayidx.i225 = getelementptr i32, ptr %1399, i32 %idxprom.i224
  %1405 = ptrtoint ptr %arrayidx.i225 to i32
  call void @__asan_store4_noabort(i32 %1405)
  store volatile i32 1048575, ptr %arrayidx.i225, align 4
  %1406 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %1406)
  %1407 = load i64, ptr %ptr_mask.i, align 8
  %1408 = load i64, ptr %wptr.i186, align 8
  %and3.i227 = and i64 %1408, %1407
  store i64 %and3.i227, ptr %wptr.i186, align 8
  %1409 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1409)
  %1410 = load i32, ptr %count_dw.i, align 8
  %dec.i228 = add i32 %1410, -1
  store i32 %dec.i228, ptr %count_dw.i, align 8
  %1411 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %1411)
  %1412 = load ptr, ptr %arrayidx27, align 4
  %arrayidx42 = getelementptr i32, ptr %1412, i32 1
  %1413 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %1413)
  %1414 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %1414, 1459
  %and44 = and i32 %add43, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i228)
  %cmp.i232 = icmp slt i32 %dec.i228, 1
  br i1 %cmp.i232, label %if.then.i233, label %amdgpu_ring_write.exit230.amdgpu_ring_write.exit244_crit_edge

amdgpu_ring_write.exit230.amdgpu_ring_write.exit244_crit_edge: ; preds = %amdgpu_ring_write.exit230
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit244

if.then.i233:                                     ; preds = %amdgpu_ring_write.exit230
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit244

amdgpu_ring_write.exit244:                        ; preds = %if.then.i233, %amdgpu_ring_write.exit230.amdgpu_ring_write.exit244_crit_edge
  %1415 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %1415)
  %1416 = load ptr, ptr %ring1.i, align 4
  %1417 = ptrtoint ptr %wptr.i186 to i32
  call void @__asan_load8_noabort(i32 %1417)
  %1418 = load i64, ptr %wptr.i186, align 8
  %inc.i236 = add i64 %1418, 1
  store i64 %inc.i236, ptr %wptr.i186, align 8
  %1419 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %1419)
  %1420 = load i32, ptr %buf_mask.i, align 8
  %1421 = trunc i64 %1418 to i32
  %idxprom.i238 = and i32 %1420, %1421
  %arrayidx.i239 = getelementptr i32, ptr %1416, i32 %idxprom.i238
  %1422 = ptrtoint ptr %arrayidx.i239 to i32
  call void @__asan_store4_noabort(i32 %1422)
  store volatile i32 %and44, ptr %arrayidx.i239, align 4
  %1423 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %1423)
  %1424 = load i64, ptr %ptr_mask.i, align 8
  %1425 = load i64, ptr %wptr.i186, align 8
  %and3.i241 = and i64 %1425, %1424
  store i64 %and3.i241, ptr %wptr.i186, align 8
  %1426 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1426)
  %1427 = load i32, ptr %count_dw.i, align 8
  %dec.i242 = add i32 %1427, -1
  store i32 %dec.i242, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i242)
  %cmp.i246 = icmp slt i32 %dec.i242, 1
  br i1 %cmp.i246, label %if.then.i247, label %amdgpu_ring_write.exit244.amdgpu_ring_write.exit258_crit_edge

amdgpu_ring_write.exit244.amdgpu_ring_write.exit258_crit_edge: ; preds = %amdgpu_ring_write.exit244
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit258

if.then.i247:                                     ; preds = %amdgpu_ring_write.exit244
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit258

amdgpu_ring_write.exit258:                        ; preds = %if.then.i247, %amdgpu_ring_write.exit244.amdgpu_ring_write.exit258_crit_edge
  %1428 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %1428)
  %1429 = load ptr, ptr %ring1.i, align 4
  %1430 = ptrtoint ptr %wptr.i186 to i32
  call void @__asan_load8_noabort(i32 %1430)
  %1431 = load i64, ptr %wptr.i186, align 8
  %inc.i250 = add i64 %1431, 1
  store i64 %inc.i250, ptr %wptr.i186, align 8
  %1432 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %1432)
  %1433 = load i32, ptr %buf_mask.i, align 8
  %1434 = trunc i64 %1431 to i32
  %idxprom.i252 = and i32 %1433, %1434
  %arrayidx.i253 = getelementptr i32, ptr %1429, i32 %idxprom.i252
  %1435 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_store4_noabort(i32 %1435)
  store volatile i32 1048575, ptr %arrayidx.i253, align 4
  %1436 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %1436)
  %1437 = load i64, ptr %ptr_mask.i, align 8
  %1438 = load i64, ptr %wptr.i186, align 8
  %and3.i255 = and i64 %1438, %1437
  store i64 %and3.i255, ptr %wptr.i186, align 8
  %1439 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1439)
  %1440 = load i32, ptr %count_dw.i, align 8
  %dec.i256 = add i32 %1440, -1
  store i32 %dec.i256, ptr %count_dw.i, align 8
  %1441 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %1441)
  %1442 = load ptr, ptr %arrayidx27, align 4
  %arrayidx50 = getelementptr i32, ptr %1442, i32 1
  %1443 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %1443)
  %1444 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %1444, 1456
  %and52 = and i32 %add51, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i256)
  %cmp.i260 = icmp slt i32 %dec.i256, 1
  br i1 %cmp.i260, label %if.then.i261, label %amdgpu_ring_write.exit258.amdgpu_ring_write.exit272_crit_edge

amdgpu_ring_write.exit258.amdgpu_ring_write.exit272_crit_edge: ; preds = %amdgpu_ring_write.exit258
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit272

if.then.i261:                                     ; preds = %amdgpu_ring_write.exit258
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit272

amdgpu_ring_write.exit272:                        ; preds = %if.then.i261, %amdgpu_ring_write.exit258.amdgpu_ring_write.exit272_crit_edge
  %1445 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %1445)
  %1446 = load ptr, ptr %ring1.i, align 4
  %1447 = ptrtoint ptr %wptr.i186 to i32
  call void @__asan_load8_noabort(i32 %1447)
  %1448 = load i64, ptr %wptr.i186, align 8
  %inc.i264 = add i64 %1448, 1
  store i64 %inc.i264, ptr %wptr.i186, align 8
  %1449 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %1449)
  %1450 = load i32, ptr %buf_mask.i, align 8
  %1451 = trunc i64 %1448 to i32
  %idxprom.i266 = and i32 %1450, %1451
  %arrayidx.i267 = getelementptr i32, ptr %1446, i32 %idxprom.i266
  %1452 = ptrtoint ptr %arrayidx.i267 to i32
  call void @__asan_store4_noabort(i32 %1452)
  store volatile i32 %and52, ptr %arrayidx.i267, align 4
  %1453 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %1453)
  %1454 = load i64, ptr %ptr_mask.i, align 8
  %1455 = load i64, ptr %wptr.i186, align 8
  %and3.i269 = and i64 %1455, %1454
  store i64 %and3.i269, ptr %wptr.i186, align 8
  %1456 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1456)
  %1457 = load i32, ptr %count_dw.i, align 8
  %dec.i270 = add i32 %1457, -1
  store i32 %dec.i270, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i270)
  %cmp.i274 = icmp slt i32 %dec.i270, 1
  br i1 %cmp.i274, label %if.then.i275, label %amdgpu_ring_write.exit272.amdgpu_ring_write.exit286_crit_edge

amdgpu_ring_write.exit272.amdgpu_ring_write.exit286_crit_edge: ; preds = %amdgpu_ring_write.exit272
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit286

if.then.i275:                                     ; preds = %amdgpu_ring_write.exit272
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit286

amdgpu_ring_write.exit286:                        ; preds = %if.then.i275, %amdgpu_ring_write.exit272.amdgpu_ring_write.exit286_crit_edge
  %1458 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %1458)
  %1459 = load ptr, ptr %ring1.i, align 4
  %1460 = ptrtoint ptr %wptr.i186 to i32
  call void @__asan_load8_noabort(i32 %1460)
  %1461 = load i64, ptr %wptr.i186, align 8
  %inc.i278 = add i64 %1461, 1
  store i64 %inc.i278, ptr %wptr.i186, align 8
  %1462 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %1462)
  %1463 = load i32, ptr %buf_mask.i, align 8
  %1464 = trunc i64 %1461 to i32
  %idxprom.i280 = and i32 %1463, %1464
  %arrayidx.i281 = getelementptr i32, ptr %1459, i32 %idxprom.i280
  %1465 = ptrtoint ptr %arrayidx.i281 to i32
  call void @__asan_store4_noabort(i32 %1465)
  store volatile i32 8, ptr %arrayidx.i281, align 4
  %1466 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %1466)
  %1467 = load i64, ptr %ptr_mask.i, align 8
  %1468 = load i64, ptr %wptr.i186, align 8
  %and3.i283 = and i64 %1468, %1467
  store i64 %and3.i283, ptr %wptr.i186, align 8
  %1469 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1469)
  %1470 = load i32, ptr %count_dw.i, align 8
  %dec.i284 = add i32 %1470, -1
  store i32 %dec.i284, ptr %count_dw.i, align 8
  %1471 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %1471)
  %1472 = load ptr, ptr %arrayidx27, align 4
  %arrayidx58 = getelementptr i32, ptr %1472, i32 1
  %1473 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %1473)
  %1474 = load i32, ptr %arrayidx58, align 4
  %add59 = add i32 %1474, 1280
  %and60 = and i32 %add59, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i284)
  %cmp.i288 = icmp slt i32 %dec.i284, 1
  br i1 %cmp.i288, label %if.then.i289, label %amdgpu_ring_write.exit286.amdgpu_ring_write.exit300_crit_edge

amdgpu_ring_write.exit286.amdgpu_ring_write.exit300_crit_edge: ; preds = %amdgpu_ring_write.exit286
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit300

if.then.i289:                                     ; preds = %amdgpu_ring_write.exit286
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit300

amdgpu_ring_write.exit300:                        ; preds = %if.then.i289, %amdgpu_ring_write.exit286.amdgpu_ring_write.exit300_crit_edge
  %1475 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %1475)
  %1476 = load ptr, ptr %ring1.i, align 4
  %1477 = ptrtoint ptr %wptr.i186 to i32
  call void @__asan_load8_noabort(i32 %1477)
  %1478 = load i64, ptr %wptr.i186, align 8
  %inc.i292 = add i64 %1478, 1
  store i64 %inc.i292, ptr %wptr.i186, align 8
  %1479 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %1479)
  %1480 = load i32, ptr %buf_mask.i, align 8
  %1481 = trunc i64 %1478 to i32
  %idxprom.i294 = and i32 %1480, %1481
  %arrayidx.i295 = getelementptr i32, ptr %1476, i32 %idxprom.i294
  %1482 = ptrtoint ptr %arrayidx.i295 to i32
  call void @__asan_store4_noabort(i32 %1482)
  store volatile i32 %and60, ptr %arrayidx.i295, align 4
  %1483 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %1483)
  %1484 = load i64, ptr %ptr_mask.i, align 8
  %1485 = load i64, ptr %wptr.i186, align 8
  %and3.i297 = and i64 %1485, %1484
  store i64 %and3.i297, ptr %wptr.i186, align 8
  %1486 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1486)
  %1487 = load i32, ptr %count_dw.i, align 8
  %dec.i298 = add i32 %1487, -1
  store i32 %dec.i298, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i298)
  %cmp.i302 = icmp slt i32 %dec.i298, 1
  br i1 %cmp.i302, label %if.then.i303, label %amdgpu_ring_write.exit300.amdgpu_ring_write.exit314_crit_edge

amdgpu_ring_write.exit300.amdgpu_ring_write.exit314_crit_edge: ; preds = %amdgpu_ring_write.exit300
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit314

if.then.i303:                                     ; preds = %amdgpu_ring_write.exit300
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit314

amdgpu_ring_write.exit314:                        ; preds = %if.then.i303, %amdgpu_ring_write.exit300.amdgpu_ring_write.exit314_crit_edge
  %1488 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %1488)
  %1489 = load ptr, ptr %ring1.i, align 4
  %1490 = ptrtoint ptr %wptr.i186 to i32
  call void @__asan_load8_noabort(i32 %1490)
  %1491 = load i64, ptr %wptr.i186, align 8
  %inc.i306 = add i64 %1491, 1
  store i64 %inc.i306, ptr %wptr.i186, align 8
  %1492 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %1492)
  %1493 = load i32, ptr %buf_mask.i, align 8
  %1494 = trunc i64 %1491 to i32
  %idxprom.i308 = and i32 %1493, %1494
  %arrayidx.i309 = getelementptr i32, ptr %1489, i32 %idxprom.i308
  %1495 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_store4_noabort(i32 %1495)
  store volatile i32 3, ptr %arrayidx.i309, align 4
  %1496 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %1496)
  %1497 = load i64, ptr %ptr_mask.i, align 8
  %1498 = load i64, ptr %wptr.i186, align 8
  %and3.i311 = and i64 %1498, %1497
  store i64 %and3.i311, ptr %wptr.i186, align 8
  %1499 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1499)
  %1500 = load i32, ptr %count_dw.i, align 8
  %dec.i312 = add i32 %1500, -1
  store i32 %dec.i312, ptr %count_dw.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring12) #9
  br label %if.end63

if.end63:                                         ; preds = %amdgpu_ring_write.exit314, %if.end10.if.end63_crit_edge
  %1501 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %1501)
  %1502 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1502)
  %cmp66328.not = icmp eq i32 %1502, 0
  br i1 %cmp66328.not, label %if.end63.for.inc77_crit_edge, label %if.end63.for.body68_crit_edge

if.end63.for.body68_crit_edge:                    ; preds = %if.end63
  br label %for.body68

if.end63.for.inc77_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc77

for.cond64:                                       ; preds = %for.body68
  %inc = add nuw i32 %i.0329, 1
  %1503 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %1503)
  %1504 = load i32, ptr %num_enc_rings, align 4
  %cmp66 = icmp ult i32 %inc, %1504
  br i1 %cmp66, label %for.cond64.for.body68_crit_edge, label %for.cond64.for.inc77_crit_edge

for.cond64.for.inc77_crit_edge:                   ; preds = %for.cond64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc77

for.cond64.for.body68_crit_edge:                  ; preds = %for.cond64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body68

for.body68:                                       ; preds = %for.cond64.for.body68_crit_edge, %if.end63.for.body68_crit_edge
  %i.0329 = phi i32 [ %inc, %for.cond64.for.body68_crit_edge ], [ 0, %if.end63.for.body68_crit_edge ]
  %arrayidx72 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 %j.0332, i32 5, i32 %i.0329
  %call73 = tail call i32 @amdgpu_ring_test_helper(ptr noundef %arrayidx72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %for.cond64, label %for.body68.if.end84_crit_edge

for.body68.if.end84_crit_edge:                    ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

for.inc77:                                        ; preds = %for.cond64.for.inc77_crit_edge, %if.end63.for.inc77_crit_edge, %for.body.for.inc77_crit_edge
  %inc78 = add nuw nsw i32 %j.0332, 1
  %1505 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %1505)
  %1506 = load i8, ptr %num_uvd_inst, align 8
  %conv = zext i8 %1506 to i32
  %cmp = icmp ult i32 %inc78, %conv
  br i1 %cmp, label %for.inc77.for.body_crit_edge, label %for.inc77.do.end_crit_edge

for.inc77.do.end_crit_edge:                       ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc77.for.body_crit_edge:                     ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end:                                           ; preds = %for.inc77.do.end_crit_edge, %if.end.do.end_crit_edge
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %if.end84

if.end84:                                         ; preds = %do.end, %for.body68.if.end84_crit_edge, %if.then24, %if.then17.if.end84_crit_edge, %if.then623.i, %do.end.i.i
  %r.5319 = phi i32 [ 0, %do.end ], [ %call22, %if.then24 ], [ -1, %if.then623.i ], [ -16, %do.end.i.i ], [ %call73, %for.body68.if.end84_crit_edge ], [ %call18, %if.then17.if.end84_crit_edge ]
  ret i32 %r.5319
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #9
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %num_uvd_inst.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 4
  %2 = ptrtoint ptr %num_uvd_inst.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_uvd_inst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp181.not.i = icmp eq i8 %3, 0
  br i1 %cmp181.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %harvest_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 12
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %harvest_config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %harvest_config.i, align 4
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %and.i = and i32 %5, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt, align 8
  %and5.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.end.i.cond.false.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool7.not.i = icmp eq ptr %9, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool12.not.i = icmp eq ptr %11, null
  br i1 %tobool12.not.i, label %land.lhs.true8.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true8.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %indvars.iv.i
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17.i, align 4
  %arrayidx18.i = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18.i, align 4
  %add.i = add i32 %15, 1449
  tail call void %11(ptr noundef %handle, i32 noundef %add.i, i32 noundef 285278465, i32 noundef 0, i32 noundef 16) #9
  br label %do.body.i

cond.false.i:                                     ; preds = %land.lhs.true8.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end.i.cond.false.i_crit_edge
  %arrayidx22.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %indvars.iv.i
  %16 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx22.i, align 4
  %arrayidx23.i = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23.i, align 4
  %add24.i = add i32 %19, 1449
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add24.i, i32 noundef 285278465, i32 noundef 0) #9
  br label %do.body.i

do.body.i:                                        ; preds = %cond.false.i, %cond.true.i
  %arrayidx28.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %indvars.iv.i
  %20 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx28.i, align 4
  %arrayidx29.i = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %23, 1341
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add30.i, i32 noundef 0) #9
  %or.i = or i32 %call.i, 256
  %24 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx28.i, align 4
  %arrayidx36.i = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx36.i, align 4
  %add37.i = add i32 %27, 1341
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add37.i, i32 noundef %or.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #9
  %29 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %virt, align 8
  %and40.i = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %do.body.i.cond.false64.i_crit_edge, label %land.lhs.true42.i

do.body.i.cond.false64.i_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false64.i

land.lhs.true42.i:                                ; preds = %do.body.i
  %31 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %funcs.i, align 4
  %tobool46.not.i = icmp eq ptr %32, null
  br i1 %tobool46.not.i, label %land.lhs.true42.i.cond.false64.i_crit_edge, label %land.lhs.true47.i

land.lhs.true42.i.cond.false64.i_crit_edge:       ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false64.i

land.lhs.true47.i:                                ; preds = %land.lhs.true42.i
  %sriov_wreg51.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %sriov_wreg51.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sriov_wreg51.i, align 4
  %tobool52.not.i = icmp eq ptr %34, null
  br i1 %tobool52.not.i, label %land.lhs.true47.i.cond.false64.i_crit_edge, label %cond.true53.i

land.lhs.true47.i.cond.false64.i_crit_edge:       ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false64.i

cond.true53.i:                                    ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx28.i, align 4
  %arrayidx62.i = getelementptr i32, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx62.i, align 4
  %add63.i = add i32 %38, 1440
  tail call void %34(ptr noundef %handle, i32 noundef %add63.i, i32 noundef 8, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end71.i

cond.false64.i:                                   ; preds = %land.lhs.true47.i.cond.false64.i_crit_edge, %land.lhs.true42.i.cond.false64.i_crit_edge, %do.body.i.cond.false64.i_crit_edge
  %39 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx28.i, align 4
  %arrayidx69.i = getelementptr i32, ptr %40, i32 1
  %41 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx69.i, align 4
  %add70.i = add i32 %42, 1440
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add70.i, i32 noundef 8, i32 noundef 0) #9
  br label %cond.end71.i

cond.end71.i:                                     ; preds = %cond.false64.i, %cond.true53.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #9
  %48 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %virt, align 8
  %and75.i = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %cond.end71.i.cond.false99.i_crit_edge, label %land.lhs.true77.i

cond.end71.i.cond.false99.i_crit_edge:            ; preds = %cond.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false99.i

land.lhs.true77.i:                                ; preds = %cond.end71.i
  %50 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %funcs.i, align 4
  %tobool81.not.i = icmp eq ptr %51, null
  br i1 %tobool81.not.i, label %land.lhs.true77.i.cond.false99.i_crit_edge, label %land.lhs.true82.i

land.lhs.true77.i.cond.false99.i_crit_edge:       ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false99.i

land.lhs.true82.i:                                ; preds = %land.lhs.true77.i
  %sriov_wreg86.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %sriov_wreg86.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sriov_wreg86.i, align 4
  %tobool87.not.i = icmp eq ptr %53, null
  br i1 %tobool87.not.i, label %land.lhs.true82.i.cond.false99.i_crit_edge, label %cond.true88.i

land.lhs.true82.i.cond.false99.i_crit_edge:       ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false99.i

cond.true88.i:                                    ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx28.i, align 4
  %arrayidx97.i = getelementptr i32, ptr %55, i32 1
  %56 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx97.i, align 4
  %add98.i = add i32 %57, 1432
  tail call void %53(ptr noundef %handle, i32 noundef %add98.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #9
  br label %do.body107.i

cond.false99.i:                                   ; preds = %land.lhs.true82.i.cond.false99.i_crit_edge, %land.lhs.true77.i.cond.false99.i_crit_edge, %cond.end71.i.cond.false99.i_crit_edge
  %58 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx28.i, align 4
  %arrayidx104.i = getelementptr i32, ptr %59, i32 1
  %60 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx104.i, align 4
  %add105.i = add i32 %61, 1432
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add105.i, i32 noundef 0, i32 noundef 0) #9
  br label %do.body107.i

do.body107.i:                                     ; preds = %cond.false99.i, %cond.true88.i
  %62 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx28.i, align 4
  %arrayidx113.i = getelementptr i32, ptr %63, i32 1
  %64 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx113.i, align 4
  %add114.i = add i32 %65, 1341
  %call115.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add114.i, i32 noundef 0) #9
  %and116.i = and i32 %call115.i, -257
  %66 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx28.i, align 4
  %arrayidx122.i = getelementptr i32, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx122.i, align 4
  %add123.i = add i32 %69, 1341
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add123.i, i32 noundef %and116.i, i32 noundef 0) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body107.i, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %70 = ptrtoint ptr %num_uvd_inst.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_uvd_inst.i, align 8
  %72 = zext i8 %71 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %72
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #9
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_dpm_enable_uvd(ptr noundef %handle, i1 noundef zeroext false) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 4
  %set_uvd_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_uvd_clocks, align 4
  %call1 = tail call i32 %5(ptr noundef %handle, i32 noundef 0, i32 noundef 0) #9
  %call2 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %handle, i32 noundef 8, i32 noundef 0) #9
  %call3 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %handle, i32 noundef 8, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = tail call i32 @uvd_v7_0_hw_fini(ptr noundef %handle)
  %call8 = tail call i32 @amdgpu_uvd_suspend(ptr noundef %handle) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_uvd_resume(ptr noundef %handle) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @uvd_v7_0_hw_init(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvd_v7_0_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @uvd_v7_0_ring_get_rptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %8 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %me, align 8
  %arrayidx12 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %9
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %13, 1444
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %me16 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %14 = ptrtoint ptr %me16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %me16, align 8
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %15
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %19, 1444
  %call20 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add19, i32 noundef 0) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call20, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @uvd_v7_0_ring_get_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %8 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %me, align 8
  %arrayidx12 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %9
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %13, 1445
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %me16 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %14 = ptrtoint ptr %me16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %me16, align 8
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %15
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %19, 1445
  %call20 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add19, i32 noundef 0) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call20, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_ring_set_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %8 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %me, align 8
  %arrayidx12 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %9
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %13, 1445
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %14 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %15 to i32
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %me17 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %16 = ptrtoint ptr %me17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %me17, align 8
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %17
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr i32, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %21, 1445
  %wptr21 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %22 = ptrtoint ptr %wptr21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %wptr21, align 8
  %conv23 = trunc i64 %23 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add20, i32 noundef %conv23, i32 noundef 0) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_ring_patch_cs_in_place(ptr nocapture noundef readonly %p, i32 noundef %ib_idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %entity = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 6
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity, align 8
  %rq = getelementptr inbounds %struct.drm_sched_entity, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq, align 8
  %sched = getelementptr inbounds %struct.drm_sched_rq, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sched, align 4
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %me = getelementptr i8, ptr %5, i32 624
  %6 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %8 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ibs, align 4
  %length_dw = getelementptr %struct.amdgpu_ib, ptr %11, i32 %ib_idx, i32 1
  %12 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp28.not = icmp eq i32 %13, 0
  br i1 %cmp28.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.029 = phi i32 [ %add9, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %14 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %job, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ibs.i, align 4
  %ptr.i = getelementptr %struct.amdgpu_ib, ptr %17, i32 %ib_idx, i32 3
  %18 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptr.i, align 8
  %arrayidx1.i = getelementptr i32, ptr %19, i32 %i.029
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx1.i, align 4
  %22 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p, align 8
  %arrayidx1 = getelementptr %struct.amdgpu_device, ptr %23, i32 0, i32 130, i32 16
  %24 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1, align 8
  %arrayidx3 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx3, align 4
  %sub = sub i32 %21, %27
  %arrayidx7 = getelementptr %struct.amdgpu_device, ptr %23, i32 0, i32 130, i32 16, i32 1
  %28 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx8, align 4
  %add = add i32 %sub, %31
  store i32 %add, ptr %arrayidx1.i, align 4
  %add9 = add i32 %i.029, 2
  %32 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length_dw, align 4
  %cmp = icmp ult i32 %add9, %33
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vmid2 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %2 = ptrtoint ptr %vmid2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmid2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %4 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %me, align 8
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %add = add i32 %9, 1441
  %and = and i32 %add, 65535
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end.amdgpu_ring_write.exit_crit_edge

cond.end.amdgpu_ring_write.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %cond.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %12 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %14 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %15, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %16 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_mask.i, align 8
  %18 = trunc i64 %15 to i32
  %idxprom.i = and i32 %17, %18
  %arrayidx.i = getelementptr i32, ptr %13, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %and, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %20 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ptr_mask.i, align 8
  %22 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %22, %21
  store i64 %and3.i, ptr %wptr.i, align 8
  %23 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i56 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i56, label %if.then.i57, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit67_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit67_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit67

amdgpu_ring_write.exit67:                         ; preds = %if.then.i57, %amdgpu_ring_write.exit.amdgpu_ring_write.exit67_crit_edge
  %25 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring1.i, align 4
  %27 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wptr.i, align 8
  %inc.i60 = add i64 %28, 1
  store i64 %inc.i60, ptr %wptr.i, align 8
  %29 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_mask.i, align 8
  %31 = trunc i64 %28 to i32
  %idxprom.i62 = and i32 %30, %31
  %arrayidx.i63 = getelementptr i32, ptr %26, i32 %idxprom.i62
  %32 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %cond, ptr %arrayidx.i63, align 4
  %33 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ptr_mask.i, align 8
  %35 = load i64, ptr %wptr.i, align 8
  %and3.i65 = and i64 %35, %34
  store i64 %and3.i65, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count_dw.i, align 8
  %dec.i66 = add i32 %37, -1
  store i32 %dec.i66, ptr %count_dw.i, align 8
  %38 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %me, align 8
  %arrayidx9 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %39
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx10, align 4
  %add11 = add i32 %43, 1127
  %and12 = and i32 %add11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i66)
  %cmp.i69 = icmp slt i32 %dec.i66, 1
  br i1 %cmp.i69, label %if.then.i70, label %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge

amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge: ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit80

amdgpu_ring_write.exit80:                         ; preds = %if.then.i70, %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge
  %44 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring1.i, align 4
  %46 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %wptr.i, align 8
  %inc.i73 = add i64 %47, 1
  store i64 %inc.i73, ptr %wptr.i, align 8
  %48 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buf_mask.i, align 8
  %50 = trunc i64 %47 to i32
  %idxprom.i75 = and i32 %49, %50
  %arrayidx.i76 = getelementptr i32, ptr %45, i32 %idxprom.i75
  %51 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %and12, ptr %arrayidx.i76, align 4
  %52 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %ptr_mask.i, align 8
  %54 = load i64, ptr %wptr.i, align 8
  %and3.i78 = and i64 %54, %53
  store i64 %and3.i78, ptr %wptr.i, align 8
  %55 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count_dw.i, align 8
  %dec.i79 = add i32 %56, -1
  store i32 %dec.i79, ptr %count_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %57 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i79)
  %cmp.i82 = icmp slt i32 %dec.i79, 1
  br i1 %cmp.i82, label %if.then.i83, label %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge

amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge: ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit93

if.then.i83:                                      ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit93

amdgpu_ring_write.exit93:                         ; preds = %if.then.i83, %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge
  %59 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ring1.i, align 4
  %61 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %wptr.i, align 8
  %inc.i86 = add i64 %62, 1
  store i64 %inc.i86, ptr %wptr.i, align 8
  %63 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buf_mask.i, align 8
  %65 = trunc i64 %62 to i32
  %idxprom.i88 = and i32 %64, %65
  %arrayidx.i89 = getelementptr i32, ptr %60, i32 %idxprom.i88
  %66 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 %conv, ptr %arrayidx.i89, align 4
  %67 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %ptr_mask.i, align 8
  %69 = load i64, ptr %wptr.i, align 8
  %and3.i91 = and i64 %69, %68
  store i64 %and3.i91, ptr %wptr.i, align 8
  %70 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count_dw.i, align 8
  %dec.i92 = add i32 %71, -1
  store i32 %dec.i92, ptr %count_dw.i, align 8
  %72 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %me, align 8
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %73
  %74 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr i32, ptr %75, i32 1
  %76 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %77, 1126
  %and22 = and i32 %add21, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i92)
  %cmp.i95 = icmp slt i32 %dec.i92, 1
  br i1 %cmp.i95, label %if.then.i96, label %amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge

amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge: ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit106

if.then.i96:                                      ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit106

amdgpu_ring_write.exit106:                        ; preds = %if.then.i96, %amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge
  %78 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ring1.i, align 4
  %80 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %wptr.i, align 8
  %inc.i99 = add i64 %81, 1
  store i64 %inc.i99, ptr %wptr.i, align 8
  %82 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %buf_mask.i, align 8
  %84 = trunc i64 %81 to i32
  %idxprom.i101 = and i32 %83, %84
  %arrayidx.i102 = getelementptr i32, ptr %79, i32 %idxprom.i101
  %85 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 %and22, ptr %arrayidx.i102, align 4
  %86 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %ptr_mask.i, align 8
  %88 = load i64, ptr %wptr.i, align 8
  %and3.i104 = and i64 %88, %87
  store i64 %and3.i104, ptr %wptr.i, align 8
  %89 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %count_dw.i, align 8
  %dec.i105 = add i32 %90, -1
  store i32 %dec.i105, ptr %count_dw.i, align 8
  %91 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %92, 32
  %conv27 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i105)
  %cmp.i108 = icmp slt i32 %dec.i105, 1
  br i1 %cmp.i108, label %if.then.i109, label %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge

amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge: ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit119

if.then.i109:                                     ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit119

amdgpu_ring_write.exit119:                        ; preds = %if.then.i109, %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 4
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %wptr.i, align 8
  %inc.i112 = add i64 %96, 1
  store i64 %inc.i112, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf_mask.i, align 8
  %99 = trunc i64 %96 to i32
  %idxprom.i114 = and i32 %98, %99
  %arrayidx.i115 = getelementptr i32, ptr %94, i32 %idxprom.i114
  %100 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %conv27, ptr %arrayidx.i115, align 4
  %101 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %ptr_mask.i, align 8
  %103 = load i64, ptr %wptr.i, align 8
  %and3.i117 = and i64 %103, %102
  store i64 %and3.i117, ptr %wptr.i, align 8
  %104 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count_dw.i, align 8
  %dec.i118 = add i32 %105, -1
  store i32 %dec.i118, ptr %count_dw.i, align 8
  %106 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %me, align 8
  %arrayidx31 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %107
  %108 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx31, align 4
  %arrayidx32 = getelementptr i32, ptr %109, i32 1
  %110 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %111, 1442
  %and34 = and i32 %add33, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i118)
  %cmp.i121 = icmp slt i32 %dec.i118, 1
  br i1 %cmp.i121, label %if.then.i122, label %amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge

amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge: ; preds = %amdgpu_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit132

if.then.i122:                                     ; preds = %amdgpu_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit132

amdgpu_ring_write.exit132:                        ; preds = %if.then.i122, %amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge
  %112 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ring1.i, align 4
  %114 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %wptr.i, align 8
  %inc.i125 = add i64 %115, 1
  store i64 %inc.i125, ptr %wptr.i, align 8
  %116 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %buf_mask.i, align 8
  %118 = trunc i64 %115 to i32
  %idxprom.i127 = and i32 %117, %118
  %arrayidx.i128 = getelementptr i32, ptr %113, i32 %idxprom.i127
  %119 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 %and34, ptr %arrayidx.i128, align 4
  %120 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %ptr_mask.i, align 8
  %122 = load i64, ptr %wptr.i, align 8
  %and3.i130 = and i64 %122, %121
  store i64 %and3.i130, ptr %wptr.i, align 8
  %123 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %count_dw.i, align 8
  %dec.i131 = add i32 %124, -1
  store i32 %dec.i131, ptr %count_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %125 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i131)
  %cmp.i134 = icmp slt i32 %dec.i131, 1
  br i1 %cmp.i134, label %if.then.i135, label %amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge

amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge: ; preds = %amdgpu_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit145

if.then.i135:                                     ; preds = %amdgpu_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit145

amdgpu_ring_write.exit145:                        ; preds = %if.then.i135, %amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge
  %127 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ring1.i, align 4
  %129 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %wptr.i, align 8
  %inc.i138 = add i64 %130, 1
  store i64 %inc.i138, ptr %wptr.i, align 8
  %131 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %buf_mask.i, align 8
  %133 = trunc i64 %130 to i32
  %idxprom.i140 = and i32 %132, %133
  %arrayidx.i141 = getelementptr i32, ptr %128, i32 %idxprom.i140
  %134 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 %126, ptr %arrayidx.i141, align 4
  %135 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %ptr_mask.i, align 8
  %137 = load i64, ptr %wptr.i, align 8
  %and3.i143 = and i64 %137, %136
  store i64 %and3.i143, ptr %wptr.i, align 8
  %138 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %count_dw.i, align 8
  %dec.i144 = add i32 %139, -1
  store i32 %dec.i144, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !73

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1179, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %2 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %me, align 8
  %arrayidx21 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %3
  %4 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx22, align 4
  %add = add i32 %7, 1469
  %and23 = and i32 %add, 65535
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %8 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp slt i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %10 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %12 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %13, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %14 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_mask.i, align 8
  %16 = trunc i64 %13 to i32
  %idxprom.i = and i32 %15, %16
  %arrayidx.i = getelementptr i32, ptr %11, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %and23, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %18 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ptr_mask.i, align 8
  %20 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %20, %19
  store i64 %and3.i, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i114 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i114, label %if.then.i115, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit125_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit125_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit125

if.then.i115:                                     ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit125

amdgpu_ring_write.exit125:                        ; preds = %if.then.i115, %amdgpu_ring_write.exit.amdgpu_ring_write.exit125_crit_edge
  %23 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring1.i, align 4
  %25 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wptr.i, align 8
  %inc.i118 = add i64 %26, 1
  store i64 %inc.i118, ptr %wptr.i, align 8
  %27 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_mask.i, align 8
  %29 = trunc i64 %26 to i32
  %idxprom.i120 = and i32 %28, %29
  %arrayidx.i121 = getelementptr i32, ptr %24, i32 %idxprom.i120
  %30 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %conv, ptr %arrayidx.i121, align 4
  %31 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ptr_mask.i, align 8
  %33 = load i64, ptr %wptr.i, align 8
  %and3.i123 = and i64 %33, %32
  store i64 %and3.i123, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count_dw.i, align 8
  %dec.i124 = add i32 %35, -1
  store i32 %dec.i124, ptr %count_dw.i, align 8
  %36 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %me, align 8
  %arrayidx28 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %37
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx28, align 4
  %arrayidx29 = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx29, align 4
  %add30 = add i32 %41, 964
  %and31 = and i32 %add30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i124)
  %cmp.i127 = icmp slt i32 %dec.i124, 1
  br i1 %cmp.i127, label %if.then.i128, label %amdgpu_ring_write.exit125.amdgpu_ring_write.exit138_crit_edge

amdgpu_ring_write.exit125.amdgpu_ring_write.exit138_crit_edge: ; preds = %amdgpu_ring_write.exit125
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit138

if.then.i128:                                     ; preds = %amdgpu_ring_write.exit125
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit138

amdgpu_ring_write.exit138:                        ; preds = %if.then.i128, %amdgpu_ring_write.exit125.amdgpu_ring_write.exit138_crit_edge
  %42 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring1.i, align 4
  %44 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %wptr.i, align 8
  %inc.i131 = add i64 %45, 1
  store i64 %inc.i131, ptr %wptr.i, align 8
  %46 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf_mask.i, align 8
  %48 = trunc i64 %45 to i32
  %idxprom.i133 = and i32 %47, %48
  %arrayidx.i134 = getelementptr i32, ptr %43, i32 %idxprom.i133
  %49 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %and31, ptr %arrayidx.i134, align 4
  %50 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ptr_mask.i, align 8
  %52 = load i64, ptr %wptr.i, align 8
  %and3.i136 = and i64 %52, %51
  store i64 %and3.i136, ptr %wptr.i, align 8
  %53 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count_dw.i, align 8
  %dec.i137 = add i32 %54, -1
  store i32 %dec.i137, ptr %count_dw.i, align 8
  %conv35 = trunc i64 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i137)
  %cmp.i140 = icmp slt i32 %dec.i137, 1
  br i1 %cmp.i140, label %if.then.i141, label %amdgpu_ring_write.exit138.amdgpu_ring_write.exit151_crit_edge

amdgpu_ring_write.exit138.amdgpu_ring_write.exit151_crit_edge: ; preds = %amdgpu_ring_write.exit138
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit151

if.then.i141:                                     ; preds = %amdgpu_ring_write.exit138
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit151

amdgpu_ring_write.exit151:                        ; preds = %if.then.i141, %amdgpu_ring_write.exit138.amdgpu_ring_write.exit151_crit_edge
  %55 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring1.i, align 4
  %57 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %wptr.i, align 8
  %inc.i144 = add i64 %58, 1
  store i64 %inc.i144, ptr %wptr.i, align 8
  %59 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf_mask.i, align 8
  %61 = trunc i64 %58 to i32
  %idxprom.i146 = and i32 %60, %61
  %arrayidx.i147 = getelementptr i32, ptr %56, i32 %idxprom.i146
  %62 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %conv35, ptr %arrayidx.i147, align 4
  %63 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %ptr_mask.i, align 8
  %65 = load i64, ptr %wptr.i, align 8
  %and3.i149 = and i64 %65, %64
  store i64 %and3.i149, ptr %wptr.i, align 8
  %66 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count_dw.i, align 8
  %dec.i150 = add i32 %67, -1
  store i32 %dec.i150, ptr %count_dw.i, align 8
  %68 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %me, align 8
  %arrayidx39 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %69
  %70 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx39, align 4
  %arrayidx40 = getelementptr i32, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx40, align 4
  %add41 = add i32 %73, 965
  %and42 = and i32 %add41, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i150)
  %cmp.i153 = icmp slt i32 %dec.i150, 1
  br i1 %cmp.i153, label %if.then.i154, label %amdgpu_ring_write.exit151.amdgpu_ring_write.exit164_crit_edge

amdgpu_ring_write.exit151.amdgpu_ring_write.exit164_crit_edge: ; preds = %amdgpu_ring_write.exit151
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit164

if.then.i154:                                     ; preds = %amdgpu_ring_write.exit151
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit164

amdgpu_ring_write.exit164:                        ; preds = %if.then.i154, %amdgpu_ring_write.exit151.amdgpu_ring_write.exit164_crit_edge
  %74 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ring1.i, align 4
  %76 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %wptr.i, align 8
  %inc.i157 = add i64 %77, 1
  store i64 %inc.i157, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buf_mask.i, align 8
  %80 = trunc i64 %77 to i32
  %idxprom.i159 = and i32 %79, %80
  %arrayidx.i160 = getelementptr i32, ptr %75, i32 %idxprom.i159
  %81 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %and42, ptr %arrayidx.i160, align 4
  %82 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %ptr_mask.i, align 8
  %84 = load i64, ptr %wptr.i, align 8
  %and3.i162 = and i64 %84, %83
  store i64 %and3.i162, ptr %wptr.i, align 8
  %85 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count_dw.i, align 8
  %dec.i163 = add i32 %86, -1
  store i32 %dec.i163, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv46 = trunc i64 %shr to i32
  %and47 = and i32 %conv46, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i163)
  %cmp.i166 = icmp slt i32 %dec.i163, 1
  br i1 %cmp.i166, label %if.then.i167, label %amdgpu_ring_write.exit164.amdgpu_ring_write.exit177_crit_edge

amdgpu_ring_write.exit164.amdgpu_ring_write.exit177_crit_edge: ; preds = %amdgpu_ring_write.exit164
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit177

if.then.i167:                                     ; preds = %amdgpu_ring_write.exit164
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit177

amdgpu_ring_write.exit177:                        ; preds = %if.then.i167, %amdgpu_ring_write.exit164.amdgpu_ring_write.exit177_crit_edge
  %87 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ring1.i, align 4
  %89 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %wptr.i, align 8
  %inc.i170 = add i64 %90, 1
  store i64 %inc.i170, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %buf_mask.i, align 8
  %93 = trunc i64 %90 to i32
  %idxprom.i172 = and i32 %92, %93
  %arrayidx.i173 = getelementptr i32, ptr %88, i32 %idxprom.i172
  %94 = ptrtoint ptr %arrayidx.i173 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %and47, ptr %arrayidx.i173, align 4
  %95 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %ptr_mask.i, align 8
  %97 = load i64, ptr %wptr.i, align 8
  %and3.i175 = and i64 %97, %96
  store i64 %and3.i175, ptr %wptr.i, align 8
  %98 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %count_dw.i, align 8
  %dec.i176 = add i32 %99, -1
  store i32 %dec.i176, ptr %count_dw.i, align 8
  %100 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %me, align 8
  %arrayidx51 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %101
  %102 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx51, align 4
  %arrayidx52 = getelementptr i32, ptr %103, i32 1
  %104 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %105, 963
  %and54 = and i32 %add53, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i176)
  %cmp.i179 = icmp slt i32 %dec.i176, 1
  br i1 %cmp.i179, label %if.then.i180, label %amdgpu_ring_write.exit177.amdgpu_ring_write.exit190_crit_edge

amdgpu_ring_write.exit177.amdgpu_ring_write.exit190_crit_edge: ; preds = %amdgpu_ring_write.exit177
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit190

if.then.i180:                                     ; preds = %amdgpu_ring_write.exit177
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit190

amdgpu_ring_write.exit190:                        ; preds = %if.then.i180, %amdgpu_ring_write.exit177.amdgpu_ring_write.exit190_crit_edge
  %106 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ring1.i, align 4
  %108 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %wptr.i, align 8
  %inc.i183 = add i64 %109, 1
  store i64 %inc.i183, ptr %wptr.i, align 8
  %110 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buf_mask.i, align 8
  %112 = trunc i64 %109 to i32
  %idxprom.i185 = and i32 %111, %112
  %arrayidx.i186 = getelementptr i32, ptr %107, i32 %idxprom.i185
  %113 = ptrtoint ptr %arrayidx.i186 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 %and54, ptr %arrayidx.i186, align 4
  %114 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ptr_mask.i, align 8
  %116 = load i64, ptr %wptr.i, align 8
  %and3.i188 = and i64 %116, %115
  store i64 %and3.i188, ptr %wptr.i, align 8
  %117 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %count_dw.i, align 8
  %dec.i189 = add i32 %118, -1
  store i32 %dec.i189, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i189)
  %cmp.i192 = icmp slt i32 %dec.i189, 1
  br i1 %cmp.i192, label %if.then.i193, label %amdgpu_ring_write.exit190.amdgpu_ring_write.exit203_crit_edge

amdgpu_ring_write.exit190.amdgpu_ring_write.exit203_crit_edge: ; preds = %amdgpu_ring_write.exit190
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit203

if.then.i193:                                     ; preds = %amdgpu_ring_write.exit190
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit203

amdgpu_ring_write.exit203:                        ; preds = %if.then.i193, %amdgpu_ring_write.exit190.amdgpu_ring_write.exit203_crit_edge
  %119 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ring1.i, align 4
  %121 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %wptr.i, align 8
  %inc.i196 = add i64 %122, 1
  store i64 %inc.i196, ptr %wptr.i, align 8
  %123 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %buf_mask.i, align 8
  %125 = trunc i64 %122 to i32
  %idxprom.i198 = and i32 %124, %125
  %arrayidx.i199 = getelementptr i32, ptr %120, i32 %idxprom.i198
  %126 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 0, ptr %arrayidx.i199, align 4
  %127 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %ptr_mask.i, align 8
  %129 = load i64, ptr %wptr.i, align 8
  %and3.i201 = and i64 %129, %128
  store i64 %and3.i201, ptr %wptr.i, align 8
  %130 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %count_dw.i, align 8
  %dec.i202 = add i32 %131, -1
  store i32 %dec.i202, ptr %count_dw.i, align 8
  %132 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %me, align 8
  %arrayidx60 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %133
  %134 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx60, align 4
  %arrayidx61 = getelementptr i32, ptr %135, i32 1
  %136 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx61, align 4
  %add62 = add i32 %137, 964
  %and63 = and i32 %add62, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i202)
  %cmp.i205 = icmp slt i32 %dec.i202, 1
  br i1 %cmp.i205, label %if.then.i206, label %amdgpu_ring_write.exit203.amdgpu_ring_write.exit216_crit_edge

amdgpu_ring_write.exit203.amdgpu_ring_write.exit216_crit_edge: ; preds = %amdgpu_ring_write.exit203
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit216

if.then.i206:                                     ; preds = %amdgpu_ring_write.exit203
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit216

amdgpu_ring_write.exit216:                        ; preds = %if.then.i206, %amdgpu_ring_write.exit203.amdgpu_ring_write.exit216_crit_edge
  %138 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ring1.i, align 4
  %140 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %wptr.i, align 8
  %inc.i209 = add i64 %141, 1
  store i64 %inc.i209, ptr %wptr.i, align 8
  %142 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %buf_mask.i, align 8
  %144 = trunc i64 %141 to i32
  %idxprom.i211 = and i32 %143, %144
  %arrayidx.i212 = getelementptr i32, ptr %139, i32 %idxprom.i211
  %145 = ptrtoint ptr %arrayidx.i212 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 %and63, ptr %arrayidx.i212, align 4
  %146 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %ptr_mask.i, align 8
  %148 = load i64, ptr %wptr.i, align 8
  %and3.i214 = and i64 %148, %147
  store i64 %and3.i214, ptr %wptr.i, align 8
  %149 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %count_dw.i, align 8
  %dec.i215 = add i32 %150, -1
  store i32 %dec.i215, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i215)
  %cmp.i218 = icmp slt i32 %dec.i215, 1
  br i1 %cmp.i218, label %if.then.i219, label %amdgpu_ring_write.exit216.amdgpu_ring_write.exit229_crit_edge

amdgpu_ring_write.exit216.amdgpu_ring_write.exit229_crit_edge: ; preds = %amdgpu_ring_write.exit216
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit229

if.then.i219:                                     ; preds = %amdgpu_ring_write.exit216
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit229

amdgpu_ring_write.exit229:                        ; preds = %if.then.i219, %amdgpu_ring_write.exit216.amdgpu_ring_write.exit229_crit_edge
  %151 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ring1.i, align 4
  %153 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %wptr.i, align 8
  %inc.i222 = add i64 %154, 1
  store i64 %inc.i222, ptr %wptr.i, align 8
  %155 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %buf_mask.i, align 8
  %157 = trunc i64 %154 to i32
  %idxprom.i224 = and i32 %156, %157
  %arrayidx.i225 = getelementptr i32, ptr %152, i32 %idxprom.i224
  %158 = ptrtoint ptr %arrayidx.i225 to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile i32 0, ptr %arrayidx.i225, align 4
  %159 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %ptr_mask.i, align 8
  %161 = load i64, ptr %wptr.i, align 8
  %and3.i227 = and i64 %161, %160
  store i64 %and3.i227, ptr %wptr.i, align 8
  %162 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %count_dw.i, align 8
  %dec.i228 = add i32 %163, -1
  store i32 %dec.i228, ptr %count_dw.i, align 8
  %164 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %me, align 8
  %arrayidx69 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %165
  %166 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx69, align 4
  %arrayidx70 = getelementptr i32, ptr %167, i32 1
  %168 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx70, align 4
  %add71 = add i32 %169, 965
  %and72 = and i32 %add71, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i228)
  %cmp.i231 = icmp slt i32 %dec.i228, 1
  br i1 %cmp.i231, label %if.then.i232, label %amdgpu_ring_write.exit229.amdgpu_ring_write.exit242_crit_edge

amdgpu_ring_write.exit229.amdgpu_ring_write.exit242_crit_edge: ; preds = %amdgpu_ring_write.exit229
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit242

if.then.i232:                                     ; preds = %amdgpu_ring_write.exit229
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit242

amdgpu_ring_write.exit242:                        ; preds = %if.then.i232, %amdgpu_ring_write.exit229.amdgpu_ring_write.exit242_crit_edge
  %170 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ring1.i, align 4
  %172 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %wptr.i, align 8
  %inc.i235 = add i64 %173, 1
  store i64 %inc.i235, ptr %wptr.i, align 8
  %174 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %buf_mask.i, align 8
  %176 = trunc i64 %173 to i32
  %idxprom.i237 = and i32 %175, %176
  %arrayidx.i238 = getelementptr i32, ptr %171, i32 %idxprom.i237
  %177 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile i32 %and72, ptr %arrayidx.i238, align 4
  %178 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %ptr_mask.i, align 8
  %180 = load i64, ptr %wptr.i, align 8
  %and3.i240 = and i64 %180, %179
  store i64 %and3.i240, ptr %wptr.i, align 8
  %181 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %count_dw.i, align 8
  %dec.i241 = add i32 %182, -1
  store i32 %dec.i241, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i241)
  %cmp.i244 = icmp slt i32 %dec.i241, 1
  br i1 %cmp.i244, label %if.then.i245, label %amdgpu_ring_write.exit242.amdgpu_ring_write.exit255_crit_edge

amdgpu_ring_write.exit242.amdgpu_ring_write.exit255_crit_edge: ; preds = %amdgpu_ring_write.exit242
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit255

if.then.i245:                                     ; preds = %amdgpu_ring_write.exit242
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit255

amdgpu_ring_write.exit255:                        ; preds = %if.then.i245, %amdgpu_ring_write.exit242.amdgpu_ring_write.exit255_crit_edge
  %183 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ring1.i, align 4
  %185 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %wptr.i, align 8
  %inc.i248 = add i64 %186, 1
  store i64 %inc.i248, ptr %wptr.i, align 8
  %187 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %buf_mask.i, align 8
  %189 = trunc i64 %186 to i32
  %idxprom.i250 = and i32 %188, %189
  %arrayidx.i251 = getelementptr i32, ptr %184, i32 %idxprom.i250
  %190 = ptrtoint ptr %arrayidx.i251 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile i32 0, ptr %arrayidx.i251, align 4
  %191 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %ptr_mask.i, align 8
  %193 = load i64, ptr %wptr.i, align 8
  %and3.i253 = and i64 %193, %192
  store i64 %and3.i253, ptr %wptr.i, align 8
  %194 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %count_dw.i, align 8
  %dec.i254 = add i32 %195, -1
  store i32 %dec.i254, ptr %count_dw.i, align 8
  %196 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %me, align 8
  %arrayidx78 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %197
  %198 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx78, align 4
  %arrayidx79 = getelementptr i32, ptr %199, i32 1
  %200 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx79, align 4
  %add80 = add i32 %201, 963
  %and81 = and i32 %add80, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i254)
  %cmp.i257 = icmp slt i32 %dec.i254, 1
  br i1 %cmp.i257, label %if.then.i258, label %amdgpu_ring_write.exit255.amdgpu_ring_write.exit268_crit_edge

amdgpu_ring_write.exit255.amdgpu_ring_write.exit268_crit_edge: ; preds = %amdgpu_ring_write.exit255
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit268

if.then.i258:                                     ; preds = %amdgpu_ring_write.exit255
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit268

amdgpu_ring_write.exit268:                        ; preds = %if.then.i258, %amdgpu_ring_write.exit255.amdgpu_ring_write.exit268_crit_edge
  %202 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ring1.i, align 4
  %204 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %wptr.i, align 8
  %inc.i261 = add i64 %205, 1
  store i64 %inc.i261, ptr %wptr.i, align 8
  %206 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %buf_mask.i, align 8
  %208 = trunc i64 %205 to i32
  %idxprom.i263 = and i32 %207, %208
  %arrayidx.i264 = getelementptr i32, ptr %203, i32 %idxprom.i263
  %209 = ptrtoint ptr %arrayidx.i264 to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile i32 %and81, ptr %arrayidx.i264, align 4
  %210 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %ptr_mask.i, align 8
  %212 = load i64, ptr %wptr.i, align 8
  %and3.i266 = and i64 %212, %211
  store i64 %and3.i266, ptr %wptr.i, align 8
  %213 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %count_dw.i, align 8
  %dec.i267 = add i32 %214, -1
  store i32 %dec.i267, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i267)
  %cmp.i270 = icmp slt i32 %dec.i267, 1
  br i1 %cmp.i270, label %if.then.i271, label %amdgpu_ring_write.exit268.amdgpu_ring_write.exit281_crit_edge

amdgpu_ring_write.exit268.amdgpu_ring_write.exit281_crit_edge: ; preds = %amdgpu_ring_write.exit268
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit281

if.then.i271:                                     ; preds = %amdgpu_ring_write.exit268
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit281

amdgpu_ring_write.exit281:                        ; preds = %if.then.i271, %amdgpu_ring_write.exit268.amdgpu_ring_write.exit281_crit_edge
  %215 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ring1.i, align 4
  %217 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %wptr.i, align 8
  %inc.i274 = add i64 %218, 1
  store i64 %inc.i274, ptr %wptr.i, align 8
  %219 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %buf_mask.i, align 8
  %221 = trunc i64 %218 to i32
  %idxprom.i276 = and i32 %220, %221
  %arrayidx.i277 = getelementptr i32, ptr %216, i32 %idxprom.i276
  %222 = ptrtoint ptr %arrayidx.i277 to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile i32 2, ptr %arrayidx.i277, align 4
  %223 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %ptr_mask.i, align 8
  %225 = load i64, ptr %wptr.i, align 8
  %and3.i279 = and i64 %225, %224
  store i64 %and3.i279, ptr %wptr.i, align 8
  %226 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %count_dw.i, align 8
  %dec.i280 = add i32 %227, -1
  store i32 %dec.i280, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %vmhub1 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vmhub1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmhub1, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 38
  %6 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmc_funcs, align 4
  %emit_flush_gpu_tlb = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %emit_flush_gpu_tlb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emit_flush_gpu_tlb, align 4
  %call = tail call i64 %9(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 9
  %12 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctx_addr_distance, align 4
  %mul = mul i32 %13, %vmid
  %add = add i32 %mul, %11
  %conv = trunc i64 %call to i32
  tail call void @uvd_v7_0_ring_emit_reg_wait(ptr noundef %ring, i32 noundef %add, i32 noundef %conv, i32 noundef -1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @uvd_v7_0_ring_emit_hdp_flush(ptr nocapture noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_ring_test_ring(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %8 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %me, align 8
  %arrayidx12 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %9
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %13, 1469
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef -889266515, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %me16 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %14 = ptrtoint ptr %me16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %me16, align 8
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %15
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %19, 1469
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add19, i32 noundef -889266515, i32 noundef 0) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %me23 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %20 = ptrtoint ptr %me23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %me23, align 8
  %arrayidx24 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %21
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx24, align 4
  %arrayidx25 = getelementptr i32, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx25, align 4
  %add26 = add i32 %25, 1469
  %and27 = and i32 %add26, 65535
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i = icmp slt i32 %27, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %31, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i = and i32 %33, %34
  %arrayidx.i = getelementptr i32, ptr %29, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %and27, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %38, %37
  store i64 %and3.i, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %40, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i109 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i109, label %if.then.i110, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit120_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit120_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit120

if.then.i110:                                     ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit120

amdgpu_ring_write.exit120:                        ; preds = %if.then.i110, %amdgpu_ring_write.exit.amdgpu_ring_write.exit120_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i113 = add i64 %44, 1
  store i64 %inc.i113, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i115 = and i32 %46, %47
  %arrayidx.i116 = getelementptr i32, ptr %42, i32 %idxprom.i115
  %48 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 -559038737, ptr %arrayidx.i116, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i118 = and i64 %51, %50
  store i64 %and3.i118, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i119 = add i32 %53, -1
  store i32 %dec.i119, ptr %count_dw.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring) #9
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp121.not = icmp eq i32 %55, 0
  br i1 %cmp121.not, label %amdgpu_ring_write.exit120.for.end_crit_edge, label %for.body.lr.ph

amdgpu_ring_write.exit120.for.end_crit_edge:      ; preds = %amdgpu_ring_write.exit120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %amdgpu_ring_write.exit120
  %funcs36 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  br label %for.body

for.body:                                         ; preds = %if.end66.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end66.for.body_crit_edge ]
  %56 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt, align 8
  %and31 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %for.body.cond.false55_crit_edge, label %land.lhs.true33

for.body.cond.false55_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false55

land.lhs.true33:                                  ; preds = %for.body
  %58 = ptrtoint ptr %funcs36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs36, align 4
  %tobool37.not = icmp eq ptr %59, null
  br i1 %tobool37.not, label %land.lhs.true33.cond.false55_crit_edge, label %land.lhs.true38

land.lhs.true33.cond.false55_crit_edge:           ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false55

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sriov_rreg, align 4
  %tobool42.not = icmp eq ptr %61, null
  br i1 %tobool42.not, label %land.lhs.true38.cond.false55_crit_edge, label %cond.true43

land.lhs.true38.cond.false55_crit_edge:           ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false55

cond.true43:                                      ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %me23 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %me23, align 8
  %arrayidx51 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %63
  %64 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx51, align 4
  %arrayidx52 = getelementptr i32, ptr %65, i32 1
  %66 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %67, 1469
  %call54 = tail call i32 %61(ptr noundef %1, i32 noundef %add53, i32 noundef 0, i32 noundef 16) #9
  br label %cond.end63

cond.false55:                                     ; preds = %land.lhs.true38.cond.false55_crit_edge, %land.lhs.true33.cond.false55_crit_edge, %for.body.cond.false55_crit_edge
  %68 = ptrtoint ptr %me23 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %me23, align 8
  %arrayidx59 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %69
  %70 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx59, align 4
  %arrayidx60 = getelementptr i32, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx60, align 4
  %add61 = add i32 %73, 1469
  %call62 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add61, i32 noundef 0) #9
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false55, %cond.true43
  %cond = phi i32 [ %call54, %cond.true43 ], [ %call62, %cond.false55 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %cond)
  %cmp64 = icmp eq i32 %cond, -559038737
  br i1 %cmp64, label %cond.end63.for.end_crit_edge, label %if.end66

cond.end63.for.end_crit_edge:                     ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end66:                                         ; preds = %cond.end63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748) #9
  %inc = add nuw i32 %i.0122, 1
  %75 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %76
  br i1 %cmp, label %if.end66.for.body_crit_edge, label %if.end66.for.end_crit_edge

if.end66.for.end_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end66.for.body_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end66.for.end_crit_edge, %cond.end63.for.end_crit_edge, %amdgpu_ring_write.exit120.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %amdgpu_ring_write.exit120.for.end_crit_edge ], [ %i.0122, %cond.end63.for.end_crit_edge ], [ %inc, %if.end66.for.end_crit_edge ]
  %77 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %78)
  %cmp68.not = icmp ult i32 %i.0.lcssa, %78
  %spec.select = select i1 %cmp68.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ %call, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_ring_test_ib(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_ring_insert_nop(ptr nocapture noundef %ring, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wptr, align 8
  %rem = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem)
  %tobool.not = icmp ne i64 %rem, 0
  %rem2 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %tobool3 = icmp ne i32 %rem2, 0
  %4 = or i1 %tobool3, %tobool.not
  br i1 %4, label %do.end, label %entry.if.end_crit_edge, !prof !74

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1415, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp47.not = icmp ult i32 %count, 2
  br i1 %cmp47.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %div33 = lshr i32 %count, 1
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %amdgpu_ring_write.exit46.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %amdgpu_ring_write.exit46.for.body_crit_edge ]
  %5 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %me, align 8
  %arrayidx23 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %6
  %7 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx24, align 4
  %add = add i32 %10, 1023
  %and = and i32 %add, 65535
  %11 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp slt i32 %12, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.amdgpu_ring_write.exit_crit_edge

for.body.amdgpu_ring_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %for.body.amdgpu_ring_write.exit_crit_edge
  %13 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring1.i, align 4
  %15 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %wptr, align 8
  %inc.i = add i64 %16, 1
  store i64 %inc.i, ptr %wptr, align 8
  %17 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf_mask.i, align 8
  %19 = trunc i64 %16 to i32
  %idxprom.i = and i32 %18, %19
  %arrayidx.i = getelementptr i32, ptr %14, i32 %idxprom.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %and, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ptr_mask.i, align 8
  %23 = load i64, ptr %wptr, align 8
  %and3.i = and i64 %23, %22
  store i64 %and3.i, ptr %wptr, align 8
  %24 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i35 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i35, label %if.then.i36, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit46_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit46_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit46

if.then.i36:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit46

amdgpu_ring_write.exit46:                         ; preds = %if.then.i36, %amdgpu_ring_write.exit.amdgpu_ring_write.exit46_crit_edge
  %26 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ring1.i, align 4
  %28 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %wptr, align 8
  %inc.i39 = add i64 %29, 1
  store i64 %inc.i39, ptr %wptr, align 8
  %30 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_mask.i, align 8
  %32 = trunc i64 %29 to i32
  %idxprom.i41 = and i32 %31, %32
  %arrayidx.i42 = getelementptr i32, ptr %27, i32 %idxprom.i41
  %33 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %arrayidx.i42, align 4
  %34 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ptr_mask.i, align 8
  %36 = load i64, ptr %wptr, align 8
  %and3.i44 = and i64 %36, %35
  store i64 %and3.i44, ptr %wptr, align 8
  %37 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count_dw.i, align 8
  %dec.i45 = add i32 %38, -1
  store i32 %dec.i45, ptr %count_dw.i, align 8
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %div33
  br i1 %exitcond.not, label %amdgpu_ring_write.exit46.for.end_crit_edge, label %amdgpu_ring_write.exit46.for.body_crit_edge

amdgpu_ring_write.exit46.for.body_crit_edge:      ; preds = %amdgpu_ring_write.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

amdgpu_ring_write.exit46.for.end_crit_edge:       ; preds = %amdgpu_ring_write.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %amdgpu_ring_write.exit46.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_generic_pad_ib(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_uvd_ring_begin_use(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_uvd_ring_end_use(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_ring_emit_wreg(ptr noundef %ring, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %2 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %me, align 8
  %arrayidx2 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %3
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %7, 964
  %and = and i32 %add, 65535
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %8 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp slt i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %10 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %12 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %13, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %14 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_mask.i, align 8
  %16 = trunc i64 %13 to i32
  %idxprom.i = and i32 %15, %16
  %arrayidx.i = getelementptr i32, ptr %11, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %and, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %18 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ptr_mask.i, align 8
  %20 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %20, %19
  store i64 %and3.i, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %shl = shl i32 %reg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i35 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i35, label %if.then.i36, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit46_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit46_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit46

if.then.i36:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit46

amdgpu_ring_write.exit46:                         ; preds = %if.then.i36, %amdgpu_ring_write.exit.amdgpu_ring_write.exit46_crit_edge
  %23 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring1.i, align 4
  %25 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wptr.i, align 8
  %inc.i39 = add i64 %26, 1
  store i64 %inc.i39, ptr %wptr.i, align 8
  %27 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_mask.i, align 8
  %29 = trunc i64 %26 to i32
  %idxprom.i41 = and i32 %28, %29
  %arrayidx.i42 = getelementptr i32, ptr %24, i32 %idxprom.i41
  %30 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %shl, ptr %arrayidx.i42, align 4
  %31 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ptr_mask.i, align 8
  %33 = load i64, ptr %wptr.i, align 8
  %and3.i44 = and i64 %33, %32
  store i64 %and3.i44, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count_dw.i, align 8
  %dec.i45 = add i32 %35, -1
  store i32 %dec.i45, ptr %count_dw.i, align 8
  %36 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %me, align 8
  %arrayidx8 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %37
  %38 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %41, 965
  %and11 = and i32 %add10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i45)
  %cmp.i48 = icmp slt i32 %dec.i45, 1
  br i1 %cmp.i48, label %if.then.i49, label %amdgpu_ring_write.exit46.amdgpu_ring_write.exit59_crit_edge

amdgpu_ring_write.exit46.amdgpu_ring_write.exit59_crit_edge: ; preds = %amdgpu_ring_write.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit59

if.then.i49:                                      ; preds = %amdgpu_ring_write.exit46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit59

amdgpu_ring_write.exit59:                         ; preds = %if.then.i49, %amdgpu_ring_write.exit46.amdgpu_ring_write.exit59_crit_edge
  %42 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring1.i, align 4
  %44 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %wptr.i, align 8
  %inc.i52 = add i64 %45, 1
  store i64 %inc.i52, ptr %wptr.i, align 8
  %46 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf_mask.i, align 8
  %48 = trunc i64 %45 to i32
  %idxprom.i54 = and i32 %47, %48
  %arrayidx.i55 = getelementptr i32, ptr %43, i32 %idxprom.i54
  %49 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %and11, ptr %arrayidx.i55, align 4
  %50 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ptr_mask.i, align 8
  %52 = load i64, ptr %wptr.i, align 8
  %and3.i57 = and i64 %52, %51
  store i64 %and3.i57, ptr %wptr.i, align 8
  %53 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count_dw.i, align 8
  %dec.i58 = add i32 %54, -1
  store i32 %dec.i58, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i58)
  %cmp.i61 = icmp slt i32 %dec.i58, 1
  br i1 %cmp.i61, label %if.then.i62, label %amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge

amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge: ; preds = %amdgpu_ring_write.exit59
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit72

if.then.i62:                                      ; preds = %amdgpu_ring_write.exit59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit72

amdgpu_ring_write.exit72:                         ; preds = %if.then.i62, %amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge
  %55 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring1.i, align 4
  %57 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %wptr.i, align 8
  %inc.i65 = add i64 %58, 1
  store i64 %inc.i65, ptr %wptr.i, align 8
  %59 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf_mask.i, align 8
  %61 = trunc i64 %58 to i32
  %idxprom.i67 = and i32 %60, %61
  %arrayidx.i68 = getelementptr i32, ptr %56, i32 %idxprom.i67
  %62 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %val, ptr %arrayidx.i68, align 4
  %63 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %ptr_mask.i, align 8
  %65 = load i64, ptr %wptr.i, align 8
  %and3.i70 = and i64 %65, %64
  store i64 %and3.i70, ptr %wptr.i, align 8
  %66 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count_dw.i, align 8
  %dec.i71 = add i32 %67, -1
  store i32 %dec.i71, ptr %count_dw.i, align 8
  %68 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %me, align 8
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %69
  %70 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr i32, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %73, 963
  %and20 = and i32 %add19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i71)
  %cmp.i74 = icmp slt i32 %dec.i71, 1
  br i1 %cmp.i74, label %if.then.i75, label %amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge

amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge: ; preds = %amdgpu_ring_write.exit72
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit85

if.then.i75:                                      ; preds = %amdgpu_ring_write.exit72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit85

amdgpu_ring_write.exit85:                         ; preds = %if.then.i75, %amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge
  %74 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ring1.i, align 4
  %76 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %wptr.i, align 8
  %inc.i78 = add i64 %77, 1
  store i64 %inc.i78, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buf_mask.i, align 8
  %80 = trunc i64 %77 to i32
  %idxprom.i80 = and i32 %79, %80
  %arrayidx.i81 = getelementptr i32, ptr %75, i32 %idxprom.i80
  %81 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %and20, ptr %arrayidx.i81, align 4
  %82 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %ptr_mask.i, align 8
  %84 = load i64, ptr %wptr.i, align 8
  %and3.i83 = and i64 %84, %83
  store i64 %and3.i83, ptr %wptr.i, align 8
  %85 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count_dw.i, align 8
  %dec.i84 = add i32 %86, -1
  store i32 %dec.i84, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i84)
  %cmp.i87 = icmp slt i32 %dec.i84, 1
  br i1 %cmp.i87, label %if.then.i88, label %amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge

amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge: ; preds = %amdgpu_ring_write.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit98

if.then.i88:                                      ; preds = %amdgpu_ring_write.exit85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit98

amdgpu_ring_write.exit98:                         ; preds = %if.then.i88, %amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge
  %87 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ring1.i, align 4
  %89 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %wptr.i, align 8
  %inc.i91 = add i64 %90, 1
  store i64 %inc.i91, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %buf_mask.i, align 8
  %93 = trunc i64 %90 to i32
  %idxprom.i93 = and i32 %92, %93
  %arrayidx.i94 = getelementptr i32, ptr %88, i32 %idxprom.i93
  %94 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 8, ptr %arrayidx.i94, align 4
  %95 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %ptr_mask.i, align 8
  %97 = load i64, ptr %wptr.i, align 8
  %and3.i96 = and i64 %97, %96
  store i64 %and3.i96, ptr %wptr.i, align 8
  %98 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %count_dw.i, align 8
  %dec.i97 = add i32 %99, -1
  store i32 %dec.i97, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_ring_emit_reg_wait(ptr noundef %ring, i32 noundef %reg, i32 noundef %val, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %2 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %me, align 8
  %arrayidx2 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %3
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %7, 964
  %and = and i32 %add, 65535
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %8 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp slt i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %10 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %12 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %13, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %14 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_mask.i, align 8
  %16 = trunc i64 %13 to i32
  %idxprom.i = and i32 %15, %16
  %arrayidx.i = getelementptr i32, ptr %11, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %and, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %18 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ptr_mask.i, align 8
  %20 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %20, %19
  store i64 %and3.i, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %shl = shl i32 %reg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i48 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i48, label %if.then.i49, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit59_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit59_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit59

if.then.i49:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit59

amdgpu_ring_write.exit59:                         ; preds = %if.then.i49, %amdgpu_ring_write.exit.amdgpu_ring_write.exit59_crit_edge
  %23 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring1.i, align 4
  %25 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wptr.i, align 8
  %inc.i52 = add i64 %26, 1
  store i64 %inc.i52, ptr %wptr.i, align 8
  %27 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_mask.i, align 8
  %29 = trunc i64 %26 to i32
  %idxprom.i54 = and i32 %28, %29
  %arrayidx.i55 = getelementptr i32, ptr %24, i32 %idxprom.i54
  %30 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %shl, ptr %arrayidx.i55, align 4
  %31 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ptr_mask.i, align 8
  %33 = load i64, ptr %wptr.i, align 8
  %and3.i57 = and i64 %33, %32
  store i64 %and3.i57, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count_dw.i, align 8
  %dec.i58 = add i32 %35, -1
  store i32 %dec.i58, ptr %count_dw.i, align 8
  %36 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %me, align 8
  %arrayidx8 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %37
  %38 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %41, 965
  %and11 = and i32 %add10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i58)
  %cmp.i61 = icmp slt i32 %dec.i58, 1
  br i1 %cmp.i61, label %if.then.i62, label %amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge

amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge: ; preds = %amdgpu_ring_write.exit59
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit72

if.then.i62:                                      ; preds = %amdgpu_ring_write.exit59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit72

amdgpu_ring_write.exit72:                         ; preds = %if.then.i62, %amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge
  %42 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring1.i, align 4
  %44 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %wptr.i, align 8
  %inc.i65 = add i64 %45, 1
  store i64 %inc.i65, ptr %wptr.i, align 8
  %46 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf_mask.i, align 8
  %48 = trunc i64 %45 to i32
  %idxprom.i67 = and i32 %47, %48
  %arrayidx.i68 = getelementptr i32, ptr %43, i32 %idxprom.i67
  %49 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %and11, ptr %arrayidx.i68, align 4
  %50 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ptr_mask.i, align 8
  %52 = load i64, ptr %wptr.i, align 8
  %and3.i70 = and i64 %52, %51
  store i64 %and3.i70, ptr %wptr.i, align 8
  %53 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count_dw.i, align 8
  %dec.i71 = add i32 %54, -1
  store i32 %dec.i71, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i71)
  %cmp.i74 = icmp slt i32 %dec.i71, 1
  br i1 %cmp.i74, label %if.then.i75, label %amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge

amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge: ; preds = %amdgpu_ring_write.exit72
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit85

if.then.i75:                                      ; preds = %amdgpu_ring_write.exit72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit85

amdgpu_ring_write.exit85:                         ; preds = %if.then.i75, %amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge
  %55 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring1.i, align 4
  %57 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %wptr.i, align 8
  %inc.i78 = add i64 %58, 1
  store i64 %inc.i78, ptr %wptr.i, align 8
  %59 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf_mask.i, align 8
  %61 = trunc i64 %58 to i32
  %idxprom.i80 = and i32 %60, %61
  %arrayidx.i81 = getelementptr i32, ptr %56, i32 %idxprom.i80
  %62 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %val, ptr %arrayidx.i81, align 4
  %63 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %ptr_mask.i, align 8
  %65 = load i64, ptr %wptr.i, align 8
  %and3.i83 = and i64 %65, %64
  store i64 %and3.i83, ptr %wptr.i, align 8
  %66 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count_dw.i, align 8
  %dec.i84 = add i32 %67, -1
  store i32 %dec.i84, ptr %count_dw.i, align 8
  %68 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %me, align 8
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %69
  %70 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr i32, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %73, 1034
  %and20 = and i32 %add19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i84)
  %cmp.i87 = icmp slt i32 %dec.i84, 1
  br i1 %cmp.i87, label %if.then.i88, label %amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge

amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge: ; preds = %amdgpu_ring_write.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit98

if.then.i88:                                      ; preds = %amdgpu_ring_write.exit85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit98

amdgpu_ring_write.exit98:                         ; preds = %if.then.i88, %amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge
  %74 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ring1.i, align 4
  %76 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %wptr.i, align 8
  %inc.i91 = add i64 %77, 1
  store i64 %inc.i91, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buf_mask.i, align 8
  %80 = trunc i64 %77 to i32
  %idxprom.i93 = and i32 %79, %80
  %arrayidx.i94 = getelementptr i32, ptr %75, i32 %idxprom.i93
  %81 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %and20, ptr %arrayidx.i94, align 4
  %82 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %ptr_mask.i, align 8
  %84 = load i64, ptr %wptr.i, align 8
  %and3.i96 = and i64 %84, %83
  store i64 %and3.i96, ptr %wptr.i, align 8
  %85 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count_dw.i, align 8
  %dec.i97 = add i32 %86, -1
  store i32 %dec.i97, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i97)
  %cmp.i100 = icmp slt i32 %dec.i97, 1
  br i1 %cmp.i100, label %if.then.i101, label %amdgpu_ring_write.exit98.amdgpu_ring_write.exit111_crit_edge

amdgpu_ring_write.exit98.amdgpu_ring_write.exit111_crit_edge: ; preds = %amdgpu_ring_write.exit98
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit111

if.then.i101:                                     ; preds = %amdgpu_ring_write.exit98
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit111

amdgpu_ring_write.exit111:                        ; preds = %if.then.i101, %amdgpu_ring_write.exit98.amdgpu_ring_write.exit111_crit_edge
  %87 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ring1.i, align 4
  %89 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %wptr.i, align 8
  %inc.i104 = add i64 %90, 1
  store i64 %inc.i104, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %buf_mask.i, align 8
  %93 = trunc i64 %90 to i32
  %idxprom.i106 = and i32 %92, %93
  %arrayidx.i107 = getelementptr i32, ptr %88, i32 %idxprom.i106
  %94 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %mask, ptr %arrayidx.i107, align 4
  %95 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %ptr_mask.i, align 8
  %97 = load i64, ptr %wptr.i, align 8
  %and3.i109 = and i64 %97, %96
  store i64 %and3.i109, ptr %wptr.i, align 8
  %98 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %count_dw.i, align 8
  %dec.i110 = add i32 %99, -1
  store i32 %dec.i110, ptr %count_dw.i, align 8
  %100 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %me, align 8
  %arrayidx26 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %101
  %102 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx26, align 4
  %arrayidx27 = getelementptr i32, ptr %103, i32 1
  %104 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %105, 963
  %and29 = and i32 %add28, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i110)
  %cmp.i113 = icmp slt i32 %dec.i110, 1
  br i1 %cmp.i113, label %if.then.i114, label %amdgpu_ring_write.exit111.amdgpu_ring_write.exit124_crit_edge

amdgpu_ring_write.exit111.amdgpu_ring_write.exit124_crit_edge: ; preds = %amdgpu_ring_write.exit111
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit124

if.then.i114:                                     ; preds = %amdgpu_ring_write.exit111
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit124

amdgpu_ring_write.exit124:                        ; preds = %if.then.i114, %amdgpu_ring_write.exit111.amdgpu_ring_write.exit124_crit_edge
  %106 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ring1.i, align 4
  %108 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %wptr.i, align 8
  %inc.i117 = add i64 %109, 1
  store i64 %inc.i117, ptr %wptr.i, align 8
  %110 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buf_mask.i, align 8
  %112 = trunc i64 %109 to i32
  %idxprom.i119 = and i32 %111, %112
  %arrayidx.i120 = getelementptr i32, ptr %107, i32 %idxprom.i119
  %113 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 %and29, ptr %arrayidx.i120, align 4
  %114 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ptr_mask.i, align 8
  %116 = load i64, ptr %wptr.i, align 8
  %and3.i122 = and i64 %116, %115
  store i64 %and3.i122, ptr %wptr.i, align 8
  %117 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %count_dw.i, align 8
  %dec.i123 = add i32 %118, -1
  store i32 %dec.i123, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i123)
  %cmp.i126 = icmp slt i32 %dec.i123, 1
  br i1 %cmp.i126, label %if.then.i127, label %amdgpu_ring_write.exit124.amdgpu_ring_write.exit137_crit_edge

amdgpu_ring_write.exit124.amdgpu_ring_write.exit137_crit_edge: ; preds = %amdgpu_ring_write.exit124
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit137

if.then.i127:                                     ; preds = %amdgpu_ring_write.exit124
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit137

amdgpu_ring_write.exit137:                        ; preds = %if.then.i127, %amdgpu_ring_write.exit124.amdgpu_ring_write.exit137_crit_edge
  %119 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ring1.i, align 4
  %121 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %wptr.i, align 8
  %inc.i130 = add i64 %122, 1
  store i64 %inc.i130, ptr %wptr.i, align 8
  %123 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %buf_mask.i, align 8
  %125 = trunc i64 %122 to i32
  %idxprom.i132 = and i32 %124, %125
  %arrayidx.i133 = getelementptr i32, ptr %120, i32 %idxprom.i132
  %126 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 12, ptr %arrayidx.i133, align 4
  %127 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %ptr_mask.i, align 8
  %129 = load i64, ptr %wptr.i, align 8
  %and3.i135 = and i64 %129, %128
  store i64 %and3.i135, ptr %wptr.i, align 8
  %130 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %count_dw.i, align 8
  %dec.i136 = add i32 %131, -1
  store i32 %dec.i136, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_emit_reg_write_reg_wait_helper(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @uvd_v7_0_enc_ring_get_rptr(ptr noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %2 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %me, align 8
  %ring_enc = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 7, i32 %3, i32 5
  %cmp = icmp eq ptr %ring_enc, %ring
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true4

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_rreg, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true4.cond.false_crit_edge, label %cond.true

land.lhs.true4.cond.false_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %3
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add = add i32 %13, 1065
  %call = tail call i32 %9(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #9
  br label %cleanup

cond.false:                                       ; preds = %land.lhs.true4.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %3
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %17, 1065
  %call23 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add22, i32 noundef 0) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.cond.false51_crit_edge, label %land.lhs.true28

if.else.cond.false51_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false51

land.lhs.true28:                                  ; preds = %if.else
  %funcs31 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs31, align 4
  %tobool32.not = icmp eq ptr %19, null
  br i1 %tobool32.not, label %land.lhs.true28.cond.false51_crit_edge, label %land.lhs.true33

land.lhs.true28.cond.false51_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false51

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %sriov_rreg37 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %sriov_rreg37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_rreg37, align 4
  %tobool38.not = icmp eq ptr %21, null
  br i1 %tobool38.not, label %land.lhs.true33.cond.false51_crit_edge, label %cond.true39

land.lhs.true33.cond.false51_crit_edge:           ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false51

cond.true39:                                      ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %3
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx47, align 4
  %arrayidx48 = getelementptr i32, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %25, 1060
  %call50 = tail call i32 %21(ptr noundef %1, i32 noundef %add49, i32 noundef 0, i32 noundef 16) #9
  br label %cleanup

cond.false51:                                     ; preds = %land.lhs.true33.cond.false51_crit_edge, %land.lhs.true28.cond.false51_crit_edge, %if.else.cond.false51_crit_edge
  %arrayidx55 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %3
  %26 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx55, align 4
  %arrayidx56 = getelementptr i32, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx56, align 4
  %add57 = add i32 %29, 1060
  %call58 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add57, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.false51, %cond.true39, %cond.false, %cond.true
  %retval.0.in = phi i32 [ %call, %cond.true ], [ %call23, %cond.false ], [ %call50, %cond.true39 ], [ %call58, %cond.false51 ]
  %retval.0 = zext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @uvd_v7_0_enc_ring_get_wptr(ptr noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wb2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %4 = ptrtoint ptr %wb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb2, align 4
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %6 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %10 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %me, align 8
  %ring_enc = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 7, i32 %11, i32 5
  %cmp = icmp eq ptr %ring_enc, %ring
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %12 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %virt, align 8
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  br i1 %tobool7.not, label %if.then6.cond.false_crit_edge, label %land.lhs.true

if.then6.cond.false_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then6
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true9

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true9:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sriov_rreg, align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %land.lhs.true9.cond.false_crit_edge, label %cond.true

land.lhs.true9.cond.false_crit_edge:              ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %11
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr i32, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx21, align 4
  %add = add i32 %21, 1066
  %call = tail call i32 %17(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #9
  br label %cleanup

cond.false:                                       ; preds = %land.lhs.true9.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then6.cond.false_crit_edge
  %arrayidx25 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %11
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx25, align 4
  %arrayidx26 = getelementptr i32, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %25, 1066
  %call28 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add27, i32 noundef 0) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool7.not, label %if.else.cond.false57_crit_edge, label %land.lhs.true34

if.else.cond.false57_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false57

land.lhs.true34:                                  ; preds = %if.else
  %funcs37 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %26 = ptrtoint ptr %funcs37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %funcs37, align 4
  %tobool38.not = icmp eq ptr %27, null
  br i1 %tobool38.not, label %land.lhs.true34.cond.false57_crit_edge, label %land.lhs.true39

land.lhs.true34.cond.false57_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false57

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %sriov_rreg43 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %sriov_rreg43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sriov_rreg43, align 4
  %tobool44.not = icmp eq ptr %29, null
  br i1 %tobool44.not, label %land.lhs.true39.cond.false57_crit_edge, label %cond.true45

land.lhs.true39.cond.false57_crit_edge:           ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false57

cond.true45:                                      ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx53 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %11
  %30 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx53, align 4
  %arrayidx54 = getelementptr i32, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx54, align 4
  %add55 = add i32 %33, 1061
  %call56 = tail call i32 %29(ptr noundef %1, i32 noundef %add55, i32 noundef 0, i32 noundef 16) #9
  br label %cleanup

cond.false57:                                     ; preds = %land.lhs.true39.cond.false57_crit_edge, %land.lhs.true34.cond.false57_crit_edge, %if.else.cond.false57_crit_edge
  %arrayidx61 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %11
  %34 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx61, align 4
  %arrayidx62 = getelementptr i32, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx62, align 4
  %add63 = add i32 %37, 1061
  %call64 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add63, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.false57, %cond.true45, %cond.false, %cond.true, %if.then
  %retval.0.in = phi i32 [ %9, %if.then ], [ %call, %cond.true ], [ %call28, %cond.false ], [ %call56, %cond.true45 ], [ %call64, %cond.false57 ]
  %retval.0 = zext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_enc_ring_set_wptr(ptr noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %5 to i32
  %wb2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %6 = ptrtoint ptr %wb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wb2, align 4
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %8 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %conv, ptr %arrayidx, align 4
  %doorbell_index = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 23
  %11 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %doorbell_index, align 8
  %13 = load i64, ptr %wptr, align 8
  %conv5 = trunc i64 %13 to i32
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %1, i32 noundef %12, i32 noundef %conv5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %14 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %me, align 8
  %ring_enc = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 7, i32 %15, i32 5
  %cmp = icmp eq ptr %ring_enc, %ring
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and10 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  br i1 %tobool11.not, label %if.then9.cond.false_crit_edge, label %land.lhs.true

if.then9.cond.false_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then9
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true13

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true13:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %land.lhs.true13.cond.false_crit_edge, label %cond.true

land.lhs.true13.cond.false_crit_edge:             ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %15
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx24, align 4
  %arrayidx25 = getelementptr i32, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx25, align 4
  %add = add i32 %25, 1066
  %wptr26 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %26 = ptrtoint ptr %wptr26 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %wptr26, align 8
  %conv28 = trunc i64 %27 to i32
  tail call void %21(ptr noundef %1, i32 noundef %add, i32 noundef %conv28, i32 noundef 0, i32 noundef 16) #9
  br label %cleanup

cond.false:                                       ; preds = %land.lhs.true13.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then9.cond.false_crit_edge
  %arrayidx32 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %15
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx32, align 4
  %arrayidx33 = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %31, 1066
  %wptr35 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %32 = ptrtoint ptr %wptr35 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wptr35, align 8
  %conv37 = trunc i64 %33 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add34, i32 noundef %conv37, i32 noundef 0) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool11.not, label %if.else.cond.false67_crit_edge, label %land.lhs.true42

if.else.cond.false67_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false67

land.lhs.true42:                                  ; preds = %if.else
  %funcs45 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %34 = ptrtoint ptr %funcs45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs45, align 4
  %tobool46.not = icmp eq ptr %35, null
  br i1 %tobool46.not, label %land.lhs.true42.cond.false67_crit_edge, label %land.lhs.true47

land.lhs.true42.cond.false67_crit_edge:           ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false67

land.lhs.true47:                                  ; preds = %land.lhs.true42
  %sriov_wreg51 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sriov_wreg51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_wreg51, align 4
  %tobool52.not = icmp eq ptr %37, null
  br i1 %tobool52.not, label %land.lhs.true47.cond.false67_crit_edge, label %cond.true53

land.lhs.true47.cond.false67_crit_edge:           ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false67

cond.true53:                                      ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx61 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %15
  %38 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx61, align 4
  %arrayidx62 = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx62, align 4
  %add63 = add i32 %41, 1061
  %wptr64 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %42 = ptrtoint ptr %wptr64 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %wptr64, align 8
  %conv66 = trunc i64 %43 to i32
  tail call void %37(ptr noundef %1, i32 noundef %add63, i32 noundef %conv66, i32 noundef 0, i32 noundef 16) #9
  br label %cleanup

cond.false67:                                     ; preds = %land.lhs.true47.cond.false67_crit_edge, %land.lhs.true42.cond.false67_crit_edge, %if.else.cond.false67_crit_edge
  %arrayidx71 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %15
  %44 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx71, align 4
  %arrayidx72 = getelementptr i32, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx72, align 4
  %add73 = add i32 %47, 1061
  %wptr74 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %48 = ptrtoint ptr %wptr74 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %wptr74, align 8
  %conv76 = trunc i64 %49 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add73, i32 noundef %conv76, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.false67, %cond.true53, %cond.false, %cond.true, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_enc_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit24

if.then.i14:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit37

if.then.i27:                                      ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit50

if.then.i40:                                      ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit63

if.then.i53:                                      ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
define internal void @uvd_v7_0_enc_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !73

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1219, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit41

if.then.i31:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit54

if.then.i44:                                      ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
define internal void @uvd_v7_0_enc_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %vmhub1 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vmhub1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmhub1, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 38
  %6 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmc_funcs, align 4
  %emit_flush_gpu_tlb = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %emit_flush_gpu_tlb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emit_flush_gpu_tlb, align 4
  %call = tail call i64 %9(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 9
  %12 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctx_addr_distance, align 4
  %mul = mul i32 %13, %vmid
  %add = add i32 %mul, %11
  %conv = trunc i64 %call to i32
  tail call void @uvd_v7_0_enc_ring_emit_reg_wait(ptr noundef %ring, i32 noundef %add, i32 noundef %conv, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_enc_ring_test_ring(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %get_rptr = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %get_rptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_rptr, align 4
  %call5 = tail call i64 %7(ptr noundef %ring) #9
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %8 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp slt i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %if.end4.amdgpu_ring_write.exit_crit_edge

if.end4.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end4.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %10 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %12 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %13, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %14 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_mask.i, align 8
  %16 = trunc i64 %13 to i32
  %idxprom.i = and i32 %15, %16
  %arrayidx.i = getelementptr i32, ptr %11, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %18 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ptr_mask.i, align 8
  %20 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %20, %19
  store i64 %and3.i, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring) #9
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp36.not = icmp eq i32 %24, 0
  br i1 %cmp36.not, label %amdgpu_ring_write.exit.for.end_crit_edge, label %for.body.lr.ph

amdgpu_ring_write.exit.for.end_crit_edge:         ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %amdgpu_ring_write.exit
  %conv10 = and i64 %call5, 4294967295
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %25 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs, align 4
  %get_rptr8 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %get_rptr8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_rptr8, align 4
  %call9 = tail call i64 %28(ptr noundef %ring) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %conv10)
  %cmp11.not = icmp eq i64 %call9, %conv10
  br i1 %cmp11.not, label %if.end14, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #9
  %inc = add nuw i32 %i.037, 1
  %30 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %if.end14.for.body_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %for.body.for.end_crit_edge, %amdgpu_ring_write.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %amdgpu_ring_write.exit.for.end_crit_edge ], [ %i.037, %for.body.for.end_crit_edge ], [ %inc, %if.end14.for.end_crit_edge ]
  %32 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %33)
  %cmp16.not = icmp ult i32 %i.0.lcssa, %33
  %spec.select = select i1 %cmp16.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_enc_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) #0 align 64 {
entry:
  %job.i18 = alloca ptr, align 4
  %f.i19 = alloca ptr, align 4
  %job.i = alloca ptr, align 4
  %f.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %ib_bo = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 15
  %2 = ptrtoint ptr %ib_bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ib_bo, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job.i) #9
  %4 = ptrtoint ptr %job.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %job.i, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f.i) #9
  %5 = ptrtoint ptr %f.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %f.i, align 4
  %call.i = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %1, i32 noundef 64, i32 noundef 2, ptr noundef nonnull %job.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.uvd_v7_0_enc_get_create_msg.exit_crit_edge

entry.uvd_v7_0_enc_get_create_msg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvd_v7_0_enc_get_create_msg.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %job.i, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibs.i, align 4
  %call1.i = call i64 @amdgpu_bo_gpu_offset(ptr noundef %3) #9
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
  store i32 0, ptr %arrayidx15.i, align 4
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
  store i32 0, ptr %arrayidx41.i, align 4
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %54 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %job.i, align 4
  %call59.i = call i32 @amdgpu_job_submit_direct(ptr noundef %55, ptr noundef %ring, ptr noundef nonnull %f.i) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i.i:                                      ; preds = %if.end66.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %57, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !73

if.end5.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %if.end

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  call void @dma_fence_release(ptr noundef %refcount.i.i) #9
  br label %if.end

err.i:                                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %job.i, align 4
  call void @amdgpu_job_free(ptr noundef %60) #9
  br label %uvd_v7_0_enc_get_create_msg.exit

uvd_v7_0_enc_get_create_msg.exit:                 ; preds = %err.i, %entry.uvd_v7_0_enc_get_create_msg.exit_crit_edge
  %retval.0.i = phi i32 [ %call59.i, %err.i ], [ %call.i, %entry.uvd_v7_0_enc_get_create_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i) #9
  br label %dma_fence_put.exit

if.end:                                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end_crit_edge, %if.end66.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job.i18) #9
  %61 = ptrtoint ptr %job.i18 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %job.i18, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f.i19) #9
  %62 = ptrtoint ptr %f.i19 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %f.i19, align 4
  %63 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ring, align 8
  %call.i20 = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %64, i32 noundef 64, i32 noundef 2, ptr noundef nonnull %job.i18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i53, label %if.end.uvd_v7_0_enc_get_destroy_msg.exit_crit_edge

if.end.uvd_v7_0_enc_get_destroy_msg.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvd_v7_0_enc_get_destroy_msg.exit

if.end.i53:                                       ; preds = %if.end
  %65 = ptrtoint ptr %job.i18 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %job.i18, align 4
  %ibs.i22 = getelementptr inbounds %struct.amdgpu_job, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %ibs.i22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ibs.i22, align 4
  %call1.i23 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %3) #9
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
  store i32 0, ptr %arrayidx15.i31, align 4
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
  store i32 0, ptr %arrayidx41.i46, align 4
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i57

for.body.i57.for.end.i60_crit_edge:               ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i60

for.end.i60:                                      ; preds = %for.body.i57.for.end.i60_crit_edge, %if.end.i53.for.end.i60_crit_edge
  %113 = ptrtoint ptr %job.i18 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %job.i18, align 4
  %call59.i58 = call i32 @amdgpu_job_submit_direct(ptr noundef %114, ptr noundef %ring, ptr noundef nonnull %f.i19) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then.i.i64:                                    ; preds = %if.end62.i
  %refcount.i.i62 = getelementptr inbounds %struct.dma_fence, ptr %116, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i63 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i62, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i.i62, i32 1, i32 3, i32 1) #9
  %117 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i62, ptr %refcount.i.i62, i32 1, ptr elementtype(i32) %refcount.i.i62) #9, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i64.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !74

if.then.i.i64.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i64
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %118 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %.not.i.i.i.i.i.i65 = icmp sgt i32 %118, -1
  br i1 %.not.i.i.i.i.i.i65, label %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i64.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i64.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i62, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %dma_fence_get.exit.i

dma_fence_get.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge
  %119 = ptrtoint ptr %f.i19 to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pr = load ptr, ptr %f.i19, align 4
  %tobool.not.i1.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i1.i, label %dma_fence_get.exit.i.error_crit_edge, label %if.then.i4.i

dma_fence_get.exit.i.error_crit_edge:             ; preds = %dma_fence_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then.i4.i:                                     ; preds = %dma_fence_get.exit.i
  %refcount.i2.i = getelementptr inbounds %struct.dma_fence, ptr %.pr, i32 0, i32 6
  %call.i.i.i.i.i.i.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i2.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  call void @llvm.prefetch.p0(ptr %refcount.i2.i, i32 1, i32 3, i32 1) #9
  %120 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i2.i, ptr %refcount.i2.i, i32 1, ptr elementtype(i32) %refcount.i2.i) #9, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i67 = extractvalue { i32, i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i67)
  %cmp.i.i.i.i.i.i68 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i67, 1
  br i1 %cmp.i.i.i.i.i.i68, label %if.then.i.i.i71, label %if.end5.i.i.i.i.i.i69

if.end5.i.i.i.i.i.i69:                            ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i67)
  %.not.i.i.i.i.i5.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i67, 0
  br i1 %.not.i.i.i.i.i5.i, label %if.end5.i.i.i.i.i.i69.error_crit_edge, label %if.then10.i.i.i.i.i.i70, !prof !73

if.end5.i.i.i.i.i.i69.error_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then10.i.i.i.i.i.i70:                          ; preds = %if.end5.i.i.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i2.i, i32 noundef 3) #9
  br label %error

if.then.i.i.i71:                                  ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  call void @dma_fence_release(ptr noundef %refcount.i2.i) #9
  br label %error

err.i72:                                          ; preds = %for.end.i60
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %job.i18 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %job.i18, align 4
  call void @amdgpu_job_free(ptr noundef %122) #9
  br label %uvd_v7_0_enc_get_destroy_msg.exit

uvd_v7_0_enc_get_destroy_msg.exit:                ; preds = %err.i72, %if.end.uvd_v7_0_enc_get_destroy_msg.exit_crit_edge
  %retval.0.i73 = phi i32 [ %call59.i58, %err.i72 ], [ %call.i20, %if.end.uvd_v7_0_enc_get_destroy_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i19) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i18) #9
  br label %dma_fence_put.exit

error:                                            ; preds = %if.then.i.i.i71, %if.then10.i.i.i.i.i.i70, %if.end5.i.i.i.i.i.i69.error_crit_edge, %dma_fence_get.exit.i.error_crit_edge, %if.end62.i.error_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i19) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i18) #9
  %call5 = call i32 @dma_fence_wait_timeout(ptr noundef %116, i1 noundef zeroext false, i32 noundef %timeout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  %123 = call i32 @llvm.smin.i32(i32 %call5, i32 0)
  %spec.select = select i1 %cmp, i32 -110, i32 %123
  br i1 %tobool.not.i.i61, label %error.dma_fence_put.exit_crit_edge, label %if.then.i

error.dma_fence_put.exit_crit_edge:               ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %error
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %116, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %124 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i75 = extractvalue { i32, i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i75)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i75, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i76, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i75)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i75, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !73

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %dma_fence_put.exit

if.then.i.i76:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i76, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %error.dma_fence_put.exit_crit_edge, %uvd_v7_0_enc_get_destroy_msg.exit, %uvd_v7_0_enc_get_create_msg.exit
  %r.089 = phi i32 [ %spec.select, %error.dma_fence_put.exit_crit_edge ], [ %spec.select, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge ], [ %spec.select, %if.then10.i.i.i.i.i ], [ %spec.select, %if.then.i.i76 ], [ %retval.0.i73, %uvd_v7_0_enc_get_destroy_msg.exit ], [ %retval.0.i, %uvd_v7_0_enc_get_create_msg.exit ]
  ret i32 %r.089
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_insert_nop(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_enc_ring_insert_end(ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_enc_ring_emit_wreg(ptr nocapture noundef %ring, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
  store volatile i32 265, ptr %arrayidx.i, align 4
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
  %cmp.i4 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i4, label %if.then.i5, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit15_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit15_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit15

if.then.i5:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit15

amdgpu_ring_write.exit15:                         ; preds = %if.then.i5, %amdgpu_ring_write.exit.amdgpu_ring_write.exit15_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i8 = add i64 %18, 1
  store i64 %inc.i8, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i10 = and i32 %20, %21
  %arrayidx.i11 = getelementptr i32, ptr %16, i32 %idxprom.i10
  %22 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %shl, ptr %arrayidx.i11, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i13 = and i64 %25, %24
  store i64 %and3.i13, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i14 = add i32 %27, -1
  store i32 %dec.i14, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i14)
  %cmp.i17 = icmp slt i32 %dec.i14, 1
  br i1 %cmp.i17, label %if.then.i18, label %amdgpu_ring_write.exit15.amdgpu_ring_write.exit28_crit_edge

amdgpu_ring_write.exit15.amdgpu_ring_write.exit28_crit_edge: ; preds = %amdgpu_ring_write.exit15
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit28

if.then.i18:                                      ; preds = %amdgpu_ring_write.exit15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit28

amdgpu_ring_write.exit28:                         ; preds = %if.then.i18, %amdgpu_ring_write.exit15.amdgpu_ring_write.exit28_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i21 = add i64 %31, 1
  store i64 %inc.i21, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i23 = and i32 %33, %34
  %arrayidx.i24 = getelementptr i32, ptr %29, i32 %idxprom.i23
  %35 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %val, ptr %arrayidx.i24, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i26 = and i64 %38, %37
  store i64 %and3.i26, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i27 = add i32 %40, -1
  store i32 %dec.i27, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v7_0_enc_ring_emit_reg_wait(ptr nocapture noundef %ring, i32 noundef %reg, i32 noundef %val, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
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
  store volatile i32 266, ptr %arrayidx.i, align 4
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
  %cmp.i5 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i5, label %if.then.i6, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit16

if.then.i6:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit16

amdgpu_ring_write.exit16:                         ; preds = %if.then.i6, %amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i9 = add i64 %18, 1
  store i64 %inc.i9, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i11 = and i32 %20, %21
  %arrayidx.i12 = getelementptr i32, ptr %16, i32 %idxprom.i11
  %22 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %shl, ptr %arrayidx.i12, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i14 = and i64 %25, %24
  store i64 %and3.i14, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i15 = add i32 %27, -1
  store i32 %dec.i15, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i15)
  %cmp.i18 = icmp slt i32 %dec.i15, 1
  br i1 %cmp.i18, label %if.then.i19, label %amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge

amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge: ; preds = %amdgpu_ring_write.exit16
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit29

if.then.i19:                                      ; preds = %amdgpu_ring_write.exit16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit29

amdgpu_ring_write.exit29:                         ; preds = %if.then.i19, %amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i22 = add i64 %31, 1
  store i64 %inc.i22, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i24 = and i32 %33, %34
  %arrayidx.i25 = getelementptr i32, ptr %29, i32 %idxprom.i24
  %35 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %mask, ptr %arrayidx.i25, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i27 = and i64 %38, %37
  store i64 %and3.i27, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i28 = add i32 %40, -1
  store i32 %dec.i28, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i28)
  %cmp.i31 = icmp slt i32 %dec.i28, 1
  br i1 %cmp.i31, label %if.then.i32, label %amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge

amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge: ; preds = %amdgpu_ring_write.exit29
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit42

if.then.i32:                                      ; preds = %amdgpu_ring_write.exit29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %amdgpu_ring_write.exit42

amdgpu_ring_write.exit42:                         ; preds = %if.then.i32, %amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i35 = add i64 %44, 1
  store i64 %inc.i35, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i37 = and i32 %46, %47
  %arrayidx.i38 = getelementptr i32, ptr %42, i32 %idxprom.i37
  %48 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %val, ptr %arrayidx.i38, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i40 = and i64 %51, %50
  store i64 %and3.i40, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i41 = add i32 %53, -1
  store i32 %dec.i41, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wdoorbell(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_alloc_with_ib(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvd_v7_0_set_interrupt_state(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v7_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 14, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %1) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %ip_instance.0 = phi i32 [ 1, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #9
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %3 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %src_id, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %4, label %sw.default18 [
    i32 124, label %sw.bb4
    i32 119, label %sw.bb5
    i32 120, label %sw.bb11
  ]

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %ring = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %ip_instance.0, i32 4
  %call = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %ring) #9
  br label %cleanup

sw.bb5:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %ring_enc = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %ip_instance.0, i32 5
  %call10 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %ring_enc) #9
  br label %cleanup

sw.bb11:                                          ; preds = %sw.epilog
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt, align 8
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %ip_instance.0, i32 5, i32 1
  %call17 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %arrayidx16) #9
  br label %cleanup

sw.default18:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %8 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_data, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %4, i32 noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default18, %if.then, %sw.bb11.cleanup_crit_edge, %sw.bb5, %sw.bb4, %sw.default
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_sw_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_entity_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_virt_alloc_mm_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_virt_free_mm_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_sw_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_enable_uvd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !55, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1779, i32 10}
!2 = !{ptr @uvd_v7_0_ip_funcs, !3, !"uvd_v7_0_ip_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1778, i32 27}
!4 = !{ptr @uvd_v7_0_ip_block, !5, !"uvd_v7_0_ip_block", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1909, i32 38}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1872, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @uvd_v7_0_set_ring_funcs._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @uvd_v7_0_set_ring_funcs._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @uvd_v7_0_ring_vm_funcs, !13, !"uvd_v7_0_ring_vm_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1798, i32 39}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1888, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @uvd_v7_0_set_enc_ring_funcs._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @uvd_v7_0_set_enc_ring_funcs._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @uvd_v7_0_enc_ring_vm_funcs, !22, !"uvd_v7_0_enc_ring_vm_funcs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1830, i32 39}
!23 = !{ptr @uvd_v7_0_irq_funcs, !24, !"uvd_v7_0_irq_funcs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1892, i32 42}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1580, i32 3}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1584, i32 2}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1598, i32 3}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 438, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @uvd_v7_0_sw_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @uvd_v7_0_sw_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 446, i32 24}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 456, i32 24}
!40 = !{ptr @amdgpu_ih_clientid_uvds, !41, !"amdgpu_ih_clientid_uvds", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 58, i32 12}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 544, i32 5}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 584, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @uvd_v7_0_hw_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @uvd_v7_0_hw_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 774, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @uvd_v7_0_mmsch_start._entry, !50, !"_entry", i1 false, i1 false}
!55 = !{ptr @uvd_v7_0_mmsch_start._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1053, i32 4}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 1065, i32 4}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v7_0.c", i32 606, i32 3}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i32 0, i32 33}
!72 = !{i8 0, i8 2}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{!"auto-init"}
!76 = !{i64 2148704292}
!77 = !{i64 2148618732, i64 2148618764, i64 2148618793, i64 2148618827, i64 2148618858, i64 2148618881}
!78 = !{i64 2149902065}
!79 = !{i64 2148616267, i64 2148616299, i64 2148616328, i64 2148616362, i64 2148616393, i64 2148616416}
