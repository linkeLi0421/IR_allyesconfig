; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_gfx_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cs_section_def = type { ptr, i32 }
%struct.cs_extent_def = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.gfx_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32 }
%struct.rlc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32, i32, i32 }
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

@__UNIQUE_ID_firmware343 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/tahiti_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/tahiti_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/tahiti_ce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/tahiti_rlc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/pitcairn_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/pitcairn_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/pitcairn_ce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/pitcairn_rlc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/verde_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [36 x i8] c"amdgpu.firmware=amdgpu/verde_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [36 x i8] c"amdgpu.firmware=amdgpu/verde_ce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/verde_rlc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/oland_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [36 x i8] c"amdgpu.firmware=amdgpu/oland_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [36 x i8] c"amdgpu.firmware=amdgpu/oland_ce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/oland_rlc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware359 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/hainan_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/hainan_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware361 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/hainan_ce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/hainan_rlc.bin\00", section ".modinfo", align 1
@gfx_v6_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @gfx_v6_0_early_init, ptr null, ptr @gfx_v6_0_sw_init, ptr @gfx_v6_0_sw_fini, ptr null, ptr @gfx_v6_0_hw_init, ptr @gfx_v6_0_hw_fini, ptr null, ptr @gfx_v6_0_suspend, ptr @gfx_v6_0_resume, ptr @gfx_v6_0_is_idle, ptr @gfx_v6_0_wait_for_idle, ptr null, ptr null, ptr @gfx_v6_0_soft_reset, ptr null, ptr @gfx_v6_0_set_clockgating_state, ptr @gfx_v6_0_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gfx_v6_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 6, i32 6, i32 0, i32 0, ptr @gfx_v6_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gfx_v6_0\00", [23 x i8] zeroinitializer }, align 32
@gfx_v6_0_gfx_funcs = internal constant { %struct.amdgpu_gfx_funcs, [32 x i8] } { %struct.amdgpu_gfx_funcs { ptr @gfx_v6_0_get_gpu_clock_counter, ptr @gfx_v6_0_select_se_sh, ptr @gfx_v6_0_read_wave_data, ptr null, ptr @gfx_v6_0_read_wave_sgprs, ptr @gfx_v6_0_select_me_pipe_q, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gfx_v6_0_rlc_funcs = internal constant { %struct.amdgpu_rlc_funcs, [36 x i8] } { %struct.amdgpu_rlc_funcs { ptr null, ptr null, ptr null, ptr @gfx_v6_0_rlc_init, ptr null, ptr null, ptr null, ptr @gfx_v6_0_rlc_resume, ptr @gfx_v6_0_rlc_stop, ptr @gfx_v6_0_rlc_reset, ptr @gfx_v6_0_rlc_start, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gfx_v6_0_select_me_pipe_q._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016[drm] Not implemented\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gfx_v6_0_select_me_pipe_q\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c\00", [58 x i8] zeroinitializer }, align 32
@gfx_v6_0_select_me_pipe_q._entry_ptr = internal global ptr @gfx_v6_0_select_me_pipe_q._entry, section ".printk_index", align 4
@verde_rlc_save_restore_register_list = internal constant { [218 x i32], [216 x i8] } { [218 x i32] [i32 -2147473859, i32 0, i32 -2143279555, i32 0, i32 -2147482720, i32 0, i32 -2143288416, i32 0, i32 -2147474833, i32 0, i32 -2143280529, i32 0, i32 -2147474681, i32 0, i32 -2143280377, i32 0, i32 -1677711812, i32 0, i32 -1677720673, i32 0, i32 -2147474350, i32 0, i32 -2143280046, i32 0, i32 -1677712300, i32 0, i32 -1677712801, i32 0, i32 -1677712541, i32 0, i32 -1677710571, i32 0, i32 3, i32 -1677711810, i32 0, i32 -1677711804, i32 0, i32 -1677711803, i32 0, i32 -1677711802, i32 0, i32 -1677711801, i32 0, i32 -1677711800, i32 0, i32 -1677711799, i32 0, i32 -1677711798, i32 0, i32 -1677711797, i32 0, i32 -1677711796, i32 0, i32 -1677711795, i32 0, i32 -1677711794, i32 0, i32 -1677711793, i32 0, i32 -1677711792, i32 0, i32 -1677711791, i32 0, i32 -1677711790, i32 0, i32 -1677711789, i32 0, i32 -1677711788, i32 0, i32 -1677711787, i32 0, i32 -1677711786, i32 0, i32 -1677711785, i32 0, i32 -1677711784, i32 0, i32 -1677711783, i32 0, i32 -1677711782, i32 0, i32 -1677711781, i32 0, i32 -1677711780, i32 0, i32 -1677711779, i32 0, i32 -1677711778, i32 0, i32 -1677711777, i32 0, i32 -1677711776, i32 0, i32 -1677711775, i32 0, i32 -1677711774, i32 0, i32 -1677711773, i32 0, i32 -1677712640, i32 0, i32 -1677712635, i32 0, i32 -1677712639, i32 0, i32 -1677712638, i32 0, i32 -2147473697, i32 0, i32 -2143279393, i32 0, i32 -2147482719, i32 0, i32 -2143288415, i32 0, i32 -2147474832, i32 0, i32 -2143280528, i32 0, i32 -2147474349, i32 0, i32 -2143280045, i32 0, i32 -2147474680, i32 0, i32 -2143280376, i32 0, i32 -2147474219, i32 0, i32 -2143279915, i32 0, i32 -1677712360, i32 0, i32 -1677712167, i32 0, i32 -1677712320, i32 0, i32 -1677712305, i32 0, i32 -2147474376, i32 0, i32 -2147474375, i32 0, i32 -2147474374, i32 0, i32 -2143280072, i32 0, i32 -2143280071, i32 0, i32 -2143280070, i32 0, i32 -1677712653, i32 0, i32 -1677712695, i32 0, i32 -1677712847, i32 0, i32 -1677712492, i32 0, i32 -1677712637, i32 0, i32 -1677712490, i32 0, i32 -1677712489, i32 0, i32 -1677712062, i32 0, i32 -1677712061, i32 0, i32 -1677712091, i32 0, i32 -1677710589, i32 0, i32 -1677710588, i32 0, i32 -1677710587, i32 0, i32 -1677710464, i32 0, i32 -1677710590, i32 0, i32 -1677712843, i32 0, i32 -1677712846, i32 0, i32 -1677712845, i32 0, i32 -1677712788, i32 0, i32 -1677712700, i32 0, i32 -1677712763, i32 0, i32 -1677711860, i32 0, i32 -1677711859, i32 0, i32 -1677711858, i32 0, i32 -1677711740, i32 0, i32 -2147473892, i32 0, i32 -2147473891, i32 0, i32 -2147408356, i32 0, i32 -2147408355, i32 0, i32 -2143279588, i32 0, i32 -2143279587, i32 0, i32 -2143214052, i32 0, i32 -2143214051, i32 0, i32 0], [216 x i8] zeroinitializer }, align 32
@si_cs_data = internal constant { [2 x %struct.cs_section_def], [16 x i8] } { [2 x %struct.cs_section_def] [%struct.cs_section_def { ptr @si_SECT_CONTEXT_defs, i32 1 }, %struct.cs_section_def zeroinitializer], [16 x i8] zeroinitializer }, align 32
@gfx_v6_0_rlc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 2407, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: (%d) create RLC c bo failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gfx_v6_0_rlc_init\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gfx_v6_0_rlc_init._entry_ptr = internal global ptr @gfx_v6_0_rlc_init._entry, section ".printk_index", align 4
@si_SECT_CONTEXT_defs = internal constant { [8 x %struct.cs_extent_def], [32 x i8] } { [8 x %struct.cs_extent_def] [%struct.cs_extent_def { ptr @si_SECT_CONTEXT_def_1, i32 40960, i32 212 }, %struct.cs_extent_def { ptr @si_SECT_CONTEXT_def_2, i32 41176, i32 272 }, %struct.cs_extent_def { ptr @si_SECT_CONTEXT_def_3, i32 41461, i32 6 }, %struct.cs_extent_def { ptr @si_SECT_CONTEXT_def_4, i32 41472, i32 157 }, %struct.cs_extent_def { ptr @si_SECT_CONTEXT_def_5, i32 41633, i32 1 }, %struct.cs_extent_def { ptr @si_SECT_CONTEXT_def_6, i32 41635, i32 1 }, %struct.cs_extent_def { ptr @si_SECT_CONTEXT_def_7, i32 41637, i32 233 }, %struct.cs_extent_def zeroinitializer], [32 x i8] zeroinitializer }, align 32
@si_SECT_CONTEXT_def_1 = internal constant { [212 x i32], [208 x i8] } { [212 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073758208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2147483648, i32 1073758208, i32 65535, i32 0, i32 1073758208, i32 0, i32 1073758208, i32 0, i32 1073758208, i32 0, i32 1073758208, i32 -1432769878, i32 0, i32 -1, i32 -1, i32 -2147483648, i32 1073758208, i32 0, i32 0, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216], [208 x i8] zeroinitializer }, align 32
@si_SECT_CONTEXT_def_3 = internal constant { [6 x i32], [40 x i8] } zeroinitializer, align 32
@si_SECT_CONTEXT_def_4 = internal constant { [157 x i32], [140 x i8] } { [157 x i32] [i32 0, i32 0, i32 0, i32 0, i32 589824, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i32 128, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0], [140 x i8] zeroinitializer }, align 32
@si_SECT_CONTEXT_def_5 = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@si_SECT_CONTEXT_def_6 = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@si_SECT_CONTEXT_def_2 = internal constant { <{ [223 x i32], [49 x i32] }>, [256 x i8] } { <{ [223 x i32], [49 x i32] }> <{ [223 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2], [49 x i32] zeroinitializer }>, [256 x i8] zeroinitializer }, align 32
@si_SECT_CONTEXT_def_7 = internal constant { <{ [115 x i32], [118 x i32] }>, [252 x i8] } { <{ [115 x i32], [118 x i32] }> <{ [115 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, i32 5, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 16], [118 x i32] zeroinitializer }>, [252 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gfx_v6_0_ring_funcs_gfx = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 0, i32 255, i32 -2147483648, i8 0, i8 0, i32 0, i32 0, ptr @gfx_v6_0_ring_get_rptr, ptr @gfx_v6_0_ring_get_wptr, ptr @gfx_v6_0_ring_set_wptr_gfx, ptr null, ptr null, i32 96, i32 6, ptr @gfx_v6_0_ring_emit_ib, ptr @gfx_v6_0_ring_emit_fence, ptr @gfx_v6_0_ring_emit_pipeline_sync, ptr @gfx_v6_0_ring_emit_vm_flush, ptr null, ptr null, ptr @gfx_v6_0_ring_test_ring, ptr @gfx_v6_0_ring_test_ib, ptr @amdgpu_ring_insert_nop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfx_v6_ring_emit_cntxcntl, ptr null, ptr @gfx_v6_0_ring_emit_wreg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfx_v6_0_emit_mem_sync, ptr null }, [32 x i8] zeroinitializer }, align 32
@gfx_v6_0_ring_funcs_compute = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 1, i32 255, i32 -2147483648, i8 0, i8 0, i32 0, i32 0, ptr @gfx_v6_0_ring_get_rptr, ptr @gfx_v6_0_ring_get_wptr, ptr @gfx_v6_0_ring_set_wptr_compute, ptr null, ptr null, i32 81, i32 6, ptr @gfx_v6_0_ring_emit_ib, ptr @gfx_v6_0_ring_emit_fence, ptr @gfx_v6_0_ring_emit_pipeline_sync, ptr @gfx_v6_0_ring_emit_vm_flush, ptr null, ptr null, ptr @gfx_v6_0_ring_test_ring, ptr @gfx_v6_0_ring_test_ib, ptr @amdgpu_ring_insert_nop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfx_v6_0_ring_emit_wreg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfx_v6_0_emit_mem_sync, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@gfx_v6_0_eop_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gfx_v6_0_set_eop_interrupt_state, ptr @gfx_v6_0_eop_irq }, [24 x i8] zeroinitializer }, align 32
@gfx_v6_0_priv_reg_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gfx_v6_0_set_priv_reg_fault_state, ptr @gfx_v6_0_priv_reg_irq }, [24 x i8] zeroinitializer }, align 32
@gfx_v6_0_priv_inst_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gfx_v6_0_set_priv_inst_fault_state, ptr @gfx_v6_0_priv_inst_irq }, [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Illegal register access in command stream\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Illegal instruction in command stream\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to load gfx firmware!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init rlc BOs!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Too many (%d) compute rings!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"comp_%d.%d.%d\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tahiti\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pitcairn\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"verde\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oland\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hainan\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu/%s_pfp.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu/%s_me.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu/%s_ce.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu/%s_rlc.bin\00", [46 x i8] zeroinitializer }, align 32
@gfx_v6_0_init_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013amdgpu: gfx6: Failed to load firmware \22%s\22\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gfx_v6_0_init_microcode\00", [40 x i8] zeroinitializer }, align 32
@gfx_v6_0_init_microcode._entry_ptr = internal global ptr @gfx_v6_0_init_microcode._entry, section ".printk_index", align 4
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown asic: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: cp failed to lock ring (%d).\0A\00", [58 x i8] zeroinitializer }, align 32
@switch.table.gfx_v6_0_sw_init = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v6_0_hw_init = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 2, i32 1, i32 1, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v6_0_hw_init.32 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 12, i32 8, i32 4, i32 4, i32 4], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v6_0_hw_init.33 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 5, i32 5, i32 6, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v6_0_hw_init.34 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 2, i32 2, i32 1, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v6_0_hw_init.35 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 4, i32 4, i32 2, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v6_0_hw_init.36 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 12, i32 8, i32 4, i32 4, i32 2], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v6_0_hw_init.37 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 32, i32 32, i32 16, i32 16], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v6_0_hw_init.38 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 256, i32 256, i32 64, i32 64, i32 64], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v6_0_hw_init.39 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 33624067, i32 33624067, i32 33619970, i32 33619970, i32 33624067], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v6_0_hw_init.40 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 704647776, i32 704647776, i32 4672, i32 128, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"gfx_v6_0_ip_funcs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3483, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"gfx_v6_0_ip_block\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3642, i32 38 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3484, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"gfx_v6_0_gfx_funcs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3048, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"gfx_v6_0_rlc_funcs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3056, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3045, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [37 x i8] c"verde_rlc_save_restore_register_list\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 89, i32 18 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"si_cs_data\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 938, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2407, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"si_SECT_CONTEXT_defs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 927, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"si_SECT_CONTEXT_def_1\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 24, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"si_SECT_CONTEXT_def_3\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 514, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"si_SECT_CONTEXT_def_4\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 523, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"si_SECT_CONTEXT_def_5\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 683, i32 18 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"si_SECT_CONTEXT_def_6\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 687, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"si_SECT_CONTEXT_def_2\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 239, i32 18 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"si_SECT_CONTEXT_def_7\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_si.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 691, i32 18 }
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"gfx_v6_0_ring_funcs_gfx\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3500, i32 39 }
@___asan_gen_.127 = private unnamed_addr constant [28 x i8] c"gfx_v6_0_ring_funcs_compute\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3528, i32 39 }
@___asan_gen_.131 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 314, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [23 x i8] c"gfx_v6_0_eop_irq_funcs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3563, i32 42 }
@___asan_gen_.136 = private unnamed_addr constant [28 x i8] c"gfx_v6_0_priv_reg_irq_funcs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3568, i32 42 }
@___asan_gen_.139 = private unnamed_addr constant [29 x i8] c"gfx_v6_0_priv_inst_irq_funcs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3573, i32 42 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3410, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3419, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3101, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3107, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3127, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3137, i32 23 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 319, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 323, i32 15 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 326, i32 15 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 329, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 332, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 335, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 340, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 351, i32 37 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 362, i32 37 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 373, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 384, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1297, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2030, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [30 x i8] c"switch.table.gfx_v6_0_sw_init\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [30 x i8] c"switch.table.gfx_v6_0_hw_init\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [33 x i8] c"switch.table.gfx_v6_0_hw_init.32\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [33 x i8] c"switch.table.gfx_v6_0_hw_init.33\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [33 x i8] c"switch.table.gfx_v6_0_hw_init.34\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [33 x i8] c"switch.table.gfx_v6_0_hw_init.35\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [33 x i8] c"switch.table.gfx_v6_0_hw_init.36\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [33 x i8] c"switch.table.gfx_v6_0_hw_init.37\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [33 x i8] c"switch.table.gfx_v6_0_hw_init.38\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [33 x i8] c"switch.table.gfx_v6_0_hw_init.39\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [33 x i8] c"switch.table.gfx_v6_0_hw_init.40\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @__UNIQUE_ID_firmware359, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_firmware361, ptr @__UNIQUE_ID_firmware362, ptr @gfx_v6_0_init_microcode._entry, ptr @gfx_v6_0_init_microcode._entry_ptr, ptr @gfx_v6_0_rlc_init._entry, ptr @gfx_v6_0_rlc_init._entry_ptr, ptr @gfx_v6_0_select_me_pipe_q._entry, ptr @gfx_v6_0_select_me_pipe_q._entry_ptr, ptr @gfx_v6_0_ip_funcs, ptr @gfx_v6_0_ip_block, ptr @.str, ptr @gfx_v6_0_gfx_funcs, ptr @gfx_v6_0_rlc_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @verde_rlc_save_restore_register_list, ptr @si_cs_data, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @si_SECT_CONTEXT_defs, ptr @si_SECT_CONTEXT_def_1, ptr @si_SECT_CONTEXT_def_3, ptr @si_SECT_CONTEXT_def_4, ptr @si_SECT_CONTEXT_def_5, ptr @si_SECT_CONTEXT_def_6, ptr @si_SECT_CONTEXT_def_2, ptr @si_SECT_CONTEXT_def_7, ptr @gfx_v6_0_ring_funcs_gfx, ptr @gfx_v6_0_ring_funcs_compute, ptr @.str.10, ptr @gfx_v6_0_eop_irq_funcs, ptr @gfx_v6_0_priv_reg_irq_funcs, ptr @gfx_v6_0_priv_inst_irq_funcs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @switch.table.gfx_v6_0_sw_init, ptr @switch.table.gfx_v6_0_hw_init, ptr @switch.table.gfx_v6_0_hw_init.32, ptr @switch.table.gfx_v6_0_hw_init.33, ptr @switch.table.gfx_v6_0_hw_init.34, ptr @switch.table.gfx_v6_0_hw_init.35, ptr @switch.table.gfx_v6_0_hw_init.36, ptr @switch.table.gfx_v6_0_hw_init.37, ptr @switch.table.gfx_v6_0_hw_init.38, ptr @switch.table.gfx_v6_0_hw_init.39, ptr @switch.table.gfx_v6_0_hw_init.40], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_gfx_funcs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_rlc_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_select_me_pipe_q._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verde_rlc_save_restore_register_list to i32), i32 872, i32 1088, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_cs_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_rlc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_SECT_CONTEXT_defs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_SECT_CONTEXT_def_1 to i32), i32 848, i32 1056, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_SECT_CONTEXT_def_3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_SECT_CONTEXT_def_4 to i32), i32 628, i32 768, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_SECT_CONTEXT_def_5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_SECT_CONTEXT_def_6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_SECT_CONTEXT_def_2 to i32), i32 1088, i32 1344, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_SECT_CONTEXT_def_7 to i32), i32 932, i32 1184, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_ring_funcs_gfx to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_ring_funcs_compute to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_eop_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_priv_reg_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_priv_inst_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v6_0_init_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v6_0_sw_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v6_0_hw_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v6_0_hw_init.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v6_0_hw_init.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v6_0_hw_init.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v6_0_hw_init.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v6_0_hw_init.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v6_0_hw_init.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v6_0_hw_init.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v6_0_hw_init.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v6_0_hw_init.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_gfx_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 37
  %0 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num_gfx_rings, align 8
  %call = tail call i32 @amdgpu_gfx_get_num_kcq(ptr noundef %handle) #9
  %1 = tail call i32 @llvm.smin.i32(i32 %call, i32 2)
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 39
  %2 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %num_compute_rings, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 49
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @gfx_v6_0_gfx_funcs, ptr %funcs, align 4
  %funcs4 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @gfx_v6_0_rlc_funcs, ptr %funcs4, align 4
  %5 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_gfx_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp20.not.i = icmp eq i32 %6, 0
  br i1 %cmp20.not.i, label %entry.for.cond2.preheader.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.cond2.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.body.i.for.cond2.preheader.i_crit_edge, %entry.for.cond2.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp422.not.i = icmp eq i32 %1, 0
  br i1 %cmp422.not.i, label %for.cond2.preheader.i.gfx_v6_0_set_ring_funcs.exit_crit_edge, label %for.cond2.preheader.i.for.body5.i_crit_edge

for.cond2.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body5.i

for.cond2.preheader.i.gfx_v6_0_set_ring_funcs.exit_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_set_ring_funcs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %funcs.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 %i.021.i, i32 1
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gfx_v6_0_ring_funcs_gfx, ptr %funcs.i, align 4
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.body.i.for.cond2.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.cond2.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond2.preheader.i.for.body5.i_crit_edge
  %i.123.i = phi i32 [ %inc10.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond2.preheader.i.for.body5.i_crit_edge ]
  %funcs8.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.123.i, i32 1
  %8 = ptrtoint ptr %funcs8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gfx_v6_0_ring_funcs_compute, ptr %funcs8.i, align 4
  %inc10.i = add nuw i32 %i.123.i, 1
  %exitcond24.not.i = icmp eq i32 %inc10.i, %1
  br i1 %exitcond24.not.i, label %for.body5.i.gfx_v6_0_set_ring_funcs.exit_crit_edge, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

for.body5.i.gfx_v6_0_set_ring_funcs.exit_crit_edge: ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_set_ring_funcs.exit

gfx_v6_0_set_ring_funcs.exit:                     ; preds = %for.body5.i.gfx_v6_0_set_ring_funcs.exit_crit_edge, %for.cond2.preheader.i.gfx_v6_0_set_ring_funcs.exit_crit_edge
  %eop_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 40
  %9 = ptrtoint ptr %eop_irq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %eop_irq.i, align 4
  %funcs.i13 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 40, i32 2
  %10 = ptrtoint ptr %funcs.i13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gfx_v6_0_eop_irq_funcs, ptr %funcs.i13, align 4
  %priv_reg_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 41
  %11 = ptrtoint ptr %priv_reg_irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %priv_reg_irq.i, align 8
  %funcs7.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 41, i32 2
  %12 = ptrtoint ptr %funcs7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gfx_v6_0_priv_reg_irq_funcs, ptr %funcs7.i, align 8
  %priv_inst_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 42
  %13 = ptrtoint ptr %priv_inst_irq.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %priv_inst_irq.i, align 4
  %funcs12.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 42, i32 2
  %14 = ptrtoint ptr %funcs12.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @gfx_v6_0_priv_inst_irq_funcs, ptr %funcs12.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  %fw_name.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eop_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 40
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 181, ptr noundef %eop_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup56_crit_edge

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

if.end:                                           ; preds = %entry
  %priv_reg_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 41
  %call2 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 184, ptr noundef %priv_reg_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup56_crit_edge

if.end.cleanup56_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

if.end5:                                          ; preds = %if.end
  %priv_inst_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 42
  %call7 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 185, ptr noundef %priv_inst_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup56_crit_edge

if.end5.cleanup56_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

if.end10:                                         ; preds = %if.end5
  %scratch.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 8
  %0 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %scratch.i, align 8
  %reg_base.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 8, i32 1
  %1 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8512, ptr %reg_base.i, align 4
  %free_mask.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 8, i32 2
  %2 = ptrtoint ptr %free_mask.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %free_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name.i) #9
  %3 = call ptr @memset(ptr %fw_name.i, i32 255, i32 30)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18) #9
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %4 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 337, 0\0A.popsection", ""() #9, !srcloc !147
  unreachable

switch.lookup:                                    ; preds = %if.end10
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.gfx_v6_0_sw_init, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.24, ptr noundef nonnull %switch.load) #9
  %pfp_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 11
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle, align 8
  %call9.i = call i32 @request_firmware(ptr noundef %pfp_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %switch.lookup.if.then13_crit_edge

switch.lookup.if.then13_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end.i:                                         ; preds = %switch.lookup
  %10 = ptrtoint ptr %pfp_fw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pfp_fw.i, align 4
  %call12.i = call i32 @amdgpu_ucode_validate(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end.i.if.then13_crit_edge

if.end.i.if.then13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end15.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %pfp_fw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pfp_fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %ucode_version.i = getelementptr inbounds %struct.common_firmware_header, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %ucode_version.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ucode_version.i, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #9
  %pfp_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 12
  %19 = ptrtoint ptr %pfp_fw_version.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pfp_fw_version.i, align 8
  %ucode_feature_version.i = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %ucode_feature_version.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucode_feature_version.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #9
  %pfp_feature_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 23
  %23 = ptrtoint ptr %pfp_feature_version.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pfp_feature_version.i, align 4
  %call21.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.25, ptr noundef nonnull %switch.load) #9
  %me_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 9
  %24 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle, align 8
  %call25.i = call i32 @request_firmware(ptr noundef %me_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end15.i.if.then13_crit_edge

if.end15.i.if.then13_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end28.i:                                       ; preds = %if.end15.i
  %26 = ptrtoint ptr %me_fw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %me_fw.i, align 4
  %call31.i = call i32 @amdgpu_ucode_validate(ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end28.i.if.then13_crit_edge

if.end28.i.if.then13_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end34.i:                                       ; preds = %if.end28.i
  %28 = ptrtoint ptr %me_fw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %me_fw.i, align 4
  %data37.i = getelementptr inbounds %struct.firmware, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %data37.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data37.i, align 4
  %ucode_version39.i = getelementptr inbounds %struct.common_firmware_header, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %ucode_version39.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ucode_version39.i, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #9
  %me_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 10
  %35 = ptrtoint ptr %me_fw_version.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %me_fw_version.i, align 8
  %ucode_feature_version41.i = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %ucode_feature_version41.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ucode_feature_version41.i, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #9
  %me_feature_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 21
  %39 = ptrtoint ptr %me_feature_version.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %me_feature_version.i, align 4
  %call44.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.26, ptr noundef nonnull %switch.load) #9
  %ce_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 13
  %40 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handle, align 8
  %call48.i = call i32 @request_firmware(ptr noundef %ce_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end34.i.if.then13_crit_edge

if.end34.i.if.then13_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end51.i:                                       ; preds = %if.end34.i
  %42 = ptrtoint ptr %ce_fw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ce_fw.i, align 4
  %call54.i = call i32 @amdgpu_ucode_validate(ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end51.i.if.then13_crit_edge

if.end51.i.if.then13_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end57.i:                                       ; preds = %if.end51.i
  %44 = ptrtoint ptr %ce_fw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ce_fw.i, align 4
  %data60.i = getelementptr inbounds %struct.firmware, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %data60.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data60.i, align 4
  %ucode_version62.i = getelementptr inbounds %struct.common_firmware_header, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %ucode_version62.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ucode_version62.i, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49) #9
  %ce_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 14
  %51 = ptrtoint ptr %ce_fw_version.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ce_fw_version.i, align 8
  %ucode_feature_version64.i = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %ucode_feature_version64.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ucode_feature_version64.i, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53) #9
  %ce_feature_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 22
  %55 = ptrtoint ptr %ce_feature_version.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %ce_feature_version.i, align 8
  %call67.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.27, ptr noundef nonnull %switch.load) #9
  %rlc_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 15
  %56 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %handle, align 8
  %call71.i = call i32 @request_firmware(ptr noundef %rlc_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %out.i, label %if.end57.i.if.then13_crit_edge

if.end57.i.if.then13_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

out.i:                                            ; preds = %if.end57.i
  %58 = ptrtoint ptr %rlc_fw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rlc_fw.i, align 4
  %call77.i = call i32 @amdgpu_ucode_validate(ptr noundef %59) #9
  %60 = ptrtoint ptr %rlc_fw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rlc_fw.i, align 4
  %data80.i = getelementptr inbounds %struct.firmware, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %data80.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data80.i, align 4
  %ucode_version82.i = getelementptr inbounds %struct.common_firmware_header, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %ucode_version82.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ucode_version82.i, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65) #9
  %rlc_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 16
  %67 = ptrtoint ptr %rlc_fw_version.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %rlc_fw_version.i, align 8
  %ucode_feature_version84.i = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %63, i32 0, i32 1
  %68 = ptrtoint ptr %ucode_feature_version84.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ucode_feature_version84.i, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #9
  %rlc_feature_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 24
  %71 = ptrtoint ptr %rlc_feature_version.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %rlc_feature_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool86.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool86.not.i, label %if.end14, label %out.i.if.then13_crit_edge

out.i.if.then13_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %out.i.if.then13_crit_edge, %if.end57.i.if.then13_crit_edge, %if.end51.i.if.then13_crit_edge, %if.end34.i.if.then13_crit_edge, %if.end28.i.if.then13_crit_edge, %if.end15.i.if.then13_crit_edge, %if.end.i.if.then13_crit_edge, %switch.lookup.if.then13_crit_edge
  %err.0161.i = phi i32 [ %call77.i, %out.i.if.then13_crit_edge ], [ %call71.i, %if.end57.i.if.then13_crit_edge ], [ %call54.i, %if.end51.i.if.then13_crit_edge ], [ %call48.i, %if.end34.i.if.then13_crit_edge ], [ %call31.i, %if.end28.i.if.then13_crit_edge ], [ %call25.i, %if.end15.i.if.then13_crit_edge ], [ %call12.i, %if.end.i.if.then13_crit_edge ], [ %call9.i, %switch.lookup.if.then13_crit_edge ]
  %call92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull %fw_name.i) #12
  %72 = ptrtoint ptr %pfp_fw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pfp_fw.i, align 4
  call void @release_firmware(ptr noundef %73) #9
  %74 = ptrtoint ptr %pfp_fw.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %pfp_fw.i, align 4
  %me_fw98.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 9
  %75 = ptrtoint ptr %me_fw98.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %me_fw98.i, align 4
  call void @release_firmware(ptr noundef %76) #9
  %77 = ptrtoint ptr %me_fw98.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %me_fw98.i, align 4
  %ce_fw102.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 13
  %78 = ptrtoint ptr %ce_fw102.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ce_fw102.i, align 4
  call void @release_firmware(ptr noundef %79) #9
  %80 = ptrtoint ptr %ce_fw102.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %ce_fw102.i, align 4
  %rlc_fw106.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 15
  %81 = ptrtoint ptr %rlc_fw106.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rlc_fw106.i, align 4
  call void @release_firmware(ptr noundef %82) #9
  %83 = ptrtoint ptr %rlc_fw106.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %rlc_fw106.i, align 4
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #9
  br label %cleanup56

if.end14:                                         ; preds = %out.i
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #9
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %84 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %funcs, align 4
  %init = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init, align 4
  %call16 = call i32 %87(ptr noundef %handle) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond.preheader, label %if.then18

for.cond.preheader:                               ; preds = %if.end14
  %num_gfx_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 37
  %88 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_gfx_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp128.not = icmp eq i32 %89, 0
  br i1 %cmp128.not, label %for.cond.preheader.for.cond29.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond29.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond29.preheader

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #9
  br label %cleanup56

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0129, 1
  %90 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_gfx_rings, align 8
  %cmp = icmp ult i32 %inc, %91
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.cond29.preheader_crit_edge

for.cond.for.cond29.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond29.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond29.preheader:                             ; preds = %for.cond.for.cond29.preheader_crit_edge, %for.cond.preheader.for.cond29.preheader_crit_edge
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 39
  %92 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_compute_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp31130.not = icmp eq i32 %93, 0
  br i1 %cmp31130.not, label %for.cond29.preheader.cleanup56_crit_edge, label %for.cond29.preheader.for.body32_crit_edge

for.cond29.preheader.for.body32_crit_edge:        ; preds = %for.cond29.preheader
  br label %for.body32

for.cond29.preheader.cleanup56_crit_edge:         ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0129 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 %i.0129
  %ring_obj = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 %i.0129, i32 4
  %94 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %ring_obj, align 8
  %name = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 %i.0129, i32 29
  %95 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 1734768640, ptr %name, align 1
  %call25 = call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %arrayidx, i32 noundef 1024, ptr noundef %eop_irq, i32 noundef 0, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond, label %for.body.cleanup56_crit_edge

for.body.cleanup56_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

for.body32:                                       ; preds = %for.inc53.for.body32_crit_edge, %for.cond29.preheader.for.body32_crit_edge
  %i.1131 = phi i32 [ %inc54, %for.inc53.for.body32_crit_edge ], [ 0, %for.cond29.preheader.for.body32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.1131)
  %exitcond = icmp eq i32 %i.1131, 8
  br i1 %exitcond, label %cleanup, label %if.end36

if.end36:                                         ; preds = %for.body32
  %arrayidx38 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.1131
  %ring_obj39 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.1131, i32 4
  %96 = ptrtoint ptr %ring_obj39 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %ring_obj39, align 8
  %use_doorbell = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.1131, i32 24
  %97 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %use_doorbell, align 4
  %doorbell_index = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.1131, i32 23
  %98 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %doorbell_index, align 8
  %me = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.1131, i32 16
  %99 = ptrtoint ptr %me to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %me, align 8
  %pipe = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.1131, i32 17
  %100 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %i.1131, ptr %pipe, align 4
  %queue = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.1131, i32 18
  %101 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %i.1131, ptr %queue, align 8
  %name40 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.1131, i32 29
  %call45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name40, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef %i.1131, i32 noundef %i.1131)
  %102 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pipe, align 4
  %add = add i32 %103, 2
  %call49 = call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %arrayidx38, i32 noundef 1024, ptr noundef %eop_irq, i32 noundef %add, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %for.inc53, label %if.end36.cleanup56_crit_edge

if.end36.cleanup56_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

cleanup:                                          ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef 8) #9
  br label %cleanup56

for.inc53:                                        ; preds = %if.end36
  %inc54 = add nuw nsw i32 %i.1131, 1
  %104 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_compute_rings, align 8
  %cmp31 = icmp ult i32 %inc54, %105
  br i1 %cmp31, label %for.inc53.for.body32_crit_edge, label %for.inc53.cleanup56_crit_edge

for.inc53.cleanup56_crit_edge:                    ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

for.inc53.for.body32_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32

cleanup56:                                        ; preds = %for.inc53.cleanup56_crit_edge, %cleanup, %if.end36.cleanup56_crit_edge, %for.body.cleanup56_crit_edge, %for.cond29.preheader.cleanup56_crit_edge, %if.then18, %if.then13, %if.end5.cleanup56_crit_edge, %if.end.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  %retval.2 = phi i32 [ %err.0161.i, %if.then13 ], [ %call16, %if.then18 ], [ %call, %entry.cleanup56_crit_edge ], [ %call2, %if.end.cleanup56_crit_edge ], [ %call7, %if.end5.cleanup56_crit_edge ], [ 0, %cleanup ], [ 0, %for.cond29.preheader.cleanup56_crit_edge ], [ 0, %for.inc53.cleanup56_crit_edge ], [ %call49, %if.end36.cleanup56_crit_edge ], [ %call25, %for.body.cleanup56_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_gfx_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 37
  %0 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_gfx_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not = icmp eq i32 %1, 0
  br i1 %cmp20.not, label %entry.for.cond2.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.body.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 39
  %2 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_compute_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp422.not = icmp eq i32 %3, 0
  br i1 %cmp422.not, label %for.cond2.preheader.for.end10_crit_edge, label %for.cond2.preheader.for.body5_crit_edge

for.cond2.preheader.for.body5_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body5

for.cond2.preheader.for.end10_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 %i.021
  tail call void @amdgpu_ring_fini(ptr noundef %arrayidx) #9
  %inc = add nuw i32 %i.021, 1
  %4 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_gfx_rings, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond2.preheader_crit_edge

for.body.for.cond2.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.cond2.preheader.for.body5_crit_edge
  %i.123 = phi i32 [ %inc9, %for.body5.for.body5_crit_edge ], [ 0, %for.cond2.preheader.for.body5_crit_edge ]
  %arrayidx7 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.123
  tail call void @amdgpu_ring_fini(ptr noundef %arrayidx7) #9
  %inc9 = add nuw i32 %i.123, 1
  %6 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_compute_rings, align 8
  %cmp4 = icmp ult i32 %inc9, %7
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.end10_crit_edge

for.body5.for.end10_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end10

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

for.end10:                                        ; preds = %for.body5.for.end10_crit_edge, %for.cond2.preheader.for.end10_crit_edge
  tail call void @amdgpu_gfx_rlc_fini(ptr noundef %handle) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  %disable_masks.i.i = alloca [8 x i32], align 4
  %se_mask.i.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %2 = icmp ult i32 %1, 5
  br i1 %2, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1671, 0\0A.popsection", ""() #9, !srcloc !148
  unreachable

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v6_0_hw_init, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep53 = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v6_0_hw_init.32, i32 0, i32 %1
  %4 = ptrtoint ptr %switch.gep53 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load54 = load i32, ptr %switch.gep53, align 4
  %switch.gep55 = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v6_0_hw_init.33, i32 0, i32 %1
  %5 = ptrtoint ptr %switch.gep55 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load56 = load i32, ptr %switch.gep55, align 4
  %switch.gep57 = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v6_0_hw_init.34, i32 0, i32 %1
  %6 = ptrtoint ptr %switch.gep57 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load58 = load i32, ptr %switch.gep57, align 4
  %switch.gep59 = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v6_0_hw_init.35, i32 0, i32 %1
  %7 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load60 = load i32, ptr %switch.gep59, align 4
  %switch.gep61 = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v6_0_hw_init.36, i32 0, i32 %1
  %8 = ptrtoint ptr %switch.gep61 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load62 = load i32, ptr %switch.gep61, align 4
  %switch.gep63 = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v6_0_hw_init.37, i32 0, i32 %1
  %9 = ptrtoint ptr %switch.gep63 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load64 = load i32, ptr %switch.gep63, align 4
  %switch.gep65 = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v6_0_hw_init.38, i32 0, i32 %1
  %10 = ptrtoint ptr %switch.gep65 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load66 = load i32, ptr %switch.gep65, align 4
  %switch.gep67 = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v6_0_hw_init.39, i32 0, i32 %1
  %11 = ptrtoint ptr %switch.gep67 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load68 = load i32, ptr %switch.gep67, align 4
  %config147.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1
  %12 = ptrtoint ptr %config147.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %switch.load, ptr %config147.i, align 8
  %max_tile_pipes151.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 1
  %13 = ptrtoint ptr %max_tile_pipes151.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %switch.load54, ptr %max_tile_pipes151.i, align 4
  %max_cu_per_sh154.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 2
  %14 = ptrtoint ptr %max_cu_per_sh154.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %switch.load56, ptr %max_cu_per_sh154.i, align 8
  %max_sh_per_se157.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 3
  %15 = ptrtoint ptr %max_sh_per_se157.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %switch.load58, ptr %max_sh_per_se157.i, align 4
  %max_backends_per_se160.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 4
  %16 = ptrtoint ptr %max_backends_per_se160.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %switch.load60, ptr %max_backends_per_se160.i, align 8
  %max_texture_channel_caches163.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 5
  %17 = ptrtoint ptr %max_texture_channel_caches163.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %switch.load62, ptr %max_texture_channel_caches163.i, align 4
  %max_gprs166.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 6
  %18 = ptrtoint ptr %max_gprs166.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 256, ptr %max_gprs166.i, align 8
  %max_gs_threads169.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 7
  %19 = ptrtoint ptr %max_gs_threads169.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %switch.load64, ptr %max_gs_threads169.i, align 4
  %max_hw_contexts172.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 8
  %20 = ptrtoint ptr %max_hw_contexts172.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %max_hw_contexts172.i, align 8
  %sc_prim_fifo_size_frontend175.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 9
  %21 = ptrtoint ptr %sc_prim_fifo_size_frontend175.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 32, ptr %sc_prim_fifo_size_frontend175.i, align 4
  %sc_prim_fifo_size_backend178.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 10
  %22 = ptrtoint ptr %sc_prim_fifo_size_backend178.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %switch.load66, ptr %sc_prim_fifo_size_backend178.i, align 8
  %sc_hiz_tile_fifo_size181.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 11
  %23 = ptrtoint ptr %sc_hiz_tile_fifo_size181.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 48, ptr %sc_hiz_tile_fifo_size181.i, align 4
  %sc_earlyz_tile_fifo_size184.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 12
  %24 = ptrtoint ptr %sc_earlyz_tile_fifo_size184.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 304, ptr %sc_earlyz_tile_fifo_size184.i, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8192, i32 noundef 255, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 936, i32 noundef 1, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 938, i32 noundef 1, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5412, i32 noundef 3, i32 noundef 0) #9
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2520, i32 noundef 0) #9
  %mc_arb_ramcfg190.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 20
  %25 = ptrtoint ptr %mc_arb_ramcfg190.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i, ptr %mc_arb_ramcfg190.i, align 8
  %26 = ptrtoint ptr %max_tile_pipes151.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_tile_pipes151.i, align 4
  %num_tile_pipes.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 13
  %28 = ptrtoint ptr %num_tile_pipes.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %num_tile_pipes.i, align 4
  %mem_max_burst_length_bytes.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 15
  %29 = ptrtoint ptr %mem_max_burst_length_bytes.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 256, ptr %mem_max_burst_length_bytes.i, align 4
  %and.i = lshr i32 %call.i, 6
  %shr.i = and i32 %and.i, 3
  %add.i = or i32 %shr.i, 8
  %mul.i = shl i32 4, %add.i
  %div393.i = lshr exact i32 %mul.i, 10
  %mem_row_size_in_kb.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 4096
  %spec.select.i = select i1 %cmp.i, i32 4, i32 %div393.i
  %30 = ptrtoint ptr %mem_row_size_in_kb.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select.i, ptr %mem_row_size_in_kb.i, align 8
  %shader_engine_tile_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 17
  %31 = ptrtoint ptr %shader_engine_tile_size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %shader_engine_tile_size.i, align 4
  %num_gpus.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 18
  %32 = ptrtoint ptr %num_gpus.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %num_gpus.i, align 8
  %multi_gpu_tile_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 19
  %33 = ptrtoint ptr %multi_gpu_tile_size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %multi_gpu_tile_size.i, align 4
  %34 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %switch.lookup.sw.epilog225.i_crit_edge [
    i32 4, label %sw.bb223.i
    i32 2, label %sw.bb221.i
  ]

switch.lookup.sw.epilog225.i_crit_edge:           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog225.i

sw.bb221.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %or222.i = or i32 %switch.load68, 268435456
  br label %sw.epilog225.i

sw.bb223.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %or224.i = or i32 %switch.load68, 536870912
  br label %sw.epilog225.i

sw.epilog225.i:                                   ; preds = %sw.bb223.i, %sw.bb221.i, %switch.lookup.sw.epilog225.i_crit_edge
  %gb_addr_config.1.i = phi i32 [ %or222.i, %sw.bb221.i ], [ %or224.i, %sw.bb223.i ], [ %switch.load68, %switch.lookup.sw.epilog225.i_crit_edge ]
  %and226.i = and i32 %gb_addr_config.1.i, -12289
  %35 = ptrtoint ptr %config147.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %config147.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp230.i = icmp eq i32 %36, 2
  %or232.i = or i32 %and226.i, 4096
  %spec.select394.i = select i1 %cmp230.i, i32 %or232.i, i32 %and226.i
  %gb_addr_config236.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  %37 = ptrtoint ptr %gb_addr_config236.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select394.i, ptr %gb_addr_config236.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9790, i32 noundef %spec.select394.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 757, i32 noundef %spec.select394.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 768, i32 noundef %spec.select394.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3026, i32 noundef %spec.select394.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13358, i32 noundef %spec.select394.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13870, i32 noundef %spec.select394.i, i32 noundef 0) #9
  %tile_mode_array.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27
  %38 = call ptr @memset(ptr %tile_mode_array.i.i, i32 0, i32 128)
  %39 = ptrtoint ptr %mem_row_size_in_kb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mem_row_size_in_kb.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %switch.selectcmp.i.i = icmp eq i32 %40, 4
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 12288, i32 10240
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %switch.selectcmp387.i.i = icmp eq i32 %40, 1
  %switch.select388.i.i = select i1 %switch.selectcmp387.i.i, i32 8192, i32 %switch.select.i.i
  %41 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %asic_type.i, align 8
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %42, label %if.else216.i.i [
    i32 2, label %if.then.i.i
    i32 3, label %if.then49.i.i
    i32 4, label %if.then115.i.i
    i32 0, label %sw.epilog225.i.if.then168.i.i_crit_edge
    i32 1, label %sw.epilog225.i.if.then168.i.i_crit_edge75
  ]

sw.epilog225.i.if.then168.i.i_crit_edge75:        ; preds = %sw.epilog225.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then168.i.i

sw.epilog225.i.if.then168.i.i_crit_edge:          ; preds = %sw.epilog225.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then168.i.i

if.then.i.i:                                      ; preds = %sw.epilog225.i
  %44 = ptrtoint ptr %tile_mode_array.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3801362, ptr %tile_mode_array.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 1
  %45 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3803410, ptr %arrayidx9.i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 2
  %46 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3805458, ptr %arrayidx10.i.i, align 4
  %or.i.i = or i32 %switch.select388.i.i, 2162962
  %arrayidx11.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 3
  %47 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i.i, ptr %arrayidx11.i.i, align 4
  %arrayidx12.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 4
  %48 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 266, ptr %arrayidx12.i.i, align 4
  %arrayidx13.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 5
  %49 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1120530, ptr %arrayidx13.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 6
  %50 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1184018, ptr %arrayidx14.i.i, align 4
  %arrayidx15.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 7
  %51 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 139538, ptr %arrayidx15.i.i, align 4
  %arrayidx16.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 8
  %52 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %arrayidx16.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 9
  %53 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 264, ptr %arrayidx17.i.i, align 4
  %arrayidx18.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 10
  %54 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3805456, ptr %arrayidx18.i.i, align 4
  %arrayidx19.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 11
  %55 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3477776, ptr %arrayidx19.i.i, align 4
  %arrayidx20.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 12
  %56 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3414288, ptr %arrayidx20.i.i, align 4
  %arrayidx21.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 13
  %57 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 265, ptr %arrayidx21.i.i, align 4
  %arrayidx22.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 14
  %58 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3543313, ptr %arrayidx22.i.i, align 4
  %arrayidx23.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 15
  %59 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3477777, ptr %arrayidx23.i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 16
  %60 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3414289, ptr %arrayidx24.i.i, align 4
  %or26.i.i = or i32 %switch.select388.i.i, 3408145
  %arrayidx27.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 17
  %61 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or26.i.i, ptr %arrayidx27.i.i, align 4
  %arrayidx28.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 18
  %62 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 269, ptr %arrayidx28.i.i, align 4
  %or30.i.i = or i32 %switch.select388.i.i, 3408161
  %arrayidx31.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 19
  %63 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or30.i.i, ptr %arrayidx31.i.i, align 4
  %or33.i.i = or i32 %switch.select388.i.i, 3408157
  %arrayidx34.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 20
  %64 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or33.i.i, ptr %arrayidx34.i.i, align 4
  %arrayidx35.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 21
  %65 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2232593, ptr %arrayidx35.i.i, align 4
  %arrayidx36.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 22
  %66 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2167057, ptr %arrayidx36.i.i, align 4
  %arrayidx37.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 23
  %67 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1184017, ptr %arrayidx37.i.i, align 4
  %arrayidx38.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 24
  %68 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1120529, ptr %arrayidx38.i.i, align 4
  %arrayidx39.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 25
  %69 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 139537, ptr %arrayidx39.i.i, align 4
  %arrayidx40.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 26
  %70 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 139537, ptr %arrayidx40.i.i, align 4
  %arrayidx41.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 27
  %71 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 139537, ptr %arrayidx41.i.i, align 4
  %arrayidx42.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 28
  %72 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 139537, ptr %arrayidx42.i.i, align 4
  %arrayidx43.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 29
  %73 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 139537, ptr %arrayidx43.i.i, align 4
  %arrayidx44.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 30
  %74 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 76049, ptr %arrayidx44.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.i
  %reg_offset.0395.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %reg_offset.0395.i.i, 9796
  %arrayidx46.i.i = getelementptr i32, ptr %tile_mode_array.i.i, i32 %reg_offset.0395.i.i
  %75 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx46.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef %76, i32 noundef 0) #9
  %inc.i.i = add nuw nsw i32 %reg_offset.0395.i.i, 1
  %exitcond401.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond401.not.i.i, label %for.body.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_tiling_mode_table_init.exit.i

if.then49.i.i:                                    ; preds = %sw.epilog225.i
  %77 = ptrtoint ptr %tile_mode_array.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3801362, ptr %tile_mode_array.i.i, align 4
  %arrayidx51.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 1
  %78 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3803410, ptr %arrayidx51.i.i, align 4
  %arrayidx52.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 2
  %79 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 3805458, ptr %arrayidx52.i.i, align 4
  %arrayidx53.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 3
  %80 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 3803410, ptr %arrayidx53.i.i, align 4
  %arrayidx54.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 4
  %81 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3473674, ptr %arrayidx54.i.i, align 4
  %or60.i.i = or i32 %switch.select388.i.i, 3473682
  %arrayidx61.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 5
  %82 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or60.i.i, ptr %arrayidx61.i.i, align 4
  %or67.i.i = or i32 %switch.select388.i.i, 3408146
  %arrayidx68.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 6
  %83 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or67.i.i, ptr %arrayidx68.i.i, align 4
  %or74.i.i = or i32 %switch.select388.i.i, 3801362
  %arrayidx75.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 7
  %84 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or74.i.i, ptr %arrayidx75.i.i, align 4
  %arrayidx76.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 8
  %85 = ptrtoint ptr %arrayidx76.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 3473668, ptr %arrayidx76.i.i, align 4
  %arrayidx77.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 9
  %86 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3473672, ptr %arrayidx77.i.i, align 4
  %arrayidx78.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 10
  %87 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 3805456, ptr %arrayidx78.i.i, align 4
  %arrayidx79.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 11
  %88 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 3477776, ptr %arrayidx79.i.i, align 4
  %arrayidx80.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 12
  %89 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 3414288, ptr %arrayidx80.i.i, align 4
  %arrayidx81.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 13
  %90 = ptrtoint ptr %arrayidx81.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3473673, ptr %arrayidx81.i.i, align 4
  %arrayidx82.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 14
  %91 = ptrtoint ptr %arrayidx82.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 3543313, ptr %arrayidx82.i.i, align 4
  %arrayidx83.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 15
  %92 = ptrtoint ptr %arrayidx83.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 3477777, ptr %arrayidx83.i.i, align 4
  %arrayidx84.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 16
  %93 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 3414289, ptr %arrayidx84.i.i, align 4
  %or90.i.i = or i32 %switch.select388.i.i, 3408145
  %arrayidx91.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 17
  %94 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or90.i.i, ptr %arrayidx91.i.i, align 4
  %arrayidx92.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 18
  %95 = ptrtoint ptr %arrayidx92.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 269, ptr %arrayidx92.i.i, align 4
  %or94.i.i = or i32 %switch.select388.i.i, 3408161
  %arrayidx95.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 19
  %96 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or94.i.i, ptr %arrayidx95.i.i, align 4
  %or97.i.i = or i32 %switch.select388.i.i, 3408157
  %arrayidx98.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 20
  %97 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or97.i.i, ptr %arrayidx98.i.i, align 4
  %arrayidx99.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 21
  %98 = ptrtoint ptr %arrayidx99.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 3560081, ptr %arrayidx99.i.i, align 4
  %arrayidx100.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 22
  %99 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 3805841, ptr %arrayidx100.i.i, align 4
  %arrayidx101.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 23
  %100 = ptrtoint ptr %arrayidx101.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 3478161, ptr %arrayidx101.i.i, align 4
  %arrayidx102.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 24
  %101 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 3414673, ptr %arrayidx102.i.i, align 4
  %arrayidx103.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 25
  %102 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2106001, ptr %arrayidx103.i.i, align 4
  br label %for.body106.i.i

for.body106.i.i:                                  ; preds = %for.body106.i.i.for.body106.i.i_crit_edge, %if.then49.i.i
  %reg_offset.1394.i.i = phi i32 [ 0, %if.then49.i.i ], [ %inc110.i.i, %for.body106.i.i.for.body106.i.i_crit_edge ]
  %add107.i.i = add nuw nsw i32 %reg_offset.1394.i.i, 9796
  %arrayidx108.i.i = getelementptr i32, ptr %tile_mode_array.i.i, i32 %reg_offset.1394.i.i
  %103 = ptrtoint ptr %arrayidx108.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx108.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add107.i.i, i32 noundef %104, i32 noundef 0) #9
  %inc110.i.i = add nuw nsw i32 %reg_offset.1394.i.i, 1
  %exitcond400.not.i.i = icmp eq i32 %inc110.i.i, 32
  br i1 %exitcond400.not.i.i, label %for.body106.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge, label %for.body106.i.i.for.body106.i.i_crit_edge

for.body106.i.i.for.body106.i.i_crit_edge:        ; preds = %for.body106.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body106.i.i

for.body106.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge: ; preds = %for.body106.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_tiling_mode_table_init.exit.i

if.then115.i.i:                                   ; preds = %sw.epilog225.i
  %105 = ptrtoint ptr %tile_mode_array.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 3801106, ptr %tile_mode_array.i.i, align 4
  %arrayidx117.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 1
  %106 = ptrtoint ptr %arrayidx117.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 3803154, ptr %arrayidx117.i.i, align 4
  %arrayidx118.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 2
  %107 = ptrtoint ptr %arrayidx118.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 3805202, ptr %arrayidx118.i.i, align 4
  %or120.i.i = or i32 %switch.select388.i.i, 2162706
  %arrayidx121.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 3
  %108 = ptrtoint ptr %arrayidx121.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or120.i.i, ptr %arrayidx121.i.i, align 4
  %arrayidx122.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 4
  %109 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 10, ptr %arrayidx122.i.i, align 4
  %arrayidx123.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 5
  %110 = ptrtoint ptr %arrayidx123.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 2103314, ptr %arrayidx123.i.i, align 4
  %arrayidx124.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 6
  %111 = ptrtoint ptr %arrayidx124.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 2166802, ptr %arrayidx124.i.i, align 4
  %arrayidx125.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 7
  %112 = ptrtoint ptr %arrayidx125.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1122322, ptr %arrayidx125.i.i, align 4
  %arrayidx126.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 8
  %113 = ptrtoint ptr %arrayidx126.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 4, ptr %arrayidx126.i.i, align 4
  %arrayidx127.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 9
  %114 = ptrtoint ptr %arrayidx127.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 8, ptr %arrayidx127.i.i, align 4
  %arrayidx128.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 10
  %115 = ptrtoint ptr %arrayidx128.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 3805200, ptr %arrayidx128.i.i, align 4
  %arrayidx129.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 11
  %116 = ptrtoint ptr %arrayidx129.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 3477520, ptr %arrayidx129.i.i, align 4
  %arrayidx130.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 12
  %117 = ptrtoint ptr %arrayidx130.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 3414032, ptr %arrayidx130.i.i, align 4
  %arrayidx131.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 13
  %118 = ptrtoint ptr %arrayidx131.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 9, ptr %arrayidx131.i.i, align 4
  %arrayidx132.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 14
  %119 = ptrtoint ptr %arrayidx132.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 3543057, ptr %arrayidx132.i.i, align 4
  %arrayidx133.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 15
  %120 = ptrtoint ptr %arrayidx133.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 3477521, ptr %arrayidx133.i.i, align 4
  %arrayidx134.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 16
  %121 = ptrtoint ptr %arrayidx134.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 3414033, ptr %arrayidx134.i.i, align 4
  %or136.i.i = or i32 %switch.select388.i.i, 3407889
  %arrayidx137.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 17
  %122 = ptrtoint ptr %arrayidx137.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or136.i.i, ptr %arrayidx137.i.i, align 4
  %arrayidx138.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 18
  %123 = ptrtoint ptr %arrayidx138.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 13, ptr %arrayidx138.i.i, align 4
  %or140.i.i = or i32 %switch.select388.i.i, 3407905
  %arrayidx141.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 19
  %124 = ptrtoint ptr %arrayidx141.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or140.i.i, ptr %arrayidx141.i.i, align 4
  %or143.i.i = or i32 %switch.select388.i.i, 3407901
  %arrayidx144.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 20
  %125 = ptrtoint ptr %arrayidx144.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or143.i.i, ptr %arrayidx144.i.i, align 4
  %arrayidx145.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 21
  %126 = ptrtoint ptr %arrayidx145.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 2248721, ptr %arrayidx145.i.i, align 4
  %arrayidx146.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 22
  %127 = ptrtoint ptr %arrayidx146.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 2183185, ptr %arrayidx146.i.i, align 4
  %arrayidx147.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 23
  %128 = ptrtoint ptr %arrayidx147.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2166801, ptr %arrayidx147.i.i, align 4
  %arrayidx148.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 24
  %129 = ptrtoint ptr %arrayidx148.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 2103313, ptr %arrayidx148.i.i, align 4
  %arrayidx149.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 25
  %130 = ptrtoint ptr %arrayidx149.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1122321, ptr %arrayidx149.i.i, align 4
  %arrayidx150.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 26
  %131 = ptrtoint ptr %arrayidx150.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1122321, ptr %arrayidx150.i.i, align 4
  %arrayidx151.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 27
  %132 = ptrtoint ptr %arrayidx151.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1122321, ptr %arrayidx151.i.i, align 4
  %arrayidx152.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 28
  %133 = ptrtoint ptr %arrayidx152.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1122321, ptr %arrayidx152.i.i, align 4
  %arrayidx153.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 29
  %134 = ptrtoint ptr %arrayidx153.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1122321, ptr %arrayidx153.i.i, align 4
  %arrayidx154.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 30
  %135 = ptrtoint ptr %arrayidx154.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1058833, ptr %arrayidx154.i.i, align 4
  br label %for.body157.i.i

for.body157.i.i:                                  ; preds = %for.body157.i.i.for.body157.i.i_crit_edge, %if.then115.i.i
  %reg_offset.2393.i.i = phi i32 [ 0, %if.then115.i.i ], [ %inc161.i.i, %for.body157.i.i.for.body157.i.i_crit_edge ]
  %add158.i.i = add nuw nsw i32 %reg_offset.2393.i.i, 9796
  %arrayidx159.i.i = getelementptr i32, ptr %tile_mode_array.i.i, i32 %reg_offset.2393.i.i
  %136 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx159.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add158.i.i, i32 noundef %137, i32 noundef 0) #9
  %inc161.i.i = add nuw nsw i32 %reg_offset.2393.i.i, 1
  %exitcond399.not.i.i = icmp eq i32 %inc161.i.i, 32
  br i1 %exitcond399.not.i.i, label %for.body157.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge, label %for.body157.i.i.for.body157.i.i_crit_edge

for.body157.i.i.for.body157.i.i_crit_edge:        ; preds = %for.body157.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body157.i.i

for.body157.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge: ; preds = %for.body157.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_tiling_mode_table_init.exit.i

if.then168.i.i:                                   ; preds = %sw.epilog225.i.if.then168.i.i_crit_edge, %sw.epilog225.i.if.then168.i.i_crit_edge75
  %138 = ptrtoint ptr %tile_mode_array.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 3539602, ptr %tile_mode_array.i.i, align 4
  %arrayidx170.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 1
  %139 = ptrtoint ptr %arrayidx170.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 3541650, ptr %arrayidx170.i.i, align 4
  %arrayidx171.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 2
  %140 = ptrtoint ptr %arrayidx171.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 3543698, ptr %arrayidx171.i.i, align 4
  %or173.i.i = or i32 %switch.select388.i.i, 1180306
  %arrayidx174.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 3
  %141 = ptrtoint ptr %arrayidx174.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or173.i.i, ptr %arrayidx174.i.i, align 4
  %arrayidx175.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 4
  %142 = ptrtoint ptr %arrayidx175.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 650, ptr %arrayidx175.i.i, align 4
  %arrayidx176.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 5
  %143 = ptrtoint ptr %arrayidx176.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 137874, ptr %arrayidx176.i.i, align 4
  %arrayidx177.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 6
  %144 = ptrtoint ptr %arrayidx177.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 201362, ptr %arrayidx177.i.i, align 4
  %arrayidx178.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 7
  %145 = ptrtoint ptr %arrayidx178.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 139538, ptr %arrayidx178.i.i, align 4
  %arrayidx179.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 8
  %146 = ptrtoint ptr %arrayidx179.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 4, ptr %arrayidx179.i.i, align 4
  %arrayidx180.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 9
  %147 = ptrtoint ptr %arrayidx180.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 648, ptr %arrayidx180.i.i, align 4
  %arrayidx181.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 10
  %148 = ptrtoint ptr %arrayidx181.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 3543696, ptr %arrayidx181.i.i, align 4
  %arrayidx182.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 11
  %149 = ptrtoint ptr %arrayidx182.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 3478160, ptr %arrayidx182.i.i, align 4
  %arrayidx183.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 12
  %150 = ptrtoint ptr %arrayidx183.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 3152528, ptr %arrayidx183.i.i, align 4
  %arrayidx184.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 13
  %151 = ptrtoint ptr %arrayidx184.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 649, ptr %arrayidx184.i.i, align 4
  %arrayidx185.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 14
  %152 = ptrtoint ptr %arrayidx185.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 3281553, ptr %arrayidx185.i.i, align 4
  %arrayidx186.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 15
  %153 = ptrtoint ptr %arrayidx186.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 3216017, ptr %arrayidx186.i.i, align 4
  %arrayidx187.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 16
  %154 = ptrtoint ptr %arrayidx187.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 3152529, ptr %arrayidx187.i.i, align 4
  %or189.i.i = or i32 %switch.select388.i.i, 3146385
  %arrayidx190.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 17
  %155 = ptrtoint ptr %arrayidx190.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or189.i.i, ptr %arrayidx190.i.i, align 4
  %arrayidx191.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 18
  %156 = ptrtoint ptr %arrayidx191.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 653, ptr %arrayidx191.i.i, align 4
  %or193.i.i = or i32 %switch.select388.i.i, 3146401
  %arrayidx194.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 19
  %157 = ptrtoint ptr %arrayidx194.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %or193.i.i, ptr %arrayidx194.i.i, align 4
  %or196.i.i = or i32 %switch.select388.i.i, 3146397
  %arrayidx197.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 20
  %158 = ptrtoint ptr %arrayidx197.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %or196.i.i, ptr %arrayidx197.i.i, align 4
  %arrayidx198.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 21
  %159 = ptrtoint ptr %arrayidx198.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1249937, ptr %arrayidx198.i.i, align 4
  %arrayidx199.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 22
  %160 = ptrtoint ptr %arrayidx199.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 1184401, ptr %arrayidx199.i.i, align 4
  %arrayidx200.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 23
  %161 = ptrtoint ptr %arrayidx200.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 201361, ptr %arrayidx200.i.i, align 4
  %arrayidx201.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 24
  %162 = ptrtoint ptr %arrayidx201.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 137873, ptr %arrayidx201.i.i, align 4
  %arrayidx202.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 25
  %163 = ptrtoint ptr %arrayidx202.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 139537, ptr %arrayidx202.i.i, align 4
  %arrayidx203.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 26
  %164 = ptrtoint ptr %arrayidx203.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 139537, ptr %arrayidx203.i.i, align 4
  %arrayidx204.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 27
  %165 = ptrtoint ptr %arrayidx204.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 139537, ptr %arrayidx204.i.i, align 4
  %arrayidx205.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 28
  %166 = ptrtoint ptr %arrayidx205.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 139537, ptr %arrayidx205.i.i, align 4
  %arrayidx206.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 29
  %167 = ptrtoint ptr %arrayidx206.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 139537, ptr %arrayidx206.i.i, align 4
  %arrayidx207.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 30
  %168 = ptrtoint ptr %arrayidx207.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 76049, ptr %arrayidx207.i.i, align 4
  br label %for.body210.i.i

for.body210.i.i:                                  ; preds = %for.body210.i.i.for.body210.i.i_crit_edge, %if.then168.i.i
  %reg_offset.3392.i.i = phi i32 [ 0, %if.then168.i.i ], [ %inc214.i.i, %for.body210.i.i.for.body210.i.i_crit_edge ]
  %add211.i.i = add nuw nsw i32 %reg_offset.3392.i.i, 9796
  %arrayidx212.i.i = getelementptr i32, ptr %tile_mode_array.i.i, i32 %reg_offset.3392.i.i
  %169 = ptrtoint ptr %arrayidx212.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx212.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add211.i.i, i32 noundef %170, i32 noundef 0) #9
  %inc214.i.i = add nuw nsw i32 %reg_offset.3392.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc214.i.i, 32
  br i1 %exitcond.not.i.i, label %for.body210.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge, label %for.body210.i.i.for.body210.i.i_crit_edge

for.body210.i.i.for.body210.i.i_crit_edge:        ; preds = %for.body210.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body210.i.i

for.body210.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge: ; preds = %for.body210.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_tiling_mode_table_init.exit.i

if.else216.i.i:                                   ; preds = %sw.epilog225.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %42) #9
  br label %gfx_v6_0_tiling_mode_table_init.exit.i

gfx_v6_0_tiling_mode_table_init.exit.i:           ; preds = %if.else216.i.i, %for.body210.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge, %for.body157.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge, %for.body106.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge, %for.body.i.i.gfx_v6_0_tiling_mode_table_init.exit.i_crit_edge
  %171 = ptrtoint ptr %max_backends_per_se160.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %max_backends_per_se160.i, align 8
  %173 = ptrtoint ptr %max_sh_per_se157.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %max_sh_per_se157.i, align 4
  %div.i.i = udiv i32 %172, %174
  %grbm_idx_mutex.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i.i, i32 noundef 0) #9
  %175 = ptrtoint ptr %config147.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %config147.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp491.not.i.i = icmp eq i32 %176, 0
  br i1 %cmp491.not.i.i, label %gfx_v6_0_tiling_mode_table_init.exit.i.for.end17.i.i_crit_edge, label %gfx_v6_0_tiling_mode_table_init.exit.i.for.cond5.preheader.i.i_crit_edge

gfx_v6_0_tiling_mode_table_init.exit.i.for.cond5.preheader.i.i_crit_edge: ; preds = %gfx_v6_0_tiling_mode_table_init.exit.i
  br label %for.cond5.preheader.i.i

gfx_v6_0_tiling_mode_table_init.exit.i.for.end17.i.i_crit_edge: ; preds = %gfx_v6_0_tiling_mode_table_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17.i.i

for.cond5.preheader.i.i:                          ; preds = %for.inc15.i.i.for.cond5.preheader.i.i_crit_edge, %gfx_v6_0_tiling_mode_table_init.exit.i.for.cond5.preheader.i.i_crit_edge
  %i.0493.i.i = phi i32 [ %inc16.i.i, %for.inc15.i.i.for.cond5.preheader.i.i_crit_edge ], [ 0, %gfx_v6_0_tiling_mode_table_init.exit.i.for.cond5.preheader.i.i_crit_edge ]
  %active_rbs.0492.i.i = phi i32 [ %active_rbs.1.lcssa.i.i, %for.inc15.i.i.for.cond5.preheader.i.i_crit_edge ], [ 0, %gfx_v6_0_tiling_mode_table_init.exit.i.for.cond5.preheader.i.i_crit_edge ]
  %177 = ptrtoint ptr %max_sh_per_se157.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %max_sh_per_se157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp9488.not.i.i = icmp eq i32 %178, 0
  br i1 %cmp9488.not.i.i, label %for.cond5.preheader.i.i.for.inc15.i.i_crit_edge, label %for.body10.lr.ph.i.i

for.cond5.preheader.i.i.for.inc15.i.i_crit_edge:  ; preds = %for.cond5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.i.i

for.body10.lr.ph.i.i:                             ; preds = %for.cond5.preheader.i.i
  %shl19.i.i.i = shl i32 %i.0493.i.i, 16
  br label %for.body10.i.i

for.body10.i.i:                                   ; preds = %for.body10.i.i.for.body10.i.i_crit_edge, %for.body10.lr.ph.i.i
  %active_rbs.1490.i.i = phi i32 [ %active_rbs.0492.i.i, %for.body10.lr.ph.i.i ], [ %or.i396.i, %for.body10.i.i.for.body10.i.i_crit_edge ]
  %j.0489.i.i = phi i32 [ 0, %for.body10.lr.ph.i.i ], [ %inc.i397.i, %for.body10.i.i.for.body10.i.i_crit_edge ]
  %shl8.i.i.i = shl i32 %j.0489.i.i, 8
  %or20.i.i.i = or i32 %shl19.i.i.i, %shl8.i.i.i
  %or21.i.i.i = or i32 %or20.i.i.i, 1073741824
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8203, i32 noundef %or21.i.i.i, i32 noundef 0) #9
  %call.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9789, i32 noundef 0) #9
  %call1.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9951, i32 noundef 0) #9
  %or.i.i.i = or i32 %call1.i.i.i, %call.i.i.i
  %and.i.i.i = lshr i32 %or.i.i.i, 16
  %shr.i.i.i = and i32 %and.i.i.i, 255
  %179 = ptrtoint ptr %max_backends_per_se160.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %max_backends_per_se160.i, align 8
  %181 = ptrtoint ptr %max_sh_per_se157.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %max_sh_per_se157.i, align 4
  %div.i.i.i = udiv i32 %180, %182
  %sh_prom.i.i.i.i = zext i32 %div.i.i.i to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %sh_prom.i.i.i.i
  %183 = trunc i64 %notmask.i.i.i.i to i32
  %and5.demorgan.i.i.i = or i32 %shr.i.i.i, %183
  %and5.i.i.i = xor i32 %and5.demorgan.i.i.i, -1
  %mul.i.i = mul i32 %182, %i.0493.i.i
  %add.i395.i = add i32 %mul.i.i, %j.0489.i.i
  %mul14.i.i = mul i32 %add.i395.i, %div.i.i
  %shl.i.i = shl i32 %and5.i.i.i, %mul14.i.i
  %or.i396.i = or i32 %shl.i.i, %active_rbs.1490.i.i
  %inc.i397.i = add nuw i32 %j.0489.i.i, 1
  %cmp9.i.i = icmp ult i32 %inc.i397.i, %182
  br i1 %cmp9.i.i, label %for.body10.i.i.for.body10.i.i_crit_edge, label %for.body10.i.i.for.inc15.i.i_crit_edge

for.body10.i.i.for.inc15.i.i_crit_edge:           ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.i.i

for.body10.i.i.for.body10.i.i_crit_edge:          ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.i.i

for.inc15.i.i:                                    ; preds = %for.body10.i.i.for.inc15.i.i_crit_edge, %for.cond5.preheader.i.i.for.inc15.i.i_crit_edge
  %active_rbs.1.lcssa.i.i = phi i32 [ %active_rbs.0492.i.i, %for.cond5.preheader.i.i.for.inc15.i.i_crit_edge ], [ %or.i396.i, %for.body10.i.i.for.inc15.i.i_crit_edge ]
  %inc16.i.i = add nuw i32 %i.0493.i.i, 1
  %184 = ptrtoint ptr %config147.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %config147.i, align 8
  %cmp.i.i = icmp ult i32 %inc16.i.i, %185
  br i1 %cmp.i.i, label %for.inc15.i.i.for.cond5.preheader.i.i_crit_edge, label %for.inc15.i.i.for.end17.i.i_crit_edge

for.inc15.i.i.for.end17.i.i_crit_edge:            ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17.i.i

for.inc15.i.i.for.cond5.preheader.i.i_crit_edge:  ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5.preheader.i.i

for.end17.i.i:                                    ; preds = %for.inc15.i.i.for.end17.i.i_crit_edge, %gfx_v6_0_tiling_mode_table_init.exit.i.for.end17.i.i_crit_edge
  %active_rbs.0.lcssa.i.i = phi i32 [ 0, %gfx_v6_0_tiling_mode_table_init.exit.i.for.end17.i.i_crit_edge ], [ %active_rbs.1.lcssa.i.i, %for.inc15.i.i.for.end17.i.i_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8203, i32 noundef -536870912, i32 noundef 0) #9
  %backend_enable_mask.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 14
  %186 = ptrtoint ptr %backend_enable_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %active_rbs.0.lcssa.i.i, ptr %backend_enable_mask.i.i, align 8
  %call.i455.i.i = tail call i32 @__sw_hweight32(i32 noundef %active_rbs.0.lcssa.i.i) #9
  %num_rbs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 24
  %187 = ptrtoint ptr %num_rbs.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %call.i455.i.i, ptr %num_rbs.i.i, align 8
  %188 = ptrtoint ptr %max_backends_per_se160.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %max_backends_per_se160.i, align 8
  %190 = ptrtoint ptr %config147.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %config147.i, align 8
  %mul309.i.i = mul i32 %191, %189
  %192 = tail call i32 @llvm.umin.i32(i32 %mul309.i.i, i32 16) #9
  %193 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %194)
  %195 = icmp ult i32 %194, 5
  br i1 %195, label %switch.lookup69, label %sw.default.i.i.i

sw.default.i.i.i:                                 ; preds = %for.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %194) #9
  br label %gfx_v6_0_raster_config.exit.i.i

switch.lookup69:                                  ; preds = %for.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep70 = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v6_0_hw_init.40, i32 0, i32 %194
  %196 = ptrtoint ptr %switch.gep70 to i32
  call void @__asan_load4_noabort(i32 %196)
  %switch.load71 = load i32, ptr %switch.gep70, align 4
  br label %gfx_v6_0_raster_config.exit.i.i

gfx_v6_0_raster_config.exit.i.i:                  ; preds = %switch.lookup69, %sw.default.i.i.i
  %raster_config.0.i.i = phi i32 [ 0, %sw.default.i.i.i ], [ %switch.load71, %switch.lookup69 ]
  %197 = ptrtoint ptr %backend_enable_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %backend_enable_mask.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool319.not.i.i = icmp eq i32 %198, 0
  br i1 %tobool319.not.i.i, label %gfx_v6_0_raster_config.exit.i.i.if.then.i398.i_crit_edge, label %lor.lhs.false.i.i

gfx_v6_0_raster_config.exit.i.i.if.then.i398.i_crit_edge: ; preds = %gfx_v6_0_raster_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i398.i

lor.lhs.false.i.i:                                ; preds = %gfx_v6_0_raster_config.exit.i.i
  %199 = ptrtoint ptr %num_rbs.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %num_rbs.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %192)
  %cmp323.not.i.i = icmp ult i32 %200, %192
  br i1 %cmp323.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.i.if.then.i398.i_crit_edge

lor.lhs.false.i.i.if.then.i398.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i398.i

if.then.i398.i:                                   ; preds = %lor.lhs.false.i.i.if.then.i398.i_crit_edge, %gfx_v6_0_raster_config.exit.i.i.if.then.i398.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 41172, i32 noundef %raster_config.0.i.i, i32 noundef 0) #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  %201 = ptrtoint ptr %max_sh_per_se157.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %max_sh_per_se157.i, align 4
  %203 = tail call i32 @llvm.umax.i32(i32 %202, i32 1) #9
  %204 = ptrtoint ptr %config147.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %config147.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %205)
  %cmp4.i.i.i = icmp ugt i32 %205, 1
  %206 = tail call i32 @llvm.umax.i32(i32 %205, i32 1) #9
  %div.i458.i.i = udiv i32 %192, %206
  %div9.i.i.i = udiv i32 %div.i458.i.i, %203
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div9.i.i.i)
  %cmp11.i.i.i = icmp ult i32 %div9.i.i.i, 2
  %207 = tail call i32 @llvm.umin.i32(i32 %div9.i.i.i, i32 2) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %se_mask.i.i.i) #9
  %208 = getelementptr inbounds [4 x i32], ptr %se_mask.i.i.i, i32 0, i32 1
  %209 = getelementptr inbounds [4 x i32], ptr %se_mask.i.i.i, i32 0, i32 2
  %210 = getelementptr inbounds [4 x i32], ptr %se_mask.i.i.i, i32 0, i32 3
  %notmask.i.i.i = shl nsw i32 -1, %div.i458.i.i
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i459.i.i = and i32 %198, %sub.i.i.i
  %211 = ptrtoint ptr %se_mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %and.i459.i.i, ptr %se_mask.i.i.i, align 4
  %shl18.i460.i.i = shl i32 %and.i459.i.i, %div.i458.i.i
  %and19.i.i.i = and i32 %shl18.i460.i.i, %198
  %212 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %and19.i.i.i, ptr %208, align 4
  %shl22.i.i.i = shl i32 %and19.i.i.i, %div.i458.i.i
  %and23.i.i.i = and i32 %shl22.i.i.i, %198
  %213 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %and23.i.i.i, ptr %209, align 4
  %shl26.i.i.i = shl i32 %and23.i.i.i, %div.i458.i.i
  %and27.i.i.i = and i32 %shl26.i.i.i, %198
  %214 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %and27.i.i.i, ptr %210, align 4
  %215 = zext i32 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %206, label %do.end.critedge.i.i.i [
    i32 1, label %if.else.i.i.if.end.i.i.i_crit_edge
    i32 2, label %if.else.i.i.if.end.i.i.i_crit_edge76
    i32 4, label %if.else.i.i.if.end.i.i.i_crit_edge77
  ]

if.else.i.i.if.end.i.i.i_crit_edge77:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.else.i.i.if.end.i.i.i_crit_edge76:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.else.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

do.end.critedge.i.i.i:                            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1389, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.critedge.i.i.i, %if.else.i.i.if.end.i.i.i_crit_edge, %if.else.i.i.if.end.i.i.i_crit_edge76, %if.else.i.i.if.end.i.i.i_crit_edge77
  %..off.i.i.i = add i32 %203, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %..off.i.i.i)
  %switch.i.i.i = icmp ult i32 %..off.i.i.i, 2
  br i1 %switch.i.i.i, label %if.end.i.i.i.if.end80.i.i.i_crit_edge, label %do.end74.i.i.i

if.end.i.i.i.if.end80.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i.i.i

do.end74.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1390, i32 noundef 9, ptr noundef null) #9
  br label %if.end80.i.i.i

if.end80.i.i.i:                                   ; preds = %do.end74.i.i.i, %if.end.i.i.i.if.end80.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %207)
  %cmp89.i.i.i = icmp ne i32 %207, 1
  %spec.select283.i.i.i = select i1 %cmp89.i.i.i, i1 %cmp11.i.i.i, i1 false
  br i1 %spec.select283.i.i.i, label %do.end110.i.i.i, label %if.end80.i.i.i.if.end116.i.i.i_crit_edge, !prof !149

if.end80.i.i.i.if.end116.i.i.i_crit_edge:         ; preds = %if.end80.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116.i.i.i

do.end110.i.i.i:                                  ; preds = %if.end80.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1391, i32 noundef 9, ptr noundef null) #9
  br label %if.end116.i.i.i

if.end116.i.i.i:                                  ; preds = %do.end110.i.i.i, %if.end80.i.i.i.if.end116.i.i.i_crit_edge
  %notmask281.i.i.i = shl nsw i32 -1, %207
  %sub126.i.i.i = xor i32 %notmask281.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i458.i.i)
  %cmp147.i.i.i = icmp ugt i32 %div.i458.i.i, 2
  %and138.i.i.i = and i32 %raster_config.0.i.i, 671093472
  %or.i461.i.i = or i32 %raster_config.0.i.i, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i458.i.i)
  %cmp161.i.i.i = icmp eq i32 %div.i458.i.i, 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %gfx_v6_0_select_se_sh.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end116.i.i.i
  %se.0294.i.i.i = phi i32 [ 0, %if.end116.i.i.i ], [ %inc.i.i.i, %gfx_v6_0_select_se_sh.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %mul.i.i.i = mul i32 %se.0294.i.i.i, %div.i458.i.i
  %shl127.i.i.i = shl i32 %sub126.i.i.i, %mul.i.i.i
  %shl128.i.i.i = shl i32 %shl127.i.i.i, %207
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.if.end144.i.i.i_crit_edge

for.body.i.i.i.if.end144.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %div129282.i.i.i = and i32 %se.0294.i.i.i, -2
  %arrayidx132.i.i.i = getelementptr [4 x i32], ptr %se_mask.i.i.i, i32 0, i32 %div129282.i.i.i
  %216 = ptrtoint ptr %arrayidx132.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx132.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool133.not.i.i.i = icmp eq i32 %217, 0
  br i1 %tobool133.not.i.i.i, label %land.lhs.true.i.i.i.if.end144.i.i.i_crit_edge, label %lor.lhs.false134.i.i.i

land.lhs.true.i.i.i.if.end144.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144.i.i.i

lor.lhs.false134.i.i.i:                           ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i = or i32 %se.0294.i.i.i, 1
  %arrayidx135.i.i.i = getelementptr [4 x i32], ptr %se_mask.i.i.i, i32 0, i32 %add.i.i.i
  %218 = ptrtoint ptr %arrayidx135.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx135.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool136.not.i.i.i = icmp eq i32 %219, 0
  %spec.select.i.i.i = select i1 %tobool136.not.i.i.i, i32 %and138.i.i.i, i32 %raster_config.0.i.i
  br label %if.end144.i.i.i

if.end144.i.i.i:                                  ; preds = %lor.lhs.false134.i.i.i, %land.lhs.true.i.i.i.if.end144.i.i.i_crit_edge, %for.body.i.i.i.if.end144.i.i.i_crit_edge
  %raster_config_se.0.i.i.i = phi i32 [ %raster_config.0.i.i, %for.body.i.i.i.if.end144.i.i.i_crit_edge ], [ %spec.select.i.i.i, %lor.lhs.false134.i.i.i ], [ %or.i461.i.i, %land.lhs.true.i.i.i.if.end144.i.i.i_crit_edge ]
  br i1 %cmp147.i.i.i, label %land.lhs.true148.i.i.i, label %if.end160.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %if.end144.i.i.i
  %and146.i.i.i = and i32 %shl128.i.i.i, %198
  %and145.i.i.i = and i32 %shl127.i.i.i, %198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145.i.i.i)
  %tobool149.not.i.i.i = icmp eq i32 %and145.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i.i.i)
  %tobool151.not.i.i.i = icmp eq i32 %and146.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool149.not.i.i.i, i1 true, i1 %tobool151.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then152.i.i.i, label %land.lhs.true148.i.i.i.if.then162.i.i.i_crit_edge

land.lhs.true148.i.i.i.if.then162.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then162.i.i.i

if.then152.i.i.i:                                 ; preds = %land.lhs.true148.i.i.i
  br i1 %tobool149.not.i.i.i, label %if.then155.i.i.i, label %if.else157.i.i.i

if.then155.i.i.i:                                 ; preds = %if.then152.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or156.i.i.i = or i32 %raster_config_se.0.i.i.i, 768
  br label %if.then162.i.i.i

if.else157.i.i.i:                                 ; preds = %if.then152.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and153.i.i.i = and i32 %raster_config_se.0.i.i.i, -769
  br label %if.then162.i.i.i

if.end160.i.i.i:                                  ; preds = %if.end144.i.i.i
  br i1 %cmp161.i.i.i, label %if.end160.i.i.i.if.then162.i.i.i_crit_edge, label %if.end160.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge

if.end160.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge: ; preds = %if.end160.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_select_se_sh.exit.i.i.i

if.end160.i.i.i.if.then162.i.i.i_crit_edge:       ; preds = %if.end160.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then162.i.i.i

if.then162.i.i.i:                                 ; preds = %if.end160.i.i.i.if.then162.i.i.i_crit_edge, %if.else157.i.i.i, %if.then155.i.i.i, %land.lhs.true148.i.i.i.if.then162.i.i.i_crit_edge
  %raster_config_se.1290.i.i.i = phi i32 [ %raster_config_se.0.i.i.i, %if.end160.i.i.i.if.then162.i.i.i_crit_edge ], [ %raster_config_se.0.i.i.i, %land.lhs.true148.i.i.i.if.then162.i.i.i_crit_edge ], [ %or156.i.i.i, %if.then155.i.i.i ], [ %and153.i.i.i, %if.else157.i.i.i ]
  %shl164.i.i.i = shl nuw i32 1, %mul.i.i.i
  %and166.i.i.i = and i32 %shl164.i.i.i, %198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166.i.i.i)
  %tobool168.not.i.i.i = icmp eq i32 %and166.i.i.i, 0
  %shl165.i.i.i = shl i32 %shl164.i.i.i, 1
  %and167.i.i.i = and i32 %shl165.i.i.i, %198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i.i.i)
  %tobool170.not.i.i.i = icmp eq i32 %and167.i.i.i, 0
  %or.cond284.i.i.i = select i1 %tobool168.not.i.i.i, i1 true, i1 %tobool170.not.i.i.i
  br i1 %or.cond284.i.i.i, label %if.then171.i.i.i, label %if.then162.i.i.i.if.end179.i.i.i_crit_edge

if.then162.i.i.i.if.end179.i.i.i_crit_edge:       ; preds = %if.then162.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179.i.i.i

if.then171.i.i.i:                                 ; preds = %if.then162.i.i.i
  br i1 %tobool168.not.i.i.i, label %if.then174.i.i.i, label %if.else176.i.i.i

if.then174.i.i.i:                                 ; preds = %if.then171.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or175.i.i.i = or i32 %raster_config_se.1290.i.i.i, 3
  br label %if.end179.i.i.i

if.else176.i.i.i:                                 ; preds = %if.then171.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and172.i.i.i = and i32 %raster_config_se.1290.i.i.i, -4
  br label %if.end179.i.i.i

if.end179.i.i.i:                                  ; preds = %if.else176.i.i.i, %if.then174.i.i.i, %if.then162.i.i.i.if.end179.i.i.i_crit_edge
  %raster_config_se.2.i.i.i = phi i32 [ %and172.i.i.i, %if.else176.i.i.i ], [ %or175.i.i.i, %if.then174.i.i.i ], [ %raster_config_se.1290.i.i.i, %if.then162.i.i.i.if.end179.i.i.i_crit_edge ]
  br i1 %cmp147.i.i.i, label %if.then181.i.i.i, label %if.end179.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge

if.end179.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge: ; preds = %if.end179.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_select_se_sh.exit.i.i.i

if.then181.i.i.i:                                 ; preds = %if.end179.i.i.i
  %add183.i.i.i = add i32 %mul.i.i.i, %207
  %shl184.i.i.i = shl nuw i32 1, %add183.i.i.i
  %and186.i.i.i = and i32 %shl184.i.i.i, %198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186.i.i.i)
  %tobool188.not.i.i.i = icmp eq i32 %and186.i.i.i, 0
  %shl185.i.i.i = shl i32 %shl184.i.i.i, 1
  %and187.i.i.i = and i32 %shl185.i.i.i, %198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187.i.i.i)
  %tobool190.not.i.i.i = icmp eq i32 %and187.i.i.i, 0
  %or.cond285.i.i.i = select i1 %tobool188.not.i.i.i, i1 true, i1 %tobool190.not.i.i.i
  br i1 %or.cond285.i.i.i, label %if.then191.i.i.i, label %if.then181.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge

if.then181.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge: ; preds = %if.then181.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_select_se_sh.exit.i.i.i

if.then191.i.i.i:                                 ; preds = %if.then181.i.i.i
  br i1 %tobool188.not.i.i.i, label %if.then194.i.i.i, label %if.else196.i.i.i

if.then194.i.i.i:                                 ; preds = %if.then191.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or195.i.i.i = or i32 %raster_config_se.2.i.i.i, 12
  br label %gfx_v6_0_select_se_sh.exit.i.i.i

if.else196.i.i.i:                                 ; preds = %if.then191.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and192.i.i.i = and i32 %raster_config_se.2.i.i.i, -13
  br label %gfx_v6_0_select_se_sh.exit.i.i.i

gfx_v6_0_select_se_sh.exit.i.i.i:                 ; preds = %if.else196.i.i.i, %if.then194.i.i.i, %if.then181.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge, %if.end179.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge, %if.end160.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge
  %raster_config_se.4293.i.i.i = phi i32 [ %raster_config_se.0.i.i.i, %if.end160.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge ], [ %and192.i.i.i, %if.else196.i.i.i ], [ %or195.i.i.i, %if.then194.i.i.i ], [ %raster_config_se.2.i.i.i, %if.end179.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge ], [ %raster_config_se.2.i.i.i, %if.then181.i.i.i.gfx_v6_0_select_se_sh.exit.i.i.i_crit_edge ]
  %shl14.i.i.i.i = shl i32 %se.0294.i.i.i, 16
  %or16.i.i.i.i = or i32 %shl14.i.i.i.i, 1610612736
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8203, i32 noundef %or16.i.i.i.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 41172, i32 noundef %raster_config_se.4293.i.i.i, i32 noundef 0) #9
  %inc.i.i.i = add nuw i32 %se.0294.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %206
  br i1 %exitcond.not.i.i.i, label %gfx_v6_0_write_harvested_raster_configs.exit.i.i, label %gfx_v6_0_select_se_sh.exit.i.i.i.for.body.i.i.i_crit_edge

gfx_v6_0_select_se_sh.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %gfx_v6_0_select_se_sh.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

gfx_v6_0_write_harvested_raster_configs.exit.i.i: ; preds = %gfx_v6_0_select_se_sh.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8203, i32 noundef -536870912, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %se_mask.i.i.i) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %gfx_v6_0_write_harvested_raster_configs.exit.i.i, %if.then.i398.i
  %220 = ptrtoint ptr %config147.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %config147.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp332498.not.i.i = icmp eq i32 %221, 0
  br i1 %cmp332498.not.i.i, label %if.end.i.i.gfx_v6_0_setup_rb.exit.i_crit_edge, label %if.end.i.i.for.cond335.preheader.i.i_crit_edge

if.end.i.i.for.cond335.preheader.i.i_crit_edge:   ; preds = %if.end.i.i
  br label %for.cond335.preheader.i.i

if.end.i.i.gfx_v6_0_setup_rb.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_setup_rb.exit.i

for.cond335.preheader.i.i:                        ; preds = %for.inc362.i.i.for.cond335.preheader.i.i_crit_edge, %if.end.i.i.for.cond335.preheader.i.i_crit_edge
  %i.1499.i.i = phi i32 [ %inc363.i.i, %for.inc362.i.i.for.cond335.preheader.i.i_crit_edge ], [ 0, %if.end.i.i.for.cond335.preheader.i.i_crit_edge ]
  %222 = ptrtoint ptr %max_sh_per_se157.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %max_sh_per_se157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp339496.not.i.i = icmp eq i32 %223, 0
  br i1 %cmp339496.not.i.i, label %for.cond335.preheader.i.i.for.inc362.i.i_crit_edge, label %for.body341.lr.ph.i.i

for.cond335.preheader.i.i.for.inc362.i.i_crit_edge: ; preds = %for.cond335.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc362.i.i

for.body341.lr.ph.i.i:                            ; preds = %for.cond335.preheader.i.i
  %shl19.i476.i.i = shl i32 %i.1499.i.i, 16
  br label %for.body341.i.i

for.body341.i.i:                                  ; preds = %for.body341.i.i.for.body341.i.i_crit_edge, %for.body341.lr.ph.i.i
  %j.1497.i.i = phi i32 [ 0, %for.body341.lr.ph.i.i ], [ %inc360.i.i, %for.body341.i.i.for.body341.i.i_crit_edge ]
  %shl8.i466.i.i = shl i32 %j.1497.i.i, 8
  %or20.i477.i.i = or i32 %shl19.i476.i.i, %shl8.i466.i.i
  %or21.i478.i.i = or i32 %or20.i477.i.i, 1073741824
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8203, i32 noundef %or21.i478.i.i, i32 noundef 0) #9
  %call342.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9789, i32 noundef 0) #9
  %arrayidx345.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 30, i32 %i.1499.i.i, i32 %j.1497.i.i
  %224 = ptrtoint ptr %arrayidx345.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %call342.i.i, ptr %arrayidx345.i.i, align 4
  %call346.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9951, i32 noundef 0) #9
  %user_rb_backend_disable.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 30, i32 %i.1499.i.i, i32 %j.1497.i.i, i32 1
  %225 = ptrtoint ptr %user_rb_backend_disable.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %call346.i.i, ptr %user_rb_backend_disable.i.i, align 4
  %call352.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 41172, i32 noundef 0) #9
  %raster_config358.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 30, i32 %i.1499.i.i, i32 %j.1497.i.i, i32 2
  %226 = ptrtoint ptr %raster_config358.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %call352.i.i, ptr %raster_config358.i.i, align 4
  %inc360.i.i = add nuw i32 %j.1497.i.i, 1
  %227 = ptrtoint ptr %max_sh_per_se157.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %max_sh_per_se157.i, align 4
  %cmp339.i.i = icmp ult i32 %inc360.i.i, %228
  br i1 %cmp339.i.i, label %for.body341.i.i.for.body341.i.i_crit_edge, label %for.body341.i.i.for.inc362.i.i_crit_edge

for.body341.i.i.for.inc362.i.i_crit_edge:         ; preds = %for.body341.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc362.i.i

for.body341.i.i.for.body341.i.i_crit_edge:        ; preds = %for.body341.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body341.i.i

for.inc362.i.i:                                   ; preds = %for.body341.i.i.for.inc362.i.i_crit_edge, %for.cond335.preheader.i.i.for.inc362.i.i_crit_edge
  %inc363.i.i = add nuw i32 %i.1499.i.i, 1
  %229 = ptrtoint ptr %config147.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %config147.i, align 8
  %cmp332.i.i = icmp ult i32 %inc363.i.i, %230
  br i1 %cmp332.i.i, label %for.inc362.i.i.for.cond335.preheader.i.i_crit_edge, label %for.inc362.i.i.gfx_v6_0_setup_rb.exit.i_crit_edge

for.inc362.i.i.gfx_v6_0_setup_rb.exit.i_crit_edge: ; preds = %for.inc362.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_setup_rb.exit.i

for.inc362.i.i.for.cond335.preheader.i.i_crit_edge: ; preds = %for.inc362.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond335.preheader.i.i

gfx_v6_0_setup_rb.exit.i:                         ; preds = %for.inc362.i.i.gfx_v6_0_setup_rb.exit.i_crit_edge, %if.end.i.i.gfx_v6_0_setup_rb.exit.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8203, i32 noundef -536870912, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i.i) #9
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i.i, i32 noundef 0) #9
  %231 = ptrtoint ptr %config147.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %config147.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp41.not.i.i = icmp eq i32 %232, 0
  br i1 %cmp41.not.i.i, label %gfx_v6_0_setup_rb.exit.i.gfx_v6_0_setup_spi.exit.i_crit_edge, label %gfx_v6_0_setup_rb.exit.i.for.cond1.preheader.i.i_crit_edge

gfx_v6_0_setup_rb.exit.i.for.cond1.preheader.i.i_crit_edge: ; preds = %gfx_v6_0_setup_rb.exit.i
  br label %for.cond1.preheader.i.i

gfx_v6_0_setup_rb.exit.i.gfx_v6_0_setup_spi.exit.i_crit_edge: ; preds = %gfx_v6_0_setup_rb.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_setup_spi.exit.i

for.cond1.preheader.i.i:                          ; preds = %for.inc14.i.i.for.cond1.preheader.i.i_crit_edge, %gfx_v6_0_setup_rb.exit.i.for.cond1.preheader.i.i_crit_edge
  %i.042.i.i = phi i32 [ %inc15.i.i, %for.inc14.i.i.for.cond1.preheader.i.i_crit_edge ], [ 0, %gfx_v6_0_setup_rb.exit.i.for.cond1.preheader.i.i_crit_edge ]
  %233 = ptrtoint ptr %max_sh_per_se157.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %max_sh_per_se157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %cmp439.not.i.i = icmp eq i32 %234, 0
  br i1 %cmp439.not.i.i, label %for.cond1.preheader.i.i.for.inc14.i.i_crit_edge, label %for.body5.lr.ph.i.i

for.cond1.preheader.i.i.for.inc14.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.i.i

for.body5.lr.ph.i.i:                              ; preds = %for.cond1.preheader.i.i
  %shl19.i.i402.i = shl i32 %i.042.i.i, 16
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %for.inc11.i.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %j.040.i.i = phi i32 [ 0, %for.body5.lr.ph.i.i ], [ %inc12.i.i, %for.inc11.i.i.for.body5.i.i_crit_edge ]
  %shl8.i.i403.i = shl i32 %j.040.i.i, 8
  %or20.i.i404.i = or i32 %shl19.i.i402.i, %shl8.i.i403.i
  %or21.i.i405.i = or i32 %or20.i.i404.i, 1073741824
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8203, i32 noundef %or21.i.i405.i, i32 noundef 0) #9
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9274, i32 noundef 0) #9
  %call.i.i406.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8815, i32 noundef 0) #9
  %call1.i.i407.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8816, i32 noundef 0) #9
  %or.i.i408.i = or i32 %call1.i.i407.i, %call.i.i406.i
  %235 = ptrtoint ptr %max_cu_per_sh154.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %max_cu_per_sh154.i, align 8
  %sh_prom.i.i.i409.i = zext i32 %236 to i64
  %notmask.i.i.i410.i = shl nsw i64 -1, %sh_prom.i.i.i409.i
  %237 = trunc i64 %notmask.i.i.i410.i to i32
  %shr.i.i411.i = lshr i32 %or.i.i408.i, 16
  %and3.demorgan.i.i.i = or i32 %shr.i.i411.i, %237
  %and3.i.i.i = xor i32 %and3.demorgan.i.i.i, -1
  %and.i412.i = and i32 %and3.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i412.i)
  %tobool.not.i.i = icmp eq i32 %and.i412.i, 0
  br i1 %tobool.not.i.i, label %for.cond7.i.i, label %for.body5.i.i.if.then.i413.i_crit_edge

for.body5.i.i.if.then.i413.i_crit_edge:           ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i413.i

for.cond7.i.i:                                    ; preds = %for.body5.i.i
  %and.1.i.i = and i32 %and3.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond7.1.i.i, label %for.cond7.i.i.if.then.i413.i_crit_edge

for.cond7.i.i.if.then.i413.i_crit_edge:           ; preds = %for.cond7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i413.i

for.cond7.1.i.i:                                  ; preds = %for.cond7.i.i
  %and.2.i.i = and i32 %and3.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond7.2.i.i, label %for.cond7.1.i.i.if.then.i413.i_crit_edge

for.cond7.1.i.i.if.then.i413.i_crit_edge:         ; preds = %for.cond7.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i413.i

for.cond7.2.i.i:                                  ; preds = %for.cond7.1.i.i
  %and.3.i.i = and i32 %and3.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond7.3.i.i, label %for.cond7.2.i.i.if.then.i413.i_crit_edge

for.cond7.2.i.i.if.then.i413.i_crit_edge:         ; preds = %for.cond7.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i413.i

for.cond7.3.i.i:                                  ; preds = %for.cond7.2.i.i
  %and.4.i.i = and i32 %and3.i.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.cond7.4.i.i, label %for.cond7.3.i.i.if.then.i413.i_crit_edge

for.cond7.3.i.i.if.then.i413.i_crit_edge:         ; preds = %for.cond7.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i413.i

for.cond7.4.i.i:                                  ; preds = %for.cond7.3.i.i
  %and.5.i.i = and i32 %and3.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.cond7.5.i.i, label %for.cond7.4.i.i.if.then.i413.i_crit_edge

for.cond7.4.i.i.if.then.i413.i_crit_edge:         ; preds = %for.cond7.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i413.i

for.cond7.5.i.i:                                  ; preds = %for.cond7.4.i.i
  %and.6.i.i = and i32 %and3.i.i.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %for.cond7.6.i.i, label %for.cond7.5.i.i.if.then.i413.i_crit_edge

for.cond7.5.i.i.if.then.i413.i_crit_edge:         ; preds = %for.cond7.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i413.i

for.cond7.6.i.i:                                  ; preds = %for.cond7.5.i.i
  %and.7.i.i = and i32 %and3.i.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %and.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %for.cond7.6.i.i.for.inc11.i.i_crit_edge, label %for.cond7.6.i.i.if.then.i413.i_crit_edge

for.cond7.6.i.i.if.then.i413.i_crit_edge:         ; preds = %for.cond7.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i413.i

for.cond7.6.i.i.for.inc11.i.i_crit_edge:          ; preds = %for.cond7.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc11.i.i

if.then.i413.i:                                   ; preds = %for.cond7.6.i.i.if.then.i413.i_crit_edge, %for.cond7.5.i.i.if.then.i413.i_crit_edge, %for.cond7.4.i.i.if.then.i413.i_crit_edge, %for.cond7.3.i.i.if.then.i413.i_crit_edge, %for.cond7.2.i.i.if.then.i413.i_crit_edge, %for.cond7.1.i.i.if.then.i413.i_crit_edge, %for.cond7.i.i.if.then.i413.i_crit_edge, %for.body5.i.i.if.then.i413.i_crit_edge
  %shl.lcssa.i.i = phi i32 [ -2, %for.body5.i.i.if.then.i413.i_crit_edge ], [ -3, %for.cond7.i.i.if.then.i413.i_crit_edge ], [ -9, %for.cond7.1.i.i.if.then.i413.i_crit_edge ], [ -65, %for.cond7.2.i.i.if.then.i413.i_crit_edge ], [ -1025, %for.cond7.3.i.i.if.then.i413.i_crit_edge ], [ -32769, %for.cond7.4.i.i.if.then.i413.i_crit_edge ], [ -2097153, %for.cond7.5.i.i.if.then.i413.i_crit_edge ], [ -268435457, %for.cond7.6.i.i.if.then.i413.i_crit_edge ]
  %and10.i.i = and i32 %shl.lcssa.i.i, %call.i.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9274, i32 noundef %and10.i.i, i32 noundef 0) #9
  br label %for.inc11.i.i

for.inc11.i.i:                                    ; preds = %if.then.i413.i, %for.cond7.6.i.i.for.inc11.i.i_crit_edge
  %inc12.i.i = add nuw i32 %j.040.i.i, 1
  %238 = ptrtoint ptr %max_sh_per_se157.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %max_sh_per_se157.i, align 4
  %cmp4.i.i = icmp ult i32 %inc12.i.i, %239
  br i1 %cmp4.i.i, label %for.inc11.i.i.for.body5.i.i_crit_edge, label %for.inc11.i.i.for.inc14.i.i_crit_edge

for.inc11.i.i.for.inc14.i.i_crit_edge:            ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.i.i

for.inc11.i.i.for.body5.i.i_crit_edge:            ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i.i

for.inc14.i.i:                                    ; preds = %for.inc11.i.i.for.inc14.i.i_crit_edge, %for.cond1.preheader.i.i.for.inc14.i.i_crit_edge
  %inc15.i.i = add nuw i32 %i.042.i.i, 1
  %240 = ptrtoint ptr %config147.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %config147.i, align 8
  %cmp.i414.i = icmp ult i32 %inc15.i.i, %241
  br i1 %cmp.i414.i, label %for.inc14.i.i.for.cond1.preheader.i.i_crit_edge, label %for.inc14.i.i.gfx_v6_0_setup_spi.exit.i_crit_edge

for.inc14.i.i.gfx_v6_0_setup_spi.exit.i_crit_edge: ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_setup_spi.exit.i

for.inc14.i.i.for.cond1.preheader.i.i_crit_edge:  ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader.i.i

gfx_v6_0_setup_spi.exit.i:                        ; preds = %for.inc14.i.i.gfx_v6_0_setup_spi.exit.i_crit_edge, %gfx_v6_0_setup_rb.exit.i.gfx_v6_0_setup_spi.exit.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8203, i32 noundef -536870912, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i.i) #9
  %cu_info1.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %disable_masks.i.i) #9
  %flags.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %242 = call ptr @memset(ptr %disable_masks.i.i, i32 255, i32 32)
  %243 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %flags.i.i, align 8
  %and.i415.i = and i32 %244, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i415.i)
  %tobool.not.i416.i = icmp eq i32 %and.i415.i, 0
  br i1 %tobool.not.i416.i, label %if.else.i417.i, label %gfx_v6_0_setup_spi.exit.i.if.end.i419.i_crit_edge

gfx_v6_0_setup_spi.exit.i.if.end.i419.i_crit_edge: ; preds = %gfx_v6_0_setup_spi.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i419.i

if.else.i417.i:                                   ; preds = %gfx_v6_0_setup_spi.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %245 = ptrtoint ptr %max_cu_per_sh154.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %max_cu_per_sh154.i, align 8
  br label %if.end.i419.i

if.end.i419.i:                                    ; preds = %if.else.i417.i, %gfx_v6_0_setup_spi.exit.i.if.end.i419.i_crit_edge
  %ao_cu_num.0.i.i = phi i32 [ %246, %if.else.i417.i ], [ 2, %gfx_v6_0_setup_spi.exit.i.if.end.i419.i_crit_edge ]
  %247 = call ptr @memset(ptr %cu_info1.i.i, i32 0, i32 156)
  call void @amdgpu_gfx_parse_disable_cu(ptr noundef nonnull %disable_masks.i.i, i32 noundef 4, i32 noundef 2) #9
  call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i.i, i32 noundef 0) #9
  %248 = ptrtoint ptr %config147.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %config147.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp108.not.i.i = icmp eq i32 %249, 0
  br i1 %cmp108.not.i.i, label %if.end.i419.i.gfx_v6_0_constants_init.exit_crit_edge, label %if.end.i419.i.for.cond5.preheader.i422.i_crit_edge

if.end.i419.i.for.cond5.preheader.i422.i_crit_edge: ; preds = %if.end.i419.i
  br label %for.cond5.preheader.i422.i

if.end.i419.i.gfx_v6_0_constants_init.exit_crit_edge: ; preds = %if.end.i419.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_constants_init.exit

for.cond5.preheader.i422.i:                       ; preds = %for.inc47.i.i.for.cond5.preheader.i422.i_crit_edge, %if.end.i419.i.for.cond5.preheader.i422.i_crit_edge
  %ao_cu_mask.0112.i.i = phi i32 [ %ao_cu_mask.1.lcssa.i.i, %for.inc47.i.i.for.cond5.preheader.i422.i_crit_edge ], [ 0, %if.end.i419.i.for.cond5.preheader.i422.i_crit_edge ]
  %active_cu_number.0111.i.i = phi i32 [ %active_cu_number.1.lcssa.i.i, %for.inc47.i.i.for.cond5.preheader.i422.i_crit_edge ], [ 0, %if.end.i419.i.for.cond5.preheader.i422.i_crit_edge ]
  %i.0109.i.i = phi i32 [ %inc48.i.i, %for.inc47.i.i.for.cond5.preheader.i422.i_crit_edge ], [ 0, %if.end.i419.i.for.cond5.preheader.i422.i_crit_edge ]
  %250 = ptrtoint ptr %max_sh_per_se157.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %max_sh_per_se157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp8102.not.i.i = icmp eq i32 %251, 0
  br i1 %cmp8102.not.i.i, label %for.cond5.preheader.i422.i.for.inc47.i.i_crit_edge, label %for.body9.lr.ph.i.i

for.cond5.preheader.i422.i.for.inc47.i.i_crit_edge: ; preds = %for.cond5.preheader.i422.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47.i.i

for.body9.lr.ph.i.i:                              ; preds = %for.cond5.preheader.i422.i
  %shl19.i.i423.i = shl i32 %i.0109.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0109.i.i)
  %cmp10.i.i = icmp slt i32 %i.0109.i.i, 4
  %mul.i424.i = shl i32 %i.0109.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0109.i.i)
  %cmp32.i.i = icmp slt i32 %i.0109.i.i, 2
  %mul36.i.i = shl i32 %i.0109.i.i, 4
  br label %for.body9.i.i

for.body9.i.i:                                    ; preds = %for.end.i.i.for.body9.i.i_crit_edge, %for.body9.lr.ph.i.i
  %ao_cu_mask.1105.i.i = phi i32 [ %ao_cu_mask.0112.i.i, %for.body9.lr.ph.i.i ], [ %ao_cu_mask.2.i.i, %for.end.i.i.for.body9.i.i_crit_edge ]
  %active_cu_number.1104.i.i = phi i32 [ %active_cu_number.0111.i.i, %for.body9.lr.ph.i.i ], [ %add31.i.i, %for.end.i.i.for.body9.i.i_crit_edge ]
  %j.0103.i.i = phi i32 [ 0, %for.body9.lr.ph.i.i ], [ %inc45.i.i, %for.end.i.i.for.body9.i.i_crit_edge ]
  %shl8.i.i425.i = shl i32 %j.0103.i.i, 8
  %or20.i.i426.i = or i32 %shl19.i.i423.i, %shl8.i.i425.i
  %or21.i.i427.i = or i32 %or20.i.i426.i, 1073741824
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8203, i32 noundef %or21.i.i427.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %j.0103.i.i)
  %cmp11.i.i = icmp slt i32 %j.0103.i.i, 2
  %or.cond.i.i = select i1 %cmp10.i.i, i1 %cmp11.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then12.i.i, label %for.body9.i.i.if.end13.i.i_crit_edge

for.body9.i.i.if.end13.i.i_crit_edge:             ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.then12.i.i:                                    ; preds = %for.body9.i.i
  %add.i428.i = add i32 %j.0103.i.i, %mul.i424.i
  %arrayidx.i.i = getelementptr [8 x i32], ptr %disable_masks.i.i, i32 0, i32 %add.i428.i
  %252 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool.not.i.i.i = icmp eq i32 %253, 0
  br i1 %tobool.not.i.i.i, label %if.then12.i.i.if.end13.i.i_crit_edge, label %if.end.i.i429.i

if.then12.i.i.if.end13.i.i_crit_edge:             ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.end.i.i429.i:                                  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i.i = shl i32 %253, 16
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8816, i32 noundef %shl.i.i.i, i32 noundef 0) #9
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end.i.i429.i, %if.then12.i.i.if.end13.i.i_crit_edge, %for.body9.i.i.if.end13.i.i_crit_edge
  %call.i.i430.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8815, i32 noundef 0) #9
  %call1.i.i431.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8816, i32 noundef 0) #9
  %or.i.i432.i = or i32 %call1.i.i431.i, %call.i.i430.i
  %254 = ptrtoint ptr %max_cu_per_sh154.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %max_cu_per_sh154.i, align 8
  %sh_prom.i.i.i433.i = zext i32 %255 to i64
  %notmask.i.i.i434.i = shl nsw i64 -1, %sh_prom.i.i.i433.i
  %256 = trunc i64 %notmask.i.i.i434.i to i32
  %shr.i.i435.i = lshr i32 %or.i.i432.i, 16
  %and3.demorgan.i.i436.i = or i32 %shr.i.i435.i, %256
  %and3.i.i437.i = xor i32 %and3.demorgan.i.i436.i, -1
  %arrayidx16.i438.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 8, i32 %i.0109.i.i, i32 %j.0103.i.i
  %257 = ptrtoint ptr %arrayidx16.i438.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %and3.i.i437.i, ptr %arrayidx16.i438.i, align 4
  %258 = load i32, ptr %max_cu_per_sh154.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %cmp2196.not.i.i = icmp eq i32 %258, 0
  br i1 %cmp2196.not.i.i, label %if.end13.i.i.for.end.i.i_crit_edge, label %if.end13.i.i.for.body22.i.i_crit_edge

if.end13.i.i.for.body22.i.i_crit_edge:            ; preds = %if.end13.i.i
  br label %for.body22.i.i

if.end13.i.i.for.end.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body22.i.i:                                   ; preds = %for.body22.i.i.for.body22.i.i_crit_edge, %if.end13.i.i.for.body22.i.i_crit_edge
  %ao_bitmap.0100.i.i = phi i32 [ %ao_bitmap.2.i.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ 0, %if.end13.i.i.for.body22.i.i_crit_edge ]
  %mask.099.i.i = phi i32 [ %shl.i441.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ 1, %if.end13.i.i.for.body22.i.i_crit_edge ]
  %counter.098.i.i = phi i32 [ %counter.1.i.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ 0, %if.end13.i.i.for.body22.i.i_crit_edge ]
  %k.097.i.i = phi i32 [ %inc30.i.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ 0, %if.end13.i.i.for.body22.i.i_crit_edge ]
  %and23.i.i = and i32 %mask.099.i.i, %and3.i.i437.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %counter.098.i.i, i32 %ao_cu_num.0.i.i)
  %cmp26.i.i = icmp ult i32 %counter.098.i.i, %ao_cu_num.0.i.i
  %or.i439.i = select i1 %cmp26.i.i, i32 %mask.099.i.i, i32 0
  %not.tobool24.not.i.i = xor i1 %tobool24.not.i.i, true
  %inc.i440.i = zext i1 %not.tobool24.not.i.i to i32
  %counter.1.i.i = add i32 %counter.098.i.i, %inc.i440.i
  %spec.select.i.i = select i1 %tobool24.not.i.i, i32 0, i32 %or.i439.i
  %ao_bitmap.2.i.i = or i32 %spec.select.i.i, %ao_bitmap.0100.i.i
  %shl.i441.i = shl i32 %mask.099.i.i, 1
  %inc30.i.i = add nuw i32 %k.097.i.i, 1
  %exitcond.not.i442.i = icmp eq i32 %inc30.i.i, %258
  br i1 %exitcond.not.i442.i, label %for.body22.i.i.for.end.i.i_crit_edge, label %for.body22.i.i.for.body22.i.i_crit_edge

for.body22.i.i.for.body22.i.i_crit_edge:          ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22.i.i

for.body22.i.i.for.end.i.i_crit_edge:             ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body22.i.i.for.end.i.i_crit_edge, %if.end13.i.i.for.end.i.i_crit_edge
  %counter.0.lcssa.i.i = phi i32 [ 0, %if.end13.i.i.for.end.i.i_crit_edge ], [ %counter.1.i.i, %for.body22.i.i.for.end.i.i_crit_edge ]
  %ao_bitmap.0.lcssa.i.i = phi i32 [ 0, %if.end13.i.i.for.end.i.i_crit_edge ], [ %ao_bitmap.2.i.i, %for.body22.i.i.for.end.i.i_crit_edge ]
  %add31.i.i = add i32 %counter.0.lcssa.i.i, %active_cu_number.1104.i.i
  %or.cond93.i.i = select i1 %cmp32.i.i, i1 %cmp11.i.i, i1 false
  %mul37.i.i = shl i32 %j.0103.i.i, 3
  %add38.i.i = add i32 %mul37.i.i, %mul36.i.i
  %shl39.i.i = shl i32 %ao_bitmap.0.lcssa.i.i, %add38.i.i
  %or40.i.i = select i1 %or.cond93.i.i, i32 %shl39.i.i, i32 0
  %ao_cu_mask.2.i.i = or i32 %or40.i.i, %ao_cu_mask.1105.i.i
  %arrayidx43.i443.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 7, i32 %i.0109.i.i, i32 %j.0103.i.i
  %259 = ptrtoint ptr %arrayidx43.i443.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %ao_bitmap.0.lcssa.i.i, ptr %arrayidx43.i443.i, align 4
  %inc45.i.i = add nuw i32 %j.0103.i.i, 1
  %260 = ptrtoint ptr %max_sh_per_se157.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %max_sh_per_se157.i, align 4
  %cmp8.i.i = icmp ult i32 %inc45.i.i, %261
  br i1 %cmp8.i.i, label %for.end.i.i.for.body9.i.i_crit_edge, label %for.end.i.i.for.inc47.i.i_crit_edge

for.end.i.i.for.inc47.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47.i.i

for.end.i.i.for.body9.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9.i.i

for.inc47.i.i:                                    ; preds = %for.end.i.i.for.inc47.i.i_crit_edge, %for.cond5.preheader.i422.i.for.inc47.i.i_crit_edge
  %active_cu_number.1.lcssa.i.i = phi i32 [ %active_cu_number.0111.i.i, %for.cond5.preheader.i422.i.for.inc47.i.i_crit_edge ], [ %add31.i.i, %for.end.i.i.for.inc47.i.i_crit_edge ]
  %ao_cu_mask.1.lcssa.i.i = phi i32 [ %ao_cu_mask.0112.i.i, %for.cond5.preheader.i422.i.for.inc47.i.i_crit_edge ], [ %ao_cu_mask.2.i.i, %for.end.i.i.for.inc47.i.i_crit_edge ]
  %inc48.i.i = add nuw i32 %i.0109.i.i, 1
  %262 = ptrtoint ptr %config147.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %config147.i, align 8
  %cmp.i444.i = icmp ult i32 %inc48.i.i, %263
  br i1 %cmp.i444.i, label %for.inc47.i.i.for.cond5.preheader.i422.i_crit_edge, label %for.inc47.i.i.gfx_v6_0_constants_init.exit_crit_edge

for.inc47.i.i.gfx_v6_0_constants_init.exit_crit_edge: ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_constants_init.exit

for.inc47.i.i.for.cond5.preheader.i422.i_crit_edge: ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5.preheader.i422.i

gfx_v6_0_constants_init.exit:                     ; preds = %for.inc47.i.i.gfx_v6_0_constants_init.exit_crit_edge, %if.end.i419.i.gfx_v6_0_constants_init.exit_crit_edge
  %active_cu_number.0.lcssa.i.i = phi i32 [ 0, %if.end.i419.i.gfx_v6_0_constants_init.exit_crit_edge ], [ %active_cu_number.1.lcssa.i.i, %for.inc47.i.i.gfx_v6_0_constants_init.exit_crit_edge ]
  %ao_cu_mask.0.lcssa.i.i = phi i32 [ 0, %if.end.i419.i.gfx_v6_0_constants_init.exit_crit_edge ], [ %ao_cu_mask.1.lcssa.i.i, %for.inc47.i.i.gfx_v6_0_constants_init.exit_crit_edge ]
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8203, i32 noundef -536870912, i32 noundef 0) #9
  call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i.i) #9
  %number.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 5
  %264 = ptrtoint ptr %number.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %active_cu_number.0.lcssa.i.i, ptr %number.i.i, align 4
  %ao_cu_mask51.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 6
  %265 = ptrtoint ptr %ao_cu_mask51.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %ao_cu_mask.0.lcssa.i.i, ptr %ao_cu_mask51.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %disable_masks.i.i) #9
  %double_offchip_lds_buf.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 31
  %266 = ptrtoint ptr %double_offchip_lds_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 0, ptr %double_offchip_lds_buf.i.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8664, i32 noundef 11030, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8665, i32 noundef 24624, i32 noundef 0) #9
  %call237.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9240, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9240, i32 noundef %call237.i, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9295, i32 noundef 4, i32 noundef 0) #9
  %267 = ptrtoint ptr %sc_prim_fifo_size_frontend175.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %sc_prim_fifo_size_frontend175.i, align 4
  %269 = ptrtoint ptr %sc_prim_fifo_size_backend178.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %sc_prim_fifo_size_backend178.i, align 8
  %shl245.i = shl i32 %270, 6
  %or246.i = or i32 %shl245.i, %268
  %271 = ptrtoint ptr %sc_hiz_tile_fifo_size181.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %sc_hiz_tile_fifo_size181.i, align 4
  %shl250.i = shl i32 %272, 15
  %or251.i = or i32 %or246.i, %shl250.i
  %273 = ptrtoint ptr %sc_earlyz_tile_fifo_size184.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %sc_earlyz_tile_fifo_size184.i, align 8
  %shl255.i = shl i32 %274, 23
  %or256.i = or i32 %or251.i, %shl255.i
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8947, i32 noundef %or256.i, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8797, i32 noundef 1, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8703, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8960, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8905, i32 noundef 16715775, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8753, i32 noundef 194, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8757, i32 noundef 16, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8900, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9864, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9865, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9866, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9867, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9868, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9869, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9870, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9871, i32 noundef 0, i32 noundef 0) #9
  %call257.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2816, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2816, i32 noundef %call257.i, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8837, i32 noundef 7, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %275(i32 noundef 10737400) #9
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %276 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %funcs, align 4
  %resume = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %277, i32 0, i32 7
  %278 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %resume, align 4
  %call = call i32 %279(ptr noundef %handle) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %gfx_v6_0_constants_init.exit.cleanup_crit_edge

gfx_v6_0_constants_init.exit.cleanup_crit_edge:   ; preds = %gfx_v6_0_constants_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %gfx_v6_0_constants_init.exit
  %call.i.i15 = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12394, i32 noundef 0) #9
  %and.i.i16 = and i32 %call.i.i15, -1572865
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12394, i32 noundef %and.i.i16, i32 noundef 0) #9
  %call3.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 40975, i32 noundef 0) #9
  %usec_timeout.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %280 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %cmp18.i.i = icmp sgt i32 %281, 0
  br i1 %cmp18.i.i, label %if.end.for.body.i.i17_crit_edge, label %if.end.gfx_v6_0_enable_gui_idle_interrupt.exit.i_crit_edge

if.end.gfx_v6_0_enable_gui_idle_interrupt.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gui_idle_interrupt.exit.i

if.end.for.body.i.i17_crit_edge:                  ; preds = %if.end
  br label %for.body.i.i17

for.body.i.i17:                                   ; preds = %if.end8.i.i.for.body.i.i17_crit_edge, %if.end.for.body.i.i17_crit_edge
  %i.019.i.i = phi i32 [ %inc.i.i18, %if.end8.i.i.for.body.i.i17_crit_edge ], [ 0, %if.end.for.body.i.i17_crit_edge ]
  %call4.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12499, i32 noundef 0) #9
  %and5.i.i = and i32 %call4.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and5.i.i)
  %cmp6.i.i = icmp eq i32 %and5.i.i, 6
  br i1 %cmp6.i.i, label %for.body.i.i17.gfx_v6_0_enable_gui_idle_interrupt.exit.i_crit_edge, label %if.end8.i.i

for.body.i.i17.gfx_v6_0_enable_gui_idle_interrupt.exit.i_crit_edge: ; preds = %for.body.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gui_idle_interrupt.exit.i

if.end8.i.i:                                      ; preds = %for.body.i.i17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %282 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %282(i32 noundef 214748) #9
  %inc.i.i18 = add nuw nsw i32 %i.019.i.i, 1
  %283 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i.i19 = icmp slt i32 %inc.i.i18, %284
  br i1 %cmp.i.i19, label %if.end8.i.i.for.body.i.i17_crit_edge, label %if.end8.i.i.gfx_v6_0_enable_gui_idle_interrupt.exit.i_crit_edge

if.end8.i.i.gfx_v6_0_enable_gui_idle_interrupt.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gui_idle_interrupt.exit.i

if.end8.i.i.for.body.i.i17_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i17

gfx_v6_0_enable_gui_idle_interrupt.exit.i:        ; preds = %if.end8.i.i.gfx_v6_0_enable_gui_idle_interrupt.exit.i_crit_edge, %for.body.i.i17.gfx_v6_0_enable_gui_idle_interrupt.exit.i_crit_edge, %if.end.gfx_v6_0_enable_gui_idle_interrupt.exit.i_crit_edge
  %me_fw.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 9
  %285 = ptrtoint ptr %me_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %me_fw.i.i.i, align 4
  %tobool.not.i.i.i20 = icmp eq ptr %286, null
  br i1 %tobool.not.i.i.i20, label %gfx_v6_0_enable_gui_idle_interrupt.exit.i.cleanup_crit_edge, label %lor.lhs.false.i.i.i

gfx_v6_0_enable_gui_idle_interrupt.exit.i.cleanup_crit_edge: ; preds = %gfx_v6_0_enable_gui_idle_interrupt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %gfx_v6_0_enable_gui_idle_interrupt.exit.i
  %pfp_fw.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 11
  %287 = ptrtoint ptr %pfp_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %pfp_fw.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %288, null
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.cleanup_crit_edge, label %lor.lhs.false3.i.i.i

lor.lhs.false.i.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %ce_fw.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 13
  %289 = ptrtoint ptr %ce_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ce_fw.i.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %290, null
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false3.i.i.i.cleanup_crit_edge, label %if.end.i.i.i21

lor.lhs.false3.i.i.i.cleanup_crit_edge:           ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i21:                                   ; preds = %lor.lhs.false3.i.i.i
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8630, i32 noundef 352321536, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8528, i32 noundef 0, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %291 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %291(i32 noundef 10737400) #9
  %292 = ptrtoint ptr %pfp_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %pfp_fw.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %data.i.i.i, align 4
  %296 = ptrtoint ptr %ce_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ce_fw.i.i.i, align 4
  %data10.i.i.i = getelementptr inbounds %struct.firmware, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %data10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %data10.i.i.i, align 4
  %300 = ptrtoint ptr %me_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %me_fw.i.i.i, align 4
  %data13.i.i.i = getelementptr inbounds %struct.firmware, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %data13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %data13.i.i.i, align 4
  call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %295) #9
  call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %299) #9
  call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %303) #9
  %304 = ptrtoint ptr %pfp_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %pfp_fw.i.i.i, align 4
  %data18.i.i.i = getelementptr inbounds %struct.firmware, ptr %305, i32 0, i32 1
  %306 = ptrtoint ptr %data18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %data18.i.i.i, align 4
  %ucode_array_offset_bytes.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %295, i32 0, i32 8
  %308 = ptrtoint ptr %ucode_array_offset_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %ucode_array_offset_bytes.i.i.i, align 4
  %ucode_size_bytes.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %295, i32 0, i32 7
  %310 = ptrtoint ptr %ucode_size_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %ucode_size_bytes.i.i.i, align 4
  %312 = call i32 @llvm.bswap.i32(i32 %311) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12372, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %312)
  %cmp100.not.i.i.i = icmp ult i32 %312, 4
  br i1 %cmp100.not.i.i.i, label %if.end.i.i.i21.for.end.i.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end.i.i.i21.for.end.i.i.i_crit_edge:           ; preds = %if.end.i.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i.i21
  %div97.i.i.i = lshr i32 %312, 2
  %313 = call i32 @llvm.bswap.i32(i32 %309) #9
  %add.ptr.i.i.i = getelementptr i8, ptr %307, i32 %313
  br label %for.body.i.i.i24

for.body.i.i.i24:                                 ; preds = %for.body.i.i.i24.for.body.i.i.i24_crit_edge, %for.body.preheader.i.i.i
  %fw_data.0102.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i24.for.body.i.i.i24_crit_edge ], [ %add.ptr.i.i.i, %for.body.preheader.i.i.i ]
  %i.0101.i.i.i = phi i32 [ %inc.i.i.i22, %for.body.i.i.i24.for.body.i.i.i24_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %incdec.ptr.i.i.i = getelementptr i32, ptr %fw_data.0102.i.i.i, i32 1
  %314 = ptrtoint ptr %fw_data.0102.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %fw_data.0102.i.i.i, align 4
  %316 = call i32 @llvm.bswap.i32(i32 %315) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12373, i32 noundef %316, i32 noundef 0) #9
  %inc.i.i.i22 = add nuw nsw i32 %i.0101.i.i.i, 1
  %exitcond.not.i.i.i23 = icmp eq i32 %inc.i.i.i22, %div97.i.i.i
  br i1 %exitcond.not.i.i.i23, label %for.body.i.i.i24.for.end.i.i.i_crit_edge, label %for.body.i.i.i24.for.body.i.i.i24_crit_edge

for.body.i.i.i24.for.body.i.i.i24_crit_edge:      ; preds = %for.body.i.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i24

for.body.i.i.i24.for.end.i.i.i_crit_edge:         ; preds = %for.body.i.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i24.for.end.i.i.i_crit_edge, %if.end.i.i.i21.for.end.i.i.i_crit_edge
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12372, i32 noundef 0, i32 noundef 0) #9
  %317 = ptrtoint ptr %ce_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %ce_fw.i.i.i, align 4
  %data23.i.i.i = getelementptr inbounds %struct.firmware, ptr %318, i32 0, i32 1
  %319 = ptrtoint ptr %data23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %data23.i.i.i, align 4
  %ucode_array_offset_bytes25.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %299, i32 0, i32 8
  %321 = ptrtoint ptr %ucode_array_offset_bytes25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %ucode_array_offset_bytes25.i.i.i, align 4
  %ucode_size_bytes28.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %299, i32 0, i32 7
  %323 = ptrtoint ptr %ucode_size_bytes28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %ucode_size_bytes28.i.i.i, align 4
  %325 = call i32 @llvm.bswap.i32(i32 %324) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12378, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %325)
  %cmp31103.not.i.i.i = icmp ult i32 %325, 4
  br i1 %cmp31103.not.i.i.i, label %for.end.i.i.i.for.end37.i.i.i_crit_edge, label %for.body32.preheader.i.i.i

for.end.i.i.i.for.end37.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i.i

for.body32.preheader.i.i.i:                       ; preds = %for.end.i.i.i
  %div2998.i.i.i = lshr i32 %325, 2
  %326 = call i32 @llvm.bswap.i32(i32 %322) #9
  %add.ptr26.i.i.i = getelementptr i8, ptr %320, i32 %326
  br label %for.body32.i.i.i

for.body32.i.i.i:                                 ; preds = %for.body32.i.i.i.for.body32.i.i.i_crit_edge, %for.body32.preheader.i.i.i
  %fw_data.1105.i.i.i = phi ptr [ %incdec.ptr33.i.i.i, %for.body32.i.i.i.for.body32.i.i.i_crit_edge ], [ %add.ptr26.i.i.i, %for.body32.preheader.i.i.i ]
  %i.1104.i.i.i = phi i32 [ %inc36.i.i.i, %for.body32.i.i.i.for.body32.i.i.i_crit_edge ], [ 0, %for.body32.preheader.i.i.i ]
  %incdec.ptr33.i.i.i = getelementptr i32, ptr %fw_data.1105.i.i.i, i32 1
  %327 = ptrtoint ptr %fw_data.1105.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %fw_data.1105.i.i.i, align 4
  %329 = call i32 @llvm.bswap.i32(i32 %328) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12379, i32 noundef %329, i32 noundef 0) #9
  %inc36.i.i.i = add nuw nsw i32 %i.1104.i.i.i, 1
  %exitcond110.not.i.i.i = icmp eq i32 %inc36.i.i.i, %div2998.i.i.i
  br i1 %exitcond110.not.i.i.i, label %for.body32.i.i.i.for.end37.i.i.i_crit_edge, label %for.body32.i.i.i.for.body32.i.i.i_crit_edge

for.body32.i.i.i.for.body32.i.i.i_crit_edge:      ; preds = %for.body32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32.i.i.i

for.body32.i.i.i.for.end37.i.i.i_crit_edge:       ; preds = %for.body32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37.i.i.i

for.end37.i.i.i:                                  ; preds = %for.body32.i.i.i.for.end37.i.i.i_crit_edge, %for.end.i.i.i.for.end37.i.i.i_crit_edge
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12378, i32 noundef 0, i32 noundef 0) #9
  %330 = ptrtoint ptr %me_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %me_fw.i.i.i, align 4
  %data40.i.i.i = getelementptr inbounds %struct.firmware, ptr %331, i32 0, i32 1
  %332 = ptrtoint ptr %data40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %data40.i.i.i, align 4
  %ucode_array_offset_bytes42.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %303, i32 0, i32 8
  %334 = ptrtoint ptr %ucode_array_offset_bytes42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %ucode_array_offset_bytes42.i.i.i, align 4
  %ucode_size_bytes45.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %303, i32 0, i32 7
  %336 = ptrtoint ptr %ucode_size_bytes45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %ucode_size_bytes45.i.i.i, align 4
  %338 = call i32 @llvm.bswap.i32(i32 %337) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12375, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %338)
  %cmp48106.not.i.i.i = icmp ult i32 %338, 4
  br i1 %cmp48106.not.i.i.i, label %for.end37.i.i.i.if.end.i_crit_edge, label %for.body49.preheader.i.i.i

for.end37.i.i.i.if.end.i_crit_edge:               ; preds = %for.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body49.preheader.i.i.i:                       ; preds = %for.end37.i.i.i
  %div4699.i.i.i = lshr i32 %338, 2
  %339 = call i32 @llvm.bswap.i32(i32 %335) #9
  %add.ptr43.i.i.i = getelementptr i8, ptr %333, i32 %339
  br label %for.body49.i.i.i

for.body49.i.i.i:                                 ; preds = %for.body49.i.i.i.for.body49.i.i.i_crit_edge, %for.body49.preheader.i.i.i
  %fw_data.2108.i.i.i = phi ptr [ %incdec.ptr50.i.i.i, %for.body49.i.i.i.for.body49.i.i.i_crit_edge ], [ %add.ptr43.i.i.i, %for.body49.preheader.i.i.i ]
  %i.2107.i.i.i = phi i32 [ %inc53.i.i.i, %for.body49.i.i.i.for.body49.i.i.i_crit_edge ], [ 0, %for.body49.preheader.i.i.i ]
  %incdec.ptr50.i.i.i = getelementptr i32, ptr %fw_data.2108.i.i.i, i32 1
  %340 = ptrtoint ptr %fw_data.2108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %fw_data.2108.i.i.i, align 4
  %342 = call i32 @llvm.bswap.i32(i32 %341) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12376, i32 noundef %342, i32 noundef 0) #9
  %inc53.i.i.i = add nuw nsw i32 %i.2107.i.i.i, 1
  %exitcond112.not.i.i.i = icmp eq i32 %inc53.i.i.i, %div4699.i.i.i
  br i1 %exitcond112.not.i.i.i, label %for.body49.i.i.i.if.end.i_crit_edge, label %for.body49.i.i.i.for.body49.i.i.i_crit_edge

for.body49.i.i.i.for.body49.i.i.i_crit_edge:      ; preds = %for.body49.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49.i.i.i

for.body49.i.i.i.if.end.i_crit_edge:              ; preds = %for.body49.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %for.body49.i.i.i.if.end.i_crit_edge, %for.end37.i.i.i.if.end.i_crit_edge
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12375, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12372, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12378, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12375, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12374, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8559, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8562, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8641, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12415, i32 noundef 0, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8529, i32 noundef 0, i32 noundef 0) #9
  %gfx_ring.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36
  %ring_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 9
  %343 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %ring_size.i.i, align 8
  %div85.i.i = lshr i32 %344, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %344)
  %cmp.i.i.i = icmp ugt i32 %344, 15
  %sub.i86.i.i = add nsw i32 %div85.i.i, -1
  %345 = call i32 @llvm.ctlz.i32(i32 %sub.i86.i.i, i1 false) #9, !range !150
  %add.i.i.i30 = sub nuw nsw i32 32, %345
  %cond33.i.i = select i1 %cmp.i.i.i, i32 %add.i.i.i30, i32 0
  %or34.i.i = or i32 %cond33.i.i, 133376
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12353, i32 noundef %or34.i.i, i32 noundef 0) #9
  %or35.i.i = or i32 %cond33.i.i, -2147350272
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12353, i32 noundef %or35.i.i, i32 noundef 0) #9
  %wptr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 7
  %346 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_store8_noabort(i32 %346)
  store i64 0, ptr %wptr.i.i, align 8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12357, i32 noundef 0, i32 noundef 0) #9
  %gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 70, i32 2
  %347 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %gpu_addr.i.i, align 8
  %rptr_offs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 6
  %349 = ptrtoint ptr %rptr_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %rptr_offs.i.i, align 8
  %mul.i.i31 = shl i32 %350, 2
  %conv38.i.i = zext i32 %mul.i.i31 to i64
  %add39.i.i = add i64 %348, %conv38.i.i
  %conv40.i.i = trunc i64 %add39.i.i to i32
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12355, i32 noundef %conv40.i.i, i32 noundef 0) #9
  %shr.i.i32 = lshr i64 %add39.i.i, 32
  %conv42.i.i = trunc i64 %shr.i.i32 to i32
  %and43.i.i = and i32 %conv42.i.i, 255
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12356, i32 noundef %and43.i.i, i32 noundef 0) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8528, i32 noundef 0, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %351 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %351(i32 noundef 214748000) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12353, i32 noundef %or34.i.i, i32 noundef 0) #9
  %gpu_addr44.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 12
  %352 = ptrtoint ptr %gpu_addr44.i.i to i32
  call void @__asan_load8_noabort(i32 %352)
  %353 = load i64, ptr %gpu_addr44.i.i, align 8
  %shr45.i.i = lshr i64 %353, 8
  %conv46.i.i = trunc i64 %shr45.i.i to i32
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12352, i32 noundef %conv46.i.i, i32 noundef 0) #9
  %call.i.i.i33 = call i32 @amdgpu_ring_alloc(ptr noundef %gfx_ring.i.i, i32 noundef 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i33)
  %tobool.not.i.i19.i = icmp eq i32 %call.i.i.i33, 0
  br i1 %tobool.not.i.i19.i, label %if.end.i.i20.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %call.i.i.i33) #9
  br label %gfx_v6_0_cp_gfx_resume.exit.i

if.end.i.i20.i:                                   ; preds = %if.end.i
  %count_dw.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 11
  %354 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %355)
  %cmp.i.i.i.i = icmp slt i32 %355, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i20.i.amdgpu_ring_write.exit.i.i.i_crit_edge

if.end.i.i20.i.amdgpu_ring_write.exit.i.i.i_crit_edge: ; preds = %if.end.i.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit.i.i.i

amdgpu_ring_write.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %if.end.i.i20.i.amdgpu_ring_write.exit.i.i.i_crit_edge
  %ring1.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 5
  %356 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ring1.i.i.i.i, align 4
  %358 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %358)
  %359 = load i64, ptr %wptr.i.i, align 8
  %inc.i.i.i.i = add i64 %359, 1
  store i64 %inc.i.i.i.i, ptr %wptr.i.i, align 8
  %buf_mask.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 14
  %360 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %362 = trunc i64 %359 to i32
  %idxprom.i.i.i.i = and i32 %361, %362
  %arrayidx.i.i.i.i = getelementptr i32, ptr %357, i32 %idxprom.i.i.i.i
  %363 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store volatile i32 -1073396736, ptr %arrayidx.i.i.i.i, align 4
  %ptr_mask.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 13
  %364 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %364)
  %365 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %366 = load i64, ptr %wptr.i.i, align 8
  %and3.i.i.i.i = and i64 %366, %365
  store i64 %and3.i.i.i.i, ptr %wptr.i.i, align 8
  %367 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %368, -1
  store i32 %dec.i.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i.i.i)
  %cmp.i2.i.i.i = icmp slt i32 %dec.i.i.i.i, 1
  br i1 %cmp.i2.i.i.i, label %if.then.i3.i.i.i, label %amdgpu_ring_write.exit.i.i.i.amdgpu_ring_write.exit13.i.i.i_crit_edge

amdgpu_ring_write.exit.i.i.i.amdgpu_ring_write.exit13.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit13.i.i.i

if.then.i3.i.i.i:                                 ; preds = %amdgpu_ring_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit13.i.i.i

amdgpu_ring_write.exit13.i.i.i:                   ; preds = %if.then.i3.i.i.i, %amdgpu_ring_write.exit.i.i.i.amdgpu_ring_write.exit13.i.i.i_crit_edge
  %369 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %ring1.i.i.i.i, align 4
  %371 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %371)
  %372 = load i64, ptr %wptr.i.i, align 8
  %inc.i6.i.i.i = add i64 %372, 1
  store i64 %inc.i6.i.i.i, ptr %wptr.i.i, align 8
  %373 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %375 = trunc i64 %372 to i32
  %idxprom.i8.i.i.i = and i32 %374, %375
  %arrayidx.i9.i.i.i = getelementptr i32, ptr %370, i32 %idxprom.i8.i.i.i
  %376 = ptrtoint ptr %arrayidx.i9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store volatile i32 1, ptr %arrayidx.i9.i.i.i, align 4
  %377 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %377)
  %378 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %379 = load i64, ptr %wptr.i.i, align 8
  %and3.i11.i.i.i = and i64 %379, %378
  store i64 %and3.i11.i.i.i, ptr %wptr.i.i, align 8
  %380 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i12.i.i.i = add i32 %381, -1
  store i32 %dec.i12.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i12.i.i.i)
  %cmp.i15.i.i.i = icmp slt i32 %dec.i12.i.i.i, 1
  br i1 %cmp.i15.i.i.i, label %if.then.i16.i.i.i, label %amdgpu_ring_write.exit13.i.i.i.amdgpu_ring_write.exit26.i.i.i_crit_edge

amdgpu_ring_write.exit13.i.i.i.amdgpu_ring_write.exit26.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit26.i.i.i

if.then.i16.i.i.i:                                ; preds = %amdgpu_ring_write.exit13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit26.i.i.i

amdgpu_ring_write.exit26.i.i.i:                   ; preds = %if.then.i16.i.i.i, %amdgpu_ring_write.exit13.i.i.i.amdgpu_ring_write.exit26.i.i.i_crit_edge
  %382 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %ring1.i.i.i.i, align 4
  %384 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %384)
  %385 = load i64, ptr %wptr.i.i, align 8
  %inc.i19.i.i.i = add i64 %385, 1
  store i64 %inc.i19.i.i.i, ptr %wptr.i.i, align 8
  %386 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %388 = trunc i64 %385 to i32
  %idxprom.i21.i.i.i = and i32 %387, %388
  %arrayidx.i22.i.i.i = getelementptr i32, ptr %383, i32 %idxprom.i21.i.i.i
  %389 = ptrtoint ptr %arrayidx.i22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store volatile i32 0, ptr %arrayidx.i22.i.i.i, align 4
  %390 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %390)
  %391 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %392 = load i64, ptr %wptr.i.i, align 8
  %and3.i24.i.i.i = and i64 %392, %391
  store i64 %and3.i24.i.i.i, ptr %wptr.i.i, align 8
  %393 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i25.i.i.i = add i32 %394, -1
  store i32 %dec.i25.i.i.i, ptr %count_dw.i.i.i.i, align 8
  %395 = ptrtoint ptr %max_hw_contexts172.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %max_hw_contexts172.i, align 8
  %sub.i87.i.i = add i32 %396, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i25.i.i.i)
  %cmp.i28.i.i.i = icmp slt i32 %dec.i25.i.i.i, 1
  br i1 %cmp.i28.i.i.i, label %if.then.i29.i.i.i, label %amdgpu_ring_write.exit26.i.i.i.amdgpu_ring_write.exit39.i.i.i_crit_edge

amdgpu_ring_write.exit26.i.i.i.amdgpu_ring_write.exit39.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit39.i.i.i

if.then.i29.i.i.i:                                ; preds = %amdgpu_ring_write.exit26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit39.i.i.i

amdgpu_ring_write.exit39.i.i.i:                   ; preds = %if.then.i29.i.i.i, %amdgpu_ring_write.exit26.i.i.i.amdgpu_ring_write.exit39.i.i.i_crit_edge
  %397 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %ring1.i.i.i.i, align 4
  %399 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %399)
  %400 = load i64, ptr %wptr.i.i, align 8
  %inc.i32.i.i.i = add i64 %400, 1
  store i64 %inc.i32.i.i.i, ptr %wptr.i.i, align 8
  %401 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %403 = trunc i64 %400 to i32
  %idxprom.i34.i.i.i = and i32 %402, %403
  %arrayidx.i35.i.i.i = getelementptr i32, ptr %398, i32 %idxprom.i34.i.i.i
  %404 = ptrtoint ptr %arrayidx.i35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store volatile i32 %sub.i87.i.i, ptr %arrayidx.i35.i.i.i, align 4
  %405 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %405)
  %406 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %407 = load i64, ptr %wptr.i.i, align 8
  %and3.i37.i.i.i = and i64 %407, %406
  store i64 %and3.i37.i.i.i, ptr %wptr.i.i, align 8
  %408 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i38.i.i.i = add i32 %409, -1
  store i32 %dec.i38.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i38.i.i.i)
  %cmp.i41.i.i.i = icmp slt i32 %dec.i38.i.i.i, 1
  br i1 %cmp.i41.i.i.i, label %if.then.i42.i.i.i, label %amdgpu_ring_write.exit39.i.i.i.amdgpu_ring_write.exit52.i.i.i_crit_edge

amdgpu_ring_write.exit39.i.i.i.amdgpu_ring_write.exit52.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit39.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit52.i.i.i

if.then.i42.i.i.i:                                ; preds = %amdgpu_ring_write.exit39.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit52.i.i.i

amdgpu_ring_write.exit52.i.i.i:                   ; preds = %if.then.i42.i.i.i, %amdgpu_ring_write.exit39.i.i.i.amdgpu_ring_write.exit52.i.i.i_crit_edge
  %410 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %ring1.i.i.i.i, align 4
  %412 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %412)
  %413 = load i64, ptr %wptr.i.i, align 8
  %inc.i45.i.i.i = add i64 %413, 1
  store i64 %inc.i45.i.i.i, ptr %wptr.i.i, align 8
  %414 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %416 = trunc i64 %413 to i32
  %idxprom.i47.i.i.i = and i32 %415, %416
  %arrayidx.i48.i.i.i = getelementptr i32, ptr %411, i32 %idxprom.i47.i.i.i
  %417 = ptrtoint ptr %arrayidx.i48.i.i.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store volatile i32 65536, ptr %arrayidx.i48.i.i.i, align 4
  %418 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %418)
  %419 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %420 = load i64, ptr %wptr.i.i, align 8
  %and3.i50.i.i.i = and i64 %420, %419
  store i64 %and3.i50.i.i.i, ptr %wptr.i.i, align 8
  %421 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i51.i.i.i = add i32 %422, -1
  store i32 %dec.i51.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i51.i.i.i)
  %cmp.i54.i.i.i = icmp slt i32 %dec.i51.i.i.i, 1
  br i1 %cmp.i54.i.i.i, label %if.then.i55.i.i.i, label %amdgpu_ring_write.exit52.i.i.i.amdgpu_ring_write.exit65.i.i.i_crit_edge

amdgpu_ring_write.exit52.i.i.i.amdgpu_ring_write.exit65.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit52.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit65.i.i.i

if.then.i55.i.i.i:                                ; preds = %amdgpu_ring_write.exit52.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit65.i.i.i

amdgpu_ring_write.exit65.i.i.i:                   ; preds = %if.then.i55.i.i.i, %amdgpu_ring_write.exit52.i.i.i.amdgpu_ring_write.exit65.i.i.i_crit_edge
  %423 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %ring1.i.i.i.i, align 4
  %425 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %425)
  %426 = load i64, ptr %wptr.i.i, align 8
  %inc.i58.i.i.i = add i64 %426, 1
  store i64 %inc.i58.i.i.i, ptr %wptr.i.i, align 8
  %427 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %429 = trunc i64 %426 to i32
  %idxprom.i60.i.i.i = and i32 %428, %429
  %arrayidx.i61.i.i.i = getelementptr i32, ptr %424, i32 %idxprom.i60.i.i.i
  %430 = ptrtoint ptr %arrayidx.i61.i.i.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store volatile i32 0, ptr %arrayidx.i61.i.i.i, align 4
  %431 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %431)
  %432 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %433 = load i64, ptr %wptr.i.i, align 8
  %and3.i63.i.i.i = and i64 %433, %432
  store i64 %and3.i63.i.i.i, ptr %wptr.i.i, align 8
  %434 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i64.i.i.i = add i32 %435, -1
  store i32 %dec.i64.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i64.i.i.i)
  %cmp.i67.i.i.i = icmp slt i32 %dec.i64.i.i.i, 1
  br i1 %cmp.i67.i.i.i, label %if.then.i68.i.i.i, label %amdgpu_ring_write.exit65.i.i.i.amdgpu_ring_write.exit78.i.i.i_crit_edge

amdgpu_ring_write.exit65.i.i.i.amdgpu_ring_write.exit78.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit65.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit78.i.i.i

if.then.i68.i.i.i:                                ; preds = %amdgpu_ring_write.exit65.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit78.i.i.i

amdgpu_ring_write.exit78.i.i.i:                   ; preds = %if.then.i68.i.i.i, %amdgpu_ring_write.exit65.i.i.i.amdgpu_ring_write.exit78.i.i.i_crit_edge
  %436 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %ring1.i.i.i.i, align 4
  %438 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %438)
  %439 = load i64, ptr %wptr.i.i, align 8
  %inc.i71.i.i.i = add i64 %439, 1
  store i64 %inc.i71.i.i.i, ptr %wptr.i.i, align 8
  %440 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %442 = trunc i64 %439 to i32
  %idxprom.i73.i.i.i = and i32 %441, %442
  %arrayidx.i74.i.i.i = getelementptr i32, ptr %437, i32 %idxprom.i73.i.i.i
  %443 = ptrtoint ptr %arrayidx.i74.i.i.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store volatile i32 0, ptr %arrayidx.i74.i.i.i, align 4
  %444 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %444)
  %445 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %446 = load i64, ptr %wptr.i.i, align 8
  %and3.i76.i.i.i = and i64 %446, %445
  store i64 %and3.i76.i.i.i, ptr %wptr.i.i, align 8
  %447 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i77.i.i.i = add i32 %448, -1
  store i32 %dec.i77.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i77.i.i.i)
  %cmp.i80.i.i.i = icmp slt i32 %dec.i77.i.i.i, 1
  br i1 %cmp.i80.i.i.i, label %if.then.i81.i.i.i, label %amdgpu_ring_write.exit78.i.i.i.amdgpu_ring_write.exit91.i.i.i_crit_edge

amdgpu_ring_write.exit78.i.i.i.amdgpu_ring_write.exit91.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit78.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit91.i.i.i

if.then.i81.i.i.i:                                ; preds = %amdgpu_ring_write.exit78.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit91.i.i.i

amdgpu_ring_write.exit91.i.i.i:                   ; preds = %if.then.i81.i.i.i, %amdgpu_ring_write.exit78.i.i.i.amdgpu_ring_write.exit91.i.i.i_crit_edge
  %449 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %ring1.i.i.i.i, align 4
  %451 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %451)
  %452 = load i64, ptr %wptr.i.i, align 8
  %inc.i84.i.i.i = add i64 %452, 1
  store i64 %inc.i84.i.i.i, ptr %wptr.i.i, align 8
  %453 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %455 = trunc i64 %452 to i32
  %idxprom.i86.i.i.i = and i32 %454, %455
  %arrayidx.i87.i.i.i = getelementptr i32, ptr %450, i32 %idxprom.i86.i.i.i
  %456 = ptrtoint ptr %arrayidx.i87.i.i.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store volatile i32 -1073606400, ptr %arrayidx.i87.i.i.i, align 4
  %457 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %457)
  %458 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %459 = load i64, ptr %wptr.i.i, align 8
  %and3.i89.i.i.i = and i64 %459, %458
  store i64 %and3.i89.i.i.i, ptr %wptr.i.i, align 8
  %460 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i90.i.i.i = add i32 %461, -1
  store i32 %dec.i90.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i90.i.i.i)
  %cmp.i93.i.i.i = icmp slt i32 %dec.i90.i.i.i, 1
  br i1 %cmp.i93.i.i.i, label %if.then.i94.i.i.i, label %amdgpu_ring_write.exit91.i.i.i.amdgpu_ring_write.exit104.i.i.i_crit_edge

amdgpu_ring_write.exit91.i.i.i.amdgpu_ring_write.exit104.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit91.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit104.i.i.i

if.then.i94.i.i.i:                                ; preds = %amdgpu_ring_write.exit91.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit104.i.i.i

amdgpu_ring_write.exit104.i.i.i:                  ; preds = %if.then.i94.i.i.i, %amdgpu_ring_write.exit91.i.i.i.amdgpu_ring_write.exit104.i.i.i_crit_edge
  %462 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %ring1.i.i.i.i, align 4
  %464 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %464)
  %465 = load i64, ptr %wptr.i.i, align 8
  %inc.i97.i.i.i = add i64 %465, 1
  store i64 %inc.i97.i.i.i, ptr %wptr.i.i, align 8
  %466 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %468 = trunc i64 %465 to i32
  %idxprom.i99.i.i.i = and i32 %467, %468
  %arrayidx.i100.i.i.i = getelementptr i32, ptr %463, i32 %idxprom.i99.i.i.i
  %469 = ptrtoint ptr %arrayidx.i100.i.i.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store volatile i32 3, ptr %arrayidx.i100.i.i.i, align 4
  %470 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %470)
  %471 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %472 = load i64, ptr %wptr.i.i, align 8
  %and3.i102.i.i.i = and i64 %472, %471
  store i64 %and3.i102.i.i.i, ptr %wptr.i.i, align 8
  %473 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i103.i.i.i = add i32 %474, -1
  store i32 %dec.i103.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i103.i.i.i)
  %cmp.i106.i.i.i = icmp slt i32 %dec.i103.i.i.i, 1
  br i1 %cmp.i106.i.i.i, label %if.then.i107.i.i.i, label %amdgpu_ring_write.exit104.i.i.i.amdgpu_ring_write.exit117.i.i.i_crit_edge

amdgpu_ring_write.exit104.i.i.i.amdgpu_ring_write.exit117.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit104.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit117.i.i.i

if.then.i107.i.i.i:                               ; preds = %amdgpu_ring_write.exit104.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit117.i.i.i

amdgpu_ring_write.exit117.i.i.i:                  ; preds = %if.then.i107.i.i.i, %amdgpu_ring_write.exit104.i.i.i.amdgpu_ring_write.exit117.i.i.i_crit_edge
  %475 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %ring1.i.i.i.i, align 4
  %477 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %477)
  %478 = load i64, ptr %wptr.i.i, align 8
  %inc.i110.i.i.i = add i64 %478, 1
  store i64 %inc.i110.i.i.i, ptr %wptr.i.i, align 8
  %479 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %481 = trunc i64 %478 to i32
  %idxprom.i112.i.i.i = and i32 %480, %481
  %arrayidx.i113.i.i.i = getelementptr i32, ptr %476, i32 %idxprom.i112.i.i.i
  %482 = ptrtoint ptr %arrayidx.i113.i.i.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store volatile i32 49152, ptr %arrayidx.i113.i.i.i, align 4
  %483 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %483)
  %484 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %485 = load i64, ptr %wptr.i.i, align 8
  %and3.i115.i.i.i = and i64 %485, %484
  store i64 %and3.i115.i.i.i, ptr %wptr.i.i, align 8
  %486 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i116.i.i.i = add i32 %487, -1
  store i32 %dec.i116.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i116.i.i.i)
  %cmp.i119.i.i.i = icmp slt i32 %dec.i116.i.i.i, 1
  br i1 %cmp.i119.i.i.i, label %if.then.i120.i.i.i, label %amdgpu_ring_write.exit117.i.i.i.amdgpu_ring_write.exit130.i.i.i_crit_edge

amdgpu_ring_write.exit117.i.i.i.amdgpu_ring_write.exit130.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit117.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit130.i.i.i

if.then.i120.i.i.i:                               ; preds = %amdgpu_ring_write.exit117.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit130.i.i.i

amdgpu_ring_write.exit130.i.i.i:                  ; preds = %if.then.i120.i.i.i, %amdgpu_ring_write.exit117.i.i.i.amdgpu_ring_write.exit130.i.i.i_crit_edge
  %488 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %ring1.i.i.i.i, align 4
  %490 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %490)
  %491 = load i64, ptr %wptr.i.i, align 8
  %inc.i123.i.i.i = add i64 %491, 1
  store i64 %inc.i123.i.i.i, ptr %wptr.i.i, align 8
  %492 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %494 = trunc i64 %491 to i32
  %idxprom.i125.i.i.i = and i32 %493, %494
  %arrayidx.i126.i.i.i = getelementptr i32, ptr %489, i32 %idxprom.i125.i.i.i
  %495 = ptrtoint ptr %arrayidx.i126.i.i.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store volatile i32 57344, ptr %arrayidx.i126.i.i.i, align 4
  %496 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %496)
  %497 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %498 = load i64, ptr %wptr.i.i, align 8
  %and3.i128.i.i.i = and i64 %498, %497
  store i64 %and3.i128.i.i.i, ptr %wptr.i.i, align 8
  %499 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i129.i.i.i = add i32 %500, -1
  store i32 %dec.i129.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @amdgpu_ring_commit(ptr noundef %gfx_ring.i.i) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8630, i32 noundef 0, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %501 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %501(i32 noundef 10737400) #9
  %cs_data.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 8
  %502 = ptrtoint ptr %cs_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %cs_data.i.i.i.i, align 4
  %cmp.i131.i.i.i = icmp eq ptr %503, null
  br i1 %cmp.i131.i.i.i, label %amdgpu_ring_write.exit130.i.i.i.gfx_v6_0_get_csb_size.exit.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.i

amdgpu_ring_write.exit130.i.i.i.gfx_v6_0_get_csb_size.exit.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit130.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_get_csb_size.exit.i.i.i

for.cond.preheader.i.i.i.i:                       ; preds = %amdgpu_ring_write.exit130.i.i.i
  %504 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %503, align 4
  %cmp5.not41.i.i.i.i = icmp eq ptr %505, null
  br i1 %cmp5.not41.i.i.i.i, label %for.cond.preheader.i.i.i.i.for.end17.i.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge

for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  br label %for.cond7.preheader.i.i.i.i

for.cond.preheader.i.i.i.i.for.end17.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17.i.i.i.i

for.cond7.preheader.i.i.i.i:                      ; preds = %for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge
  %506 = phi ptr [ %516, %for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ], [ %505, %for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ]
  %sect.043.i.i.i.i = phi ptr [ %incdec.ptr16.i.i.i.i, %for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ], [ %503, %for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ]
  %count.042.i.i.i.i = phi i32 [ %count.1.lcssa.i.i.i.i, %for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ], [ 5, %for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ]
  %507 = ptrtoint ptr %506 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %506, align 4
  %cmp8.not38.i.i.i.i = icmp eq ptr %508, null
  br i1 %cmp8.not38.i.i.i.i, label %for.cond7.preheader.i.i.i.i.for.inc15.i.i.i.i_crit_edge, label %for.body9.lr.ph.i.i.i.i

for.cond7.preheader.i.i.i.i.for.inc15.i.i.i.i_crit_edge: ; preds = %for.cond7.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.i.i.i.i

for.body9.lr.ph.i.i.i.i:                          ; preds = %for.cond7.preheader.i.i.i.i
  %id.i.i.i.i = getelementptr inbounds %struct.cs_section_def, ptr %sect.043.i.i.i.i, i32 0, i32 1
  %509 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %510)
  %cmp10.i.i.i.i = icmp eq i32 %510, 1
  br i1 %cmp10.i.i.i.i, label %for.body9.lr.ph.i.i.i.i.for.body9.i.i.i.i_crit_edge, label %for.body9.lr.ph.i.i.i.i.gfx_v6_0_get_csb_size.exit.i.i.i_crit_edge

for.body9.lr.ph.i.i.i.i.gfx_v6_0_get_csb_size.exit.i.i.i_crit_edge: ; preds = %for.body9.lr.ph.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_get_csb_size.exit.i.i.i

for.body9.lr.ph.i.i.i.i.for.body9.i.i.i.i_crit_edge: ; preds = %for.body9.lr.ph.i.i.i.i
  br label %for.body9.i.i.i.i

for.body9.i.i.i.i:                                ; preds = %for.body9.i.i.i.i.for.body9.i.i.i.i_crit_edge, %for.body9.lr.ph.i.i.i.i.for.body9.i.i.i.i_crit_edge
  %ext.040.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.body9.i.i.i.i.for.body9.i.i.i.i_crit_edge ], [ %506, %for.body9.lr.ph.i.i.i.i.for.body9.i.i.i.i_crit_edge ]
  %count.139.i.i.i.i = phi i32 [ %add13.i.i.i.i, %for.body9.i.i.i.i.for.body9.i.i.i.i_crit_edge ], [ %count.042.i.i.i.i, %for.body9.lr.ph.i.i.i.i.for.body9.i.i.i.i_crit_edge ]
  %reg_count.i.i.i.i = getelementptr inbounds %struct.cs_extent_def, ptr %ext.040.i.i.i.i, i32 0, i32 2
  %511 = ptrtoint ptr %reg_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %reg_count.i.i.i.i, align 4
  %add12.i.i.i.i = add i32 %count.139.i.i.i.i, 2
  %add13.i.i.i.i = add i32 %add12.i.i.i.i, %512
  %incdec.ptr.i.i.i.i = getelementptr %struct.cs_extent_def, ptr %ext.040.i.i.i.i, i32 1
  %513 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %incdec.ptr.i.i.i.i, align 4
  %cmp8.not.i.i.i.i = icmp eq ptr %514, null
  br i1 %cmp8.not.i.i.i.i, label %for.body9.i.i.i.i.for.inc15.i.i.i.i_crit_edge, label %for.body9.i.i.i.i.for.body9.i.i.i.i_crit_edge

for.body9.i.i.i.i.for.body9.i.i.i.i_crit_edge:    ; preds = %for.body9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9.i.i.i.i

for.body9.i.i.i.i.for.inc15.i.i.i.i_crit_edge:    ; preds = %for.body9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.i.i.i.i

for.inc15.i.i.i.i:                                ; preds = %for.body9.i.i.i.i.for.inc15.i.i.i.i_crit_edge, %for.cond7.preheader.i.i.i.i.for.inc15.i.i.i.i_crit_edge
  %count.1.lcssa.i.i.i.i = phi i32 [ %count.042.i.i.i.i, %for.cond7.preheader.i.i.i.i.for.inc15.i.i.i.i_crit_edge ], [ %add13.i.i.i.i, %for.body9.i.i.i.i.for.inc15.i.i.i.i_crit_edge ]
  %incdec.ptr16.i.i.i.i = getelementptr %struct.cs_section_def, ptr %sect.043.i.i.i.i, i32 1
  %515 = ptrtoint ptr %incdec.ptr16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %incdec.ptr16.i.i.i.i, align 4
  %cmp5.not.i.i.i.i = icmp eq ptr %516, null
  br i1 %cmp5.not.i.i.i.i, label %for.inc15.i.i.i.i.for.end17.i.i.i.i_crit_edge, label %for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge

for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge: ; preds = %for.inc15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.preheader.i.i.i.i

for.inc15.i.i.i.i.for.end17.i.i.i.i_crit_edge:    ; preds = %for.inc15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17.i.i.i.i

for.end17.i.i.i.i:                                ; preds = %for.inc15.i.i.i.i.for.end17.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.end17.i.i.i.i_crit_edge
  %count.0.lcssa.i.i.i.i = phi i32 [ 5, %for.cond.preheader.i.i.i.i.for.end17.i.i.i.i_crit_edge ], [ %count.1.lcssa.i.i.i.i, %for.inc15.i.i.i.i.for.end17.i.i.i.i_crit_edge ]
  %phi.bo.i.i.i = add i32 %count.0.lcssa.i.i.i.i, 17
  br label %gfx_v6_0_get_csb_size.exit.i.i.i

gfx_v6_0_get_csb_size.exit.i.i.i:                 ; preds = %for.end17.i.i.i.i, %for.body9.lr.ph.i.i.i.i.gfx_v6_0_get_csb_size.exit.i.i.i_crit_edge, %amdgpu_ring_write.exit130.i.i.i.gfx_v6_0_get_csb_size.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %phi.bo.i.i.i, %for.end17.i.i.i.i ], [ 10, %amdgpu_ring_write.exit130.i.i.i.gfx_v6_0_get_csb_size.exit.i.i.i_crit_edge ], [ 10, %for.body9.lr.ph.i.i.i.i.gfx_v6_0_get_csb_size.exit.i.i.i_crit_edge ]
  %call3.i.i.i = call i32 @amdgpu_ring_alloc(ptr noundef %gfx_ring.i.i, i32 noundef %retval.0.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %gfx_v6_0_get_csb_size.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %call3.i.i.i) #9
  br label %gfx_v6_0_cp_gfx_resume.exit.i

if.end6.i.i.i:                                    ; preds = %gfx_v6_0_get_csb_size.exit.i.i.i
  %517 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %518)
  %cmp.i133.i.i.i = icmp slt i32 %518, 1
  br i1 %cmp.i133.i.i.i, label %if.then.i134.i.i.i, label %if.end6.i.i.i.amdgpu_ring_write.exit144.i.i.i_crit_edge

if.end6.i.i.i.amdgpu_ring_write.exit144.i.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit144.i.i.i

if.then.i134.i.i.i:                               ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit144.i.i.i

amdgpu_ring_write.exit144.i.i.i:                  ; preds = %if.then.i134.i.i.i, %if.end6.i.i.i.amdgpu_ring_write.exit144.i.i.i_crit_edge
  %519 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %ring1.i.i.i.i, align 4
  %521 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %521)
  %522 = load i64, ptr %wptr.i.i, align 8
  %inc.i137.i.i.i = add i64 %522, 1
  store i64 %inc.i137.i.i.i, ptr %wptr.i.i, align 8
  %523 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %525 = trunc i64 %522 to i32
  %idxprom.i139.i.i.i = and i32 %524, %525
  %arrayidx.i140.i.i.i = getelementptr i32, ptr %520, i32 %idxprom.i139.i.i.i
  %526 = ptrtoint ptr %arrayidx.i140.i.i.i to i32
  call void @__asan_store4_noabort(i32 %526)
  store volatile i32 -1073722880, ptr %arrayidx.i140.i.i.i, align 4
  %527 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %527)
  %528 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %529 = load i64, ptr %wptr.i.i, align 8
  %and3.i142.i.i.i = and i64 %529, %528
  store i64 %and3.i142.i.i.i, ptr %wptr.i.i, align 8
  %530 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i143.i.i.i = add i32 %531, -1
  store i32 %dec.i143.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i143.i.i.i)
  %cmp.i146.i.i.i = icmp slt i32 %dec.i143.i.i.i, 1
  br i1 %cmp.i146.i.i.i, label %if.then.i147.i.i.i, label %amdgpu_ring_write.exit144.i.i.i.amdgpu_ring_write.exit157.i.i.i_crit_edge

amdgpu_ring_write.exit144.i.i.i.amdgpu_ring_write.exit157.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit144.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit157.i.i.i

if.then.i147.i.i.i:                               ; preds = %amdgpu_ring_write.exit144.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit157.i.i.i

amdgpu_ring_write.exit157.i.i.i:                  ; preds = %if.then.i147.i.i.i, %amdgpu_ring_write.exit144.i.i.i.amdgpu_ring_write.exit157.i.i.i_crit_edge
  %532 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %ring1.i.i.i.i, align 4
  %534 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %534)
  %535 = load i64, ptr %wptr.i.i, align 8
  %inc.i150.i.i.i = add i64 %535, 1
  store i64 %inc.i150.i.i.i, ptr %wptr.i.i, align 8
  %536 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %538 = trunc i64 %535 to i32
  %idxprom.i152.i.i.i = and i32 %537, %538
  %arrayidx.i153.i.i.i = getelementptr i32, ptr %533, i32 %idxprom.i152.i.i.i
  %539 = ptrtoint ptr %arrayidx.i153.i.i.i to i32
  call void @__asan_store4_noabort(i32 %539)
  store volatile i32 536870912, ptr %arrayidx.i153.i.i.i, align 4
  %540 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %540)
  %541 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %542 = load i64, ptr %wptr.i.i, align 8
  %and3.i155.i.i.i = and i64 %542, %541
  store i64 %and3.i155.i.i.i, ptr %wptr.i.i, align 8
  %543 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i156.i.i.i = add i32 %544, -1
  store i32 %dec.i156.i.i.i, ptr %count_dw.i.i.i.i, align 8
  %545 = ptrtoint ptr %cs_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %cs_data.i.i.i.i, align 4
  %547 = ptrtoint ptr %546 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %546, align 4
  %cmp.not307.i.i.i = icmp eq ptr %548, null
  br i1 %cmp.not307.i.i.i, label %amdgpu_ring_write.exit157.i.i.i.for.end26.i.i.i_crit_edge, label %amdgpu_ring_write.exit157.i.i.i.for.cond9.preheader.i.i.i_crit_edge

amdgpu_ring_write.exit157.i.i.i.for.cond9.preheader.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit157.i.i.i
  br label %for.cond9.preheader.i.i.i

amdgpu_ring_write.exit157.i.i.i.for.end26.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit157.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26.i.i.i

for.cond9.preheader.i.i.i:                        ; preds = %for.inc24.i.i.i.for.cond9.preheader.i.i.i_crit_edge, %amdgpu_ring_write.exit157.i.i.i.for.cond9.preheader.i.i.i_crit_edge
  %549 = phi ptr [ %611, %for.inc24.i.i.i.for.cond9.preheader.i.i.i_crit_edge ], [ %548, %amdgpu_ring_write.exit157.i.i.i.for.cond9.preheader.i.i.i_crit_edge ]
  %sect.0308.i.i.i = phi ptr [ %incdec.ptr25.i.i.i, %for.inc24.i.i.i.for.cond9.preheader.i.i.i_crit_edge ], [ %546, %amdgpu_ring_write.exit157.i.i.i.for.cond9.preheader.i.i.i_crit_edge ]
  %550 = ptrtoint ptr %549 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %549, align 4
  %cmp10.not303.i.i.i = icmp eq ptr %551, null
  br i1 %cmp10.not303.i.i.i, label %for.cond9.preheader.i.i.i.for.inc24.i.i.i_crit_edge, label %for.body11.lr.ph.i.i.i

for.cond9.preheader.i.i.i.for.inc24.i.i.i_crit_edge: ; preds = %for.cond9.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc24.i.i.i

for.body11.lr.ph.i.i.i:                           ; preds = %for.cond9.preheader.i.i.i
  %id.i.i.i = getelementptr inbounds %struct.cs_section_def, ptr %sect.0308.i.i.i, i32 0, i32 1
  br label %for.body11.i.i.i

for.body11.i.i.i:                                 ; preds = %for.inc22.i.i.i.for.body11.i.i.i_crit_edge, %for.body11.lr.ph.i.i.i
  %ext.0304.i.i.i = phi ptr [ %549, %for.body11.lr.ph.i.i.i ], [ %incdec.ptr.i.i22.i, %for.inc22.i.i.i.for.body11.i.i.i_crit_edge ]
  %552 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %553)
  %cmp12.i.i.i = icmp eq i32 %553, 1
  br i1 %cmp12.i.i.i, label %if.then13.i.i.i, label %for.body11.i.i.i.for.inc22.i.i.i_crit_edge

for.body11.i.i.i.for.inc22.i.i.i_crit_edge:       ; preds = %for.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i.i.i

if.then13.i.i.i:                                  ; preds = %for.body11.i.i.i
  %reg_count.i.i.i = getelementptr inbounds %struct.cs_extent_def, ptr %ext.0304.i.i.i, i32 0, i32 2
  %554 = ptrtoint ptr %reg_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %reg_count.i.i.i, align 4
  %and.i.i.i34 = shl i32 %555, 16
  %or.i.i.i35 = or i32 %and.i.i.i34, -1073714944
  %556 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %557)
  %cmp.i159.i.i.i = icmp slt i32 %557, 1
  br i1 %cmp.i159.i.i.i, label %if.then.i160.i.i.i, label %if.then13.i.i.i.amdgpu_ring_write.exit170.i.i.i_crit_edge

if.then13.i.i.i.amdgpu_ring_write.exit170.i.i.i_crit_edge: ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit170.i.i.i

if.then.i160.i.i.i:                               ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit170.i.i.i

amdgpu_ring_write.exit170.i.i.i:                  ; preds = %if.then.i160.i.i.i, %if.then13.i.i.i.amdgpu_ring_write.exit170.i.i.i_crit_edge
  %558 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %ring1.i.i.i.i, align 4
  %560 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %560)
  %561 = load i64, ptr %wptr.i.i, align 8
  %inc.i163.i.i.i = add i64 %561, 1
  store i64 %inc.i163.i.i.i, ptr %wptr.i.i, align 8
  %562 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %564 = trunc i64 %561 to i32
  %idxprom.i165.i.i.i = and i32 %563, %564
  %arrayidx.i166.i.i.i = getelementptr i32, ptr %559, i32 %idxprom.i165.i.i.i
  %565 = ptrtoint ptr %arrayidx.i166.i.i.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store volatile i32 %or.i.i.i35, ptr %arrayidx.i166.i.i.i, align 4
  %566 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %566)
  %567 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %568 = load i64, ptr %wptr.i.i, align 8
  %and3.i168.i.i.i = and i64 %568, %567
  store i64 %and3.i168.i.i.i, ptr %wptr.i.i, align 8
  %569 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i169.i.i.i = add i32 %570, -1
  store i32 %dec.i169.i.i.i, ptr %count_dw.i.i.i.i, align 8
  %reg_index.i.i.i = getelementptr inbounds %struct.cs_extent_def, ptr %ext.0304.i.i.i, i32 0, i32 1
  %571 = ptrtoint ptr %reg_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %reg_index.i.i.i, align 4
  %sub14.i.i.i = add i32 %572, -40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i169.i.i.i)
  %cmp.i172.i.i.i = icmp slt i32 %dec.i169.i.i.i, 1
  br i1 %cmp.i172.i.i.i, label %if.then.i173.i.i.i, label %amdgpu_ring_write.exit170.i.i.i.amdgpu_ring_write.exit183.i.i.i_crit_edge

amdgpu_ring_write.exit170.i.i.i.amdgpu_ring_write.exit183.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit170.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit183.i.i.i

if.then.i173.i.i.i:                               ; preds = %amdgpu_ring_write.exit170.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit183.i.i.i

amdgpu_ring_write.exit183.i.i.i:                  ; preds = %if.then.i173.i.i.i, %amdgpu_ring_write.exit170.i.i.i.amdgpu_ring_write.exit183.i.i.i_crit_edge
  %573 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %ring1.i.i.i.i, align 4
  %575 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %575)
  %576 = load i64, ptr %wptr.i.i, align 8
  %inc.i176.i.i.i = add i64 %576, 1
  store i64 %inc.i176.i.i.i, ptr %wptr.i.i, align 8
  %577 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %579 = trunc i64 %576 to i32
  %idxprom.i178.i.i.i = and i32 %578, %579
  %arrayidx.i179.i.i.i = getelementptr i32, ptr %574, i32 %idxprom.i178.i.i.i
  %580 = ptrtoint ptr %arrayidx.i179.i.i.i to i32
  call void @__asan_store4_noabort(i32 %580)
  store volatile i32 %sub14.i.i.i, ptr %arrayidx.i179.i.i.i, align 4
  %581 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %581)
  %582 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %583 = load i64, ptr %wptr.i.i, align 8
  %and3.i181.i.i.i = and i64 %583, %582
  store i64 %and3.i181.i.i.i, ptr %wptr.i.i, align 8
  %584 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i182.i.i.i = add i32 %585, -1
  store i32 %dec.i182.i.i.i, ptr %count_dw.i.i.i.i, align 8
  %586 = ptrtoint ptr %reg_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %reg_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %587)
  %cmp17301.not.i.i.i = icmp eq i32 %587, 0
  br i1 %cmp17301.not.i.i.i, label %amdgpu_ring_write.exit183.i.i.i.for.inc22.i.i.i_crit_edge, label %amdgpu_ring_write.exit183.i.i.i.for.body18.i.i.i_crit_edge

amdgpu_ring_write.exit183.i.i.i.for.body18.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit183.i.i.i
  br label %for.body18.i.i.i

amdgpu_ring_write.exit183.i.i.i.for.inc22.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit183.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i.i.i

for.body18.i.i.i:                                 ; preds = %amdgpu_ring_write.exit196.i.i.i.for.body18.i.i.i_crit_edge, %amdgpu_ring_write.exit183.i.i.i.for.body18.i.i.i_crit_edge
  %588 = phi i32 [ %dec.i195.i.i.i, %amdgpu_ring_write.exit196.i.i.i.for.body18.i.i.i_crit_edge ], [ %dec.i182.i.i.i, %amdgpu_ring_write.exit183.i.i.i.for.body18.i.i.i_crit_edge ]
  %i.0302.i.i.i = phi i32 [ %inc.i.i21.i, %amdgpu_ring_write.exit196.i.i.i.for.body18.i.i.i_crit_edge ], [ 0, %amdgpu_ring_write.exit183.i.i.i.for.body18.i.i.i_crit_edge ]
  %589 = ptrtoint ptr %ext.0304.i.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %ext.0304.i.i.i, align 4
  %arrayidx20.i.i.i = getelementptr i32, ptr %590, i32 %i.0302.i.i.i
  %591 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %arrayidx20.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %588)
  %cmp.i185.i.i.i = icmp slt i32 %588, 1
  br i1 %cmp.i185.i.i.i, label %if.then.i186.i.i.i, label %for.body18.i.i.i.amdgpu_ring_write.exit196.i.i.i_crit_edge

for.body18.i.i.i.amdgpu_ring_write.exit196.i.i.i_crit_edge: ; preds = %for.body18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit196.i.i.i

if.then.i186.i.i.i:                               ; preds = %for.body18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit196.i.i.i

amdgpu_ring_write.exit196.i.i.i:                  ; preds = %if.then.i186.i.i.i, %for.body18.i.i.i.amdgpu_ring_write.exit196.i.i.i_crit_edge
  %593 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %ring1.i.i.i.i, align 4
  %595 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %595)
  %596 = load i64, ptr %wptr.i.i, align 8
  %inc.i189.i.i.i = add i64 %596, 1
  store i64 %inc.i189.i.i.i, ptr %wptr.i.i, align 8
  %597 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %599 = trunc i64 %596 to i32
  %idxprom.i191.i.i.i = and i32 %598, %599
  %arrayidx.i192.i.i.i = getelementptr i32, ptr %594, i32 %idxprom.i191.i.i.i
  %600 = ptrtoint ptr %arrayidx.i192.i.i.i to i32
  call void @__asan_store4_noabort(i32 %600)
  store volatile i32 %592, ptr %arrayidx.i192.i.i.i, align 4
  %601 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %601)
  %602 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %603 = load i64, ptr %wptr.i.i, align 8
  %and3.i194.i.i.i = and i64 %603, %602
  store i64 %and3.i194.i.i.i, ptr %wptr.i.i, align 8
  %604 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i195.i.i.i = add i32 %605, -1
  store i32 %dec.i195.i.i.i, ptr %count_dw.i.i.i.i, align 8
  %inc.i.i21.i = add nuw i32 %i.0302.i.i.i, 1
  %606 = ptrtoint ptr %reg_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %reg_count.i.i.i, align 4
  %cmp17.i.i.i = icmp ult i32 %inc.i.i21.i, %607
  br i1 %cmp17.i.i.i, label %amdgpu_ring_write.exit196.i.i.i.for.body18.i.i.i_crit_edge, label %amdgpu_ring_write.exit196.i.i.i.for.inc22.i.i.i_crit_edge

amdgpu_ring_write.exit196.i.i.i.for.inc22.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit196.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i.i.i

amdgpu_ring_write.exit196.i.i.i.for.body18.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit196.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18.i.i.i

for.inc22.i.i.i:                                  ; preds = %amdgpu_ring_write.exit196.i.i.i.for.inc22.i.i.i_crit_edge, %amdgpu_ring_write.exit183.i.i.i.for.inc22.i.i.i_crit_edge, %for.body11.i.i.i.for.inc22.i.i.i_crit_edge
  %incdec.ptr.i.i22.i = getelementptr %struct.cs_extent_def, ptr %ext.0304.i.i.i, i32 1
  %608 = ptrtoint ptr %incdec.ptr.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %incdec.ptr.i.i22.i, align 4
  %cmp10.not.i.i.i = icmp eq ptr %609, null
  br i1 %cmp10.not.i.i.i, label %for.inc22.i.i.i.for.inc24.i.i.i_crit_edge, label %for.inc22.i.i.i.for.body11.i.i.i_crit_edge

for.inc22.i.i.i.for.body11.i.i.i_crit_edge:       ; preds = %for.inc22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11.i.i.i

for.inc22.i.i.i.for.inc24.i.i.i_crit_edge:        ; preds = %for.inc22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc24.i.i.i

for.inc24.i.i.i:                                  ; preds = %for.inc22.i.i.i.for.inc24.i.i.i_crit_edge, %for.cond9.preheader.i.i.i.for.inc24.i.i.i_crit_edge
  %incdec.ptr25.i.i.i = getelementptr %struct.cs_section_def, ptr %sect.0308.i.i.i, i32 1
  %610 = ptrtoint ptr %incdec.ptr25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %incdec.ptr25.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %611, null
  br i1 %cmp.not.i.i.i, label %for.end26thread-pre-split.i.i.i, label %for.inc24.i.i.i.for.cond9.preheader.i.i.i_crit_edge

for.inc24.i.i.i.for.cond9.preheader.i.i.i_crit_edge: ; preds = %for.inc24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond9.preheader.i.i.i

for.end26thread-pre-split.i.i.i:                  ; preds = %for.inc24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %612 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %.pr.i.i.i = load i32, ptr %count_dw.i.i.i.i, align 8
  br label %for.end26.i.i.i

for.end26.i.i.i:                                  ; preds = %for.end26thread-pre-split.i.i.i, %amdgpu_ring_write.exit157.i.i.i.for.end26.i.i.i_crit_edge
  %613 = phi i32 [ %.pr.i.i.i, %for.end26thread-pre-split.i.i.i ], [ %dec.i156.i.i.i, %amdgpu_ring_write.exit157.i.i.i.for.end26.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %613)
  %cmp.i198.i.i.i = icmp slt i32 %613, 1
  br i1 %cmp.i198.i.i.i, label %if.then.i199.i.i.i, label %for.end26.i.i.i.amdgpu_ring_write.exit209.i.i.i_crit_edge

for.end26.i.i.i.amdgpu_ring_write.exit209.i.i.i_crit_edge: ; preds = %for.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit209.i.i.i

if.then.i199.i.i.i:                               ; preds = %for.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit209.i.i.i

amdgpu_ring_write.exit209.i.i.i:                  ; preds = %if.then.i199.i.i.i, %for.end26.i.i.i.amdgpu_ring_write.exit209.i.i.i_crit_edge
  %614 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %ring1.i.i.i.i, align 4
  %616 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %616)
  %617 = load i64, ptr %wptr.i.i, align 8
  %inc.i202.i.i.i = add i64 %617, 1
  store i64 %inc.i202.i.i.i, ptr %wptr.i.i, align 8
  %618 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %620 = trunc i64 %617 to i32
  %idxprom.i204.i.i.i = and i32 %619, %620
  %arrayidx.i205.i.i.i = getelementptr i32, ptr %615, i32 %idxprom.i204.i.i.i
  %621 = ptrtoint ptr %arrayidx.i205.i.i.i to i32
  call void @__asan_store4_noabort(i32 %621)
  store volatile i32 -1073722880, ptr %arrayidx.i205.i.i.i, align 4
  %622 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %622)
  %623 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %624 = load i64, ptr %wptr.i.i, align 8
  %and3.i207.i.i.i = and i64 %624, %623
  store i64 %and3.i207.i.i.i, ptr %wptr.i.i, align 8
  %625 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i208.i.i.i = add i32 %626, -1
  store i32 %dec.i208.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i208.i.i.i)
  %cmp.i211.i.i.i = icmp slt i32 %dec.i208.i.i.i, 1
  br i1 %cmp.i211.i.i.i, label %if.then.i212.i.i.i, label %amdgpu_ring_write.exit209.i.i.i.amdgpu_ring_write.exit222.i.i.i_crit_edge

amdgpu_ring_write.exit209.i.i.i.amdgpu_ring_write.exit222.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit209.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit222.i.i.i

if.then.i212.i.i.i:                               ; preds = %amdgpu_ring_write.exit209.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit222.i.i.i

amdgpu_ring_write.exit222.i.i.i:                  ; preds = %if.then.i212.i.i.i, %amdgpu_ring_write.exit209.i.i.i.amdgpu_ring_write.exit222.i.i.i_crit_edge
  %627 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %ring1.i.i.i.i, align 4
  %629 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %629)
  %630 = load i64, ptr %wptr.i.i, align 8
  %inc.i215.i.i.i = add i64 %630, 1
  store i64 %inc.i215.i.i.i, ptr %wptr.i.i, align 8
  %631 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %633 = trunc i64 %630 to i32
  %idxprom.i217.i.i.i = and i32 %632, %633
  %arrayidx.i218.i.i.i = getelementptr i32, ptr %628, i32 %idxprom.i217.i.i.i
  %634 = ptrtoint ptr %arrayidx.i218.i.i.i to i32
  call void @__asan_store4_noabort(i32 %634)
  store volatile i32 805306368, ptr %arrayidx.i218.i.i.i, align 4
  %635 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %635)
  %636 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %637 = load i64, ptr %wptr.i.i, align 8
  %and3.i220.i.i.i = and i64 %637, %636
  store i64 %and3.i220.i.i.i, ptr %wptr.i.i, align 8
  %638 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i221.i.i.i = add i32 %639, -1
  store i32 %dec.i221.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i221.i.i.i)
  %cmp.i224.i.i.i = icmp slt i32 %dec.i221.i.i.i, 1
  br i1 %cmp.i224.i.i.i, label %if.then.i225.i.i.i, label %amdgpu_ring_write.exit222.i.i.i.amdgpu_ring_write.exit235.i.i.i_crit_edge

amdgpu_ring_write.exit222.i.i.i.amdgpu_ring_write.exit235.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit222.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit235.i.i.i

if.then.i225.i.i.i:                               ; preds = %amdgpu_ring_write.exit222.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit235.i.i.i

amdgpu_ring_write.exit235.i.i.i:                  ; preds = %if.then.i225.i.i.i, %amdgpu_ring_write.exit222.i.i.i.amdgpu_ring_write.exit235.i.i.i_crit_edge
  %640 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %ring1.i.i.i.i, align 4
  %642 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %642)
  %643 = load i64, ptr %wptr.i.i, align 8
  %inc.i228.i.i.i = add i64 %643, 1
  store i64 %inc.i228.i.i.i, ptr %wptr.i.i, align 8
  %644 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %646 = trunc i64 %643 to i32
  %idxprom.i230.i.i.i = and i32 %645, %646
  %arrayidx.i231.i.i.i = getelementptr i32, ptr %641, i32 %idxprom.i230.i.i.i
  %647 = ptrtoint ptr %arrayidx.i231.i.i.i to i32
  call void @__asan_store4_noabort(i32 %647)
  store volatile i32 -1073737216, ptr %arrayidx.i231.i.i.i, align 4
  %648 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %648)
  %649 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %650 = load i64, ptr %wptr.i.i, align 8
  %and3.i233.i.i.i = and i64 %650, %649
  store i64 %and3.i233.i.i.i, ptr %wptr.i.i, align 8
  %651 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i234.i.i.i = add i32 %652, -1
  store i32 %dec.i234.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i234.i.i.i)
  %cmp.i237.i.i.i = icmp slt i32 %dec.i234.i.i.i, 1
  br i1 %cmp.i237.i.i.i, label %if.then.i238.i.i.i, label %amdgpu_ring_write.exit235.i.i.i.amdgpu_ring_write.exit248.i.i.i_crit_edge

amdgpu_ring_write.exit235.i.i.i.amdgpu_ring_write.exit248.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit235.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit248.i.i.i

if.then.i238.i.i.i:                               ; preds = %amdgpu_ring_write.exit235.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit248.i.i.i

amdgpu_ring_write.exit248.i.i.i:                  ; preds = %if.then.i238.i.i.i, %amdgpu_ring_write.exit235.i.i.i.amdgpu_ring_write.exit248.i.i.i_crit_edge
  %653 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %ring1.i.i.i.i, align 4
  %655 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %655)
  %656 = load i64, ptr %wptr.i.i, align 8
  %inc.i241.i.i.i = add i64 %656, 1
  store i64 %inc.i241.i.i.i, ptr %wptr.i.i, align 8
  %657 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %659 = trunc i64 %656 to i32
  %idxprom.i243.i.i.i = and i32 %658, %659
  %arrayidx.i244.i.i.i = getelementptr i32, ptr %654, i32 %idxprom.i243.i.i.i
  %660 = ptrtoint ptr %arrayidx.i244.i.i.i to i32
  call void @__asan_store4_noabort(i32 %660)
  store volatile i32 0, ptr %arrayidx.i244.i.i.i, align 4
  %661 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %661)
  %662 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %663 = load i64, ptr %wptr.i.i, align 8
  %and3.i246.i.i.i = and i64 %663, %662
  store i64 %and3.i246.i.i.i, ptr %wptr.i.i, align 8
  %664 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i247.i.i.i = add i32 %665, -1
  store i32 %dec.i247.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i247.i.i.i)
  %cmp.i250.i.i.i = icmp slt i32 %dec.i247.i.i.i, 1
  br i1 %cmp.i250.i.i.i, label %if.then.i251.i.i.i, label %amdgpu_ring_write.exit248.i.i.i.amdgpu_ring_write.exit261.i.i.i_crit_edge

amdgpu_ring_write.exit248.i.i.i.amdgpu_ring_write.exit261.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit248.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit261.i.i.i

if.then.i251.i.i.i:                               ; preds = %amdgpu_ring_write.exit248.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit261.i.i.i

amdgpu_ring_write.exit261.i.i.i:                  ; preds = %if.then.i251.i.i.i, %amdgpu_ring_write.exit248.i.i.i.amdgpu_ring_write.exit261.i.i.i_crit_edge
  %666 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %ring1.i.i.i.i, align 4
  %668 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %668)
  %669 = load i64, ptr %wptr.i.i, align 8
  %inc.i254.i.i.i = add i64 %669, 1
  store i64 %inc.i254.i.i.i, ptr %wptr.i.i, align 8
  %670 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %672 = trunc i64 %669 to i32
  %idxprom.i256.i.i.i = and i32 %671, %672
  %arrayidx.i257.i.i.i = getelementptr i32, ptr %667, i32 %idxprom.i256.i.i.i
  %673 = ptrtoint ptr %arrayidx.i257.i.i.i to i32
  call void @__asan_store4_noabort(i32 %673)
  store volatile i32 -1073583872, ptr %arrayidx.i257.i.i.i, align 4
  %674 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %674)
  %675 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %676 = load i64, ptr %wptr.i.i, align 8
  %and3.i259.i.i.i = and i64 %676, %675
  store i64 %and3.i259.i.i.i, ptr %wptr.i.i, align 8
  %677 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i260.i.i.i = add i32 %678, -1
  store i32 %dec.i260.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i260.i.i.i)
  %cmp.i263.i.i.i = icmp slt i32 %dec.i260.i.i.i, 1
  br i1 %cmp.i263.i.i.i, label %if.then.i264.i.i.i, label %amdgpu_ring_write.exit261.i.i.i.amdgpu_ring_write.exit274.i.i.i_crit_edge

amdgpu_ring_write.exit261.i.i.i.amdgpu_ring_write.exit274.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit261.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit274.i.i.i

if.then.i264.i.i.i:                               ; preds = %amdgpu_ring_write.exit261.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit274.i.i.i

amdgpu_ring_write.exit274.i.i.i:                  ; preds = %if.then.i264.i.i.i, %amdgpu_ring_write.exit261.i.i.i.amdgpu_ring_write.exit274.i.i.i_crit_edge
  %679 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %ring1.i.i.i.i, align 4
  %681 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %681)
  %682 = load i64, ptr %wptr.i.i, align 8
  %inc.i267.i.i.i = add i64 %682, 1
  store i64 %inc.i267.i.i.i, ptr %wptr.i.i, align 8
  %683 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %685 = trunc i64 %682 to i32
  %idxprom.i269.i.i.i = and i32 %684, %685
  %arrayidx.i270.i.i.i = getelementptr i32, ptr %680, i32 %idxprom.i269.i.i.i
  %686 = ptrtoint ptr %arrayidx.i270.i.i.i to i32
  call void @__asan_store4_noabort(i32 %686)
  store volatile i32 790, ptr %arrayidx.i270.i.i.i, align 4
  %687 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %687)
  %688 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %689 = load i64, ptr %wptr.i.i, align 8
  %and3.i272.i.i.i = and i64 %689, %688
  store i64 %and3.i272.i.i.i, ptr %wptr.i.i, align 8
  %690 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i273.i.i.i = add i32 %691, -1
  store i32 %dec.i273.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i273.i.i.i)
  %cmp.i276.i.i.i = icmp slt i32 %dec.i273.i.i.i, 1
  br i1 %cmp.i276.i.i.i, label %if.then.i277.i.i.i, label %amdgpu_ring_write.exit274.i.i.i.amdgpu_ring_write.exit287.i.i.i_crit_edge

amdgpu_ring_write.exit274.i.i.i.amdgpu_ring_write.exit287.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit274.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit287.i.i.i

if.then.i277.i.i.i:                               ; preds = %amdgpu_ring_write.exit274.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit287.i.i.i

amdgpu_ring_write.exit287.i.i.i:                  ; preds = %if.then.i277.i.i.i, %amdgpu_ring_write.exit274.i.i.i.amdgpu_ring_write.exit287.i.i.i_crit_edge
  %692 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %ring1.i.i.i.i, align 4
  %694 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %694)
  %695 = load i64, ptr %wptr.i.i, align 8
  %inc.i280.i.i.i = add i64 %695, 1
  store i64 %inc.i280.i.i.i, ptr %wptr.i.i, align 8
  %696 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %698 = trunc i64 %695 to i32
  %idxprom.i282.i.i.i = and i32 %697, %698
  %arrayidx.i283.i.i.i = getelementptr i32, ptr %693, i32 %idxprom.i282.i.i.i
  %699 = ptrtoint ptr %arrayidx.i283.i.i.i to i32
  call void @__asan_store4_noabort(i32 %699)
  store volatile i32 14, ptr %arrayidx.i283.i.i.i, align 4
  %700 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %700)
  %701 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %702 = load i64, ptr %wptr.i.i, align 8
  %and3.i285.i.i.i = and i64 %702, %701
  store i64 %and3.i285.i.i.i, ptr %wptr.i.i, align 8
  %703 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i286.i.i.i = add i32 %704, -1
  store i32 %dec.i286.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i286.i.i.i)
  %cmp.i289.i.i.i = icmp slt i32 %dec.i286.i.i.i, 1
  br i1 %cmp.i289.i.i.i, label %if.then.i290.i.i.i, label %amdgpu_ring_write.exit287.i.i.i.amdgpu_ring_write.exit300.i.i.i_crit_edge

amdgpu_ring_write.exit287.i.i.i.amdgpu_ring_write.exit300.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit287.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit300.i.i.i

if.then.i290.i.i.i:                               ; preds = %amdgpu_ring_write.exit287.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit300.i.i.i

amdgpu_ring_write.exit300.i.i.i:                  ; preds = %if.then.i290.i.i.i, %amdgpu_ring_write.exit287.i.i.i.amdgpu_ring_write.exit300.i.i.i_crit_edge
  %705 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %ring1.i.i.i.i, align 4
  %707 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %707)
  %708 = load i64, ptr %wptr.i.i, align 8
  %inc.i293.i.i.i = add i64 %708, 1
  store i64 %inc.i293.i.i.i, ptr %wptr.i.i, align 8
  %709 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %711 = trunc i64 %708 to i32
  %idxprom.i295.i.i.i = and i32 %710, %711
  %arrayidx.i296.i.i.i = getelementptr i32, ptr %706, i32 %idxprom.i295.i.i.i
  %712 = ptrtoint ptr %arrayidx.i296.i.i.i to i32
  call void @__asan_store4_noabort(i32 %712)
  store volatile i32 16, ptr %arrayidx.i296.i.i.i, align 4
  %713 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %713)
  %714 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %715 = load i64, ptr %wptr.i.i, align 8
  %and3.i298.i.i.i = and i64 %715, %714
  store i64 %and3.i298.i.i.i, ptr %wptr.i.i, align 8
  %716 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i299.i.i.i = add i32 %717, -1
  store i32 %dec.i299.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @amdgpu_ring_commit(ptr noundef %gfx_ring.i.i) #9
  br label %gfx_v6_0_cp_gfx_resume.exit.i

gfx_v6_0_cp_gfx_resume.exit.i:                    ; preds = %amdgpu_ring_write.exit300.i.i.i, %if.then5.i.i.i, %if.then.i.i.i
  %call48.i.i = call i32 @amdgpu_ring_test_helper(ptr noundef %gfx_ring.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool2.not.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %gfx_v6_0_cp_gfx_resume.exit.i.cleanup_crit_edge

gfx_v6_0_cp_gfx_resume.exit.i.cleanup_crit_edge:  ; preds = %gfx_v6_0_cp_gfx_resume.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i:                                        ; preds = %gfx_v6_0_cp_gfx_resume.exit.i
  %ring_size.i23.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 0, i32 9
  %718 = ptrtoint ptr %ring_size.i23.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %ring_size.i23.i, align 8
  %div186.i.i = lshr i32 %719, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %719)
  %cmp.i.i39.i = icmp ugt i32 %719, 15
  %sub.i189.i.i = add nsw i32 %div186.i.i, -1
  %720 = call i32 @llvm.ctlz.i32(i32 %sub.i189.i.i, i1 false) #9, !range !150
  %add.i.i49.i = sub nuw nsw i32 32, %720
  %cond33.i51.i = select i1 %cmp.i.i39.i, i32 %add.i.i49.i, i32 0
  %or34.i52.i = or i32 %cond33.i51.i, 133376
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12385, i32 noundef %or34.i52.i, i32 noundef 0) #9
  %or35.i53.i = or i32 %cond33.i51.i, -2147350272
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12385, i32 noundef %or35.i53.i, i32 noundef 0) #9
  %wptr.i54.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 0, i32 7
  %721 = ptrtoint ptr %wptr.i54.i to i32
  call void @__asan_store8_noabort(i32 %721)
  store i64 0, ptr %wptr.i54.i, align 8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12388, i32 noundef 0, i32 noundef 0) #9
  %722 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %722)
  %723 = load i64, ptr %gpu_addr.i.i, align 8
  %rptr_offs.i56.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 0, i32 6
  %724 = ptrtoint ptr %rptr_offs.i56.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %rptr_offs.i56.i, align 8
  %mul.i57.i = shl i32 %725, 2
  %conv38.i58.i = zext i32 %mul.i57.i to i64
  %add39.i59.i = add i64 %723, %conv38.i58.i
  %conv40.i60.i = trunc i64 %add39.i59.i to i32
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12386, i32 noundef %conv40.i60.i, i32 noundef 0) #9
  %shr.i61.i = lshr i64 %add39.i59.i, 32
  %conv42.i62.i = trunc i64 %shr.i61.i to i32
  %and43.i63.i = and i32 %conv42.i62.i, 255
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12387, i32 noundef %and43.i63.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %726 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %726(i32 noundef 214748000) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12385, i32 noundef %or34.i52.i, i32 noundef 0) #9
  %gpu_addr44.i64.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 0, i32 12
  %727 = ptrtoint ptr %gpu_addr44.i64.i to i32
  call void @__asan_load8_noabort(i32 %727)
  %728 = load i64, ptr %gpu_addr44.i64.i, align 8
  %shr45.i65.i = lshr i64 %728, 8
  %conv46.i66.i = trunc i64 %shr45.i65.i to i32
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12384, i32 noundef %conv46.i66.i, i32 noundef 0) #9
  %ring_size50.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 1, i32 9
  %729 = ptrtoint ptr %ring_size50.i.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %ring_size50.i.i, align 8
  %div51187.i.i = lshr i32 %730, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %730)
  %cmp.i191.i.i = icmp ugt i32 %730, 15
  %sub.i192.i.i = add nsw i32 %div51187.i.i, -1
  %731 = call i32 @llvm.ctlz.i32(i32 %sub.i192.i.i, i1 false) #9, !range !150
  %add.i201.i.i = sub nuw nsw i32 32, %731
  %cond98.i.i = select i1 %cmp.i191.i.i, i32 %add.i201.i.i, i32 0
  %or100.i.i = or i32 %cond98.i.i, 133376
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12390, i32 noundef %or100.i.i, i32 noundef 0) #9
  %or101.i.i = or i32 %cond98.i.i, -2147350272
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12390, i32 noundef %or101.i.i, i32 noundef 0) #9
  %wptr102.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 1, i32 7
  %732 = ptrtoint ptr %wptr102.i.i to i32
  call void @__asan_store8_noabort(i32 %732)
  store i64 0, ptr %wptr102.i.i, align 8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12393, i32 noundef 0, i32 noundef 0) #9
  %733 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %733)
  %734 = load i64, ptr %gpu_addr.i.i, align 8
  %rptr_offs107.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 1, i32 6
  %735 = ptrtoint ptr %rptr_offs107.i.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %rptr_offs107.i.i, align 8
  %mul108.i.i = shl i32 %736, 2
  %conv109.i.i = zext i32 %mul108.i.i to i64
  %add110.i.i36 = add i64 %734, %conv109.i.i
  %conv112.i.i = trunc i64 %add110.i.i36 to i32
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12391, i32 noundef %conv112.i.i, i32 noundef 0) #9
  %shr113.i.i = lshr i64 %add110.i.i36, 32
  %conv115.i.i = trunc i64 %shr113.i.i to i32
  %and116.i.i = and i32 %conv115.i.i, 255
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12392, i32 noundef %and116.i.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %737 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %737(i32 noundef 214748000) #9
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12390, i32 noundef %or100.i.i, i32 noundef 0) #9
  %gpu_addr117.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 1, i32 12
  %738 = ptrtoint ptr %gpu_addr117.i.i to i32
  call void @__asan_load8_noabort(i32 %738)
  %739 = load i64, ptr %gpu_addr117.i.i, align 8
  %shr118.i.i = lshr i64 %739, 8
  %conv119.i.i = trunc i64 %shr118.i.i to i32
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12389, i32 noundef %conv119.i.i, i32 noundef 0) #9
  %arrayidx124.i.i37 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 0
  %call125.i.i = call i32 @amdgpu_ring_test_helper(ptr noundef %arrayidx124.i.i37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.i.i)
  %tobool.not.i.i38 = icmp eq i32 %call125.i.i, 0
  br i1 %tobool.not.i.i38, label %gfx_v6_0_cp_compute_resume.exit.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

gfx_v6_0_cp_compute_resume.exit.i:                ; preds = %if.end4.i
  %arrayidx124.1.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 1
  %call125.1.i.i = call i32 @amdgpu_ring_test_helper(ptr noundef %arrayidx124.1.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.1.i.i)
  %tobool6.not.i = icmp eq i32 %call125.1.i.i, 0
  br i1 %tobool6.not.i, label %if.end4, label %gfx_v6_0_cp_compute_resume.exit.i.cleanup_crit_edge

gfx_v6_0_cp_compute_resume.exit.i.cleanup_crit_edge: ; preds = %gfx_v6_0_cp_compute_resume.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %gfx_v6_0_cp_compute_resume.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i68.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12394, i32 noundef 0) #9
  %tmp.0.i.i = or i32 %call.i68.i, 1572864
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12394, i32 noundef %tmp.0.i.i, i32 noundef 0) #9
  %ce_ram_size = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 47
  %740 = ptrtoint ptr %ce_ram_size to i32
  call void @__asan_store4_noabort(i32 %740)
  store i32 32768, ptr %ce_ram_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %gfx_v6_0_cp_compute_resume.exit.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %gfx_v6_0_cp_gfx_resume.exit.i.cleanup_crit_edge, %lor.lhs.false3.i.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.i.cleanup_crit_edge, %gfx_v6_0_enable_gui_idle_interrupt.exit.i.cleanup_crit_edge, %gfx_v6_0_constants_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %gfx_v6_0_constants_init.exit.cleanup_crit_edge ], [ %call125.i.i, %if.end4.i.cleanup_crit_edge ], [ -22, %gfx_v6_0_enable_gui_idle_interrupt.exit.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false3.i.i.i.cleanup_crit_edge ], [ %call125.1.i.i, %gfx_v6_0_cp_compute_resume.exit.i.cleanup_crit_edge ], [ %call48.i.i, %gfx_v6_0_cp_gfx_resume.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8630, i32 noundef 352321536, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8528, i32 noundef 0, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 10737400) #9
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %funcs, align 4
  %stop = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stop, align 4
  tail call void %4(ptr noundef %handle) #9
  %pg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %5 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pg_flags.i, align 4
  %and.i = and i32 %6, 231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.gfx_v6_0_fini_pg.exit_crit_edge, label %if.then.i

entry.gfx_v6_0_fini_pg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_fini_pg.exit

if.then.i:                                        ; preds = %entry
  tail call fastcc void @gfx_v6_0_update_gfx_pg(ptr noundef %handle, i1 noundef zeroext false) #9
  %7 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pg_flags.i, align 4
  %and2.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.gfx_v6_0_fini_pg.exit_crit_edge, label %if.then4.i

if.then.i.gfx_v6_0_fini_pg.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_fini_pg.exit

if.then4.i:                                       ; preds = %if.then.i
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12503, i32 noundef 0) #9
  %or.i.i = or i32 %call.i.i, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %or.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, %or.i.i
  br i1 %cmp.not.i.i, label %if.then4.i.gfx_v6_0_fini_pg.exit_crit_edge, label %if.then3.i.i

if.then4.i.gfx_v6_0_fini_pg.exit_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_fini_pg.exit

if.then3.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12503, i32 noundef %or.i.i, i32 noundef 0) #9
  br label %gfx_v6_0_fini_pg.exit

gfx_v6_0_fini_pg.exit:                            ; preds = %if.then3.i.i, %if.then4.i.gfx_v6_0_fini_pg.exit_crit_edge, %if.then.i.gfx_v6_0_fini_pg.exit_crit_edge, %entry.gfx_v6_0_fini_pg.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gfx_v6_0_hw_fini(ptr noundef %handle)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gfx_v6_0_hw_init(ptr noundef %handle)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gfx_v6_0_is_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8196, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool.not = icmp sgt i32 %call, -1
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_wait_for_idle(ptr noundef %handle) #0 align 64 {
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
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8196, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not.i = icmp sgt i32 %call.i, -1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfx_v6_0_soft_reset(ptr nocapture noundef readnone %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12394, i32 noundef 0) #9
  %and.i = and i32 %call.i, -1572865
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12394, i32 noundef %and.i, i32 noundef 0) #9
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 40975, i32 noundef 0) #9
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18.i = icmp sgt i32 %1, 0
  br i1 %cmp18.i, label %entry.for.body.i_crit_edge, label %entry.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge

entry.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gui_idle_interrupt.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call4.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12499, i32 noundef 0) #9
  %and5.i = and i32 %call4.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 6
  br i1 %cmp6.i, label %for.body.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge, label %if.end8.i

for.body.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gui_idle_interrupt.exit

if.end8.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %3 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %4
  br i1 %cmp.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge

if.end8.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gui_idle_interrupt.exit

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

gfx_v6_0_enable_gui_idle_interrupt.exit:          ; preds = %if.end8.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge, %for.body.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge, %entry.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %gfx_v6_0_enable_gui_idle_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @gfx_v6_0_enable_mgcg(ptr noundef %handle, i1 noundef zeroext true)
  tail call fastcc void @gfx_v6_0_enable_cgcg(ptr noundef %handle, i1 noundef zeroext true)
  br label %if.end2

if.else:                                          ; preds = %gfx_v6_0_enable_gui_idle_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @gfx_v6_0_enable_cgcg(ptr noundef %handle, i1 noundef zeroext false)
  tail call fastcc void @gfx_v6_0_enable_mgcg(ptr noundef %handle, i1 noundef zeroext false)
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %call.i8 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12394, i32 noundef 0) #9
  %tmp.0.i = or i32 %call.i8, 1572864
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12394, i32 noundef %tmp.0.i, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_set_powergating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %0 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pg_flags, align 4
  %and = and i32 %1, 231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then1

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then1:                                         ; preds = %entry
  tail call fastcc void @gfx_v6_0_update_gfx_pg(ptr noundef %handle, i1 noundef zeroext %cmp)
  %2 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_flags, align 4
  %and4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then1.if.end10_crit_edge, label %if.then6

if.then1.if.end10_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %if.then1
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12503, i32 noundef 0) #9
  br i1 %cmp, label %land.lhs.true.i, label %if.then6.if.else.i_crit_edge

if.then6.if.else.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then6
  %4 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pg_flags, align 4
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %and2.i = and i32 %call.i, -32769
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then6.if.else.i_crit_edge
  %or.i = or i32 %call.i, 32768
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %and2.i, %if.then.i ], [ %or.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %data.0.i)
  %cmp.not.i = icmp eq i32 %call.i, %data.0.i
  br i1 %cmp.not.i, label %if.end.i.if.end10_crit_edge, label %if.then3.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12503, i32 noundef %data.0.i, i32 noundef 0) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then3.i, %if.end.i.if.end10_crit_edge, %if.then1.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gfx_get_num_kcq(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gfx_v6_0_get_gpu_clock_counter(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gfx = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106
  tail call void @mutex_lock_nested(ptr noundef %gfx, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12496, i32 noundef 1, i32 noundef 0) #9
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12494, i32 noundef 0) #9
  %conv = zext i32 %call to i64
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12495, i32 noundef 0) #9
  %conv2 = zext i32 %call1 to i64
  %shl = shl nuw i64 %conv2, 32
  %or = or i64 %shl, %conv
  tail call void @mutex_unlock(ptr noundef %gfx) #9
  ret i64 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_select_se_sh(ptr noundef %adev, i32 noundef %se_num, i32 noundef %sh_num, i32 noundef %instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %instance)
  %cmp = icmp eq i32 %instance, -1
  %and = and i32 %instance, 255
  %data.0 = select i1 %cmp, i32 1073741824, i32 %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sh_num)
  %cmp2 = icmp eq i32 %sh_num, -1
  %0 = and i32 %sh_num, %se_num
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %if.then3, label %if.else5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or4 = or i32 %data.0, -1610612736
  br label %if.end24

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %se_num)
  %cmp1 = icmp eq i32 %se_num, -1
  br i1 %cmp1, label %if.then7, label %if.else11

if.then7:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #11
  %shl8 = shl i32 %sh_num, 8
  %or9 = or i32 %shl8, %data.0
  %or10 = or i32 %or9, -2147483648
  br label %if.end24

if.else11:                                        ; preds = %if.else5
  br i1 %cmp2, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  %shl14 = shl i32 %se_num, 16
  %or15 = or i32 %shl14, %data.0
  %or16 = or i32 %or15, 536870912
  br label %if.end24

if.else17:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  %shl18 = shl i32 %sh_num, 8
  %shl19 = shl i32 %se_num, 16
  %or20 = or i32 %shl18, %shl19
  %or21 = or i32 %or20, %data.0
  br label %if.end24

if.end24:                                         ; preds = %if.else17, %if.then13, %if.then7, %if.then3
  %data.1 = phi i32 [ %or4, %if.then3 ], [ %or10, %if.then7 ], [ %or16, %if.then13 ], [ %or21, %if.else17 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 8203, i32 noundef %data.1, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_read_wave_data(ptr noundef %adev, i32 noundef %simd, i32 noundef %wave, ptr nocapture noundef writeonly %dst, ptr noundef %no_fields) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %no_fields, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %no_fields, align 4
  %arrayidx = getelementptr i32, ptr %dst, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  %shl1.i = shl i32 %simd, 4
  %or.i = or i32 %shl1.i, %wave
  %or4.i = or i32 %or.i, 1187840
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i, i32 noundef 0) #9
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %3 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %no_fields, align 4
  %inc1 = add i32 %4, 1
  store i32 %inc1, ptr %no_fields, align 4
  %arrayidx2 = getelementptr i32, ptr %dst, i32 %4
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %arrayidx2, align 4
  %or4.i152 = or i32 %or.i, 1581056
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i152, i32 noundef 0) #9
  %call.i153 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %6 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %no_fields, align 4
  %inc4 = add i32 %7, 1
  store i32 %inc4, ptr %no_fields, align 4
  %arrayidx5 = getelementptr i32, ptr %dst, i32 %7
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i153, ptr %arrayidx5, align 4
  %or4.i157 = or i32 %or.i, 1646592
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i157, i32 noundef 0) #9
  %call.i158 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %9 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %no_fields, align 4
  %inc7 = add i32 %10, 1
  store i32 %inc7, ptr %no_fields, align 4
  %arrayidx8 = getelementptr i32, ptr %dst, i32 %10
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i158, ptr %arrayidx8, align 4
  %or4.i162 = or i32 %or.i, 41820160
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i162, i32 noundef 0) #9
  %call.i163 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %12 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %no_fields, align 4
  %inc10 = add i32 %13, 1
  store i32 %inc10, ptr %no_fields, align 4
  %arrayidx11 = getelementptr i32, ptr %dst, i32 %13
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i163, ptr %arrayidx11, align 4
  %or4.i167 = or i32 %or.i, 41885696
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i167, i32 noundef 0) #9
  %call.i168 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %15 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %no_fields, align 4
  %inc13 = add i32 %16, 1
  store i32 %inc13, ptr %no_fields, align 4
  %arrayidx14 = getelementptr i32, ptr %dst, i32 %16
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i168, ptr %arrayidx14, align 4
  %or4.i172 = or i32 %or.i, 1318912
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i172, i32 noundef 0) #9
  %call.i173 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %18 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %no_fields, align 4
  %inc16 = add i32 %19, 1
  store i32 %inc16, ptr %no_fields, align 4
  %arrayidx17 = getelementptr i32, ptr %dst, i32 %19
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i173, ptr %arrayidx17, align 4
  %or4.i177 = or i32 %or.i, 1712128
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i177, i32 noundef 0) #9
  %call.i178 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %21 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %no_fields, align 4
  %inc19 = add i32 %22, 1
  store i32 %inc19, ptr %no_fields, align 4
  %arrayidx20 = getelementptr i32, ptr %dst, i32 %22
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i178, ptr %arrayidx20, align 4
  %or4.i182 = or i32 %or.i, 1777664
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i182, i32 noundef 0) #9
  %call.i183 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %24 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %no_fields, align 4
  %inc22 = add i32 %25, 1
  store i32 %inc22, ptr %no_fields, align 4
  %arrayidx23 = getelementptr i32, ptr %dst, i32 %25
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i183, ptr %arrayidx23, align 4
  %or4.i187 = or i32 %or.i, 1384448
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i187, i32 noundef 0) #9
  %call.i188 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %27 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %no_fields, align 4
  %inc25 = add i32 %28, 1
  store i32 %inc25, ptr %no_fields, align 4
  %arrayidx26 = getelementptr i32, ptr %dst, i32 %28
  %29 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i188, ptr %arrayidx26, align 4
  %or4.i192 = or i32 %or.i, 1449984
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i192, i32 noundef 0) #9
  %call.i193 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %30 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %no_fields, align 4
  %inc28 = add i32 %31, 1
  store i32 %inc28, ptr %no_fields, align 4
  %arrayidx29 = getelementptr i32, ptr %dst, i32 %31
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i193, ptr %arrayidx29, align 4
  %or4.i197 = or i32 %or.i, 1253376
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i197, i32 noundef 0) #9
  %call.i198 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %33 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %no_fields, align 4
  %inc31 = add i32 %34, 1
  store i32 %inc31, ptr %no_fields, align 4
  %arrayidx32 = getelementptr i32, ptr %dst, i32 %34
  %35 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i198, ptr %arrayidx32, align 4
  %or4.i202 = or i32 %or.i, 1515520
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i202, i32 noundef 0) #9
  %call.i203 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %36 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %no_fields, align 4
  %inc34 = add i32 %37, 1
  store i32 %inc34, ptr %no_fields, align 4
  %arrayidx35 = getelementptr i32, ptr %dst, i32 %37
  %38 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call.i203, ptr %arrayidx35, align 4
  %or4.i207 = or i32 %or.i, 40640512
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i207, i32 noundef 0) #9
  %call.i208 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %39 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %no_fields, align 4
  %inc37 = add i32 %40, 1
  store i32 %inc37, ptr %no_fields, align 4
  %arrayidx38 = getelementptr i32, ptr %dst, i32 %40
  %41 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i208, ptr %arrayidx38, align 4
  %or4.i212 = or i32 %or.i, 40706048
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i212, i32 noundef 0) #9
  %call.i213 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %42 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %no_fields, align 4
  %inc40 = add i32 %43, 1
  store i32 %inc40, ptr %no_fields, align 4
  %arrayidx41 = getelementptr i32, ptr %dst, i32 %43
  %44 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i213, ptr %arrayidx41, align 4
  %or4.i217 = or i32 %or.i, 40771584
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i217, i32 noundef 0) #9
  %call.i218 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %45 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %no_fields, align 4
  %inc43 = add i32 %46, 1
  store i32 %inc43, ptr %no_fields, align 4
  %arrayidx44 = getelementptr i32, ptr %dst, i32 %46
  %47 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call.i218, ptr %arrayidx44, align 4
  %or4.i222 = or i32 %or.i, 40837120
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i222, i32 noundef 0) #9
  %call.i223 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %48 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %no_fields, align 4
  %inc46 = add i32 %49, 1
  store i32 %inc46, ptr %no_fields, align 4
  %arrayidx47 = getelementptr i32, ptr %dst, i32 %49
  %50 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call.i223, ptr %arrayidx47, align 4
  %or4.i227 = or i32 %or.i, 1843200
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i227, i32 noundef 0) #9
  %call.i228 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %51 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %no_fields, align 4
  %inc49 = add i32 %52, 1
  store i32 %inc49, ptr %no_fields, align 4
  %arrayidx50 = getelementptr i32, ptr %dst, i32 %52
  %53 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call.i228, ptr %arrayidx50, align 4
  %or4.i232 = or i32 %or.i, 41689088
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i232, i32 noundef 0) #9
  %call.i233 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %54 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %no_fields, align 4
  %inc52 = add i32 %55, 1
  store i32 %inc52, ptr %no_fields, align 4
  %arrayidx53 = getelementptr i32, ptr %dst, i32 %55
  %56 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i233, ptr %arrayidx53, align 4
  %or4.i237 = or i32 %or.i, 1122304
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i237, i32 noundef 0) #9
  %call.i238 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %57 = ptrtoint ptr %no_fields to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %no_fields, align 4
  %inc55 = add i32 %58, 1
  store i32 %inc55, ptr %no_fields, align 4
  %arrayidx56 = getelementptr i32, ptr %dst, i32 %58
  %59 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.i238, ptr %arrayidx56, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_read_wave_sgprs(ptr noundef %adev, i32 noundef %simd, i32 noundef %wave, i32 noundef %start, i32 noundef %size, ptr nocapture noundef writeonly %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl1.i = shl i32 %simd, 4
  %add = shl i32 %start, 16
  %shl2.i = add i32 %add, 33554432
  %or.i = or i32 %shl1.i, %wave
  %or3.i = or i32 %or.i, %shl2.i
  %or7.i = or i32 %or3.i, 12288
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or7.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not1.i = icmp eq i32 %size, 0
  br i1 %tobool.not1.i, label %entry.wave_read_regs.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.wave_read_regs.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wave_read_regs.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %out.addr.03.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %dst, %entry.while.body.i_crit_edge ]
  %num.addr.02.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %size, %entry.while.body.i_crit_edge ]
  %dec.i = add i32 %num.addr.02.i, -1
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #9
  %incdec.ptr.i = getelementptr i32, ptr %out.addr.03.i, i32 1
  %0 = ptrtoint ptr %out.addr.03.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call.i, ptr %out.addr.03.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.wave_read_regs.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.wave_read_regs.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wave_read_regs.exit

wave_read_regs.exit:                              ; preds = %while.body.i.wave_read_regs.exit_crit_edge, %entry.wave_read_regs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_select_me_pipe_q(ptr nocapture noundef readnone %adev, i32 noundef %me, i32 noundef %pipe, i32 noundef %q, i32 noundef %vm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_rlc_init(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 3
  %0 = ptrtoint ptr %reg_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @verde_rlc_save_restore_register_list, ptr %reg_list, align 4
  %reg_list_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 4
  %1 = ptrtoint ptr %reg_list_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 218, ptr %reg_list_size, align 8
  %cs_data5 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 8
  %2 = ptrtoint ptr %cs_data5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @si_cs_data, ptr %cs_data5, align 4
  %call = tail call i32 @amdgpu_gfx_rlc_init_sr(ptr noundef %adev, i32 noundef 218) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.then19, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %entry
  %3 = ptrtoint ptr %cs_data5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cs_data5, align 4
  %cmp.i = icmp eq ptr %4, null
  br i1 %cmp.i, label %if.then19.gfx_v6_0_get_csb_size.exit_crit_edge, label %for.cond.preheader.i

if.then19.gfx_v6_0_get_csb_size.exit_crit_edge:   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_get_csb_size.exit

for.cond.preheader.i:                             ; preds = %if.then19
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp5.not41.i = icmp eq ptr %6, null
  br i1 %cmp5.not41.i, label %for.cond.preheader.i.for.end17.i_crit_edge, label %for.cond.preheader.i.for.cond7.preheader.i_crit_edge

for.cond.preheader.i.for.cond7.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  br label %for.cond7.preheader.i

for.cond.preheader.i.for.end17.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17.i

for.cond7.preheader.i:                            ; preds = %for.inc15.i.for.cond7.preheader.i_crit_edge, %for.cond.preheader.i.for.cond7.preheader.i_crit_edge
  %7 = phi ptr [ %17, %for.inc15.i.for.cond7.preheader.i_crit_edge ], [ %6, %for.cond.preheader.i.for.cond7.preheader.i_crit_edge ]
  %sect.043.i = phi ptr [ %incdec.ptr16.i, %for.inc15.i.for.cond7.preheader.i_crit_edge ], [ %4, %for.cond.preheader.i.for.cond7.preheader.i_crit_edge ]
  %count.042.i = phi i32 [ %count.1.lcssa.i, %for.inc15.i.for.cond7.preheader.i_crit_edge ], [ 5, %for.cond.preheader.i.for.cond7.preheader.i_crit_edge ]
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp8.not38.i = icmp eq ptr %9, null
  br i1 %cmp8.not38.i, label %for.cond7.preheader.i.for.inc15.i_crit_edge, label %for.body9.lr.ph.i

for.cond7.preheader.i.for.inc15.i_crit_edge:      ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.i

for.body9.lr.ph.i:                                ; preds = %for.cond7.preheader.i
  %id.i = getelementptr inbounds %struct.cs_section_def, ptr %sect.043.i, i32 0, i32 1
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp10.i = icmp eq i32 %11, 1
  br i1 %cmp10.i, label %for.body9.lr.ph.i.for.body9.i_crit_edge, label %for.body9.lr.ph.i.gfx_v6_0_get_csb_size.exit_crit_edge

for.body9.lr.ph.i.gfx_v6_0_get_csb_size.exit_crit_edge: ; preds = %for.body9.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_get_csb_size.exit

for.body9.lr.ph.i.for.body9.i_crit_edge:          ; preds = %for.body9.lr.ph.i
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %for.body9.lr.ph.i.for.body9.i_crit_edge
  %ext.040.i = phi ptr [ %incdec.ptr.i, %for.body9.i.for.body9.i_crit_edge ], [ %7, %for.body9.lr.ph.i.for.body9.i_crit_edge ]
  %count.139.i = phi i32 [ %add13.i, %for.body9.i.for.body9.i_crit_edge ], [ %count.042.i, %for.body9.lr.ph.i.for.body9.i_crit_edge ]
  %reg_count.i = getelementptr inbounds %struct.cs_extent_def, ptr %ext.040.i, i32 0, i32 2
  %12 = ptrtoint ptr %reg_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_count.i, align 4
  %add12.i = add i32 %count.139.i, 2
  %add13.i = add i32 %add12.i, %13
  %incdec.ptr.i = getelementptr %struct.cs_extent_def, ptr %ext.040.i, i32 1
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %incdec.ptr.i, align 4
  %cmp8.not.i = icmp eq ptr %15, null
  br i1 %cmp8.not.i, label %for.body9.i.for.inc15.i_crit_edge, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9.i

for.body9.i.for.inc15.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.i

for.inc15.i:                                      ; preds = %for.body9.i.for.inc15.i_crit_edge, %for.cond7.preheader.i.for.inc15.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.042.i, %for.cond7.preheader.i.for.inc15.i_crit_edge ], [ %add13.i, %for.body9.i.for.inc15.i_crit_edge ]
  %incdec.ptr16.i = getelementptr %struct.cs_section_def, ptr %sect.043.i, i32 1
  %16 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %incdec.ptr16.i, align 4
  %cmp5.not.i = icmp eq ptr %17, null
  br i1 %cmp5.not.i, label %for.inc15.i.for.end17.i_crit_edge, label %for.inc15.i.for.cond7.preheader.i_crit_edge

for.inc15.i.for.cond7.preheader.i_crit_edge:      ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.preheader.i

for.inc15.i.for.end17.i_crit_edge:                ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17.i

for.end17.i:                                      ; preds = %for.inc15.i.for.end17.i_crit_edge, %for.cond.preheader.i.for.end17.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 5, %for.cond.preheader.i.for.end17.i_crit_edge ], [ %count.1.lcssa.i, %for.inc15.i.for.end17.i_crit_edge ]
  %add20.i = add i32 %count.0.lcssa.i, 7
  br label %gfx_v6_0_get_csb_size.exit

gfx_v6_0_get_csb_size.exit:                       ; preds = %for.end17.i, %for.body9.lr.ph.i.gfx_v6_0_get_csb_size.exit_crit_edge, %if.then19.gfx_v6_0_get_csb_size.exit_crit_edge
  %retval.0.i = phi i32 [ %add20.i, %for.end17.i ], [ 0, %if.then19.gfx_v6_0_get_csb_size.exit_crit_edge ], [ 0, %for.body9.lr.ph.i.gfx_v6_0_get_csb_size.exit_crit_edge ]
  %clear_state_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 9
  %18 = ptrtoint ptr %clear_state_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i, ptr %clear_state_size, align 8
  %add = shl i32 %retval.0.i, 2
  %mul = add i32 %add, 256
  %clear_state_obj = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 5
  %clear_state_gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 6
  %cs_ptr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 7
  %call32 = tail call i32 @amdgpu_bo_create_reserved(ptr noundef %adev, i32 noundef %mul, i32 noundef 4096, i32 noundef 4, ptr noundef %clear_state_obj, ptr noundef %clear_state_gpu_addr, ptr noundef %cs_ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %do.end

do.end:                                           ; preds = %gfx_v6_0_get_csb_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.4, i32 noundef %call32) #12
  tail call void @amdgpu_gfx_rlc_fini(ptr noundef %adev) #9
  br label %cleanup

if.end35:                                         ; preds = %gfx_v6_0_get_csb_size.exit
  %21 = ptrtoint ptr %cs_ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cs_ptr, align 8
  %23 = ptrtoint ptr %clear_state_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %clear_state_gpu_addr, align 8
  %add42 = add i64 %24, 256
  %shr = lshr i64 %add42, 32
  %conv = trunc i64 %shr to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %25, ptr %22, align 4
  %conv44 = trunc i64 %add42 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv44)
  %arrayidx45 = getelementptr i32, ptr %22, i32 1
  %28 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %27, ptr %arrayidx45, align 4
  %29 = ptrtoint ptr %clear_state_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clear_state_size, align 8
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %arrayidx49 = getelementptr i32, ptr %22, i32 2
  %32 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %31, ptr %arrayidx49, align 4
  %arrayidx50 = getelementptr i32, ptr %22, i32 64
  %33 = ptrtoint ptr %cs_data5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cs_data5, align 4
  %cmp.i94 = icmp eq ptr %34, null
  %cmp1.i = icmp eq ptr %arrayidx50, null
  %or.cond.i = or i1 %cmp1.i, %cmp.i94
  br i1 %or.cond.i, label %if.end35.gfx_v6_0_get_csb_buffer.exit_crit_edge, label %if.end3.i

if.end35.gfx_v6_0_get_csb_buffer.exit_crit_edge:  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_get_csb_buffer.exit

if.end3.i:                                        ; preds = %if.end35
  %35 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 4849856, ptr %arrayidx50, align 4
  %arrayidx5.i = getelementptr i32, ptr %22, i32 65
  %36 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 32, ptr %arrayidx5.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %22, i32 66
  %37 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 2621888, ptr %arrayidx7.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %22, i32 67
  %38 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 128, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %22, i32 68
  %39 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 128, ptr %arrayidx11.i, align 4
  %40 = ptrtoint ptr %cs_data5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cs_data5, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %cmp15.not112.i = icmp eq ptr %43, null
  br i1 %cmp15.not112.i, label %if.end3.i.for.end40.i_crit_edge, label %if.end3.i.for.cond17.preheader.i_crit_edge

if.end3.i.for.cond17.preheader.i_crit_edge:       ; preds = %if.end3.i
  br label %for.cond17.preheader.i

if.end3.i.for.end40.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40.i

for.cond17.preheader.i:                           ; preds = %for.inc38.i.for.cond17.preheader.i_crit_edge, %if.end3.i.for.cond17.preheader.i_crit_edge
  %44 = phi ptr [ %70, %for.inc38.i.for.cond17.preheader.i_crit_edge ], [ %43, %if.end3.i.for.cond17.preheader.i_crit_edge ]
  %sect.0114.i = phi ptr [ %incdec.ptr39.i, %for.inc38.i.for.cond17.preheader.i_crit_edge ], [ %41, %if.end3.i.for.cond17.preheader.i_crit_edge ]
  %count.0113.i = phi i32 [ %count.1.lcssa.i98, %for.inc38.i.for.cond17.preheader.i_crit_edge ], [ 5, %if.end3.i.for.cond17.preheader.i_crit_edge ]
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %cmp18.not107.i = icmp eq ptr %46, null
  br i1 %cmp18.not107.i, label %for.cond17.preheader.i.for.inc38.i_crit_edge, label %for.body19.lr.ph.i

for.cond17.preheader.i.for.inc38.i_crit_edge:     ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38.i

for.body19.lr.ph.i:                               ; preds = %for.cond17.preheader.i
  %id.i95 = getelementptr inbounds %struct.cs_section_def, ptr %sect.0114.i, i32 0, i32 1
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.inc36.i.for.body19.i_crit_edge, %for.body19.lr.ph.i
  %ext.0109.i = phi ptr [ %44, %for.body19.lr.ph.i ], [ %incdec.ptr.i97, %for.inc36.i.for.body19.i_crit_edge ]
  %count.1108.i = phi i32 [ %count.0113.i, %for.body19.lr.ph.i ], [ %count.2.lcssa.i, %for.inc36.i.for.body19.i_crit_edge ]
  %47 = ptrtoint ptr %id.i95 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp20.i = icmp eq i32 %48, 1
  br i1 %cmp20.i, label %if.then21.i, label %for.body19.i.gfx_v6_0_get_csb_buffer.exit_crit_edge

for.body19.i.gfx_v6_0_get_csb_buffer.exit_crit_edge: ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_get_csb_buffer.exit

if.then21.i:                                      ; preds = %for.body19.i
  %reg_count.i96 = getelementptr inbounds %struct.cs_extent_def, ptr %ext.0109.i, i32 0, i32 2
  %49 = ptrtoint ptr %reg_count.i96 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg_count.i96, align 4
  %and.i = shl i32 %50, 16
  %or.i = or i32 %and.i, -1073714944
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %inc22.i = add i32 %count.1108.i, 1
  %arrayidx23.i = getelementptr i32, ptr %arrayidx50, i32 %count.1108.i
  %52 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %51, ptr %arrayidx23.i, align 4
  %reg_index.i = getelementptr inbounds %struct.cs_extent_def, ptr %ext.0109.i, i32 0, i32 1
  %53 = ptrtoint ptr %reg_index.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg_index.i, align 4
  %sub.i = add i32 %54, -40960
  %55 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #9
  %inc24.i = add i32 %count.1108.i, 2
  %arrayidx25.i = getelementptr i32, ptr %arrayidx50, i32 %inc22.i
  %56 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %55, ptr %arrayidx25.i, align 4
  %57 = ptrtoint ptr %reg_count.i96 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reg_count.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp28104.not.i = icmp eq i32 %58, 0
  br i1 %cmp28104.not.i, label %if.then21.i.for.inc36.i_crit_edge, label %if.then21.i.for.body29.i_crit_edge

if.then21.i.for.body29.i_crit_edge:               ; preds = %if.then21.i
  br label %for.body29.i

if.then21.i.for.inc36.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc36.i

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %if.then21.i.for.body29.i_crit_edge
  %i.0106.i = phi i32 [ %inc34.i, %for.body29.i.for.body29.i_crit_edge ], [ 0, %if.then21.i.for.body29.i_crit_edge ]
  %count.2105.i = phi i32 [ %inc32.i, %for.body29.i.for.body29.i_crit_edge ], [ %inc24.i, %if.then21.i.for.body29.i_crit_edge ]
  %59 = ptrtoint ptr %ext.0109.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ext.0109.i, align 4
  %arrayidx31.i = getelementptr i32, ptr %60, i32 %i.0106.i
  %61 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx31.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  %inc32.i = add i32 %count.2105.i, 1
  %arrayidx33.i = getelementptr i32, ptr %arrayidx50, i32 %count.2105.i
  %64 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %63, ptr %arrayidx33.i, align 4
  %inc34.i = add nuw i32 %i.0106.i, 1
  %65 = ptrtoint ptr %reg_count.i96 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg_count.i96, align 4
  %cmp28.i = icmp ult i32 %inc34.i, %66
  br i1 %cmp28.i, label %for.body29.i.for.body29.i_crit_edge, label %for.body29.i.for.inc36.i_crit_edge

for.body29.i.for.inc36.i_crit_edge:               ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc36.i

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29.i

for.inc36.i:                                      ; preds = %for.body29.i.for.inc36.i_crit_edge, %if.then21.i.for.inc36.i_crit_edge
  %count.2.lcssa.i = phi i32 [ %inc24.i, %if.then21.i.for.inc36.i_crit_edge ], [ %inc32.i, %for.body29.i.for.inc36.i_crit_edge ]
  %incdec.ptr.i97 = getelementptr %struct.cs_extent_def, ptr %ext.0109.i, i32 1
  %67 = ptrtoint ptr %incdec.ptr.i97 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %incdec.ptr.i97, align 4
  %cmp18.not.i = icmp eq ptr %68, null
  br i1 %cmp18.not.i, label %for.inc36.i.for.inc38.i_crit_edge, label %for.inc36.i.for.body19.i_crit_edge

for.inc36.i.for.body19.i_crit_edge:               ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body19.i

for.inc36.i.for.inc38.i_crit_edge:                ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %for.inc36.i.for.inc38.i_crit_edge, %for.cond17.preheader.i.for.inc38.i_crit_edge
  %count.1.lcssa.i98 = phi i32 [ %count.0113.i, %for.cond17.preheader.i.for.inc38.i_crit_edge ], [ %count.2.lcssa.i, %for.inc36.i.for.inc38.i_crit_edge ]
  %incdec.ptr39.i = getelementptr %struct.cs_section_def, ptr %sect.0114.i, i32 1
  %69 = ptrtoint ptr %incdec.ptr39.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %incdec.ptr39.i, align 4
  %cmp15.not.i = icmp eq ptr %70, null
  br i1 %cmp15.not.i, label %for.inc38.i.for.end40.i_crit_edge, label %for.inc38.i.for.cond17.preheader.i_crit_edge

for.inc38.i.for.cond17.preheader.i_crit_edge:     ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond17.preheader.i

for.inc38.i.for.end40.i_crit_edge:                ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40.i

for.end40.i:                                      ; preds = %for.inc38.i.for.end40.i_crit_edge, %if.end3.i.for.end40.i_crit_edge
  %count.0.lcssa.i99 = phi i32 [ 5, %if.end3.i.for.end40.i_crit_edge ], [ %count.1.lcssa.i98, %for.inc38.i.for.end40.i_crit_edge ]
  %inc41.i = add i32 %count.0.lcssa.i99, 1
  %arrayidx42.i = getelementptr i32, ptr %arrayidx50, i32 %count.0.lcssa.i99
  %71 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 6881728, ptr %arrayidx42.i, align 4
  %inc43.i = add i32 %count.0.lcssa.i99, 2
  %arrayidx44.i = getelementptr i32, ptr %arrayidx50, i32 %inc41.i
  %72 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 -738197504, ptr %arrayidx44.i, align 4
  %raster_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 30, i32 0, i32 0, i32 2
  %73 = ptrtoint ptr %raster_config.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %raster_config.i, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #9
  %inc48.i = add i32 %count.0.lcssa.i99, 3
  %arrayidx49.i = getelementptr i32, ptr %arrayidx50, i32 %inc43.i
  %76 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %75, ptr %arrayidx49.i, align 4
  %inc50.i = add i32 %count.0.lcssa.i99, 4
  %arrayidx51.i = getelementptr i32, ptr %arrayidx50, i32 %inc48.i
  %77 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 4849856, ptr %arrayidx51.i, align 4
  %inc52.i = add i32 %count.0.lcssa.i99, 5
  %arrayidx53.i = getelementptr i32, ptr %arrayidx50, i32 %inc50.i
  %78 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 48, ptr %arrayidx53.i, align 4
  %inc54.i = add i32 %count.0.lcssa.i99, 6
  %arrayidx55.i = getelementptr i32, ptr %arrayidx50, i32 %inc52.i
  %79 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 1179840, ptr %arrayidx55.i, align 4
  %arrayidx57.i = getelementptr i32, ptr %arrayidx50, i32 %inc54.i
  %80 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 0, ptr %arrayidx57.i, align 4
  br label %gfx_v6_0_get_csb_buffer.exit

gfx_v6_0_get_csb_buffer.exit:                     ; preds = %for.end40.i, %for.body19.i.gfx_v6_0_get_csb_buffer.exit_crit_edge, %if.end35.gfx_v6_0_get_csb_buffer.exit_crit_edge
  %81 = ptrtoint ptr %clear_state_obj to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %clear_state_obj, align 4
  tail call void @amdgpu_bo_kunmap(ptr noundef %82) #9
  %83 = ptrtoint ptr %clear_state_obj to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clear_state_obj, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %84, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %84, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %86, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #9
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %84, i32 0, i32 4, i32 6
  %87 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %88, ptr noundef null) #9
  %89 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %90, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #9
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %84, i32 0, i32 4, i32 0, i32 9
  %91 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %92) #9
  tail call void @ww_mutex_unlock(ptr noundef %92) #9
  br label %cleanup

cleanup:                                          ; preds = %gfx_v6_0_get_csb_buffer.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %do.end ], [ 0, %gfx_v6_0_get_csb_buffer.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_rlc_resume(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rlc_fw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 15
  %0 = ptrtoint ptr %rlc_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rlc_fw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %stop = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop, align 4
  tail call void %5(ptr noundef %adev) #9
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %reset = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void %9(ptr noundef %adev) #9
  %pg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %10 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pg_flags.i, align 4
  %and.i = and i32 %11, 231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else9.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %and2.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %save_restore_gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 1
  %12 = ptrtoint ptr %save_restore_gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %save_restore_gpu_addr.i, align 8
  %shr.i = lshr i64 %13, 8
  %conv.i = trunc i64 %shr.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12484, i32 noundef %conv.i, i32 noundef 0) #9
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12503, i32 noundef 0) #9
  %or.i.i = or i32 %call.i.i, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12503, i32 noundef %or.i.i, i32 noundef 0) #9
  %clear_state_gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 6
  %14 = ptrtoint ptr %clear_state_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %clear_state_gpu_addr.i.i, align 8
  %shr3.i.i = lshr i64 %15, 8
  %conv4.i.i = trunc i64 %shr3.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12488, i32 noundef %conv4.i.i, i32 noundef 0) #9
  %call5.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12557, i32 noundef 0) #9
  %and6.i.i = and i32 %call5.i.i, 7
  %or7.i.i = or i32 %and6.i.i, 14336
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12557, i32 noundef %or7.i.i, i32 noundef 0) #9
  %call.i37.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12503, i32 noundef 0) #9
  %16 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pg_flags.i, align 4
  %and2.i.i = and i32 %call.i37.i, -32769
  %and.i.i = shl i32 %17, 10
  %18 = and i32 %and.i.i, 32768
  %19 = or i32 %18, %and2.i.i
  %data.0.i.i = xor i32 %19, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i37.i, i32 %data.0.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i37.i, %data.0.i.i
  br i1 %cmp.not.i.i, label %if.then4.i.if.end.i_crit_edge, label %if.then3.i.i

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then3.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12503, i32 noundef %data.0.i.i, i32 noundef 0) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %clear_state_gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 6
  %20 = ptrtoint ptr %clear_state_gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %clear_state_gpu_addr.i, align 8
  %shr7.i = lshr i64 %21, 8
  %conv8.i = trunc i64 %shr7.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12488, i32 noundef %conv8.i, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then3.i.i, %if.then4.i.if.end.i_crit_edge
  %ao_cu_mask.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 6
  %22 = ptrtoint ptr %ao_cu_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ao_cu_mask.i.i, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12555, i32 noundef %23, i32 noundef 0) #9
  %call.i39.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12556, i32 noundef 0) #9
  %and.i40.i = and i32 %call.i39.i, -256
  %number.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 5
  %24 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number.i.i, align 4
  %or.i41.i = or i32 %and.i40.i, %25
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12556, i32 noundef %or.i41.i, i32 noundef 0) #9
  tail call fastcc void @gfx_v6_0_update_gfx_pg(ptr noundef %adev, i1 noundef zeroext true) #9
  br label %gfx_v6_0_init_pg.exit

if.else9.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %save_restore_gpu_addr12.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 1
  %26 = ptrtoint ptr %save_restore_gpu_addr12.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %save_restore_gpu_addr12.i, align 8
  %shr13.i = lshr i64 %27, 8
  %conv14.i = trunc i64 %shr13.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12484, i32 noundef %conv14.i, i32 noundef 0) #9
  %clear_state_gpu_addr17.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 6
  %28 = ptrtoint ptr %clear_state_gpu_addr17.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %clear_state_gpu_addr17.i, align 8
  %shr18.i = lshr i64 %29, 8
  %conv19.i = trunc i64 %shr18.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12488, i32 noundef %conv19.i, i32 noundef 0) #9
  br label %gfx_v6_0_init_pg.exit

gfx_v6_0_init_pg.exit:                            ; preds = %if.else9.i, %if.end.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12481, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12482, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12483, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12485, i32 noundef -1, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12486, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12551, i32 noundef -1, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12497, i32 noundef 0, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12498, i32 noundef 0, i32 noundef 0) #9
  %30 = ptrtoint ptr %rlc_fw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rlc_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ucode_size_bytes, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %33, i32 0, i32 8
  %37 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ucode_array_offset_bytes, align 4
  tail call void @amdgpu_ucode_print_rlc_hdr(ptr noundef %33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp52.not = icmp ult i32 %36, 4
  br i1 %cmp52.not, label %gfx_v6_0_init_pg.exit.for.end_crit_edge, label %for.body.preheader

gfx_v6_0_init_pg.exit.for.end_crit_edge:          ; preds = %gfx_v6_0_init_pg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %gfx_v6_0_init_pg.exit
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %add.ptr = getelementptr i8, ptr %33, i32 %39
  %div46 = lshr i32 %36, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %fw_data.054 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12491, i32 noundef %i.053, i32 noundef 0) #9
  %incdec.ptr = getelementptr i32, ptr %fw_data.054, i32 1
  %40 = ptrtoint ptr %fw_data.054 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fw_data.054, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12492, i32 noundef %42, i32 noundef 0) #9
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %div46
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %gfx_v6_0_init_pg.exit.for.end_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12491, i32 noundef 0, i32 noundef 0) #9
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 2688, i32 noundef 0) #9
  %and.i47 = and i32 %call.i, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1342177280, i32 %and.i47)
  %cmp.i = icmp eq i32 %and.i47, -1342177280
  %call.i48 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12483, i32 noundef 0) #9
  %and.i49 = and i32 %call.i48, -2
  %cond.i = zext i1 %cmp.i to i32
  %or.i = or i32 %and.i49, %cond.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12483, i32 noundef %or.i, i32 noundef 0) #9
  br i1 %cmp.i, label %for.end.gfx_v6_0_enable_lbpw.exit_crit_edge, label %if.then.i50

for.end.gfx_v6_0_enable_lbpw.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_lbpw.exit

if.then.i50:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 8203, i32 noundef -536870912, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9429, i32 noundef 255, i32 noundef 0) #9
  br label %gfx_v6_0_enable_lbpw.exit

gfx_v6_0_enable_lbpw.exit:                        ; preds = %if.then.i50, %for.end.gfx_v6_0_enable_lbpw.exit_crit_edge
  %43 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %funcs, align 4
  %start = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %start, align 4
  tail call void %46(ptr noundef %adev) #9
  br label %cleanup

cleanup:                                          ; preds = %gfx_v6_0_enable_lbpw.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %gfx_v6_0_enable_lbpw.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_rlc_stop(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 0, i32 noundef 0) #9
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #9
  %and.i = and i32 %call.i, -1572865
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %and.i, i32 noundef 0) #9
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 40975, i32 noundef 0) #9
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18.i = icmp sgt i32 %1, 0
  br i1 %cmp18.i, label %entry.for.body.i_crit_edge, label %entry.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge

entry.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_wait_for_rlc_serdes.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call4.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12499, i32 noundef 0) #9
  %and5.i = and i32 %call4.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 6
  br i1 %cmp6.i, label %gfx_v6_0_enable_gui_idle_interrupt.exitthread-pre-split, label %if.end8.i

if.end8.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %3 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %4
  br i1 %cmp.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge

if.end8.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gui_idle_interrupt.exit

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

gfx_v6_0_enable_gui_idle_interrupt.exitthread-pre-split: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %usec_timeout.i, align 8
  br label %gfx_v6_0_enable_gui_idle_interrupt.exit

gfx_v6_0_enable_gui_idle_interrupt.exit:          ; preds = %gfx_v6_0_enable_gui_idle_interrupt.exitthread-pre-split, %if.end8.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge
  %6 = phi i32 [ %.pr, %gfx_v6_0_enable_gui_idle_interrupt.exitthread-pre-split ], [ %4, %if.end8.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp19.i = icmp sgt i32 %6, 0
  br i1 %cmp19.i, label %gfx_v6_0_enable_gui_idle_interrupt.exit.for.body.i5_crit_edge, label %gfx_v6_0_enable_gui_idle_interrupt.exit.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge

gfx_v6_0_enable_gui_idle_interrupt.exit.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge: ; preds = %gfx_v6_0_enable_gui_idle_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_wait_for_rlc_serdes.exit

gfx_v6_0_enable_gui_idle_interrupt.exit.for.body.i5_crit_edge: ; preds = %gfx_v6_0_enable_gui_idle_interrupt.exit
  br label %for.body.i5

for.body.i5:                                      ; preds = %if.end.i.for.body.i5_crit_edge, %gfx_v6_0_enable_gui_idle_interrupt.exit.for.body.i5_crit_edge
  %i.020.i = phi i32 [ %inc.i6, %if.end.i.for.body.i5_crit_edge ], [ 0, %gfx_v6_0_enable_gui_idle_interrupt.exit.for.body.i5_crit_edge ]
  %call.i4 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12569, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp1.i = icmp eq i32 %call.i4, 0
  br i1 %cmp1.i, label %for.endthread-pre-split.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #9
  %inc.i6 = add nuw nsw i32 %i.020.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i7 = icmp slt i32 %inc.i6, %9
  br i1 %cmp.i7, label %if.end.i.for.body.i5_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i.for.body.i5_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i5

for.endthread-pre-split.i:                        ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr.i = load i32, ptr %usec_timeout.i, align 8
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %if.end.i.for.end.i_crit_edge
  %11 = phi i32 [ %.pr.i, %for.endthread-pre-split.i ], [ %9, %if.end.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp421.i = icmp sgt i32 %11, 0
  br i1 %cmp421.i, label %for.end.i.for.body5.i_crit_edge, label %for.end.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge

for.end.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_wait_for_rlc_serdes.exit

for.end.i.for.body5.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %if.end9.i.for.body5.i_crit_edge, %for.end.i.for.body5.i_crit_edge
  %i.122.i = phi i32 [ %inc11.i, %if.end9.i.for.body5.i_crit_edge ], [ 0, %for.end.i.for.body5.i_crit_edge ]
  %call6.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12570, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %for.body5.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge, label %if.end9.i

for.body5.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge: ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_wait_for_rlc_serdes.exit

if.end9.i:                                        ; preds = %for.body5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #9
  %inc11.i = add nuw nsw i32 %i.122.i, 1
  %13 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usec_timeout.i, align 8
  %cmp4.i = icmp slt i32 %inc11.i, %14
  br i1 %cmp4.i, label %if.end9.i.for.body5.i_crit_edge, label %if.end9.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge

if.end9.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_wait_for_rlc_serdes.exit

if.end9.i.for.body5.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

gfx_v6_0_wait_for_rlc_serdes.exit:                ; preds = %if.end9.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge, %for.body5.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge, %for.end.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge, %gfx_v6_0_enable_gui_idle_interrupt.exit.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge, %entry.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_rlc_reset(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 8200, i32 noundef 0) #9
  %or = or i32 %call, 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 8200, i32 noundef %or, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 10737400) #9
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 8200, i32 noundef 0) #9
  %and2 = and i32 %call1, -5
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 8200, i32 noundef %and2, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 10737400) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_rlc_start(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 1, i32 noundef 0) #9
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #9
  %tmp.0.i = or i32 %call.i, 1572864
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %tmp.0.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 10737400) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gfx_rlc_init_sr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_reserved(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_rlc_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

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
declare dso_local void @amdgpu_ucode_print_rlc_hdr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v6_0_update_gfx_pg(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %land.lhs.true.i, label %entry.gfx_v6_0_enable_gfx_cgpg.exit_crit_edge

entry.gfx_v6_0_enable_gfx_cgpg.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gfx_cgpg.exit

land.lhs.true.i:                                  ; preds = %entry
  %pg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %0 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pg_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.gfx_v6_0_enable_gfx_cgpg.exit_crit_edge, label %gfx_v6_0_enable_gfx_cgpg.exit.thread

land.lhs.true.i.gfx_v6_0_enable_gfx_cgpg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gfx_cgpg.exit

gfx_v6_0_enable_gfx_cgpg.exit.thread:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12549, i32 noundef 269488144, i32 noundef 0) #9
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12503, i32 noundef 0) #9
  %or.i = or i32 %call.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12503, i32 noundef %or.i, i32 noundef 0) #9
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12557, i32 noundef 0) #9
  %or5.i = or i32 %call3.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12557, i32 noundef %or5.i, i32 noundef 0) #9
  %call.i728 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12503, i32 noundef 0) #9
  br label %land.lhs.true.i11

gfx_v6_0_enable_gfx_cgpg.exit:                    ; preds = %land.lhs.true.i.gfx_v6_0_enable_gfx_cgpg.exit_crit_edge, %entry.gfx_v6_0_enable_gfx_cgpg.exit_crit_edge
  %call6.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12557, i32 noundef 0) #9
  %and7.i = and i32 %call6.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12557, i32 noundef %and7.i, i32 noundef 0) #9
  %call9.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 40960, i32 noundef 0) #9
  %call.i7 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12503, i32 noundef 0) #9
  br i1 %enable, label %gfx_v6_0_enable_gfx_cgpg.exit.land.lhs.true.i11_crit_edge, label %gfx_v6_0_enable_gfx_cgpg.exit.if.else.i14_crit_edge

gfx_v6_0_enable_gfx_cgpg.exit.if.else.i14_crit_edge: ; preds = %gfx_v6_0_enable_gfx_cgpg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i14

gfx_v6_0_enable_gfx_cgpg.exit.land.lhs.true.i11_crit_edge: ; preds = %gfx_v6_0_enable_gfx_cgpg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i11

land.lhs.true.i11:                                ; preds = %gfx_v6_0_enable_gfx_cgpg.exit.land.lhs.true.i11_crit_edge, %gfx_v6_0_enable_gfx_cgpg.exit.thread
  %call.i730 = phi i32 [ %call.i728, %gfx_v6_0_enable_gfx_cgpg.exit.thread ], [ %call.i7, %gfx_v6_0_enable_gfx_cgpg.exit.land.lhs.true.i11_crit_edge ]
  %pg_flags.i8 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %2 = ptrtoint ptr %pg_flags.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_flags.i8, align 4
  %and.i9 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool1.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool1.not.i10, label %land.lhs.true.i11.if.else.i14_crit_edge, label %if.then.i13

land.lhs.true.i11.if.else.i14_crit_edge:          ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i14

if.then.i13:                                      ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #11
  %or.i12 = or i32 %call.i730, 8
  br label %if.end.i

if.else.i14:                                      ; preds = %land.lhs.true.i11.if.else.i14_crit_edge, %gfx_v6_0_enable_gfx_cgpg.exit.if.else.i14_crit_edge
  %call.i729 = phi i32 [ %call.i730, %land.lhs.true.i11.if.else.i14_crit_edge ], [ %call.i7, %gfx_v6_0_enable_gfx_cgpg.exit.if.else.i14_crit_edge ]
  %and2.i = and i32 %call.i729, -9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i14, %if.then.i13
  %call.i731 = phi i32 [ %call.i730, %if.then.i13 ], [ %call.i729, %if.else.i14 ]
  %data.0.i = phi i32 [ %or.i12, %if.then.i13 ], [ %and2.i, %if.else.i14 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i731, i32 %data.0.i)
  %cmp.not.i = icmp eq i32 %call.i731, %data.0.i
  br i1 %cmp.not.i, label %if.end.i.gfx_v6_0_enable_gfx_static_mgpg.exit_crit_edge, label %if.then3.i

if.end.i.gfx_v6_0_enable_gfx_static_mgpg.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gfx_static_mgpg.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12503, i32 noundef %data.0.i, i32 noundef 0) #9
  br label %gfx_v6_0_enable_gfx_static_mgpg.exit

gfx_v6_0_enable_gfx_static_mgpg.exit:             ; preds = %if.then3.i, %if.end.i.gfx_v6_0_enable_gfx_static_mgpg.exit_crit_edge
  %call.i15 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12503, i32 noundef 0) #9
  br i1 %enable, label %land.lhs.true.i19, label %gfx_v6_0_enable_gfx_static_mgpg.exit.if.else.i23_crit_edge

gfx_v6_0_enable_gfx_static_mgpg.exit.if.else.i23_crit_edge: ; preds = %gfx_v6_0_enable_gfx_static_mgpg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i23

land.lhs.true.i19:                                ; preds = %gfx_v6_0_enable_gfx_static_mgpg.exit
  %pg_flags.i16 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %4 = ptrtoint ptr %pg_flags.i16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pg_flags.i16, align 4
  %and.i17 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool1.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool1.not.i18, label %land.lhs.true.i19.if.else.i23_crit_edge, label %if.then.i21

land.lhs.true.i19.if.else.i23_crit_edge:          ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i23

if.then.i21:                                      ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  %or.i20 = or i32 %call.i15, 4
  br label %if.end.i26

if.else.i23:                                      ; preds = %land.lhs.true.i19.if.else.i23_crit_edge, %gfx_v6_0_enable_gfx_static_mgpg.exit.if.else.i23_crit_edge
  %and2.i22 = and i32 %call.i15, -5
  br label %if.end.i26

if.end.i26:                                       ; preds = %if.else.i23, %if.then.i21
  %data.0.i24 = phi i32 [ %or.i20, %if.then.i21 ], [ %and2.i22, %if.else.i23 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i15, i32 %data.0.i24)
  %cmp.not.i25 = icmp eq i32 %call.i15, %data.0.i24
  br i1 %cmp.not.i25, label %if.end.i26.gfx_v6_0_enable_gfx_dynamic_mgpg.exit_crit_edge, label %if.then3.i27

if.end.i26.gfx_v6_0_enable_gfx_dynamic_mgpg.exit_crit_edge: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gfx_dynamic_mgpg.exit

if.then3.i27:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12503, i32 noundef %data.0.i24, i32 noundef 0) #9
  br label %gfx_v6_0_enable_gfx_dynamic_mgpg.exit

gfx_v6_0_enable_gfx_dynamic_mgpg.exit:            ; preds = %if.then3.i27, %if.end.i26.gfx_v6_0_enable_gfx_dynamic_mgpg.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @gfx_v6_0_ring_get_rptr(ptr nocapture noundef readonly %ring) #6 align 64 {
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
define internal i64 @gfx_v6_0_ring_get_wptr(ptr noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %gfx_ring = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 36
  %cmp = icmp eq ptr %gfx_ring, %ring
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %compute_ring = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 38
  %cmp4 = icmp eq ptr %compute_ring, %ring
  br i1 %cmp4, label %if.else.cleanup_crit_edge, label %if.else9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else9:                                         ; preds = %if.else
  %arrayidx12 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 38, i32 1
  %cmp13 = icmp eq ptr %arrayidx12, %ring
  br i1 %cmp13, label %if.else9.cleanup_crit_edge, label %do.body

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2156, 0\0A.popsection", ""() #9, !srcloc !151
  unreachable

cleanup:                                          ; preds = %if.else9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i32 [ 12357, %entry.cleanup_crit_edge ], [ 12388, %if.else.cleanup_crit_edge ], [ 12393, %if.else9.cleanup_crit_edge ]
  %call16 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %.sink, i32 noundef 0) #9
  %retval.0 = zext i32 %call16 to i64
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_ring_set_wptr_gfx(ptr nocapture noundef readonly %ring) #0 align 64 {
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
  %conv = trunc i64 %3 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 12357, i32 noundef %conv, i32 noundef 0) #9
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef 12357, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #0 align 64 {
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
  %phi.bo = shl i32 %1, 24
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.then.amdgpu_ring_write.exit_crit_edge

if.then.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.then.amdgpu_ring_write.exit_crit_edge
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
  store volatile i32 -1073706240, ptr %arrayidx.i, align 4
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
  %cmp.i26 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i26, label %if.then.i27, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit37_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit37_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit37

if.then.i27:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit37

amdgpu_ring_write.exit37:                         ; preds = %if.then.i27, %amdgpu_ring_write.exit.amdgpu_ring_write.exit37_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i30 = add i64 %20, 1
  store i64 %inc.i30, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i32 = and i32 %22, %23
  %arrayidx.i33 = getelementptr i32, ptr %18, i32 %idxprom.i32
  %24 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %arrayidx.i33, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i35 = and i64 %27, %26
  store i64 %and3.i35, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i36 = add i32 %29, -1
  store i32 %dec.i36, ptr %count_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %amdgpu_ring_write.exit37, %cond.end.if.end_crit_edge
  %flags3 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 4
  %30 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags3, align 4
  %and4 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %. = select i1 %tobool5.not, i32 -1073594624, i32 -1073598208
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %32 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length_dw, align 4
  %count_dw.i38 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %34 = ptrtoint ptr %count_dw.i38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count_dw.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i39 = icmp slt i32 %35, 1
  br i1 %cmp.i39, label %if.then.i40, label %if.end.amdgpu_ring_write.exit50_crit_edge

if.end.amdgpu_ring_write.exit50_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit50

if.then.i40:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit50

amdgpu_ring_write.exit50:                         ; preds = %if.then.i40, %if.end.amdgpu_ring_write.exit50_crit_edge
  %ring1.i41 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %36 = ptrtoint ptr %ring1.i41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ring1.i41, align 4
  %wptr.i42 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %38 = ptrtoint ptr %wptr.i42 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %wptr.i42, align 8
  %inc.i43 = add i64 %39, 1
  store i64 %inc.i43, ptr %wptr.i42, align 8
  %buf_mask.i44 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %40 = ptrtoint ptr %buf_mask.i44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_mask.i44, align 8
  %42 = trunc i64 %39 to i32
  %idxprom.i45 = and i32 %41, %42
  %arrayidx.i46 = getelementptr i32, ptr %37, i32 %idxprom.i45
  %43 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %., ptr %arrayidx.i46, align 4
  %ptr_mask.i47 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %44 = ptrtoint ptr %ptr_mask.i47 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ptr_mask.i47, align 8
  %46 = load i64, ptr %wptr.i42, align 8
  %and3.i48 = and i64 %46, %45
  store i64 %and3.i48, ptr %wptr.i42, align 8
  %47 = ptrtoint ptr %count_dw.i38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count_dw.i38, align 8
  %dec.i49 = add i32 %48, -1
  store i32 %dec.i49, ptr %count_dw.i38, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %49 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %gpu_addr, align 8
  %51 = trunc i64 %50 to i32
  %52 = and i32 %51, -4
  %conv = or i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i49)
  %cmp.i52 = icmp slt i32 %dec.i49, 1
  br i1 %cmp.i52, label %if.then.i53, label %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge

amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge: ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit63

if.then.i53:                                      ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit63

amdgpu_ring_write.exit63:                         ; preds = %if.then.i53, %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge
  %53 = ptrtoint ptr %ring1.i41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring1.i41, align 4
  %55 = ptrtoint ptr %wptr.i42 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %wptr.i42, align 8
  %inc.i56 = add i64 %56, 1
  store i64 %inc.i56, ptr %wptr.i42, align 8
  %57 = ptrtoint ptr %buf_mask.i44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_mask.i44, align 8
  %59 = trunc i64 %56 to i32
  %idxprom.i58 = and i32 %58, %59
  %arrayidx.i59 = getelementptr i32, ptr %54, i32 %idxprom.i58
  %60 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %conv, ptr %arrayidx.i59, align 4
  %61 = ptrtoint ptr %ptr_mask.i47 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ptr_mask.i47, align 8
  %63 = load i64, ptr %wptr.i42, align 8
  %and3.i61 = and i64 %63, %62
  store i64 %and3.i61, ptr %wptr.i42, align 8
  %64 = ptrtoint ptr %count_dw.i38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count_dw.i38, align 8
  %dec.i62 = add i32 %65, -1
  store i32 %dec.i62, ptr %count_dw.i38, align 8
  %66 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %67, 32
  %conv13 = trunc i64 %shr to i32
  %and14 = and i32 %conv13, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i62)
  %cmp.i65 = icmp slt i32 %dec.i62, 1
  br i1 %cmp.i65, label %if.then.i66, label %amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge

amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge: ; preds = %amdgpu_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit76

if.then.i66:                                      ; preds = %amdgpu_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit76

amdgpu_ring_write.exit76:                         ; preds = %if.then.i66, %amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge
  %68 = ptrtoint ptr %ring1.i41 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ring1.i41, align 4
  %70 = ptrtoint ptr %wptr.i42 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %wptr.i42, align 8
  %inc.i69 = add i64 %71, 1
  store i64 %inc.i69, ptr %wptr.i42, align 8
  %72 = ptrtoint ptr %buf_mask.i44 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buf_mask.i44, align 8
  %74 = trunc i64 %71 to i32
  %idxprom.i71 = and i32 %73, %74
  %arrayidx.i72 = getelementptr i32, ptr %69, i32 %idxprom.i71
  %75 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %and14, ptr %arrayidx.i72, align 4
  %76 = ptrtoint ptr %ptr_mask.i47 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %ptr_mask.i47, align 8
  %78 = load i64, ptr %wptr.i42, align 8
  %and3.i74 = and i64 %78, %77
  store i64 %and3.i74, ptr %wptr.i42, align 8
  %79 = ptrtoint ptr %count_dw.i38 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count_dw.i38, align 8
  %dec.i75 = add i32 %80, -1
  store i32 %dec.i75, ptr %count_dw.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i75)
  %cmp.i78 = icmp slt i32 %dec.i75, 1
  br i1 %cmp.i78, label %if.then.i79, label %amdgpu_ring_write.exit76.amdgpu_ring_write.exit89_crit_edge

amdgpu_ring_write.exit76.amdgpu_ring_write.exit89_crit_edge: ; preds = %amdgpu_ring_write.exit76
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit89

if.then.i79:                                      ; preds = %amdgpu_ring_write.exit76
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit89

amdgpu_ring_write.exit89:                         ; preds = %if.then.i79, %amdgpu_ring_write.exit76.amdgpu_ring_write.exit89_crit_edge
  %or = or i32 %33, %cond
  %81 = ptrtoint ptr %ring1.i41 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ring1.i41, align 4
  %83 = ptrtoint ptr %wptr.i42 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %wptr.i42, align 8
  %inc.i82 = add i64 %84, 1
  store i64 %inc.i82, ptr %wptr.i42, align 8
  %85 = ptrtoint ptr %buf_mask.i44 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf_mask.i44, align 8
  %87 = trunc i64 %84 to i32
  %idxprom.i84 = and i32 %86, %87
  %arrayidx.i85 = getelementptr i32, ptr %82, i32 %idxprom.i84
  %88 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 %or, ptr %arrayidx.i85, align 4
  %89 = ptrtoint ptr %ptr_mask.i47 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ptr_mask.i47, align 8
  %91 = load i64, ptr %wptr.i42, align 8
  %and3.i87 = and i64 %91, %90
  store i64 %and3.i87, ptr %wptr.i42, align 8
  %92 = ptrtoint ptr %count_dw.i38 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %count_dw.i38, align 8
  %dec.i88 = add i32 %93, -1
  store i32 %dec.i88, ptr %count_dw.i38, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
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
  store volatile i32 -1073649664, ptr %arrayidx.i, align 4
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
  %cmp.i37 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i37, label %if.then.i38, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit48_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit48_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit48

if.then.i38:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit48

amdgpu_ring_write.exit48:                         ; preds = %if.then.i38, %amdgpu_ring_write.exit.amdgpu_ring_write.exit48_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i41 = add i64 %18, 1
  store i64 %inc.i41, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i43 = and i32 %20, %21
  %arrayidx.i44 = getelementptr i32, ptr %16, i32 %idxprom.i43
  %22 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 378, ptr %arrayidx.i44, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i46 = and i64 %25, %24
  store i64 %and3.i46, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i47 = add i32 %27, -1
  store i32 %dec.i47, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i47)
  %cmp.i50 = icmp slt i32 %dec.i47, 1
  br i1 %cmp.i50, label %if.then.i51, label %amdgpu_ring_write.exit48.amdgpu_ring_write.exit61_crit_edge

amdgpu_ring_write.exit48.amdgpu_ring_write.exit61_crit_edge: ; preds = %amdgpu_ring_write.exit48
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit61

if.then.i51:                                      ; preds = %amdgpu_ring_write.exit48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit61

amdgpu_ring_write.exit61:                         ; preds = %if.then.i51, %amdgpu_ring_write.exit48.amdgpu_ring_write.exit61_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i54 = add i64 %31, 1
  store i64 %inc.i54, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i56 = and i32 %33, %34
  %arrayidx.i57 = getelementptr i32, ptr %29, i32 %idxprom.i56
  %35 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %arrayidx.i57, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i59 = and i64 %38, %37
  store i64 %and3.i59, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i60 = add i32 %40, -1
  store i32 %dec.i60, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i60)
  %cmp.i63 = icmp slt i32 %dec.i60, 1
  br i1 %cmp.i63, label %if.then.i64, label %amdgpu_ring_write.exit61.amdgpu_ring_write.exit74_crit_edge

amdgpu_ring_write.exit61.amdgpu_ring_write.exit74_crit_edge: ; preds = %amdgpu_ring_write.exit61
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit74

if.then.i64:                                      ; preds = %amdgpu_ring_write.exit61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit74

amdgpu_ring_write.exit74:                         ; preds = %if.then.i64, %amdgpu_ring_write.exit61.amdgpu_ring_write.exit74_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i67 = add i64 %44, 1
  store i64 %inc.i67, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i69 = and i32 %46, %47
  %arrayidx.i70 = getelementptr i32, ptr %42, i32 %idxprom.i69
  %48 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 -1073528064, ptr %arrayidx.i70, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i72 = and i64 %51, %50
  store i64 %and3.i72, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i73 = add i32 %53, -1
  store i32 %dec.i73, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i73)
  %cmp.i76 = icmp slt i32 %dec.i73, 1
  br i1 %cmp.i76, label %if.then.i77, label %amdgpu_ring_write.exit74.amdgpu_ring_write.exit87_crit_edge

amdgpu_ring_write.exit74.amdgpu_ring_write.exit87_crit_edge: ; preds = %amdgpu_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit87

if.then.i77:                                      ; preds = %amdgpu_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit87

amdgpu_ring_write.exit87:                         ; preds = %if.then.i77, %amdgpu_ring_write.exit74.amdgpu_ring_write.exit87_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i80 = add i64 %57, 1
  store i64 %inc.i80, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i82 = and i32 %59, %60
  %arrayidx.i83 = getelementptr i32, ptr %55, i32 %idxprom.i82
  %61 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 683671552, ptr %arrayidx.i83, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i85 = and i64 %64, %63
  store i64 %and3.i85, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i86 = add i32 %66, -1
  store i32 %dec.i86, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i86)
  %cmp.i89 = icmp slt i32 %dec.i86, 1
  br i1 %cmp.i89, label %if.then.i90, label %amdgpu_ring_write.exit87.amdgpu_ring_write.exit100_crit_edge

amdgpu_ring_write.exit87.amdgpu_ring_write.exit100_crit_edge: ; preds = %amdgpu_ring_write.exit87
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit100

if.then.i90:                                      ; preds = %amdgpu_ring_write.exit87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit100

amdgpu_ring_write.exit100:                        ; preds = %if.then.i90, %amdgpu_ring_write.exit87.amdgpu_ring_write.exit100_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i93 = add i64 %70, 1
  store i64 %inc.i93, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i95 = and i32 %72, %73
  %arrayidx.i96 = getelementptr i32, ptr %68, i32 %idxprom.i95
  %74 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 -1, ptr %arrayidx.i96, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i98 = and i64 %77, %76
  store i64 %and3.i98, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i99 = add i32 %79, -1
  store i32 %dec.i99, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i99)
  %cmp.i102 = icmp slt i32 %dec.i99, 1
  br i1 %cmp.i102, label %if.then.i103, label %amdgpu_ring_write.exit100.amdgpu_ring_write.exit113_crit_edge

amdgpu_ring_write.exit100.amdgpu_ring_write.exit113_crit_edge: ; preds = %amdgpu_ring_write.exit100
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit113

if.then.i103:                                     ; preds = %amdgpu_ring_write.exit100
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit113

amdgpu_ring_write.exit113:                        ; preds = %if.then.i103, %amdgpu_ring_write.exit100.amdgpu_ring_write.exit113_crit_edge
  %80 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ring1.i, align 4
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %wptr.i, align 8
  %inc.i106 = add i64 %83, 1
  store i64 %inc.i106, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buf_mask.i, align 8
  %86 = trunc i64 %83 to i32
  %idxprom.i108 = and i32 %85, %86
  %arrayidx.i109 = getelementptr i32, ptr %81, i32 %idxprom.i108
  %87 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 0, ptr %arrayidx.i109, align 4
  %88 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ptr_mask.i, align 8
  %90 = load i64, ptr %wptr.i, align 8
  %and3.i111 = and i64 %90, %89
  store i64 %and3.i111, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count_dw.i, align 8
  %dec.i112 = add i32 %92, -1
  store i32 %dec.i112, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i112)
  %cmp.i115 = icmp slt i32 %dec.i112, 1
  br i1 %cmp.i115, label %if.then.i116, label %amdgpu_ring_write.exit113.amdgpu_ring_write.exit126_crit_edge

amdgpu_ring_write.exit113.amdgpu_ring_write.exit126_crit_edge: ; preds = %amdgpu_ring_write.exit113
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit126

if.then.i116:                                     ; preds = %amdgpu_ring_write.exit113
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit126

amdgpu_ring_write.exit126:                        ; preds = %if.then.i116, %amdgpu_ring_write.exit113.amdgpu_ring_write.exit126_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 4
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %wptr.i, align 8
  %inc.i119 = add i64 %96, 1
  store i64 %inc.i119, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf_mask.i, align 8
  %99 = trunc i64 %96 to i32
  %idxprom.i121 = and i32 %98, %99
  %arrayidx.i122 = getelementptr i32, ptr %94, i32 %idxprom.i121
  %100 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 10, ptr %arrayidx.i122, align 4
  %101 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %ptr_mask.i, align 8
  %103 = load i64, ptr %wptr.i, align 8
  %and3.i124 = and i64 %103, %102
  store i64 %and3.i124, ptr %wptr.i, align 8
  %104 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count_dw.i, align 8
  %dec.i125 = add i32 %105, -1
  store i32 %dec.i125, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i125)
  %cmp.i128 = icmp slt i32 %dec.i125, 1
  br i1 %cmp.i128, label %if.then.i129, label %amdgpu_ring_write.exit126.amdgpu_ring_write.exit139_crit_edge

amdgpu_ring_write.exit126.amdgpu_ring_write.exit139_crit_edge: ; preds = %amdgpu_ring_write.exit126
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit139

if.then.i129:                                     ; preds = %amdgpu_ring_write.exit126
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit139

amdgpu_ring_write.exit139:                        ; preds = %if.then.i129, %amdgpu_ring_write.exit126.amdgpu_ring_write.exit139_crit_edge
  %106 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ring1.i, align 4
  %108 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %wptr.i, align 8
  %inc.i132 = add i64 %109, 1
  store i64 %inc.i132, ptr %wptr.i, align 8
  %110 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buf_mask.i, align 8
  %112 = trunc i64 %109 to i32
  %idxprom.i134 = and i32 %111, %112
  %arrayidx.i135 = getelementptr i32, ptr %107, i32 %idxprom.i134
  %113 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 -1073461504, ptr %arrayidx.i135, align 4
  %114 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ptr_mask.i, align 8
  %116 = load i64, ptr %wptr.i, align 8
  %and3.i137 = and i64 %116, %115
  store i64 %and3.i137, ptr %wptr.i, align 8
  %117 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %count_dw.i, align 8
  %dec.i138 = add i32 %118, -1
  store i32 %dec.i138, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i138)
  %cmp.i141 = icmp slt i32 %dec.i138, 1
  br i1 %cmp.i141, label %if.then.i142, label %amdgpu_ring_write.exit139.amdgpu_ring_write.exit152_crit_edge

amdgpu_ring_write.exit139.amdgpu_ring_write.exit152_crit_edge: ; preds = %amdgpu_ring_write.exit139
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit152

if.then.i142:                                     ; preds = %amdgpu_ring_write.exit139
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit152

amdgpu_ring_write.exit152:                        ; preds = %if.then.i142, %amdgpu_ring_write.exit139.amdgpu_ring_write.exit152_crit_edge
  %119 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ring1.i, align 4
  %121 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %wptr.i, align 8
  %inc.i145 = add i64 %122, 1
  store i64 %inc.i145, ptr %wptr.i, align 8
  %123 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %buf_mask.i, align 8
  %125 = trunc i64 %122 to i32
  %idxprom.i147 = and i32 %124, %125
  %arrayidx.i148 = getelementptr i32, ptr %120, i32 %idxprom.i147
  %126 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 1300, ptr %arrayidx.i148, align 4
  %127 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %ptr_mask.i, align 8
  %129 = load i64, ptr %wptr.i, align 8
  %and3.i150 = and i64 %129, %128
  store i64 %and3.i150, ptr %wptr.i, align 8
  %130 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %count_dw.i, align 8
  %dec.i151 = add i32 %131, -1
  store i32 %dec.i151, ptr %count_dw.i, align 8
  %132 = trunc i64 %addr to i32
  %conv = and i32 %132, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i151)
  %cmp.i154 = icmp slt i32 %dec.i151, 1
  br i1 %cmp.i154, label %if.then.i155, label %amdgpu_ring_write.exit152.amdgpu_ring_write.exit165_crit_edge

amdgpu_ring_write.exit152.amdgpu_ring_write.exit165_crit_edge: ; preds = %amdgpu_ring_write.exit152
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit165

if.then.i155:                                     ; preds = %amdgpu_ring_write.exit152
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit165

amdgpu_ring_write.exit165:                        ; preds = %if.then.i155, %amdgpu_ring_write.exit152.amdgpu_ring_write.exit165_crit_edge
  %133 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ring1.i, align 4
  %135 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %wptr.i, align 8
  %inc.i158 = add i64 %136, 1
  store i64 %inc.i158, ptr %wptr.i, align 8
  %137 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %buf_mask.i, align 8
  %139 = trunc i64 %136 to i32
  %idxprom.i160 = and i32 %138, %139
  %arrayidx.i161 = getelementptr i32, ptr %134, i32 %idxprom.i160
  %140 = ptrtoint ptr %arrayidx.i161 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 %conv, ptr %arrayidx.i161, align 4
  %141 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %ptr_mask.i, align 8
  %143 = load i64, ptr %wptr.i, align 8
  %and3.i163 = and i64 %143, %142
  store i64 %and3.i163, ptr %wptr.i, align 8
  %144 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %count_dw.i, align 8
  %dec.i164 = add i32 %145, -1
  store i32 %dec.i164, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv6 = trunc i64 %shr to i32
  %and7 = and i32 %conv6, 65535
  %cond = select i1 %tobool.not, i32 536870912, i32 1073741824
  %and1 = shl i32 %flags, 24
  %shl13 = and i32 %and1, 33554432
  %or = or i32 %shl13, %and7
  %or14 = or i32 %or, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i164)
  %cmp.i167 = icmp slt i32 %dec.i164, 1
  br i1 %cmp.i167, label %if.then.i168, label %amdgpu_ring_write.exit165.amdgpu_ring_write.exit178_crit_edge

amdgpu_ring_write.exit165.amdgpu_ring_write.exit178_crit_edge: ; preds = %amdgpu_ring_write.exit165
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit178

if.then.i168:                                     ; preds = %amdgpu_ring_write.exit165
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit178

amdgpu_ring_write.exit178:                        ; preds = %if.then.i168, %amdgpu_ring_write.exit165.amdgpu_ring_write.exit178_crit_edge
  %146 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ring1.i, align 4
  %148 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %wptr.i, align 8
  %inc.i171 = add i64 %149, 1
  store i64 %inc.i171, ptr %wptr.i, align 8
  %150 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %buf_mask.i, align 8
  %152 = trunc i64 %149 to i32
  %idxprom.i173 = and i32 %151, %152
  %arrayidx.i174 = getelementptr i32, ptr %147, i32 %idxprom.i173
  %153 = ptrtoint ptr %arrayidx.i174 to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 %or14, ptr %arrayidx.i174, align 4
  %154 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %ptr_mask.i, align 8
  %156 = load i64, ptr %wptr.i, align 8
  %and3.i176 = and i64 %156, %155
  store i64 %and3.i176, ptr %wptr.i, align 8
  %157 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %count_dw.i, align 8
  %dec.i177 = add i32 %158, -1
  store i32 %dec.i177, ptr %count_dw.i, align 8
  %conv16 = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i177)
  %cmp.i180 = icmp slt i32 %dec.i177, 1
  br i1 %cmp.i180, label %if.then.i181, label %amdgpu_ring_write.exit178.amdgpu_ring_write.exit191_crit_edge

amdgpu_ring_write.exit178.amdgpu_ring_write.exit191_crit_edge: ; preds = %amdgpu_ring_write.exit178
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit191

if.then.i181:                                     ; preds = %amdgpu_ring_write.exit178
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit191

amdgpu_ring_write.exit191:                        ; preds = %if.then.i181, %amdgpu_ring_write.exit178.amdgpu_ring_write.exit191_crit_edge
  %159 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ring1.i, align 4
  %161 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %wptr.i, align 8
  %inc.i184 = add i64 %162, 1
  store i64 %inc.i184, ptr %wptr.i, align 8
  %163 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %buf_mask.i, align 8
  %165 = trunc i64 %162 to i32
  %idxprom.i186 = and i32 %164, %165
  %arrayidx.i187 = getelementptr i32, ptr %160, i32 %idxprom.i186
  %166 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile i32 %conv16, ptr %arrayidx.i187, align 4
  %167 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %ptr_mask.i, align 8
  %169 = load i64, ptr %wptr.i, align 8
  %and3.i189 = and i64 %169, %168
  store i64 %and3.i189, ptr %wptr.i, align 8
  %170 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %count_dw.i, align 8
  %dec.i190 = add i32 %171, -1
  store i32 %dec.i190, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i190)
  %cmp.i193 = icmp slt i32 %dec.i190, 1
  br i1 %cmp.i193, label %if.then.i194, label %amdgpu_ring_write.exit191.amdgpu_ring_write.exit204_crit_edge

amdgpu_ring_write.exit191.amdgpu_ring_write.exit204_crit_edge: ; preds = %amdgpu_ring_write.exit191
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit204

if.then.i194:                                     ; preds = %amdgpu_ring_write.exit191
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit204

amdgpu_ring_write.exit204:                        ; preds = %if.then.i194, %amdgpu_ring_write.exit191.amdgpu_ring_write.exit204_crit_edge
  %shr17 = lshr i64 %seq, 32
  %conv19 = trunc i64 %shr17 to i32
  %172 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ring1.i, align 4
  %174 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %wptr.i, align 8
  %inc.i197 = add i64 %175, 1
  store i64 %inc.i197, ptr %wptr.i, align 8
  %176 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %buf_mask.i, align 8
  %178 = trunc i64 %175 to i32
  %idxprom.i199 = and i32 %177, %178
  %arrayidx.i200 = getelementptr i32, ptr %173, i32 %idxprom.i199
  %179 = ptrtoint ptr %arrayidx.i200 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile i32 %conv19, ptr %arrayidx.i200, align 4
  %180 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %ptr_mask.i, align 8
  %182 = load i64, ptr %wptr.i, align 8
  %and3.i202 = and i64 %182, %181
  store i64 %and3.i202, ptr %wptr.i, align 8
  %183 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %count_dw.i, align 8
  %dec.i203 = add i32 %184, -1
  store i32 %dec.i203, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_ring_emit_pipeline_sync(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %fence_drv = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2
  %sync_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %sync_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_seq, align 4
  %6 = ptrtoint ptr %fence_drv to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fence_drv, align 8
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
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
  store volatile i32 -1073398784, ptr %arrayidx.i, align 4
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
  %or = select i1 %cmp, i32 275, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i22 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i22, label %if.then.i23, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit33_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit33_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit33

if.then.i23:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit33

amdgpu_ring_write.exit33:                         ; preds = %if.then.i23, %amdgpu_ring_write.exit.amdgpu_ring_write.exit33_crit_edge
  %23 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring1.i, align 4
  %25 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wptr.i, align 8
  %inc.i26 = add i64 %26, 1
  store i64 %inc.i26, ptr %wptr.i, align 8
  %27 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_mask.i, align 8
  %29 = trunc i64 %26 to i32
  %idxprom.i28 = and i32 %28, %29
  %arrayidx.i29 = getelementptr i32, ptr %24, i32 %idxprom.i28
  %30 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %or, ptr %arrayidx.i29, align 4
  %31 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ptr_mask.i, align 8
  %33 = load i64, ptr %wptr.i, align 8
  %and3.i31 = and i64 %33, %32
  store i64 %and3.i31, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count_dw.i, align 8
  %dec.i32 = add i32 %35, -1
  store i32 %dec.i32, ptr %count_dw.i, align 8
  %36 = trunc i64 %7 to i32
  %conv2 = and i32 %36, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i32)
  %cmp.i35 = icmp slt i32 %dec.i32, 1
  br i1 %cmp.i35, label %if.then.i36, label %amdgpu_ring_write.exit33.amdgpu_ring_write.exit46_crit_edge

amdgpu_ring_write.exit33.amdgpu_ring_write.exit46_crit_edge: ; preds = %amdgpu_ring_write.exit33
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit46

if.then.i36:                                      ; preds = %amdgpu_ring_write.exit33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit46

amdgpu_ring_write.exit46:                         ; preds = %if.then.i36, %amdgpu_ring_write.exit33.amdgpu_ring_write.exit46_crit_edge
  %37 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring1.i, align 4
  %39 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %wptr.i, align 8
  %inc.i39 = add i64 %40, 1
  store i64 %inc.i39, ptr %wptr.i, align 8
  %41 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf_mask.i, align 8
  %43 = trunc i64 %40 to i32
  %idxprom.i41 = and i32 %42, %43
  %arrayidx.i42 = getelementptr i32, ptr %38, i32 %idxprom.i41
  %44 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %conv2, ptr %arrayidx.i42, align 4
  %45 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ptr_mask.i, align 8
  %47 = load i64, ptr %wptr.i, align 8
  %and3.i44 = and i64 %47, %46
  store i64 %and3.i44, ptr %wptr.i, align 8
  %48 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count_dw.i, align 8
  %dec.i45 = add i32 %49, -1
  store i32 %dec.i45, ptr %count_dw.i, align 8
  %shr = lshr i64 %7, 32
  %conv4 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i45)
  %cmp.i48 = icmp slt i32 %dec.i45, 1
  br i1 %cmp.i48, label %if.then.i49, label %amdgpu_ring_write.exit46.amdgpu_ring_write.exit59_crit_edge

amdgpu_ring_write.exit46.amdgpu_ring_write.exit59_crit_edge: ; preds = %amdgpu_ring_write.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit59

if.then.i49:                                      ; preds = %amdgpu_ring_write.exit46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit59

amdgpu_ring_write.exit59:                         ; preds = %if.then.i49, %amdgpu_ring_write.exit46.amdgpu_ring_write.exit59_crit_edge
  %50 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ring1.i, align 4
  %52 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %wptr.i, align 8
  %inc.i52 = add i64 %53, 1
  store i64 %inc.i52, ptr %wptr.i, align 8
  %54 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buf_mask.i, align 8
  %56 = trunc i64 %53 to i32
  %idxprom.i54 = and i32 %55, %56
  %arrayidx.i55 = getelementptr i32, ptr %51, i32 %idxprom.i54
  %57 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 %conv4, ptr %arrayidx.i55, align 4
  %58 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %ptr_mask.i, align 8
  %60 = load i64, ptr %wptr.i, align 8
  %and3.i57 = and i64 %60, %59
  store i64 %and3.i57, ptr %wptr.i, align 8
  %61 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %count_dw.i, align 8
  %dec.i58 = add i32 %62, -1
  store i32 %dec.i58, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i58)
  %cmp.i61 = icmp slt i32 %dec.i58, 1
  br i1 %cmp.i61, label %if.then.i62, label %amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge

amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge: ; preds = %amdgpu_ring_write.exit59
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit72

if.then.i62:                                      ; preds = %amdgpu_ring_write.exit59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit72

amdgpu_ring_write.exit72:                         ; preds = %if.then.i62, %amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge
  %63 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ring1.i, align 4
  %65 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %wptr.i, align 8
  %inc.i65 = add i64 %66, 1
  store i64 %inc.i65, ptr %wptr.i, align 8
  %67 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buf_mask.i, align 8
  %69 = trunc i64 %66 to i32
  %idxprom.i67 = and i32 %68, %69
  %arrayidx.i68 = getelementptr i32, ptr %64, i32 %idxprom.i67
  %70 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 %5, ptr %arrayidx.i68, align 4
  %71 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %ptr_mask.i, align 8
  %73 = load i64, ptr %wptr.i, align 8
  %and3.i70 = and i64 %73, %72
  store i64 %and3.i70, ptr %wptr.i, align 8
  %74 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %count_dw.i, align 8
  %dec.i71 = add i32 %75, -1
  store i32 %dec.i71, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i71)
  %cmp.i74 = icmp slt i32 %dec.i71, 1
  br i1 %cmp.i74, label %if.then.i75, label %amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge

amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge: ; preds = %amdgpu_ring_write.exit72
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit85

if.then.i75:                                      ; preds = %amdgpu_ring_write.exit72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit85

amdgpu_ring_write.exit85:                         ; preds = %if.then.i75, %amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge
  %76 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ring1.i, align 4
  %78 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %wptr.i, align 8
  %inc.i78 = add i64 %79, 1
  store i64 %inc.i78, ptr %wptr.i, align 8
  %80 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %buf_mask.i, align 8
  %82 = trunc i64 %79 to i32
  %idxprom.i80 = and i32 %81, %82
  %arrayidx.i81 = getelementptr i32, ptr %77, i32 %idxprom.i80
  %83 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 -1, ptr %arrayidx.i81, align 4
  %84 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %ptr_mask.i, align 8
  %86 = load i64, ptr %wptr.i, align 8
  %and3.i83 = and i64 %86, %85
  store i64 %and3.i83, ptr %wptr.i, align 8
  %87 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %count_dw.i, align 8
  %dec.i84 = add i32 %88, -1
  store i32 %dec.i84, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i84)
  %cmp.i87 = icmp slt i32 %dec.i84, 1
  br i1 %cmp.i87, label %if.then.i88, label %amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge

amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge: ; preds = %amdgpu_ring_write.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit98

if.then.i88:                                      ; preds = %amdgpu_ring_write.exit85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit98

amdgpu_ring_write.exit98:                         ; preds = %if.then.i88, %amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge
  %89 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ring1.i, align 4
  %91 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %wptr.i, align 8
  %inc.i91 = add i64 %92, 1
  store i64 %inc.i91, ptr %wptr.i, align 8
  %93 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %buf_mask.i, align 8
  %95 = trunc i64 %92 to i32
  %idxprom.i93 = and i32 %94, %95
  %arrayidx.i94 = getelementptr i32, ptr %90, i32 %idxprom.i93
  %96 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 4, ptr %arrayidx.i94, align 4
  %97 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %ptr_mask.i, align 8
  %99 = load i64, ptr %wptr.i, align 8
  %and3.i96 = and i64 %99, %98
  store i64 %and3.i96, ptr %wptr.i, align 8
  %100 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %count_dw.i, align 8
  %dec.i97 = add i32 %101, -1
  store i32 %dec.i97, ptr %count_dw.i, align 8
  br i1 %cmp, label %if.then, label %amdgpu_ring_write.exit98.if.end_crit_edge

amdgpu_ring_write.exit98.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %amdgpu_ring_write.exit98
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i97)
  %cmp.i100 = icmp slt i32 %dec.i97, 1
  br i1 %cmp.i100, label %if.then.i101, label %if.then.amdgpu_ring_write.exit111_crit_edge

if.then.amdgpu_ring_write.exit111_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit111

if.then.i101:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit111

amdgpu_ring_write.exit111:                        ; preds = %if.then.i101, %if.then.amdgpu_ring_write.exit111_crit_edge
  %102 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ring1.i, align 4
  %104 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %wptr.i, align 8
  %inc.i104 = add i64 %105, 1
  store i64 %inc.i104, ptr %wptr.i, align 8
  %106 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %buf_mask.i, align 8
  %108 = trunc i64 %105 to i32
  %idxprom.i106 = and i32 %107, %108
  %arrayidx.i107 = getelementptr i32, ptr %103, i32 %idxprom.i106
  %109 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 -1073706240, ptr %arrayidx.i107, align 4
  %110 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %ptr_mask.i, align 8
  %112 = load i64, ptr %wptr.i, align 8
  %and3.i109 = and i64 %112, %111
  store i64 %and3.i109, ptr %wptr.i, align 8
  %113 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %count_dw.i, align 8
  %dec.i110 = add i32 %114, -1
  store i32 %dec.i110, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i110)
  %cmp.i113 = icmp slt i32 %dec.i110, 1
  br i1 %cmp.i113, label %if.then.i114, label %amdgpu_ring_write.exit111.amdgpu_ring_write.exit124_crit_edge

amdgpu_ring_write.exit111.amdgpu_ring_write.exit124_crit_edge: ; preds = %amdgpu_ring_write.exit111
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit124

if.then.i114:                                     ; preds = %amdgpu_ring_write.exit111
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit124

amdgpu_ring_write.exit124:                        ; preds = %if.then.i114, %amdgpu_ring_write.exit111.amdgpu_ring_write.exit124_crit_edge
  %115 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ring1.i, align 4
  %117 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %wptr.i, align 8
  %inc.i117 = add i64 %118, 1
  store i64 %inc.i117, ptr %wptr.i, align 8
  %119 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %buf_mask.i, align 8
  %121 = trunc i64 %118 to i32
  %idxprom.i119 = and i32 %120, %121
  %arrayidx.i120 = getelementptr i32, ptr %116, i32 %idxprom.i119
  %122 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 0, ptr %arrayidx.i120, align 4
  %123 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %ptr_mask.i, align 8
  %125 = load i64, ptr %wptr.i, align 8
  %and3.i122 = and i64 %125, %124
  store i64 %and3.i122, ptr %wptr.i, align 8
  %126 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %count_dw.i, align 8
  %dec.i123 = add i32 %127, -1
  store i32 %dec.i123, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i123)
  %cmp.i126 = icmp slt i32 %dec.i123, 1
  br i1 %cmp.i126, label %if.then.i127, label %amdgpu_ring_write.exit124.amdgpu_ring_write.exit137_crit_edge

amdgpu_ring_write.exit124.amdgpu_ring_write.exit137_crit_edge: ; preds = %amdgpu_ring_write.exit124
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit137

if.then.i127:                                     ; preds = %amdgpu_ring_write.exit124
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit137

amdgpu_ring_write.exit137:                        ; preds = %if.then.i127, %amdgpu_ring_write.exit124.amdgpu_ring_write.exit137_crit_edge
  %128 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ring1.i, align 4
  %130 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %wptr.i, align 8
  %inc.i130 = add i64 %131, 1
  store i64 %inc.i130, ptr %wptr.i, align 8
  %132 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %buf_mask.i, align 8
  %134 = trunc i64 %131 to i32
  %idxprom.i132 = and i32 %133, %134
  %arrayidx.i133 = getelementptr i32, ptr %129, i32 %idxprom.i132
  %135 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 -1073706240, ptr %arrayidx.i133, align 4
  %136 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %ptr_mask.i, align 8
  %138 = load i64, ptr %wptr.i, align 8
  %and3.i135 = and i64 %138, %137
  store i64 %and3.i135, ptr %wptr.i, align 8
  %139 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %count_dw.i, align 8
  %dec.i136 = add i32 %140, -1
  store i32 %dec.i136, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i136)
  %cmp.i139 = icmp slt i32 %dec.i136, 1
  br i1 %cmp.i139, label %if.then.i140, label %amdgpu_ring_write.exit137.amdgpu_ring_write.exit150_crit_edge

amdgpu_ring_write.exit137.amdgpu_ring_write.exit150_crit_edge: ; preds = %amdgpu_ring_write.exit137
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit150

if.then.i140:                                     ; preds = %amdgpu_ring_write.exit137
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit150

amdgpu_ring_write.exit150:                        ; preds = %if.then.i140, %amdgpu_ring_write.exit137.amdgpu_ring_write.exit150_crit_edge
  %141 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ring1.i, align 4
  %143 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %wptr.i, align 8
  %inc.i143 = add i64 %144, 1
  store i64 %inc.i143, ptr %wptr.i, align 8
  %145 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %buf_mask.i, align 8
  %147 = trunc i64 %144 to i32
  %idxprom.i145 = and i32 %146, %147
  %arrayidx.i146 = getelementptr i32, ptr %142, i32 %idxprom.i145
  %148 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile i32 0, ptr %arrayidx.i146, align 4
  %149 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %ptr_mask.i, align 8
  %151 = load i64, ptr %wptr.i, align 8
  %and3.i148 = and i64 %151, %150
  store i64 %and3.i148, ptr %wptr.i, align 8
  %152 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %count_dw.i, align 8
  %dec.i149 = add i32 %153, -1
  store i32 %dec.i149, ptr %count_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %amdgpu_ring_write.exit150, %amdgpu_ring_write.exit98.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring, align 8
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 62, i32 38
  %6 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmc_funcs, align 4
  %emit_flush_gpu_tlb = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %emit_flush_gpu_tlb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emit_flush_gpu_tlb, align 4
  %call = tail call i64 %9(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #9
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
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
  store volatile i32 -1073398784, ptr %arrayidx.i, align 4
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
  %cmp.i17 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i17, label %if.then.i18, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit28_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit28_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit28

if.then.i18:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit28

amdgpu_ring_write.exit28:                         ; preds = %if.then.i18, %amdgpu_ring_write.exit.amdgpu_ring_write.exit28_crit_edge
  %25 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring1.i, align 4
  %27 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wptr.i, align 8
  %inc.i21 = add i64 %28, 1
  store i64 %inc.i21, ptr %wptr.i, align 8
  %29 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_mask.i, align 8
  %31 = trunc i64 %28 to i32
  %idxprom.i23 = and i32 %30, %31
  %arrayidx.i24 = getelementptr i32, ptr %26, i32 %idxprom.i23
  %32 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %arrayidx.i24, align 4
  %33 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ptr_mask.i, align 8
  %35 = load i64, ptr %wptr.i, align 8
  %and3.i26 = and i64 %35, %34
  store i64 %and3.i26, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count_dw.i, align 8
  %dec.i27 = add i32 %37, -1
  store i32 %dec.i27, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i27)
  %cmp.i30 = icmp slt i32 %dec.i27, 1
  br i1 %cmp.i30, label %if.then.i31, label %amdgpu_ring_write.exit28.amdgpu_ring_write.exit41_crit_edge

amdgpu_ring_write.exit28.amdgpu_ring_write.exit41_crit_edge: ; preds = %amdgpu_ring_write.exit28
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit41

if.then.i31:                                      ; preds = %amdgpu_ring_write.exit28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit41

amdgpu_ring_write.exit41:                         ; preds = %if.then.i31, %amdgpu_ring_write.exit28.amdgpu_ring_write.exit41_crit_edge
  %38 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring1.i, align 4
  %40 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %wptr.i, align 8
  %inc.i34 = add i64 %41, 1
  store i64 %inc.i34, ptr %wptr.i, align 8
  %42 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_mask.i, align 8
  %44 = trunc i64 %41 to i32
  %idxprom.i36 = and i32 %43, %44
  %arrayidx.i37 = getelementptr i32, ptr %39, i32 %idxprom.i36
  %45 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 1310, ptr %arrayidx.i37, align 4
  %46 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ptr_mask.i, align 8
  %48 = load i64, ptr %wptr.i, align 8
  %and3.i39 = and i64 %48, %47
  store i64 %and3.i39, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count_dw.i, align 8
  %dec.i40 = add i32 %50, -1
  store i32 %dec.i40, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i40)
  %cmp.i43 = icmp slt i32 %dec.i40, 1
  br i1 %cmp.i43, label %if.then.i44, label %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge

amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge: ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit54

if.then.i44:                                      ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit54

amdgpu_ring_write.exit54:                         ; preds = %if.then.i44, %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge
  %51 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring1.i, align 4
  %53 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %wptr.i, align 8
  %inc.i47 = add i64 %54, 1
  store i64 %inc.i47, ptr %wptr.i, align 8
  %55 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_mask.i, align 8
  %57 = trunc i64 %54 to i32
  %idxprom.i49 = and i32 %56, %57
  %arrayidx.i50 = getelementptr i32, ptr %52, i32 %idxprom.i49
  %58 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %arrayidx.i50, align 4
  %59 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ptr_mask.i, align 8
  %61 = load i64, ptr %wptr.i, align 8
  %and3.i52 = and i64 %61, %60
  store i64 %and3.i52, ptr %wptr.i, align 8
  %62 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count_dw.i, align 8
  %dec.i53 = add i32 %63, -1
  store i32 %dec.i53, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i53)
  %cmp.i56 = icmp slt i32 %dec.i53, 1
  br i1 %cmp.i56, label %if.then.i57, label %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge

amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge: ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit67

amdgpu_ring_write.exit67:                         ; preds = %if.then.i57, %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge
  %64 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ring1.i, align 4
  %66 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %wptr.i, align 8
  %inc.i60 = add i64 %67, 1
  store i64 %inc.i60, ptr %wptr.i, align 8
  %68 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf_mask.i, align 8
  %70 = trunc i64 %67 to i32
  %idxprom.i62 = and i32 %69, %70
  %arrayidx.i63 = getelementptr i32, ptr %65, i32 %idxprom.i62
  %71 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 0, ptr %arrayidx.i63, align 4
  %72 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ptr_mask.i, align 8
  %74 = load i64, ptr %wptr.i, align 8
  %and3.i65 = and i64 %74, %73
  store i64 %and3.i65, ptr %wptr.i, align 8
  %75 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count_dw.i, align 8
  %dec.i66 = add i32 %76, -1
  store i32 %dec.i66, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i66)
  %cmp.i69 = icmp slt i32 %dec.i66, 1
  br i1 %cmp.i69, label %if.then.i70, label %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge

amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge: ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit80

amdgpu_ring_write.exit80:                         ; preds = %if.then.i70, %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge
  %77 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ring1.i, align 4
  %79 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %wptr.i, align 8
  %inc.i73 = add i64 %80, 1
  store i64 %inc.i73, ptr %wptr.i, align 8
  %81 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buf_mask.i, align 8
  %83 = trunc i64 %80 to i32
  %idxprom.i75 = and i32 %82, %83
  %arrayidx.i76 = getelementptr i32, ptr %78, i32 %idxprom.i75
  %84 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 0, ptr %arrayidx.i76, align 4
  %85 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %ptr_mask.i, align 8
  %87 = load i64, ptr %wptr.i, align 8
  %and3.i78 = and i64 %87, %86
  store i64 %and3.i78, ptr %wptr.i, align 8
  %88 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %count_dw.i, align 8
  %dec.i79 = add i32 %89, -1
  store i32 %dec.i79, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i79)
  %cmp.i82 = icmp slt i32 %dec.i79, 1
  br i1 %cmp.i82, label %if.then.i83, label %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge

amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge: ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit93

if.then.i83:                                      ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit93

amdgpu_ring_write.exit93:                         ; preds = %if.then.i83, %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge
  %90 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ring1.i, align 4
  %92 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %wptr.i, align 8
  %inc.i86 = add i64 %93, 1
  store i64 %inc.i86, ptr %wptr.i, align 8
  %94 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %buf_mask.i, align 8
  %96 = trunc i64 %93 to i32
  %idxprom.i88 = and i32 %95, %96
  %arrayidx.i89 = getelementptr i32, ptr %91, i32 %idxprom.i88
  %97 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 32, ptr %arrayidx.i89, align 4
  %98 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %ptr_mask.i, align 8
  %100 = load i64, ptr %wptr.i, align 8
  %and3.i91 = and i64 %100, %99
  store i64 %and3.i91, ptr %wptr.i, align 8
  %101 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %count_dw.i, align 8
  %dec.i92 = add i32 %102, -1
  store i32 %dec.i92, ptr %count_dw.i, align 8
  br i1 %cmp, label %if.then, label %amdgpu_ring_write.exit93.if.end_crit_edge

amdgpu_ring_write.exit93.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i92)
  %cmp.i95 = icmp slt i32 %dec.i92, 1
  br i1 %cmp.i95, label %if.then.i96, label %if.then.amdgpu_ring_write.exit106_crit_edge

if.then.amdgpu_ring_write.exit106_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit106

if.then.i96:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit106

amdgpu_ring_write.exit106:                        ; preds = %if.then.i96, %if.then.amdgpu_ring_write.exit106_crit_edge
  %103 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ring1.i, align 4
  %105 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %wptr.i, align 8
  %inc.i99 = add i64 %106, 1
  store i64 %inc.i99, ptr %wptr.i, align 8
  %107 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %buf_mask.i, align 8
  %109 = trunc i64 %106 to i32
  %idxprom.i101 = and i32 %108, %109
  %arrayidx.i102 = getelementptr i32, ptr %104, i32 %idxprom.i101
  %110 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile i32 -1073724928, ptr %arrayidx.i102, align 4
  %111 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %ptr_mask.i, align 8
  %113 = load i64, ptr %wptr.i, align 8
  %and3.i104 = and i64 %113, %112
  store i64 %and3.i104, ptr %wptr.i, align 8
  %114 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %count_dw.i, align 8
  %dec.i105 = add i32 %115, -1
  store i32 %dec.i105, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i105)
  %cmp.i108 = icmp slt i32 %dec.i105, 1
  br i1 %cmp.i108, label %if.then.i109, label %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge

amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge: ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit119

if.then.i109:                                     ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit119

amdgpu_ring_write.exit119:                        ; preds = %if.then.i109, %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge
  %116 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ring1.i, align 4
  %118 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %wptr.i, align 8
  %inc.i112 = add i64 %119, 1
  store i64 %inc.i112, ptr %wptr.i, align 8
  %120 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %buf_mask.i, align 8
  %122 = trunc i64 %119 to i32
  %idxprom.i114 = and i32 %121, %122
  %arrayidx.i115 = getelementptr i32, ptr %117, i32 %idxprom.i114
  %123 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 0, ptr %arrayidx.i115, align 4
  %124 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %ptr_mask.i, align 8
  %126 = load i64, ptr %wptr.i, align 8
  %and3.i117 = and i64 %126, %125
  store i64 %and3.i117, ptr %wptr.i, align 8
  %127 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %count_dw.i, align 8
  %dec.i118 = add i32 %128, -1
  store i32 %dec.i118, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i118)
  %cmp.i121 = icmp slt i32 %dec.i118, 1
  br i1 %cmp.i121, label %if.then.i122, label %amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge

amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge: ; preds = %amdgpu_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit132

if.then.i122:                                     ; preds = %amdgpu_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit132

amdgpu_ring_write.exit132:                        ; preds = %if.then.i122, %amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge
  %129 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ring1.i, align 4
  %131 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %wptr.i, align 8
  %inc.i125 = add i64 %132, 1
  store i64 %inc.i125, ptr %wptr.i, align 8
  %133 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %buf_mask.i, align 8
  %135 = trunc i64 %132 to i32
  %idxprom.i127 = and i32 %134, %135
  %arrayidx.i128 = getelementptr i32, ptr %130, i32 %idxprom.i127
  %136 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile i32 -1073706240, ptr %arrayidx.i128, align 4
  %137 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %ptr_mask.i, align 8
  %139 = load i64, ptr %wptr.i, align 8
  %and3.i130 = and i64 %139, %138
  store i64 %and3.i130, ptr %wptr.i, align 8
  %140 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %count_dw.i, align 8
  %dec.i131 = add i32 %141, -1
  store i32 %dec.i131, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i131)
  %cmp.i134 = icmp slt i32 %dec.i131, 1
  br i1 %cmp.i134, label %if.then.i135, label %amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge

amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge: ; preds = %amdgpu_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit145

if.then.i135:                                     ; preds = %amdgpu_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit145

amdgpu_ring_write.exit145:                        ; preds = %if.then.i135, %amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge
  %142 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ring1.i, align 4
  %144 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %wptr.i, align 8
  %inc.i138 = add i64 %145, 1
  store i64 %inc.i138, ptr %wptr.i, align 8
  %146 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %buf_mask.i, align 8
  %148 = trunc i64 %145 to i32
  %idxprom.i140 = and i32 %147, %148
  %arrayidx.i141 = getelementptr i32, ptr %143, i32 %idxprom.i140
  %149 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile i32 0, ptr %arrayidx.i141, align 4
  %150 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %ptr_mask.i, align 8
  %152 = load i64, ptr %wptr.i, align 8
  %and3.i143 = and i64 %152, %151
  store i64 %and3.i143, ptr %wptr.i, align 8
  %153 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %count_dw.i, align 8
  %dec.i144 = add i32 %154, -1
  store i32 %dec.i144, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i144)
  %cmp.i147 = icmp slt i32 %dec.i144, 1
  br i1 %cmp.i147, label %if.then.i148, label %amdgpu_ring_write.exit145.amdgpu_ring_write.exit158_crit_edge

amdgpu_ring_write.exit145.amdgpu_ring_write.exit158_crit_edge: ; preds = %amdgpu_ring_write.exit145
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit158

if.then.i148:                                     ; preds = %amdgpu_ring_write.exit145
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit158

amdgpu_ring_write.exit158:                        ; preds = %if.then.i148, %amdgpu_ring_write.exit145.amdgpu_ring_write.exit158_crit_edge
  %155 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ring1.i, align 4
  %157 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %wptr.i, align 8
  %inc.i151 = add i64 %158, 1
  store i64 %inc.i151, ptr %wptr.i, align 8
  %159 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %buf_mask.i, align 8
  %161 = trunc i64 %158 to i32
  %idxprom.i153 = and i32 %160, %161
  %arrayidx.i154 = getelementptr i32, ptr %156, i32 %idxprom.i153
  %162 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile i32 -1073706240, ptr %arrayidx.i154, align 4
  %163 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %ptr_mask.i, align 8
  %165 = load i64, ptr %wptr.i, align 8
  %and3.i156 = and i64 %165, %164
  store i64 %and3.i156, ptr %wptr.i, align 8
  %166 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %count_dw.i, align 8
  %dec.i157 = add i32 %167, -1
  store i32 %dec.i157, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i157)
  %cmp.i160 = icmp slt i32 %dec.i157, 1
  br i1 %cmp.i160, label %if.then.i161, label %amdgpu_ring_write.exit158.amdgpu_ring_write.exit171_crit_edge

amdgpu_ring_write.exit158.amdgpu_ring_write.exit171_crit_edge: ; preds = %amdgpu_ring_write.exit158
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit171

if.then.i161:                                     ; preds = %amdgpu_ring_write.exit158
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit171

amdgpu_ring_write.exit171:                        ; preds = %if.then.i161, %amdgpu_ring_write.exit158.amdgpu_ring_write.exit171_crit_edge
  %168 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ring1.i, align 4
  %170 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %wptr.i, align 8
  %inc.i164 = add i64 %171, 1
  store i64 %inc.i164, ptr %wptr.i, align 8
  %172 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %buf_mask.i, align 8
  %174 = trunc i64 %171 to i32
  %idxprom.i166 = and i32 %173, %174
  %arrayidx.i167 = getelementptr i32, ptr %169, i32 %idxprom.i166
  %175 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile i32 0, ptr %arrayidx.i167, align 4
  %176 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %ptr_mask.i, align 8
  %178 = load i64, ptr %wptr.i, align 8
  %and3.i169 = and i64 %178, %177
  store i64 %and3.i169, ptr %wptr.i, align 8
  %179 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %count_dw.i, align 8
  %dec.i170 = add i32 %180, -1
  store i32 %dec.i170, ptr %count_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %amdgpu_ring_write.exit171, %amdgpu_ring_write.exit93.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_ring_test_ring(ptr noundef %ring) #0 align 64 {
entry:
  %scratch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch) #9
  %2 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %scratch, align 4, !annotation !152
  %call = call i32 @amdgpu_gfx_scratch_get(ptr noundef %1, ptr noundef nonnull %scratch) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scratch, align 4
  call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %4, i32 noundef -889266515, i32 noundef 0) #9
  %call2 = call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.error_free_scratch_crit_edge

if.end.error_free_scratch_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_scratch

if.end5:                                          ; preds = %if.end
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %5 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %if.then.i, label %if.end5.amdgpu_ring_write.exit_crit_edge

if.end5.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end5.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %7 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %9 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %10, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %11 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_mask.i, align 8
  %13 = trunc i64 %10 to i32
  %idxprom.i = and i32 %12, %13
  %arrayidx.i = getelementptr i32, ptr %8, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 -1073649664, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %15 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ptr_mask.i, align 8
  %17 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %17, %16
  store i64 %and3.i, ptr %wptr.i, align 8
  %18 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %20 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scratch, align 4
  %sub = add i32 %21, -8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i34 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i34, label %if.then.i35, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit45_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit45_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit45

if.then.i35:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit45

amdgpu_ring_write.exit45:                         ; preds = %if.then.i35, %amdgpu_ring_write.exit.amdgpu_ring_write.exit45_crit_edge
  %22 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring1.i, align 4
  %24 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %wptr.i, align 8
  %inc.i38 = add i64 %25, 1
  store i64 %inc.i38, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_mask.i, align 8
  %28 = trunc i64 %25 to i32
  %idxprom.i40 = and i32 %27, %28
  %arrayidx.i41 = getelementptr i32, ptr %23, i32 %idxprom.i40
  %29 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %sub, ptr %arrayidx.i41, align 4
  %30 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ptr_mask.i, align 8
  %32 = load i64, ptr %wptr.i, align 8
  %and3.i43 = and i64 %32, %31
  store i64 %and3.i43, ptr %wptr.i, align 8
  %33 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count_dw.i, align 8
  %dec.i44 = add i32 %34, -1
  store i32 %dec.i44, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i44)
  %cmp.i47 = icmp slt i32 %dec.i44, 1
  br i1 %cmp.i47, label %if.then.i48, label %amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge

amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge: ; preds = %amdgpu_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit58

if.then.i48:                                      ; preds = %amdgpu_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit58

amdgpu_ring_write.exit58:                         ; preds = %if.then.i48, %amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge
  %35 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ring1.i, align 4
  %37 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %wptr.i, align 8
  %inc.i51 = add i64 %38, 1
  store i64 %inc.i51, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buf_mask.i, align 8
  %41 = trunc i64 %38 to i32
  %idxprom.i53 = and i32 %40, %41
  %arrayidx.i54 = getelementptr i32, ptr %36, i32 %idxprom.i53
  %42 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 -559038737, ptr %arrayidx.i54, align 4
  %43 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %ptr_mask.i, align 8
  %45 = load i64, ptr %wptr.i, align 8
  %and3.i56 = and i64 %45, %44
  store i64 %and3.i56, ptr %wptr.i, align 8
  %46 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count_dw.i, align 8
  %dec.i57 = add i32 %47, -1
  store i32 %dec.i57, ptr %count_dw.i, align 8
  call void @amdgpu_ring_commit(ptr noundef %ring) #9
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %48 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp59.not = icmp eq i32 %49, 0
  br i1 %cmp59.not, label %amdgpu_ring_write.exit58.for.end_crit_edge, label %amdgpu_ring_write.exit58.for.body_crit_edge

amdgpu_ring_write.exit58.for.body_crit_edge:      ; preds = %amdgpu_ring_write.exit58
  br label %for.body

amdgpu_ring_write.exit58.for.end_crit_edge:       ; preds = %amdgpu_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %amdgpu_ring_write.exit58.for.body_crit_edge
  %i.060 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %amdgpu_ring_write.exit58.for.body_crit_edge ]
  %50 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scratch, align 4
  %call6 = call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %51, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %call6)
  %cmp7 = icmp eq i32 %call6, -559038737
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %if.end9

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end9:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748) #9
  %inc = add nuw i32 %i.060, 1
  %53 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %54
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %for.body.for.end_crit_edge, %amdgpu_ring_write.exit58.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %amdgpu_ring_write.exit58.for.end_crit_edge ], [ %i.060, %for.body.for.end_crit_edge ], [ %inc, %if.end9.for.end_crit_edge ]
  %55 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %56)
  %cmp11.not = icmp ult i32 %i.0.lcssa, %56
  %spec.select = select i1 %cmp11.not, i32 0, i32 -110
  br label %error_free_scratch

error_free_scratch:                               ; preds = %for.end, %if.end.error_free_scratch_crit_edge
  %r.0 = phi i32 [ %call2, %if.end.error_free_scratch_crit_edge ], [ %spec.select, %for.end ]
  %57 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scratch, align 4
  call void @amdgpu_gfx_scratch_free(ptr noundef %1, i32 noundef %58) #9
  br label %cleanup

cleanup:                                          ; preds = %error_free_scratch, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %error_free_scratch ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) #0 align 64 {
entry:
  %ib = alloca %struct.amdgpu_ib, align 8
  %f = alloca ptr, align 4
  %scratch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ib) #9
  %2 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %3 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #9
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %f, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch) #9
  %5 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %scratch, align 4, !annotation !152
  %call = call i32 @amdgpu_gfx_scratch_get(ptr noundef %1, ptr noundef nonnull %scratch) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scratch, align 4
  call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %7, i32 noundef -889266515, i32 noundef 0) #9
  %8 = call ptr @memset(ptr %ib, i32 0, i32 24)
  %call2 = call i32 @amdgpu_ib_get(ptr noundef %1, ptr noundef null, i32 noundef 256, i32 noundef 2, ptr noundef nonnull %ib) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err1_crit_edge

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1073649664, ptr %10, align 4
  %12 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scratch, align 4
  %sub = add i32 %13, -8192
  %14 = load ptr, ptr %3, align 8
  %arrayidx7 = getelementptr i32, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %arrayidx7, align 4
  %16 = load ptr, ptr %3, align 8
  %arrayidx9 = getelementptr i32, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -559038737, ptr %arrayidx9, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %2, align 4
  %call10 = call i32 @amdgpu_ib_schedule(ptr noundef %ring, i32 noundef 1, ptr noundef nonnull %ib, ptr noundef null, ptr noundef nonnull %f) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end5.err2_crit_edge

if.end5.err2_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err2

if.end13:                                         ; preds = %if.end5
  %19 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f, align 4
  %call14 = call i32 @dma_fence_wait_timeout(ptr noundef %20, i1 noundef zeroext false, i32 noundef %timeout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp eq i32 %call14, 0
  br i1 %cmp, label %if.end13.err2_crit_edge, label %if.else

if.end13.err2_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err2

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp16 = icmp slt i32 %call14, 0
  br i1 %cmp16, label %if.else.err2_crit_edge, label %if.end19

if.else.err2_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %err2

if.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scratch, align 4
  %call20 = call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %22, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %call20)
  %cmp21 = icmp eq i32 %call20, -559038737
  %. = select i1 %cmp21, i32 0, i32 -22
  br label %err2

err2:                                             ; preds = %if.end19, %if.else.err2_crit_edge, %if.end13.err2_crit_edge, %if.end5.err2_crit_edge
  %r.0 = phi i32 [ %call10, %if.end5.err2_crit_edge ], [ %call14, %if.else.err2_crit_edge ], [ -110, %if.end13.err2_crit_edge ], [ %., %if.end19 ]
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef nonnull %ib, ptr noundef null) #9
  %23 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %err2.err1_crit_edge, label %if.then.i

err2.err1_crit_edge:                              ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1

if.then.i:                                        ; preds = %err2
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %24, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !153
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !154
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.err1_crit_edge, label %if.then10.i.i.i.i.i, !prof !155

if.end5.i.i.i.i.i.err1_crit_edge:                 ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %err1

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !156
  call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %err1

err1:                                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.err1_crit_edge, %err2.err1_crit_edge, %if.end.err1_crit_edge
  %r.1 = phi i32 [ %call2, %if.end.err1_crit_edge ], [ %r.0, %err2.err1_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.err1_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i ], [ %r.0, %if.then.i.i ]
  %26 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scratch, align 4
  call void @amdgpu_gfx_scratch_free(ptr noundef %1, i32 noundef %27) #9
  br label %cleanup

cleanup:                                          ; preds = %err1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %err1 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_insert_nop(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_ring_emit_cntxcntl(ptr nocapture noundef %ring, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %count_dw.i.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.i = icmp slt i32 %1, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.amdgpu_ring_write.exit.i_crit_edge

if.then.amdgpu_ring_write.exit.i_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit.i

amdgpu_ring_write.exit.i:                         ; preds = %if.then.i.i, %if.then.amdgpu_ring_write.exit.i_crit_edge
  %ring1.i.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i.i, align 4
  %wptr.i.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i.i, align 8
  %inc.i.i = add i64 %5, 1
  store i64 %inc.i.i, ptr %wptr.i.i, align 8
  %buf_mask.i.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i.i = and i32 %7, %8
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 %idxprom.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 -1073723904, ptr %arrayidx.i.i, align 4
  %ptr_mask.i.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i.i, align 8
  %12 = load i64, ptr %wptr.i.i, align 8
  %and3.i.i = and i64 %12, %11
  store i64 %and3.i.i, ptr %wptr.i.i, align 8
  %13 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i.i, align 8
  %dec.i.i = add i32 %14, -1
  store i32 %dec.i.i, ptr %count_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %cmp.i3.i = icmp slt i32 %dec.i.i, 1
  br i1 %cmp.i3.i, label %if.then.i4.i, label %amdgpu_ring_write.exit.i.gfx_v6_0_ring_emit_vgt_flush.exit_crit_edge

amdgpu_ring_write.exit.i.gfx_v6_0_ring_emit_vgt_flush.exit_crit_edge: ; preds = %amdgpu_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_ring_emit_vgt_flush.exit

if.then.i4.i:                                     ; preds = %amdgpu_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %gfx_v6_0_ring_emit_vgt_flush.exit

gfx_v6_0_ring_emit_vgt_flush.exit:                ; preds = %if.then.i4.i, %amdgpu_ring_write.exit.i.gfx_v6_0_ring_emit_vgt_flush.exit_crit_edge
  %15 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i.i, align 4
  %17 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i.i, align 8
  %inc.i7.i = add i64 %18, 1
  store i64 %inc.i7.i, ptr %wptr.i.i, align 8
  %19 = ptrtoint ptr %buf_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i9.i = and i32 %20, %21
  %arrayidx.i10.i = getelementptr i32, ptr %16, i32 %idxprom.i9.i
  %22 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 36, ptr %arrayidx.i10.i, align 4
  %23 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i.i, align 8
  %25 = load i64, ptr %wptr.i.i, align 8
  %and3.i12.i = and i64 %25, %24
  store i64 %and3.i12.i, ptr %wptr.i.i, align 8
  %26 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i.i, align 8
  %dec.i13.i = add i32 %27, -1
  store i32 %dec.i13.i, ptr %count_dw.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %gfx_v6_0_ring_emit_vgt_flush.exit, %entry.if.end_crit_edge
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i = icmp slt i32 %29, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %33, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %34 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_mask.i, align 8
  %36 = trunc i64 %33 to i32
  %idxprom.i = and i32 %35, %36
  %arrayidx.i = getelementptr i32, ptr %31, i32 %idxprom.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 -1073666048, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %38 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ptr_mask.i, align 8
  %40 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %40, %39
  store i64 %and3.i, ptr %wptr.i, align 8
  %41 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %42, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i5 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i5, label %if.then.i6, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit16

if.then.i6:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit16

amdgpu_ring_write.exit16:                         ; preds = %if.then.i6, %amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge
  %43 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring1.i, align 4
  %45 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wptr.i, align 8
  %inc.i9 = add i64 %46, 1
  store i64 %inc.i9, ptr %wptr.i, align 8
  %47 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_mask.i, align 8
  %49 = trunc i64 %46 to i32
  %idxprom.i11 = and i32 %48, %49
  %arrayidx.i12 = getelementptr i32, ptr %44, i32 %idxprom.i11
  %50 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 -2147483648, ptr %arrayidx.i12, align 4
  %51 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ptr_mask.i, align 8
  %53 = load i64, ptr %wptr.i, align 8
  %and3.i14 = and i64 %53, %52
  store i64 %and3.i14, ptr %wptr.i, align 8
  %54 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count_dw.i, align 8
  %dec.i15 = add i32 %55, -1
  store i32 %dec.i15, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i15)
  %cmp.i18 = icmp slt i32 %dec.i15, 1
  br i1 %cmp.i18, label %if.then.i19, label %amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge

amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge: ; preds = %amdgpu_ring_write.exit16
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit29

if.then.i19:                                      ; preds = %amdgpu_ring_write.exit16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit29

amdgpu_ring_write.exit29:                         ; preds = %if.then.i19, %amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge
  %56 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring1.i, align 4
  %58 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %wptr.i, align 8
  %inc.i22 = add i64 %59, 1
  store i64 %inc.i22, ptr %wptr.i, align 8
  %60 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_mask.i, align 8
  %62 = trunc i64 %59 to i32
  %idxprom.i24 = and i32 %61, %62
  %arrayidx.i25 = getelementptr i32, ptr %57, i32 %idxprom.i24
  %63 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 0, ptr %arrayidx.i25, align 4
  %64 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ptr_mask.i, align 8
  %66 = load i64, ptr %wptr.i, align 8
  %and3.i27 = and i64 %66, %65
  store i64 %and3.i27, ptr %wptr.i, align 8
  %67 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count_dw.i, align 8
  %dec.i28 = add i32 %68, -1
  store i32 %dec.i28, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_ring_emit_wreg(ptr noundef %ring, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
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
  store volatile i32 -1073531136, ptr %arrayidx.i, align 4
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
  %shl = select i1 %cmp, i32 1073741824, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i7 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i7, label %if.then.i8, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit18

if.then.i8:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit18

amdgpu_ring_write.exit18:                         ; preds = %if.then.i8, %amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge
  %19 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring1.i, align 4
  %21 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %wptr.i, align 8
  %inc.i11 = add i64 %22, 1
  store i64 %inc.i11, ptr %wptr.i, align 8
  %23 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_mask.i, align 8
  %25 = trunc i64 %22 to i32
  %idxprom.i13 = and i32 %24, %25
  %arrayidx.i14 = getelementptr i32, ptr %20, i32 %idxprom.i13
  %26 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %shl, ptr %arrayidx.i14, align 4
  %27 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ptr_mask.i, align 8
  %29 = load i64, ptr %wptr.i, align 8
  %and3.i16 = and i64 %29, %28
  store i64 %and3.i16, ptr %wptr.i, align 8
  %30 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count_dw.i, align 8
  %dec.i17 = add i32 %31, -1
  store i32 %dec.i17, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i17)
  %cmp.i20 = icmp slt i32 %dec.i17, 1
  br i1 %cmp.i20, label %if.then.i21, label %amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge

amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge: ; preds = %amdgpu_ring_write.exit18
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit31

if.then.i21:                                      ; preds = %amdgpu_ring_write.exit18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit31

amdgpu_ring_write.exit31:                         ; preds = %if.then.i21, %amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 4
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wptr.i, align 8
  %inc.i24 = add i64 %35, 1
  store i64 %inc.i24, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_mask.i, align 8
  %38 = trunc i64 %35 to i32
  %idxprom.i26 = and i32 %37, %38
  %arrayidx.i27 = getelementptr i32, ptr %33, i32 %idxprom.i26
  %39 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %reg, ptr %arrayidx.i27, align 4
  %40 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ptr_mask.i, align 8
  %42 = load i64, ptr %wptr.i, align 8
  %and3.i29 = and i64 %42, %41
  store i64 %and3.i29, ptr %wptr.i, align 8
  %43 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count_dw.i, align 8
  %dec.i30 = add i32 %44, -1
  store i32 %dec.i30, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i30)
  %cmp.i33 = icmp slt i32 %dec.i30, 1
  br i1 %cmp.i33, label %if.then.i34, label %amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge

amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge: ; preds = %amdgpu_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit44

if.then.i34:                                      ; preds = %amdgpu_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit44

amdgpu_ring_write.exit44:                         ; preds = %if.then.i34, %amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 4
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %wptr.i, align 8
  %inc.i37 = add i64 %48, 1
  store i64 %inc.i37, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_mask.i, align 8
  %51 = trunc i64 %48 to i32
  %idxprom.i39 = and i32 %50, %51
  %arrayidx.i40 = getelementptr i32, ptr %46, i32 %idxprom.i39
  %52 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 0, ptr %arrayidx.i40, align 4
  %53 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ptr_mask.i, align 8
  %55 = load i64, ptr %wptr.i, align 8
  %and3.i42 = and i64 %55, %54
  store i64 %and3.i42, ptr %wptr.i, align 8
  %56 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count_dw.i, align 8
  %dec.i43 = add i32 %57, -1
  store i32 %dec.i43, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i43)
  %cmp.i46 = icmp slt i32 %dec.i43, 1
  br i1 %cmp.i46, label %if.then.i47, label %amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge

amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge: ; preds = %amdgpu_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit57

if.then.i47:                                      ; preds = %amdgpu_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit57

amdgpu_ring_write.exit57:                         ; preds = %if.then.i47, %amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge
  %58 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ring1.i, align 4
  %60 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %wptr.i, align 8
  %inc.i50 = add i64 %61, 1
  store i64 %inc.i50, ptr %wptr.i, align 8
  %62 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf_mask.i, align 8
  %64 = trunc i64 %61 to i32
  %idxprom.i52 = and i32 %63, %64
  %arrayidx.i53 = getelementptr i32, ptr %59, i32 %idxprom.i52
  %65 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %val, ptr %arrayidx.i53, align 4
  %66 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %ptr_mask.i, align 8
  %68 = load i64, ptr %wptr.i, align 8
  %and3.i55 = and i64 %68, %67
  store i64 %and3.i55, ptr %wptr.i, align 8
  %69 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count_dw.i, align 8
  %dec.i56 = add i32 %70, -1
  store i32 %dec.i56, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_emit_mem_sync(ptr noundef %ring) #0 align 64 {
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
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
  store volatile i32 -1073528064, ptr %arrayidx.i, align 4
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
  %cmp.i6 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i6, label %if.then.i7, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit17

if.then.i7:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit17

amdgpu_ring_write.exit17:                         ; preds = %if.then.i7, %amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i10 = add i64 %18, 1
  store i64 %inc.i10, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i12 = and i32 %20, %21
  %arrayidx.i13 = getelementptr i32, ptr %16, i32 %idxprom.i12
  %22 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 683671552, ptr %arrayidx.i13, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i15 = and i64 %25, %24
  store i64 %and3.i15, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i16 = add i32 %27, -1
  store i32 %dec.i16, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i16)
  %cmp.i19 = icmp slt i32 %dec.i16, 1
  br i1 %cmp.i19, label %if.then.i20, label %amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge

amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge: ; preds = %amdgpu_ring_write.exit17
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit30

if.then.i20:                                      ; preds = %amdgpu_ring_write.exit17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit30

amdgpu_ring_write.exit30:                         ; preds = %if.then.i20, %amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i23 = add i64 %31, 1
  store i64 %inc.i23, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i25 = and i32 %33, %34
  %arrayidx.i26 = getelementptr i32, ptr %29, i32 %idxprom.i25
  %35 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 -1, ptr %arrayidx.i26, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i28 = and i64 %38, %37
  store i64 %and3.i28, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i29 = add i32 %40, -1
  store i32 %dec.i29, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i29)
  %cmp.i32 = icmp slt i32 %dec.i29, 1
  br i1 %cmp.i32, label %if.then.i33, label %amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge

amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge: ; preds = %amdgpu_ring_write.exit30
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit43

if.then.i33:                                      ; preds = %amdgpu_ring_write.exit30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit43

amdgpu_ring_write.exit43:                         ; preds = %if.then.i33, %amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i36 = add i64 %44, 1
  store i64 %inc.i36, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i38 = and i32 %46, %47
  %arrayidx.i39 = getelementptr i32, ptr %42, i32 %idxprom.i38
  %48 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %arrayidx.i39, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i41 = and i64 %51, %50
  store i64 %and3.i41, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i42 = add i32 %53, -1
  store i32 %dec.i42, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i42)
  %cmp.i45 = icmp slt i32 %dec.i42, 1
  br i1 %cmp.i45, label %if.then.i46, label %amdgpu_ring_write.exit43.amdgpu_ring_write.exit56_crit_edge

amdgpu_ring_write.exit43.amdgpu_ring_write.exit56_crit_edge: ; preds = %amdgpu_ring_write.exit43
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit56

if.then.i46:                                      ; preds = %amdgpu_ring_write.exit43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %amdgpu_ring_write.exit56

amdgpu_ring_write.exit56:                         ; preds = %if.then.i46, %amdgpu_ring_write.exit43.amdgpu_ring_write.exit56_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i49 = add i64 %57, 1
  store i64 %inc.i49, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i51 = and i32 %59, %60
  %arrayidx.i52 = getelementptr i32, ptr %55, i32 %idxprom.i51
  %61 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 10, ptr %arrayidx.i52, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i54 = and i64 %64, %63
  store i64 %and3.i54, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i55 = add i32 %66, -1
  store i32 %dec.i55, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gfx_scratch_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_scratch_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_schedule(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ib_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v6_0_ring_set_wptr_compute(ptr noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %compute_ring = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 38
  %cmp = icmp eq ptr %compute_ring, %ring
  br i1 %cmp, label %entry.if.end16_crit_edge, label %if.else

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.else:                                          ; preds = %entry
  %arrayidx4 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 38, i32 1
  %cmp5 = icmp eq ptr %arrayidx4, %ring
  br i1 %cmp5, label %if.else.if.end16_crit_edge, label %do.body

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2178, 0\0A.popsection", ""() #9, !srcloc !157
  unreachable

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %entry.if.end16_crit_edge
  %.sink26 = phi i32 [ 12388, %entry.if.end16_crit_edge ], [ 12393, %if.else.if.end16_crit_edge ]
  %wptr8 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr8 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wptr8, align 8
  %conv10 = trunc i64 %3 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %.sink26, i32 noundef %conv10, i32 noundef 0) #9
  %call11 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %.sink26, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_set_eop_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %state, label %sw.bb.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #9
  %and.i = and i32 %call.i, -67108865
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #9
  %or.i = or i32 %call2.i, 67108864
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %sw.bb.i
  %or.sink.i = phi i32 [ %or.i, %sw.bb1.i ], [ %and.i, %sw.bb.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %or.sink.i, i32 noundef 0) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %state, label %do.body.i [
    i32 0, label %sw.bb.i7
    i32 1, label %sw.bb3.i
  ]

sw.bb.i7:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %call.i8 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12395, i32 noundef 0) #9
  %and.i9 = and i32 %call.i8, -67108865
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12395, i32 noundef %and.i9, i32 noundef 0) #9
  br label %sw.epilog

sw.bb3.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12395, i32 noundef 0) #9
  %or.i10 = or i32 %call6.i, 67108864
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12395, i32 noundef %or.i10, i32 noundef 0) #9
  br label %sw.epilog

do.body.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3292, 0\0A.popsection", ""() #9, !srcloc !158
  unreachable

sw.bb2:                                           ; preds = %entry
  %3 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %state, label %do.body.i13 [
    i32 0, label %sw.bb.i11
    i32 1, label %sw.bb3.i12
  ]

sw.bb.i11:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12396, i32 noundef 0) #9
  %and2.i = and i32 %call1.i, -67108865
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12396, i32 noundef %and2.i, i32 noundef 0) #9
  br label %sw.epilog

sw.bb3.i12:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12396, i32 noundef 0) #9
  %or9.i = or i32 %call8.i, 67108864
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12396, i32 noundef %or9.i, i32 noundef 0) #9
  br label %sw.epilog

do.body.i13:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3292, 0\0A.popsection", ""() #9, !srcloc !158
  unreachable

sw.epilog:                                        ; preds = %sw.bb3.i12, %sw.bb.i11, %sw.bb3.i, %sw.bb.i7, %sw.epilog.sink.split.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_eop_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge9
  ]

entry.sw.bb2_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge9
  %sub = add nsw i32 %1, -1
  %arrayidx5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %sub
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %sw.bb
  %arrayidx5.sink = phi ptr [ %arrayidx5, %sw.bb2 ], [ %gfx_ring, %sw.bb ]
  %call6 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %arrayidx5.sink) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_set_priv_reg_fault_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #9
  %and = and i32 %call, -8388609
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #9
  %or = or i32 %call2, 8388608
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %or.sink = phi i32 [ %or, %sw.bb1 ], [ %and, %sw.bb ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %or.sink, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_priv_reg_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #9
  %ring_id.i = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %1, label %entry.gfx_v6_0_fault.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %entry.sw.bb2.i_crit_edge
    i32 2, label %entry.sw.bb2.i_crit_edge2
  ]

entry.sw.bb2.i_crit_edge2:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

entry.gfx_v6_0_fault.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_fault.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge2
  %sub.i = add nsw i32 %1, -1
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %sub.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %ring.0.i = phi ptr [ %arrayidx5.i, %sw.bb2.i ], [ %gfx_ring.i, %sw.bb.i ]
  %sched.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring.0.i, i32 0, i32 3
  tail call void @drm_sched_fault(ptr noundef %sched.i) #9
  br label %gfx_v6_0_fault.exit

gfx_v6_0_fault.exit:                              ; preds = %sw.epilog.i, %entry.gfx_v6_0_fault.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fault(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_set_priv_inst_fault_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #9
  %and = and i32 %call, -4194305
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #9
  %or = or i32 %call2, 4194304
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %or.sink = phi i32 [ %or, %sw.bb1 ], [ %and, %sw.bb ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %or.sink, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v6_0_priv_inst_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #9
  %ring_id.i = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %1, label %entry.gfx_v6_0_fault.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %entry.sw.bb2.i_crit_edge
    i32 2, label %entry.sw.bb2.i_crit_edge2
  ]

entry.sw.bb2.i_crit_edge2:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

entry.gfx_v6_0_fault.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_fault.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge2
  %sub.i = add nsw i32 %1, -1
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %sub.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %ring.0.i = phi ptr [ %arrayidx5.i, %sw.bb2.i ], [ %gfx_ring.i, %sw.bb.i ]
  %sched.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring.0.i, i32 0, i32 3
  tail call void @drm_sched_fault(ptr noundef %sched.i) #9
  br label %gfx_v6_0_fault.exit

gfx_v6_0_fault.exit:                              ; preds = %sw.epilog.i, %entry.gfx_v6_0_fault.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_parse_disable_cu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_gfx_hdr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v6_0_enable_mgcg(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %0 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9300, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1768685056, i32 %call)
  %cmp.not = icmp eq i32 %call, -1768685056
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9300, i32 noundef -1768685056, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %2 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cg_flags, align 8
  %and4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12409, i32 noundef 0) #9
  %or = or i32 %call7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %or)
  %cmp8.not = icmp eq i32 %call7, %or
  br i1 %cmp8.not, label %if.then6.if.end11_crit_edge, label %if.then9

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12409, i32 noundef %or, i32 noundef 0) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12544, i32 noundef 0) #9
  %and13 = and i32 %call12, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %and13)
  %cmp14.not = icmp eq i32 %call12, %and13
  br i1 %cmp14.not, label %if.end11.if.end16_crit_edge, label %if.then15

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12544, i32 noundef %and13, i32 noundef 0) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11.if.end16_crit_edge
  %call17 = tail call fastcc i32 @gfx_v6_0_halt_rlc(ptr noundef %adev)
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12565, i32 noundef -1, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12566, i32 noundef -1, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12567, i32 noundef 13631743, i32 noundef 0) #9
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call17)
  %cmp.not.i = icmp eq i32 %call.i, %call17
  br i1 %cmp.not.i, label %if.end16.if.end35_crit_edge, label %if.end16.if.end35.sink.split_crit_edge

if.end16.if.end35.sink.split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.sink.split

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12544, i32 noundef 0) #9
  %or19 = or i32 %call18, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %or19)
  %cmp20.not = icmp eq i32 %call18, %or19
  br i1 %cmp20.not, label %if.else.if.end22_crit_edge, label %if.then21

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12544, i32 noundef %or19, i32 noundef 0) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.else.if.end22_crit_edge
  %call23 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12409, i32 noundef 0) #9
  %and24 = and i32 %call23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end28_crit_edge, label %if.then26

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %and27 = and i32 %call23, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12409, i32 noundef %and27, i32 noundef 0) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge
  %call29 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9300, i32 noundef 0) #9
  %or30 = or i32 %call29, 6291456
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %or30)
  %cmp31.not = icmp eq i32 %call29, %or30
  br i1 %cmp31.not, label %if.end28.if.end33_crit_edge, label %if.then32

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9300, i32 noundef %or30, i32 noundef 0) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28.if.end33_crit_edge
  %call34 = tail call fastcc i32 @gfx_v6_0_halt_rlc(ptr noundef %adev)
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12565, i32 noundef -1, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12566, i32 noundef -1, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12567, i32 noundef 14680319, i32 noundef 0) #9
  %call.i80 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i80, i32 %call34)
  %cmp.not.i81 = icmp eq i32 %call.i80, %call34
  br i1 %cmp.not.i81, label %if.end33.if.end35_crit_edge, label %if.end33.if.end35.sink.split_crit_edge

if.end33.if.end35.sink.split_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.sink.split

if.end33.if.end35_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end35.sink.split:                              ; preds = %if.end33.if.end35.sink.split_crit_edge, %if.end16.if.end35.sink.split_crit_edge
  %call34.sink = phi i32 [ %call17, %if.end16.if.end35.sink.split_crit_edge ], [ %call34, %if.end33.if.end35.sink.split_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12480, i32 noundef %call34.sink, i32 noundef 0) #9
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.end33.if.end35_crit_edge, %if.end16.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v6_0_enable_cgcg(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12545, i32 noundef 0) #9
  br i1 %enable, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %0 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #9
  %tmp.0.i = or i32 %call.i, 1572864
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %tmp.0.i, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12574, i32 noundef 128, i32 noundef 0) #9
  %call2 = tail call fastcc i32 @gfx_v6_0_halt_rlc(ptr noundef %adev)
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12565, i32 noundef -1, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12566, i32 noundef -1, i32 noundef 0) #9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12567, i32 noundef 11534591, i32 noundef 0) #9
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19.i = icmp sgt i32 %3, 0
  br i1 %cmp19.i, label %if.then.for.body.i_crit_edge, label %if.then.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge

if.then.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_wait_for_rlc_serdes.exit

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %call.i29 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12569, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp1.i = icmp eq i32 %call.i29, 0
  br i1 %cmp1.i, label %for.endthread-pre-split.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %5 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %6
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.endthread-pre-split.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr.i = load i32, ptr %usec_timeout.i, align 8
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %if.end.i.for.end.i_crit_edge
  %8 = phi i32 [ %.pr.i, %for.endthread-pre-split.i ], [ %6, %if.end.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp421.i = icmp sgt i32 %8, 0
  br i1 %cmp421.i, label %for.end.i.for.body5.i_crit_edge, label %for.end.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge

for.end.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_wait_for_rlc_serdes.exit

for.end.i.for.body5.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %if.end9.i.for.body5.i_crit_edge, %for.end.i.for.body5.i_crit_edge
  %i.122.i = phi i32 [ %inc11.i, %if.end9.i.for.body5.i_crit_edge ], [ 0, %for.end.i.for.body5.i_crit_edge ]
  %call6.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12570, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %for.body5.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge, label %if.end9.i

for.body5.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge: ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_wait_for_rlc_serdes.exit

if.end9.i:                                        ; preds = %for.body5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #9
  %inc11.i = add nuw nsw i32 %i.122.i, 1
  %10 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usec_timeout.i, align 8
  %cmp4.i = icmp slt i32 %inc11.i, %11
  br i1 %cmp4.i, label %if.end9.i.for.body5.i_crit_edge, label %if.end9.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge

if.end9.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_wait_for_rlc_serdes.exit

if.end9.i.for.body5.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

gfx_v6_0_wait_for_rlc_serdes.exit:                ; preds = %if.end9.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge, %for.body5.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge, %for.end.i.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge, %if.then.gfx_v6_0_wait_for_rlc_serdes.exit_crit_edge
  %call.i30 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i30, i32 %call2)
  %cmp.not.i = icmp eq i32 %call.i30, %call2
  br i1 %cmp.not.i, label %gfx_v6_0_wait_for_rlc_serdes.exit.gfx_v6_0_update_rlc.exit_crit_edge, label %if.then.i

gfx_v6_0_wait_for_rlc_serdes.exit.gfx_v6_0_update_rlc.exit_crit_edge: ; preds = %gfx_v6_0_wait_for_rlc_serdes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_update_rlc.exit

if.then.i:                                        ; preds = %gfx_v6_0_wait_for_rlc_serdes.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12480, i32 noundef %call2, i32 noundef 0) #9
  br label %gfx_v6_0_update_rlc.exit

gfx_v6_0_update_rlc.exit:                         ; preds = %if.then.i, %gfx_v6_0_wait_for_rlc_serdes.exit.gfx_v6_0_update_rlc.exit_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12567, i32 noundef 7340287, i32 noundef 0) #9
  %or = or i32 %call, 3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call.i32 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #9
  %and.i33 = and i32 %call.i32, -1572865
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %and.i33, i32 noundef 0) #9
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 40975, i32 noundef 0) #9
  %usec_timeout.i34 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %12 = ptrtoint ptr %usec_timeout.i34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usec_timeout.i34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp18.i = icmp sgt i32 %13, 0
  br i1 %cmp18.i, label %if.else.for.body.i35_crit_edge, label %if.else.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge

if.else.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gui_idle_interrupt.exit

if.else.for.body.i35_crit_edge:                   ; preds = %if.else
  br label %for.body.i35

for.body.i35:                                     ; preds = %if.end8.i.for.body.i35_crit_edge, %if.else.for.body.i35_crit_edge
  %i.019.i = phi i32 [ %inc.i36, %if.end8.i.for.body.i35_crit_edge ], [ 0, %if.else.for.body.i35_crit_edge ]
  %call4.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12499, i32 noundef 0) #9
  %and5.i = and i32 %call4.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 6
  br i1 %cmp6.i, label %for.body.i35.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge, label %if.end8.i

for.body.i35.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge: ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gui_idle_interrupt.exit

if.end8.i:                                        ; preds = %for.body.i35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #9
  %inc.i36 = add nuw nsw i32 %i.019.i, 1
  %15 = ptrtoint ptr %usec_timeout.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usec_timeout.i34, align 8
  %cmp.i37 = icmp slt i32 %inc.i36, %16
  br i1 %cmp.i37, label %if.end8.i.for.body.i35_crit_edge, label %if.end8.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge

if.end8.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfx_v6_0_enable_gui_idle_interrupt.exit

if.end8.i.for.body.i35_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i35

gfx_v6_0_enable_gui_idle_interrupt.exit:          ; preds = %if.end8.i.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge, %for.body.i35.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge, %if.else.gfx_v6_0_enable_gui_idle_interrupt.exit_crit_edge
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9880, i32 noundef 0) #9
  %call4 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9880, i32 noundef 0) #9
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9880, i32 noundef 0) #9
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9880, i32 noundef 0) #9
  %and7 = and i32 %call, -4
  br label %if.end

if.end:                                           ; preds = %gfx_v6_0_enable_gui_idle_interrupt.exit, %gfx_v6_0_update_rlc.exit
  %data.0 = phi i32 [ %or, %gfx_v6_0_update_rlc.exit ], [ %and7, %gfx_v6_0_enable_gui_idle_interrupt.exit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %data.0)
  %cmp.not = icmp eq i32 %call, %data.0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12545, i32 noundef %data.0, i32 noundef 0) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfx_v6_0_halt_rlc(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 0) #9
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %and1 = and i32 %call, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12480, i32 noundef %and1, i32 noundef 0) #9
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.i = icmp sgt i32 %1, 0
  br i1 %cmp19.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12569, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %for.endthread-pre-split.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %3 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %4
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.endthread-pre-split.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr.i = load i32, ptr %usec_timeout.i, align 8
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %if.end.i.for.end.i_crit_edge
  %6 = phi i32 [ %.pr.i, %for.endthread-pre-split.i ], [ %4, %if.end.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp421.i = icmp sgt i32 %6, 0
  br i1 %cmp421.i, label %for.end.i.for.body5.i_crit_edge, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.end.i.for.body5.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %if.end9.i.for.body5.i_crit_edge, %for.end.i.for.body5.i_crit_edge
  %i.122.i = phi i32 [ %inc11.i, %if.end9.i.for.body5.i_crit_edge ], [ 0, %for.end.i.for.body5.i_crit_edge ]
  %call6.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12570, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %for.body5.i.if.end_crit_edge, label %if.end9.i

for.body5.i.if.end_crit_edge:                     ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end9.i:                                        ; preds = %for.body5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #9
  %inc11.i = add nuw nsw i32 %i.122.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 8
  %cmp4.i = icmp slt i32 %inc11.i, %9
  br i1 %cmp4.i, label %if.end9.i.for.body5.i_crit_edge, label %if.end9.i.if.end_crit_edge

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end9.i.for.body5.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

if.end:                                           ; preds = %if.end9.i.if.end_crit_edge, %for.body5.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !58, !59, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !133, !134, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 50, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 51, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware346, !7, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 52, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware347, !9, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 54, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware348, !11, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 55, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware349, !13, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 56, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware350, !15, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 57, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware351, !17, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 59, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware352, !19, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 60, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware353, !21, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 61, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware354, !23, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 62, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware355, !25, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 64, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware356, !27, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 65, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware357, !29, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 66, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware358, !31, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 67, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware359, !33, !"__UNIQUE_ID_firmware359", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 69, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware360, !35, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 70, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware361, !37, !"__UNIQUE_ID_firmware361", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 71, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware362, !39, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 72, i32 1}
!40 = !{ptr @gfx_v6_0_ip_block, !41, !"gfx_v6_0_ip_block", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3642, i32 38}
!42 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3484, i32 10}
!44 = !{ptr @gfx_v6_0_ip_funcs, !45, !"gfx_v6_0_ip_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3483, i32 34}
!46 = !{ptr @gfx_v6_0_gfx_funcs, !47, !"gfx_v6_0_gfx_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3048, i32 38}
!48 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3045, i32 2}
!50 = !{ptr @.str.2, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @gfx_v6_0_select_me_pipe_q._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @gfx_v6_0_select_me_pipe_q._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @gfx_v6_0_rlc_funcs, !55, !"gfx_v6_0_rlc_funcs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3056, i32 38}
!56 = !{ptr @.str.4, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 2407, i32 4}
!58 = !{ptr @.str.5, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @gfx_v6_0_rlc_init._entry, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @gfx_v6_0_rlc_init._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @verde_rlc_save_restore_register_list, !64, !"verde_rlc_save_restore_register_list", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 89, i32 18}
!65 = !{ptr @si_cs_data, !66, !"si_cs_data", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_si.h", i32 938, i32 36}
!67 = !{ptr @si_SECT_CONTEXT_defs, !68, !"si_SECT_CONTEXT_defs", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_si.h", i32 927, i32 35}
!69 = !{ptr @si_SECT_CONTEXT_def_1, !70, !"si_SECT_CONTEXT_def_1", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_si.h", i32 24, i32 18}
!71 = !{ptr @si_SECT_CONTEXT_def_2, !72, !"si_SECT_CONTEXT_def_2", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_si.h", i32 239, i32 18}
!73 = !{ptr @si_SECT_CONTEXT_def_3, !74, !"si_SECT_CONTEXT_def_3", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_si.h", i32 514, i32 18}
!75 = !{ptr @si_SECT_CONTEXT_def_4, !76, !"si_SECT_CONTEXT_def_4", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_si.h", i32 523, i32 18}
!77 = !{ptr @si_SECT_CONTEXT_def_5, !78, !"si_SECT_CONTEXT_def_5", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_si.h", i32 683, i32 18}
!79 = !{ptr @si_SECT_CONTEXT_def_6, !80, !"si_SECT_CONTEXT_def_6", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_si.h", i32 687, i32 18}
!81 = !{ptr @si_SECT_CONTEXT_def_7, !82, !"si_SECT_CONTEXT_def_7", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_si.h", i32 691, i32 18}
!83 = !{ptr @gfx_v6_0_ring_funcs_gfx, !84, !"gfx_v6_0_ring_funcs_gfx", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3500, i32 39}
!85 = !{ptr @.str.10, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!87 = !{ptr @gfx_v6_0_ring_funcs_compute, !88, !"gfx_v6_0_ring_funcs_compute", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3528, i32 39}
!89 = !{ptr @gfx_v6_0_eop_irq_funcs, !90, !"gfx_v6_0_eop_irq_funcs", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3563, i32 42}
!91 = !{ptr @gfx_v6_0_priv_reg_irq_funcs, !92, !"gfx_v6_0_priv_reg_irq_funcs", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3568, i32 42}
!93 = !{ptr @.str.11, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3410, i32 2}
!95 = !{ptr @gfx_v6_0_priv_inst_irq_funcs, !96, !"gfx_v6_0_priv_inst_irq_funcs", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3573, i32 42}
!97 = !{ptr @.str.12, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3419, i32 2}
!99 = !{ptr @.str.13, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3101, i32 3}
!101 = !{ptr @.str.14, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3107, i32 3}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3114, i32 23}
!105 = !{ptr @.str.16, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3127, i32 4}
!107 = !{ptr @.str.17, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 3137, i32 23}
!109 = !{ptr @.str.18, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 319, i32 2}
!111 = !{ptr @.str.19, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 323, i32 15}
!113 = !{ptr @.str.20, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 326, i32 15}
!115 = !{ptr @.str.21, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 329, i32 15}
!117 = !{ptr @.str.22, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 332, i32 15}
!119 = !{ptr @.str.23, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 335, i32 15}
!121 = !{ptr @.str.24, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 340, i32 37}
!123 = !{ptr @.str.25, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 351, i32 37}
!125 = !{ptr @.str.26, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 362, i32 37}
!127 = !{ptr @.str.27, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 373, i32 37}
!129 = !{ptr @.str.28, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 384, i32 3}
!131 = !{ptr @.str.29, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @gfx_v6_0_init_microcode._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @gfx_v6_0_init_microcode._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.30, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 1297, i32 3}
!136 = !{ptr @.str.31, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c", i32 2030, i32 3}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i64 2162321084, i64 2162321586, i64 2162321121, i64 2162321177, i64 2162321211, i64 2162321235, i64 2162321276, i64 2162321297, i64 2162321325, i64 2162321359}
!148 = !{i64 2162390561, i64 2162391064, i64 2162390598, i64 2162390654, i64 2162390688, i64 2162390712, i64 2162390753, i64 2162390774, i64 2162390802, i64 2162390836}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{i32 0, i32 33}
!151 = !{i64 2162406116, i64 2162406619, i64 2162406153, i64 2162406209, i64 2162406243, i64 2162406267, i64 2162406308, i64 2162406329, i64 2162406357, i64 2162406391}
!152 = !{!"auto-init"}
!153 = !{i64 2148766112}
!154 = !{i64 2148680552, i64 2148680584, i64 2148680613, i64 2148680647, i64 2148680678, i64 2148680701}
!155 = !{!"branch_weights", i32 2000, i32 1}
!156 = !{i64 2149963885}
!157 = !{i64 2162408182, i64 2162408685, i64 2162408219, i64 2162408275, i64 2162408309, i64 2162408333, i64 2162408374, i64 2162408395, i64 2162408423, i64 2162408457}
!158 = !{i64 2162443343, i64 2162443846, i64 2162443380, i64 2162443436, i64 2162443470, i64 2162443494, i64 2162443535, i64 2162443556, i64 2162443584, i64 2162443618}
