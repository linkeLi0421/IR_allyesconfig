; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_gfx_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cs_section_def = type { ptr, i32 }
%struct.cs_extent_def = type { ptr, i32, i32 }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_gds_reg_offset = type { i32, i32, i32, i32 }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.cik_mqd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rlc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32, i32, i32 }
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

@__UNIQUE_ID_firmware343 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/bonaire_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/bonaire_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/bonaire_ce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/bonaire_rlc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/bonaire_mec.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/hawaii_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/hawaii_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/hawaii_ce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/hawaii_rlc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/hawaii_mec.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/kaveri_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/kaveri_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/kaveri_ce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/kaveri_rlc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/kaveri_mec.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/kaveri_mec2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware359 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/kabini_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/kabini_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware361 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/kabini_ce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/kabini_rlc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware363 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/kabini_mec.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware364 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/mullins_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware365 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/mullins_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware366 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/mullins_ce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware367 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/mullins_rlc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware368 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/mullins_mec.bin\00", section ".modinfo", align 1
@gfx_v7_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @gfx_v7_0_early_init, ptr @gfx_v7_0_late_init, ptr @gfx_v7_0_sw_init, ptr @gfx_v7_0_sw_fini, ptr null, ptr @gfx_v7_0_hw_init, ptr @gfx_v7_0_hw_fini, ptr null, ptr @gfx_v7_0_suspend, ptr @gfx_v7_0_resume, ptr @gfx_v7_0_is_idle, ptr @gfx_v7_0_wait_for_idle, ptr null, ptr null, ptr @gfx_v7_0_soft_reset, ptr null, ptr @gfx_v7_0_set_clockgating_state, ptr @gfx_v7_0_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gfx_v7_1_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 6, i32 7, i32 1, i32 0, ptr @gfx_v7_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@gfx_v7_2_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 6, i32 7, i32 2, i32 0, ptr @gfx_v7_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@gfx_v7_3_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 6, i32 7, i32 3, i32 0, ptr @gfx_v7_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gfx_v7_0\00", [23 x i8] zeroinitializer }, align 32
@gfx_v7_0_gfx_funcs = internal constant { %struct.amdgpu_gfx_funcs, [32 x i8] } { %struct.amdgpu_gfx_funcs { ptr @gfx_v7_0_get_gpu_clock_counter, ptr @gfx_v7_0_select_se_sh, ptr @gfx_v7_0_read_wave_data, ptr null, ptr @gfx_v7_0_read_wave_sgprs, ptr @gfx_v7_0_select_me_pipe_q, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gfx_v7_0_rlc_funcs = internal constant { %struct.amdgpu_rlc_funcs, [36 x i8] } { %struct.amdgpu_rlc_funcs { ptr @gfx_v7_0_is_rlc_enabled, ptr @gfx_v7_0_set_safe_mode, ptr @gfx_v7_0_unset_safe_mode, ptr @gfx_v7_0_rlc_init, ptr @gfx_v7_0_get_csb_size, ptr @gfx_v7_0_get_csb_buffer, ptr @gfx_v7_0_cp_pg_table_num, ptr @gfx_v7_0_rlc_resume, ptr @gfx_v7_0_rlc_stop, ptr @gfx_v7_0_rlc_reset, ptr @gfx_v7_0_rlc_start, ptr @gfx_v7_0_update_spm_vmid, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@spectre_rlc_save_restore_register_list = internal constant { [443 x i32], [436 x i8] } { [443 x i32] [i32 234893387, i32 0, i32 234893392, i32 0, i32 234893396, i32 0, i32 234893399, i32 0, i32 234893402, i32 0, i32 234893404, i32 0, i32 234893406, i32 0, i32 234893441, i32 0, i32 234893485, i32 0, i32 234893486, i32 0, i32 234893487, i32 0, i32 234893488, i32 0, i32 234889354, i32 0, i32 234889383, i32 0, i32 234889639, i32 0, i32 100673085, i32 0, i32 234890814, i32 0, i32 234890816, i32 0, i32 234893464, i32 0, i32 234890298, i32 0, i32 234942464, i32 0, i32 234942467, i32 0, i32 234889991, i32 0, i32 234890688, i32 0, i32 234894152, i32 0, i32 1308635976, i32 0, i32 1577071432, i32 0, i32 1845506888, i32 0, i32 2113942344, i32 0, i32 -1912589496, i32 0, i32 -1644154040, i32 0, i32 -1375718584, i32 0, i32 -1107283128, i32 0, i32 234889839, i32 0, i32 234889792, i32 0, i32 3, i32 234893388, i32 0, i32 234893389, i32 0, i32 234893439, i32 0, i32 234893442, i32 0, i32 234893465, i32 0, i32 234893466, i32 0, i32 234893467, i32 0, i32 234893468, i32 0, i32 234893469, i32 0, i32 234893470, i32 0, i32 234893471, i32 0, i32 234893472, i32 0, i32 234893473, i32 0, i32 234893474, i32 0, i32 234893475, i32 0, i32 234893476, i32 0, i32 234893477, i32 0, i32 234893478, i32 0, i32 234893479, i32 0, i32 234893480, i32 0, i32 234893481, i32 0, i32 234893482, i32 0, i32 234893483, i32 0, i32 234893484, i32 0, i32 234930292, i32 0, i32 234930318, i32 0, i32 234930324, i32 0, i32 234930325, i32 0, i32 234930326, i32 0, i32 234930327, i32 0, i32 1308635712, i32 0, i32 1577071168, i32 0, i32 1845506624, i32 0, i32 2113942080, i32 0, i32 -1912589760, i32 0, i32 -1644154304, i32 0, i32 -1375718848, i32 0, i32 -1107283392, i32 0, i32 1308635713, i32 0, i32 1577071169, i32 0, i32 1845506625, i32 0, i32 2113942081, i32 0, i32 -1912589759, i32 0, i32 -1644154303, i32 0, i32 -1375718847, i32 0, i32 -1107283391, i32 0, i32 1308635714, i32 0, i32 1577071170, i32 0, i32 1845506626, i32 0, i32 2113942082, i32 0, i32 -1912589758, i32 0, i32 -1644154302, i32 0, i32 -1375718846, i32 0, i32 -1107283390, i32 0, i32 1308635715, i32 0, i32 1577071171, i32 0, i32 1845506627, i32 0, i32 2113942083, i32 0, i32 -1912589757, i32 0, i32 -1644154301, i32 0, i32 -1375718845, i32 0, i32 -1107283389, i32 0, i32 1308635716, i32 0, i32 1577071172, i32 0, i32 1845506628, i32 0, i32 2113942084, i32 0, i32 -1912589756, i32 0, i32 -1644154300, i32 0, i32 -1375718844, i32 0, i32 -1107283388, i32 0, i32 234893927, i32 0, i32 234890765, i32 0, i32 50112, i32 0, i32 115648, i32 0, i32 50113, i32 0, i32 115649, i32 0, i32 50114, i32 0, i32 115650, i32 0, i32 50115, i32 0, i32 115651, i32 0, i32 100673247, i32 0, i32 234889861, i32 0, i32 234889862, i32 0, i32 100713088, i32 0, i32 234889980, i32 0, i32 234889971, i32 0, i32 234889929, i32 0, i32 234930817, i32 0, i32 100713092, i32 0, i32 100713093, i32 0, i32 100713094, i32 0, i32 100713099, i32 0, i32 234893760, i32 0, i32 234893761, i32 0, i32 234893762, i32 0, i32 234893786, i32 0, i32 67121628, i32 0, i32 67121629, i32 0, i32 67121630, i32 0, i32 67121631, i32 0, i32 67121632, i32 0, i32 67121633, i32 0, i32 67121634, i32 0, i32 67121635, i32 0, i32 67121638, i32 0, i32 67121639, i32 0, i32 67121640, i32 0, i32 67121641, i32 0, i32 67121642, i32 0, i32 67121643, i32 0, i32 67121644, i32 0, i32 67121645, i32 0, i32 234890304, i32 0, i32 234942468, i32 0, i32 234890410, i32 0, i32 234890411, i32 0, i32 234890413, i32 0, i32 234890414, i32 0, i32 234890415, i32 0, i32 234890416, i32 0, i32 234890417, i32 0, i32 234890418, i32 0, i32 234890419, i32 0, i32 234890420, i32 0, i32 234889984, i32 0, i32 234889985, i32 0, i32 234889992, i32 0, i32 234889998, i32 0, i32 234889999, i32 0, i32 234892160, i32 0, i32 234890625, i32 0, i32 234892034, i32 0, i32 234892035, i32 0, i32 234892036, i32 0, i32 234892037, i32 0, i32 234892054, i32 0, i32 234892058, i32 0, i32 234892059, i32 0, i32 234892060, i32 0, i32 234892061, i32 0, i32 234892062, i32 0, i32 234892063, i32 0, i32 234892064, i32 0, i32 234892065, i32 0, i32 234892066, i32 0, i32 234892067, i32 0, i32 234890691, i32 0, i32 234890693, i32 0, i32 234890694, i32 0, i32 234890695, i32 0, i32 234931226, i32 0, i32 1308673050, i32 0, i32 1577108506, i32 0, i32 1845543962, i32 0, i32 2113979418, i32 0, i32 -1912552422, i32 0, i32 -1644116966, i32 0, i32 -1375681510, i32 0, i32 -1107246054, i32 0, i32 234894148, i32 0, i32 234894149, i32 0, i32 234889772, i32 0, i32 234889773, i32 0, i32 234889774, i32 0, i32 234889775, i32 0, i32 67117680, i32 0, i32 234889777, i32 0, i32 234889778, i32 0, i32 234889780, i32 0, i32 234889781, i32 0, i32 234889782, i32 0, i32 234889824, i32 0, i32 234930766, i32 0, i32 234930767, i32 0, i32 234930768, i32 0, i32 234889832, i32 0, i32 234930752, i32 0, i32 234930753, i32 0, i32 234889837, i32 0, i32 234942596, i32 0, i32 234942597, i32 0, i32 234942598, i32 0, i32 234889793, i32 0, i32 5, i32 234889994, i32 234889995, i32 234889996, i32 234889997, i32 234890624], [436 x i8] zeroinitializer }, align 32
@kalindi_rlc_save_restore_register_list = internal constant { [321 x i32], [348 x i8] } { [321 x i32] [i32 234893387, i32 0, i32 234893392, i32 0, i32 234893396, i32 0, i32 234893399, i32 0, i32 234893402, i32 0, i32 234893404, i32 0, i32 234893441, i32 0, i32 234893485, i32 0, i32 234893486, i32 0, i32 234893487, i32 0, i32 234893488, i32 0, i32 234889354, i32 0, i32 234889383, i32 0, i32 234889639, i32 0, i32 100673085, i32 0, i32 234890814, i32 0, i32 234890816, i32 0, i32 234893464, i32 0, i32 234890298, i32 0, i32 234942464, i32 0, i32 234942467, i32 0, i32 234889991, i32 0, i32 234890688, i32 0, i32 234894152, i32 0, i32 1308635976, i32 0, i32 1577071432, i32 0, i32 1845506888, i32 0, i32 2113942344, i32 0, i32 234889839, i32 0, i32 234889792, i32 0, i32 3, i32 234893388, i32 0, i32 234893389, i32 0, i32 234893439, i32 0, i32 234893442, i32 0, i32 234893465, i32 0, i32 234893466, i32 0, i32 234893467, i32 0, i32 234893468, i32 0, i32 234893469, i32 0, i32 234893475, i32 0, i32 234893476, i32 0, i32 234893477, i32 0, i32 234893478, i32 0, i32 234893480, i32 0, i32 234893481, i32 0, i32 234893482, i32 0, i32 234893483, i32 0, i32 234930292, i32 0, i32 234930318, i32 0, i32 234930324, i32 0, i32 234930325, i32 0, i32 234930326, i32 0, i32 234930327, i32 0, i32 1308635712, i32 0, i32 1577071168, i32 0, i32 1845506624, i32 0, i32 2113942080, i32 0, i32 1308635713, i32 0, i32 1577071169, i32 0, i32 1845506625, i32 0, i32 2113942081, i32 0, i32 1308635714, i32 0, i32 1577071170, i32 0, i32 1845506626, i32 0, i32 2113942082, i32 0, i32 1308635715, i32 0, i32 1577071171, i32 0, i32 1845506627, i32 0, i32 2113942083, i32 0, i32 1308635716, i32 0, i32 1577071172, i32 0, i32 1845506628, i32 0, i32 2113942084, i32 0, i32 234893927, i32 0, i32 234890765, i32 0, i32 50112, i32 0, i32 50113, i32 0, i32 50114, i32 0, i32 50115, i32 0, i32 100673247, i32 0, i32 234889861, i32 0, i32 234889862, i32 0, i32 100713088, i32 0, i32 234889980, i32 0, i32 234889971, i32 0, i32 234889929, i32 0, i32 234930817, i32 0, i32 100713092, i32 0, i32 100713093, i32 0, i32 100713094, i32 0, i32 100713099, i32 0, i32 234893760, i32 0, i32 234893761, i32 0, i32 234893762, i32 0, i32 234893786, i32 0, i32 67121628, i32 0, i32 67121629, i32 0, i32 67121638, i32 0, i32 67121639, i32 0, i32 234890304, i32 0, i32 234942468, i32 0, i32 234889984, i32 0, i32 234889985, i32 0, i32 234889992, i32 0, i32 234889998, i32 0, i32 234889999, i32 0, i32 234892160, i32 0, i32 234890625, i32 0, i32 234892034, i32 0, i32 234892035, i32 0, i32 234892036, i32 0, i32 234892037, i32 0, i32 234892054, i32 0, i32 234892058, i32 0, i32 234892059, i32 0, i32 234892060, i32 0, i32 234892061, i32 0, i32 234892062, i32 0, i32 234892063, i32 0, i32 234892064, i32 0, i32 234892065, i32 0, i32 234892066, i32 0, i32 234892067, i32 0, i32 234890691, i32 0, i32 234890693, i32 0, i32 234890694, i32 0, i32 234890695, i32 0, i32 234931226, i32 0, i32 1308673050, i32 0, i32 1577108506, i32 0, i32 1845543962, i32 0, i32 2113979418, i32 0, i32 234894148, i32 0, i32 234894149, i32 0, i32 234889772, i32 0, i32 234889773, i32 0, i32 234889774, i32 0, i32 234889775, i32 0, i32 67117680, i32 0, i32 234889777, i32 0, i32 234889778, i32 0, i32 234889780, i32 0, i32 234889781, i32 0, i32 234889782, i32 0, i32 234889824, i32 0, i32 234930766, i32 0, i32 234930767, i32 0, i32 234930768, i32 0, i32 234889832, i32 0, i32 234930752, i32 0, i32 234930753, i32 0, i32 234889837, i32 0, i32 234944639, i32 0, i32 234942596, i32 0, i32 234942597, i32 0, i32 234942598, i32 0, i32 234889793, i32 0, i32 5, i32 234889994, i32 234889995, i32 234889996, i32 234889997, i32 234890624], [348 x i8] zeroinitializer }, align 32
@ci_cs_data = internal constant { [2 x %struct.cs_section_def], [16 x i8] } { [2 x %struct.cs_section_def] [%struct.cs_section_def { ptr @ci_SECT_CONTEXT_defs, i32 1 }, %struct.cs_section_def zeroinitializer], [16 x i8] zeroinitializer }, align 32
@ci_SECT_CONTEXT_defs = internal constant { [8 x %struct.cs_extent_def], [32 x i8] } { [8 x %struct.cs_extent_def] [%struct.cs_extent_def { ptr @ci_SECT_CONTEXT_def_1, i32 40960, i32 212 }, %struct.cs_extent_def { ptr @ci_SECT_CONTEXT_def_2, i32 41174, i32 274 }, %struct.cs_extent_def { ptr @ci_SECT_CONTEXT_def_3, i32 41461, i32 6 }, %struct.cs_extent_def { ptr @ci_SECT_CONTEXT_def_4, i32 41472, i32 157 }, %struct.cs_extent_def { ptr @ci_SECT_CONTEXT_def_5, i32 41632, i32 2 }, %struct.cs_extent_def { ptr @ci_SECT_CONTEXT_def_6, i32 41635, i32 1 }, %struct.cs_extent_def { ptr @ci_SECT_CONTEXT_def_7, i32 41637, i32 233 }, %struct.cs_extent_def zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ci_SECT_CONTEXT_def_1 = internal constant { [212 x i32], [208 x i8] } { [212 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073758208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2147483648, i32 1073758208, i32 65535, i32 0, i32 1073758208, i32 0, i32 1073758208, i32 0, i32 1073758208, i32 0, i32 1073758208, i32 -1432769878, i32 0, i32 -1, i32 -1, i32 -2147483648, i32 1073758208, i32 0, i32 0, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216], [208 x i8] zeroinitializer }, align 32
@ci_SECT_CONTEXT_def_3 = internal constant { [6 x i32], [40 x i8] } zeroinitializer, align 32
@ci_SECT_CONTEXT_def_4 = internal constant { [157 x i32], [140 x i8] } { [157 x i32] [i32 0, i32 0, i32 0, i32 0, i32 589824, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i32 128, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0], [140 x i8] zeroinitializer }, align 32
@ci_SECT_CONTEXT_def_5 = internal constant { [2 x i32], [24 x i8] } zeroinitializer, align 32
@ci_SECT_CONTEXT_def_6 = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@ci_SECT_CONTEXT_def_2 = internal constant { <{ [225 x i32], [49 x i32] }>, [280 x i8] } { <{ [225 x i32], [49 x i32] }> <{ [225 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2], [49 x i32] zeroinitializer }>, [280 x i8] zeroinitializer }, align 32
@ci_SECT_CONTEXT_def_7 = internal constant { <{ [115 x i32], [118 x i32] }>, [252 x i8] } { <{ [115 x i32], [118 x i32] }> <{ [115 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, i32 5, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 16], [118 x i32] zeroinitializer }>, [252 x i8] zeroinitializer }, align 32
@gfx_v7_0_ring_funcs_gfx = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 0, i32 255, i32 -61440, i8 0, i8 0, i32 0, i32 0, ptr @gfx_v7_0_ring_get_rptr, ptr @gfx_v7_0_ring_get_wptr_gfx, ptr @gfx_v7_0_ring_set_wptr_gfx, ptr null, ptr null, i32 119, i32 4, ptr @gfx_v7_0_ring_emit_ib_gfx, ptr @gfx_v7_0_ring_emit_fence_gfx, ptr @gfx_v7_0_ring_emit_pipeline_sync, ptr @gfx_v7_0_ring_emit_vm_flush, ptr @gfx_v7_0_ring_emit_hdp_flush, ptr @gfx_v7_0_ring_emit_gds_switch, ptr @gfx_v7_0_ring_test_ring, ptr @gfx_v7_0_ring_test_ib, ptr @amdgpu_ring_insert_nop, ptr null, ptr null, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfx_v7_ring_emit_cntxcntl, ptr null, ptr @gfx_v7_0_ring_emit_wreg, ptr null, ptr null, ptr null, ptr @gfx_v7_0_ring_soft_recovery, ptr null, ptr @gfx_v7_0_emit_mem_sync, ptr null }, [32 x i8] zeroinitializer }, align 32
@gfx_v7_0_ring_funcs_compute = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 1, i32 255, i32 -61440, i8 0, i8 0, i32 0, i32 0, ptr @gfx_v7_0_ring_get_rptr, ptr @gfx_v7_0_ring_get_wptr_compute, ptr @gfx_v7_0_ring_set_wptr_compute, ptr null, ptr null, i32 89, i32 7, ptr @gfx_v7_0_ring_emit_ib_compute, ptr @gfx_v7_0_ring_emit_fence_compute, ptr @gfx_v7_0_ring_emit_pipeline_sync, ptr @gfx_v7_0_ring_emit_vm_flush, ptr @gfx_v7_0_ring_emit_hdp_flush, ptr @gfx_v7_0_ring_emit_gds_switch, ptr @gfx_v7_0_ring_test_ring, ptr @gfx_v7_0_ring_test_ib, ptr @amdgpu_ring_insert_nop, ptr null, ptr null, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfx_v7_0_ring_emit_wreg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfx_v7_0_emit_mem_sync_compute, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_gds_reg_offset = internal constant { [16 x %struct.amdgpu_gds_reg_offset], [64 x i8] } { [16 x %struct.amdgpu_gds_reg_offset] [%struct.amdgpu_gds_reg_offset { i32 13056, i32 13057, i32 13088, i32 13104 }, %struct.amdgpu_gds_reg_offset { i32 13058, i32 13059, i32 13089, i32 13105 }, %struct.amdgpu_gds_reg_offset { i32 13060, i32 13061, i32 13090, i32 13106 }, %struct.amdgpu_gds_reg_offset { i32 13062, i32 13063, i32 13091, i32 13107 }, %struct.amdgpu_gds_reg_offset { i32 13064, i32 13065, i32 13092, i32 13108 }, %struct.amdgpu_gds_reg_offset { i32 13066, i32 13067, i32 13093, i32 13109 }, %struct.amdgpu_gds_reg_offset { i32 13068, i32 13069, i32 13094, i32 13110 }, %struct.amdgpu_gds_reg_offset { i32 13070, i32 13071, i32 13095, i32 13111 }, %struct.amdgpu_gds_reg_offset { i32 13072, i32 13073, i32 13096, i32 13112 }, %struct.amdgpu_gds_reg_offset { i32 13074, i32 13075, i32 13097, i32 13113 }, %struct.amdgpu_gds_reg_offset { i32 13076, i32 13077, i32 13098, i32 13114 }, %struct.amdgpu_gds_reg_offset { i32 13078, i32 13079, i32 13099, i32 13115 }, %struct.amdgpu_gds_reg_offset { i32 13080, i32 13081, i32 13100, i32 13116 }, %struct.amdgpu_gds_reg_offset { i32 13082, i32 13083, i32 13101, i32 13117 }, %struct.amdgpu_gds_reg_offset { i32 13084, i32 13085, i32 13102, i32 13118 }, %struct.amdgpu_gds_reg_offset { i32 13086, i32 13087, i32 13103, i32 13119 }], [64 x i8] zeroinitializer }, align 32
@gfx_v7_0_eop_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gfx_v7_0_set_eop_interrupt_state, ptr @gfx_v7_0_eop_irq }, [24 x i8] zeroinitializer }, align 32
@gfx_v7_0_priv_reg_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gfx_v7_0_set_priv_reg_fault_state, ptr @gfx_v7_0_priv_reg_irq }, [24 x i8] zeroinitializer }, align 32
@gfx_v7_0_priv_inst_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gfx_v7_0_set_priv_inst_fault_state, ptr @gfx_v7_0_priv_inst_irq }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid me %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IH: CP EOP\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Illegal register access in command stream\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Illegal instruction in command stream\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to load gfx firmware!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init rlc BOs!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init MEC BOs!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bonaire\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hawaii\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kaveri\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kabini\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mullins\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu/%s_pfp.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu/%s_me.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu/%s_ce.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu/%s_mec.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu/%s_mec2.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu/%s_rlc.bin\00", [46 x i8] zeroinitializer }, align 32
@gfx_v7_0_init_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.27, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013amdgpu: gfx7: Failed to load firmware \22%s\22\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gfx_v7_0_init_microcode\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c\00", [58 x i8] zeroinitializer }, align 32
@gfx_v7_0_init_microcode._entry_ptr = internal global ptr @gfx_v7_0_init_microcode._entry, section ".printk_index", align 4
@gfx_v7_0_mec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.27, i32 2816, ptr @.str.30, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: (%d) create, pin or map of HDP EOP bo failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gfx_v7_0_mec_init\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gfx_v7_0_mec_init._entry_ptr = internal global ptr @gfx_v7_0_mec_init._entry, section ".printk_index", align 4
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"comp_%d.%d.%d\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown asic: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: cp failed to lock ring (%d).\0A\00", [58 x i8] zeroinitializer }, align 32
@gfx_v7_0_compute_queue_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.27, i32 3079, ptr @.str.30, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: (%d) create MQD bo failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gfx_v7_0_compute_queue_init\00", [36 x i8] zeroinitializer }, align 32
@gfx_v7_0_compute_queue_init._entry_ptr = internal global ptr @gfx_v7_0_compute_queue_init._entry, section ".printk_index", align 4
@gfx_v7_0_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.27, i32 4701, ptr @.str.39, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: GRBM_SOFT_RESET=0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gfx_v7_0_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gfx_v7_0_soft_reset._entry_ptr = internal global ptr @gfx_v7_0_soft_reset._entry, section ".printk_index", align 4
@gfx_v7_0_soft_reset._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.27, i32 4715, ptr @.str.39, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: SRBM_SOFT_RESET=0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@gfx_v7_0_soft_reset._entry_ptr.42 = internal global ptr @gfx_v7_0_soft_reset._entry.40, section ".printk_index", align 4
@switch.table.gfx_v7_0_sw_init = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.15, ptr @.str.18], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v7_0_hw_init = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 369098770, i32 2, i32 0, i32 973084186, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v7_0_hw_init.43 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 46, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v7_0_get_csb_buffer = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 301989910, i32 0, i32 0, i32 437649466, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.gfx_v7_0_get_csb_buffer.44 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 771751936, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"gfx_v7_0_ip_funcs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 5036, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"gfx_v7_1_ip_block\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 5221, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"gfx_v7_2_ip_block\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 5230, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"gfx_v7_3_ip_block\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 5239, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 5037, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"gfx_v7_0_gfx_funcs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4223, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"gfx_v7_0_rlc_funcs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4231, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant [39 x i8] c"spectre_rlc_save_restore_register_list\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 113, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant [39 x i8] c"kalindi_rlc_save_restore_register_list\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 560, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant [11 x i8] c"ci_cs_data\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 941, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant [21 x i8] c"ci_SECT_CONTEXT_defs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 930, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"ci_SECT_CONTEXT_def_1\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 24, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant [22 x i8] c"ci_SECT_CONTEXT_def_3\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 516, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"ci_SECT_CONTEXT_def_4\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 525, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"ci_SECT_CONTEXT_def_5\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 685, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"ci_SECT_CONTEXT_def_6\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 690, i32 27 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"ci_SECT_CONTEXT_def_2\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 239, i32 27 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"ci_SECT_CONTEXT_def_7\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_ci.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 694, i32 27 }
@___asan_gen_.118 = private unnamed_addr constant [24 x i8] c"gfx_v7_0_ring_funcs_gfx\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 5053, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant [28 x i8] c"gfx_v7_0_ring_funcs_compute\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 5087, i32 39 }
@___asan_gen_.125 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 314, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [22 x i8] c"amdgpu_gds_reg_offset\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 93, i32 43 }
@___asan_gen_.130 = private unnamed_addr constant [23 x i8] c"gfx_v7_0_eop_irq_funcs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 5128, i32 42 }
@___asan_gen_.133 = private unnamed_addr constant [28 x i8] c"gfx_v7_0_priv_reg_irq_funcs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 5133, i32 42 }
@___asan_gen_.136 = private unnamed_addr constant [29 x i8] c"gfx_v7_0_priv_inst_irq_funcs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 5138, i32 42 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4783, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4900, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4947, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4956, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4496, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4502, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4509, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 908, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 912, i32 15 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 915, i32 15 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 918, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 921, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 924, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 929, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 937, i32 37 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 945, i32 37 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 953, i32 37 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 962, i32 38 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 971, i32 37 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 979, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2816, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4437, i32 22 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1664, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2538, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3079, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4701, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 4715, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant [30 x i8] c"switch.table.gfx_v7_0_sw_init\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [30 x i8] c"switch.table.gfx_v7_0_hw_init\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [33 x i8] c"switch.table.gfx_v7_0_hw_init.43\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [37 x i8] c"switch.table.gfx_v7_0_get_csb_buffer\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [40 x i8] c"switch.table.gfx_v7_0_get_csb_buffer.44\00", align 1
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @__UNIQUE_ID_firmware359, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_firmware361, ptr @__UNIQUE_ID_firmware362, ptr @__UNIQUE_ID_firmware363, ptr @__UNIQUE_ID_firmware364, ptr @__UNIQUE_ID_firmware365, ptr @__UNIQUE_ID_firmware366, ptr @__UNIQUE_ID_firmware367, ptr @__UNIQUE_ID_firmware368, ptr @gfx_v7_0_compute_queue_init._entry, ptr @gfx_v7_0_compute_queue_init._entry_ptr, ptr @gfx_v7_0_init_microcode._entry, ptr @gfx_v7_0_init_microcode._entry_ptr, ptr @gfx_v7_0_mec_init._entry, ptr @gfx_v7_0_mec_init._entry_ptr, ptr @gfx_v7_0_soft_reset._entry, ptr @gfx_v7_0_soft_reset._entry.40, ptr @gfx_v7_0_soft_reset._entry_ptr, ptr @gfx_v7_0_soft_reset._entry_ptr.42, ptr @gfx_v7_0_ip_funcs, ptr @gfx_v7_1_ip_block, ptr @gfx_v7_2_ip_block, ptr @gfx_v7_3_ip_block, ptr @.str, ptr @gfx_v7_0_gfx_funcs, ptr @gfx_v7_0_rlc_funcs, ptr @spectre_rlc_save_restore_register_list, ptr @kalindi_rlc_save_restore_register_list, ptr @ci_cs_data, ptr @ci_SECT_CONTEXT_defs, ptr @ci_SECT_CONTEXT_def_1, ptr @ci_SECT_CONTEXT_def_3, ptr @ci_SECT_CONTEXT_def_4, ptr @ci_SECT_CONTEXT_def_5, ptr @ci_SECT_CONTEXT_def_6, ptr @ci_SECT_CONTEXT_def_2, ptr @ci_SECT_CONTEXT_def_7, ptr @gfx_v7_0_ring_funcs_gfx, ptr @gfx_v7_0_ring_funcs_compute, ptr @.str.3, ptr @amdgpu_gds_reg_offset, ptr @gfx_v7_0_eop_irq_funcs, ptr @gfx_v7_0_priv_reg_irq_funcs, ptr @gfx_v7_0_priv_inst_irq_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @switch.table.gfx_v7_0_sw_init, ptr @switch.table.gfx_v7_0_hw_init, ptr @switch.table.gfx_v7_0_hw_init.43, ptr @switch.table.gfx_v7_0_get_csb_buffer, ptr @switch.table.gfx_v7_0_get_csb_buffer.44], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_1_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_2_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_3_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_gfx_funcs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_rlc_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spectre_rlc_save_restore_register_list to i32), i32 1772, i32 2208, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalindi_rlc_save_restore_register_list to i32), i32 1284, i32 1632, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_cs_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_SECT_CONTEXT_defs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_SECT_CONTEXT_def_1 to i32), i32 848, i32 1056, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_SECT_CONTEXT_def_3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_SECT_CONTEXT_def_4 to i32), i32 628, i32 768, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_SECT_CONTEXT_def_5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_SECT_CONTEXT_def_6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_SECT_CONTEXT_def_2 to i32), i32 1096, i32 1376, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_SECT_CONTEXT_def_7 to i32), i32 932, i32 1184, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_ring_funcs_gfx to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_ring_funcs_compute to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gds_reg_offset to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_eop_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_priv_reg_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_priv_inst_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_init_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_mec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_compute_queue_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_v7_0_soft_reset._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v7_0_sw_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v7_0_hw_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v7_0_hw_init.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v7_0_get_csb_buffer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfx_v7_0_get_csb_buffer.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_gfx_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 37
  %0 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num_gfx_rings, align 8
  %call = tail call i32 @amdgpu_gfx_get_num_kcq(ptr noundef %handle) #12
  %1 = tail call i32 @llvm.smin.i32(i32 %call, i32 8)
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 39
  %2 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %num_compute_rings, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 49
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @gfx_v7_0_gfx_funcs, ptr %funcs, align 4
  %funcs4 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @gfx_v7_0_rlc_funcs, ptr %funcs4, align 4
  %5 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_gfx_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp20.not.i = icmp eq i32 %6, 0
  br i1 %cmp20.not.i, label %entry.for.cond2.preheader.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.cond2.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.body.i.for.cond2.preheader.i_crit_edge, %entry.for.cond2.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp422.not.i = icmp eq i32 %1, 0
  br i1 %cmp422.not.i, label %for.cond2.preheader.i.gfx_v7_0_set_ring_funcs.exit_crit_edge, label %for.cond2.preheader.i.for.body5.i_crit_edge

for.cond2.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body5.i

for.cond2.preheader.i.gfx_v7_0_set_ring_funcs.exit_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_set_ring_funcs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %funcs.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 %i.021.i, i32 1
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gfx_v7_0_ring_funcs_gfx, ptr %funcs.i, align 4
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.body.i.for.cond2.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.cond2.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond2.preheader.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond2.preheader.i.for.body5.i_crit_edge
  %i.123.i = phi i32 [ %inc10.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond2.preheader.i.for.body5.i_crit_edge ]
  %funcs8.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.123.i, i32 1
  %8 = ptrtoint ptr %funcs8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gfx_v7_0_ring_funcs_compute, ptr %funcs8.i, align 4
  %inc10.i = add nuw i32 %i.123.i, 1
  %exitcond24.not.i = icmp eq i32 %inc10.i, %1
  br i1 %exitcond24.not.i, label %for.body5.i.gfx_v7_0_set_ring_funcs.exit_crit_edge, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5.i

for.body5.i.gfx_v7_0_set_ring_funcs.exit_crit_edge: ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_set_ring_funcs.exit

gfx_v7_0_set_ring_funcs.exit:                     ; preds = %for.body5.i.gfx_v7_0_set_ring_funcs.exit_crit_edge, %for.cond2.preheader.i.gfx_v7_0_set_ring_funcs.exit_crit_edge
  %eop_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 40
  %9 = ptrtoint ptr %eop_irq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %eop_irq.i, align 4
  %funcs.i14 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 40, i32 2
  %10 = ptrtoint ptr %funcs.i14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gfx_v7_0_eop_irq_funcs, ptr %funcs.i14, align 4
  %priv_reg_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 41
  %11 = ptrtoint ptr %priv_reg_irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %priv_reg_irq.i, align 8
  %funcs7.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 41, i32 2
  %12 = ptrtoint ptr %funcs7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gfx_v7_0_priv_reg_irq_funcs, ptr %funcs7.i, align 8
  %priv_inst_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 42
  %13 = ptrtoint ptr %priv_inst_irq.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %priv_inst_irq.i, align 4
  %funcs12.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 42, i32 2
  %14 = ptrtoint ptr %funcs12.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @gfx_v7_0_priv_inst_irq_funcs, ptr %funcs12.i, align 4
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13057, i32 noundef 0) #12
  %gds.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 114
  %15 = ptrtoint ptr %gds.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %gds.i, align 8
  %gws_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 114, i32 1
  %16 = ptrtoint ptr %gws_size.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 64, ptr %gws_size.i, align 4
  %oa_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 114, i32 2
  %17 = ptrtoint ptr %oa_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %oa_size.i, align 8
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13128, i32 noundef 0) #12
  %gds_compute_max_wave_id.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 114, i32 3
  %18 = ptrtoint ptr %gds_compute_max_wave_id.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call3.i, ptr %gds_compute_max_wave_id.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_late_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_reg_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 41
  %call = tail call i32 @amdgpu_irq_get(ptr noundef %handle, ptr noundef %priv_reg_irq, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %priv_inst_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 42
  %call2 = tail call i32 @amdgpu_irq_get(ptr noundef %handle, ptr noundef %priv_inst_irq, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  %fw_name.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cond = icmp eq i32 %1, 6
  %spec.select = select i1 %cond, i32 2, i32 1
  %2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 6, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 8
  %num_pipe_per_mec = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 6, i32 5
  %4 = ptrtoint ptr %num_pipe_per_mec to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %num_pipe_per_mec, align 4
  %num_queue_per_pipe = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 6, i32 6
  %5 = ptrtoint ptr %num_queue_per_pipe to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %num_queue_per_pipe, align 8
  %eop_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 40
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 181, ptr noundef %eop_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv_reg_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 41
  %call11 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 184, ptr noundef %priv_reg_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %priv_inst_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 42
  %call16 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 185, ptr noundef %priv_inst_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %scratch.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 8
  %6 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %scratch.i, align 8
  %reg_base.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 8, i32 1
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 49216, ptr %reg_base.i, align 4
  %free_mask.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 8, i32 2
  %8 = ptrtoint ptr %free_mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 255, ptr %free_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name.i) #12
  %9 = call ptr @memset(ptr %fw_name.i, i32 255, i32 30)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13) #12
  %10 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asic_type, align 8
  %switch.tableidx = add i32 %11, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 5
  br i1 %12, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 926, 0\0A.popsection", ""() #12, !srcloc !187
  unreachable

switch.lookup:                                    ; preds = %if.end19
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.gfx_v7_0_sw_init, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.19, ptr noundef nonnull %switch.load) #12
  %pfp_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 11
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle, align 8
  %call9.i = call i32 @request_firmware(ptr noundef %pfp_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %switch.lookup.if.then22_crit_edge

switch.lookup.if.then22_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end.i:                                         ; preds = %switch.lookup
  %16 = ptrtoint ptr %pfp_fw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pfp_fw.i, align 4
  %call12.i = call i32 @amdgpu_ucode_validate(ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end.i.if.then22_crit_edge

if.end.i.if.then22_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end15.i:                                       ; preds = %if.end.i
  %call17.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.20, ptr noundef nonnull %switch.load) #12
  %me_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 9
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle, align 8
  %call21.i = call i32 @request_firmware(ptr noundef %me_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end15.i.if.then22_crit_edge

if.end15.i.if.then22_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end24.i:                                       ; preds = %if.end15.i
  %20 = ptrtoint ptr %me_fw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %me_fw.i, align 4
  %call27.i = call i32 @amdgpu_ucode_validate(ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end24.i.if.then22_crit_edge

if.end24.i.if.then22_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end30.i:                                       ; preds = %if.end24.i
  %call32.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.21, ptr noundef nonnull %switch.load) #12
  %ce_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 13
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle, align 8
  %call36.i = call i32 @request_firmware(ptr noundef %ce_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end30.i.if.then22_crit_edge

if.end30.i.if.then22_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end39.i:                                       ; preds = %if.end30.i
  %24 = ptrtoint ptr %ce_fw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ce_fw.i, align 4
  %call42.i = call i32 @amdgpu_ucode_validate(ptr noundef %25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end39.i.if.then22_crit_edge

if.end39.i.if.then22_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end45.i:                                       ; preds = %if.end39.i
  %call47.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.22, ptr noundef nonnull %switch.load) #12
  %mec_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 17
  %26 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handle, align 8
  %call51.i = call i32 @request_firmware(ptr noundef %mec_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %if.end45.i.if.then22_crit_edge

if.end45.i.if.then22_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end54.i:                                       ; preds = %if.end45.i
  %28 = ptrtoint ptr %mec_fw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mec_fw.i, align 4
  %call57.i = call i32 @amdgpu_ucode_validate(ptr noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end54.i.if.then22_crit_edge

if.end54.i.if.then22_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end60.i:                                       ; preds = %if.end54.i
  %30 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp.i = icmp eq i32 %31, 6
  br i1 %cmp.i, label %if.then62.i, label %if.end60.i.if.end78.i_crit_edge

if.end60.i.if.end78.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.i

if.then62.i:                                      ; preds = %if.end60.i
  %call64.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.23, ptr noundef nonnull %switch.load) #12
  %mec2_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 19
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %handle, align 8
  %call68.i = call i32 @request_firmware(ptr noundef %mec2_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %if.then62.i.if.then22_crit_edge

if.then62.i.if.then22_crit_edge:                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end71.i:                                       ; preds = %if.then62.i
  %34 = ptrtoint ptr %mec2_fw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mec2_fw.i, align 4
  %call74.i = call i32 @amdgpu_ucode_validate(ptr noundef %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end71.i.if.end78.i_crit_edge, label %if.end71.i.if.then22_crit_edge

if.end71.i.if.then22_crit_edge:                   ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end71.i.if.end78.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end71.i.if.end78.i_crit_edge, %if.end60.i.if.end78.i_crit_edge
  %call80.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.24, ptr noundef nonnull %switch.load) #12
  %rlc_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 15
  %36 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handle, align 8
  %call84.i = call i32 @request_firmware(ptr noundef %rlc_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %out.i, label %if.end78.i.if.then22_crit_edge

if.end78.i.if.then22_crit_edge:                   ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

out.i:                                            ; preds = %if.end78.i
  %38 = ptrtoint ptr %rlc_fw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rlc_fw.i, align 4
  %call90.i = call i32 @amdgpu_ucode_validate(ptr noundef %39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.end23, label %out.i.if.then22_crit_edge

out.i.if.then22_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then22:                                        ; preds = %out.i.if.then22_crit_edge, %if.end78.i.if.then22_crit_edge, %if.end71.i.if.then22_crit_edge, %if.then62.i.if.then22_crit_edge, %if.end54.i.if.then22_crit_edge, %if.end45.i.if.then22_crit_edge, %if.end39.i.if.then22_crit_edge, %if.end30.i.if.then22_crit_edge, %if.end24.i.if.then22_crit_edge, %if.end15.i.if.then22_crit_edge, %if.end.i.if.then22_crit_edge, %switch.lookup.if.then22_crit_edge
  %err.0173.i = phi i32 [ %call90.i, %out.i.if.then22_crit_edge ], [ %call84.i, %if.end78.i.if.then22_crit_edge ], [ %call74.i, %if.end71.i.if.then22_crit_edge ], [ %call68.i, %if.then62.i.if.then22_crit_edge ], [ %call57.i, %if.end54.i.if.then22_crit_edge ], [ %call51.i, %if.end45.i.if.then22_crit_edge ], [ %call42.i, %if.end39.i.if.then22_crit_edge ], [ %call36.i, %if.end30.i.if.then22_crit_edge ], [ %call27.i, %if.end24.i.if.then22_crit_edge ], [ %call21.i, %if.end15.i.if.then22_crit_edge ], [ %call12.i, %if.end.i.if.then22_crit_edge ], [ %call9.i, %switch.lookup.if.then22_crit_edge ]
  %call97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %fw_name.i) #15
  %40 = ptrtoint ptr %pfp_fw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pfp_fw.i, align 4
  call void @release_firmware(ptr noundef %41) #12
  %42 = ptrtoint ptr %pfp_fw.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %pfp_fw.i, align 4
  %me_fw103.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 9
  %43 = ptrtoint ptr %me_fw103.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %me_fw103.i, align 4
  call void @release_firmware(ptr noundef %44) #12
  %45 = ptrtoint ptr %me_fw103.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %me_fw103.i, align 4
  %ce_fw107.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 13
  %46 = ptrtoint ptr %ce_fw107.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ce_fw107.i, align 4
  call void @release_firmware(ptr noundef %47) #12
  %48 = ptrtoint ptr %ce_fw107.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %ce_fw107.i, align 4
  %mec_fw111.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 17
  %49 = ptrtoint ptr %mec_fw111.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mec_fw111.i, align 4
  call void @release_firmware(ptr noundef %50) #12
  %51 = ptrtoint ptr %mec_fw111.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %mec_fw111.i, align 4
  %mec2_fw115.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 19
  %52 = ptrtoint ptr %mec2_fw115.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mec2_fw115.i, align 4
  call void @release_firmware(ptr noundef %53) #12
  %54 = ptrtoint ptr %mec2_fw115.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %mec2_fw115.i, align 4
  %rlc_fw119.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 15
  %55 = ptrtoint ptr %rlc_fw119.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rlc_fw119.i, align 4
  call void @release_firmware(ptr noundef %56) #12
  %57 = ptrtoint ptr %rlc_fw119.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %rlc_fw119.i, align 4
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end23:                                         ; preds = %out.i
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #12
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %58 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs, align 4
  %init = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init, align 4
  %call25 = call i32 %61(ptr noundef %handle) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %call29 = call fastcc i32 @gfx_v7_0_mec_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.cond.preheader, label %if.then31

for.cond.preheader:                               ; preds = %if.end28
  %num_gfx_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 37
  %62 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_gfx_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp147.not = icmp eq i32 %63, 0
  br i1 %cmp147.not, label %for.cond.preheader.for.cond42.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond42.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond42.preheader

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0148, 1
  %64 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_gfx_rings, align 8
  %cmp = icmp ult i32 %inc, %65
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.cond42.preheader_crit_edge

for.cond.for.cond42.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond42.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond42.preheader:                             ; preds = %for.cond.for.cond42.preheader_crit_edge, %for.cond.preheader.for.cond42.preheader_crit_edge
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp46158.not = icmp eq i32 %67, 0
  br i1 %cmp46158.not, label %for.cond42.preheader.for.end76_crit_edge, label %for.cond48.preheader.lr.ph

for.cond42.preheader.for.end76_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end76

for.cond48.preheader.lr.ph:                       ; preds = %for.cond42.preheader
  %mec_ring0.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 1
  br label %for.cond48.preheader

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0148 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 %i.0148
  %ring_obj = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 %i.0148, i32 4
  %68 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %ring_obj, align 8
  %name = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 %i.0148, i32 29
  %69 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 1734768640, ptr %name, align 1
  %call38 = call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %arrayidx, i32 noundef 1024, ptr noundef %eop_irq, i32 noundef 0, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond48.preheader:                             ; preds = %for.inc74.for.cond48.preheader_crit_edge, %for.cond48.preheader.lr.ph
  %ring_id.0161 = phi i32 [ 0, %for.cond48.preheader.lr.ph ], [ %ring_id.1.lcssa, %for.inc74.for.cond48.preheader_crit_edge ]
  %i.1159 = phi i32 [ 0, %for.cond48.preheader.lr.ph ], [ %.pre, %for.inc74.for.cond48.preheader_crit_edge ]
  %70 = ptrtoint ptr %num_queue_per_pipe to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_queue_per_pipe, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp52153.not = icmp eq i32 %71, 0
  %.pre = add nuw i32 %i.1159, 1
  br i1 %cmp52153.not, label %for.cond48.preheader.for.inc74_crit_edge, label %for.cond48.preheader.for.cond54.preheader_crit_edge

for.cond48.preheader.for.cond54.preheader_crit_edge: ; preds = %for.cond48.preheader
  br label %for.cond54.preheader

for.cond48.preheader.for.inc74_crit_edge:         ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc74

for.cond54.preheader:                             ; preds = %for.inc71.for.cond54.preheader_crit_edge, %for.cond48.preheader.for.cond54.preheader_crit_edge
  %ring_id.1156 = phi i32 [ %ring_id.2.lcssa, %for.inc71.for.cond54.preheader_crit_edge ], [ %ring_id.0161, %for.cond48.preheader.for.cond54.preheader_crit_edge ]
  %j.0154 = phi i32 [ %inc72, %for.inc71.for.cond54.preheader_crit_edge ], [ 0, %for.cond48.preheader.for.cond54.preheader_crit_edge ]
  %72 = ptrtoint ptr %num_pipe_per_mec to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_pipe_per_mec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp58149.not = icmp eq i32 %73, 0
  br i1 %cmp58149.not, label %for.cond54.preheader.for.inc71_crit_edge, label %for.cond54.preheader.for.body59_crit_edge

for.cond54.preheader.for.body59_crit_edge:        ; preds = %for.cond54.preheader
  br label %for.body59

for.cond54.preheader.for.inc71_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc71

for.body59:                                       ; preds = %for.inc68.for.body59_crit_edge, %for.cond54.preheader.for.body59_crit_edge
  %ring_id.2152 = phi i32 [ %ring_id.3, %for.inc68.for.body59_crit_edge ], [ %ring_id.1156, %for.cond54.preheader.for.body59_crit_edge ]
  %k.0150 = phi i32 [ %inc69, %for.inc68.for.body59_crit_edge ], [ 0, %for.cond54.preheader.for.body59_crit_edge ]
  %call60 = call zeroext i1 @amdgpu_gfx_is_mec_queue_enabled(ptr noundef %handle, i32 noundef %i.1159, i32 noundef %k.0150, i32 noundef %j.0154) #12
  br i1 %call60, label %if.end62, label %for.body59.for.inc68_crit_edge

for.body59.for.inc68_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc68

if.end62:                                         ; preds = %for.body59
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %ring_id.2152
  %me.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %ring_id.2152, i32 16
  %74 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %.pre, ptr %me.i, align 8
  %pipe1.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %ring_id.2152, i32 17
  %75 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %k.0150, ptr %pipe1.i, align 4
  %queue2.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %ring_id.2152, i32 18
  %76 = ptrtoint ptr %queue2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %j.0154, ptr %queue2.i, align 8
  %ring_obj.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %ring_id.2152, i32 4
  %77 = ptrtoint ptr %ring_obj.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %ring_obj.i, align 8
  %use_doorbell.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %ring_id.2152, i32 24
  %78 = ptrtoint ptr %use_doorbell.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %use_doorbell.i, align 4
  %79 = ptrtoint ptr %mec_ring0.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mec_ring0.i, align 4
  %add3.i = add i32 %80, %ring_id.2152
  %doorbell_index4.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %ring_id.2152, i32 23
  %81 = ptrtoint ptr %doorbell_index4.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add3.i, ptr %doorbell_index4.i, align 8
  %name.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %ring_id.2152, i32 29
  %call.i141 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.32, i32 noundef %.pre, i32 noundef %k.0150, i32 noundef %j.0154) #12
  %82 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %me.i, align 8
  %sub.i = add i32 %83, -1
  %84 = ptrtoint ptr %num_pipe_per_mec to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_pipe_per_mec, align 4
  %mul.i = mul i32 %sub.i, %85
  %add11.i = add i32 %mul.i, 2
  %86 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pipe1.i, align 4
  %add13.i = add i32 %add11.i, %87
  %call15.i = call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %arrayidx.i, i32 noundef 1024, ptr noundef %eop_irq, i32 noundef %add13.i, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool64.not = icmp eq i32 %call15.i, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %inc67 = add i32 %ring_id.2152, 1
  br label %for.inc68

for.inc68:                                        ; preds = %if.end66, %for.body59.for.inc68_crit_edge
  %ring_id.3 = phi i32 [ %inc67, %if.end66 ], [ %ring_id.2152, %for.body59.for.inc68_crit_edge ]
  %inc69 = add nuw i32 %k.0150, 1
  %88 = ptrtoint ptr %num_pipe_per_mec to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_pipe_per_mec, align 4
  %cmp58 = icmp ult i32 %inc69, %89
  br i1 %cmp58, label %for.inc68.for.body59_crit_edge, label %for.inc68.for.inc71_crit_edge

for.inc68.for.inc71_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc71

for.inc68.for.body59_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body59

for.inc71:                                        ; preds = %for.inc68.for.inc71_crit_edge, %for.cond54.preheader.for.inc71_crit_edge
  %ring_id.2.lcssa = phi i32 [ %ring_id.1156, %for.cond54.preheader.for.inc71_crit_edge ], [ %ring_id.3, %for.inc68.for.inc71_crit_edge ]
  %inc72 = add nuw i32 %j.0154, 1
  %90 = ptrtoint ptr %num_queue_per_pipe to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_queue_per_pipe, align 8
  %cmp52 = icmp ult i32 %inc72, %91
  br i1 %cmp52, label %for.inc71.for.cond54.preheader_crit_edge, label %for.inc71.for.inc74_crit_edge

for.inc71.for.inc74_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc74

for.inc71.for.cond54.preheader_crit_edge:         ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond54.preheader

for.inc74:                                        ; preds = %for.inc71.for.inc74_crit_edge, %for.cond48.preheader.for.inc74_crit_edge
  %ring_id.1.lcssa = phi i32 [ %ring_id.0161, %for.cond48.preheader.for.inc74_crit_edge ], [ %ring_id.2.lcssa, %for.inc71.for.inc74_crit_edge ]
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %2, align 8
  %cmp46 = icmp ult i32 %.pre, %93
  br i1 %cmp46, label %for.inc74.for.cond48.preheader_crit_edge, label %for.inc74.for.end76_crit_edge

for.inc74.for.end76_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end76

for.inc74.for.cond48.preheader_crit_edge:         ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond48.preheader

for.end76:                                        ; preds = %for.inc74.for.end76_crit_edge, %for.cond42.preheader.for.end76_crit_edge
  %ce_ram_size = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 47
  %94 = ptrtoint ptr %ce_ram_size to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 32768, ptr %ce_ram_size, align 4
  call fastcc void @gfx_v7_0_gpu_early_init(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %for.end76, %if.end62.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then31, %if.then27, %if.then22, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0173.i, %if.then22 ], [ %call25, %if.then27 ], [ %call29, %if.then31 ], [ 0, %for.end76 ], [ %call, %entry.cleanup_crit_edge ], [ %call11, %if.end.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call15.i, %if.end62.cleanup_crit_edge ], [ %call38, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_gfx_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 37
  %0 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_gfx_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp43.not = icmp eq i32 %1, 0
  br i1 %cmp43.not, label %entry.for.cond2.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.body.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 39
  %2 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_compute_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp445.not = icmp eq i32 %3, 0
  br i1 %cmp445.not, label %for.cond2.preheader.gfx_v7_0_cp_compute_fini.exit_crit_edge, label %for.cond2.preheader.for.body5_crit_edge

for.cond2.preheader.for.body5_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body5

for.cond2.preheader.gfx_v7_0_cp_compute_fini.exit_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_cp_compute_fini.exit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 %i.044
  tail call void @amdgpu_ring_fini(ptr noundef %arrayidx) #12
  %inc = add nuw i32 %i.044, 1
  %4 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_gfx_rings, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond2.preheader_crit_edge

for.body.for.cond2.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.cond2.preheader.for.body5_crit_edge
  %i.146 = phi i32 [ %inc9, %for.body5.for.body5_crit_edge ], [ 0, %for.cond2.preheader.for.body5_crit_edge ]
  %arrayidx7 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.146
  tail call void @amdgpu_ring_fini(ptr noundef %arrayidx7) #12
  %inc9 = add nuw i32 %i.146, 1
  %6 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_compute_rings, align 8
  %cmp4 = icmp ult i32 %inc9, %7
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.end10

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5

for.end10:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %phi.cmp = icmp eq i32 %7, 0
  br i1 %phi.cmp, label %for.end10.gfx_v7_0_cp_compute_fini.exit_crit_edge, label %for.end10.for.body.i_crit_edge

for.end10.for.body.i_crit_edge:                   ; preds = %for.end10
  br label %for.body.i

for.end10.gfx_v7_0_cp_compute_fini.exit_crit_edge: ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_cp_compute_fini.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end10.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end10.for.body.i_crit_edge ]
  %mqd_obj.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.06.i, i32 19
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mqd_obj.i, ptr noundef null, ptr noundef null) #12
  %inc.i = add nuw i32 %i.06.i, 1
  %8 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_compute_rings, align 8
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.gfx_v7_0_cp_compute_fini.exit_crit_edge

for.body.i.gfx_v7_0_cp_compute_fini.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_cp_compute_fini.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

gfx_v7_0_cp_compute_fini.exit:                    ; preds = %for.body.i.gfx_v7_0_cp_compute_fini.exit_crit_edge, %for.end10.gfx_v7_0_cp_compute_fini.exit_crit_edge, %for.cond2.preheader.gfx_v7_0_cp_compute_fini.exit_crit_edge
  tail call void @amdgpu_gfx_rlc_fini(ptr noundef %handle) #12
  %mec.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 6
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mec.i, ptr noundef null, ptr noundef null) #12
  %clear_state_obj = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 5
  %clear_state_gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 6
  %cs_ptr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 7
  tail call void @amdgpu_bo_free_kernel(ptr noundef %clear_state_obj, ptr noundef %clear_state_gpu_addr, ptr noundef %cs_ptr) #12
  %cp_table_size = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 13
  %10 = ptrtoint ptr %cp_table_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cp_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %gfx_v7_0_cp_compute_fini.exit.if.end_crit_edge, label %if.then

gfx_v7_0_cp_compute_fini.exit.if.end_crit_edge:   ; preds = %gfx_v7_0_cp_compute_fini.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %gfx_v7_0_cp_compute_fini.exit
  call void @__sanitizer_cov_trace_pc() #14
  %cp_table_obj = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 10
  %cp_table_gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 11
  %cp_table_ptr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 12
  tail call void @amdgpu_bo_free_kernel(ptr noundef %cp_table_obj, ptr noundef %cp_table_gpu_addr, ptr noundef %cp_table_ptr) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %gfx_v7_0_cp_compute_fini.exit.if.end_crit_edge
  %pfp_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 11
  %12 = ptrtoint ptr %pfp_fw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pfp_fw.i, align 4
  tail call void @release_firmware(ptr noundef %13) #12
  %14 = ptrtoint ptr %pfp_fw.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pfp_fw.i, align 4
  %me_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 9
  %15 = ptrtoint ptr %me_fw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %me_fw.i, align 4
  tail call void @release_firmware(ptr noundef %16) #12
  %17 = ptrtoint ptr %me_fw.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %me_fw.i, align 4
  %ce_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 13
  %18 = ptrtoint ptr %ce_fw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ce_fw.i, align 4
  tail call void @release_firmware(ptr noundef %19) #12
  %20 = ptrtoint ptr %ce_fw.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ce_fw.i, align 4
  %mec_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 17
  %21 = ptrtoint ptr %mec_fw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mec_fw.i, align 4
  tail call void @release_firmware(ptr noundef %22) #12
  %23 = ptrtoint ptr %mec_fw.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %mec_fw.i, align 4
  %mec2_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 19
  %24 = ptrtoint ptr %mec2_fw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mec2_fw.i, align 4
  tail call void @release_firmware(ptr noundef %25) #12
  %26 = ptrtoint ptr %mec2_fw.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %mec2_fw.i, align 4
  %rlc_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 15
  %27 = ptrtoint ptr %rlc_fw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rlc_fw.i, align 4
  tail call void @release_firmware(ptr noundef %28) #12
  %29 = ptrtoint ptr %rlc_fw.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rlc_fw.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  %mqd_gpu_addr.i.i.i = alloca i64, align 8
  %mqd.i.i.i = alloca ptr, align 4
  %disable_masks.i.i = alloca [8 x i32], align 4
  %se_mask.i.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8192, i32 noundef 255, i32 noundef 0) #12
  %gb_addr_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  %0 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gb_addr_config.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9790, i32 noundef %1, i32 noundef 0) #12
  %2 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gb_addr_config.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3026, i32 noundef %3, i32 noundef 0) #12
  %4 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gb_addr_config.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 768, i32 noundef %5, i32 noundef 0) #12
  %tile_mode_array.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27
  %mem_row_size_in_kb.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 16
  %6 = ptrtoint ptr %mem_row_size_in_kb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_row_size_in_kb.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch.selectcmp.i.i = icmp eq i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.selectcmp432.i.i = icmp eq i32 %7, 1
  %macrotile_mode_array.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 12288, i32 10240
  %switch.select433.i.i = select i1 %switch.selectcmp432.i.i, i32 8192, i32 %switch.select.i.i
  %asic_type.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %8 = call ptr @memset(ptr %tile_mode_array.i.i, i32 0, i32 192)
  %9 = ptrtoint ptr %asic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asic_type.i.i, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %sw.default158.i.i [
    i32 5, label %sw.bb15.i.i
    i32 8, label %sw.bb84.i.i
  ]

sw.bb15.i.i:                                      ; preds = %entry
  %12 = ptrtoint ptr %tile_mode_array.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8388944, ptr %tile_mode_array.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 1
  %13 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8390992, ptr %arrayidx17.i.i, align 4
  %arrayidx18.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 2
  %14 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8393040, ptr %arrayidx18.i.i, align 4
  %arrayidx19.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 3
  %15 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8395088, ptr %arrayidx19.i.i, align 4
  %or.i.i = or i32 %switch.select433.i.i, 8388944
  %arrayidx20.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 4
  %16 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i, ptr %arrayidx20.i.i, align 4
  %arrayidx21.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 5
  %17 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8388936, ptr %arrayidx21.i.i, align 4
  %or23.i.i = or i32 %switch.select433.i.i, 8388948
  %arrayidx24.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 6
  %18 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or23.i.i, ptr %arrayidx24.i.i, align 4
  %arrayidx26.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 7
  %19 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %switch.select433.i.i, ptr %arrayidx26.i.i, align 4
  %arrayidx27.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 8
  %20 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 324, ptr %arrayidx27.i.i, align 4
  %arrayidx28.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 9
  %21 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 328, ptr %arrayidx28.i.i, align 4
  %arrayidx29.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 10
  %22 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 33554768, ptr %arrayidx29.i.i, align 4
  %arrayidx30.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 11
  %23 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 100663636, ptr %arrayidx30.i.i, align 4
  %arrayidx32.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 12
  %24 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %switch.select433.i.i, ptr %arrayidx32.i.i, align 4
  %arrayidx33.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 13
  %25 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4194632, ptr %arrayidx33.i.i, align 4
  %arrayidx34.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 14
  %26 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 37749072, ptr %arrayidx34.i.i, align 4
  %arrayidx35.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 15
  %27 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 37749104, ptr %arrayidx35.i.i, align 4
  %arrayidx36.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 16
  %28 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 104857940, ptr %arrayidx36.i.i, align 4
  %arrayidx38.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 17
  %29 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %switch.select433.i.i, ptr %arrayidx38.i.i, align 4
  %arrayidx39.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 18
  %30 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4194636, ptr %arrayidx39.i.i, align 4
  %arrayidx40.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 19
  %31 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4194636, ptr %arrayidx40.i.i, align 4
  %arrayidx41.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 20
  %32 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4194652, ptr %arrayidx41.i.i, align 4
  %arrayidx42.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 21
  %33 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4194676, ptr %arrayidx42.i.i, align 4
  %arrayidx43.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 22
  %34 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4194660, ptr %arrayidx43.i.i, align 4
  %arrayidx45.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 23
  %35 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %switch.select433.i.i, ptr %arrayidx45.i.i, align 4
  %arrayidx46.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 24
  %36 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4194652, ptr %arrayidx46.i.i, align 4
  %arrayidx47.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 25
  %37 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4194656, ptr %arrayidx47.i.i, align 4
  %arrayidx48.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 26
  %38 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4194680, ptr %arrayidx48.i.i, align 4
  %arrayidx49.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 27
  %39 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 12583240, ptr %arrayidx49.i.i, align 4
  %arrayidx50.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 28
  %40 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 46137680, ptr %arrayidx50.i.i, align 4
  %arrayidx51.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 29
  %41 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 113246548, ptr %arrayidx51.i.i, align 4
  %arrayidx53.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 30
  %42 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %switch.select433.i.i, ptr %arrayidx53.i.i, align 4
  %43 = ptrtoint ptr %macrotile_mode_array.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 232, ptr %macrotile_mode_array.i.i, align 4
  %arrayidx55.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 1
  %44 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 228, ptr %arrayidx55.i.i, align 4
  %arrayidx56.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 2
  %45 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 208, ptr %arrayidx56.i.i, align 4
  %arrayidx57.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 3
  %46 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 208, ptr %arrayidx57.i.i, align 4
  %arrayidx58.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 4
  %47 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 208, ptr %arrayidx58.i.i, align 4
  %arrayidx59.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 5
  %48 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 144, ptr %arrayidx59.i.i, align 4
  %arrayidx60.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 6
  %49 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 64, ptr %arrayidx60.i.i, align 4
  %arrayidx61.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 8
  %50 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 237, ptr %arrayidx61.i.i, align 4
  %arrayidx62.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 9
  %51 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 233, ptr %arrayidx62.i.i, align 4
  %arrayidx63.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 10
  %52 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 232, ptr %arrayidx63.i.i, align 4
  %arrayidx64.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 11
  %53 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 228, ptr %arrayidx64.i.i, align 4
  %arrayidx65.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 12
  %54 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 208, ptr %arrayidx65.i.i, align 4
  %arrayidx66.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 13
  %55 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 144, ptr %arrayidx66.i.i, align 4
  %arrayidx67.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 14
  %56 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 64, ptr %arrayidx67.i.i, align 4
  br label %for.body70.i.i

for.body70.i.i:                                   ; preds = %for.body70.i.i.for.body70.i.i_crit_edge, %sw.bb15.i.i
  %reg_offset.2441.i.i = phi i32 [ 0, %sw.bb15.i.i ], [ %inc73.i.i, %for.body70.i.i.for.body70.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %reg_offset.2441.i.i, 9796
  %arrayidx71.i.i = getelementptr i32, ptr %tile_mode_array.i.i, i32 %reg_offset.2441.i.i
  %57 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx71.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef %58, i32 noundef 0) #12
  %inc73.i.i = add nuw nsw i32 %reg_offset.2441.i.i, 1
  %exitcond450.not.i.i = icmp eq i32 %inc73.i.i, 32
  br i1 %exitcond450.not.i.i, label %for.body70.i.i.for.body77.i.i_crit_edge, label %for.body70.i.i.for.body70.i.i_crit_edge

for.body70.i.i.for.body70.i.i_crit_edge:          ; preds = %for.body70.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body70.i.i

for.body70.i.i.for.body77.i.i_crit_edge:          ; preds = %for.body70.i.i
  br label %for.body77.i.i

for.body77.i.i:                                   ; preds = %for.inc81.i.i.for.body77.i.i_crit_edge, %for.body70.i.i.for.body77.i.i_crit_edge
  %reg_offset.3442.i.i = phi i32 [ %inc82.i.i, %for.inc81.i.i.for.body77.i.i_crit_edge ], [ 0, %for.body70.i.i.for.body77.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %reg_offset.3442.i.i)
  %cmp78.not.i.i = icmp eq i32 %reg_offset.3442.i.i, 7
  br i1 %cmp78.not.i.i, label %for.body77.i.i.for.inc81.i.i_crit_edge, label %if.then.i.i

for.body77.i.i.for.inc81.i.i_crit_edge:           ; preds = %for.body77.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc81.i.i

if.then.i.i:                                      ; preds = %for.body77.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add79.i.i = add nuw nsw i32 %reg_offset.3442.i.i, 9828
  %arrayidx80.i.i = getelementptr i32, ptr %macrotile_mode_array.i.i, i32 %reg_offset.3442.i.i
  %59 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx80.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add79.i.i, i32 noundef %60, i32 noundef 0) #12
  br label %for.inc81.i.i

for.inc81.i.i:                                    ; preds = %if.then.i.i, %for.body77.i.i.for.inc81.i.i_crit_edge
  %inc82.i.i = add nuw nsw i32 %reg_offset.3442.i.i, 1
  %exitcond451.not.i.i = icmp eq i32 %inc82.i.i, 16
  br i1 %exitcond451.not.i.i, label %for.inc81.i.i.gfx_v7_0_tiling_mode_table_init.exit.i_crit_edge, label %for.inc81.i.i.for.body77.i.i_crit_edge

for.inc81.i.i.for.body77.i.i_crit_edge:           ; preds = %for.inc81.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body77.i.i

for.inc81.i.i.gfx_v7_0_tiling_mode_table_init.exit.i_crit_edge: ; preds = %for.inc81.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_tiling_mode_table_init.exit.i

sw.bb84.i.i:                                      ; preds = %entry
  %61 = ptrtoint ptr %tile_mode_array.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8389712, ptr %tile_mode_array.i.i, align 4
  %arrayidx86.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 1
  %62 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 8391760, ptr %arrayidx86.i.i, align 4
  %arrayidx87.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 2
  %63 = ptrtoint ptr %arrayidx87.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 8393808, ptr %arrayidx87.i.i, align 4
  %arrayidx88.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 3
  %64 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8395856, ptr %arrayidx88.i.i, align 4
  %or90.i.i = or i32 %switch.select433.i.i, 8389712
  %arrayidx91.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 4
  %65 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or90.i.i, ptr %arrayidx91.i.i, align 4
  %or93.i.i = or i32 %switch.select433.i.i, 8389704
  %arrayidx94.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 5
  %66 = ptrtoint ptr %arrayidx94.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or93.i.i, ptr %arrayidx94.i.i, align 4
  %or96.i.i = or i32 %switch.select433.i.i, 8389716
  %arrayidx97.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 6
  %67 = ptrtoint ptr %arrayidx97.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or96.i.i, ptr %arrayidx97.i.i, align 4
  %or99.i.i = or i32 %switch.select433.i.i, 8388948
  %arrayidx100.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 7
  %68 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or99.i.i, ptr %arrayidx100.i.i, align 4
  %arrayidx101.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 8
  %69 = ptrtoint ptr %arrayidx101.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1092, ptr %arrayidx101.i.i, align 4
  %arrayidx102.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 9
  %70 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1096, ptr %arrayidx102.i.i, align 4
  %arrayidx103.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 10
  %71 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 33555536, ptr %arrayidx103.i.i, align 4
  %arrayidx104.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 11
  %72 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 100664404, ptr %arrayidx104.i.i, align 4
  %arrayidx105.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 12
  %73 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 100663640, ptr %arrayidx105.i.i, align 4
  %arrayidx106.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 13
  %74 = ptrtoint ptr %arrayidx106.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4195400, ptr %arrayidx106.i.i, align 4
  %arrayidx107.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 14
  %75 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 37749840, ptr %arrayidx107.i.i, align 4
  %arrayidx108.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 15
  %76 = ptrtoint ptr %arrayidx108.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 37749872, ptr %arrayidx108.i.i, align 4
  %arrayidx109.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 16
  %77 = ptrtoint ptr %arrayidx109.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 104858708, ptr %arrayidx109.i.i, align 4
  %arrayidx110.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 17
  %78 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 104857940, ptr %arrayidx110.i.i, align 4
  %arrayidx111.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 18
  %79 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4195404, ptr %arrayidx111.i.i, align 4
  %arrayidx112.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 19
  %80 = ptrtoint ptr %arrayidx112.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 16778316, ptr %arrayidx112.i.i, align 4
  %arrayidx113.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 20
  %81 = ptrtoint ptr %arrayidx113.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 16778332, ptr %arrayidx113.i.i, align 4
  %arrayidx114.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 21
  %82 = ptrtoint ptr %arrayidx114.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 16778356, ptr %arrayidx114.i.i, align 4
  %arrayidx115.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 22
  %83 = ptrtoint ptr %arrayidx115.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 16778340, ptr %arrayidx115.i.i, align 4
  %arrayidx116.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 23
  %84 = ptrtoint ptr %arrayidx116.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 16777572, ptr %arrayidx116.i.i, align 4
  %arrayidx117.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 24
  %85 = ptrtoint ptr %arrayidx117.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 4195420, ptr %arrayidx117.i.i, align 4
  %arrayidx118.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 25
  %86 = ptrtoint ptr %arrayidx118.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 16778336, ptr %arrayidx118.i.i, align 4
  %arrayidx119.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 26
  %87 = ptrtoint ptr %arrayidx119.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 16778360, ptr %arrayidx119.i.i, align 4
  %arrayidx120.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 27
  %88 = ptrtoint ptr %arrayidx120.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 12584008, ptr %arrayidx120.i.i, align 4
  %arrayidx121.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 28
  %89 = ptrtoint ptr %arrayidx121.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 46138448, ptr %arrayidx121.i.i, align 4
  %arrayidx122.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 29
  %90 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 113247316, ptr %arrayidx122.i.i, align 4
  %arrayidx123.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 30
  %91 = ptrtoint ptr %arrayidx123.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 113246548, ptr %arrayidx123.i.i, align 4
  %92 = ptrtoint ptr %macrotile_mode_array.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 216, ptr %macrotile_mode_array.i.i, align 4
  %arrayidx125.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 1
  %93 = ptrtoint ptr %arrayidx125.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 212, ptr %arrayidx125.i.i, align 4
  %arrayidx126.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 2
  %94 = ptrtoint ptr %arrayidx126.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 192, ptr %arrayidx126.i.i, align 4
  %arrayidx127.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 3
  %95 = ptrtoint ptr %arrayidx127.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 192, ptr %arrayidx127.i.i, align 4
  %arrayidx128.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 4
  %96 = ptrtoint ptr %arrayidx128.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 128, ptr %arrayidx128.i.i, align 4
  %arrayidx129.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 5
  %97 = ptrtoint ptr %arrayidx129.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 64, ptr %arrayidx129.i.i, align 4
  %arrayidx130.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 6
  %98 = ptrtoint ptr %arrayidx130.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 64, ptr %arrayidx130.i.i, align 4
  %arrayidx131.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 8
  %99 = ptrtoint ptr %arrayidx131.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 216, ptr %arrayidx131.i.i, align 4
  %arrayidx132.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 9
  %100 = ptrtoint ptr %arrayidx132.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 212, ptr %arrayidx132.i.i, align 4
  %arrayidx133.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 10
  %101 = ptrtoint ptr %arrayidx133.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 192, ptr %arrayidx133.i.i, align 4
  %arrayidx134.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 11
  %102 = ptrtoint ptr %arrayidx134.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 128, ptr %arrayidx134.i.i, align 4
  %arrayidx135.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 12
  %103 = ptrtoint ptr %arrayidx135.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 208, ptr %arrayidx135.i.i, align 4
  %arrayidx136.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 13
  %104 = ptrtoint ptr %arrayidx136.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 144, ptr %arrayidx136.i.i, align 4
  %arrayidx137.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 14
  %105 = ptrtoint ptr %arrayidx137.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 64, ptr %arrayidx137.i.i, align 4
  br label %for.body140.i.i

for.body140.i.i:                                  ; preds = %for.body140.i.i.for.body140.i.i_crit_edge, %sw.bb84.i.i
  %reg_offset.4438.i.i = phi i32 [ 0, %sw.bb84.i.i ], [ %inc144.i.i, %for.body140.i.i.for.body140.i.i_crit_edge ]
  %add141.i.i = add nuw nsw i32 %reg_offset.4438.i.i, 9796
  %arrayidx142.i.i = getelementptr i32, ptr %tile_mode_array.i.i, i32 %reg_offset.4438.i.i
  %106 = ptrtoint ptr %arrayidx142.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx142.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add141.i.i, i32 noundef %107, i32 noundef 0) #12
  %inc144.i.i = add nuw nsw i32 %reg_offset.4438.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc144.i.i, 32
  br i1 %exitcond.not.i.i, label %for.body140.i.i.for.body148.i.i_crit_edge, label %for.body140.i.i.for.body140.i.i_crit_edge

for.body140.i.i.for.body140.i.i_crit_edge:        ; preds = %for.body140.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body140.i.i

for.body140.i.i.for.body148.i.i_crit_edge:        ; preds = %for.body140.i.i
  br label %for.body148.i.i

for.body148.i.i:                                  ; preds = %for.inc154.i.i.for.body148.i.i_crit_edge, %for.body140.i.i.for.body148.i.i_crit_edge
  %reg_offset.5439.i.i = phi i32 [ %inc155.i.i, %for.inc154.i.i.for.body148.i.i_crit_edge ], [ 0, %for.body140.i.i.for.body148.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %reg_offset.5439.i.i)
  %cmp149.not.i.i = icmp eq i32 %reg_offset.5439.i.i, 7
  br i1 %cmp149.not.i.i, label %for.body148.i.i.for.inc154.i.i_crit_edge, label %if.then150.i.i

for.body148.i.i.for.inc154.i.i_crit_edge:         ; preds = %for.body148.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc154.i.i

if.then150.i.i:                                   ; preds = %for.body148.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add151.i.i = add nuw nsw i32 %reg_offset.5439.i.i, 9828
  %arrayidx152.i.i = getelementptr i32, ptr %macrotile_mode_array.i.i, i32 %reg_offset.5439.i.i
  %108 = ptrtoint ptr %arrayidx152.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx152.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add151.i.i, i32 noundef %109, i32 noundef 0) #12
  br label %for.inc154.i.i

for.inc154.i.i:                                   ; preds = %if.then150.i.i, %for.body148.i.i.for.inc154.i.i_crit_edge
  %inc155.i.i = add nuw nsw i32 %reg_offset.5439.i.i, 1
  %exitcond449.not.i.i = icmp eq i32 %inc155.i.i, 16
  br i1 %exitcond449.not.i.i, label %for.inc154.i.i.gfx_v7_0_tiling_mode_table_init.exit.i_crit_edge, label %for.inc154.i.i.for.body148.i.i_crit_edge

for.inc154.i.i.for.body148.i.i_crit_edge:         ; preds = %for.inc154.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body148.i.i

for.inc154.i.i.gfx_v7_0_tiling_mode_table_init.exit.i_crit_edge: ; preds = %for.inc154.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_tiling_mode_table_init.exit.i

sw.default158.i.i:                                ; preds = %entry
  %110 = ptrtoint ptr %tile_mode_array.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 8388624, ptr %tile_mode_array.i.i, align 4
  %arrayidx160.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 1
  %111 = ptrtoint ptr %arrayidx160.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 8390672, ptr %arrayidx160.i.i, align 4
  %arrayidx161.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 2
  %112 = ptrtoint ptr %arrayidx161.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 8392720, ptr %arrayidx161.i.i, align 4
  %arrayidx162.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 3
  %113 = ptrtoint ptr %arrayidx162.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 8394768, ptr %arrayidx162.i.i, align 4
  %or164.i.i = or i32 %switch.select433.i.i, 8388624
  %arrayidx165.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 4
  %114 = ptrtoint ptr %arrayidx165.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or164.i.i, ptr %arrayidx165.i.i, align 4
  %arrayidx166.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 5
  %115 = ptrtoint ptr %arrayidx166.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 8388616, ptr %arrayidx166.i.i, align 4
  %or168.i.i = or i32 %switch.select433.i.i, 8388628
  %arrayidx169.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 6
  %116 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or168.i.i, ptr %arrayidx169.i.i, align 4
  %arrayidx171.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 7
  %117 = ptrtoint ptr %arrayidx171.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %switch.select433.i.i, ptr %arrayidx171.i.i, align 4
  %arrayidx172.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 8
  %118 = ptrtoint ptr %arrayidx172.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 4, ptr %arrayidx172.i.i, align 4
  %arrayidx173.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 9
  %119 = ptrtoint ptr %arrayidx173.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 8, ptr %arrayidx173.i.i, align 4
  %arrayidx174.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 10
  %120 = ptrtoint ptr %arrayidx174.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 33554448, ptr %arrayidx174.i.i, align 4
  %arrayidx175.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 11
  %121 = ptrtoint ptr %arrayidx175.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 100663316, ptr %arrayidx175.i.i, align 4
  %arrayidx177.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 12
  %122 = ptrtoint ptr %arrayidx177.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %switch.select433.i.i, ptr %arrayidx177.i.i, align 4
  %arrayidx178.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 13
  %123 = ptrtoint ptr %arrayidx178.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 4194312, ptr %arrayidx178.i.i, align 4
  %arrayidx179.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 14
  %124 = ptrtoint ptr %arrayidx179.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 37748752, ptr %arrayidx179.i.i, align 4
  %arrayidx180.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 15
  %125 = ptrtoint ptr %arrayidx180.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 37748784, ptr %arrayidx180.i.i, align 4
  %arrayidx181.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 16
  %126 = ptrtoint ptr %arrayidx181.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 104857620, ptr %arrayidx181.i.i, align 4
  %arrayidx183.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 17
  %127 = ptrtoint ptr %arrayidx183.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %switch.select433.i.i, ptr %arrayidx183.i.i, align 4
  %arrayidx184.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 18
  %128 = ptrtoint ptr %arrayidx184.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 4194316, ptr %arrayidx184.i.i, align 4
  %arrayidx185.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 19
  %129 = ptrtoint ptr %arrayidx185.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 16777228, ptr %arrayidx185.i.i, align 4
  %arrayidx186.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 20
  %130 = ptrtoint ptr %arrayidx186.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 16777244, ptr %arrayidx186.i.i, align 4
  %arrayidx187.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 21
  %131 = ptrtoint ptr %arrayidx187.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 16777268, ptr %arrayidx187.i.i, align 4
  %arrayidx188.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 22
  %132 = ptrtoint ptr %arrayidx188.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 16777252, ptr %arrayidx188.i.i, align 4
  %arrayidx190.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 23
  %133 = ptrtoint ptr %arrayidx190.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %switch.select433.i.i, ptr %arrayidx190.i.i, align 4
  %arrayidx191.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 24
  %134 = ptrtoint ptr %arrayidx191.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 4194332, ptr %arrayidx191.i.i, align 4
  %arrayidx192.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 25
  %135 = ptrtoint ptr %arrayidx192.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 16777248, ptr %arrayidx192.i.i, align 4
  %arrayidx193.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 26
  %136 = ptrtoint ptr %arrayidx193.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 16777272, ptr %arrayidx193.i.i, align 4
  %arrayidx194.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 27
  %137 = ptrtoint ptr %arrayidx194.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 12582920, ptr %arrayidx194.i.i, align 4
  %arrayidx195.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 28
  %138 = ptrtoint ptr %arrayidx195.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 46137360, ptr %arrayidx195.i.i, align 4
  %arrayidx196.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 29
  %139 = ptrtoint ptr %arrayidx196.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 113246228, ptr %arrayidx196.i.i, align 4
  %arrayidx198.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 27, i32 30
  %140 = ptrtoint ptr %arrayidx198.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %switch.select433.i.i, ptr %arrayidx198.i.i, align 4
  %141 = ptrtoint ptr %macrotile_mode_array.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 168, ptr %macrotile_mode_array.i.i, align 4
  %arrayidx200.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 1
  %142 = ptrtoint ptr %arrayidx200.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 164, ptr %arrayidx200.i.i, align 4
  %arrayidx201.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 2
  %143 = ptrtoint ptr %arrayidx201.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 148, ptr %arrayidx201.i.i, align 4
  %arrayidx202.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 3
  %144 = ptrtoint ptr %arrayidx202.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 144, ptr %arrayidx202.i.i, align 4
  %arrayidx203.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 4
  %145 = ptrtoint ptr %arrayidx203.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 144, ptr %arrayidx203.i.i, align 4
  %arrayidx204.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 5
  %146 = ptrtoint ptr %arrayidx204.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 144, ptr %arrayidx204.i.i, align 4
  %arrayidx205.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 6
  %147 = ptrtoint ptr %arrayidx205.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 144, ptr %arrayidx205.i.i, align 4
  %arrayidx206.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 8
  %148 = ptrtoint ptr %arrayidx206.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 238, ptr %arrayidx206.i.i, align 4
  %arrayidx207.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 9
  %149 = ptrtoint ptr %arrayidx207.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 234, ptr %arrayidx207.i.i, align 4
  %arrayidx208.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 10
  %150 = ptrtoint ptr %arrayidx208.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 233, ptr %arrayidx208.i.i, align 4
  %arrayidx209.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 11
  %151 = ptrtoint ptr %arrayidx209.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 229, ptr %arrayidx209.i.i, align 4
  %arrayidx210.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 12
  %152 = ptrtoint ptr %arrayidx210.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 228, ptr %arrayidx210.i.i, align 4
  %arrayidx211.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 13
  %153 = ptrtoint ptr %arrayidx211.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 224, ptr %arrayidx211.i.i, align 4
  %arrayidx212.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 28, i32 14
  %154 = ptrtoint ptr %arrayidx212.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 144, ptr %arrayidx212.i.i, align 4
  br label %for.body215.i.i

for.body215.i.i:                                  ; preds = %for.body215.i.i.for.body215.i.i_crit_edge, %sw.default158.i.i
  %reg_offset.6444.i.i = phi i32 [ 0, %sw.default158.i.i ], [ %inc219.i.i, %for.body215.i.i.for.body215.i.i_crit_edge ]
  %add216.i.i = add nuw nsw i32 %reg_offset.6444.i.i, 9796
  %arrayidx217.i.i = getelementptr i32, ptr %tile_mode_array.i.i, i32 %reg_offset.6444.i.i
  %155 = ptrtoint ptr %arrayidx217.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx217.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add216.i.i, i32 noundef %156, i32 noundef 0) #12
  %inc219.i.i = add nuw nsw i32 %reg_offset.6444.i.i, 1
  %exitcond452.not.i.i = icmp eq i32 %inc219.i.i, 32
  br i1 %exitcond452.not.i.i, label %for.body215.i.i.for.body223.i.i_crit_edge, label %for.body215.i.i.for.body215.i.i_crit_edge

for.body215.i.i.for.body215.i.i_crit_edge:        ; preds = %for.body215.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body215.i.i

for.body215.i.i.for.body223.i.i_crit_edge:        ; preds = %for.body215.i.i
  br label %for.body223.i.i

for.body223.i.i:                                  ; preds = %for.inc229.i.i.for.body223.i.i_crit_edge, %for.body215.i.i.for.body223.i.i_crit_edge
  %reg_offset.7445.i.i = phi i32 [ %inc230.i.i, %for.inc229.i.i.for.body223.i.i_crit_edge ], [ 0, %for.body215.i.i.for.body223.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %reg_offset.7445.i.i)
  %cmp224.not.i.i = icmp eq i32 %reg_offset.7445.i.i, 7
  br i1 %cmp224.not.i.i, label %for.body223.i.i.for.inc229.i.i_crit_edge, label %if.then225.i.i

for.body223.i.i.for.inc229.i.i_crit_edge:         ; preds = %for.body223.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc229.i.i

if.then225.i.i:                                   ; preds = %for.body223.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add226.i.i = add nuw nsw i32 %reg_offset.7445.i.i, 9828
  %arrayidx227.i.i = getelementptr i32, ptr %macrotile_mode_array.i.i, i32 %reg_offset.7445.i.i
  %157 = ptrtoint ptr %arrayidx227.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx227.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add226.i.i, i32 noundef %158, i32 noundef 0) #12
  br label %for.inc229.i.i

for.inc229.i.i:                                   ; preds = %if.then225.i.i, %for.body223.i.i.for.inc229.i.i_crit_edge
  %inc230.i.i = add nuw nsw i32 %reg_offset.7445.i.i, 1
  %exitcond453.not.i.i = icmp eq i32 %inc230.i.i, 16
  br i1 %exitcond453.not.i.i, label %for.inc229.i.i.gfx_v7_0_tiling_mode_table_init.exit.i_crit_edge, label %for.inc229.i.i.for.body223.i.i_crit_edge

for.inc229.i.i.for.body223.i.i_crit_edge:         ; preds = %for.inc229.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body223.i.i

for.inc229.i.i.gfx_v7_0_tiling_mode_table_init.exit.i_crit_edge: ; preds = %for.inc229.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_tiling_mode_table_init.exit.i

gfx_v7_0_tiling_mode_table_init.exit.i:           ; preds = %for.inc229.i.i.gfx_v7_0_tiling_mode_table_init.exit.i_crit_edge, %for.inc154.i.i.gfx_v7_0_tiling_mode_table_init.exit.i_crit_edge, %for.inc81.i.i.gfx_v7_0_tiling_mode_table_init.exit.i_crit_edge
  %config.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1
  %max_backends_per_se.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 4
  %159 = ptrtoint ptr %max_backends_per_se.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %max_backends_per_se.i.i, align 8
  %max_sh_per_se.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 3
  %161 = ptrtoint ptr %max_sh_per_se.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %max_sh_per_se.i.i, align 4
  %div.i.i = udiv i32 %160, %162
  %grbm_idx_mutex.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i.i, i32 noundef 0) #12
  %163 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %config.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp505.not.i.i = icmp eq i32 %164, 0
  br i1 %cmp505.not.i.i, label %gfx_v7_0_tiling_mode_table_init.exit.i.for.end17.i.i_crit_edge, label %gfx_v7_0_tiling_mode_table_init.exit.i.for.cond5.preheader.i.i_crit_edge

gfx_v7_0_tiling_mode_table_init.exit.i.for.cond5.preheader.i.i_crit_edge: ; preds = %gfx_v7_0_tiling_mode_table_init.exit.i
  br label %for.cond5.preheader.i.i

gfx_v7_0_tiling_mode_table_init.exit.i.for.end17.i.i_crit_edge: ; preds = %gfx_v7_0_tiling_mode_table_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17.i.i

for.cond5.preheader.i.i:                          ; preds = %for.inc15.i.i.for.cond5.preheader.i.i_crit_edge, %gfx_v7_0_tiling_mode_table_init.exit.i.for.cond5.preheader.i.i_crit_edge
  %i.0507.i.i = phi i32 [ %inc16.i.i, %for.inc15.i.i.for.cond5.preheader.i.i_crit_edge ], [ 0, %gfx_v7_0_tiling_mode_table_init.exit.i.for.cond5.preheader.i.i_crit_edge ]
  %active_rbs.0506.i.i = phi i32 [ %active_rbs.1.lcssa.i.i, %for.inc15.i.i.for.cond5.preheader.i.i_crit_edge ], [ 0, %gfx_v7_0_tiling_mode_table_init.exit.i.for.cond5.preheader.i.i_crit_edge ]
  %165 = ptrtoint ptr %max_sh_per_se.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %max_sh_per_se.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp9502.not.i.i = icmp eq i32 %166, 0
  br i1 %cmp9502.not.i.i, label %for.cond5.preheader.i.i.for.inc15.i.i_crit_edge, label %for.body10.lr.ph.i.i

for.cond5.preheader.i.i.for.inc15.i.i_crit_edge:  ; preds = %for.cond5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc15.i.i

for.body10.lr.ph.i.i:                             ; preds = %for.cond5.preheader.i.i
  %shl19.i.i.i = shl i32 %i.0507.i.i, 16
  br label %for.body10.i.i

for.body10.i.i:                                   ; preds = %for.body10.i.i.for.body10.i.i_crit_edge, %for.body10.lr.ph.i.i
  %active_rbs.1504.i.i = phi i32 [ %active_rbs.0506.i.i, %for.body10.lr.ph.i.i ], [ %or.i128.i, %for.body10.i.i.for.body10.i.i_crit_edge ]
  %j.0503.i.i = phi i32 [ 0, %for.body10.lr.ph.i.i ], [ %inc.i.i, %for.body10.i.i.for.body10.i.i_crit_edge ]
  %shl8.i.i.i = shl i32 %j.0503.i.i, 8
  %or20.i.i.i = or i32 %shl19.i.i.i, %shl8.i.i.i
  %or21.i.i.i = or i32 %or20.i.i.i, 1073741824
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef %or21.i.i.i, i32 noundef 0) #12
  %call.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9789, i32 noundef 0) #12
  %call1.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9951, i32 noundef 0) #12
  %or.i.i.i = or i32 %call1.i.i.i, %call.i.i.i
  %and.i.i.i = lshr i32 %or.i.i.i, 16
  %shr.i.i.i = and i32 %and.i.i.i, 255
  %167 = ptrtoint ptr %max_backends_per_se.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %max_backends_per_se.i.i, align 8
  %169 = ptrtoint ptr %max_sh_per_se.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %max_sh_per_se.i.i, align 4
  %div.i.i.i = udiv i32 %168, %170
  %sh_prom.i.i.i.i = zext i32 %div.i.i.i to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %sh_prom.i.i.i.i
  %171 = trunc i64 %notmask.i.i.i.i to i32
  %and5.demorgan.i.i.i = or i32 %shr.i.i.i, %171
  %and5.i.i.i = xor i32 %and5.demorgan.i.i.i, -1
  %mul.i.i = mul i32 %170, %i.0507.i.i
  %add.i127.i = add i32 %mul.i.i, %j.0503.i.i
  %mul14.i.i = mul i32 %add.i127.i, %div.i.i
  %shl.i.i = shl i32 %and5.i.i.i, %mul14.i.i
  %or.i128.i = or i32 %shl.i.i, %active_rbs.1504.i.i
  %inc.i.i = add nuw i32 %j.0503.i.i, 1
  %cmp9.i.i = icmp ult i32 %inc.i.i, %170
  br i1 %cmp9.i.i, label %for.body10.i.i.for.body10.i.i_crit_edge, label %for.body10.i.i.for.inc15.i.i_crit_edge

for.body10.i.i.for.inc15.i.i_crit_edge:           ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc15.i.i

for.body10.i.i.for.body10.i.i_crit_edge:          ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10.i.i

for.inc15.i.i:                                    ; preds = %for.body10.i.i.for.inc15.i.i_crit_edge, %for.cond5.preheader.i.i.for.inc15.i.i_crit_edge
  %active_rbs.1.lcssa.i.i = phi i32 [ %active_rbs.0506.i.i, %for.cond5.preheader.i.i.for.inc15.i.i_crit_edge ], [ %or.i128.i, %for.body10.i.i.for.inc15.i.i_crit_edge ]
  %inc16.i.i = add nuw i32 %i.0507.i.i, 1
  %172 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %config.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc16.i.i, %173
  br i1 %cmp.i.i, label %for.inc15.i.i.for.cond5.preheader.i.i_crit_edge, label %for.inc15.i.i.for.end17.i.i_crit_edge

for.inc15.i.i.for.end17.i.i_crit_edge:            ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17.i.i

for.inc15.i.i.for.cond5.preheader.i.i_crit_edge:  ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.i.i

for.end17.i.i:                                    ; preds = %for.inc15.i.i.for.end17.i.i_crit_edge, %gfx_v7_0_tiling_mode_table_init.exit.i.for.end17.i.i_crit_edge
  %active_rbs.0.lcssa.i.i = phi i32 [ 0, %gfx_v7_0_tiling_mode_table_init.exit.i.for.end17.i.i_crit_edge ], [ %active_rbs.1.lcssa.i.i, %for.inc15.i.i.for.end17.i.i_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #12
  %backend_enable_mask.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 14
  %174 = ptrtoint ptr %backend_enable_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %active_rbs.0.lcssa.i.i, ptr %backend_enable_mask.i.i, align 8
  %call.i467.i.i = tail call i32 @__sw_hweight32(i32 noundef %active_rbs.0.lcssa.i.i) #12
  %num_rbs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 24
  %175 = ptrtoint ptr %num_rbs.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %call.i467.i.i, ptr %num_rbs.i.i, align 8
  %176 = ptrtoint ptr %max_backends_per_se.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %max_backends_per_se.i.i, align 8
  %178 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %config.i.i, align 8
  %mul309.i.i = mul i32 %179, %177
  %180 = tail call i32 @llvm.umin.i32(i32 %mul309.i.i, i32 16) #12
  %181 = ptrtoint ptr %asic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %asic_type.i.i, align 8
  %switch.tableidx = add i32 %182, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %183 = icmp ult i32 %switch.tableidx, 5
  br i1 %183, label %switch.lookup, label %sw.default.i.i.i

sw.default.i.i.i:                                 ; preds = %for.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %182) #12
  br label %gfx_v7_0_raster_config.exit.i.i

switch.lookup:                                    ; preds = %for.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v7_0_hw_init, i32 0, i32 %switch.tableidx
  %184 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %184)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep60 = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v7_0_hw_init.43, i32 0, i32 %switch.tableidx
  %185 = ptrtoint ptr %switch.gep60 to i32
  call void @__asan_load4_noabort(i32 %185)
  %switch.load61 = load i32, ptr %switch.gep60, align 4
  br label %gfx_v7_0_raster_config.exit.i.i

gfx_v7_0_raster_config.exit.i.i:                  ; preds = %switch.lookup, %sw.default.i.i.i
  %raster_config.0.i.i = phi i32 [ 0, %sw.default.i.i.i ], [ %switch.load, %switch.lookup ]
  %raster_config_1.0.i.i = phi i32 [ 0, %sw.default.i.i.i ], [ %switch.load61, %switch.lookup ]
  %186 = ptrtoint ptr %backend_enable_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %backend_enable_mask.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool319.not.i.i = icmp eq i32 %187, 0
  br i1 %tobool319.not.i.i, label %gfx_v7_0_raster_config.exit.i.i.if.then.i129.i_crit_edge, label %lor.lhs.false.i.i

gfx_v7_0_raster_config.exit.i.i.if.then.i129.i_crit_edge: ; preds = %gfx_v7_0_raster_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i129.i

lor.lhs.false.i.i:                                ; preds = %gfx_v7_0_raster_config.exit.i.i
  %188 = ptrtoint ptr %num_rbs.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %num_rbs.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %180)
  %cmp323.not.i.i = icmp ult i32 %189, %180
  br i1 %cmp323.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.i.if.then.i129.i_crit_edge

lor.lhs.false.i.i.if.then.i129.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i129.i

if.then.i129.i:                                   ; preds = %lor.lhs.false.i.i.if.then.i129.i_crit_edge, %gfx_v7_0_raster_config.exit.i.i.if.then.i129.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 41172, i32 noundef %raster_config.0.i.i, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 41173, i32 noundef %raster_config_1.0.i.i, i32 noundef 0) #12
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  %190 = ptrtoint ptr %max_sh_per_se.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %max_sh_per_se.i.i, align 4
  %192 = tail call i32 @llvm.umax.i32(i32 %191, i32 1) #12
  %193 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %config.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %194)
  %cmp4.i.i.i = icmp ugt i32 %194, 1
  %195 = tail call i32 @llvm.umax.i32(i32 %194, i32 1) #12
  %div.i470.i.i = udiv i32 %180, %195
  %div9.i.i.i = udiv i32 %div.i470.i.i, %192
  %196 = tail call i32 @llvm.umin.i32(i32 %div9.i.i.i, i32 2) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %se_mask.i.i.i) #12
  %197 = getelementptr inbounds [4 x i32], ptr %se_mask.i.i.i, i32 0, i32 1
  %198 = getelementptr inbounds [4 x i32], ptr %se_mask.i.i.i, i32 0, i32 2
  %199 = getelementptr inbounds [4 x i32], ptr %se_mask.i.i.i, i32 0, i32 3
  %notmask.i.i.i = shl nsw i32 -1, %div.i470.i.i
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i471.i.i = and i32 %187, %sub.i.i.i
  %200 = ptrtoint ptr %se_mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %and.i471.i.i, ptr %se_mask.i.i.i, align 4
  %shl18.i472.i.i = shl i32 %and.i471.i.i, %div.i470.i.i
  %and19.i.i.i = and i32 %shl18.i472.i.i, %187
  %201 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %and19.i.i.i, ptr %197, align 4
  %shl22.i.i.i = shl i32 %and19.i.i.i, %div.i470.i.i
  %and23.i.i.i = and i32 %shl22.i.i.i, %187
  %202 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %and23.i.i.i, ptr %198, align 4
  %shl26.i.i.i = shl i32 %and23.i.i.i, %div.i470.i.i
  %and27.i.i.i = and i32 %shl26.i.i.i, %187
  %203 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %and27.i.i.i, ptr %199, align 4
  %204 = zext i32 %195 to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %195, label %do.end.critedge.i.i.i [
    i32 1, label %if.else.i.i.if.end.i.i.i_crit_edge
    i32 2, label %if.else.i.i.if.end.i.i.i_crit_edge66
    i32 4, label %if.else.i.i.if.end.i.i.i_crit_edge67
  ]

if.else.i.i.if.end.i.i.i_crit_edge67:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.else.i.i.if.end.i.i.i_crit_edge66:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.else.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.critedge.i.i.i:                            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1686, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.critedge.i.i.i, %if.else.i.i.if.end.i.i.i_crit_edge, %if.else.i.i.if.end.i.i.i_crit_edge66, %if.else.i.i.if.end.i.i.i_crit_edge67
  %..off.i.i.i = add i32 %192, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %..off.i.i.i)
  %switch.i.i.i = icmp ult i32 %..off.i.i.i, 2
  br i1 %switch.i.i.i, label %if.end.i.i.i.if.end80.i.i.i_crit_edge, label %do.end74.i.i.i

if.end.i.i.i.if.end80.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80.i.i.i

do.end74.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1687, i32 noundef 9, ptr noundef null) #12
  br label %if.end80.i.i.i

if.end80.i.i.i:                                   ; preds = %do.end74.i.i.i, %if.end.i.i.i.if.end80.i.i.i_crit_edge
  %cond15.off.i.i.i = add nsw i32 %196, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond15.off.i.i.i)
  %switch317.i.i.i = icmp ult i32 %cond15.off.i.i.i, 2
  br i1 %switch317.i.i.i, label %if.end80.i.i.i.if.end116.i.i.i_crit_edge, label %do.end110.i.i.i

if.end80.i.i.i.if.end116.i.i.i_crit_edge:         ; preds = %if.end80.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116.i.i.i

do.end110.i.i.i:                                  ; preds = %if.end80.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 1688, i32 noundef 9, ptr noundef null) #12
  br label %if.end116.i.i.i

if.end116.i.i.i:                                  ; preds = %do.end110.i.i.i, %if.end80.i.i.i.if.end116.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %195)
  %cmp124.i.i.i = icmp ugt i32 %195, 2
  br i1 %cmp124.i.i.i, label %land.lhs.true.i.i.i, label %if.end116.i.i.i.if.end146.i.i.i_crit_edge

if.end116.i.i.i.if.end146.i.i.i_crit_edge:        ; preds = %if.end116.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end116.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i471.i.i)
  %tobool126.not.i.i.i = icmp eq i32 %and.i471.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i.i)
  %tobool129.not.i.i.i = icmp eq i32 %and19.i.i.i, 0
  %or.cond328.i.i.i = select i1 %tobool126.not.i.i.i, i1 %tobool129.not.i.i.i, i1 false
  br i1 %or.cond328.i.i.i, label %if.then136.thread.i.i.i, label %lor.lhs.false130.i.i.i

if.then136.thread.i.i.i:                          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and137320.i.i.i = and i32 %raster_config_1.0.i.i, 44
  br label %land.lhs.true140.i.i.i

lor.lhs.false130.i.i.i:                           ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i.i)
  %tobool132.not.i.i.i = icmp eq i32 %and23.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.i)
  %tobool135.not.i.i.i = icmp eq i32 %and27.i.i.i, 0
  %or.cond329.i.i.i = select i1 %tobool132.not.i.i.i, i1 %tobool135.not.i.i.i, i1 false
  br i1 %or.cond329.i.i.i, label %if.then136.i.i.i, label %lor.lhs.false130.i.i.i.if.end146.i.i.i_crit_edge

lor.lhs.false130.i.i.i.if.end146.i.i.i_crit_edge: ; preds = %lor.lhs.false130.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.i.i.i

if.then136.i.i.i:                                 ; preds = %lor.lhs.false130.i.i.i
  %and137.i.i.i = and i32 %raster_config_1.0.i.i, 44
  br i1 %tobool126.not.i.i.i, label %if.then136.i.i.i.land.lhs.true140.i.i.i_crit_edge, label %if.then136.i.i.i.if.end146.i.i.i_crit_edge

if.then136.i.i.i.if.end146.i.i.i_crit_edge:       ; preds = %if.then136.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.i.i.i

if.then136.i.i.i.land.lhs.true140.i.i.i_crit_edge: ; preds = %if.then136.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true140.i.i.i

land.lhs.true140.i.i.i:                           ; preds = %if.then136.i.i.i.land.lhs.true140.i.i.i_crit_edge, %if.then136.thread.i.i.i
  %and137321.i.i.i = phi i32 [ %and137320.i.i.i, %if.then136.thread.i.i.i ], [ %and137.i.i.i, %if.then136.i.i.i.land.lhs.true140.i.i.i_crit_edge ]
  %or.i473.i.i = or i32 %raster_config_1.0.i.i, 3
  %spec.select.i.i.i = select i1 %tobool129.not.i.i.i, i32 %or.i473.i.i, i32 %and137321.i.i.i
  br label %if.end146.i.i.i

if.end146.i.i.i:                                  ; preds = %land.lhs.true140.i.i.i, %if.then136.i.i.i.if.end146.i.i.i_crit_edge, %lor.lhs.false130.i.i.i.if.end146.i.i.i_crit_edge, %if.end116.i.i.i.if.end146.i.i.i_crit_edge
  %raster_config_1.addr.0.i.i.i = phi i32 [ %raster_config_1.0.i.i, %lor.lhs.false130.i.i.i.if.end146.i.i.i_crit_edge ], [ %raster_config_1.0.i.i, %if.end116.i.i.i.if.end146.i.i.i_crit_edge ], [ %and137.i.i.i, %if.then136.i.i.i.if.end146.i.i.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true140.i.i.i ]
  %notmask312.i.i.i = shl nsw i32 -1, %196
  %sub149.i.i.i = xor i32 %notmask312.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i470.i.i)
  %cmp173.i.i.i = icmp ugt i32 %div.i470.i.i, 2
  %and162.i.i.i = and i32 %raster_config.0.i.i, 1006638618
  %or166.i.i.i = or i32 %raster_config.0.i.i, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i470.i.i)
  %cmp187.i.i.i = icmp eq i32 %div.i470.i.i, 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %gfx_v7_0_select_se_sh.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end146.i.i.i
  %se.0331.i.i.i = phi i32 [ 0, %if.end146.i.i.i ], [ %inc.i.i.i, %gfx_v7_0_select_se_sh.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %mul.i.i.i = mul i32 %se.0331.i.i.i, %div.i470.i.i
  %shl150.i.i.i = shl i32 %sub149.i.i.i, %mul.i.i.i
  %shl151.i.i.i = shl i32 %shl150.i.i.i, %196
  br i1 %cmp4.i.i.i, label %land.lhs.true155.i.i.i, label %for.body.i.i.i.if.end170.i.i.i_crit_edge

for.body.i.i.i.if.end170.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170.i.i.i

land.lhs.true155.i.i.i:                           ; preds = %for.body.i.i.i
  %div152313.i.i.i = and i32 %se.0331.i.i.i, -2
  %arrayidx156.i.i.i = getelementptr [4 x i32], ptr %se_mask.i.i.i, i32 0, i32 %div152313.i.i.i
  %205 = ptrtoint ptr %arrayidx156.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx156.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool157.not.i.i.i = icmp eq i32 %206, 0
  br i1 %tobool157.not.i.i.i, label %land.lhs.true155.i.i.i.if.end170.i.i.i_crit_edge, label %lor.lhs.false158.i.i.i

land.lhs.true155.i.i.i.if.end170.i.i.i_crit_edge: ; preds = %land.lhs.true155.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170.i.i.i

lor.lhs.false158.i.i.i:                           ; preds = %land.lhs.true155.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i.i.i = or i32 %se.0331.i.i.i, 1
  %arrayidx159.i.i.i = getelementptr [4 x i32], ptr %se_mask.i.i.i, i32 0, i32 %add.i.i.i
  %207 = ptrtoint ptr %arrayidx159.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx159.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool160.not.i.i.i = icmp eq i32 %208, 0
  %spec.select330.i.i.i = select i1 %tobool160.not.i.i.i, i32 %and162.i.i.i, i32 %raster_config.0.i.i
  br label %if.end170.i.i.i

if.end170.i.i.i:                                  ; preds = %lor.lhs.false158.i.i.i, %land.lhs.true155.i.i.i.if.end170.i.i.i_crit_edge, %for.body.i.i.i.if.end170.i.i.i_crit_edge
  %raster_config_se.0.i.i.i = phi i32 [ %raster_config.0.i.i, %for.body.i.i.i.if.end170.i.i.i_crit_edge ], [ %spec.select330.i.i.i, %lor.lhs.false158.i.i.i ], [ %or166.i.i.i, %land.lhs.true155.i.i.i.if.end170.i.i.i_crit_edge ]
  br i1 %cmp173.i.i.i, label %land.lhs.true174.i.i.i, label %if.end186.i.i.i

land.lhs.true174.i.i.i:                           ; preds = %if.end170.i.i.i
  %and172.i.i.i = and i32 %shl151.i.i.i, %187
  %and171.i.i.i = and i32 %shl150.i.i.i, %187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i.i.i)
  %tobool175.not.i.i.i = icmp eq i32 %and171.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172.i.i.i)
  %tobool177.not.i.i.i = icmp eq i32 %and172.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool175.not.i.i.i, i1 true, i1 %tobool177.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then178.i.i.i, label %land.lhs.true174.i.i.i.if.then188.i.i.i_crit_edge

land.lhs.true174.i.i.i.if.then188.i.i.i_crit_edge: ; preds = %land.lhs.true174.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then188.i.i.i

if.then178.i.i.i:                                 ; preds = %land.lhs.true174.i.i.i
  br i1 %tobool175.not.i.i.i, label %if.then181.i.i.i, label %if.else183.i.i.i

if.then181.i.i.i:                                 ; preds = %if.then178.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or182.i.i.i = or i32 %raster_config_se.0.i.i.i, 768
  br label %if.then188.i.i.i

if.else183.i.i.i:                                 ; preds = %if.then178.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and179.i.i.i = and i32 %raster_config_se.0.i.i.i, -769
  br label %if.then188.i.i.i

if.end186.i.i.i:                                  ; preds = %if.end170.i.i.i
  br i1 %cmp187.i.i.i, label %if.end186.i.i.i.if.then188.i.i.i_crit_edge, label %if.end186.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge

if.end186.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge: ; preds = %if.end186.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_select_se_sh.exit.i.i.i

if.end186.i.i.i.if.then188.i.i.i_crit_edge:       ; preds = %if.end186.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then188.i.i.i

if.then188.i.i.i:                                 ; preds = %if.end186.i.i.i.if.then188.i.i.i_crit_edge, %if.else183.i.i.i, %if.then181.i.i.i, %land.lhs.true174.i.i.i.if.then188.i.i.i_crit_edge
  %raster_config_se.1324.i.i.i = phi i32 [ %raster_config_se.0.i.i.i, %if.end186.i.i.i.if.then188.i.i.i_crit_edge ], [ %raster_config_se.0.i.i.i, %land.lhs.true174.i.i.i.if.then188.i.i.i_crit_edge ], [ %or182.i.i.i, %if.then181.i.i.i ], [ %and179.i.i.i, %if.else183.i.i.i ]
  %shl190.i.i.i = shl nuw i32 1, %mul.i.i.i
  %and192.i.i.i = and i32 %shl190.i.i.i, %187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192.i.i.i)
  %tobool194.not.i.i.i = icmp eq i32 %and192.i.i.i, 0
  %shl191.i.i.i = shl i32 %shl190.i.i.i, 1
  %and193.i.i.i = and i32 %shl191.i.i.i, %187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193.i.i.i)
  %tobool196.not.i.i.i = icmp eq i32 %and193.i.i.i, 0
  %or.cond315.i.i.i = select i1 %tobool194.not.i.i.i, i1 true, i1 %tobool196.not.i.i.i
  br i1 %or.cond315.i.i.i, label %if.then197.i.i.i, label %if.then188.i.i.i.if.end205.i.i.i_crit_edge

if.then188.i.i.i.if.end205.i.i.i_crit_edge:       ; preds = %if.then188.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205.i.i.i

if.then197.i.i.i:                                 ; preds = %if.then188.i.i.i
  br i1 %tobool194.not.i.i.i, label %if.then200.i.i.i, label %if.else202.i.i.i

if.then200.i.i.i:                                 ; preds = %if.then197.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or201.i.i.i = or i32 %raster_config_se.1324.i.i.i, 3
  br label %if.end205.i.i.i

if.else202.i.i.i:                                 ; preds = %if.then197.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and198.i.i.i = and i32 %raster_config_se.1324.i.i.i, -4
  br label %if.end205.i.i.i

if.end205.i.i.i:                                  ; preds = %if.else202.i.i.i, %if.then200.i.i.i, %if.then188.i.i.i.if.end205.i.i.i_crit_edge
  %raster_config_se.2.i.i.i = phi i32 [ %and198.i.i.i, %if.else202.i.i.i ], [ %or201.i.i.i, %if.then200.i.i.i ], [ %raster_config_se.1324.i.i.i, %if.then188.i.i.i.if.end205.i.i.i_crit_edge ]
  br i1 %cmp173.i.i.i, label %if.then207.i.i.i, label %if.end205.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge

if.end205.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge: ; preds = %if.end205.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_select_se_sh.exit.i.i.i

if.then207.i.i.i:                                 ; preds = %if.end205.i.i.i
  %add209.i.i.i = add i32 %mul.i.i.i, %196
  %shl210.i.i.i = shl nuw i32 1, %add209.i.i.i
  %and212.i.i.i = and i32 %shl210.i.i.i, %187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212.i.i.i)
  %tobool214.not.i.i.i = icmp eq i32 %and212.i.i.i, 0
  %shl211.i.i.i = shl i32 %shl210.i.i.i, 1
  %and213.i.i.i = and i32 %shl211.i.i.i, %187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213.i.i.i)
  %tobool216.not.i.i.i = icmp eq i32 %and213.i.i.i, 0
  %or.cond316.i.i.i = select i1 %tobool214.not.i.i.i, i1 true, i1 %tobool216.not.i.i.i
  br i1 %or.cond316.i.i.i, label %if.then217.i.i.i, label %if.then207.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge

if.then207.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge: ; preds = %if.then207.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_select_se_sh.exit.i.i.i

if.then217.i.i.i:                                 ; preds = %if.then207.i.i.i
  br i1 %tobool214.not.i.i.i, label %if.then220.i.i.i, label %if.else222.i.i.i

if.then220.i.i.i:                                 ; preds = %if.then217.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or221.i.i.i = or i32 %raster_config_se.2.i.i.i, 12
  br label %gfx_v7_0_select_se_sh.exit.i.i.i

if.else222.i.i.i:                                 ; preds = %if.then217.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and218.i.i.i = and i32 %raster_config_se.2.i.i.i, -13
  br label %gfx_v7_0_select_se_sh.exit.i.i.i

gfx_v7_0_select_se_sh.exit.i.i.i:                 ; preds = %if.else222.i.i.i, %if.then220.i.i.i, %if.then207.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge, %if.end205.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge, %if.end186.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge
  %raster_config_se.4327.i.i.i = phi i32 [ %raster_config_se.0.i.i.i, %if.end186.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge ], [ %and218.i.i.i, %if.else222.i.i.i ], [ %or221.i.i.i, %if.then220.i.i.i ], [ %raster_config_se.2.i.i.i, %if.end205.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge ], [ %raster_config_se.2.i.i.i, %if.then207.i.i.i.gfx_v7_0_select_se_sh.exit.i.i.i_crit_edge ]
  %shl14.i.i.i.i = shl i32 %se.0331.i.i.i, 16
  %or16.i.i.i.i = or i32 %shl14.i.i.i.i, 1610612736
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef %or16.i.i.i.i, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 41172, i32 noundef %raster_config_se.4327.i.i.i, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 41173, i32 noundef %raster_config_1.addr.0.i.i.i, i32 noundef 0) #12
  %inc.i.i.i = add nuw i32 %se.0331.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %195
  br i1 %exitcond.not.i.i.i, label %gfx_v7_0_write_harvested_raster_configs.exit.i.i, label %gfx_v7_0_select_se_sh.exit.i.i.i.for.body.i.i.i_crit_edge

gfx_v7_0_select_se_sh.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %gfx_v7_0_select_se_sh.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

gfx_v7_0_write_harvested_raster_configs.exit.i.i: ; preds = %gfx_v7_0_select_se_sh.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %se_mask.i.i.i) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %gfx_v7_0_write_harvested_raster_configs.exit.i.i, %if.then.i129.i
  %209 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %config.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp332512.not.i.i = icmp eq i32 %210, 0
  br i1 %cmp332512.not.i.i, label %if.end.i.i.gfx_v7_0_setup_rb.exit.i_crit_edge, label %if.end.i.i.for.cond335.preheader.i.i_crit_edge

if.end.i.i.for.cond335.preheader.i.i_crit_edge:   ; preds = %if.end.i.i
  br label %for.cond335.preheader.i.i

if.end.i.i.gfx_v7_0_setup_rb.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_setup_rb.exit.i

for.cond335.preheader.i.i:                        ; preds = %for.inc369.i.i.for.cond335.preheader.i.i_crit_edge, %if.end.i.i.for.cond335.preheader.i.i_crit_edge
  %i.1513.i.i = phi i32 [ %inc370.i.i, %for.inc369.i.i.for.cond335.preheader.i.i_crit_edge ], [ 0, %if.end.i.i.for.cond335.preheader.i.i_crit_edge ]
  %211 = ptrtoint ptr %max_sh_per_se.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %max_sh_per_se.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp339510.not.i.i = icmp eq i32 %212, 0
  br i1 %cmp339510.not.i.i, label %for.cond335.preheader.i.i.for.inc369.i.i_crit_edge, label %for.body341.lr.ph.i.i

for.cond335.preheader.i.i.for.inc369.i.i_crit_edge: ; preds = %for.cond335.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc369.i.i

for.body341.lr.ph.i.i:                            ; preds = %for.cond335.preheader.i.i
  %shl19.i488.i.i = shl i32 %i.1513.i.i, 16
  br label %for.body341.i.i

for.body341.i.i:                                  ; preds = %for.body341.i.i.for.body341.i.i_crit_edge, %for.body341.lr.ph.i.i
  %j.1511.i.i = phi i32 [ 0, %for.body341.lr.ph.i.i ], [ %inc367.i.i, %for.body341.i.i.for.body341.i.i_crit_edge ]
  %shl8.i478.i.i = shl i32 %j.1511.i.i, 8
  %or20.i489.i.i = or i32 %shl19.i488.i.i, %shl8.i478.i.i
  %or21.i490.i.i = or i32 %or20.i489.i.i, 1073741824
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef %or21.i490.i.i, i32 noundef 0) #12
  %call342.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9789, i32 noundef 0) #12
  %arrayidx345.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 30, i32 %i.1513.i.i, i32 %j.1511.i.i
  %213 = ptrtoint ptr %arrayidx345.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %call342.i.i, ptr %arrayidx345.i.i, align 4
  %call346.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9951, i32 noundef 0) #12
  %user_rb_backend_disable.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 30, i32 %i.1513.i.i, i32 %j.1511.i.i, i32 1
  %214 = ptrtoint ptr %user_rb_backend_disable.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %call346.i.i, ptr %user_rb_backend_disable.i.i, align 4
  %call352.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 41172, i32 noundef 0) #12
  %raster_config358.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 30, i32 %i.1513.i.i, i32 %j.1511.i.i, i32 2
  %215 = ptrtoint ptr %raster_config358.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %call352.i.i, ptr %raster_config358.i.i, align 4
  %call359.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 41173, i32 noundef 0) #12
  %raster_config_1365.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 30, i32 %i.1513.i.i, i32 %j.1511.i.i, i32 3
  %216 = ptrtoint ptr %raster_config_1365.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %call359.i.i, ptr %raster_config_1365.i.i, align 4
  %inc367.i.i = add nuw i32 %j.1511.i.i, 1
  %217 = ptrtoint ptr %max_sh_per_se.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %max_sh_per_se.i.i, align 4
  %cmp339.i.i = icmp ult i32 %inc367.i.i, %218
  br i1 %cmp339.i.i, label %for.body341.i.i.for.body341.i.i_crit_edge, label %for.body341.i.i.for.inc369.i.i_crit_edge

for.body341.i.i.for.inc369.i.i_crit_edge:         ; preds = %for.body341.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc369.i.i

for.body341.i.i.for.body341.i.i_crit_edge:        ; preds = %for.body341.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body341.i.i

for.inc369.i.i:                                   ; preds = %for.body341.i.i.for.inc369.i.i_crit_edge, %for.cond335.preheader.i.i.for.inc369.i.i_crit_edge
  %inc370.i.i = add nuw i32 %i.1513.i.i, 1
  %219 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %config.i.i, align 8
  %cmp332.i.i = icmp ult i32 %inc370.i.i, %220
  br i1 %cmp332.i.i, label %for.inc369.i.i.for.cond335.preheader.i.i_crit_edge, label %for.inc369.i.i.gfx_v7_0_setup_rb.exit.i_crit_edge

for.inc369.i.i.gfx_v7_0_setup_rb.exit.i_crit_edge: ; preds = %for.inc369.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_setup_rb.exit.i

for.inc369.i.i.for.cond335.preheader.i.i_crit_edge: ; preds = %for.inc369.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond335.preheader.i.i

gfx_v7_0_setup_rb.exit.i:                         ; preds = %for.inc369.i.i.gfx_v7_0_setup_rb.exit.i_crit_edge, %if.end.i.i.gfx_v7_0_setup_rb.exit.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i.i) #12
  %cu_info1.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %disable_masks.i.i) #12
  %flags.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %221 = call ptr @memset(ptr %disable_masks.i.i, i32 255, i32 32)
  %222 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %flags.i.i, align 8
  %and.i130.i = and i32 %223, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130.i)
  %tobool.not.i.i = icmp eq i32 %and.i130.i, 0
  br i1 %tobool.not.i.i, label %if.else.i131.i, label %gfx_v7_0_setup_rb.exit.i.if.end.i133.i_crit_edge

gfx_v7_0_setup_rb.exit.i.if.end.i133.i_crit_edge: ; preds = %gfx_v7_0_setup_rb.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i133.i

if.else.i131.i:                                   ; preds = %gfx_v7_0_setup_rb.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_cu_per_sh.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 2
  %224 = ptrtoint ptr %max_cu_per_sh.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %max_cu_per_sh.i.i, align 8
  br label %if.end.i133.i

if.end.i133.i:                                    ; preds = %if.else.i131.i, %gfx_v7_0_setup_rb.exit.i.if.end.i133.i_crit_edge
  %ao_cu_num.0.i.i = phi i32 [ %225, %if.else.i131.i ], [ 2, %gfx_v7_0_setup_rb.exit.i.if.end.i133.i_crit_edge ]
  %226 = call ptr @memset(ptr %cu_info1.i.i, i32 0, i32 156)
  call void @amdgpu_gfx_parse_disable_cu(ptr noundef nonnull %disable_masks.i.i, i32 noundef 4, i32 noundef 2) #12
  call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i.i, i32 noundef 0) #12
  %227 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %config.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp113.not.i.i = icmp eq i32 %228, 0
  br i1 %cmp113.not.i.i, label %if.end.i133.i.gfx_v7_0_get_cu_info.exit.i_crit_edge, label %for.cond5.preheader.lr.ph.i.i

if.end.i133.i.gfx_v7_0_get_cu_info.exit.i_crit_edge: ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_get_cu_info.exit.i

for.cond5.preheader.lr.ph.i.i:                    ; preds = %if.end.i133.i
  %max_cu_per_sh.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 2
  br label %for.cond5.preheader.i135.i

for.cond5.preheader.i135.i:                       ; preds = %for.inc47.i.i.for.cond5.preheader.i135.i_crit_edge, %for.cond5.preheader.lr.ph.i.i
  %ao_cu_mask.0117.i.i = phi i32 [ 0, %for.cond5.preheader.lr.ph.i.i ], [ %ao_cu_mask.1.lcssa.i.i, %for.inc47.i.i.for.cond5.preheader.i135.i_crit_edge ]
  %active_cu_number.0116.i.i = phi i32 [ 0, %for.cond5.preheader.lr.ph.i.i ], [ %active_cu_number.1.lcssa.i.i, %for.inc47.i.i.for.cond5.preheader.i135.i_crit_edge ]
  %i.0114.i.i = phi i32 [ 0, %for.cond5.preheader.lr.ph.i.i ], [ %inc48.i.i, %for.inc47.i.i.for.cond5.preheader.i135.i_crit_edge ]
  %229 = ptrtoint ptr %max_sh_per_se.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %max_sh_per_se.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %cmp8107.not.i.i = icmp eq i32 %230, 0
  br i1 %cmp8107.not.i.i, label %for.cond5.preheader.i135.i.for.inc47.i.i_crit_edge, label %for.body9.lr.ph.i.i

for.cond5.preheader.i135.i.for.inc47.i.i_crit_edge: ; preds = %for.cond5.preheader.i135.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc47.i.i

for.body9.lr.ph.i.i:                              ; preds = %for.cond5.preheader.i135.i
  %shl19.i.i136.i = shl i32 %i.0114.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0114.i.i)
  %cmp10.i.i = icmp slt i32 %i.0114.i.i, 4
  %mul.i137.i = shl i32 %i.0114.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0114.i.i)
  %cmp32.i.i = icmp slt i32 %i.0114.i.i, 2
  %mul36.i.i = shl i32 %i.0114.i.i, 4
  br label %for.body9.i.i

for.body9.i.i:                                    ; preds = %for.end.i.i.for.body9.i.i_crit_edge, %for.body9.lr.ph.i.i
  %ao_cu_mask.1110.i.i = phi i32 [ %ao_cu_mask.0117.i.i, %for.body9.lr.ph.i.i ], [ %ao_cu_mask.2.i.i, %for.end.i.i.for.body9.i.i_crit_edge ]
  %active_cu_number.1109.i.i = phi i32 [ %active_cu_number.0116.i.i, %for.body9.lr.ph.i.i ], [ %add31.i.i, %for.end.i.i.for.body9.i.i_crit_edge ]
  %j.0108.i.i = phi i32 [ 0, %for.body9.lr.ph.i.i ], [ %inc45.i.i, %for.end.i.i.for.body9.i.i_crit_edge ]
  %shl8.i.i138.i = shl i32 %j.0108.i.i, 8
  %or20.i.i139.i = or i32 %shl19.i.i136.i, %shl8.i.i138.i
  %or21.i.i140.i = or i32 %or20.i.i139.i, 1073741824
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef %or21.i.i140.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %j.0108.i.i)
  %cmp11.i.i = icmp slt i32 %j.0108.i.i, 2
  %or.cond.i.i = select i1 %cmp10.i.i, i1 %cmp11.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then12.i.i, label %for.body9.i.i.if.end13.i.i_crit_edge

for.body9.i.i.if.end13.i.i_crit_edge:             ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.then12.i.i:                                    ; preds = %for.body9.i.i
  %add.i141.i = add i32 %j.0108.i.i, %mul.i137.i
  %arrayidx.i.i = getelementptr [8 x i32], ptr %disable_masks.i.i, i32 0, i32 %add.i141.i
  %231 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool.not.i.i.i = icmp eq i32 %232, 0
  br i1 %tobool.not.i.i.i, label %if.then12.i.i.if.end13.i.i_crit_edge, label %if.end.i.i142.i

if.then12.i.i.if.end13.i.i_crit_edge:             ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.end.i.i142.i:                                  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i.i.i = shl i32 %232, 16
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8816, i32 noundef %shl.i.i.i, i32 noundef 0) #12
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end.i.i142.i, %if.then12.i.i.if.end13.i.i_crit_edge, %for.body9.i.i.if.end13.i.i_crit_edge
  %call.i.i143.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8815, i32 noundef 0) #12
  %call1.i.i144.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8816, i32 noundef 0) #12
  %or.i.i145.i = or i32 %call1.i.i144.i, %call.i.i143.i
  %shr.i.i146.i = lshr i32 %or.i.i145.i, 16
  %233 = ptrtoint ptr %max_cu_per_sh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %max_cu_per_sh.i.i.i, align 8
  %sh_prom.i.i.i147.i = zext i32 %234 to i64
  %notmask.i.i.i148.i = shl nsw i64 -1, %sh_prom.i.i.i147.i
  %235 = trunc i64 %notmask.i.i.i148.i to i32
  %and3.demorgan.i.i.i = or i32 %shr.i.i146.i, %235
  %and3.i.i.i = xor i32 %and3.demorgan.i.i.i, -1
  %arrayidx16.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 8, i32 %i.0114.i.i, i32 %j.0108.i.i
  %236 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %and3.i.i.i, ptr %arrayidx16.i.i, align 4
  %237 = load i32, ptr %max_cu_per_sh.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp21101.not.i.i = icmp eq i32 %237, 0
  br i1 %cmp21101.not.i.i, label %if.end13.i.i.for.end.i.i_crit_edge, label %if.end13.i.i.for.body22.i.i_crit_edge

if.end13.i.i.for.body22.i.i_crit_edge:            ; preds = %if.end13.i.i
  br label %for.body22.i.i

if.end13.i.i.for.end.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body22.i.i:                                   ; preds = %for.body22.i.i.for.body22.i.i_crit_edge, %if.end13.i.i.for.body22.i.i_crit_edge
  %ao_bitmap.0105.i.i = phi i32 [ %ao_bitmap.2.i.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ 0, %if.end13.i.i.for.body22.i.i_crit_edge ]
  %mask.0104.i.i = phi i32 [ %shl.i151.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ 1, %if.end13.i.i.for.body22.i.i_crit_edge ]
  %counter.0103.i.i = phi i32 [ %counter.1.i.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ 0, %if.end13.i.i.for.body22.i.i_crit_edge ]
  %k.0102.i.i = phi i32 [ %inc30.i.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ 0, %if.end13.i.i.for.body22.i.i_crit_edge ]
  %and23.i.i = and i32 %mask.0104.i.i, %and3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %counter.0103.i.i, i32 %ao_cu_num.0.i.i)
  %cmp26.i.i = icmp ult i32 %counter.0103.i.i, %ao_cu_num.0.i.i
  %or.i149.i = select i1 %cmp26.i.i, i32 %mask.0104.i.i, i32 0
  %not.tobool24.not.i.i = xor i1 %tobool24.not.i.i, true
  %inc.i150.i = zext i1 %not.tobool24.not.i.i to i32
  %counter.1.i.i = add i32 %counter.0103.i.i, %inc.i150.i
  %spec.select.i.i = select i1 %tobool24.not.i.i, i32 0, i32 %or.i149.i
  %ao_bitmap.2.i.i = or i32 %spec.select.i.i, %ao_bitmap.0105.i.i
  %shl.i151.i = shl i32 %mask.0104.i.i, 1
  %inc30.i.i = add nuw i32 %k.0102.i.i, 1
  %exitcond.not.i152.i = icmp eq i32 %inc30.i.i, %237
  br i1 %exitcond.not.i152.i, label %for.body22.i.i.for.end.i.i_crit_edge, label %for.body22.i.i.for.body22.i.i_crit_edge

for.body22.i.i.for.body22.i.i_crit_edge:          ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body22.i.i

for.body22.i.i.for.end.i.i_crit_edge:             ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body22.i.i.for.end.i.i_crit_edge, %if.end13.i.i.for.end.i.i_crit_edge
  %counter.0.lcssa.i.i = phi i32 [ 0, %if.end13.i.i.for.end.i.i_crit_edge ], [ %counter.1.i.i, %for.body22.i.i.for.end.i.i_crit_edge ]
  %ao_bitmap.0.lcssa.i.i = phi i32 [ 0, %if.end13.i.i.for.end.i.i_crit_edge ], [ %ao_bitmap.2.i.i, %for.body22.i.i.for.end.i.i_crit_edge ]
  %add31.i.i = add i32 %counter.0.lcssa.i.i, %active_cu_number.1109.i.i
  %or.cond98.i.i = select i1 %cmp32.i.i, i1 %cmp11.i.i, i1 false
  %mul37.i.i = shl i32 %j.0108.i.i, 3
  %add38.i.i = add i32 %mul37.i.i, %mul36.i.i
  %shl39.i.i = shl i32 %ao_bitmap.0.lcssa.i.i, %add38.i.i
  %or40.i.i = select i1 %or.cond98.i.i, i32 %shl39.i.i, i32 0
  %ao_cu_mask.2.i.i = or i32 %or40.i.i, %ao_cu_mask.1110.i.i
  %arrayidx43.i153.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 7, i32 %i.0114.i.i, i32 %j.0108.i.i
  %238 = ptrtoint ptr %arrayidx43.i153.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %ao_bitmap.0.lcssa.i.i, ptr %arrayidx43.i153.i, align 4
  %inc45.i.i = add nuw i32 %j.0108.i.i, 1
  %239 = ptrtoint ptr %max_sh_per_se.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %max_sh_per_se.i.i, align 4
  %cmp8.i.i = icmp ult i32 %inc45.i.i, %240
  br i1 %cmp8.i.i, label %for.end.i.i.for.body9.i.i_crit_edge, label %for.end.i.i.for.inc47.i.i_crit_edge

for.end.i.i.for.inc47.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc47.i.i

for.end.i.i.for.body9.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9.i.i

for.inc47.i.i:                                    ; preds = %for.end.i.i.for.inc47.i.i_crit_edge, %for.cond5.preheader.i135.i.for.inc47.i.i_crit_edge
  %active_cu_number.1.lcssa.i.i = phi i32 [ %active_cu_number.0116.i.i, %for.cond5.preheader.i135.i.for.inc47.i.i_crit_edge ], [ %add31.i.i, %for.end.i.i.for.inc47.i.i_crit_edge ]
  %ao_cu_mask.1.lcssa.i.i = phi i32 [ %ao_cu_mask.0117.i.i, %for.cond5.preheader.i135.i.for.inc47.i.i_crit_edge ], [ %ao_cu_mask.2.i.i, %for.end.i.i.for.inc47.i.i_crit_edge ]
  %inc48.i.i = add nuw i32 %i.0114.i.i, 1
  %241 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %config.i.i, align 8
  %cmp.i154.i = icmp ult i32 %inc48.i.i, %242
  br i1 %cmp.i154.i, label %for.inc47.i.i.for.cond5.preheader.i135.i_crit_edge, label %for.inc47.i.i.gfx_v7_0_get_cu_info.exit.i_crit_edge

for.inc47.i.i.gfx_v7_0_get_cu_info.exit.i_crit_edge: ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_get_cu_info.exit.i

for.inc47.i.i.for.cond5.preheader.i135.i_crit_edge: ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.i135.i

gfx_v7_0_get_cu_info.exit.i:                      ; preds = %for.inc47.i.i.gfx_v7_0_get_cu_info.exit.i_crit_edge, %if.end.i133.i.gfx_v7_0_get_cu_info.exit.i_crit_edge
  %active_cu_number.0.lcssa.i.i = phi i32 [ 0, %if.end.i133.i.gfx_v7_0_get_cu_info.exit.i_crit_edge ], [ %active_cu_number.1.lcssa.i.i, %for.inc47.i.i.gfx_v7_0_get_cu_info.exit.i_crit_edge ]
  %ao_cu_mask.0.lcssa.i.i = phi i32 [ 0, %if.end.i133.i.gfx_v7_0_get_cu_info.exit.i_crit_edge ], [ %ao_cu_mask.1.lcssa.i.i, %for.inc47.i.i.gfx_v7_0_get_cu_info.exit.i_crit_edge ]
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i.i) #12
  %number.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 5
  %243 = ptrtoint ptr %number.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %active_cu_number.0.lcssa.i.i, ptr %number.i.i, align 4
  %ao_cu_mask51.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 6
  %244 = ptrtoint ptr %ao_cu_mask51.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %ao_cu_mask.0.lcssa.i.i, ptr %ao_cu_mask51.i.i, align 4
  %245 = ptrtoint ptr %cu_info1.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 4, ptr %cu_info1.i.i, align 4
  %max_waves_per_simd.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 1
  %246 = ptrtoint ptr %max_waves_per_simd.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 10, ptr %max_waves_per_simd.i.i, align 4
  %max_scratch_slots_per_cu.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 3
  %247 = ptrtoint ptr %max_scratch_slots_per_cu.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 32, ptr %max_scratch_slots_per_cu.i.i, align 4
  %wave_front_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 2
  %248 = ptrtoint ptr %wave_front_size.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 64, ptr %wave_front_size.i.i, align 4
  %lds_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 48, i32 4
  %249 = ptrtoint ptr %lds_size.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 64, ptr %lds_size.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %disable_masks.i.i) #12
  %double_offchip_lds_buf.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 31
  %250 = ptrtoint ptr %double_offchip_lds_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 1, ptr %double_offchip_lds_buf.i.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8665, i32 noundef 24624, i32 noundef 0) #12
  call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i.i, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9601, i32 noundef 27, i32 noundef 0) #12
  %srbm_mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %srbm_mutex.i, i32 noundef 0) #12
  %num_ids.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 0, i32 0, i32 1
  %251 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp169.not.i = icmp eq i32 %252, 0
  br i1 %cmp169.not.i, label %gfx_v7_0_get_cu_info.exit.i.for.end.i_crit_edge, label %if.end.peel.i

gfx_v7_0_get_cu_info.exit.i.for.end.i_crit_edge:  ; preds = %gfx_v7_0_get_cu_info.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.peel.i:                                    ; preds = %gfx_v7_0_get_cu_info.exit.i
  %shared_aperture_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 26
  call void @cik_srbm_select(ptr noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8973, i32 noundef 412, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8971, i32 noundef 1, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8972, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8970, i32 noundef 0, i32 noundef 0) #12
  %253 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %254)
  %cmp.peel.i = icmp ugt i32 %254, 1
  br i1 %cmp.peel.i, label %if.end.peel.i.if.end.i_crit_edge, label %if.end.peel.i.for.end.i_crit_edge

if.end.peel.i.for.end.i_crit_edge:                ; preds = %if.end.peel.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.peel.i.if.end.i_crit_edge:                 ; preds = %if.end.peel.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.peel.i.if.end.i_crit_edge
  %i.0170.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 1, %if.end.peel.i.if.end.i_crit_edge ]
  %255 = ptrtoint ptr %shared_aperture_start.i to i32
  call void @__asan_load8_noabort(i32 %255)
  %256 = load i64, ptr %shared_aperture_start.i, align 8
  %shr.i = lshr i64 %256, 48
  %conv.i = trunc i64 %shr.i to i32
  call void @cik_srbm_select(ptr noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.0170.i) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8973, i32 noundef 412, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8971, i32 noundef 1, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8972, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8970, i32 noundef %conv.i, i32 noundef 0) #12
  %inc.i = add nuw i32 %i.0170.i, 1
  %257 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %num_ids.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %258
  br i1 %cmp.i, label %if.end.i.if.end.i_crit_edge, label %if.end.i.for.end.i_crit_edge, !llvm.loop !188

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %if.end.peel.i.for.end.i_crit_edge, %gfx_v7_0_get_cu_info.exit.i.for.end.i_crit_edge
  call void @cik_srbm_select(ptr noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %srbm_mutex.i) #12
  call void @mutex_lock_nested(ptr noundef %srbm_mutex.i, i32 noundef 0) #12
  %first_kfd_vmid.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 1
  %259 = ptrtoint ptr %first_kfd_vmid.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %first_kfd_vmid.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %260)
  %cmp35.i.i = icmp slt i32 %260, 16
  br i1 %cmp35.i.i, label %for.end.i.for.body.i.i_crit_edge, label %for.end.i.for.end.i157.i_crit_edge

for.end.i.for.end.i157.i_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i157.i

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %i.036.i.i = phi i32 [ %inc.i155.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %260, %for.end.i.for.body.i.i_crit_edge ]
  call void @cik_srbm_select(ptr noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.036.i.i) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8973, i32 noundef 60, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8971, i32 noundef 1, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8972, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8970, i32 noundef 1610637312, i32 noundef 0) #12
  %inc.i155.i = add i32 %i.036.i.i, 1
  %exitcond.not.i156.i = icmp eq i32 %inc.i155.i, 16
  br i1 %exitcond.not.i156.i, label %for.body.i.i.for.end.i157.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.for.end.i157.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i157.i

for.end.i157.i:                                   ; preds = %for.body.i.i.for.end.i157.i_crit_edge, %for.end.i.for.end.i157.i_crit_edge
  call void @cik_srbm_select(ptr noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %srbm_mutex.i) #12
  %261 = ptrtoint ptr %first_kfd_vmid.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %first_kfd_vmid.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %262)
  %cmp537.i.i = icmp slt i32 %262, 16
  br i1 %cmp537.i.i, label %for.end.i157.i.for.body6.i.i_crit_edge, label %for.end.i157.i.for.body.i165.i.preheader_crit_edge

for.end.i157.i.for.body.i165.i.preheader_crit_edge: ; preds = %for.end.i157.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i165.i.preheader

for.end.i157.i.for.body6.i.i_crit_edge:           ; preds = %for.end.i157.i
  br label %for.body6.i.i

for.body6.i.i:                                    ; preds = %for.body6.i.i.for.body6.i.i_crit_edge, %for.end.i157.i.for.body6.i.i_crit_edge
  %i.138.i.i = phi i32 [ %inc11.i.i, %for.body6.i.i.for.body6.i.i_crit_edge ], [ %262, %for.end.i157.i.for.body6.i.i_crit_edge ]
  %arrayidx.i158.i = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %i.138.i.i
  %263 = ptrtoint ptr %arrayidx.i158.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx.i158.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %264, i32 noundef 0, i32 noundef 0) #12
  %mem_size.i.i = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %i.138.i.i, i32 1
  %265 = ptrtoint ptr %mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %mem_size.i.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %266, i32 noundef 0, i32 noundef 0) #12
  %gws.i.i = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %i.138.i.i, i32 2
  %267 = ptrtoint ptr %gws.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %gws.i.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %268, i32 noundef 0, i32 noundef 0) #12
  %oa.i.i = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %i.138.i.i, i32 3
  %269 = ptrtoint ptr %oa.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %oa.i.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %270, i32 noundef 0, i32 noundef 0) #12
  %inc11.i.i = add i32 %i.138.i.i, 1
  %exitcond39.not.i.i = icmp eq i32 %inc11.i.i, 16
  br i1 %exitcond39.not.i.i, label %for.body6.i.i.for.body.i165.i.preheader_crit_edge, label %for.body6.i.i.for.body6.i.i_crit_edge

for.body6.i.i.for.body6.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6.i.i

for.body6.i.i.for.body.i165.i.preheader_crit_edge: ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i165.i.preheader

for.body.i165.i.preheader:                        ; preds = %for.body6.i.i.for.body.i165.i.preheader_crit_edge, %for.end.i157.i.for.body.i165.i.preheader_crit_edge
  br label %for.body.i165.i

for.body.i165.i:                                  ; preds = %for.body.i165.i.for.body.i165.i_crit_edge, %for.body.i165.i.preheader
  %vmid.012.i.i = phi i32 [ %inc.i163.i, %for.body.i165.i.for.body.i165.i_crit_edge ], [ 1, %for.body.i165.i.preheader ]
  %arrayidx.i159.i = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %vmid.012.i.i
  %271 = ptrtoint ptr %arrayidx.i159.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx.i159.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %272, i32 noundef 0, i32 noundef 0) #12
  %mem_size.i160.i = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %vmid.012.i.i, i32 1
  %273 = ptrtoint ptr %mem_size.i160.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %mem_size.i160.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %274, i32 noundef 0, i32 noundef 0) #12
  %gws.i161.i = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %vmid.012.i.i, i32 2
  %275 = ptrtoint ptr %gws.i161.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %gws.i161.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %276, i32 noundef 0, i32 noundef 0) #12
  %oa.i162.i = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %vmid.012.i.i, i32 3
  %277 = ptrtoint ptr %oa.i162.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %oa.i162.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %278, i32 noundef 0, i32 noundef 0) #12
  %inc.i163.i = add nuw nsw i32 %vmid.012.i.i, 1
  %exitcond.not.i164.i = icmp eq i32 %inc.i163.i, 16
  br i1 %exitcond.not.i164.i, label %gfx_v7_0_constants_init.exit, label %for.body.i165.i.for.body.i165.i_crit_edge

for.body.i165.i.for.body.i165.i_crit_edge:        ; preds = %for.body.i165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i165.i

gfx_v7_0_constants_init.exit:                     ; preds = %for.body.i165.i
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9240, i32 noundef 32, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9538, i32 noundef 65536, i32 noundef 0) #12
  %call.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9280, i32 noundef 0) #12
  %or17.i = or i32 %call.i, 50331648
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9280, i32 noundef %or17.i, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8960, i32 noundef 1, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9740, i32 noundef 0, i32 noundef 0) #12
  %call18.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9741, i32 noundef 0) #12
  %and19.i = and i32 %call18.i, 267386880
  %or20.i = or i32 %and19.i, 1024
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9741, i32 noundef %or20.i, i32 noundef 0) #12
  %call21.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9742, i32 noundef 0) #12
  %and22.i = and i32 %call21.i, -131613
  %or23.i = or i32 %and22.i, 131584
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9742, i32 noundef %or23.i, i32 noundef 0) #12
  %call24.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 9860, i32 noundef 0) #12
  %or26.i = or i32 %call24.i, 98824
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9860, i32 noundef %or26.i, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 9295, i32 noundef 4, i32 noundef 0) #12
  %sc_prim_fifo_size_frontend.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 9
  %279 = ptrtoint ptr %sc_prim_fifo_size_frontend.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %sc_prim_fifo_size_frontend.i, align 4
  %sc_prim_fifo_size_backend.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 10
  %281 = ptrtoint ptr %sc_prim_fifo_size_backend.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %sc_prim_fifo_size_backend.i, align 8
  %shl31.i = shl i32 %282, 6
  %or32.i = or i32 %shl31.i, %280
  %sc_hiz_tile_fifo_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 11
  %283 = ptrtoint ptr %sc_hiz_tile_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %sc_hiz_tile_fifo_size.i, align 4
  %shl35.i = shl i32 %284, 15
  %or36.i = or i32 %or32.i, %shl35.i
  %sc_earlyz_tile_fifo_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 12
  %285 = ptrtoint ptr %sc_earlyz_tile_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %sc_earlyz_tile_fifo_size.i, align 8
  %shl39.i = shl i32 %286, 23
  %or40.i = or i32 %or36.i, %shl39.i
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8947, i32 noundef %or40.i, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49741, i32 noundef 1, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 55304, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8960, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8905, i32 noundef 16715775, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8753, i32 noundef 194, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8757, i32 noundef 16, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49793, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8837, i32 noundef 7, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8956, i32 noundef 1, i32 noundef 0) #12
  %call41.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12736, i32 noundef 0) #12
  %and42.i = and i32 %call41.i, -4096
  %or49.i = or i32 %and42.i, 1170
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12736, i32 noundef %or49.i, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %287 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %287(i32 noundef 10737400) #12
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %288 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %funcs, align 4
  %get_csb_buffer = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %289, i32 0, i32 5
  %290 = ptrtoint ptr %get_csb_buffer to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %get_csb_buffer, align 4
  %cs_ptr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 7
  %292 = ptrtoint ptr %cs_ptr to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %cs_ptr, align 8
  call void %291(ptr noundef %handle, ptr noundef %293) #12
  %294 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %funcs, align 4
  %resume = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %295, i32 0, i32 7
  %296 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %resume, align 4
  %call = call i32 %297(ptr noundef %handle) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %gfx_v7_0_constants_init.exit.cleanup_crit_edge

gfx_v7_0_constants_init.exit.cleanup_crit_edge:   ; preds = %gfx_v7_0_constants_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %gfx_v7_0_constants_init.exit
  %call.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12394, i32 noundef 0) #12
  %and.i.i21 = and i32 %call.i.i, -1572865
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12394, i32 noundef %and.i.i21, i32 noundef 0) #12
  %me_fw.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 9
  %298 = ptrtoint ptr %me_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %me_fw.i.i.i, align 4
  %tobool.not.i.i.i22 = icmp eq ptr %299, null
  br i1 %tobool.not.i.i.i22, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.end
  %pfp_fw.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 11
  %300 = ptrtoint ptr %pfp_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %pfp_fw.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %301, null
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.cleanup_crit_edge, label %lor.lhs.false3.i.i.i

lor.lhs.false.i.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %ce_fw.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 13
  %302 = ptrtoint ptr %ce_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %ce_fw.i.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %303, null
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false3.i.i.i.cleanup_crit_edge, label %if.end.i.i.i23

lor.lhs.false3.i.i.i.cleanup_crit_edge:           ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i.i23:                                   ; preds = %lor.lhs.false3.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %301, i32 0, i32 1
  %304 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %data.i.i.i, align 4
  %data10.i.i.i = getelementptr inbounds %struct.firmware, ptr %303, i32 0, i32 1
  %306 = ptrtoint ptr %data10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %data10.i.i.i, align 4
  %data13.i.i.i = getelementptr inbounds %struct.firmware, ptr %299, i32 0, i32 1
  %308 = ptrtoint ptr %data13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %data13.i.i.i, align 4
  call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %305) #12
  call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %307) #12
  call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %309) #12
  %ucode_version.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %305, i32 0, i32 6
  %310 = ptrtoint ptr %ucode_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %ucode_version.i.i.i, align 4
  %312 = call i32 @llvm.bswap.i32(i32 %311) #12
  %pfp_fw_version.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 12
  %313 = ptrtoint ptr %pfp_fw_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %312, ptr %pfp_fw_version.i.i.i, align 8
  %ucode_version19.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %307, i32 0, i32 6
  %314 = ptrtoint ptr %ucode_version19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %ucode_version19.i.i.i, align 4
  %316 = call i32 @llvm.bswap.i32(i32 %315) #12
  %ce_fw_version.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 14
  %317 = ptrtoint ptr %ce_fw_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %316, ptr %ce_fw_version.i.i.i, align 8
  %ucode_version22.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %309, i32 0, i32 6
  %318 = ptrtoint ptr %ucode_version22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %ucode_version22.i.i.i, align 4
  %320 = call i32 @llvm.bswap.i32(i32 %319) #12
  %me_fw_version.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 10
  %321 = ptrtoint ptr %me_fw_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %320, ptr %me_fw_version.i.i.i, align 8
  %ucode_feature_version.i.i.i = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %309, i32 0, i32 1
  %322 = ptrtoint ptr %ucode_feature_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %ucode_feature_version.i.i.i, align 4
  %324 = call i32 @llvm.bswap.i32(i32 %323) #12
  %me_feature_version.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 21
  %325 = ptrtoint ptr %me_feature_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %me_feature_version.i.i.i, align 4
  %ucode_feature_version25.i.i.i = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %307, i32 0, i32 1
  %326 = ptrtoint ptr %ucode_feature_version25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %ucode_feature_version25.i.i.i, align 4
  %328 = call i32 @llvm.bswap.i32(i32 %327) #12
  %ce_feature_version.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 22
  %329 = ptrtoint ptr %ce_feature_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %328, ptr %ce_feature_version.i.i.i, align 8
  %ucode_feature_version27.i.i.i = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %305, i32 0, i32 1
  %330 = ptrtoint ptr %ucode_feature_version27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %ucode_feature_version27.i.i.i, align 4
  %332 = call i32 @llvm.bswap.i32(i32 %331) #12
  %pfp_feature_version.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 23
  %333 = ptrtoint ptr %pfp_feature_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %332, ptr %pfp_feature_version.i.i.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8630, i32 noundef 352321536, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %334 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %334(i32 noundef 10737400) #12
  %335 = ptrtoint ptr %pfp_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %pfp_fw.i.i.i, align 4
  %data31.i.i.i = getelementptr inbounds %struct.firmware, ptr %336, i32 0, i32 1
  %337 = ptrtoint ptr %data31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %data31.i.i.i, align 4
  %ucode_array_offset_bytes.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %305, i32 0, i32 8
  %339 = ptrtoint ptr %ucode_array_offset_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %ucode_array_offset_bytes.i.i.i, align 4
  %ucode_size_bytes.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %305, i32 0, i32 7
  %341 = ptrtoint ptr %ucode_size_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %ucode_size_bytes.i.i.i, align 4
  %343 = call i32 @llvm.bswap.i32(i32 %342) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12372, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %343)
  %cmp132.not.i.i.i = icmp ult i32 %343, 4
  br i1 %cmp132.not.i.i.i, label %if.end.i.i.i23.for.end.i.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end.i.i.i23.for.end.i.i.i_crit_edge:           ; preds = %if.end.i.i.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i.i23
  %div129.i.i.i = lshr i32 %343, 2
  %344 = call i32 @llvm.bswap.i32(i32 %340) #12
  %add.ptr.i.i.i = getelementptr i8, ptr %338, i32 %344
  br label %for.body.i.i.i26

for.body.i.i.i26:                                 ; preds = %for.body.i.i.i26.for.body.i.i.i26_crit_edge, %for.body.preheader.i.i.i
  %i.0134.i.i.i = phi i32 [ %inc.i.i.i24, %for.body.i.i.i26.for.body.i.i.i26_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %fw_data.0133.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i26.for.body.i.i.i26_crit_edge ], [ %add.ptr.i.i.i, %for.body.preheader.i.i.i ]
  %incdec.ptr.i.i.i = getelementptr i32, ptr %fw_data.0133.i.i.i, i32 1
  %345 = ptrtoint ptr %fw_data.0133.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %fw_data.0133.i.i.i, align 4
  %347 = call i32 @llvm.bswap.i32(i32 %346) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12373, i32 noundef %347, i32 noundef 0) #12
  %inc.i.i.i24 = add nuw nsw i32 %i.0134.i.i.i, 1
  %exitcond.not.i.i.i25 = icmp eq i32 %inc.i.i.i24, %div129.i.i.i
  br i1 %exitcond.not.i.i.i25, label %for.body.i.i.i26.for.end.i.i.i_crit_edge, label %for.body.i.i.i26.for.body.i.i.i26_crit_edge

for.body.i.i.i26.for.body.i.i.i26_crit_edge:      ; preds = %for.body.i.i.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i26

for.body.i.i.i26.for.end.i.i.i_crit_edge:         ; preds = %for.body.i.i.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i26.for.end.i.i.i_crit_edge, %if.end.i.i.i23.for.end.i.i.i_crit_edge
  %348 = ptrtoint ptr %pfp_fw_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %pfp_fw_version.i.i.i, align 8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12372, i32 noundef %349, i32 noundef 0) #12
  %350 = ptrtoint ptr %ce_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ce_fw.i.i.i, align 4
  %data38.i.i.i = getelementptr inbounds %struct.firmware, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %data38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %data38.i.i.i, align 4
  %ucode_array_offset_bytes40.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %307, i32 0, i32 8
  %354 = ptrtoint ptr %ucode_array_offset_bytes40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %ucode_array_offset_bytes40.i.i.i, align 4
  %ucode_size_bytes43.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %307, i32 0, i32 7
  %356 = ptrtoint ptr %ucode_size_bytes43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %ucode_size_bytes43.i.i.i, align 4
  %358 = call i32 @llvm.bswap.i32(i32 %357) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12378, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %358)
  %cmp46135.not.i.i.i = icmp ult i32 %358, 4
  br i1 %cmp46135.not.i.i.i, label %for.end.i.i.i.for.end52.i.i.i_crit_edge, label %for.body47.preheader.i.i.i

for.end.i.i.i.for.end52.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end52.i.i.i

for.body47.preheader.i.i.i:                       ; preds = %for.end.i.i.i
  %div44130.i.i.i = lshr i32 %358, 2
  %359 = call i32 @llvm.bswap.i32(i32 %355) #12
  %add.ptr41.i.i.i = getelementptr i8, ptr %353, i32 %359
  br label %for.body47.i.i.i

for.body47.i.i.i:                                 ; preds = %for.body47.i.i.i.for.body47.i.i.i_crit_edge, %for.body47.preheader.i.i.i
  %i.1137.i.i.i = phi i32 [ %inc51.i.i.i, %for.body47.i.i.i.for.body47.i.i.i_crit_edge ], [ 0, %for.body47.preheader.i.i.i ]
  %fw_data.1136.i.i.i = phi ptr [ %incdec.ptr48.i.i.i, %for.body47.i.i.i.for.body47.i.i.i_crit_edge ], [ %add.ptr41.i.i.i, %for.body47.preheader.i.i.i ]
  %incdec.ptr48.i.i.i = getelementptr i32, ptr %fw_data.1136.i.i.i, i32 1
  %360 = ptrtoint ptr %fw_data.1136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %fw_data.1136.i.i.i, align 4
  %362 = call i32 @llvm.bswap.i32(i32 %361) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12379, i32 noundef %362, i32 noundef 0) #12
  %inc51.i.i.i = add nuw nsw i32 %i.1137.i.i.i, 1
  %exitcond142.not.i.i.i = icmp eq i32 %inc51.i.i.i, %div44130.i.i.i
  br i1 %exitcond142.not.i.i.i, label %for.body47.i.i.i.for.end52.i.i.i_crit_edge, label %for.body47.i.i.i.for.body47.i.i.i_crit_edge

for.body47.i.i.i.for.body47.i.i.i_crit_edge:      ; preds = %for.body47.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body47.i.i.i

for.body47.i.i.i.for.end52.i.i.i_crit_edge:       ; preds = %for.body47.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end52.i.i.i

for.end52.i.i.i:                                  ; preds = %for.body47.i.i.i.for.end52.i.i.i_crit_edge, %for.end.i.i.i.for.end52.i.i.i_crit_edge
  %363 = ptrtoint ptr %ce_fw_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %ce_fw_version.i.i.i, align 8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12378, i32 noundef %364, i32 noundef 0) #12
  %365 = ptrtoint ptr %me_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %me_fw.i.i.i, align 4
  %data57.i.i.i = getelementptr inbounds %struct.firmware, ptr %366, i32 0, i32 1
  %367 = ptrtoint ptr %data57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %data57.i.i.i, align 4
  %ucode_array_offset_bytes59.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %309, i32 0, i32 8
  %369 = ptrtoint ptr %ucode_array_offset_bytes59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %ucode_array_offset_bytes59.i.i.i, align 4
  %ucode_size_bytes62.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %309, i32 0, i32 7
  %371 = ptrtoint ptr %ucode_size_bytes62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %ucode_size_bytes62.i.i.i, align 4
  %373 = call i32 @llvm.bswap.i32(i32 %372) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12375, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %373)
  %cmp65138.not.i.i.i = icmp ult i32 %373, 4
  br i1 %cmp65138.not.i.i.i, label %for.end52.i.i.i.if.end.i.i27_crit_edge, label %for.body66.preheader.i.i.i

for.end52.i.i.i.if.end.i.i27_crit_edge:           ; preds = %for.end52.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i27

for.body66.preheader.i.i.i:                       ; preds = %for.end52.i.i.i
  %div63131.i.i.i = lshr i32 %373, 2
  %374 = call i32 @llvm.bswap.i32(i32 %370) #12
  %add.ptr60.i.i.i = getelementptr i8, ptr %368, i32 %374
  br label %for.body66.i.i.i

for.body66.i.i.i:                                 ; preds = %for.body66.i.i.i.for.body66.i.i.i_crit_edge, %for.body66.preheader.i.i.i
  %i.2140.i.i.i = phi i32 [ %inc70.i.i.i, %for.body66.i.i.i.for.body66.i.i.i_crit_edge ], [ 0, %for.body66.preheader.i.i.i ]
  %fw_data.2139.i.i.i = phi ptr [ %incdec.ptr67.i.i.i, %for.body66.i.i.i.for.body66.i.i.i_crit_edge ], [ %add.ptr60.i.i.i, %for.body66.preheader.i.i.i ]
  %incdec.ptr67.i.i.i = getelementptr i32, ptr %fw_data.2139.i.i.i, i32 1
  %375 = ptrtoint ptr %fw_data.2139.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %fw_data.2139.i.i.i, align 4
  %377 = call i32 @llvm.bswap.i32(i32 %376) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12376, i32 noundef %377, i32 noundef 0) #12
  %inc70.i.i.i = add nuw nsw i32 %i.2140.i.i.i, 1
  %exitcond144.not.i.i.i = icmp eq i32 %inc70.i.i.i, %div63131.i.i.i
  br i1 %exitcond144.not.i.i.i, label %for.body66.i.i.i.if.end.i.i27_crit_edge, label %for.body66.i.i.i.for.body66.i.i.i_crit_edge

for.body66.i.i.i.for.body66.i.i.i_crit_edge:      ; preds = %for.body66.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body66.i.i.i

for.body66.i.i.i.if.end.i.i27_crit_edge:          ; preds = %for.body66.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i27

if.end.i.i27:                                     ; preds = %for.body66.i.i.i.if.end.i.i27_crit_edge, %for.end52.i.i.i.if.end.i.i27_crit_edge
  %378 = ptrtoint ptr %me_fw_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %me_fw_version.i.i.i, align 8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12375, i32 noundef %379, i32 noundef 0) #12
  %mec_fw.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 17
  %380 = ptrtoint ptr %mec_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %mec_fw.i.i.i, align 4
  %tobool.not.i9.i.i = icmp eq ptr %381, null
  br i1 %tobool.not.i9.i.i, label %if.end.i.i27.cleanup_crit_edge, label %if.end.i15.i.i

if.end.i.i27.cleanup_crit_edge:                   ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i15.i.i:                                   ; preds = %if.end.i.i27
  %data.i10.i.i = getelementptr inbounds %struct.firmware, ptr %381, i32 0, i32 1
  %382 = ptrtoint ptr %data.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %data.i10.i.i, align 4
  call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %383) #12
  %ucode_version.i11.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %383, i32 0, i32 6
  %384 = ptrtoint ptr %ucode_version.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %ucode_version.i11.i.i, align 4
  %386 = call i32 @llvm.bswap.i32(i32 %385) #12
  %mec_fw_version.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 18
  %387 = ptrtoint ptr %mec_fw_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %386, ptr %mec_fw_version.i.i.i, align 8
  %ucode_feature_version.i12.i.i = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %383, i32 0, i32 1
  %388 = ptrtoint ptr %ucode_feature_version.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %ucode_feature_version.i12.i.i, align 4
  %390 = call i32 @llvm.bswap.i32(i32 %389) #12
  %mec_feature_version.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 31
  %391 = ptrtoint ptr %mec_feature_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %mec_feature_version.i.i.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8333, i32 noundef 1342177280, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %392 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %392(i32 noundef 10737400) #12
  %393 = ptrtoint ptr %mec_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %mec_fw.i.i.i, align 4
  %data8.i.i.i = getelementptr inbounds %struct.firmware, ptr %394, i32 0, i32 1
  %395 = ptrtoint ptr %data8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %data8.i.i.i, align 4
  %ucode_array_offset_bytes.i13.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %383, i32 0, i32 8
  %397 = ptrtoint ptr %ucode_array_offset_bytes.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %ucode_array_offset_bytes.i13.i.i, align 4
  %ucode_size_bytes.i14.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %383, i32 0, i32 7
  %399 = ptrtoint ptr %ucode_size_bytes.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %ucode_size_bytes.i14.i.i, align 4
  %401 = call i32 @llvm.bswap.i32(i32 %400) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12380, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %401)
  %cmp81.not.i.i.i = icmp ult i32 %401, 4
  br i1 %cmp81.not.i.i.i, label %if.end.i15.i.i.for.end.i22.i.i_crit_edge, label %for.body.preheader.i17.i.i

if.end.i15.i.i.for.end.i22.i.i_crit_edge:         ; preds = %if.end.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i22.i.i

for.body.preheader.i17.i.i:                       ; preds = %if.end.i15.i.i
  %div79.i.i.i = lshr i32 %401, 2
  %402 = call i32 @llvm.bswap.i32(i32 %398) #12
  %add.ptr.i16.i.i = getelementptr i8, ptr %396, i32 %402
  br label %for.body.i21.i.i

for.body.i21.i.i:                                 ; preds = %for.body.i21.i.i.for.body.i21.i.i_crit_edge, %for.body.preheader.i17.i.i
  %i.083.i.i.i = phi i32 [ %inc.i19.i.i, %for.body.i21.i.i.for.body.i21.i.i_crit_edge ], [ 0, %for.body.preheader.i17.i.i ]
  %fw_data.082.i.i.i = phi ptr [ %incdec.ptr.i18.i.i, %for.body.i21.i.i.for.body.i21.i.i_crit_edge ], [ %add.ptr.i16.i.i, %for.body.preheader.i17.i.i ]
  %incdec.ptr.i18.i.i = getelementptr i32, ptr %fw_data.082.i.i.i, i32 1
  %403 = ptrtoint ptr %fw_data.082.i.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %fw_data.082.i.i.i, align 4
  %405 = call i32 @llvm.bswap.i32(i32 %404) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12381, i32 noundef %405, i32 noundef 0) #12
  %inc.i19.i.i = add nuw nsw i32 %i.083.i.i.i, 1
  %exitcond.not.i20.i.i = icmp eq i32 %inc.i19.i.i, %div79.i.i.i
  br i1 %exitcond.not.i20.i.i, label %for.body.i21.i.i.for.end.i22.i.i_crit_edge, label %for.body.i21.i.i.for.body.i21.i.i_crit_edge

for.body.i21.i.i.for.body.i21.i.i_crit_edge:      ; preds = %for.body.i21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i21.i.i

for.body.i21.i.i.for.end.i22.i.i_crit_edge:       ; preds = %for.body.i21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i22.i.i

for.end.i22.i.i:                                  ; preds = %for.body.i21.i.i.for.end.i22.i.i_crit_edge, %if.end.i15.i.i.for.end.i22.i.i_crit_edge
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12380, i32 noundef 0, i32 noundef 0) #12
  %406 = ptrtoint ptr %asic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %asic_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %407)
  %cmp11.i.i.i = icmp eq i32 %407, 6
  br i1 %cmp11.i.i.i, label %if.then12.i.i.i, label %for.end.i22.i.i.if.end.i28_crit_edge

for.end.i22.i.i.if.end.i28_crit_edge:             ; preds = %for.end.i22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i28

if.then12.i.i.i:                                  ; preds = %for.end.i22.i.i
  %mec2_fw.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 19
  %408 = ptrtoint ptr %mec2_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %mec2_fw.i.i.i, align 4
  %tobool14.not.i.i.i = icmp eq ptr %409, null
  br i1 %tobool14.not.i.i.i, label %if.then12.i.i.i.cleanup_crit_edge, label %if.end16.i.i.i

if.then12.i.i.i.cleanup_crit_edge:                ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16.i.i.i:                                   ; preds = %if.then12.i.i.i
  %data19.i.i.i = getelementptr inbounds %struct.firmware, ptr %409, i32 0, i32 1
  %410 = ptrtoint ptr %data19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %data19.i.i.i, align 4
  call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %411) #12
  %ucode_version22.i23.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %411, i32 0, i32 6
  %412 = ptrtoint ptr %ucode_version22.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %ucode_version22.i23.i.i, align 4
  %414 = call i32 @llvm.bswap.i32(i32 %413) #12
  %mec2_fw_version.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 20
  %415 = ptrtoint ptr %mec2_fw_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %414, ptr %mec2_fw_version.i.i.i, align 8
  %ucode_feature_version24.i.i.i = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %411, i32 0, i32 1
  %416 = ptrtoint ptr %ucode_feature_version24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %ucode_feature_version24.i.i.i, align 4
  %418 = call i32 @llvm.bswap.i32(i32 %417) #12
  %mec2_feature_version.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 32
  %419 = ptrtoint ptr %mec2_feature_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %418, ptr %mec2_feature_version.i.i.i, align 8
  %420 = ptrtoint ptr %mec2_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %mec2_fw.i.i.i, align 4
  %data28.i.i.i = getelementptr inbounds %struct.firmware, ptr %421, i32 0, i32 1
  %422 = ptrtoint ptr %data28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %data28.i.i.i, align 4
  %ucode_array_offset_bytes30.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %411, i32 0, i32 8
  %424 = ptrtoint ptr %ucode_array_offset_bytes30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %ucode_array_offset_bytes30.i.i.i, align 4
  %ucode_size_bytes33.i.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %411, i32 0, i32 7
  %426 = ptrtoint ptr %ucode_size_bytes33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %ucode_size_bytes33.i.i.i, align 4
  %428 = call i32 @llvm.bswap.i32(i32 %427) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12382, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %428)
  %cmp3684.not.i.i.i = icmp ult i32 %428, 4
  br i1 %cmp3684.not.i.i.i, label %if.end16.i.i.i.for.end42.i.i.i_crit_edge, label %for.body37.preheader.i.i.i

if.end16.i.i.i.for.end42.i.i.i_crit_edge:         ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end42.i.i.i

for.body37.preheader.i.i.i:                       ; preds = %if.end16.i.i.i
  %div3480.i.i.i = lshr i32 %428, 2
  %429 = call i32 @llvm.bswap.i32(i32 %425) #12
  %add.ptr31.i.i.i = getelementptr i8, ptr %423, i32 %429
  br label %for.body37.i.i.i

for.body37.i.i.i:                                 ; preds = %for.body37.i.i.i.for.body37.i.i.i_crit_edge, %for.body37.preheader.i.i.i
  %i.186.i.i.i = phi i32 [ %inc41.i.i.i, %for.body37.i.i.i.for.body37.i.i.i_crit_edge ], [ 0, %for.body37.preheader.i.i.i ]
  %fw_data.185.i.i.i = phi ptr [ %incdec.ptr38.i.i.i, %for.body37.i.i.i.for.body37.i.i.i_crit_edge ], [ %add.ptr31.i.i.i, %for.body37.preheader.i.i.i ]
  %incdec.ptr38.i.i.i = getelementptr i32, ptr %fw_data.185.i.i.i, i32 1
  %430 = ptrtoint ptr %fw_data.185.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %fw_data.185.i.i.i, align 4
  %432 = call i32 @llvm.bswap.i32(i32 %431) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12383, i32 noundef %432, i32 noundef 0) #12
  %inc41.i.i.i = add nuw nsw i32 %i.186.i.i.i, 1
  %exitcond88.not.i.i.i = icmp eq i32 %inc41.i.i.i, %div3480.i.i.i
  br i1 %exitcond88.not.i.i.i, label %for.body37.i.i.i.for.end42.i.i.i_crit_edge, label %for.body37.i.i.i.for.body37.i.i.i_crit_edge

for.body37.i.i.i.for.body37.i.i.i_crit_edge:      ; preds = %for.body37.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body37.i.i.i

for.body37.i.i.i.for.end42.i.i.i_crit_edge:       ; preds = %for.body37.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end42.i.i.i

for.end42.i.i.i:                                  ; preds = %for.body37.i.i.i.for.end42.i.i.i_crit_edge, %if.end16.i.i.i.for.end42.i.i.i_crit_edge
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12382, i32 noundef 0, i32 noundef 0) #12
  br label %if.end.i28

if.end.i28:                                       ; preds = %for.end42.i.i.i, %for.end.i22.i.i.if.end.i28_crit_edge
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49263, i32 noundef 0, i32 noundef 0) #12
  %433 = ptrtoint ptr %asic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %asic_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %434)
  %cmp.not.i.i = icmp eq i32 %434, 8
  br i1 %cmp.not.i.i, label %if.end.i28.if.end.i18.i_crit_edge, label %if.then.i.i29

if.end.i28.if.end.i18.i_crit_edge:                ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i18.i

if.then.i.i29:                                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49266, i32 noundef 0, i32 noundef 0) #12
  br label %if.end.i18.i

if.end.i18.i:                                     ; preds = %if.then.i.i29, %if.end.i28.if.end.i18.i_crit_edge
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8641, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12369, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49233, i32 noundef 0, i32 noundef 0) #12
  %gfx_ring.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36
  %ring_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 9
  %435 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %ring_size.i.i, align 8
  %div96.i.i = lshr i32 %436, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %436)
  %cmp.i.i.i = icmp ugt i32 %436, 15
  %sub.i97.i.i = add nsw i32 %div96.i.i, -1
  %437 = call i32 @llvm.ctlz.i32(i32 %sub.i97.i.i, i1 false) #12, !range !190
  %add.i.i.i35 = sub nuw nsw i32 32, %437
  %cond34.i.i = select i1 %cmp.i.i.i, i32 %add.i.i.i35, i32 0
  %or35.i.i = or i32 %cond34.i.i, 133376
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12353, i32 noundef %or35.i.i, i32 noundef 0) #12
  %or36.i.i = or i32 %cond34.i.i, -2147350272
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12353, i32 noundef %or36.i.i, i32 noundef 0) #12
  %wptr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 7
  %438 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_store8_noabort(i32 %438)
  store i64 0, ptr %wptr.i.i, align 8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12357, i32 noundef 0, i32 noundef 0) #12
  %gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 70, i32 2
  %439 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %439)
  %440 = load i64, ptr %gpu_addr.i.i, align 8
  %rptr_offs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 6
  %441 = ptrtoint ptr %rptr_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %rptr_offs.i.i, align 8
  %mul.i.i36 = shl i32 %442, 2
  %conv39.i.i = zext i32 %mul.i.i36 to i64
  %add40.i.i = add i64 %440, %conv39.i.i
  %conv42.i.i = trunc i64 %add40.i.i to i32
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12355, i32 noundef %conv42.i.i, i32 noundef 0) #12
  %shr.i.i37 = lshr i64 %add40.i.i, 32
  %conv44.i.i = trunc i64 %shr.i.i37 to i32
  %and45.i.i = and i32 %conv44.i.i, 255
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12356, i32 noundef %and45.i.i, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49232, i32 noundef 0, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %443 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %443(i32 noundef 214748000) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12353, i32 noundef %or35.i.i, i32 noundef 0) #12
  %gpu_addr46.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 12
  %444 = ptrtoint ptr %gpu_addr46.i.i to i32
  call void @__asan_load8_noabort(i32 %444)
  %445 = load i64, ptr %gpu_addr46.i.i, align 8
  %shr47.i.i = lshr i64 %445, 8
  %conv48.i.i = trunc i64 %shr47.i.i to i32
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12352, i32 noundef %conv48.i.i, i32 noundef 0) #12
  %shr49.i.i = lshr i64 %445, 40
  %conv51.i.i = trunc i64 %shr49.i.i to i32
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12465, i32 noundef %conv51.i.i, i32 noundef 0) #12
  %max_hw_contexts.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 8
  %446 = ptrtoint ptr %max_hw_contexts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %max_hw_contexts.i.i.i, align 8
  %sub.i98.i.i = add i32 %447, -1
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12462, i32 noundef %sub.i98.i.i, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12368, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12363, i32 noundef 1, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8630, i32 noundef 0, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %448 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %448(i32 noundef 10737400) #12
  %cs_data.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 8
  %449 = ptrtoint ptr %cs_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %cs_data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %450, null
  br i1 %cmp.i.i.i.i, label %if.end.i18.i.gfx_v7_0_get_csb_size.exit.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.i

if.end.i18.i.gfx_v7_0_get_csb_size.exit.i.i.i_crit_edge: ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_get_csb_size.exit.i.i.i

for.cond.preheader.i.i.i.i:                       ; preds = %if.end.i18.i
  %451 = ptrtoint ptr %450 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %450, align 4
  %cmp5.not41.i.i.i.i = icmp eq ptr %452, null
  br i1 %cmp5.not41.i.i.i.i, label %for.cond.preheader.i.i.i.i.for.end17.i.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge

for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  br label %for.cond7.preheader.i.i.i.i

for.cond.preheader.i.i.i.i.for.end17.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17.i.i.i.i

for.cond7.preheader.i.i.i.i:                      ; preds = %for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge
  %453 = phi ptr [ %463, %for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ], [ %452, %for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ]
  %sect.043.i.i.i.i = phi ptr [ %incdec.ptr16.i.i.i.i, %for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ], [ %450, %for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ]
  %count.042.i.i.i.i = phi i32 [ %count.1.lcssa.i.i.i.i, %for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ], [ 5, %for.cond.preheader.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge ]
  %454 = ptrtoint ptr %453 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %453, align 4
  %cmp8.not38.i.i.i.i = icmp eq ptr %455, null
  br i1 %cmp8.not38.i.i.i.i, label %for.cond7.preheader.i.i.i.i.for.inc15.i.i.i.i_crit_edge, label %for.body9.lr.ph.i.i.i.i

for.cond7.preheader.i.i.i.i.for.inc15.i.i.i.i_crit_edge: ; preds = %for.cond7.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc15.i.i.i.i

for.body9.lr.ph.i.i.i.i:                          ; preds = %for.cond7.preheader.i.i.i.i
  %id.i.i.i.i = getelementptr inbounds %struct.cs_section_def, ptr %sect.043.i.i.i.i, i32 0, i32 1
  %456 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %457)
  %cmp10.i.i.i.i = icmp eq i32 %457, 1
  br i1 %cmp10.i.i.i.i, label %for.body9.lr.ph.i.i.i.i.for.body9.i.i.i.i_crit_edge, label %for.body9.lr.ph.i.i.i.i.gfx_v7_0_get_csb_size.exit.i.i.i_crit_edge

for.body9.lr.ph.i.i.i.i.gfx_v7_0_get_csb_size.exit.i.i.i_crit_edge: ; preds = %for.body9.lr.ph.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_get_csb_size.exit.i.i.i

for.body9.lr.ph.i.i.i.i.for.body9.i.i.i.i_crit_edge: ; preds = %for.body9.lr.ph.i.i.i.i
  br label %for.body9.i.i.i.i

for.body9.i.i.i.i:                                ; preds = %for.body9.i.i.i.i.for.body9.i.i.i.i_crit_edge, %for.body9.lr.ph.i.i.i.i.for.body9.i.i.i.i_crit_edge
  %ext.040.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.body9.i.i.i.i.for.body9.i.i.i.i_crit_edge ], [ %453, %for.body9.lr.ph.i.i.i.i.for.body9.i.i.i.i_crit_edge ]
  %count.139.i.i.i.i = phi i32 [ %add13.i.i.i.i, %for.body9.i.i.i.i.for.body9.i.i.i.i_crit_edge ], [ %count.042.i.i.i.i, %for.body9.lr.ph.i.i.i.i.for.body9.i.i.i.i_crit_edge ]
  %reg_count.i.i.i.i = getelementptr inbounds %struct.cs_extent_def, ptr %ext.040.i.i.i.i, i32 0, i32 2
  %458 = ptrtoint ptr %reg_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %reg_count.i.i.i.i, align 4
  %add12.i.i.i.i = add i32 %count.139.i.i.i.i, 2
  %add13.i.i.i.i = add i32 %add12.i.i.i.i, %459
  %incdec.ptr.i.i.i.i = getelementptr %struct.cs_extent_def, ptr %ext.040.i.i.i.i, i32 1
  %460 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %incdec.ptr.i.i.i.i, align 4
  %cmp8.not.i.i.i.i = icmp eq ptr %461, null
  br i1 %cmp8.not.i.i.i.i, label %for.body9.i.i.i.i.for.inc15.i.i.i.i_crit_edge, label %for.body9.i.i.i.i.for.body9.i.i.i.i_crit_edge

for.body9.i.i.i.i.for.body9.i.i.i.i_crit_edge:    ; preds = %for.body9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9.i.i.i.i

for.body9.i.i.i.i.for.inc15.i.i.i.i_crit_edge:    ; preds = %for.body9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc15.i.i.i.i

for.inc15.i.i.i.i:                                ; preds = %for.body9.i.i.i.i.for.inc15.i.i.i.i_crit_edge, %for.cond7.preheader.i.i.i.i.for.inc15.i.i.i.i_crit_edge
  %count.1.lcssa.i.i.i.i = phi i32 [ %count.042.i.i.i.i, %for.cond7.preheader.i.i.i.i.for.inc15.i.i.i.i_crit_edge ], [ %add13.i.i.i.i, %for.body9.i.i.i.i.for.inc15.i.i.i.i_crit_edge ]
  %incdec.ptr16.i.i.i.i = getelementptr %struct.cs_section_def, ptr %sect.043.i.i.i.i, i32 1
  %462 = ptrtoint ptr %incdec.ptr16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %incdec.ptr16.i.i.i.i, align 4
  %cmp5.not.i.i.i.i = icmp eq ptr %463, null
  br i1 %cmp5.not.i.i.i.i, label %for.inc15.i.i.i.i.for.end17.i.i.i.i_crit_edge, label %for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge

for.inc15.i.i.i.i.for.cond7.preheader.i.i.i.i_crit_edge: ; preds = %for.inc15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond7.preheader.i.i.i.i

for.inc15.i.i.i.i.for.end17.i.i.i.i_crit_edge:    ; preds = %for.inc15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17.i.i.i.i

for.end17.i.i.i.i:                                ; preds = %for.inc15.i.i.i.i.for.end17.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.end17.i.i.i.i_crit_edge
  %count.0.lcssa.i.i.i.i = phi i32 [ 5, %for.cond.preheader.i.i.i.i.for.end17.i.i.i.i_crit_edge ], [ %count.1.lcssa.i.i.i.i, %for.inc15.i.i.i.i.for.end17.i.i.i.i_crit_edge ]
  %add20.i.i.i.i = add i32 %count.0.lcssa.i.i.i.i, 8
  br label %gfx_v7_0_get_csb_size.exit.i.i.i

gfx_v7_0_get_csb_size.exit.i.i.i:                 ; preds = %for.end17.i.i.i.i, %for.body9.lr.ph.i.i.i.i.gfx_v7_0_get_csb_size.exit.i.i.i_crit_edge, %if.end.i18.i.gfx_v7_0_get_csb_size.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %add20.i.i.i.i, %for.end17.i.i.i.i ], [ 0, %if.end.i18.i.gfx_v7_0_get_csb_size.exit.i.i.i_crit_edge ], [ 0, %for.body9.lr.ph.i.i.i.i.gfx_v7_0_get_csb_size.exit.i.i.i_crit_edge ]
  %add.i99.i.i = add i32 %retval.0.i.i.i.i, 8
  %call2.i.i.i = call i32 @amdgpu_ring_alloc(ptr noundef %gfx_ring.i.i, i32 noundef %add.i99.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i19.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i19.i, label %if.end.i.i20.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %gfx_v7_0_get_csb_size.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call2.i.i.i) #12
  br label %gfx_v7_0_cp_gfx_resume.exit.i

if.end.i.i20.i:                                   ; preds = %gfx_v7_0_get_csb_size.exit.i.i.i
  %count_dw.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 11
  %464 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %465)
  %cmp.i1.i.i.i = icmp slt i32 %465, 1
  br i1 %cmp.i1.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i20.i.amdgpu_ring_write.exit.i.i.i_crit_edge

if.end.i.i20.i.amdgpu_ring_write.exit.i.i.i_crit_edge: ; preds = %if.end.i.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit.i.i.i

amdgpu_ring_write.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %if.end.i.i20.i.amdgpu_ring_write.exit.i.i.i_crit_edge
  %ring1.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 5
  %466 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %ring1.i.i.i.i, align 4
  %468 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %468)
  %469 = load i64, ptr %wptr.i.i, align 8
  %inc.i.i.i.i = add i64 %469, 1
  store i64 %inc.i.i.i.i, ptr %wptr.i.i, align 8
  %buf_mask.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 14
  %470 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %472 = trunc i64 %469 to i32
  %idxprom.i.i.i.i = and i32 %471, %472
  %arrayidx.i.i.i.i = getelementptr i32, ptr %467, i32 %idxprom.i.i.i.i
  %473 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store volatile i32 -1073606400, ptr %arrayidx.i.i.i.i, align 4
  %ptr_mask.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 36, i32 0, i32 13
  %474 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %474)
  %475 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %476 = load i64, ptr %wptr.i.i, align 8
  %and3.i.i.i.i = and i64 %476, %475
  store i64 %and3.i.i.i.i, ptr %wptr.i.i, align 8
  %477 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %478, -1
  store i32 %dec.i.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i.i.i)
  %cmp.i3.i.i.i = icmp slt i32 %dec.i.i.i.i, 1
  br i1 %cmp.i3.i.i.i, label %if.then.i4.i.i.i, label %amdgpu_ring_write.exit.i.i.i.amdgpu_ring_write.exit14.i.i.i_crit_edge

amdgpu_ring_write.exit.i.i.i.amdgpu_ring_write.exit14.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit14.i.i.i

if.then.i4.i.i.i:                                 ; preds = %amdgpu_ring_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit14.i.i.i

amdgpu_ring_write.exit14.i.i.i:                   ; preds = %if.then.i4.i.i.i, %amdgpu_ring_write.exit.i.i.i.amdgpu_ring_write.exit14.i.i.i_crit_edge
  %479 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %ring1.i.i.i.i, align 4
  %481 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %481)
  %482 = load i64, ptr %wptr.i.i, align 8
  %inc.i7.i.i.i = add i64 %482, 1
  store i64 %inc.i7.i.i.i, ptr %wptr.i.i, align 8
  %483 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %485 = trunc i64 %482 to i32
  %idxprom.i9.i.i.i = and i32 %484, %485
  %arrayidx.i10.i.i.i = getelementptr i32, ptr %480, i32 %idxprom.i9.i.i.i
  %486 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %486)
  store volatile i32 3, ptr %arrayidx.i10.i.i.i, align 4
  %487 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %487)
  %488 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %489 = load i64, ptr %wptr.i.i, align 8
  %and3.i12.i.i.i = and i64 %489, %488
  store i64 %and3.i12.i.i.i, ptr %wptr.i.i, align 8
  %490 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i13.i.i.i = add i32 %491, -1
  store i32 %dec.i13.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i13.i.i.i)
  %cmp.i16.i.i.i = icmp slt i32 %dec.i13.i.i.i, 1
  br i1 %cmp.i16.i.i.i, label %if.then.i17.i.i.i, label %amdgpu_ring_write.exit14.i.i.i.amdgpu_ring_write.exit27.i.i.i_crit_edge

amdgpu_ring_write.exit14.i.i.i.amdgpu_ring_write.exit27.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit27.i.i.i

if.then.i17.i.i.i:                                ; preds = %amdgpu_ring_write.exit14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit27.i.i.i

amdgpu_ring_write.exit27.i.i.i:                   ; preds = %if.then.i17.i.i.i, %amdgpu_ring_write.exit14.i.i.i.amdgpu_ring_write.exit27.i.i.i_crit_edge
  %492 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %ring1.i.i.i.i, align 4
  %494 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %494)
  %495 = load i64, ptr %wptr.i.i, align 8
  %inc.i20.i.i.i = add i64 %495, 1
  store i64 %inc.i20.i.i.i, ptr %wptr.i.i, align 8
  %496 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %498 = trunc i64 %495 to i32
  %idxprom.i22.i.i.i = and i32 %497, %498
  %arrayidx.i23.i.i.i = getelementptr i32, ptr %493, i32 %idxprom.i22.i.i.i
  %499 = ptrtoint ptr %arrayidx.i23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store volatile i32 32768, ptr %arrayidx.i23.i.i.i, align 4
  %500 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %500)
  %501 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %502 = load i64, ptr %wptr.i.i, align 8
  %and3.i25.i.i.i = and i64 %502, %501
  store i64 %and3.i25.i.i.i, ptr %wptr.i.i, align 8
  %503 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i26.i.i.i = add i32 %504, -1
  store i32 %dec.i26.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i26.i.i.i)
  %cmp.i29.i.i.i = icmp slt i32 %dec.i26.i.i.i, 1
  br i1 %cmp.i29.i.i.i, label %if.then.i30.i.i.i, label %amdgpu_ring_write.exit27.i.i.i.amdgpu_ring_write.exit40.i.i.i_crit_edge

amdgpu_ring_write.exit27.i.i.i.amdgpu_ring_write.exit40.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit40.i.i.i

if.then.i30.i.i.i:                                ; preds = %amdgpu_ring_write.exit27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit40.i.i.i

amdgpu_ring_write.exit40.i.i.i:                   ; preds = %if.then.i30.i.i.i, %amdgpu_ring_write.exit27.i.i.i.amdgpu_ring_write.exit40.i.i.i_crit_edge
  %505 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %ring1.i.i.i.i, align 4
  %507 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %507)
  %508 = load i64, ptr %wptr.i.i, align 8
  %inc.i33.i.i.i = add i64 %508, 1
  store i64 %inc.i33.i.i.i, ptr %wptr.i.i, align 8
  %509 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %511 = trunc i64 %508 to i32
  %idxprom.i35.i.i.i = and i32 %510, %511
  %arrayidx.i36.i.i.i = getelementptr i32, ptr %506, i32 %idxprom.i35.i.i.i
  %512 = ptrtoint ptr %arrayidx.i36.i.i.i to i32
  call void @__asan_store4_noabort(i32 %512)
  store volatile i32 32768, ptr %arrayidx.i36.i.i.i, align 4
  %513 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %513)
  %514 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %515 = load i64, ptr %wptr.i.i, align 8
  %and3.i38.i.i.i = and i64 %515, %514
  store i64 %and3.i38.i.i.i, ptr %wptr.i.i, align 8
  %516 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i39.i.i.i = add i32 %517, -1
  store i32 %dec.i39.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i39.i.i.i)
  %cmp.i42.i.i.i = icmp slt i32 %dec.i39.i.i.i, 1
  br i1 %cmp.i42.i.i.i, label %if.then.i43.i.i.i, label %amdgpu_ring_write.exit40.i.i.i.amdgpu_ring_write.exit53.i.i.i_crit_edge

amdgpu_ring_write.exit40.i.i.i.amdgpu_ring_write.exit53.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit40.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit53.i.i.i

if.then.i43.i.i.i:                                ; preds = %amdgpu_ring_write.exit40.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit53.i.i.i

amdgpu_ring_write.exit53.i.i.i:                   ; preds = %if.then.i43.i.i.i, %amdgpu_ring_write.exit40.i.i.i.amdgpu_ring_write.exit53.i.i.i_crit_edge
  %518 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %ring1.i.i.i.i, align 4
  %520 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %520)
  %521 = load i64, ptr %wptr.i.i, align 8
  %inc.i46.i.i.i = add i64 %521, 1
  store i64 %inc.i46.i.i.i, ptr %wptr.i.i, align 8
  %522 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %524 = trunc i64 %521 to i32
  %idxprom.i48.i.i.i = and i32 %523, %524
  %arrayidx.i49.i.i.i = getelementptr i32, ptr %519, i32 %idxprom.i48.i.i.i
  %525 = ptrtoint ptr %arrayidx.i49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %525)
  store volatile i32 -1073722880, ptr %arrayidx.i49.i.i.i, align 4
  %526 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %526)
  %527 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %528 = load i64, ptr %wptr.i.i, align 8
  %and3.i51.i.i.i = and i64 %528, %527
  store i64 %and3.i51.i.i.i, ptr %wptr.i.i, align 8
  %529 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i52.i.i.i = add i32 %530, -1
  store i32 %dec.i52.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i52.i.i.i)
  %cmp.i55.i.i.i = icmp slt i32 %dec.i52.i.i.i, 1
  br i1 %cmp.i55.i.i.i, label %if.then.i56.i.i.i, label %amdgpu_ring_write.exit53.i.i.i.amdgpu_ring_write.exit66.i.i.i_crit_edge

amdgpu_ring_write.exit53.i.i.i.amdgpu_ring_write.exit66.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit53.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit66.i.i.i

if.then.i56.i.i.i:                                ; preds = %amdgpu_ring_write.exit53.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit66.i.i.i

amdgpu_ring_write.exit66.i.i.i:                   ; preds = %if.then.i56.i.i.i, %amdgpu_ring_write.exit53.i.i.i.amdgpu_ring_write.exit66.i.i.i_crit_edge
  %531 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %ring1.i.i.i.i, align 4
  %533 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %533)
  %534 = load i64, ptr %wptr.i.i, align 8
  %inc.i59.i.i.i = add i64 %534, 1
  store i64 %inc.i59.i.i.i, ptr %wptr.i.i, align 8
  %535 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %537 = trunc i64 %534 to i32
  %idxprom.i61.i.i.i = and i32 %536, %537
  %arrayidx.i62.i.i.i = getelementptr i32, ptr %532, i32 %idxprom.i61.i.i.i
  %538 = ptrtoint ptr %arrayidx.i62.i.i.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store volatile i32 536870912, ptr %arrayidx.i62.i.i.i, align 4
  %539 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %539)
  %540 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %541 = load i64, ptr %wptr.i.i, align 8
  %and3.i64.i.i.i = and i64 %541, %540
  store i64 %and3.i64.i.i.i, ptr %wptr.i.i, align 8
  %542 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i65.i.i.i = add i32 %543, -1
  store i32 %dec.i65.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i65.i.i.i)
  %cmp.i68.i.i.i = icmp slt i32 %dec.i65.i.i.i, 1
  br i1 %cmp.i68.i.i.i, label %if.then.i69.i.i.i, label %amdgpu_ring_write.exit66.i.i.i.amdgpu_ring_write.exit79.i.i.i_crit_edge

amdgpu_ring_write.exit66.i.i.i.amdgpu_ring_write.exit79.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit66.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit79.i.i.i

if.then.i69.i.i.i:                                ; preds = %amdgpu_ring_write.exit66.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit79.i.i.i

amdgpu_ring_write.exit79.i.i.i:                   ; preds = %if.then.i69.i.i.i, %amdgpu_ring_write.exit66.i.i.i.amdgpu_ring_write.exit79.i.i.i_crit_edge
  %544 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %ring1.i.i.i.i, align 4
  %546 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %546)
  %547 = load i64, ptr %wptr.i.i, align 8
  %inc.i72.i.i.i = add i64 %547, 1
  store i64 %inc.i72.i.i.i, ptr %wptr.i.i, align 8
  %548 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %550 = trunc i64 %547 to i32
  %idxprom.i74.i.i.i = and i32 %549, %550
  %arrayidx.i75.i.i.i = getelementptr i32, ptr %545, i32 %idxprom.i74.i.i.i
  %551 = ptrtoint ptr %arrayidx.i75.i.i.i to i32
  call void @__asan_store4_noabort(i32 %551)
  store volatile i32 -1073666048, ptr %arrayidx.i75.i.i.i, align 4
  %552 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %552)
  %553 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %554 = load i64, ptr %wptr.i.i, align 8
  %and3.i77.i.i.i = and i64 %554, %553
  store i64 %and3.i77.i.i.i, ptr %wptr.i.i, align 8
  %555 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i78.i.i.i = add i32 %556, -1
  store i32 %dec.i78.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i78.i.i.i)
  %cmp.i81.i.i.i = icmp slt i32 %dec.i78.i.i.i, 1
  br i1 %cmp.i81.i.i.i, label %if.then.i82.i.i.i, label %amdgpu_ring_write.exit79.i.i.i.amdgpu_ring_write.exit92.i.i.i_crit_edge

amdgpu_ring_write.exit79.i.i.i.amdgpu_ring_write.exit92.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit79.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit92.i.i.i

if.then.i82.i.i.i:                                ; preds = %amdgpu_ring_write.exit79.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit92.i.i.i

amdgpu_ring_write.exit92.i.i.i:                   ; preds = %if.then.i82.i.i.i, %amdgpu_ring_write.exit79.i.i.i.amdgpu_ring_write.exit92.i.i.i_crit_edge
  %557 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %ring1.i.i.i.i, align 4
  %559 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %559)
  %560 = load i64, ptr %wptr.i.i, align 8
  %inc.i85.i.i.i = add i64 %560, 1
  store i64 %inc.i85.i.i.i, ptr %wptr.i.i, align 8
  %561 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %563 = trunc i64 %560 to i32
  %idxprom.i87.i.i.i = and i32 %562, %563
  %arrayidx.i88.i.i.i = getelementptr i32, ptr %558, i32 %idxprom.i87.i.i.i
  %564 = ptrtoint ptr %arrayidx.i88.i.i.i to i32
  call void @__asan_store4_noabort(i32 %564)
  store volatile i32 -2147483648, ptr %arrayidx.i88.i.i.i, align 4
  %565 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %565)
  %566 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %567 = load i64, ptr %wptr.i.i, align 8
  %and3.i90.i.i.i = and i64 %567, %566
  store i64 %and3.i90.i.i.i, ptr %wptr.i.i, align 8
  %568 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i91.i.i.i = add i32 %569, -1
  store i32 %dec.i91.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i91.i.i.i)
  %cmp.i94.i.i.i = icmp slt i32 %dec.i91.i.i.i, 1
  br i1 %cmp.i94.i.i.i, label %if.then.i95.i.i.i, label %amdgpu_ring_write.exit92.i.i.i.amdgpu_ring_write.exit105.i.i.i_crit_edge

amdgpu_ring_write.exit92.i.i.i.amdgpu_ring_write.exit105.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit92.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit105.i.i.i

if.then.i95.i.i.i:                                ; preds = %amdgpu_ring_write.exit92.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit105.i.i.i

amdgpu_ring_write.exit105.i.i.i:                  ; preds = %if.then.i95.i.i.i, %amdgpu_ring_write.exit92.i.i.i.amdgpu_ring_write.exit105.i.i.i_crit_edge
  %570 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %ring1.i.i.i.i, align 4
  %572 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %572)
  %573 = load i64, ptr %wptr.i.i, align 8
  %inc.i98.i.i.i = add i64 %573, 1
  store i64 %inc.i98.i.i.i, ptr %wptr.i.i, align 8
  %574 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %576 = trunc i64 %573 to i32
  %idxprom.i100.i.i.i = and i32 %575, %576
  %arrayidx.i101.i.i.i = getelementptr i32, ptr %571, i32 %idxprom.i100.i.i.i
  %577 = ptrtoint ptr %arrayidx.i101.i.i.i to i32
  call void @__asan_store4_noabort(i32 %577)
  store volatile i32 -2147483648, ptr %arrayidx.i101.i.i.i, align 4
  %578 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %578)
  %579 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %580 = load i64, ptr %wptr.i.i, align 8
  %and3.i103.i.i.i = and i64 %580, %579
  store i64 %and3.i103.i.i.i, ptr %wptr.i.i, align 8
  %581 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i104.i.i.i = add i32 %582, -1
  store i32 %dec.i104.i.i.i, ptr %count_dw.i.i.i.i, align 8
  %583 = ptrtoint ptr %cs_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %cs_data.i.i.i.i, align 4
  %585 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %584, align 4
  %cmp.not307.i.i.i = icmp eq ptr %586, null
  br i1 %cmp.not307.i.i.i, label %amdgpu_ring_write.exit105.i.i.i.for.end22.i.i.i_crit_edge, label %amdgpu_ring_write.exit105.i.i.i.for.cond5.preheader.i.i.i_crit_edge

amdgpu_ring_write.exit105.i.i.i.for.cond5.preheader.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit105.i.i.i
  br label %for.cond5.preheader.i.i.i

amdgpu_ring_write.exit105.i.i.i.for.end22.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit105.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end22.i.i.i

for.cond5.preheader.i.i.i:                        ; preds = %for.inc20.i.i.i.for.cond5.preheader.i.i.i_crit_edge, %amdgpu_ring_write.exit105.i.i.i.for.cond5.preheader.i.i.i_crit_edge
  %587 = phi ptr [ %649, %for.inc20.i.i.i.for.cond5.preheader.i.i.i_crit_edge ], [ %586, %amdgpu_ring_write.exit105.i.i.i.for.cond5.preheader.i.i.i_crit_edge ]
  %sect.0308.i.i.i = phi ptr [ %incdec.ptr21.i.i.i, %for.inc20.i.i.i.for.cond5.preheader.i.i.i_crit_edge ], [ %584, %amdgpu_ring_write.exit105.i.i.i.for.cond5.preheader.i.i.i_crit_edge ]
  %588 = ptrtoint ptr %587 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %587, align 4
  %cmp6.not303.i.i.i = icmp eq ptr %589, null
  br i1 %cmp6.not303.i.i.i, label %for.cond5.preheader.i.i.i.for.inc20.i.i.i_crit_edge, label %for.body7.lr.ph.i.i.i

for.cond5.preheader.i.i.i.for.inc20.i.i.i_crit_edge: ; preds = %for.cond5.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc20.i.i.i

for.body7.lr.ph.i.i.i:                            ; preds = %for.cond5.preheader.i.i.i
  %id.i.i.i = getelementptr inbounds %struct.cs_section_def, ptr %sect.0308.i.i.i, i32 0, i32 1
  br label %for.body7.i.i.i

for.body7.i.i.i:                                  ; preds = %for.inc18.i.i.i.for.body7.i.i.i_crit_edge, %for.body7.lr.ph.i.i.i
  %ext.0304.i.i.i = phi ptr [ %587, %for.body7.lr.ph.i.i.i ], [ %incdec.ptr.i.i22.i, %for.inc18.i.i.i.for.body7.i.i.i_crit_edge ]
  %590 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %591)
  %cmp8.i.i.i = icmp eq i32 %591, 1
  br i1 %cmp8.i.i.i, label %if.then9.i.i.i, label %for.body7.i.i.i.for.inc18.i.i.i_crit_edge

for.body7.i.i.i.for.inc18.i.i.i_crit_edge:        ; preds = %for.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc18.i.i.i

if.then9.i.i.i:                                   ; preds = %for.body7.i.i.i
  %reg_count.i.i.i = getelementptr inbounds %struct.cs_extent_def, ptr %ext.0304.i.i.i, i32 0, i32 2
  %592 = ptrtoint ptr %reg_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %reg_count.i.i.i, align 4
  %and.i.i.i38 = shl i32 %593, 16
  %or.i.i.i39 = or i32 %and.i.i.i38, -1073714944
  %594 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %595)
  %cmp.i107.i.i.i = icmp slt i32 %595, 1
  br i1 %cmp.i107.i.i.i, label %if.then.i108.i.i.i, label %if.then9.i.i.i.amdgpu_ring_write.exit118.i.i.i_crit_edge

if.then9.i.i.i.amdgpu_ring_write.exit118.i.i.i_crit_edge: ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit118.i.i.i

if.then.i108.i.i.i:                               ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit118.i.i.i

amdgpu_ring_write.exit118.i.i.i:                  ; preds = %if.then.i108.i.i.i, %if.then9.i.i.i.amdgpu_ring_write.exit118.i.i.i_crit_edge
  %596 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %ring1.i.i.i.i, align 4
  %598 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %598)
  %599 = load i64, ptr %wptr.i.i, align 8
  %inc.i111.i.i.i = add i64 %599, 1
  store i64 %inc.i111.i.i.i, ptr %wptr.i.i, align 8
  %600 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %602 = trunc i64 %599 to i32
  %idxprom.i113.i.i.i = and i32 %601, %602
  %arrayidx.i114.i.i.i = getelementptr i32, ptr %597, i32 %idxprom.i113.i.i.i
  %603 = ptrtoint ptr %arrayidx.i114.i.i.i to i32
  call void @__asan_store4_noabort(i32 %603)
  store volatile i32 %or.i.i.i39, ptr %arrayidx.i114.i.i.i, align 4
  %604 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %604)
  %605 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %606 = load i64, ptr %wptr.i.i, align 8
  %and3.i116.i.i.i = and i64 %606, %605
  store i64 %and3.i116.i.i.i, ptr %wptr.i.i, align 8
  %607 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i117.i.i.i = add i32 %608, -1
  store i32 %dec.i117.i.i.i, ptr %count_dw.i.i.i.i, align 8
  %reg_index.i.i.i = getelementptr inbounds %struct.cs_extent_def, ptr %ext.0304.i.i.i, i32 0, i32 1
  %609 = ptrtoint ptr %reg_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %reg_index.i.i.i, align 4
  %sub10.i.i.i = add i32 %610, -40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i117.i.i.i)
  %cmp.i120.i.i.i = icmp slt i32 %dec.i117.i.i.i, 1
  br i1 %cmp.i120.i.i.i, label %if.then.i121.i.i.i, label %amdgpu_ring_write.exit118.i.i.i.amdgpu_ring_write.exit131.i.i.i_crit_edge

amdgpu_ring_write.exit118.i.i.i.amdgpu_ring_write.exit131.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit118.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit131.i.i.i

if.then.i121.i.i.i:                               ; preds = %amdgpu_ring_write.exit118.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit131.i.i.i

amdgpu_ring_write.exit131.i.i.i:                  ; preds = %if.then.i121.i.i.i, %amdgpu_ring_write.exit118.i.i.i.amdgpu_ring_write.exit131.i.i.i_crit_edge
  %611 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %ring1.i.i.i.i, align 4
  %613 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %613)
  %614 = load i64, ptr %wptr.i.i, align 8
  %inc.i124.i.i.i = add i64 %614, 1
  store i64 %inc.i124.i.i.i, ptr %wptr.i.i, align 8
  %615 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %617 = trunc i64 %614 to i32
  %idxprom.i126.i.i.i = and i32 %616, %617
  %arrayidx.i127.i.i.i = getelementptr i32, ptr %612, i32 %idxprom.i126.i.i.i
  %618 = ptrtoint ptr %arrayidx.i127.i.i.i to i32
  call void @__asan_store4_noabort(i32 %618)
  store volatile i32 %sub10.i.i.i, ptr %arrayidx.i127.i.i.i, align 4
  %619 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %619)
  %620 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %621 = load i64, ptr %wptr.i.i, align 8
  %and3.i129.i.i.i = and i64 %621, %620
  store i64 %and3.i129.i.i.i, ptr %wptr.i.i, align 8
  %622 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i130.i.i.i = add i32 %623, -1
  store i32 %dec.i130.i.i.i, ptr %count_dw.i.i.i.i, align 8
  %624 = ptrtoint ptr %reg_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %reg_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %625)
  %cmp13301.not.i.i.i = icmp eq i32 %625, 0
  br i1 %cmp13301.not.i.i.i, label %amdgpu_ring_write.exit131.i.i.i.for.inc18.i.i.i_crit_edge, label %amdgpu_ring_write.exit131.i.i.i.for.body14.i.i.i_crit_edge

amdgpu_ring_write.exit131.i.i.i.for.body14.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit131.i.i.i
  br label %for.body14.i.i.i

amdgpu_ring_write.exit131.i.i.i.for.inc18.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit131.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc18.i.i.i

for.body14.i.i.i:                                 ; preds = %amdgpu_ring_write.exit144.i.i.i.for.body14.i.i.i_crit_edge, %amdgpu_ring_write.exit131.i.i.i.for.body14.i.i.i_crit_edge
  %626 = phi i32 [ %dec.i143.i.i.i, %amdgpu_ring_write.exit144.i.i.i.for.body14.i.i.i_crit_edge ], [ %dec.i130.i.i.i, %amdgpu_ring_write.exit131.i.i.i.for.body14.i.i.i_crit_edge ]
  %i.0302.i.i.i = phi i32 [ %inc.i.i21.i, %amdgpu_ring_write.exit144.i.i.i.for.body14.i.i.i_crit_edge ], [ 0, %amdgpu_ring_write.exit131.i.i.i.for.body14.i.i.i_crit_edge ]
  %627 = ptrtoint ptr %ext.0304.i.i.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %ext.0304.i.i.i, align 4
  %arrayidx16.i.i.i = getelementptr i32, ptr %628, i32 %i.0302.i.i.i
  %629 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %arrayidx16.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %626)
  %cmp.i133.i.i.i = icmp slt i32 %626, 1
  br i1 %cmp.i133.i.i.i, label %if.then.i134.i.i.i, label %for.body14.i.i.i.amdgpu_ring_write.exit144.i.i.i_crit_edge

for.body14.i.i.i.amdgpu_ring_write.exit144.i.i.i_crit_edge: ; preds = %for.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit144.i.i.i

if.then.i134.i.i.i:                               ; preds = %for.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit144.i.i.i

amdgpu_ring_write.exit144.i.i.i:                  ; preds = %if.then.i134.i.i.i, %for.body14.i.i.i.amdgpu_ring_write.exit144.i.i.i_crit_edge
  %631 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %ring1.i.i.i.i, align 4
  %633 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %633)
  %634 = load i64, ptr %wptr.i.i, align 8
  %inc.i137.i.i.i = add i64 %634, 1
  store i64 %inc.i137.i.i.i, ptr %wptr.i.i, align 8
  %635 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %637 = trunc i64 %634 to i32
  %idxprom.i139.i.i.i = and i32 %636, %637
  %arrayidx.i140.i.i.i = getelementptr i32, ptr %632, i32 %idxprom.i139.i.i.i
  %638 = ptrtoint ptr %arrayidx.i140.i.i.i to i32
  call void @__asan_store4_noabort(i32 %638)
  store volatile i32 %630, ptr %arrayidx.i140.i.i.i, align 4
  %639 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %639)
  %640 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %641 = load i64, ptr %wptr.i.i, align 8
  %and3.i142.i.i.i = and i64 %641, %640
  store i64 %and3.i142.i.i.i, ptr %wptr.i.i, align 8
  %642 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i143.i.i.i = add i32 %643, -1
  store i32 %dec.i143.i.i.i, ptr %count_dw.i.i.i.i, align 8
  %inc.i.i21.i = add nuw i32 %i.0302.i.i.i, 1
  %644 = ptrtoint ptr %reg_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %reg_count.i.i.i, align 4
  %cmp13.i.i.i = icmp ult i32 %inc.i.i21.i, %645
  br i1 %cmp13.i.i.i, label %amdgpu_ring_write.exit144.i.i.i.for.body14.i.i.i_crit_edge, label %amdgpu_ring_write.exit144.i.i.i.for.inc18.i.i.i_crit_edge

amdgpu_ring_write.exit144.i.i.i.for.inc18.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit144.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc18.i.i.i

amdgpu_ring_write.exit144.i.i.i.for.body14.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit144.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body14.i.i.i

for.inc18.i.i.i:                                  ; preds = %amdgpu_ring_write.exit144.i.i.i.for.inc18.i.i.i_crit_edge, %amdgpu_ring_write.exit131.i.i.i.for.inc18.i.i.i_crit_edge, %for.body7.i.i.i.for.inc18.i.i.i_crit_edge
  %incdec.ptr.i.i22.i = getelementptr %struct.cs_extent_def, ptr %ext.0304.i.i.i, i32 1
  %646 = ptrtoint ptr %incdec.ptr.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %incdec.ptr.i.i22.i, align 4
  %cmp6.not.i.i.i = icmp eq ptr %647, null
  br i1 %cmp6.not.i.i.i, label %for.inc18.i.i.i.for.inc20.i.i.i_crit_edge, label %for.inc18.i.i.i.for.body7.i.i.i_crit_edge

for.inc18.i.i.i.for.body7.i.i.i_crit_edge:        ; preds = %for.inc18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7.i.i.i

for.inc18.i.i.i.for.inc20.i.i.i_crit_edge:        ; preds = %for.inc18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc20.i.i.i

for.inc20.i.i.i:                                  ; preds = %for.inc18.i.i.i.for.inc20.i.i.i_crit_edge, %for.cond5.preheader.i.i.i.for.inc20.i.i.i_crit_edge
  %incdec.ptr21.i.i.i = getelementptr %struct.cs_section_def, ptr %sect.0308.i.i.i, i32 1
  %648 = ptrtoint ptr %incdec.ptr21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %incdec.ptr21.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %649, null
  br i1 %cmp.not.i.i.i, label %for.end22thread-pre-split.i.i.i, label %for.inc20.i.i.i.for.cond5.preheader.i.i.i_crit_edge

for.inc20.i.i.i.for.cond5.preheader.i.i.i_crit_edge: ; preds = %for.inc20.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.i.i.i

for.end22thread-pre-split.i.i.i:                  ; preds = %for.inc20.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %650 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %.pr.i.i.i = load i32, ptr %count_dw.i.i.i.i, align 8
  br label %for.end22.i.i.i

for.end22.i.i.i:                                  ; preds = %for.end22thread-pre-split.i.i.i, %amdgpu_ring_write.exit105.i.i.i.for.end22.i.i.i_crit_edge
  %651 = phi i32 [ %.pr.i.i.i, %for.end22thread-pre-split.i.i.i ], [ %dec.i104.i.i.i, %amdgpu_ring_write.exit105.i.i.i.for.end22.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %651)
  %cmp.i146.i.i.i = icmp slt i32 %651, 1
  br i1 %cmp.i146.i.i.i, label %if.then.i147.i.i.i, label %for.end22.i.i.i.amdgpu_ring_write.exit157.i.i.i_crit_edge

for.end22.i.i.i.amdgpu_ring_write.exit157.i.i.i_crit_edge: ; preds = %for.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit157.i.i.i

if.then.i147.i.i.i:                               ; preds = %for.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit157.i.i.i

amdgpu_ring_write.exit157.i.i.i:                  ; preds = %if.then.i147.i.i.i, %for.end22.i.i.i.amdgpu_ring_write.exit157.i.i.i_crit_edge
  %652 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %ring1.i.i.i.i, align 4
  %654 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %654)
  %655 = load i64, ptr %wptr.i.i, align 8
  %inc.i150.i.i.i = add i64 %655, 1
  store i64 %inc.i150.i.i.i, ptr %wptr.i.i, align 8
  %656 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %658 = trunc i64 %655 to i32
  %idxprom.i152.i.i.i = and i32 %657, %658
  %arrayidx.i153.i.i.i = getelementptr i32, ptr %653, i32 %idxprom.i152.i.i.i
  %659 = ptrtoint ptr %arrayidx.i153.i.i.i to i32
  call void @__asan_store4_noabort(i32 %659)
  store volatile i32 -1073583872, ptr %arrayidx.i153.i.i.i, align 4
  %660 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %660)
  %661 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %662 = load i64, ptr %wptr.i.i, align 8
  %and3.i155.i.i.i = and i64 %662, %661
  store i64 %and3.i155.i.i.i, ptr %wptr.i.i, align 8
  %663 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i156.i.i.i = add i32 %664, -1
  store i32 %dec.i156.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i156.i.i.i)
  %cmp.i159.i.i.i = icmp slt i32 %dec.i156.i.i.i, 1
  br i1 %cmp.i159.i.i.i, label %if.then.i160.i.i.i, label %amdgpu_ring_write.exit157.i.i.i.amdgpu_ring_write.exit170.i.i.i_crit_edge

amdgpu_ring_write.exit157.i.i.i.amdgpu_ring_write.exit170.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit157.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit170.i.i.i

if.then.i160.i.i.i:                               ; preds = %amdgpu_ring_write.exit157.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit170.i.i.i

amdgpu_ring_write.exit170.i.i.i:                  ; preds = %if.then.i160.i.i.i, %amdgpu_ring_write.exit157.i.i.i.amdgpu_ring_write.exit170.i.i.i_crit_edge
  %665 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %ring1.i.i.i.i, align 4
  %667 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %667)
  %668 = load i64, ptr %wptr.i.i, align 8
  %inc.i163.i.i.i = add i64 %668, 1
  store i64 %inc.i163.i.i.i, ptr %wptr.i.i, align 8
  %669 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %671 = trunc i64 %668 to i32
  %idxprom.i165.i.i.i = and i32 %670, %671
  %arrayidx.i166.i.i.i = getelementptr i32, ptr %666, i32 %idxprom.i165.i.i.i
  %672 = ptrtoint ptr %arrayidx.i166.i.i.i to i32
  call void @__asan_store4_noabort(i32 %672)
  store volatile i32 212, ptr %arrayidx.i166.i.i.i, align 4
  %673 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %673)
  %674 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %675 = load i64, ptr %wptr.i.i, align 8
  %and3.i168.i.i.i = and i64 %675, %674
  store i64 %and3.i168.i.i.i, ptr %wptr.i.i, align 8
  %676 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i169.i.i.i = add i32 %677, -1
  store i32 %dec.i169.i.i.i, ptr %count_dw.i.i.i.i, align 8
  %raster_config.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 30, i32 0, i32 0, i32 2
  %678 = ptrtoint ptr %raster_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %raster_config.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i169.i.i.i)
  %cmp.i172.i.i.i = icmp slt i32 %dec.i169.i.i.i, 1
  br i1 %cmp.i172.i.i.i, label %if.then.i173.i.i.i, label %amdgpu_ring_write.exit170.i.i.i.amdgpu_ring_write.exit183.i.i.i_crit_edge

amdgpu_ring_write.exit170.i.i.i.amdgpu_ring_write.exit183.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit170.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit183.i.i.i

if.then.i173.i.i.i:                               ; preds = %amdgpu_ring_write.exit170.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit183.i.i.i

amdgpu_ring_write.exit183.i.i.i:                  ; preds = %if.then.i173.i.i.i, %amdgpu_ring_write.exit170.i.i.i.amdgpu_ring_write.exit183.i.i.i_crit_edge
  %680 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %ring1.i.i.i.i, align 4
  %682 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %682)
  %683 = load i64, ptr %wptr.i.i, align 8
  %inc.i176.i.i.i = add i64 %683, 1
  store i64 %inc.i176.i.i.i, ptr %wptr.i.i, align 8
  %684 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %686 = trunc i64 %683 to i32
  %idxprom.i178.i.i.i = and i32 %685, %686
  %arrayidx.i179.i.i.i = getelementptr i32, ptr %681, i32 %idxprom.i178.i.i.i
  %687 = ptrtoint ptr %arrayidx.i179.i.i.i to i32
  call void @__asan_store4_noabort(i32 %687)
  store volatile i32 %679, ptr %arrayidx.i179.i.i.i, align 4
  %688 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %688)
  %689 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %690 = load i64, ptr %wptr.i.i, align 8
  %and3.i181.i.i.i = and i64 %690, %689
  store i64 %and3.i181.i.i.i, ptr %wptr.i.i, align 8
  %691 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i182.i.i.i = add i32 %692, -1
  store i32 %dec.i182.i.i.i, ptr %count_dw.i.i.i.i, align 8
  %raster_config_1.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 30, i32 0, i32 0, i32 3
  %693 = ptrtoint ptr %raster_config_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %raster_config_1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i182.i.i.i)
  %cmp.i185.i.i.i = icmp slt i32 %dec.i182.i.i.i, 1
  br i1 %cmp.i185.i.i.i, label %if.then.i186.i.i.i, label %amdgpu_ring_write.exit183.i.i.i.amdgpu_ring_write.exit196.i.i.i_crit_edge

amdgpu_ring_write.exit183.i.i.i.amdgpu_ring_write.exit196.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit183.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit196.i.i.i

if.then.i186.i.i.i:                               ; preds = %amdgpu_ring_write.exit183.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit196.i.i.i

amdgpu_ring_write.exit196.i.i.i:                  ; preds = %if.then.i186.i.i.i, %amdgpu_ring_write.exit183.i.i.i.amdgpu_ring_write.exit196.i.i.i_crit_edge
  %695 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %ring1.i.i.i.i, align 4
  %697 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %697)
  %698 = load i64, ptr %wptr.i.i, align 8
  %inc.i189.i.i.i = add i64 %698, 1
  store i64 %inc.i189.i.i.i, ptr %wptr.i.i, align 8
  %699 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %701 = trunc i64 %698 to i32
  %idxprom.i191.i.i.i = and i32 %700, %701
  %arrayidx.i192.i.i.i = getelementptr i32, ptr %696, i32 %idxprom.i191.i.i.i
  %702 = ptrtoint ptr %arrayidx.i192.i.i.i to i32
  call void @__asan_store4_noabort(i32 %702)
  store volatile i32 %694, ptr %arrayidx.i192.i.i.i, align 4
  %703 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %703)
  %704 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %705 = load i64, ptr %wptr.i.i, align 8
  %and3.i194.i.i.i = and i64 %705, %704
  store i64 %and3.i194.i.i.i, ptr %wptr.i.i, align 8
  %706 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i195.i.i.i = add i32 %707, -1
  store i32 %dec.i195.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i195.i.i.i)
  %cmp.i198.i.i.i = icmp slt i32 %dec.i195.i.i.i, 1
  br i1 %cmp.i198.i.i.i, label %if.then.i199.i.i.i, label %amdgpu_ring_write.exit196.i.i.i.amdgpu_ring_write.exit209.i.i.i_crit_edge

amdgpu_ring_write.exit196.i.i.i.amdgpu_ring_write.exit209.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit196.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit209.i.i.i

if.then.i199.i.i.i:                               ; preds = %amdgpu_ring_write.exit196.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit209.i.i.i

amdgpu_ring_write.exit209.i.i.i:                  ; preds = %if.then.i199.i.i.i, %amdgpu_ring_write.exit196.i.i.i.amdgpu_ring_write.exit209.i.i.i_crit_edge
  %708 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %ring1.i.i.i.i, align 4
  %710 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %710)
  %711 = load i64, ptr %wptr.i.i, align 8
  %inc.i202.i.i.i = add i64 %711, 1
  store i64 %inc.i202.i.i.i, ptr %wptr.i.i, align 8
  %712 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %714 = trunc i64 %711 to i32
  %idxprom.i204.i.i.i = and i32 %713, %714
  %arrayidx.i205.i.i.i = getelementptr i32, ptr %709, i32 %idxprom.i204.i.i.i
  %715 = ptrtoint ptr %arrayidx.i205.i.i.i to i32
  call void @__asan_store4_noabort(i32 %715)
  store volatile i32 -1073722880, ptr %arrayidx.i205.i.i.i, align 4
  %716 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %716)
  %717 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %718 = load i64, ptr %wptr.i.i, align 8
  %and3.i207.i.i.i = and i64 %718, %717
  store i64 %and3.i207.i.i.i, ptr %wptr.i.i, align 8
  %719 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i208.i.i.i = add i32 %720, -1
  store i32 %dec.i208.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i208.i.i.i)
  %cmp.i211.i.i.i = icmp slt i32 %dec.i208.i.i.i, 1
  br i1 %cmp.i211.i.i.i, label %if.then.i212.i.i.i, label %amdgpu_ring_write.exit209.i.i.i.amdgpu_ring_write.exit222.i.i.i_crit_edge

amdgpu_ring_write.exit209.i.i.i.amdgpu_ring_write.exit222.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit209.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit222.i.i.i

if.then.i212.i.i.i:                               ; preds = %amdgpu_ring_write.exit209.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit222.i.i.i

amdgpu_ring_write.exit222.i.i.i:                  ; preds = %if.then.i212.i.i.i, %amdgpu_ring_write.exit209.i.i.i.amdgpu_ring_write.exit222.i.i.i_crit_edge
  %721 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %ring1.i.i.i.i, align 4
  %723 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %723)
  %724 = load i64, ptr %wptr.i.i, align 8
  %inc.i215.i.i.i = add i64 %724, 1
  store i64 %inc.i215.i.i.i, ptr %wptr.i.i, align 8
  %725 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %727 = trunc i64 %724 to i32
  %idxprom.i217.i.i.i = and i32 %726, %727
  %arrayidx.i218.i.i.i = getelementptr i32, ptr %722, i32 %idxprom.i217.i.i.i
  %728 = ptrtoint ptr %arrayidx.i218.i.i.i to i32
  call void @__asan_store4_noabort(i32 %728)
  store volatile i32 805306368, ptr %arrayidx.i218.i.i.i, align 4
  %729 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %729)
  %730 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %731 = load i64, ptr %wptr.i.i, align 8
  %and3.i220.i.i.i = and i64 %731, %730
  store i64 %and3.i220.i.i.i, ptr %wptr.i.i, align 8
  %732 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i221.i.i.i = add i32 %733, -1
  store i32 %dec.i221.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i221.i.i.i)
  %cmp.i224.i.i.i = icmp slt i32 %dec.i221.i.i.i, 1
  br i1 %cmp.i224.i.i.i, label %if.then.i225.i.i.i, label %amdgpu_ring_write.exit222.i.i.i.amdgpu_ring_write.exit235.i.i.i_crit_edge

amdgpu_ring_write.exit222.i.i.i.amdgpu_ring_write.exit235.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit222.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit235.i.i.i

if.then.i225.i.i.i:                               ; preds = %amdgpu_ring_write.exit222.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit235.i.i.i

amdgpu_ring_write.exit235.i.i.i:                  ; preds = %if.then.i225.i.i.i, %amdgpu_ring_write.exit222.i.i.i.amdgpu_ring_write.exit235.i.i.i_crit_edge
  %734 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %ring1.i.i.i.i, align 4
  %736 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %736)
  %737 = load i64, ptr %wptr.i.i, align 8
  %inc.i228.i.i.i = add i64 %737, 1
  store i64 %inc.i228.i.i.i, ptr %wptr.i.i, align 8
  %738 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %740 = trunc i64 %737 to i32
  %idxprom.i230.i.i.i = and i32 %739, %740
  %arrayidx.i231.i.i.i = getelementptr i32, ptr %735, i32 %idxprom.i230.i.i.i
  %741 = ptrtoint ptr %arrayidx.i231.i.i.i to i32
  call void @__asan_store4_noabort(i32 %741)
  store volatile i32 -1073737216, ptr %arrayidx.i231.i.i.i, align 4
  %742 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %742)
  %743 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %744 = load i64, ptr %wptr.i.i, align 8
  %and3.i233.i.i.i = and i64 %744, %743
  store i64 %and3.i233.i.i.i, ptr %wptr.i.i, align 8
  %745 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i234.i.i.i = add i32 %746, -1
  store i32 %dec.i234.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i234.i.i.i)
  %cmp.i237.i.i.i = icmp slt i32 %dec.i234.i.i.i, 1
  br i1 %cmp.i237.i.i.i, label %if.then.i238.i.i.i, label %amdgpu_ring_write.exit235.i.i.i.amdgpu_ring_write.exit248.i.i.i_crit_edge

amdgpu_ring_write.exit235.i.i.i.amdgpu_ring_write.exit248.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit235.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit248.i.i.i

if.then.i238.i.i.i:                               ; preds = %amdgpu_ring_write.exit235.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit248.i.i.i

amdgpu_ring_write.exit248.i.i.i:                  ; preds = %if.then.i238.i.i.i, %amdgpu_ring_write.exit235.i.i.i.amdgpu_ring_write.exit248.i.i.i_crit_edge
  %747 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %ring1.i.i.i.i, align 4
  %749 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %749)
  %750 = load i64, ptr %wptr.i.i, align 8
  %inc.i241.i.i.i = add i64 %750, 1
  store i64 %inc.i241.i.i.i, ptr %wptr.i.i, align 8
  %751 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %753 = trunc i64 %750 to i32
  %idxprom.i243.i.i.i = and i32 %752, %753
  %arrayidx.i244.i.i.i = getelementptr i32, ptr %748, i32 %idxprom.i243.i.i.i
  %754 = ptrtoint ptr %arrayidx.i244.i.i.i to i32
  call void @__asan_store4_noabort(i32 %754)
  store volatile i32 0, ptr %arrayidx.i244.i.i.i, align 4
  %755 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %755)
  %756 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %757 = load i64, ptr %wptr.i.i, align 8
  %and3.i246.i.i.i = and i64 %757, %756
  store i64 %and3.i246.i.i.i, ptr %wptr.i.i, align 8
  %758 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i247.i.i.i = add i32 %759, -1
  store i32 %dec.i247.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i247.i.i.i)
  %cmp.i250.i.i.i = icmp slt i32 %dec.i247.i.i.i, 1
  br i1 %cmp.i250.i.i.i, label %if.then.i251.i.i.i, label %amdgpu_ring_write.exit248.i.i.i.amdgpu_ring_write.exit261.i.i.i_crit_edge

amdgpu_ring_write.exit248.i.i.i.amdgpu_ring_write.exit261.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit248.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit261.i.i.i

if.then.i251.i.i.i:                               ; preds = %amdgpu_ring_write.exit248.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit261.i.i.i

amdgpu_ring_write.exit261.i.i.i:                  ; preds = %if.then.i251.i.i.i, %amdgpu_ring_write.exit248.i.i.i.amdgpu_ring_write.exit261.i.i.i_crit_edge
  %760 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %ring1.i.i.i.i, align 4
  %762 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %762)
  %763 = load i64, ptr %wptr.i.i, align 8
  %inc.i254.i.i.i = add i64 %763, 1
  store i64 %inc.i254.i.i.i, ptr %wptr.i.i, align 8
  %764 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %766 = trunc i64 %763 to i32
  %idxprom.i256.i.i.i = and i32 %765, %766
  %arrayidx.i257.i.i.i = getelementptr i32, ptr %761, i32 %idxprom.i256.i.i.i
  %767 = ptrtoint ptr %arrayidx.i257.i.i.i to i32
  call void @__asan_store4_noabort(i32 %767)
  store volatile i32 -1073583872, ptr %arrayidx.i257.i.i.i, align 4
  %768 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %768)
  %769 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %770 = load i64, ptr %wptr.i.i, align 8
  %and3.i259.i.i.i = and i64 %770, %769
  store i64 %and3.i259.i.i.i, ptr %wptr.i.i, align 8
  %771 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i260.i.i.i = add i32 %772, -1
  store i32 %dec.i260.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i260.i.i.i)
  %cmp.i263.i.i.i = icmp slt i32 %dec.i260.i.i.i, 1
  br i1 %cmp.i263.i.i.i, label %if.then.i264.i.i.i, label %amdgpu_ring_write.exit261.i.i.i.amdgpu_ring_write.exit274.i.i.i_crit_edge

amdgpu_ring_write.exit261.i.i.i.amdgpu_ring_write.exit274.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit261.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit274.i.i.i

if.then.i264.i.i.i:                               ; preds = %amdgpu_ring_write.exit261.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit274.i.i.i

amdgpu_ring_write.exit274.i.i.i:                  ; preds = %if.then.i264.i.i.i, %amdgpu_ring_write.exit261.i.i.i.amdgpu_ring_write.exit274.i.i.i_crit_edge
  %773 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %ring1.i.i.i.i, align 4
  %775 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %775)
  %776 = load i64, ptr %wptr.i.i, align 8
  %inc.i267.i.i.i = add i64 %776, 1
  store i64 %inc.i267.i.i.i, ptr %wptr.i.i, align 8
  %777 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %779 = trunc i64 %776 to i32
  %idxprom.i269.i.i.i = and i32 %778, %779
  %arrayidx.i270.i.i.i = getelementptr i32, ptr %774, i32 %idxprom.i269.i.i.i
  %780 = ptrtoint ptr %arrayidx.i270.i.i.i to i32
  call void @__asan_store4_noabort(i32 %780)
  store volatile i32 790, ptr %arrayidx.i270.i.i.i, align 4
  %781 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %781)
  %782 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %783 = load i64, ptr %wptr.i.i, align 8
  %and3.i272.i.i.i = and i64 %783, %782
  store i64 %and3.i272.i.i.i, ptr %wptr.i.i, align 8
  %784 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i273.i.i.i = add i32 %785, -1
  store i32 %dec.i273.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i273.i.i.i)
  %cmp.i276.i.i.i = icmp slt i32 %dec.i273.i.i.i, 1
  br i1 %cmp.i276.i.i.i, label %if.then.i277.i.i.i, label %amdgpu_ring_write.exit274.i.i.i.amdgpu_ring_write.exit287.i.i.i_crit_edge

amdgpu_ring_write.exit274.i.i.i.amdgpu_ring_write.exit287.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit274.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit287.i.i.i

if.then.i277.i.i.i:                               ; preds = %amdgpu_ring_write.exit274.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit287.i.i.i

amdgpu_ring_write.exit287.i.i.i:                  ; preds = %if.then.i277.i.i.i, %amdgpu_ring_write.exit274.i.i.i.amdgpu_ring_write.exit287.i.i.i_crit_edge
  %786 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %ring1.i.i.i.i, align 4
  %788 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %788)
  %789 = load i64, ptr %wptr.i.i, align 8
  %inc.i280.i.i.i = add i64 %789, 1
  store i64 %inc.i280.i.i.i, ptr %wptr.i.i, align 8
  %790 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %792 = trunc i64 %789 to i32
  %idxprom.i282.i.i.i = and i32 %791, %792
  %arrayidx.i283.i.i.i = getelementptr i32, ptr %787, i32 %idxprom.i282.i.i.i
  %793 = ptrtoint ptr %arrayidx.i283.i.i.i to i32
  call void @__asan_store4_noabort(i32 %793)
  store volatile i32 14, ptr %arrayidx.i283.i.i.i, align 4
  %794 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %794)
  %795 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %796 = load i64, ptr %wptr.i.i, align 8
  %and3.i285.i.i.i = and i64 %796, %795
  store i64 %and3.i285.i.i.i, ptr %wptr.i.i, align 8
  %797 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i286.i.i.i = add i32 %798, -1
  store i32 %dec.i286.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i286.i.i.i)
  %cmp.i289.i.i.i = icmp slt i32 %dec.i286.i.i.i, 1
  br i1 %cmp.i289.i.i.i, label %if.then.i290.i.i.i, label %amdgpu_ring_write.exit287.i.i.i.amdgpu_ring_write.exit300.i.i.i_crit_edge

amdgpu_ring_write.exit287.i.i.i.amdgpu_ring_write.exit300.i.i.i_crit_edge: ; preds = %amdgpu_ring_write.exit287.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit300.i.i.i

if.then.i290.i.i.i:                               ; preds = %amdgpu_ring_write.exit287.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit300.i.i.i

amdgpu_ring_write.exit300.i.i.i:                  ; preds = %if.then.i290.i.i.i, %amdgpu_ring_write.exit287.i.i.i.amdgpu_ring_write.exit300.i.i.i_crit_edge
  %799 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %ring1.i.i.i.i, align 4
  %801 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %801)
  %802 = load i64, ptr %wptr.i.i, align 8
  %inc.i293.i.i.i = add i64 %802, 1
  store i64 %inc.i293.i.i.i, ptr %wptr.i.i, align 8
  %803 = ptrtoint ptr %buf_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %buf_mask.i.i.i.i, align 8
  %805 = trunc i64 %802 to i32
  %idxprom.i295.i.i.i = and i32 %804, %805
  %arrayidx.i296.i.i.i = getelementptr i32, ptr %800, i32 %idxprom.i295.i.i.i
  %806 = ptrtoint ptr %arrayidx.i296.i.i.i to i32
  call void @__asan_store4_noabort(i32 %806)
  store volatile i32 16, ptr %arrayidx.i296.i.i.i, align 4
  %807 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %807)
  %808 = load i64, ptr %ptr_mask.i.i.i.i, align 8
  %809 = load i64, ptr %wptr.i.i, align 8
  %and3.i298.i.i.i = and i64 %809, %808
  store i64 %and3.i298.i.i.i, ptr %wptr.i.i, align 8
  %810 = ptrtoint ptr %count_dw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load i32, ptr %count_dw.i.i.i.i, align 8
  %dec.i299.i.i.i = add i32 %811, -1
  store i32 %dec.i299.i.i.i, ptr %count_dw.i.i.i.i, align 8
  call void @amdgpu_ring_commit(ptr noundef %gfx_ring.i.i) #12
  br label %gfx_v7_0_cp_gfx_resume.exit.i

gfx_v7_0_cp_gfx_resume.exit.i:                    ; preds = %amdgpu_ring_write.exit300.i.i.i, %if.then.i.i.i
  %call53.i.i = call i32 @amdgpu_ring_test_helper(ptr noundef %gfx_ring.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool2.not.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %gfx_v7_0_cp_gfx_resume.exit.i.cleanup_crit_edge

gfx_v7_0_cp_gfx_resume.exit.i.cleanup_crit_edge:  ; preds = %gfx_v7_0_cp_gfx_resume.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %gfx_v7_0_cp_gfx_resume.exit.i
  %call.i23.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12416, i32 noundef 0) #12
  %or.i.i40 = or i32 %call.i23.i, 8388608
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12416, i32 noundef %or.i.i40, i32 noundef 0) #12
  %num_mec.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 6, i32 4
  %812 = ptrtoint ptr %num_mec.i.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load i32, ptr %num_mec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %813)
  %cmp62.not.i.i = icmp eq i32 %813, 0
  br i1 %cmp62.not.i.i, label %if.end4.i.for.cond9.preheader.i.i_crit_edge, label %for.cond1.preheader.lr.ph.i.i

if.end4.i.for.cond9.preheader.i.i_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond9.preheader.i.i

for.cond1.preheader.lr.ph.i.i:                    ; preds = %if.end4.i
  %num_pipe_per_mec.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 6, i32 5
  %hpd_eop_gpu_addr.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 6, i32 1
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc6.i.i.for.cond1.preheader.i.i_crit_edge, %for.cond1.preheader.lr.ph.i.i
  %i.063.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i ], [ %.pre.i.i, %for.inc6.i.i.for.cond1.preheader.i.i_crit_edge ]
  %814 = ptrtoint ptr %num_pipe_per_mec.i.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load i32, ptr %num_pipe_per_mec.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %815)
  %cmp460.not.i.i = icmp eq i32 %815, 0
  %.pre.i.i = add nuw i32 %i.063.i.i, 1
  br i1 %cmp460.not.i.i, label %for.cond1.preheader.i.i.for.inc6.i.i_crit_edge, label %for.cond1.preheader.i.i.for.body5.i.i_crit_edge

for.cond1.preheader.i.i.for.body5.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  br label %for.body5.i.i

for.cond1.preheader.i.i.for.inc6.i.i_crit_edge:   ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc6.i.i

for.cond9.preheader.i.i:                          ; preds = %for.inc6.i.i.for.cond9.preheader.i.i_crit_edge, %if.end4.i.for.cond9.preheader.i.i_crit_edge
  %num_compute_rings.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 39
  %816 = ptrtoint ptr %num_compute_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load i32, ptr %num_compute_rings.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %817)
  %cmp1165.not.i.i = icmp eq i32 %817, 0
  br i1 %cmp1165.not.i.i, label %for.cond9.preheader.i.i.for.end16.i.i_crit_edge, label %for.body12.lr.ph.i.i

for.cond9.preheader.i.i.for.end16.i.i_crit_edge:  ; preds = %for.cond9.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end16.i.i

for.body12.lr.ph.i.i:                             ; preds = %for.cond9.preheader.i.i
  %usec_timeout.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  br label %for.body12.i.i

for.body5.i.i:                                    ; preds = %for.body5.i.i.for.body5.i.i_crit_edge, %for.cond1.preheader.i.i.for.body5.i.i_crit_edge
  %818 = phi i32 [ %822, %for.body5.i.i.for.body5.i.i_crit_edge ], [ %815, %for.cond1.preheader.i.i.for.body5.i.i_crit_edge ]
  %j.061.i.i = phi i32 [ %inc.i.i44, %for.body5.i.i.for.body5.i.i_crit_edge ], [ 0, %for.cond1.preheader.i.i.for.body5.i.i_crit_edge ]
  %mul.i.i.i41 = mul i32 %818, %i.063.i.i
  %add.i.i24.i = add i32 %mul.i.i.i41, %j.061.i.i
  %mul3.i.i.i = shl i32 %add.i.i24.i, 12
  call void @mutex_lock_nested(ptr noundef %srbm_mutex.i, i32 noundef 0) #12
  %819 = ptrtoint ptr %hpd_eop_gpu_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %819)
  %820 = load i64, ptr %hpd_eop_gpu_addr.i.i.i, align 8
  %conv.i.i.i = zext i32 %mul3.i.i.i to i64
  %add6.i.i.i = add i64 %820, %conv.i.i.i
  call void @cik_srbm_select(ptr noundef %handle, i32 noundef %.pre.i.i, i32 noundef %j.061.i.i, i32 noundef 0, i32 noundef 0) #12
  %shr.i.i.i42 = lshr i64 %add6.i.i.i, 8
  %conv8.i.i.i = trunc i64 %shr.i.i.i42 to i32
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12865, i32 noundef %conv8.i.i.i, i32 noundef 0) #12
  %sum.shift.i.i.i = lshr i64 %add6.i.i.i, 40
  %shr1229.i.i.i = trunc i64 %sum.shift.i.i.i to i32
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12866, i32 noundef %shr1229.i.i.i, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12867, i32 noundef 0, i32 noundef 0) #12
  %call.i.i.i43 = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12868, i32 noundef 0) #12
  %and.i.i25.i = and i32 %call.i.i.i43, -64
  %or.i.i26.i = or i32 %and.i.i25.i, 8
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12868, i32 noundef %or.i.i26.i, i32 noundef 0) #12
  call void @cik_srbm_select(ptr noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %srbm_mutex.i) #12
  %inc.i.i44 = add nuw i32 %j.061.i.i, 1
  %821 = ptrtoint ptr %num_pipe_per_mec.i.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load i32, ptr %num_pipe_per_mec.i.i, align 4
  %cmp4.i.i = icmp ult i32 %inc.i.i44, %822
  br i1 %cmp4.i.i, label %for.body5.i.i.for.body5.i.i_crit_edge, label %for.body5.i.i.for.inc6.i.i_crit_edge

for.body5.i.i.for.inc6.i.i_crit_edge:             ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc6.i.i

for.body5.i.i.for.body5.i.i_crit_edge:            ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5.i.i

for.inc6.i.i:                                     ; preds = %for.body5.i.i.for.inc6.i.i_crit_edge, %for.cond1.preheader.i.i.for.inc6.i.i_crit_edge
  %823 = ptrtoint ptr %num_mec.i.i to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load i32, ptr %num_mec.i.i, align 8
  %cmp.i.i45 = icmp ult i32 %.pre.i.i, %824
  br i1 %cmp.i.i45, label %for.inc6.i.i.for.cond1.preheader.i.i_crit_edge, label %for.inc6.i.i.for.cond9.preheader.i.i_crit_edge

for.inc6.i.i.for.cond9.preheader.i.i_crit_edge:   ; preds = %for.inc6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond9.preheader.i.i

for.inc6.i.i.for.cond1.preheader.i.i_crit_edge:   ; preds = %for.inc6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader.i.i

for.body12.i.i:                                   ; preds = %for.inc14.i.i.for.body12.i.i_crit_edge, %for.body12.lr.ph.i.i
  %i.166.i.i = phi i32 [ 0, %for.body12.lr.ph.i.i ], [ %inc15.i.i, %for.inc14.i.i.for.body12.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mqd_gpu_addr.i.i.i) #12
  %825 = ptrtoint ptr %mqd_gpu_addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %825)
  store i64 -1, ptr %mqd_gpu_addr.i.i.i, align 8, !annotation !191
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mqd.i.i.i) #12
  %826 = ptrtoint ptr %mqd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %826)
  store ptr inttoptr (i32 -1 to ptr), ptr %mqd.i.i.i, align 4, !annotation !191
  %mqd_obj.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.166.i.i, i32 19
  %call.i53.i.i = call i32 @amdgpu_bo_create_reserved(ptr noundef %handle, i32 noundef 512, i32 noundef 4096, i32 noundef 2, ptr noundef %mqd_obj.i.i.i, ptr noundef nonnull %mqd_gpu_addr.i.i.i, ptr noundef nonnull %mqd.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i.i)
  %tobool.not.i.i27.i = icmp eq i32 %call.i53.i.i, 0
  br i1 %tobool.not.i.i27.i, label %if.end.i.i28.i, label %if.then.i35.i

if.end.i.i28.i:                                   ; preds = %for.body12.i.i
  call void @mutex_lock_nested(ptr noundef %srbm_mutex.i, i32 noundef 0) #12
  %me.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.166.i.i, i32 16
  %827 = ptrtoint ptr %me.i.i.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load i32, ptr %me.i.i.i, align 8
  %pipe.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.166.i.i, i32 17
  %829 = ptrtoint ptr %pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %pipe.i.i.i, align 4
  %queue.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.166.i.i, i32 18
  %831 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load i32, ptr %queue.i.i.i, align 8
  call void @cik_srbm_select(ptr noundef %handle, i32 noundef %828, i32 noundef %830, i32 noundef %832, i32 noundef 0) #12
  %833 = ptrtoint ptr %mqd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %mqd.i.i.i, align 4
  %835 = ptrtoint ptr %mqd_gpu_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %835)
  %836 = load i64, ptr %mqd_gpu_addr.i.i.i, align 8
  %837 = getelementptr inbounds i8, ptr %834, i32 4
  %838 = call ptr @memset(ptr %837, i32 0, i32 508)
  %839 = ptrtoint ptr %834 to i32
  call void @__asan_store4_noabort(i32 %839)
  store i32 -1070528512, ptr %834, align 4
  %compute_static_thread_mgmt_se0.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 23
  %840 = ptrtoint ptr %compute_static_thread_mgmt_se0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %840)
  store i32 -1, ptr %compute_static_thread_mgmt_se0.i.i.i.i, align 4
  %compute_static_thread_mgmt_se1.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 24
  %841 = ptrtoint ptr %compute_static_thread_mgmt_se1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %841)
  store i32 -1, ptr %compute_static_thread_mgmt_se1.i.i.i.i, align 4
  %compute_static_thread_mgmt_se2.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 26
  %842 = ptrtoint ptr %compute_static_thread_mgmt_se2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %842)
  store i32 -1, ptr %compute_static_thread_mgmt_se2.i.i.i.i, align 4
  %compute_static_thread_mgmt_se3.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 27
  %843 = ptrtoint ptr %compute_static_thread_mgmt_se3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %843)
  store i32 -1, ptr %compute_static_thread_mgmt_se3.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12884, i32 noundef 0) #12
  %cp_hqd_pq_doorbell_control.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 66
  %844 = ptrtoint ptr %cp_hqd_pq_doorbell_control.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %844)
  store i32 %call.i.i.i.i, ptr %cp_hqd_pq_doorbell_control.i.i.i.i, align 4
  %use_doorbell.i.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.166.i.i, i32 24
  %845 = ptrtoint ptr %use_doorbell.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %845)
  %846 = load i8, ptr %use_doorbell.i.i.i.i, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %846)
  %tobool.not.i.i.i.i = icmp eq i8 %846, 0
  %and.i.i.i.i = and i32 %call.i.i.i.i, -1073741825
  %masksel.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 1073741824
  %storemerge.i.i.i.i = or i32 %masksel.i.i.i.i, %and.i.i.i.i
  %847 = ptrtoint ptr %cp_hqd_pq_doorbell_control.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %847)
  store i32 %storemerge.i.i.i.i, ptr %cp_hqd_pq_doorbell_control.i.i.i.i, align 4
  %848 = trunc i64 %836 to i32
  %conv.i.i.i.i = and i32 %848, -4
  %cp_mqd_base_addr_lo.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 51
  %849 = ptrtoint ptr %cp_mqd_base_addr_lo.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %849)
  store i32 %conv.i.i.i.i, ptr %cp_mqd_base_addr_lo.i.i.i.i, align 4
  %shr.i.i.i.i = lshr i64 %836, 32
  %conv5.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %cp_mqd_base_addr_hi.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 52
  %850 = ptrtoint ptr %cp_mqd_base_addr_hi.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %850)
  store i32 %conv5.i.i.i.i, ptr %cp_mqd_base_addr_hi.i.i.i.i, align 4
  %call6.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12903, i32 noundef 0) #12
  %cp_mqd_control.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 85
  %and8.i.i.i.i = and i32 %call6.i.i.i.i, -16
  %851 = ptrtoint ptr %cp_mqd_control.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %851)
  store i32 %and8.i.i.i.i, ptr %cp_mqd_control.i.i.i.i, align 4
  %gpu_addr.i.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.166.i.i, i32 12
  %852 = ptrtoint ptr %gpu_addr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %852)
  %853 = load i64, ptr %gpu_addr.i.i.i.i, align 8
  %shr9.i.i.i.i = lshr i64 %853, 8
  %conv10.i.i.i.i = trunc i64 %shr9.i.i.i.i to i32
  %cp_hqd_pq_base_lo.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 59
  %854 = ptrtoint ptr %cp_hqd_pq_base_lo.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %854)
  store i32 %conv10.i.i.i.i, ptr %cp_hqd_pq_base_lo.i.i.i.i, align 4
  %shr11.i.i.i.i = lshr i64 %853, 40
  %conv13.i.i.i.i = trunc i64 %shr11.i.i.i.i to i32
  %cp_hqd_pq_base_hi.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 60
  %855 = ptrtoint ptr %cp_hqd_pq_base_hi.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %855)
  store i32 %conv13.i.i.i.i, ptr %cp_hqd_pq_base_hi.i.i.i.i, align 4
  %call14.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12886, i32 noundef 0) #12
  %cp_hqd_pq_control.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 68
  %and16.i.i.i.i = and i32 %call14.i.i.i.i, -16192
  %856 = ptrtoint ptr %cp_hqd_pq_control.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %856)
  store i32 %and16.i.i.i.i, ptr %cp_hqd_pq_control.i.i.i.i, align 4
  %ring_size.i.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.166.i.i, i32 9
  %857 = ptrtoint ptr %ring_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load i32, ptr %ring_size.i.i.i.i, align 8
  %div215.i.i.i.i = lshr i32 %858, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %858)
  %cmp.i.i.i.i.i = icmp ugt i32 %858, 15
  %sub.i217.i.i.i.i = add nsw i32 %div215.i.i.i.i, -1
  %859 = call i32 @llvm.ctlz.i32(i32 %sub.i217.i.i.i.i, i1 false) #12, !range !190
  %add.i.i.i.i.i = sub nuw nsw i32 32, %859
  %cond54.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 %add.i.i.i.i.i, i32 0
  %or56.i.i.i.i = or i32 %cond54.i.i.i.i, %and16.i.i.i.i
  %or60.i.i.i.i = and i32 %or56.i.i.i.i, 201193215
  %or64.i.i.i.i = or i32 %or60.i.i.i.i, -1073608448
  %860 = ptrtoint ptr %cp_hqd_pq_control.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %860)
  store i32 %or64.i.i.i.i, ptr %cp_hqd_pq_control.i.i.i.i, align 4
  %861 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %861)
  %862 = load i64, ptr %gpu_addr.i.i, align 8
  %wptr_offs.i.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.166.i.i, i32 26
  %863 = ptrtoint ptr %wptr_offs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load i32, ptr %wptr_offs.i.i.i.i, align 8
  %mul.i.i.i.i = shl i32 %864, 2
  %conv66.i.i.i.i = zext i32 %mul.i.i.i.i to i64
  %add67.i.i.i.i = add i64 %862, %conv66.i.i.i.i
  %865 = trunc i64 %add67.i.i.i.i to i32
  %conv69.i.i.i.i = and i32 %865, -4
  %cp_hqd_pq_wptr_poll_addr_lo.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 64
  %866 = ptrtoint ptr %cp_hqd_pq_wptr_poll_addr_lo.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %866)
  store i32 %conv69.i.i.i.i, ptr %cp_hqd_pq_wptr_poll_addr_lo.i.i.i.i, align 4
  %shr70.i.i.i.i = lshr i64 %add67.i.i.i.i, 32
  %conv72.i.i.i.i = trunc i64 %shr70.i.i.i.i to i32
  %and73.i.i.i.i = and i32 %conv72.i.i.i.i, 65535
  %cp_hqd_pq_wptr_poll_addr_hi.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 65
  %867 = ptrtoint ptr %cp_hqd_pq_wptr_poll_addr_hi.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %867)
  store i32 %and73.i.i.i.i, ptr %cp_hqd_pq_wptr_poll_addr_hi.i.i.i.i, align 4
  %868 = load i64, ptr %gpu_addr.i.i, align 8
  %rptr_offs.i.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.166.i.i, i32 6
  %869 = ptrtoint ptr %rptr_offs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load i32, ptr %rptr_offs.i.i.i.i, align 8
  %mul76.i.i.i.i = shl i32 %870, 2
  %conv77.i.i.i.i = zext i32 %mul76.i.i.i.i to i64
  %add78.i.i.i.i = add i64 %868, %conv77.i.i.i.i
  %871 = trunc i64 %add78.i.i.i.i to i32
  %conv80.i.i.i.i = and i32 %871, -4
  %cp_hqd_pq_rptr_report_addr_lo.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 62
  %872 = ptrtoint ptr %cp_hqd_pq_rptr_report_addr_lo.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %872)
  store i32 %conv80.i.i.i.i, ptr %cp_hqd_pq_rptr_report_addr_lo.i.i.i.i, align 4
  %shr81.i.i.i.i = lshr i64 %add78.i.i.i.i, 32
  %conv83.i.i.i.i = trunc i64 %shr81.i.i.i.i to i32
  %and84.i.i.i.i = and i32 %conv83.i.i.i.i, 65535
  %cp_hqd_pq_rptr_report_addr_hi.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 63
  %873 = ptrtoint ptr %cp_hqd_pq_rptr_report_addr_hi.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %873)
  store i32 %and84.i.i.i.i, ptr %cp_hqd_pq_rptr_report_addr_hi.i.i.i.i, align 4
  %874 = ptrtoint ptr %use_doorbell.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %874)
  %875 = load i8, ptr %use_doorbell.i.i.i.i, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %875)
  %tobool86.not.i.i.i.i = icmp eq i8 %875, 0
  br i1 %tobool86.not.i.i.i.i, label %if.end.i.i28.i.gfx_v7_0_mqd_init.exit.i.i.i_crit_edge, label %if.then87.i.i.i.i

if.end.i.i28.i.gfx_v7_0_mqd_init.exit.i.i.i_crit_edge: ; preds = %if.end.i.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_mqd_init.exit.i.i.i

if.then87.i.i.i.i:                                ; preds = %if.end.i.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  %call88.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12884, i32 noundef 0) #12
  %and91.i.i.i.i = and i32 %call88.i.i.i.i, -8388605
  %876 = ptrtoint ptr %cp_hqd_pq_doorbell_control.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %876)
  store i32 %and91.i.i.i.i, ptr %cp_hqd_pq_doorbell_control.i.i.i.i, align 4
  %doorbell_index.i.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.166.i.i, i32 23
  %877 = ptrtoint ptr %doorbell_index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load i32, ptr %doorbell_index.i.i.i.i, align 8
  %shl.i.i.i.i = shl i32 %878, 2
  %or93.i.i.i.i = or i32 %shl.i.i.i.i, %and91.i.i.i.i
  %or95.i.i.i.i = and i32 %or93.i.i.i.i, 805306367
  %and97.i.i.i.i = or i32 %or95.i.i.i.i, 1073741824
  br label %gfx_v7_0_mqd_init.exit.i.i.i

gfx_v7_0_mqd_init.exit.i.i.i:                     ; preds = %if.then87.i.i.i.i, %if.end.i.i28.i.gfx_v7_0_mqd_init.exit.i.i.i_crit_edge
  %storemerge216.i.i.i.i = phi i32 [ %and97.i.i.i.i, %if.then87.i.i.i.i ], [ 0, %if.end.i.i28.i.gfx_v7_0_mqd_init.exit.i.i.i_crit_edge ]
  %879 = ptrtoint ptr %cp_hqd_pq_doorbell_control.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %879)
  store i32 %storemerge216.i.i.i.i, ptr %cp_hqd_pq_doorbell_control.i.i.i.i, align 4
  %wptr.i.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.166.i.i, i32 7
  %880 = ptrtoint ptr %wptr.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %880)
  store i64 0, ptr %wptr.i.i.i.i, align 8
  %cp_hqd_pq_wptr.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 67
  %881 = ptrtoint ptr %cp_hqd_pq_wptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %881)
  store i32 0, ptr %cp_hqd_pq_wptr.i.i.i.i, align 4
  %call104.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12879, i32 noundef 0) #12
  %cp_hqd_pq_rptr.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 61
  %882 = ptrtoint ptr %cp_hqd_pq_rptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %882)
  store i32 %call104.i.i.i.i, ptr %cp_hqd_pq_rptr.i.i.i.i, align 4
  %cp_hqd_vmid.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 54
  %883 = ptrtoint ptr %cp_hqd_vmid.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %883)
  store i32 0, ptr %cp_hqd_vmid.i.i.i.i, align 4
  %call105.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12890, i32 noundef 0) #12
  %cp_hqd_ib_control.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 72
  %884 = ptrtoint ptr %cp_hqd_ib_control.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %884)
  store i32 %call105.i.i.i.i, ptr %cp_hqd_ib_control.i.i.i.i, align 4
  %call106.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12887, i32 noundef 0) #12
  %cp_hqd_ib_base_addr_lo.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 69
  %885 = ptrtoint ptr %cp_hqd_ib_base_addr_lo.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %885)
  store i32 %call106.i.i.i.i, ptr %cp_hqd_ib_base_addr_lo.i.i.i.i, align 4
  %call107.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12888, i32 noundef 0) #12
  %cp_hqd_ib_base_addr_hi.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 70
  %886 = ptrtoint ptr %cp_hqd_ib_base_addr_hi.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %886)
  store i32 %call107.i.i.i.i, ptr %cp_hqd_ib_base_addr_hi.i.i.i.i, align 4
  %call108.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12889, i32 noundef 0) #12
  %cp_hqd_ib_rptr.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 71
  %887 = ptrtoint ptr %cp_hqd_ib_rptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %887)
  store i32 %call108.i.i.i.i, ptr %cp_hqd_ib_rptr.i.i.i.i, align 4
  %call109.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12873, i32 noundef 0) #12
  %cp_hqd_persistent_state.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 55
  %888 = ptrtoint ptr %cp_hqd_persistent_state.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %888)
  store i32 %call109.i.i.i.i, ptr %cp_hqd_persistent_state.i.i.i.i, align 4
  %call110.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12895, i32 noundef 0) #12
  %cp_hqd_sema_cmd.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 77
  %889 = ptrtoint ptr %cp_hqd_sema_cmd.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %889)
  store i32 %call110.i.i.i.i, ptr %cp_hqd_sema_cmd.i.i.i.i, align 4
  %call111.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12896, i32 noundef 0) #12
  %cp_hqd_msg_type.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 78
  %890 = ptrtoint ptr %cp_hqd_msg_type.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %890)
  store i32 %call111.i.i.i.i, ptr %cp_hqd_msg_type.i.i.i.i, align 4
  %call112.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12897, i32 noundef 0) #12
  %cp_hqd_atomic0_preop_lo.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 79
  %891 = ptrtoint ptr %cp_hqd_atomic0_preop_lo.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %891)
  store i32 %call112.i.i.i.i, ptr %cp_hqd_atomic0_preop_lo.i.i.i.i, align 4
  %call113.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12898, i32 noundef 0) #12
  %cp_hqd_atomic0_preop_hi.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 80
  %892 = ptrtoint ptr %cp_hqd_atomic0_preop_hi.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %892)
  store i32 %call113.i.i.i.i, ptr %cp_hqd_atomic0_preop_hi.i.i.i.i, align 4
  %call114.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12899, i32 noundef 0) #12
  %cp_hqd_atomic1_preop_lo.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 81
  %893 = ptrtoint ptr %cp_hqd_atomic1_preop_lo.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %893)
  store i32 %call114.i.i.i.i, ptr %cp_hqd_atomic1_preop_lo.i.i.i.i, align 4
  %call115.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12900, i32 noundef 0) #12
  %cp_hqd_atomic1_preop_hi.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 82
  %894 = ptrtoint ptr %cp_hqd_atomic1_preop_hi.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %894)
  store i32 %call115.i.i.i.i, ptr %cp_hqd_atomic1_preop_hi.i.i.i.i, align 4
  %call116.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12879, i32 noundef 0) #12
  %895 = ptrtoint ptr %cp_hqd_pq_rptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %895)
  store i32 %call116.i.i.i.i, ptr %cp_hqd_pq_rptr.i.i.i.i, align 4
  %call118.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12876, i32 noundef 0) #12
  %cp_hqd_quantum.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 58
  %896 = ptrtoint ptr %cp_hqd_quantum.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %896)
  store i32 %call118.i.i.i.i, ptr %cp_hqd_quantum.i.i.i.i, align 4
  %call119.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12874, i32 noundef 0) #12
  %cp_hqd_pipe_priority.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 56
  %897 = ptrtoint ptr %cp_hqd_pipe_priority.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %897)
  store i32 %call119.i.i.i.i, ptr %cp_hqd_pipe_priority.i.i.i.i, align 4
  %call120.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12875, i32 noundef 0) #12
  %cp_hqd_queue_priority.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 57
  %898 = ptrtoint ptr %cp_hqd_queue_priority.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %898)
  store i32 %call120.i.i.i.i, ptr %cp_hqd_queue_priority.i.i.i.i, align 4
  %call121.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12892, i32 noundef 0) #12
  %cp_hqd_iq_rptr.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 74
  %899 = ptrtoint ptr %cp_hqd_iq_rptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %899)
  store i32 %call121.i.i.i.i, ptr %cp_hqd_iq_rptr.i.i.i.i, align 4
  %cp_hqd_active.i.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %834, i32 0, i32 53
  %900 = ptrtoint ptr %cp_hqd_active.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %900)
  store i32 1, ptr %cp_hqd_active.i.i.i.i, align 4
  %call.i26.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12871, i32 noundef 0) #12
  %and.i27.i.i.i = and i32 %call.i26.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.i.i.i)
  %tobool.not.i28.i.i.i = icmp eq i32 %and.i27.i.i.i, 0
  br i1 %tobool.not.i28.i.i.i, label %gfx_v7_0_mqd_init.exit.i.i.i.gfx_v7_0_mqd_deactivate.exit.i.i.i_crit_edge, label %if.then.i.i.i31.i

gfx_v7_0_mqd_init.exit.i.i.i.gfx_v7_0_mqd_deactivate.exit.i.i.i_crit_edge: ; preds = %gfx_v7_0_mqd_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_mqd_deactivate.exit.i.i.i

if.then.i.i.i31.i:                                ; preds = %gfx_v7_0_mqd_init.exit.i.i.i
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12893, i32 noundef 1, i32 noundef 0) #12
  %901 = ptrtoint ptr %usec_timeout.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load i32, ptr %usec_timeout.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %902)
  %cmp1.i.i.i.i = icmp sgt i32 %902, 0
  br i1 %cmp1.i.i.i.i, label %if.then.i.i.i31.i.for.body.i.i.i.i_crit_edge, label %if.then.i.i.i31.i.for.end.i.i.i.i_crit_edge

if.then.i.i.i31.i.for.end.i.i.i.i_crit_edge:      ; preds = %if.then.i.i.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

if.then.i.i.i31.i.for.body.i.i.i.i_crit_edge:     ; preds = %if.then.i.i.i31.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.i31.i.for.body.i.i.i.i_crit_edge
  %i.02.i.i.i.i = phi i32 [ %inc.i.i.i32.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.then.i.i.i31.i.for.body.i.i.i.i_crit_edge ]
  %call1.i.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12871, i32 noundef 0) #12
  %and2.i.i.i.i = and i32 %call1.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge, label %if.end.i.i.i.i

for.body.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %903 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %903(i32 noundef 214748) #12
  %inc.i.i.i32.i = add nuw nsw i32 %i.02.i.i.i.i, 1
  %904 = ptrtoint ptr %usec_timeout.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load i32, ptr %usec_timeout.i.i.i.i, align 8
  %cmp.i29.i.i33.i = icmp slt i32 %inc.i.i.i32.i, %905
  br i1 %cmp.i29.i.i33.i, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, label %if.end.i.i.i.i.for.end.i.i.i.i_crit_edge

if.end.i.i.i.i.for.end.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %if.end.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.then.i.i.i31.i.for.end.i.i.i.i_crit_edge
  %i.0.lcssa.i.i.i.i = phi i32 [ 0, %if.then.i.i.i31.i.for.end.i.i.i.i_crit_edge ], [ %i.02.i.i.i.i, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ %inc.i.i.i32.i, %if.end.i.i.i.i.for.end.i.i.i.i_crit_edge ]
  %906 = ptrtoint ptr %usec_timeout.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %usec_timeout.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i.i.i, i32 %907)
  %cmp6.i.i.i.i = icmp eq i32 %i.0.lcssa.i.i.i.i, %907
  br i1 %cmp6.i.i.i.i, label %for.end.i.i.i.i.gfx_v7_0_mqd_deactivate.exit.i.i.i_crit_edge, label %if.end8.i.i.i.i

for.end.i.i.i.i.gfx_v7_0_mqd_deactivate.exit.i.i.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_mqd_deactivate.exit.i.i.i

if.end8.i.i.i.i:                                  ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12893, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12879, i32 noundef 0, i32 noundef 0) #12
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12885, i32 noundef 0, i32 noundef 0) #12
  br label %gfx_v7_0_mqd_deactivate.exit.i.i.i

gfx_v7_0_mqd_deactivate.exit.i.i.i:               ; preds = %if.end8.i.i.i.i, %for.end.i.i.i.i.gfx_v7_0_mqd_deactivate.exit.i.i.i_crit_edge, %gfx_v7_0_mqd_init.exit.i.i.i.gfx_v7_0_mqd_deactivate.exit.i.i.i_crit_edge
  %908 = ptrtoint ptr %mqd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %mqd.i.i.i, align 4
  %cp_mqd_base_addr_lo.i30.i.i.i = getelementptr inbounds %struct.cik_mqd, ptr %909, i32 0, i32 51
  %call.i31.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12419, i32 noundef 0) #12
  %and.i32.i.i.i = and i32 %call.i31.i.i.i, 2147483647
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12419, i32 noundef %and.i32.i.i.i, i32 noundef 0) #12
  br label %for.body.i35.i.i.i

for.body.i35.i.i.i:                               ; preds = %for.body.i35.i.i.i.for.body.i35.i.i.i_crit_edge, %gfx_v7_0_mqd_deactivate.exit.i.i.i
  %mqd_reg.01.i.i.i.i = phi i32 [ 12872, %gfx_v7_0_mqd_deactivate.exit.i.i.i ], [ %inc.i34.i.i.i, %for.body.i35.i.i.i.for.body.i35.i.i.i_crit_edge ]
  %sub.i33.i.i.i = add nsw i32 %mqd_reg.01.i.i.i.i, -12869
  %arrayidx.i.i.i34.i = getelementptr i32, ptr %cp_mqd_base_addr_lo.i30.i.i.i, i32 %sub.i33.i.i.i
  %910 = ptrtoint ptr %arrayidx.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load i32, ptr %arrayidx.i.i.i34.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %mqd_reg.01.i.i.i.i, i32 noundef %911, i32 noundef 0) #12
  %inc.i34.i.i.i = add nuw nsw i32 %mqd_reg.01.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i34.i.i.i, 12904
  br i1 %exitcond.not.i.i.i.i, label %for.inc14.i.i, label %for.body.i35.i.i.i.for.body.i35.i.i.i_crit_edge

for.body.i35.i.i.i.for.body.i35.i.i.i_crit_edge:  ; preds = %for.body.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i35.i.i.i

if.then.i35.i:                                    ; preds = %for.body12.i.i
  %912 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %handle, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %913, ptr noundef nonnull @.str.35, i32 noundef %call.i53.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mqd.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mqd_gpu_addr.i.i.i) #12
  %914 = ptrtoint ptr %num_compute_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load i32, ptr %num_compute_rings.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %915)
  %cmp5.not.i.i.i = icmp eq i32 %915, 0
  br i1 %cmp5.not.i.i.i, label %if.then.i35.i.cleanup_crit_edge, label %if.then.i35.i.for.body.i.i38.i_crit_edge

if.then.i35.i.for.body.i.i38.i_crit_edge:         ; preds = %if.then.i35.i
  br label %for.body.i.i38.i

if.then.i35.i.cleanup_crit_edge:                  ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.i38.i:                                 ; preds = %for.body.i.i38.i.for.body.i.i38.i_crit_edge, %if.then.i35.i.for.body.i.i38.i_crit_edge
  %i.06.i.i.i = phi i32 [ %inc.i.i36.i, %for.body.i.i38.i.for.body.i.i38.i_crit_edge ], [ 0, %if.then.i35.i.for.body.i.i38.i_crit_edge ]
  %mqd_obj.i55.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.06.i.i.i, i32 19
  call void @amdgpu_bo_free_kernel(ptr noundef %mqd_obj.i55.i.i, ptr noundef null, ptr noundef null) #12
  %inc.i.i36.i = add nuw i32 %i.06.i.i.i, 1
  %916 = ptrtoint ptr %num_compute_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load i32, ptr %num_compute_rings.i.i, align 8
  %cmp.i.i37.i = icmp ult i32 %inc.i.i36.i, %917
  br i1 %cmp.i.i37.i, label %for.body.i.i38.i.for.body.i.i38.i_crit_edge, label %for.body.i.i38.i.cleanup_crit_edge

for.body.i.i38.i.cleanup_crit_edge:               ; preds = %for.body.i.i38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.i38.i.for.body.i.i38.i_crit_edge:      ; preds = %for.body.i.i38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i38.i

for.inc14.i.i:                                    ; preds = %for.body.i35.i.i.i
  %918 = ptrtoint ptr %cp_mqd_base_addr_lo.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load i32, ptr %cp_mqd_base_addr_lo.i30.i.i.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12869, i32 noundef %919, i32 noundef 0) #12
  %arrayidx5.1.i.i.i.i = getelementptr %struct.cik_mqd, ptr %909, i32 0, i32 52
  %920 = ptrtoint ptr %arrayidx5.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load i32, ptr %arrayidx5.1.i.i.i.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12870, i32 noundef %921, i32 noundef 0) #12
  %arrayidx5.2.i.i.i.i = getelementptr %struct.cik_mqd, ptr %909, i32 0, i32 53
  %922 = ptrtoint ptr %arrayidx5.2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load i32, ptr %arrayidx5.2.i.i.i.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12871, i32 noundef %923, i32 noundef 0) #12
  call void @cik_srbm_select(ptr noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %srbm_mutex.i) #12
  %924 = ptrtoint ptr %mqd_obj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %mqd_obj.i.i.i, align 4
  call void @amdgpu_bo_kunmap(ptr noundef %925) #12
  %926 = ptrtoint ptr %mqd_obj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %mqd_obj.i.i.i, align 4
  %tbo.i.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %927, i32 0, i32 4
  %bdev.i.i.i.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %927, i32 0, i32 4, i32 1
  %928 = ptrtoint ptr %bdev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %bdev.i.i.i.i.i.i, align 8
  %lru_lock.i.i.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %929, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i.i.i.i) #12
  %resource.i.i.i.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %927, i32 0, i32 4, i32 6
  %930 = ptrtoint ptr %resource.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %resource.i.i.i.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i.i.i.i, ptr noundef %931, ptr noundef null) #12
  %932 = ptrtoint ptr %bdev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %bdev.i.i.i.i.i.i, align 8
  %lru_lock2.i.i.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %933, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i.i.i.i) #12
  %resv.i.i.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %927, i32 0, i32 4, i32 0, i32 9
  %934 = ptrtoint ptr %resv.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %resv.i.i.i.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %935) #12
  call void @ww_mutex_unlock(ptr noundef %935) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mqd.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mqd_gpu_addr.i.i.i) #12
  %inc15.i.i = add nuw i32 %i.166.i.i, 1
  %936 = ptrtoint ptr %num_compute_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load i32, ptr %num_compute_rings.i.i, align 8
  %cmp11.i.i46 = icmp ult i32 %inc15.i.i, %937
  br i1 %cmp11.i.i46, label %for.inc14.i.i.for.body12.i.i_crit_edge, label %for.inc14.i.i.for.end16.i.i_crit_edge

for.inc14.i.i.for.end16.i.i_crit_edge:            ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end16.i.i

for.inc14.i.i.for.body12.i.i_crit_edge:           ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12.i.i

for.end16.i.i:                                    ; preds = %for.inc14.i.i.for.end16.i.i_crit_edge, %for.cond9.preheader.i.i.for.end16.i.i_crit_edge
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8333, i32 noundef 0, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %938 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %938(i32 noundef 10737400) #12
  %939 = ptrtoint ptr %num_compute_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load i32, ptr %num_compute_rings.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %940)
  %cmp2067.not.i.i = icmp eq i32 %940, 0
  br i1 %cmp2067.not.i.i, label %for.end16.i.i.if.end8.i_crit_edge, label %for.end16.i.i.for.body21.i.i_crit_edge

for.end16.i.i.for.body21.i.i_crit_edge:           ; preds = %for.end16.i.i
  br label %for.body21.i.i

for.end16.i.i.if.end8.i_crit_edge:                ; preds = %for.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

for.body21.i.i:                                   ; preds = %for.body21.i.i.for.body21.i.i_crit_edge, %for.end16.i.i.for.body21.i.i_crit_edge
  %i.268.i.i = phi i32 [ %inc25.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ 0, %for.end16.i.i.for.body21.i.i_crit_edge ]
  %arrayidx.i.i47 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 38, i32 %i.268.i.i
  %call23.i.i = call i32 @amdgpu_ring_test_helper(ptr noundef %arrayidx.i.i47) #12
  %inc25.i.i = add nuw i32 %i.268.i.i, 1
  %941 = ptrtoint ptr %num_compute_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load i32, ptr %num_compute_rings.i.i, align 8
  %cmp20.i.i = icmp ult i32 %inc25.i.i, %942
  br i1 %cmp20.i.i, label %for.body21.i.i.for.body21.i.i_crit_edge, label %for.body21.i.i.if.end8.i_crit_edge

for.body21.i.i.if.end8.i_crit_edge:               ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

for.body21.i.i.for.body21.i.i_crit_edge:          ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21.i.i

if.end8.i:                                        ; preds = %for.body21.i.i.if.end8.i_crit_edge, %for.end16.i.i.if.end8.i_crit_edge
  %call.i40.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12394, i32 noundef 0) #12
  %tmp.0.i.i = or i32 %call.i40.i, 1572864
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12394, i32 noundef %tmp.0.i.i, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %for.body.i.i38.i.cleanup_crit_edge, %if.then.i35.i.cleanup_crit_edge, %gfx_v7_0_cp_gfx_resume.exit.i.cleanup_crit_edge, %if.then12.i.i.i.cleanup_crit_edge, %if.end.i.i27.cleanup_crit_edge, %lor.lhs.false3.i.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %gfx_v7_0_constants_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %gfx_v7_0_constants_init.exit.cleanup_crit_edge ], [ 0, %if.end8.i ], [ %call53.i.i, %gfx_v7_0_cp_gfx_resume.exit.i.cleanup_crit_edge ], [ -22, %lor.lhs.false3.i.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.i27.cleanup_crit_edge ], [ -22, %if.then12.i.i.i.cleanup_crit_edge ], [ %call.i53.i.i, %if.then.i35.i.cleanup_crit_edge ], [ %call.i53.i.i, %for.body.i.i38.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_reg_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 41
  %call = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %priv_reg_irq, i32 noundef 0) #12
  %priv_inst_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 42
  %call2 = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %priv_inst_irq, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8630, i32 noundef 352321536, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 10737400) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8333, i32 noundef 1342177280, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 10737400) #12
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %stop = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop, align 4
  tail call void %5(ptr noundef %handle) #12
  tail call fastcc void @gfx_v7_0_fini_pg(ptr noundef %handle)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_reg_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 41
  %call.i = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %priv_reg_irq.i, i32 noundef 0) #12
  %priv_inst_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 42
  %call2.i = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %priv_inst_irq.i, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8630, i32 noundef 352321536, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 10737400) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8333, i32 noundef 1342177280, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 10737400) #12
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs.i, align 4
  %stop.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop.i, align 4
  tail call void %5(ptr noundef %handle) #12
  tail call fastcc void @gfx_v7_0_fini_pg(ptr noundef %handle) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gfx_v7_0_hw_init(ptr noundef %handle)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gfx_v7_0_is_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8196, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool.not = icmp sgt i32 %call, -1
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_wait_for_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8196, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool.not = icmp sgt i32 %call, -1
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #12
  %inc = add nuw i32 %i.06, 1
  %3 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_soft_reset(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8196, i32 noundef 0) #12
  %and = and i32 %call, 1205780480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 65537
  %and1 = and i32 %call, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %not.tobool2.not = xor i1 %tobool2.not, true
  %or4 = zext i1 %not.tobool2.not to i32
  %grbm_soft_reset.1 = or i32 %spec.select, %or4
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8194, i32 noundef 0) #12
  %and8 = lshr i32 %call7, 22
  %0 = and i32 %and8, 4
  %1 = or i32 %grbm_soft_reset.1, %0
  %call13 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #12
  %and14 = and i32 %call13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %2 = select i1 %tobool15.not, i1 %tobool2.not, i1 false
  %srbm_soft_reset.1 = select i1 %2, i32 0, i32 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool19.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool19.not, i1 %2, i1 false
  br i1 %or.cond, label %entry.if.end43_crit_edge, label %if.then21

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then21:                                        ; preds = %entry
  tail call fastcc void @gfx_v7_0_fini_pg(ptr noundef %handle)
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12394, i32 noundef 0) #12
  %and.i.i = and i32 %call.i.i, -1572865
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12394, i32 noundef %and.i.i, i32 noundef 0) #12
  tail call fastcc void @gfx_v7_0_enable_cgcg(ptr noundef %handle, i1 noundef zeroext false) #12
  tail call fastcc void @gfx_v7_0_enable_mgcg(ptr noundef %handle, i1 noundef zeroext false) #12
  %call.i1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12394, i32 noundef 0) #12
  %tmp.0.i.i = or i32 %call.i1.i, 1572864
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12394, i32 noundef %tmp.0.i.i, i32 noundef 0) #12
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 4
  %stop = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stop, align 4
  tail call void %6(ptr noundef %handle) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8630, i32 noundef 352321536, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8333, i32 noundef 1342177280, i32 noundef 0) #12
  br i1 %tobool19.not, label %if.then21.if.end29_crit_edge, label %if.then23

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8200, i32 noundef 0) #12
  %or25 = or i32 %call24, %1
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.37, i32 noundef %or25) #15
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8200, i32 noundef %or25, i32 noundef 0) #12
  %call26 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8200, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 10737400) #12
  %neg = xor i32 %1, -1
  %and27 = and i32 %call26, %neg
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 8200, i32 noundef %and27, i32 noundef 0) #12
  %call28 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 8200, i32 noundef 0) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.then21.if.end29_crit_edge
  br i1 %2, label %if.end29.if.end42_crit_edge, label %if.then31

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  %or33 = or i32 %call32, %srbm_soft_reset.1
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.41, i32 noundef %or33) #15
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %or33, i32 noundef 0) #12
  %call38 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 10737400) #12
  %neg39 = xor i32 %srbm_soft_reset.1, -1
  %and40 = and i32 %call38, %neg39
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %and40, i32 noundef 0) #12
  %call41 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then31, %if.end29.if.end42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 10737400) #12
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %entry.if.end43_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12394, i32 noundef 0) #12
  %and.i = and i32 %call.i, -1572865
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12394, i32 noundef %and.i, i32 noundef 0) #12
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gfx_v7_0_enable_mgcg(ptr noundef %handle, i1 noundef zeroext true)
  tail call fastcc void @gfx_v7_0_enable_cgcg(ptr noundef %handle, i1 noundef zeroext true)
  br label %if.end2

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gfx_v7_0_enable_cgcg(ptr noundef %handle, i1 noundef zeroext false)
  tail call fastcc void @gfx_v7_0_enable_mgcg(ptr noundef %handle, i1 noundef zeroext false)
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %call.i8 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12394, i32 noundef 0) #12
  %tmp.0.i = or i32 %call.i8, 1572864
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12394, i32 noundef %tmp.0.i, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_set_powergating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then1:                                         ; preds = %entry
  tail call fastcc void @gfx_v7_0_update_gfx_pg(ptr noundef %handle, i1 noundef zeroext %cmp)
  %2 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_flags, align 4
  %and4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then1.if.end10_crit_edge, label %if.then6

if.then1.if.end10_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then6:                                         ; preds = %if.then1
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12547, i32 noundef 0) #12
  br i1 %cmp, label %land.lhs.true.i, label %if.then6.if.else.i_crit_edge

if.then6.if.else.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %and2.i = and i32 %call.i, -32769
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then6.if.else.i_crit_edge
  %or.i = or i32 %call.i, 32768
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %and2.i, %if.then.i ], [ %or.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %data.0.i)
  %cmp.not.i = icmp eq i32 %call.i, %data.0.i
  br i1 %cmp.not.i, label %if.end.i.gfx_v7_0_enable_cp_pg.exit_crit_edge, label %if.then3.i

if.end.i.gfx_v7_0_enable_cp_pg.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_enable_cp_pg.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12547, i32 noundef %data.0.i, i32 noundef 0) #12
  br label %gfx_v7_0_enable_cp_pg.exit

gfx_v7_0_enable_cp_pg.exit:                       ; preds = %if.then3.i, %if.end.i.gfx_v7_0_enable_cp_pg.exit_crit_edge
  %call.i17 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 12547, i32 noundef 0) #12
  br i1 %cmp, label %land.lhs.true.i21, label %gfx_v7_0_enable_cp_pg.exit.if.else.i25_crit_edge

gfx_v7_0_enable_cp_pg.exit.if.else.i25_crit_edge: ; preds = %gfx_v7_0_enable_cp_pg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i25

land.lhs.true.i21:                                ; preds = %gfx_v7_0_enable_cp_pg.exit
  %6 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pg_flags, align 4
  %and.i19 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool1.not.i20 = icmp eq i32 %and.i19, 0
  br i1 %tobool1.not.i20, label %land.lhs.true.i21.if.else.i25_crit_edge, label %if.then.i23

land.lhs.true.i21.if.else.i25_crit_edge:          ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i25

if.then.i23:                                      ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #14
  %and2.i22 = and i32 %call.i17, -8193
  br label %if.end.i28

if.else.i25:                                      ; preds = %land.lhs.true.i21.if.else.i25_crit_edge, %gfx_v7_0_enable_cp_pg.exit.if.else.i25_crit_edge
  %or.i24 = or i32 %call.i17, 8192
  br label %if.end.i28

if.end.i28:                                       ; preds = %if.else.i25, %if.then.i23
  %data.0.i26 = phi i32 [ %and2.i22, %if.then.i23 ], [ %or.i24, %if.else.i25 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i17, i32 %data.0.i26)
  %cmp.not.i27 = icmp eq i32 %call.i17, %data.0.i26
  br i1 %cmp.not.i27, label %if.end.i28.if.end10_crit_edge, label %if.then3.i29

if.end.i28.if.end10_crit_edge:                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3.i29:                                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 12547, i32 noundef %data.0.i26, i32 noundef 0) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then3.i29, %if.end.i28.if.end10_crit_edge, %if.then1.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gfx_get_num_kcq(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gfx_v7_0_get_gpu_clock_counter(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gfx = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106
  tail call void @mutex_lock_nested(ptr noundef %gfx, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12518, i32 noundef 1, i32 noundef 0) #12
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12516, i32 noundef 0) #12
  %conv = zext i32 %call to i64
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12517, i32 noundef 0) #12
  %conv2 = zext i32 %call1 to i64
  %shl = shl nuw i64 %conv2, 32
  %or = or i64 %shl, %conv
  tail call void @mutex_unlock(ptr noundef %gfx) #12
  ret i64 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_select_se_sh(ptr noundef %adev, i32 noundef %se_num, i32 noundef %sh_num, i32 noundef %instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  %or4 = or i32 %data.0, -1610612736
  br label %if.end24

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %se_num)
  %cmp1 = icmp eq i32 %se_num, -1
  br i1 %cmp1, label %if.then7, label %if.else11

if.then7:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #14
  %shl8 = shl i32 %sh_num, 8
  %or9 = or i32 %shl8, %data.0
  %or10 = or i32 %or9, -2147483648
  br label %if.end24

if.else11:                                        ; preds = %if.else5
  br i1 %cmp2, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  %shl14 = shl i32 %se_num, 16
  %or15 = or i32 %shl14, %data.0
  %or16 = or i32 %or15, 536870912
  br label %if.end24

if.else17:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  %shl18 = shl i32 %sh_num, 8
  %shl19 = shl i32 %se_num, 16
  %or20 = or i32 %shl18, %shl19
  %or21 = or i32 %or20, %data.0
  br label %if.end24

if.end24:                                         ; preds = %if.else17, %if.then13, %if.then7, %if.then3
  %data.1 = phi i32 [ %or4, %if.then3 ], [ %or10, %if.then7 ], [ %or16, %if.then13 ], [ %or21, %if.else17 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 49664, i32 noundef %data.1, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_read_wave_data(ptr noundef %adev, i32 noundef %simd, i32 noundef %wave, ptr nocapture noundef writeonly %dst, ptr noundef %no_fields) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i, i32 noundef 0) #12
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i152, i32 noundef 0) #12
  %call.i153 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i157, i32 noundef 0) #12
  %call.i158 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i162, i32 noundef 0) #12
  %call.i163 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i167, i32 noundef 0) #12
  %call.i168 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i172, i32 noundef 0) #12
  %call.i173 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i177, i32 noundef 0) #12
  %call.i178 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i182, i32 noundef 0) #12
  %call.i183 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i187, i32 noundef 0) #12
  %call.i188 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i192, i32 noundef 0) #12
  %call.i193 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i197, i32 noundef 0) #12
  %call.i198 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i202, i32 noundef 0) #12
  %call.i203 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i207, i32 noundef 0) #12
  %call.i208 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i212, i32 noundef 0) #12
  %call.i213 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i217, i32 noundef 0) #12
  %call.i218 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i222, i32 noundef 0) #12
  %call.i223 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i227, i32 noundef 0) #12
  %call.i228 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i232, i32 noundef 0) #12
  %call.i233 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or4.i237, i32 noundef 0) #12
  %call.i238 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
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
define internal void @gfx_v7_0_read_wave_sgprs(ptr noundef %adev, i32 noundef %simd, i32 noundef %wave, i32 noundef %start, i32 noundef %size, ptr nocapture noundef writeonly %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shl1.i = shl i32 %simd, 4
  %add = shl i32 %start, 16
  %shl2.i = add i32 %add, 33554432
  %or.i = or i32 %shl1.i, %wave
  %or3.i = or i32 %or.i, %shl2.i
  %or7.i = or i32 %or3.i, 12288
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 9080, i32 noundef %or7.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not1.i = icmp eq i32 %size, 0
  br i1 %tobool.not1.i, label %entry.wave_read_regs.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.wave_read_regs.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %wave_read_regs.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %out.addr.03.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %dst, %entry.while.body.i_crit_edge ]
  %num.addr.02.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %size, %entry.while.body.i_crit_edge ]
  %dec.i = add i32 %num.addr.02.i, -1
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 9081, i32 noundef 0) #12
  %incdec.ptr.i = getelementptr i32, ptr %out.addr.03.i, i32 1
  %0 = ptrtoint ptr %out.addr.03.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call.i, ptr %out.addr.03.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.wave_read_regs.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.wave_read_regs.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wave_read_regs.exit

wave_read_regs.exit:                              ; preds = %while.body.i.wave_read_regs.exit_crit_edge, %entry.wave_read_regs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_select_me_pipe_q(ptr noundef %adev, i32 noundef %me, i32 noundef %pipe, i32 noundef %q, i32 noundef %vm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cik_srbm_select(ptr noundef %adev, i32 noundef %me, i32 noundef %pipe, i32 noundef %q, i32 noundef %vm) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_srbm_select(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gfx_v7_0_is_rlc_enabled(ptr nocapture noundef readnone %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_set_safe_mode(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12602, i32 noundef 3, i32 noundef 0) #12
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22.not = icmp eq i32 %1, 0
  br i1 %cmp22.not, label %entry.for.end13_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end13

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12544, i32 noundef 0) #12
  %and = and i32 %call, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp1 = icmp eq i32 %and, 6
  br i1 %cmp1, label %for.endthread-pre-split, label %if.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #12
  %inc = add nuw i32 %i.023, 1
  %3 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.endthread-pre-split:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %usec_timeout, align 8
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.end.for.end_crit_edge
  %6 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %4, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp424.not = icmp eq i32 %6, 0
  br i1 %cmp424.not, label %for.end.for.end13_crit_edge, label %for.end.for.body5_crit_edge

for.end.for.body5_crit_edge:                      ; preds = %for.end
  br label %for.body5

for.end.for.end13_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end13

for.body5:                                        ; preds = %if.end10.for.body5_crit_edge, %for.end.for.body5_crit_edge
  %i.125 = phi i32 [ %inc12, %if.end10.for.body5_crit_edge ], [ 0, %for.end.for.body5_crit_edge ]
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12602, i32 noundef 0) #12
  %and7 = and i32 %call6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 0
  br i1 %cmp8, label %for.body5.for.end13_crit_edge, label %if.end10

for.body5.for.end13_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end13

if.end10:                                         ; preds = %for.body5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #12
  %inc12 = add nuw i32 %i.125, 1
  %8 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout, align 8
  %cmp4 = icmp ult i32 %inc12, %9
  br i1 %cmp4, label %if.end10.for.body5_crit_edge, label %if.end10.for.end13_crit_edge

if.end10.for.end13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end13

if.end10.for.body5_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5

for.end13:                                        ; preds = %if.end10.for.end13_crit_edge, %for.body5.for.end13_crit_edge, %for.end.for.end13_crit_edge, %entry.for.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_unset_safe_mode(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12602, i32 noundef 1, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_rlc_init(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  %reg_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 3
  %spectre_rlc_save_restore_register_list.kalindi_rlc_save_restore_register_list = select i1 %cmp, ptr @spectre_rlc_save_restore_register_list, ptr @kalindi_rlc_save_restore_register_list
  %. = select i1 %cmp, i32 443, i32 321
  %4 = ptrtoint ptr %reg_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spectre_rlc_save_restore_register_list.kalindi_rlc_save_restore_register_list, ptr %reg_list, align 4
  %reg_list_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 4
  %5 = ptrtoint ptr %reg_list_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %., ptr %reg_list_size, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then, %entry.if.end10_crit_edge
  %cs_data13 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 8
  %6 = ptrtoint ptr %cs_data13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ci_cs_data, ptr %cs_data13, align 4
  %cp_table_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 13
  %7 = ptrtoint ptr %cp_table_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67584, ptr %cp_table_size, align 4
  %reg_list21 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 3
  %8 = ptrtoint ptr %reg_list21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_list21, align 4
  %tobool29.not = icmp eq ptr %9, null
  br i1 %tobool29.not, label %if.end10.if.then36_crit_edge, label %if.then30

if.end10.if.then36_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then30:                                        ; preds = %if.end10
  %reg_list_size24 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 4
  %10 = ptrtoint ptr %reg_list_size24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_list_size24, align 8
  %add25 = add i32 %11, 240
  %call = tail call i32 @amdgpu_gfx_rlc_init_sr(ptr noundef %adev, i32 noundef %add25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool31.not = icmp eq i32 %call, 0
  br i1 %tobool31.not, label %if.then30.if.then36_crit_edge, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then30.if.then36_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then36:                                        ; preds = %if.then30.if.then36_crit_edge, %if.end10.if.then36_crit_edge
  %call37 = tail call i32 @amdgpu_gfx_rlc_init_csb(ptr noundef %adev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end41, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %if.then36
  %12 = ptrtoint ptr %cp_table_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cp_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool45.not = icmp eq i32 %13, 0
  br i1 %tobool45.not, label %if.end41.if.end51_crit_edge, label %if.then46

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then46:                                        ; preds = %if.end41
  %call47 = tail call i32 @amdgpu_gfx_rlc_init_cpt(ptr noundef %adev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then46.if.end51_crit_edge, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then46.if.end51_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end51:                                         ; preds = %if.then46.if.end51_crit_edge, %if.end41.if.end51_crit_edge
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs, align 4
  %update_spm_vmid = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %update_spm_vmid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %update_spm_vmid, align 4
  %tobool54.not = icmp eq ptr %17, null
  br i1 %tobool54.not, label %if.end51.cleanup_crit_edge, label %if.then55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %17(ptr noundef %adev, i32 noundef 15) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end51.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.then30.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then30.cleanup_crit_edge ], [ %call37, %if.then36.cleanup_crit_edge ], [ %call47, %if.then46.cleanup_crit_edge ], [ 0, %if.then55 ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_get_csb_size(ptr nocapture noundef readonly %adev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_data = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 8
  %0 = ptrtoint ptr %cs_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp5.not41 = icmp eq ptr %3, null
  br i1 %cmp5.not41, label %for.cond.preheader.for.end17_crit_edge, label %for.cond.preheader.for.cond7.preheader_crit_edge

for.cond.preheader.for.cond7.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond7.preheader

for.cond.preheader.for.end17_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17

for.cond7.preheader:                              ; preds = %for.inc15.for.cond7.preheader_crit_edge, %for.cond.preheader.for.cond7.preheader_crit_edge
  %4 = phi ptr [ %14, %for.inc15.for.cond7.preheader_crit_edge ], [ %3, %for.cond.preheader.for.cond7.preheader_crit_edge ]
  %sect.043 = phi ptr [ %incdec.ptr16, %for.inc15.for.cond7.preheader_crit_edge ], [ %1, %for.cond.preheader.for.cond7.preheader_crit_edge ]
  %count.042 = phi i32 [ %count.1.lcssa, %for.inc15.for.cond7.preheader_crit_edge ], [ 5, %for.cond.preheader.for.cond7.preheader_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp8.not38 = icmp eq ptr %6, null
  br i1 %cmp8.not38, label %for.cond7.preheader.for.inc15_crit_edge, label %for.body9.lr.ph

for.cond7.preheader.for.inc15_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc15

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %id = getelementptr inbounds %struct.cs_section_def, ptr %sect.043, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp10 = icmp eq i32 %8, 1
  br i1 %cmp10, label %for.body9.lr.ph.for.body9_crit_edge, label %for.body9.lr.ph.cleanup_crit_edge

for.body9.lr.ph.cleanup_crit_edge:                ; preds = %for.body9.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body9.lr.ph.for.body9_crit_edge:              ; preds = %for.body9.lr.ph
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph.for.body9_crit_edge
  %ext.040 = phi ptr [ %incdec.ptr, %for.body9.for.body9_crit_edge ], [ %4, %for.body9.lr.ph.for.body9_crit_edge ]
  %count.139 = phi i32 [ %add13, %for.body9.for.body9_crit_edge ], [ %count.042, %for.body9.lr.ph.for.body9_crit_edge ]
  %reg_count = getelementptr inbounds %struct.cs_extent_def, ptr %ext.040, i32 0, i32 2
  %9 = ptrtoint ptr %reg_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_count, align 4
  %add12 = add i32 %count.139, 2
  %add13 = add i32 %add12, %10
  %incdec.ptr = getelementptr %struct.cs_extent_def, ptr %ext.040, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %incdec.ptr, align 4
  %cmp8.not = icmp eq ptr %12, null
  br i1 %cmp8.not, label %for.body9.for.inc15_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

for.body9.for.inc15_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc15

for.inc15:                                        ; preds = %for.body9.for.inc15_crit_edge, %for.cond7.preheader.for.inc15_crit_edge
  %count.1.lcssa = phi i32 [ %count.042, %for.cond7.preheader.for.inc15_crit_edge ], [ %add13, %for.body9.for.inc15_crit_edge ]
  %incdec.ptr16 = getelementptr %struct.cs_section_def, ptr %sect.043, i32 1
  %13 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr16, align 4
  %cmp5.not = icmp eq ptr %14, null
  br i1 %cmp5.not, label %for.inc15.for.end17_crit_edge, label %for.inc15.for.cond7.preheader_crit_edge

for.inc15.for.cond7.preheader_crit_edge:          ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond7.preheader

for.inc15.for.end17_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17

for.end17:                                        ; preds = %for.inc15.for.end17_crit_edge, %for.cond.preheader.for.end17_crit_edge
  %count.0.lcssa = phi i32 [ 5, %for.cond.preheader.for.end17_crit_edge ], [ %count.1.lcssa, %for.inc15.for.end17_crit_edge ]
  %add20 = add i32 %count.0.lcssa, 8
  br label %cleanup

cleanup:                                          ; preds = %for.end17, %for.body9.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add20, %for.end17 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.body9.lr.ph.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_get_csb_buffer(ptr nocapture noundef readonly %adev, ptr noundef %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_data = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 8
  %0 = ptrtoint ptr %cs_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs_data, align 4
  %cmp = icmp eq ptr %1, null
  %cmp1 = icmp eq ptr %buffer, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 4849856, ptr %buffer, align 4
  %arrayidx5 = getelementptr i32, ptr %buffer, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr i32, ptr %buffer, i32 2
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 2621888, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr i32, ptr %buffer, i32 3
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 128, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr i32, ptr %buffer, i32 4
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 128, ptr %arrayidx11, align 4
  %7 = ptrtoint ptr %cs_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cs_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %cmp15.not148 = icmp eq ptr %10, null
  br i1 %cmp15.not148, label %if.end3.for.end40_crit_edge, label %if.end3.for.cond17.preheader_crit_edge

if.end3.for.cond17.preheader_crit_edge:           ; preds = %if.end3
  br label %for.cond17.preheader

if.end3.for.end40_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end40

for.cond17.preheader:                             ; preds = %for.inc38.for.cond17.preheader_crit_edge, %if.end3.for.cond17.preheader_crit_edge
  %11 = phi ptr [ %37, %for.inc38.for.cond17.preheader_crit_edge ], [ %10, %if.end3.for.cond17.preheader_crit_edge ]
  %sect.0150 = phi ptr [ %incdec.ptr39, %for.inc38.for.cond17.preheader_crit_edge ], [ %8, %if.end3.for.cond17.preheader_crit_edge ]
  %count.0149 = phi i32 [ %count.1.lcssa, %for.inc38.for.cond17.preheader_crit_edge ], [ 5, %if.end3.for.cond17.preheader_crit_edge ]
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp18.not143 = icmp eq ptr %13, null
  br i1 %cmp18.not143, label %for.cond17.preheader.for.inc38_crit_edge, label %for.body19.lr.ph

for.cond17.preheader.for.inc38_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

for.body19.lr.ph:                                 ; preds = %for.cond17.preheader
  %id = getelementptr inbounds %struct.cs_section_def, ptr %sect.0150, i32 0, i32 1
  br label %for.body19

for.body19:                                       ; preds = %for.inc36.for.body19_crit_edge, %for.body19.lr.ph
  %ext.0145 = phi ptr [ %11, %for.body19.lr.ph ], [ %incdec.ptr, %for.inc36.for.body19_crit_edge ]
  %count.1144 = phi i32 [ %count.0149, %for.body19.lr.ph ], [ %count.2.lcssa, %for.inc36.for.body19_crit_edge ]
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp20 = icmp eq i32 %15, 1
  br i1 %cmp20, label %if.then21, label %for.body19.cleanup_crit_edge

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %for.body19
  %reg_count = getelementptr inbounds %struct.cs_extent_def, ptr %ext.0145, i32 0, i32 2
  %16 = ptrtoint ptr %reg_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_count, align 4
  %and = shl i32 %17, 16
  %or = or i32 %and, -1073714944
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %inc22 = add i32 %count.1144, 1
  %arrayidx23 = getelementptr i32, ptr %buffer, i32 %count.1144
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %18, ptr %arrayidx23, align 4
  %reg_index = getelementptr inbounds %struct.cs_extent_def, ptr %ext.0145, i32 0, i32 1
  %20 = ptrtoint ptr %reg_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_index, align 4
  %sub = add i32 %21, -40960
  %22 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %inc24 = add i32 %count.1144, 2
  %arrayidx25 = getelementptr i32, ptr %buffer, i32 %inc22
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %22, ptr %arrayidx25, align 4
  %24 = ptrtoint ptr %reg_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp28140.not = icmp eq i32 %25, 0
  br i1 %cmp28140.not, label %if.then21.for.inc36_crit_edge, label %if.then21.for.body29_crit_edge

if.then21.for.body29_crit_edge:                   ; preds = %if.then21
  br label %for.body29

if.then21.for.inc36_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc36

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %if.then21.for.body29_crit_edge
  %i.0142 = phi i32 [ %inc34, %for.body29.for.body29_crit_edge ], [ 0, %if.then21.for.body29_crit_edge ]
  %count.2141 = phi i32 [ %inc32, %for.body29.for.body29_crit_edge ], [ %inc24, %if.then21.for.body29_crit_edge ]
  %26 = ptrtoint ptr %ext.0145 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ext.0145, align 4
  %arrayidx31 = getelementptr i32, ptr %27, i32 %i.0142
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx31, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %inc32 = add i32 %count.2141, 1
  %arrayidx33 = getelementptr i32, ptr %buffer, i32 %count.2141
  %31 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %30, ptr %arrayidx33, align 4
  %inc34 = add nuw i32 %i.0142, 1
  %32 = ptrtoint ptr %reg_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_count, align 4
  %cmp28 = icmp ult i32 %inc34, %33
  br i1 %cmp28, label %for.body29.for.body29_crit_edge, label %for.body29.for.inc36_crit_edge

for.body29.for.inc36_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc36

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body29

for.inc36:                                        ; preds = %for.body29.for.inc36_crit_edge, %if.then21.for.inc36_crit_edge
  %count.2.lcssa = phi i32 [ %inc24, %if.then21.for.inc36_crit_edge ], [ %inc32, %for.body29.for.inc36_crit_edge ]
  %incdec.ptr = getelementptr %struct.cs_extent_def, ptr %ext.0145, i32 1
  %34 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %incdec.ptr, align 4
  %cmp18.not = icmp eq ptr %35, null
  br i1 %cmp18.not, label %for.inc36.for.inc38_crit_edge, label %for.inc36.for.body19_crit_edge

for.inc36.for.body19_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body19

for.inc36.for.inc38_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

for.inc38:                                        ; preds = %for.inc36.for.inc38_crit_edge, %for.cond17.preheader.for.inc38_crit_edge
  %count.1.lcssa = phi i32 [ %count.0149, %for.cond17.preheader.for.inc38_crit_edge ], [ %count.2.lcssa, %for.inc36.for.inc38_crit_edge ]
  %incdec.ptr39 = getelementptr %struct.cs_section_def, ptr %sect.0150, i32 1
  %36 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %incdec.ptr39, align 4
  %cmp15.not = icmp eq ptr %37, null
  br i1 %cmp15.not, label %for.inc38.for.end40_crit_edge, label %for.inc38.for.cond17.preheader_crit_edge

for.inc38.for.cond17.preheader_crit_edge:         ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond17.preheader

for.inc38.for.end40_crit_edge:                    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end40

for.end40:                                        ; preds = %for.inc38.for.end40_crit_edge, %if.end3.for.end40_crit_edge
  %count.0.lcssa = phi i32 [ 5, %if.end3.for.end40_crit_edge ], [ %count.1.lcssa, %for.inc38.for.end40_crit_edge ]
  %inc41 = add i32 %count.0.lcssa, 1
  %arrayidx42 = getelementptr i32, ptr %buffer, i32 %count.0.lcssa
  %38 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 6881984, ptr %arrayidx42, align 4
  %inc43 = add i32 %count.0.lcssa, 2
  %arrayidx44 = getelementptr i32, ptr %buffer, i32 %inc41
  %39 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 -738197504, ptr %arrayidx44, align 4
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %40 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %asic_type, align 8
  %switch.tableidx = add i32 %41, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %42 = icmp ult i32 %switch.tableidx, 5
  br i1 %42, label %switch.lookup, label %for.end40.sw.epilog_crit_edge

for.end40.sw.epilog_crit_edge:                    ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v7_0_get_csb_buffer, i32 0, i32 %switch.tableidx
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep153 = getelementptr inbounds [5 x i32], ptr @switch.table.gfx_v7_0_get_csb_buffer.44, i32 0, i32 %switch.tableidx
  %44 = ptrtoint ptr %switch.gep153 to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load154 = load i32, ptr %switch.gep153, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %for.end40.sw.epilog_crit_edge
  %.sink152 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %for.end40.sw.epilog_crit_edge ]
  %.sink = phi i32 [ %switch.load154, %switch.lookup ], [ 0, %for.end40.sw.epilog_crit_edge ]
  %inc64 = add i32 %count.0.lcssa, 3
  %arrayidx65 = getelementptr i32, ptr %buffer, i32 %inc43
  %45 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %.sink152, ptr %arrayidx65, align 4
  %arrayidx67 = getelementptr i32, ptr %buffer, i32 %inc64
  %46 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %.sink, ptr %arrayidx67, align 4
  %count.3 = add i32 %count.0.lcssa, 4
  %inc68 = add i32 %count.0.lcssa, 5
  %arrayidx69 = getelementptr i32, ptr %buffer, i32 %count.3
  %47 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 4849856, ptr %arrayidx69, align 4
  %inc70 = add i32 %count.0.lcssa, 6
  %arrayidx71 = getelementptr i32, ptr %buffer, i32 %inc68
  %48 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 48, ptr %arrayidx71, align 4
  %inc72 = add i32 %count.0.lcssa, 7
  %arrayidx73 = getelementptr i32, ptr %buffer, i32 %inc70
  %49 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 1179840, ptr %arrayidx73, align 4
  %arrayidx75 = getelementptr i32, ptr %buffer, i32 %inc72
  %50 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %arrayidx75, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %for.body19.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfx_v7_0_cp_pg_table_num(ptr nocapture noundef readonly %adev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  %. = select i1 %cmp, i32 5, i32 4
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_rlc_resume(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rlc_fw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 15
  %0 = ptrtoint ptr %rlc_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rlc_fw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void @amdgpu_ucode_print_rlc_hdr(ptr noundef %3) #12
  %ucode_version = getelementptr inbounds %struct.common_firmware_header, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ucode_version, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %rlc_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 16
  %7 = ptrtoint ptr %rlc_fw_version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rlc_fw_version, align 8
  %ucode_feature_version = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ucode_feature_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ucode_feature_version, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %rlc_feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 24
  %11 = ptrtoint ptr %rlc_feature_version to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rlc_feature_version, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %stop = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop, align 4
  tail call void %15(ptr noundef %adev) #12
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12553, i32 noundef 0) #12
  %and = and i32 %call, -4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12553, i32 noundef %and, i32 noundef 0) #12
  %16 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs, align 4
  %reset = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset, align 4
  tail call void %19(ptr noundef %adev) #12
  %pg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %20 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pg_flags.i, align 4
  %and.i = and i32 %21, 231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.gfx_v7_0_init_pg.exit_crit_edge, label %if.then.i

if.end.gfx_v7_0_init_pg.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_init_pg.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  %22 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pg_flags.i, align 4
  %and2.i.i = and i32 %call.i.i, -131073
  %and.i.i = shl i32 %23, 10
  %24 = and i32 %and.i.i, 131072
  %data.0.i.i = or i32 %24, %and2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %data.0.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, %data.0.i.i
  br i1 %cmp.not.i.i, label %if.then.i.gfx_v7_0_enable_sclk_slowdown_on_pu.exit.i_crit_edge, label %if.then3.i.i

if.then.i.gfx_v7_0_enable_sclk_slowdown_on_pu.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_enable_sclk_slowdown_on_pu.exit.i

if.then3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12547, i32 noundef %data.0.i.i, i32 noundef 0) #12
  br label %gfx_v7_0_enable_sclk_slowdown_on_pu.exit.i

gfx_v7_0_enable_sclk_slowdown_on_pu.exit.i:       ; preds = %if.then3.i.i, %if.then.i.gfx_v7_0_enable_sclk_slowdown_on_pu.exit.i_crit_edge
  %call.i14.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  %25 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pg_flags.i, align 4
  %and2.i16.i = and i32 %call.i14.i, -262145
  %and.i17.i = shl i32 %26, 11
  %27 = and i32 %and.i17.i, 262144
  %data.0.i18.i = or i32 %27, %and2.i16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i14.i, i32 %data.0.i18.i)
  %cmp.not.i19.i = icmp eq i32 %call.i14.i, %data.0.i18.i
  br i1 %cmp.not.i19.i, label %gfx_v7_0_enable_sclk_slowdown_on_pu.exit.i.gfx_v7_0_enable_sclk_slowdown_on_pd.exit.i_crit_edge, label %if.then3.i20.i

gfx_v7_0_enable_sclk_slowdown_on_pu.exit.i.gfx_v7_0_enable_sclk_slowdown_on_pd.exit.i_crit_edge: ; preds = %gfx_v7_0_enable_sclk_slowdown_on_pu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_enable_sclk_slowdown_on_pd.exit.i

if.then3.i20.i:                                   ; preds = %gfx_v7_0_enable_sclk_slowdown_on_pu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12547, i32 noundef %data.0.i18.i, i32 noundef 0) #12
  br label %gfx_v7_0_enable_sclk_slowdown_on_pd.exit.i

gfx_v7_0_enable_sclk_slowdown_on_pd.exit.i:       ; preds = %if.then3.i20.i, %gfx_v7_0_enable_sclk_slowdown_on_pu.exit.i.gfx_v7_0_enable_sclk_slowdown_on_pd.exit.i_crit_edge
  %28 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pg_flags.i, align 4
  %and2.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %gfx_v7_0_enable_sclk_slowdown_on_pd.exit.i.if.end.i_crit_edge, label %if.then4.i

gfx_v7_0_enable_sclk_slowdown_on_pd.exit.i.if.end.i_crit_edge: ; preds = %gfx_v7_0_enable_sclk_slowdown_on_pd.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then4.i:                                       ; preds = %gfx_v7_0_enable_sclk_slowdown_on_pd.exit.i
  %cs_data.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 8
  %30 = ptrtoint ptr %cs_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cs_data.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12588, i32 noundef 61, i32 noundef 0) #12
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %clear_state_gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 6
  %32 = ptrtoint ptr %clear_state_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %clear_state_gpu_addr.i.i, align 8
  %shr.i.i = lshr i64 %33, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12589, i32 noundef %conv.i.i, i32 noundef 0) #12
  %34 = ptrtoint ptr %clear_state_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %clear_state_gpu_addr.i.i, align 8
  %conv7.i.i = trunc i64 %35 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12589, i32 noundef %conv7.i.i, i32 noundef 0) #12
  %clear_state_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 9
  %36 = ptrtoint ptr %clear_state_size.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %clear_state_size.i.i, align 8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12589, i32 noundef 0, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12589, i32 noundef 0, i32 noundef 0) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ 0, %if.else.i.i ], [ %37, %if.then.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12589, i32 noundef %.sink.i.i, i32 noundef 0) #12
  %reg_list.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 3
  %38 = ptrtoint ptr %reg_list.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_list.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %39, null
  br i1 %tobool13.not.i.i, label %if.end.i.i.if.end27.i.i_crit_edge, label %if.then14.i.i

if.end.i.i.if.end27.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12588, i32 noundef 144, i32 noundef 0) #12
  %reg_list_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 4
  %40 = ptrtoint ptr %reg_list_size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg_list_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp1893.not.i.i = icmp eq i32 %41, 0
  br i1 %cmp1893.not.i.i, label %if.then14.i.i.if.end27.i.i_crit_edge, label %if.then14.i.i.for.body20.i.i_crit_edge

if.then14.i.i.for.body20.i.i_crit_edge:           ; preds = %if.then14.i.i
  br label %for.body20.i.i

if.then14.i.i.if.end27.i.i_crit_edge:             ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

for.body20.i.i:                                   ; preds = %for.body20.i.i.for.body20.i.i_crit_edge, %if.then14.i.i.for.body20.i.i_crit_edge
  %i.194.i.i = phi i32 [ %inc25.i.i, %for.body20.i.i.for.body20.i.i_crit_edge ], [ 0, %if.then14.i.i.for.body20.i.i_crit_edge ]
  %42 = ptrtoint ptr %reg_list.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_list.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %43, i32 %i.194.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12589, i32 noundef %45, i32 noundef 0) #12
  %inc25.i.i = add nuw i32 %i.194.i.i, 1
  %46 = ptrtoint ptr %reg_list_size.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg_list_size.i.i, align 8
  %cmp18.i.i = icmp ult i32 %inc25.i.i, %47
  br i1 %cmp18.i.i, label %for.body20.i.i.for.body20.i.i_crit_edge, label %for.body20.i.i.if.end27.i.i_crit_edge

for.body20.i.i.if.end27.i.i_crit_edge:            ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

for.body20.i.i.for.body20.i.i_crit_edge:          ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20.i.i

if.end27.i.i:                                     ; preds = %for.body20.i.i.if.end27.i.i_crit_edge, %if.then14.i.i.if.end27.i.i_crit_edge, %if.end.i.i.if.end27.i.i_crit_edge
  %call.i21.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  %or.i.i = or i32 %call.i21.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i21.i, i32 %or.i.i)
  %cmp28.not.i.i = icmp eq i32 %call.i21.i, %or.i.i
  br i1 %cmp28.not.i.i, label %if.end27.i.i.gfx_v7_0_init_gfx_cgpg.exit.i_crit_edge, label %if.then30.i.i

if.end27.i.i.gfx_v7_0_init_gfx_cgpg.exit.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_init_gfx_cgpg.exit.i

if.then30.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12547, i32 noundef %or.i.i, i32 noundef 0) #12
  br label %gfx_v7_0_init_gfx_cgpg.exit.i

gfx_v7_0_init_gfx_cgpg.exit.i:                    ; preds = %if.then30.i.i, %if.end27.i.i.gfx_v7_0_init_gfx_cgpg.exit.i_crit_edge
  %save_restore_gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 1
  %48 = ptrtoint ptr %save_restore_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %save_restore_gpu_addr.i.i, align 8
  %shr34.i.i = lshr i64 %49, 8
  %conv35.i.i = trunc i64 %shr34.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12509, i32 noundef %conv35.i.i, i32 noundef 0) #12
  %cp_table_gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 11
  %50 = ptrtoint ptr %cp_table_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %cp_table_gpu_addr.i.i, align 8
  %shr38.i.i = lshr i64 %51, 8
  %conv39.i.i = trunc i64 %shr38.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12510, i32 noundef %conv39.i.i, i32 noundef 0) #12
  %call40.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 8642, i32 noundef 0) #12
  %and41.i.i = and i32 %call40.i.i, 65535
  %or42.i.i = or i32 %and41.i.i, 6291456
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 8642, i32 noundef %or42.i.i, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12557, i32 noundef 269488144, i32 noundef 0) #12
  %call43.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12511, i32 noundef 0) #12
  %and44.i.i = and i32 %call43.i.i, -256
  %or45.i.i = or i32 %and44.i.i, 3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12511, i32 noundef %or45.i.i, i32 noundef 0) #12
  %call46.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12565, i32 noundef 0) #12
  %and47.i.i = and i32 %call46.i.i, -524281
  %or48.i.i = or i32 %and47.i.i, 14336
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12565, i32 noundef %or48.i.i, i32 noundef 0) #12
  %call.i22.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  %52 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pg_flags.i, align 4
  %and2.i25.i = and i32 %call.i22.i, -32769
  %and.i24.i = shl i32 %53, 10
  %54 = and i32 %and.i24.i, 32768
  %55 = or i32 %54, %and2.i25.i
  %data.0.i29.i = xor i32 %55, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i22.i, i32 %data.0.i29.i)
  %cmp.not.i30.i = icmp eq i32 %call.i22.i, %data.0.i29.i
  br i1 %cmp.not.i30.i, label %gfx_v7_0_init_gfx_cgpg.exit.i.gfx_v7_0_enable_cp_pg.exit.i_crit_edge, label %if.then3.i32.i

gfx_v7_0_init_gfx_cgpg.exit.i.gfx_v7_0_enable_cp_pg.exit.i_crit_edge: ; preds = %gfx_v7_0_init_gfx_cgpg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_enable_cp_pg.exit.i

if.then3.i32.i:                                   ; preds = %gfx_v7_0_init_gfx_cgpg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12547, i32 noundef %data.0.i29.i, i32 noundef 0) #12
  br label %gfx_v7_0_enable_cp_pg.exit.i

gfx_v7_0_enable_cp_pg.exit.i:                     ; preds = %if.then3.i32.i, %gfx_v7_0_init_gfx_cgpg.exit.i.gfx_v7_0_enable_cp_pg.exit.i_crit_edge
  %call.i33.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  %56 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pg_flags.i, align 4
  %and2.i37.i = and i32 %call.i33.i, -8193
  %and.i35.i = shl i32 %57, 7
  %58 = and i32 %and.i35.i, 8192
  %59 = or i32 %58, %and2.i37.i
  %data.0.i41.i = xor i32 %59, 8192
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i33.i, i32 %data.0.i41.i)
  %cmp.not.i42.i = icmp eq i32 %call.i33.i, %data.0.i41.i
  br i1 %cmp.not.i42.i, label %gfx_v7_0_enable_cp_pg.exit.i.if.end.i_crit_edge, label %if.then3.i44.i

gfx_v7_0_enable_cp_pg.exit.i.if.end.i_crit_edge:  ; preds = %gfx_v7_0_enable_cp_pg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then3.i44.i:                                   ; preds = %gfx_v7_0_enable_cp_pg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12547, i32 noundef %data.0.i41.i, i32 noundef 0) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i44.i, %gfx_v7_0_enable_cp_pg.exit.i.if.end.i_crit_edge, %gfx_v7_0_enable_sclk_slowdown_on_pd.exit.i.if.end.i_crit_edge
  %ao_cu_mask.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 6
  %60 = ptrtoint ptr %ao_cu_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ao_cu_mask.i.i, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12563, i32 noundef %61, i32 noundef 0) #12
  %call.i45.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12564, i32 noundef 0) #12
  %and.i46.i = and i32 %call.i45.i, -256
  %number.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 5
  %62 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %number.i.i, align 4
  %or.i47.i = or i32 %and.i46.i, %63
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12564, i32 noundef %or.i47.i, i32 noundef 0) #12
  tail call fastcc void @gfx_v7_0_update_gfx_pg(ptr noundef %adev, i1 noundef zeroext true) #12
  br label %gfx_v7_0_init_pg.exit

gfx_v7_0_init_pg.exit:                            ; preds = %if.end.i, %if.end.gfx_v7_0_init_pg.exit_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12507, i32 noundef 0, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12498, i32 noundef 32768, i32 noundef 0) #12
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12559, i32 noundef -1, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12561, i32 noundef 6292488, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12505, i32 noundef -2147483644, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12483, i32 noundef 0, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12519, i32 noundef 0, i32 noundef 0) #12
  %64 = ptrtoint ptr %rlc_fw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rlc_fw, align 4
  %data13 = getelementptr inbounds %struct.firmware, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data13, align 4
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %3, i32 0, i32 8
  %68 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ucode_array_offset_bytes, align 4
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %3, i32 0, i32 7
  %70 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ucode_size_bytes, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12514, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp66.not = icmp ult i32 %72, 4
  br i1 %cmp66.not, label %gfx_v7_0_init_pg.exit.for.end_crit_edge, label %for.body.preheader

gfx_v7_0_init_pg.exit.for.end_crit_edge:          ; preds = %gfx_v7_0_init_pg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %gfx_v7_0_init_pg.exit
  %div64 = lshr i32 %72, 2
  %73 = tail call i32 @llvm.bswap.i32(i32 %69)
  %add.ptr = getelementptr i8, ptr %67, i32 %73
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.068 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %fw_data.067 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %incdec.ptr = getelementptr i32, ptr %fw_data.067, i32 1
  %74 = ptrtoint ptr %fw_data.067 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fw_data.067, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12515, i32 noundef %76, i32 noundef 0) #12
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %div64
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %gfx_v7_0_init_pg.exit.for.end_crit_edge
  %77 = ptrtoint ptr %rlc_fw_version to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rlc_fw_version, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12514, i32 noundef %78, i32 noundef 0) #12
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12505, i32 noundef 0) #12
  %and.i65 = and i32 %call.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12505, i32 noundef %and.i65, i32 noundef 0) #12
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %79 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %80)
  %cmp19 = icmp eq i32 %80, 5
  br i1 %cmp19, label %if.then20, label %for.end.if.end21_crit_edge

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12510, i32 noundef 0, i32 noundef 0) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %for.end.if.end21_crit_edge
  %81 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %funcs, align 4
  %start = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %start, align 4
  tail call void %84(ptr noundef %adev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_rlc_stop(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 0, i32 noundef 0) #12
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #12
  %and.i = and i32 %call.i, -1572865
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %and.i, i32 noundef 0) #12
  tail call fastcc void @gfx_v7_0_wait_for_rlc_serdes(ptr noundef %adev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_rlc_reset(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 8200, i32 noundef 0) #12
  %or = or i32 %call, 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 8200, i32 noundef %or, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 10737400) #12
  %and = and i32 %call, -5
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 8200, i32 noundef %and, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 10737400) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_rlc_start(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 1, i32 noundef 0) #12
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #12
  %tmp.0.i = or i32 %call.i, 1572864
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %tmp.0.i, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 10737400) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_update_spm_vmid(ptr noundef %adev, i32 noundef %vmid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %adev, i1 noundef zeroext false) #12
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12593, i32 noundef 0) #12
  %and = and i32 %call, -16
  %and1 = and i32 %vmid, 15
  %or = or i32 %and, %and1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12593, i32 noundef %or, i32 noundef 0) #12
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %adev, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gfx_rlc_init_sr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gfx_rlc_init_csb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gfx_rlc_init_cpt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_rlc_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v7_0_update_gfx_pg(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %land.lhs.true.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %pg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %0 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pg_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  %or.i = or i32 %call.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %or.i)
  %cmp.not.i = icmp eq i32 %call.i, %or.i
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12547, i32 noundef %or.i, i32 noundef 0) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12565, i32 noundef 0) #12
  %or4.i = or i32 %call3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %or4.i)
  %cmp5.not.i = icmp eq i32 %call3.i, %or4.i
  br i1 %cmp5.not.i, label %if.end.i.gfx_v7_0_enable_gfx_cgpg.exit.thread_crit_edge, label %if.then6.i

if.end.i.gfx_v7_0_enable_gfx_cgpg.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_enable_gfx_cgpg.exit.thread

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12565, i32 noundef %or4.i, i32 noundef 0) #12
  br label %gfx_v7_0_enable_gfx_cgpg.exit.thread

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call8.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  %and9.i = and i32 %call8.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %and9.i)
  %cmp10.not.i = icmp eq i32 %call8.i, %and9.i
  br i1 %cmp10.not.i, label %if.else.i.if.end12.i_crit_edge, label %if.then11.i

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12547, i32 noundef %and9.i, i32 noundef 0) #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.else.i.if.end12.i_crit_edge
  %call13.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12565, i32 noundef 0) #12
  %and14.i = and i32 %call13.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %and14.i)
  %cmp15.not.i = icmp eq i32 %call13.i, %and14.i
  br i1 %cmp15.not.i, label %if.end12.i.gfx_v7_0_enable_gfx_cgpg.exit_crit_edge, label %if.then16.i

if.end12.i.gfx_v7_0_enable_gfx_cgpg.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_enable_gfx_cgpg.exit

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12565, i32 noundef %and14.i, i32 noundef 0) #12
  br label %gfx_v7_0_enable_gfx_cgpg.exit

gfx_v7_0_enable_gfx_cgpg.exit.thread:             ; preds = %if.then6.i, %if.end.i.gfx_v7_0_enable_gfx_cgpg.exit.thread_crit_edge
  %call.i730 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  br label %land.lhs.true.i11

gfx_v7_0_enable_gfx_cgpg.exit:                    ; preds = %if.then16.i, %if.end12.i.gfx_v7_0_enable_gfx_cgpg.exit_crit_edge
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 40960, i32 noundef 0) #12
  %call.i7 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  br i1 %enable, label %gfx_v7_0_enable_gfx_cgpg.exit.land.lhs.true.i11_crit_edge, label %gfx_v7_0_enable_gfx_cgpg.exit.if.else.i14_crit_edge

gfx_v7_0_enable_gfx_cgpg.exit.if.else.i14_crit_edge: ; preds = %gfx_v7_0_enable_gfx_cgpg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i14

gfx_v7_0_enable_gfx_cgpg.exit.land.lhs.true.i11_crit_edge: ; preds = %gfx_v7_0_enable_gfx_cgpg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i11

land.lhs.true.i11:                                ; preds = %gfx_v7_0_enable_gfx_cgpg.exit.land.lhs.true.i11_crit_edge, %gfx_v7_0_enable_gfx_cgpg.exit.thread
  %call.i732 = phi i32 [ %call.i730, %gfx_v7_0_enable_gfx_cgpg.exit.thread ], [ %call.i7, %gfx_v7_0_enable_gfx_cgpg.exit.land.lhs.true.i11_crit_edge ]
  %pg_flags.i8 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %2 = ptrtoint ptr %pg_flags.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_flags.i8, align 4
  %and.i9 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool1.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool1.not.i10, label %land.lhs.true.i11.if.else.i14_crit_edge, label %if.then.i13

land.lhs.true.i11.if.else.i14_crit_edge:          ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i14

if.then.i13:                                      ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #14
  %or.i12 = or i32 %call.i732, 8
  br label %if.end.i16

if.else.i14:                                      ; preds = %land.lhs.true.i11.if.else.i14_crit_edge, %gfx_v7_0_enable_gfx_cgpg.exit.if.else.i14_crit_edge
  %call.i731 = phi i32 [ %call.i732, %land.lhs.true.i11.if.else.i14_crit_edge ], [ %call.i7, %gfx_v7_0_enable_gfx_cgpg.exit.if.else.i14_crit_edge ]
  %and2.i = and i32 %call.i731, -9
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.else.i14, %if.then.i13
  %call.i733 = phi i32 [ %call.i732, %if.then.i13 ], [ %call.i731, %if.else.i14 ]
  %data.0.i = phi i32 [ %or.i12, %if.then.i13 ], [ %and2.i, %if.else.i14 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i733, i32 %data.0.i)
  %cmp.not.i15 = icmp eq i32 %call.i733, %data.0.i
  br i1 %cmp.not.i15, label %if.end.i16.gfx_v7_0_enable_gfx_static_mgpg.exit_crit_edge, label %if.then3.i

if.end.i16.gfx_v7_0_enable_gfx_static_mgpg.exit_crit_edge: ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_enable_gfx_static_mgpg.exit

if.then3.i:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12547, i32 noundef %data.0.i, i32 noundef 0) #12
  br label %gfx_v7_0_enable_gfx_static_mgpg.exit

gfx_v7_0_enable_gfx_static_mgpg.exit:             ; preds = %if.then3.i, %if.end.i16.gfx_v7_0_enable_gfx_static_mgpg.exit_crit_edge
  %call.i17 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  br i1 %enable, label %land.lhs.true.i21, label %gfx_v7_0_enable_gfx_static_mgpg.exit.if.else.i25_crit_edge

gfx_v7_0_enable_gfx_static_mgpg.exit.if.else.i25_crit_edge: ; preds = %gfx_v7_0_enable_gfx_static_mgpg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i25

land.lhs.true.i21:                                ; preds = %gfx_v7_0_enable_gfx_static_mgpg.exit
  %pg_flags.i18 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %4 = ptrtoint ptr %pg_flags.i18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pg_flags.i18, align 4
  %and.i19 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool1.not.i20 = icmp eq i32 %and.i19, 0
  br i1 %tobool1.not.i20, label %land.lhs.true.i21.if.else.i25_crit_edge, label %if.then.i23

land.lhs.true.i21.if.else.i25_crit_edge:          ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i25

if.then.i23:                                      ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #14
  %or.i22 = or i32 %call.i17, 4
  br label %if.end.i28

if.else.i25:                                      ; preds = %land.lhs.true.i21.if.else.i25_crit_edge, %gfx_v7_0_enable_gfx_static_mgpg.exit.if.else.i25_crit_edge
  %and2.i24 = and i32 %call.i17, -5
  br label %if.end.i28

if.end.i28:                                       ; preds = %if.else.i25, %if.then.i23
  %data.0.i26 = phi i32 [ %or.i22, %if.then.i23 ], [ %and2.i24, %if.else.i25 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i17, i32 %data.0.i26)
  %cmp.not.i27 = icmp eq i32 %call.i17, %data.0.i26
  br i1 %cmp.not.i27, label %if.end.i28.gfx_v7_0_enable_gfx_dynamic_mgpg.exit_crit_edge, label %if.then3.i29

if.end.i28.gfx_v7_0_enable_gfx_dynamic_mgpg.exit_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_enable_gfx_dynamic_mgpg.exit

if.then3.i29:                                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12547, i32 noundef %data.0.i26, i32 noundef 0) #12
  br label %gfx_v7_0_enable_gfx_dynamic_mgpg.exit

gfx_v7_0_enable_gfx_dynamic_mgpg.exit:            ; preds = %if.then3.i29, %if.end.i28.gfx_v7_0_enable_gfx_dynamic_mgpg.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v7_0_wait_for_rlc_serdes(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #12
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp50.not = icmp eq i32 %1, 0
  br i1 %cmp50.not, label %entry.for.end15_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end15

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %max_sh_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc13.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.051 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc14, %for.inc13.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_sh_per_se, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp448.not = icmp eq i32 %3, 0
  br i1 %cmp448.not, label %for.cond1.preheader.for.inc13_crit_edge, label %for.body5.lr.ph

for.cond1.preheader.for.inc13_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc13

for.body5.lr.ph:                                  ; preds = %for.cond1.preheader
  %shl19.i = shl i32 %i.051, 16
  br label %for.body5

for.body5:                                        ; preds = %for.inc10.for.body5_crit_edge, %for.body5.lr.ph
  %j.049 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc11, %for.inc10.for.body5_crit_edge ]
  %shl8.i = shl i32 %j.049, 8
  %or20.i = or i32 %shl19.i, %shl8.i
  %or21.i = or i32 %or20.i, 1073741824
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 49664, i32 noundef %or21.i, i32 noundef 0) #12
  %4 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp746.not = icmp eq i32 %5, 0
  br i1 %cmp746.not, label %for.body5.for.inc10_crit_edge, label %for.body5.for.body8_crit_edge

for.body5.for.body8_crit_edge:                    ; preds = %for.body5
  br label %for.body8

for.body5.for.inc10_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc10

for.body8:                                        ; preds = %if.end.for.body8_crit_edge, %for.body5.for.body8_crit_edge
  %k.047 = phi i32 [ %inc, %if.end.for.body8_crit_edge ], [ 0, %for.body5.for.body8_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12577, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %for.body8.for.inc10_crit_edge, label %if.end

for.body8.for.inc10_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc10

if.end:                                           ; preds = %for.body8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #12
  %inc = add nuw i32 %k.047, 1
  %7 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usec_timeout, align 8
  %cmp7 = icmp ult i32 %inc, %8
  br i1 %cmp7, label %if.end.for.body8_crit_edge, label %if.end.for.inc10_crit_edge

if.end.for.inc10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc10

if.end.for.body8_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8

for.inc10:                                        ; preds = %if.end.for.inc10_crit_edge, %for.body8.for.inc10_crit_edge, %for.body5.for.inc10_crit_edge
  %inc11 = add nuw i32 %j.049, 1
  %9 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_sh_per_se, align 4
  %cmp4 = icmp ult i32 %inc11, %10
  br i1 %cmp4, label %for.inc10.for.body5_crit_edge, label %for.inc10.for.inc13_crit_edge

for.inc10.for.inc13_crit_edge:                    ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc13

for.inc10.for.body5_crit_edge:                    ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5

for.inc13:                                        ; preds = %for.inc10.for.inc13_crit_edge, %for.cond1.preheader.for.inc13_crit_edge
  %inc14 = add nuw i32 %i.051, 1
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %config, align 8
  %cmp = icmp ult i32 %inc14, %12
  br i1 %cmp, label %for.inc13.for.cond1.preheader_crit_edge, label %for.inc13.for.end15_crit_edge

for.inc13.for.end15_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end15

for.inc13.for.cond1.preheader_crit_edge:          ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader

for.end15:                                        ; preds = %for.inc13.for.end15_crit_edge, %entry.for.end15_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #12
  %usec_timeout18 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %13 = ptrtoint ptr %usec_timeout18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usec_timeout18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1953.not = icmp eq i32 %14, 0
  br i1 %cmp1953.not, label %for.end15.for.end27_crit_edge, label %for.end15.for.body20_crit_edge

for.end15.for.body20_crit_edge:                   ; preds = %for.end15
  br label %for.body20

for.end15.for.end27_crit_edge:                    ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end27

for.body20:                                       ; preds = %if.end24.for.body20_crit_edge, %for.end15.for.body20_crit_edge
  %k.154 = phi i32 [ %inc26, %if.end24.for.body20_crit_edge ], [ 0, %for.end15.for.body20_crit_edge ]
  %call21 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12578, i32 noundef 0) #12
  %and = and i32 %call21, 524287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp22 = icmp eq i32 %and, 0
  br i1 %cmp22, label %for.body20.for.end27_crit_edge, label %if.end24

for.body20.for.end27_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end27

if.end24:                                         ; preds = %for.body20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #12
  %inc26 = add nuw i32 %k.154, 1
  %16 = ptrtoint ptr %usec_timeout18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usec_timeout18, align 8
  %cmp19 = icmp ult i32 %inc26, %17
  br i1 %cmp19, label %if.end24.for.body20_crit_edge, label %if.end24.for.end27_crit_edge

if.end24.for.end27_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end27

if.end24.for.body20_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20

for.end27:                                        ; preds = %if.end24.for.end27_crit_edge, %for.body20.for.end27_crit_edge, %for.end15.for.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_off_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @gfx_v7_0_ring_get_rptr(ptr nocapture noundef readonly %ring) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
define internal i64 @gfx_v7_0_ring_get_wptr_gfx(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef 12357, i32 noundef 0) #12
  %conv = zext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_ring_set_wptr_gfx(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %3 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 12357, i32 noundef %conv, i32 noundef 0) #12
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef 12357, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_ring_emit_ib_gfx(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit37

if.then.i27:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  %. = select i1 %tobool5.not, i32 -1073594624, i32 -1073597696
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit50

if.then.i40:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit63

if.then.i53:                                      ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit76

if.then.i66:                                      ; preds = %amdgpu_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit89

if.then.i79:                                      ; preds = %amdgpu_ring_write.exit76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
define internal void @gfx_v7_0_ring_emit_fence_gfx(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  store volatile i32 -1073461504, ptr %arrayidx.i, align 4
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
  %cmp.i53 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i53, label %if.then.i54, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit64_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit64_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit64

if.then.i54:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit64

amdgpu_ring_write.exit64:                         ; preds = %if.then.i54, %amdgpu_ring_write.exit.amdgpu_ring_write.exit64_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i57 = add i64 %18, 1
  store i64 %inc.i57, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i59 = and i32 %20, %21
  %arrayidx.i60 = getelementptr i32, ptr %16, i32 %idxprom.i59
  %22 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 197908, ptr %arrayidx.i60, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i62 = and i64 %25, %24
  store i64 %and3.i62, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i63 = add i32 %27, -1
  store i32 %dec.i63, ptr %count_dw.i, align 8
  %28 = trunc i64 %addr to i32
  %conv = and i32 %28, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i63)
  %cmp.i66 = icmp slt i32 %dec.i63, 1
  br i1 %cmp.i66, label %if.then.i67, label %amdgpu_ring_write.exit64.amdgpu_ring_write.exit77_crit_edge

amdgpu_ring_write.exit64.amdgpu_ring_write.exit77_crit_edge: ; preds = %amdgpu_ring_write.exit64
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit77

if.then.i67:                                      ; preds = %amdgpu_ring_write.exit64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit77

amdgpu_ring_write.exit77:                         ; preds = %if.then.i67, %amdgpu_ring_write.exit64.amdgpu_ring_write.exit77_crit_edge
  %29 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ring1.i, align 4
  %31 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %wptr.i, align 8
  %inc.i70 = add i64 %32, 1
  store i64 %inc.i70, ptr %wptr.i, align 8
  %33 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_mask.i, align 8
  %35 = trunc i64 %32 to i32
  %idxprom.i72 = and i32 %34, %35
  %arrayidx.i73 = getelementptr i32, ptr %30, i32 %idxprom.i72
  %36 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %conv, ptr %arrayidx.i73, align 4
  %37 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ptr_mask.i, align 8
  %39 = load i64, ptr %wptr.i, align 8
  %and3.i75 = and i64 %39, %38
  store i64 %and3.i75, ptr %wptr.i, align 8
  %40 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count_dw.i, align 8
  %dec.i76 = add i32 %41, -1
  store i32 %dec.i76, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv6 = trunc i64 %shr to i32
  %and7 = and i32 %conv6, 65535
  %or = or i32 %and7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i76)
  %cmp.i79 = icmp slt i32 %dec.i76, 1
  br i1 %cmp.i79, label %if.then.i80, label %amdgpu_ring_write.exit77.amdgpu_ring_write.exit90_crit_edge

amdgpu_ring_write.exit77.amdgpu_ring_write.exit90_crit_edge: ; preds = %amdgpu_ring_write.exit77
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit90

if.then.i80:                                      ; preds = %amdgpu_ring_write.exit77
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit90

amdgpu_ring_write.exit90:                         ; preds = %if.then.i80, %amdgpu_ring_write.exit77.amdgpu_ring_write.exit90_crit_edge
  %42 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring1.i, align 4
  %44 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %wptr.i, align 8
  %inc.i83 = add i64 %45, 1
  store i64 %inc.i83, ptr %wptr.i, align 8
  %46 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf_mask.i, align 8
  %48 = trunc i64 %45 to i32
  %idxprom.i85 = and i32 %47, %48
  %arrayidx.i86 = getelementptr i32, ptr %43, i32 %idxprom.i85
  %49 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %or, ptr %arrayidx.i86, align 4
  %50 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ptr_mask.i, align 8
  %52 = load i64, ptr %wptr.i, align 8
  %and3.i88 = and i64 %52, %51
  store i64 %and3.i88, ptr %wptr.i, align 8
  %53 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count_dw.i, align 8
  %dec.i89 = add i32 %54, -1
  store i32 %dec.i89, ptr %count_dw.i, align 8
  %sub = add i64 %seq, -1
  %conv10 = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i89)
  %cmp.i92 = icmp slt i32 %dec.i89, 1
  br i1 %cmp.i92, label %if.then.i93, label %amdgpu_ring_write.exit90.amdgpu_ring_write.exit103_crit_edge

amdgpu_ring_write.exit90.amdgpu_ring_write.exit103_crit_edge: ; preds = %amdgpu_ring_write.exit90
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit103

if.then.i93:                                      ; preds = %amdgpu_ring_write.exit90
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit103

amdgpu_ring_write.exit103:                        ; preds = %if.then.i93, %amdgpu_ring_write.exit90.amdgpu_ring_write.exit103_crit_edge
  %55 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring1.i, align 4
  %57 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %wptr.i, align 8
  %inc.i96 = add i64 %58, 1
  store i64 %inc.i96, ptr %wptr.i, align 8
  %59 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf_mask.i, align 8
  %61 = trunc i64 %58 to i32
  %idxprom.i98 = and i32 %60, %61
  %arrayidx.i99 = getelementptr i32, ptr %56, i32 %idxprom.i98
  %62 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %conv10, ptr %arrayidx.i99, align 4
  %63 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %ptr_mask.i, align 8
  %65 = load i64, ptr %wptr.i, align 8
  %and3.i101 = and i64 %65, %64
  store i64 %and3.i101, ptr %wptr.i, align 8
  %66 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count_dw.i, align 8
  %dec.i102 = add i32 %67, -1
  store i32 %dec.i102, ptr %count_dw.i, align 8
  %shr12 = lshr i64 %sub, 32
  %conv14 = trunc i64 %shr12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i102)
  %cmp.i105 = icmp slt i32 %dec.i102, 1
  br i1 %cmp.i105, label %if.then.i106, label %amdgpu_ring_write.exit103.amdgpu_ring_write.exit116_crit_edge

amdgpu_ring_write.exit103.amdgpu_ring_write.exit116_crit_edge: ; preds = %amdgpu_ring_write.exit103
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit116

if.then.i106:                                     ; preds = %amdgpu_ring_write.exit103
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit116

amdgpu_ring_write.exit116:                        ; preds = %if.then.i106, %amdgpu_ring_write.exit103.amdgpu_ring_write.exit116_crit_edge
  %68 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ring1.i, align 4
  %70 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %wptr.i, align 8
  %inc.i109 = add i64 %71, 1
  store i64 %inc.i109, ptr %wptr.i, align 8
  %72 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buf_mask.i, align 8
  %74 = trunc i64 %71 to i32
  %idxprom.i111 = and i32 %73, %74
  %arrayidx.i112 = getelementptr i32, ptr %69, i32 %idxprom.i111
  %75 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %conv14, ptr %arrayidx.i112, align 4
  %76 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %ptr_mask.i, align 8
  %78 = load i64, ptr %wptr.i, align 8
  %and3.i114 = and i64 %78, %77
  store i64 %and3.i114, ptr %wptr.i, align 8
  %79 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count_dw.i, align 8
  %dec.i115 = add i32 %80, -1
  store i32 %dec.i115, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i115)
  %cmp.i118 = icmp slt i32 %dec.i115, 1
  br i1 %cmp.i118, label %if.then.i119, label %amdgpu_ring_write.exit116.amdgpu_ring_write.exit129_crit_edge

amdgpu_ring_write.exit116.amdgpu_ring_write.exit129_crit_edge: ; preds = %amdgpu_ring_write.exit116
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit129

if.then.i119:                                     ; preds = %amdgpu_ring_write.exit116
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit129

amdgpu_ring_write.exit129:                        ; preds = %if.then.i119, %amdgpu_ring_write.exit116.amdgpu_ring_write.exit129_crit_edge
  %81 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ring1.i, align 4
  %83 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %wptr.i, align 8
  %inc.i122 = add i64 %84, 1
  store i64 %inc.i122, ptr %wptr.i, align 8
  %85 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf_mask.i, align 8
  %87 = trunc i64 %84 to i32
  %idxprom.i124 = and i32 %86, %87
  %arrayidx.i125 = getelementptr i32, ptr %82, i32 %idxprom.i124
  %88 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 -1073461504, ptr %arrayidx.i125, align 4
  %89 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ptr_mask.i, align 8
  %91 = load i64, ptr %wptr.i, align 8
  %and3.i127 = and i64 %91, %90
  store i64 %and3.i127, ptr %wptr.i, align 8
  %92 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %count_dw.i, align 8
  %dec.i128 = add i32 %93, -1
  store i32 %dec.i128, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i128)
  %cmp.i131 = icmp slt i32 %dec.i128, 1
  br i1 %cmp.i131, label %if.then.i132, label %amdgpu_ring_write.exit129.amdgpu_ring_write.exit142_crit_edge

amdgpu_ring_write.exit129.amdgpu_ring_write.exit142_crit_edge: ; preds = %amdgpu_ring_write.exit129
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit142

if.then.i132:                                     ; preds = %amdgpu_ring_write.exit129
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit142

amdgpu_ring_write.exit142:                        ; preds = %if.then.i132, %amdgpu_ring_write.exit129.amdgpu_ring_write.exit142_crit_edge
  %94 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ring1.i, align 4
  %96 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %wptr.i, align 8
  %inc.i135 = add i64 %97, 1
  store i64 %inc.i135, ptr %wptr.i, align 8
  %98 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %buf_mask.i, align 8
  %100 = trunc i64 %97 to i32
  %idxprom.i137 = and i32 %99, %100
  %arrayidx.i138 = getelementptr i32, ptr %95, i32 %idxprom.i137
  %101 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 197908, ptr %arrayidx.i138, align 4
  %102 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %ptr_mask.i, align 8
  %104 = load i64, ptr %wptr.i, align 8
  %and3.i140 = and i64 %104, %103
  store i64 %and3.i140, ptr %wptr.i, align 8
  %105 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %count_dw.i, align 8
  %dec.i141 = add i32 %106, -1
  store i32 %dec.i141, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i141)
  %cmp.i144 = icmp slt i32 %dec.i141, 1
  br i1 %cmp.i144, label %if.then.i145, label %amdgpu_ring_write.exit142.amdgpu_ring_write.exit155_crit_edge

amdgpu_ring_write.exit142.amdgpu_ring_write.exit155_crit_edge: ; preds = %amdgpu_ring_write.exit142
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit155

if.then.i145:                                     ; preds = %amdgpu_ring_write.exit142
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit155

amdgpu_ring_write.exit155:                        ; preds = %if.then.i145, %amdgpu_ring_write.exit142.amdgpu_ring_write.exit155_crit_edge
  %107 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ring1.i, align 4
  %109 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %wptr.i, align 8
  %inc.i148 = add i64 %110, 1
  store i64 %inc.i148, ptr %wptr.i, align 8
  %111 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %buf_mask.i, align 8
  %113 = trunc i64 %110 to i32
  %idxprom.i150 = and i32 %112, %113
  %arrayidx.i151 = getelementptr i32, ptr %108, i32 %idxprom.i150
  %114 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %conv, ptr %arrayidx.i151, align 4
  %115 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %ptr_mask.i, align 8
  %117 = load i64, ptr %wptr.i, align 8
  %and3.i153 = and i64 %117, %116
  store i64 %and3.i153, ptr %wptr.i, align 8
  %118 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count_dw.i, align 8
  %dec.i154 = add i32 %119, -1
  store i32 %dec.i154, ptr %count_dw.i, align 8
  %cond = select i1 %tobool.not, i32 536870912, i32 1073741824
  %and1 = shl i32 %flags, 24
  %shl27 = and i32 %and1, 33554432
  %or23 = or i32 %shl27, %and7
  %or28 = or i32 %or23, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i154)
  %cmp.i157 = icmp slt i32 %dec.i154, 1
  br i1 %cmp.i157, label %if.then.i158, label %amdgpu_ring_write.exit155.amdgpu_ring_write.exit168_crit_edge

amdgpu_ring_write.exit155.amdgpu_ring_write.exit168_crit_edge: ; preds = %amdgpu_ring_write.exit155
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit168

if.then.i158:                                     ; preds = %amdgpu_ring_write.exit155
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit168

amdgpu_ring_write.exit168:                        ; preds = %if.then.i158, %amdgpu_ring_write.exit155.amdgpu_ring_write.exit168_crit_edge
  %120 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ring1.i, align 4
  %122 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %wptr.i, align 8
  %inc.i161 = add i64 %123, 1
  store i64 %inc.i161, ptr %wptr.i, align 8
  %124 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %buf_mask.i, align 8
  %126 = trunc i64 %123 to i32
  %idxprom.i163 = and i32 %125, %126
  %arrayidx.i164 = getelementptr i32, ptr %121, i32 %idxprom.i163
  %127 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 %or28, ptr %arrayidx.i164, align 4
  %128 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %ptr_mask.i, align 8
  %130 = load i64, ptr %wptr.i, align 8
  %and3.i166 = and i64 %130, %129
  store i64 %and3.i166, ptr %wptr.i, align 8
  %131 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %count_dw.i, align 8
  %dec.i167 = add i32 %132, -1
  store i32 %dec.i167, ptr %count_dw.i, align 8
  %conv30 = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i167)
  %cmp.i170 = icmp slt i32 %dec.i167, 1
  br i1 %cmp.i170, label %if.then.i171, label %amdgpu_ring_write.exit168.amdgpu_ring_write.exit181_crit_edge

amdgpu_ring_write.exit168.amdgpu_ring_write.exit181_crit_edge: ; preds = %amdgpu_ring_write.exit168
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit181

if.then.i171:                                     ; preds = %amdgpu_ring_write.exit168
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit181

amdgpu_ring_write.exit181:                        ; preds = %if.then.i171, %amdgpu_ring_write.exit168.amdgpu_ring_write.exit181_crit_edge
  %133 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ring1.i, align 4
  %135 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %wptr.i, align 8
  %inc.i174 = add i64 %136, 1
  store i64 %inc.i174, ptr %wptr.i, align 8
  %137 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %buf_mask.i, align 8
  %139 = trunc i64 %136 to i32
  %idxprom.i176 = and i32 %138, %139
  %arrayidx.i177 = getelementptr i32, ptr %134, i32 %idxprom.i176
  %140 = ptrtoint ptr %arrayidx.i177 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 %conv30, ptr %arrayidx.i177, align 4
  %141 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %ptr_mask.i, align 8
  %143 = load i64, ptr %wptr.i, align 8
  %and3.i179 = and i64 %143, %142
  store i64 %and3.i179, ptr %wptr.i, align 8
  %144 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %count_dw.i, align 8
  %dec.i180 = add i32 %145, -1
  store i32 %dec.i180, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i180)
  %cmp.i183 = icmp slt i32 %dec.i180, 1
  br i1 %cmp.i183, label %if.then.i184, label %amdgpu_ring_write.exit181.amdgpu_ring_write.exit194_crit_edge

amdgpu_ring_write.exit181.amdgpu_ring_write.exit194_crit_edge: ; preds = %amdgpu_ring_write.exit181
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit194

if.then.i184:                                     ; preds = %amdgpu_ring_write.exit181
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit194

amdgpu_ring_write.exit194:                        ; preds = %if.then.i184, %amdgpu_ring_write.exit181.amdgpu_ring_write.exit194_crit_edge
  %shr31 = lshr i64 %seq, 32
  %conv33 = trunc i64 %shr31 to i32
  %146 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ring1.i, align 4
  %148 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %wptr.i, align 8
  %inc.i187 = add i64 %149, 1
  store i64 %inc.i187, ptr %wptr.i, align 8
  %150 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %buf_mask.i, align 8
  %152 = trunc i64 %149 to i32
  %idxprom.i189 = and i32 %151, %152
  %arrayidx.i190 = getelementptr i32, ptr %147, i32 %idxprom.i189
  %153 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 %conv33, ptr %arrayidx.i190, align 4
  %154 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %ptr_mask.i, align 8
  %156 = load i64, ptr %wptr.i, align 8
  %and3.i192 = and i64 %156, %155
  store i64 %and3.i192, ptr %wptr.i, align 8
  %157 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %count_dw.i, align 8
  %dec.i193 = add i32 %158, -1
  store i32 %dec.i193, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_ring_emit_pipeline_sync(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit33

if.then.i23:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit46

if.then.i36:                                      ; preds = %amdgpu_ring_write.exit33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit59

if.then.i49:                                      ; preds = %amdgpu_ring_write.exit46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit72

if.then.i62:                                      ; preds = %amdgpu_ring_write.exit59
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit85

if.then.i75:                                      ; preds = %amdgpu_ring_write.exit72
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit98

if.then.i88:                                      ; preds = %amdgpu_ring_write.exit85
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %amdgpu_ring_write.exit98
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i97)
  %cmp.i100 = icmp slt i32 %dec.i97, 1
  br i1 %cmp.i100, label %if.then.i101, label %if.then.amdgpu_ring_write.exit111_crit_edge

if.then.amdgpu_ring_write.exit111_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit111

if.then.i101:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit124

if.then.i114:                                     ; preds = %amdgpu_ring_write.exit111
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit137

if.then.i127:                                     ; preds = %amdgpu_ring_write.exit124
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit150

if.then.i140:                                     ; preds = %amdgpu_ring_write.exit137
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
define internal void @gfx_v7_0_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %call = tail call i64 %9(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #12
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit28

if.then.i18:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit41

if.then.i31:                                      ; preds = %amdgpu_ring_write.exit28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit54

if.then.i44:                                      ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit93

if.then.i83:                                      ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i92)
  %cmp.i95 = icmp slt i32 %dec.i92, 1
  br i1 %cmp.i95, label %if.then.i96, label %if.then.amdgpu_ring_write.exit106_crit_edge

if.then.amdgpu_ring_write.exit106_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit106

if.then.i96:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit119

if.then.i109:                                     ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit132

if.then.i122:                                     ; preds = %amdgpu_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit145

if.then.i135:                                     ; preds = %amdgpu_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit158

if.then.i148:                                     ; preds = %amdgpu_ring_write.exit145
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit171

if.then.i161:                                     ; preds = %amdgpu_ring_write.exit158
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
define internal void @gfx_v7_0_ring_emit_hdp_flush(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %4 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %me, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %5, label %if.then.cleanup_crit_edge [
    i32 1, label %if.then.if.end.sink.split_crit_edge
    i32 2, label %sw.bb4
  ]

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb4, %if.then.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 64, %sw.bb4 ], [ 4, %if.then.if.end.sink.split_crit_edge ]
  %pipe = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 17
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pipe, align 4
  %shl = shl i32 %.sink, %8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %entry.if.end_crit_edge
  %shl7 = phi i32 [ 323, %entry.if.end_crit_edge ], [ 67, %if.end.sink.split ]
  %ref_and_mask.0 = phi i32 [ 1, %entry.if.end_crit_edge ], [ %shl, %if.end.sink.split ]
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %9 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp slt i32 %10, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %11 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %13 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %14, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %15 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_mask.i, align 8
  %17 = trunc i64 %14 to i32
  %idxprom.i = and i32 %16, %17
  %arrayidx.i = getelementptr i32, ptr %12, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 -1073398784, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %19 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ptr_mask.i, align 8
  %21 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %21, %20
  store i64 %and3.i, ptr %wptr.i, align 8
  %22 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i22 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i22, label %if.then.i23, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit33_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit33_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit33

if.then.i23:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit33

amdgpu_ring_write.exit33:                         ; preds = %if.then.i23, %amdgpu_ring_write.exit.amdgpu_ring_write.exit33_crit_edge
  %24 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ring1.i, align 4
  %26 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %wptr.i, align 8
  %inc.i26 = add i64 %27, 1
  store i64 %inc.i26, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_mask.i, align 8
  %30 = trunc i64 %27 to i32
  %idxprom.i28 = and i32 %29, %30
  %arrayidx.i29 = getelementptr i32, ptr %25, i32 %idxprom.i28
  %31 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %shl7, ptr %arrayidx.i29, align 4
  %32 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ptr_mask.i, align 8
  %34 = load i64, ptr %wptr.i, align 8
  %and3.i31 = and i64 %34, %33
  store i64 %and3.i31, ptr %wptr.i, align 8
  %35 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count_dw.i, align 8
  %dec.i32 = add i32 %36, -1
  store i32 %dec.i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i32)
  %cmp.i35 = icmp slt i32 %dec.i32, 1
  br i1 %cmp.i35, label %if.then.i36, label %amdgpu_ring_write.exit33.amdgpu_ring_write.exit46_crit_edge

amdgpu_ring_write.exit33.amdgpu_ring_write.exit46_crit_edge: ; preds = %amdgpu_ring_write.exit33
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit46

if.then.i36:                                      ; preds = %amdgpu_ring_write.exit33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  store volatile i32 5431, ptr %arrayidx.i42, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i45)
  %cmp.i48 = icmp slt i32 %dec.i45, 1
  br i1 %cmp.i48, label %if.then.i49, label %amdgpu_ring_write.exit46.amdgpu_ring_write.exit59_crit_edge

amdgpu_ring_write.exit46.amdgpu_ring_write.exit59_crit_edge: ; preds = %amdgpu_ring_write.exit46
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit59

if.then.i49:                                      ; preds = %amdgpu_ring_write.exit46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  store volatile i32 5432, ptr %arrayidx.i55, align 4
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit72

if.then.i62:                                      ; preds = %amdgpu_ring_write.exit59
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  store volatile i32 %ref_and_mask.0, ptr %arrayidx.i68, align 4
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit85

if.then.i75:                                      ; preds = %amdgpu_ring_write.exit72
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  store volatile i32 %ref_and_mask.0, ptr %arrayidx.i81, align 4
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit98

if.then.i88:                                      ; preds = %amdgpu_ring_write.exit85
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  store volatile i32 32, ptr %arrayidx.i94, align 4
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
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_ring_write.exit98, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_ring_emit_gds_switch(ptr noundef %ring, i32 noundef %vmid, i32 noundef %gds_base, i32 noundef %gds_size, i32 noundef %gws_base, i32 noundef %gws_size, i32 noundef %oa_base, i32 noundef %oa_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  store volatile i32 -1073531136, ptr %arrayidx.i, align 4
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
  %cmp.i30 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i30, label %if.then.i31, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit41

if.then.i31:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  store volatile i32 0, ptr %arrayidx.i37, align 4
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
  %arrayidx = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %vmid
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i40)
  %cmp.i43 = icmp slt i32 %dec.i40, 1
  br i1 %cmp.i43, label %if.then.i44, label %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge

amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge: ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit54

if.then.i44:                                      ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit54

amdgpu_ring_write.exit54:                         ; preds = %if.then.i44, %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 4
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wptr.i, align 8
  %inc.i47 = add i64 %33, 1
  store i64 %inc.i47, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_mask.i, align 8
  %36 = trunc i64 %33 to i32
  %idxprom.i49 = and i32 %35, %36
  %arrayidx.i50 = getelementptr i32, ptr %31, i32 %idxprom.i49
  %37 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %29, ptr %arrayidx.i50, align 4
  %38 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ptr_mask.i, align 8
  %40 = load i64, ptr %wptr.i, align 8
  %and3.i52 = and i64 %40, %39
  store i64 %and3.i52, ptr %wptr.i, align 8
  %41 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_dw.i, align 8
  %dec.i53 = add i32 %42, -1
  store i32 %dec.i53, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i53)
  %cmp.i56 = icmp slt i32 %dec.i53, 1
  br i1 %cmp.i56, label %if.then.i57, label %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge

amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge: ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit67

amdgpu_ring_write.exit67:                         ; preds = %if.then.i57, %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge
  %43 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring1.i, align 4
  %45 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wptr.i, align 8
  %inc.i60 = add i64 %46, 1
  store i64 %inc.i60, ptr %wptr.i, align 8
  %47 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_mask.i, align 8
  %49 = trunc i64 %46 to i32
  %idxprom.i62 = and i32 %48, %49
  %arrayidx.i63 = getelementptr i32, ptr %44, i32 %idxprom.i62
  %50 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %arrayidx.i63, align 4
  %51 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ptr_mask.i, align 8
  %53 = load i64, ptr %wptr.i, align 8
  %and3.i65 = and i64 %53, %52
  store i64 %and3.i65, ptr %wptr.i, align 8
  %54 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count_dw.i, align 8
  %dec.i66 = add i32 %55, -1
  store i32 %dec.i66, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i66)
  %cmp.i69 = icmp slt i32 %dec.i66, 1
  br i1 %cmp.i69, label %if.then.i70, label %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge

amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge: ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit80

amdgpu_ring_write.exit80:                         ; preds = %if.then.i70, %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge
  %56 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring1.i, align 4
  %58 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %wptr.i, align 8
  %inc.i73 = add i64 %59, 1
  store i64 %inc.i73, ptr %wptr.i, align 8
  %60 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_mask.i, align 8
  %62 = trunc i64 %59 to i32
  %idxprom.i75 = and i32 %61, %62
  %arrayidx.i76 = getelementptr i32, ptr %57, i32 %idxprom.i75
  %63 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %gds_base, ptr %arrayidx.i76, align 4
  %64 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ptr_mask.i, align 8
  %66 = load i64, ptr %wptr.i, align 8
  %and3.i78 = and i64 %66, %65
  store i64 %and3.i78, ptr %wptr.i, align 8
  %67 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count_dw.i, align 8
  %dec.i79 = add i32 %68, -1
  store i32 %dec.i79, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i79)
  %cmp.i82 = icmp slt i32 %dec.i79, 1
  br i1 %cmp.i82, label %if.then.i83, label %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge

amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge: ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit93

if.then.i83:                                      ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit93

amdgpu_ring_write.exit93:                         ; preds = %if.then.i83, %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge
  %69 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring1.i, align 4
  %71 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %wptr.i, align 8
  %inc.i86 = add i64 %72, 1
  store i64 %inc.i86, ptr %wptr.i, align 8
  %73 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buf_mask.i, align 8
  %75 = trunc i64 %72 to i32
  %idxprom.i88 = and i32 %74, %75
  %arrayidx.i89 = getelementptr i32, ptr %70, i32 %idxprom.i88
  %76 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 -1073531136, ptr %arrayidx.i89, align 4
  %77 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ptr_mask.i, align 8
  %79 = load i64, ptr %wptr.i, align 8
  %and3.i91 = and i64 %79, %78
  store i64 %and3.i91, ptr %wptr.i, align 8
  %80 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count_dw.i, align 8
  %dec.i92 = add i32 %81, -1
  store i32 %dec.i92, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i92)
  %cmp.i95 = icmp slt i32 %dec.i92, 1
  br i1 %cmp.i95, label %if.then.i96, label %amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge

amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge: ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit106

if.then.i96:                                      ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit106

amdgpu_ring_write.exit106:                        ; preds = %if.then.i96, %amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge
  %82 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ring1.i, align 4
  %84 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %wptr.i, align 8
  %inc.i99 = add i64 %85, 1
  store i64 %inc.i99, ptr %wptr.i, align 8
  %86 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %buf_mask.i, align 8
  %88 = trunc i64 %85 to i32
  %idxprom.i101 = and i32 %87, %88
  %arrayidx.i102 = getelementptr i32, ptr %83, i32 %idxprom.i101
  %89 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 0, ptr %arrayidx.i102, align 4
  %90 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %ptr_mask.i, align 8
  %92 = load i64, ptr %wptr.i, align 8
  %and3.i104 = and i64 %92, %91
  store i64 %and3.i104, ptr %wptr.i, align 8
  %93 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %count_dw.i, align 8
  %dec.i105 = add i32 %94, -1
  store i32 %dec.i105, ptr %count_dw.i, align 8
  %mem_size = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %vmid, i32 1
  %95 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i105)
  %cmp.i108 = icmp slt i32 %dec.i105, 1
  br i1 %cmp.i108, label %if.then.i109, label %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge

amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge: ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit119

if.then.i109:                                     ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit119

amdgpu_ring_write.exit119:                        ; preds = %if.then.i109, %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge
  %97 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ring1.i, align 4
  %99 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %wptr.i, align 8
  %inc.i112 = add i64 %100, 1
  store i64 %inc.i112, ptr %wptr.i, align 8
  %101 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %buf_mask.i, align 8
  %103 = trunc i64 %100 to i32
  %idxprom.i114 = and i32 %102, %103
  %arrayidx.i115 = getelementptr i32, ptr %98, i32 %idxprom.i114
  %104 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 %96, ptr %arrayidx.i115, align 4
  %105 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %ptr_mask.i, align 8
  %107 = load i64, ptr %wptr.i, align 8
  %and3.i117 = and i64 %107, %106
  store i64 %and3.i117, ptr %wptr.i, align 8
  %108 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count_dw.i, align 8
  %dec.i118 = add i32 %109, -1
  store i32 %dec.i118, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i118)
  %cmp.i121 = icmp slt i32 %dec.i118, 1
  br i1 %cmp.i121, label %if.then.i122, label %amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge

amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge: ; preds = %amdgpu_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit132

if.then.i122:                                     ; preds = %amdgpu_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit132

amdgpu_ring_write.exit132:                        ; preds = %if.then.i122, %amdgpu_ring_write.exit119.amdgpu_ring_write.exit132_crit_edge
  %110 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ring1.i, align 4
  %112 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %wptr.i, align 8
  %inc.i125 = add i64 %113, 1
  store i64 %inc.i125, ptr %wptr.i, align 8
  %114 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %buf_mask.i, align 8
  %116 = trunc i64 %113 to i32
  %idxprom.i127 = and i32 %115, %116
  %arrayidx.i128 = getelementptr i32, ptr %111, i32 %idxprom.i127
  %117 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 0, ptr %arrayidx.i128, align 4
  %118 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %ptr_mask.i, align 8
  %120 = load i64, ptr %wptr.i, align 8
  %and3.i130 = and i64 %120, %119
  store i64 %and3.i130, ptr %wptr.i, align 8
  %121 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %count_dw.i, align 8
  %dec.i131 = add i32 %122, -1
  store i32 %dec.i131, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i131)
  %cmp.i134 = icmp slt i32 %dec.i131, 1
  br i1 %cmp.i134, label %if.then.i135, label %amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge

amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge: ; preds = %amdgpu_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit145

if.then.i135:                                     ; preds = %amdgpu_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit145

amdgpu_ring_write.exit145:                        ; preds = %if.then.i135, %amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge
  %123 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ring1.i, align 4
  %125 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %wptr.i, align 8
  %inc.i138 = add i64 %126, 1
  store i64 %inc.i138, ptr %wptr.i, align 8
  %127 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %buf_mask.i, align 8
  %129 = trunc i64 %126 to i32
  %idxprom.i140 = and i32 %128, %129
  %arrayidx.i141 = getelementptr i32, ptr %124, i32 %idxprom.i140
  %130 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile i32 %gds_size, ptr %arrayidx.i141, align 4
  %131 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %ptr_mask.i, align 8
  %133 = load i64, ptr %wptr.i, align 8
  %and3.i143 = and i64 %133, %132
  store i64 %and3.i143, ptr %wptr.i, align 8
  %134 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %count_dw.i, align 8
  %dec.i144 = add i32 %135, -1
  store i32 %dec.i144, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i144)
  %cmp.i147 = icmp slt i32 %dec.i144, 1
  br i1 %cmp.i147, label %if.then.i148, label %amdgpu_ring_write.exit145.amdgpu_ring_write.exit158_crit_edge

amdgpu_ring_write.exit145.amdgpu_ring_write.exit158_crit_edge: ; preds = %amdgpu_ring_write.exit145
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit158

if.then.i148:                                     ; preds = %amdgpu_ring_write.exit145
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit158

amdgpu_ring_write.exit158:                        ; preds = %if.then.i148, %amdgpu_ring_write.exit145.amdgpu_ring_write.exit158_crit_edge
  %136 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ring1.i, align 4
  %138 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %wptr.i, align 8
  %inc.i151 = add i64 %139, 1
  store i64 %inc.i151, ptr %wptr.i, align 8
  %140 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %buf_mask.i, align 8
  %142 = trunc i64 %139 to i32
  %idxprom.i153 = and i32 %141, %142
  %arrayidx.i154 = getelementptr i32, ptr %137, i32 %idxprom.i153
  %143 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile i32 -1073531136, ptr %arrayidx.i154, align 4
  %144 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %ptr_mask.i, align 8
  %146 = load i64, ptr %wptr.i, align 8
  %and3.i156 = and i64 %146, %145
  store i64 %and3.i156, ptr %wptr.i, align 8
  %147 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %count_dw.i, align 8
  %dec.i157 = add i32 %148, -1
  store i32 %dec.i157, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i157)
  %cmp.i160 = icmp slt i32 %dec.i157, 1
  br i1 %cmp.i160, label %if.then.i161, label %amdgpu_ring_write.exit158.amdgpu_ring_write.exit171_crit_edge

amdgpu_ring_write.exit158.amdgpu_ring_write.exit171_crit_edge: ; preds = %amdgpu_ring_write.exit158
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit171

if.then.i161:                                     ; preds = %amdgpu_ring_write.exit158
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit171

amdgpu_ring_write.exit171:                        ; preds = %if.then.i161, %amdgpu_ring_write.exit158.amdgpu_ring_write.exit171_crit_edge
  %149 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ring1.i, align 4
  %151 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %wptr.i, align 8
  %inc.i164 = add i64 %152, 1
  store i64 %inc.i164, ptr %wptr.i, align 8
  %153 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %buf_mask.i, align 8
  %155 = trunc i64 %152 to i32
  %idxprom.i166 = and i32 %154, %155
  %arrayidx.i167 = getelementptr i32, ptr %150, i32 %idxprom.i166
  %156 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile i32 0, ptr %arrayidx.i167, align 4
  %157 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %ptr_mask.i, align 8
  %159 = load i64, ptr %wptr.i, align 8
  %and3.i169 = and i64 %159, %158
  store i64 %and3.i169, ptr %wptr.i, align 8
  %160 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %count_dw.i, align 8
  %dec.i170 = add i32 %161, -1
  store i32 %dec.i170, ptr %count_dw.i, align 8
  %gws = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %vmid, i32 2
  %162 = ptrtoint ptr %gws to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %gws, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i170)
  %cmp.i173 = icmp slt i32 %dec.i170, 1
  br i1 %cmp.i173, label %if.then.i174, label %amdgpu_ring_write.exit171.amdgpu_ring_write.exit184_crit_edge

amdgpu_ring_write.exit171.amdgpu_ring_write.exit184_crit_edge: ; preds = %amdgpu_ring_write.exit171
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit184

if.then.i174:                                     ; preds = %amdgpu_ring_write.exit171
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit184

amdgpu_ring_write.exit184:                        ; preds = %if.then.i174, %amdgpu_ring_write.exit171.amdgpu_ring_write.exit184_crit_edge
  %164 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ring1.i, align 4
  %166 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %wptr.i, align 8
  %inc.i177 = add i64 %167, 1
  store i64 %inc.i177, ptr %wptr.i, align 8
  %168 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %buf_mask.i, align 8
  %170 = trunc i64 %167 to i32
  %idxprom.i179 = and i32 %169, %170
  %arrayidx.i180 = getelementptr i32, ptr %165, i32 %idxprom.i179
  %171 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile i32 %163, ptr %arrayidx.i180, align 4
  %172 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %ptr_mask.i, align 8
  %174 = load i64, ptr %wptr.i, align 8
  %and3.i182 = and i64 %174, %173
  store i64 %and3.i182, ptr %wptr.i, align 8
  %175 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %count_dw.i, align 8
  %dec.i183 = add i32 %176, -1
  store i32 %dec.i183, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i183)
  %cmp.i186 = icmp slt i32 %dec.i183, 1
  br i1 %cmp.i186, label %if.then.i187, label %amdgpu_ring_write.exit184.amdgpu_ring_write.exit197_crit_edge

amdgpu_ring_write.exit184.amdgpu_ring_write.exit197_crit_edge: ; preds = %amdgpu_ring_write.exit184
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit197

if.then.i187:                                     ; preds = %amdgpu_ring_write.exit184
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit197

amdgpu_ring_write.exit197:                        ; preds = %if.then.i187, %amdgpu_ring_write.exit184.amdgpu_ring_write.exit197_crit_edge
  %177 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ring1.i, align 4
  %179 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %wptr.i, align 8
  %inc.i190 = add i64 %180, 1
  store i64 %inc.i190, ptr %wptr.i, align 8
  %181 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %buf_mask.i, align 8
  %183 = trunc i64 %180 to i32
  %idxprom.i192 = and i32 %182, %183
  %arrayidx.i193 = getelementptr i32, ptr %178, i32 %idxprom.i192
  %184 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile i32 0, ptr %arrayidx.i193, align 4
  %185 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %ptr_mask.i, align 8
  %187 = load i64, ptr %wptr.i, align 8
  %and3.i195 = and i64 %187, %186
  store i64 %and3.i195, ptr %wptr.i, align 8
  %188 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %count_dw.i, align 8
  %dec.i196 = add i32 %189, -1
  store i32 %dec.i196, ptr %count_dw.i, align 8
  %shl = shl i32 %gws_size, 16
  %or = or i32 %shl, %gws_base
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i196)
  %cmp.i199 = icmp slt i32 %dec.i196, 1
  br i1 %cmp.i199, label %if.then.i200, label %amdgpu_ring_write.exit197.amdgpu_ring_write.exit210_crit_edge

amdgpu_ring_write.exit197.amdgpu_ring_write.exit210_crit_edge: ; preds = %amdgpu_ring_write.exit197
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit210

if.then.i200:                                     ; preds = %amdgpu_ring_write.exit197
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit210

amdgpu_ring_write.exit210:                        ; preds = %if.then.i200, %amdgpu_ring_write.exit197.amdgpu_ring_write.exit210_crit_edge
  %190 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ring1.i, align 4
  %192 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %wptr.i, align 8
  %inc.i203 = add i64 %193, 1
  store i64 %inc.i203, ptr %wptr.i, align 8
  %194 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %buf_mask.i, align 8
  %196 = trunc i64 %193 to i32
  %idxprom.i205 = and i32 %195, %196
  %arrayidx.i206 = getelementptr i32, ptr %191, i32 %idxprom.i205
  %197 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile i32 %or, ptr %arrayidx.i206, align 4
  %198 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %ptr_mask.i, align 8
  %200 = load i64, ptr %wptr.i, align 8
  %and3.i208 = and i64 %200, %199
  store i64 %and3.i208, ptr %wptr.i, align 8
  %201 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %count_dw.i, align 8
  %dec.i209 = add i32 %202, -1
  store i32 %dec.i209, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i209)
  %cmp.i212 = icmp slt i32 %dec.i209, 1
  br i1 %cmp.i212, label %if.then.i213, label %amdgpu_ring_write.exit210.amdgpu_ring_write.exit223_crit_edge

amdgpu_ring_write.exit210.amdgpu_ring_write.exit223_crit_edge: ; preds = %amdgpu_ring_write.exit210
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit223

if.then.i213:                                     ; preds = %amdgpu_ring_write.exit210
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit223

amdgpu_ring_write.exit223:                        ; preds = %if.then.i213, %amdgpu_ring_write.exit210.amdgpu_ring_write.exit223_crit_edge
  %203 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ring1.i, align 4
  %205 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %wptr.i, align 8
  %inc.i216 = add i64 %206, 1
  store i64 %inc.i216, ptr %wptr.i, align 8
  %207 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %buf_mask.i, align 8
  %209 = trunc i64 %206 to i32
  %idxprom.i218 = and i32 %208, %209
  %arrayidx.i219 = getelementptr i32, ptr %204, i32 %idxprom.i218
  %210 = ptrtoint ptr %arrayidx.i219 to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile i32 -1073531136, ptr %arrayidx.i219, align 4
  %211 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %ptr_mask.i, align 8
  %213 = load i64, ptr %wptr.i, align 8
  %and3.i221 = and i64 %213, %212
  store i64 %and3.i221, ptr %wptr.i, align 8
  %214 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %count_dw.i, align 8
  %dec.i222 = add i32 %215, -1
  store i32 %dec.i222, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i222)
  %cmp.i225 = icmp slt i32 %dec.i222, 1
  br i1 %cmp.i225, label %if.then.i226, label %amdgpu_ring_write.exit223.amdgpu_ring_write.exit236_crit_edge

amdgpu_ring_write.exit223.amdgpu_ring_write.exit236_crit_edge: ; preds = %amdgpu_ring_write.exit223
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit236

if.then.i226:                                     ; preds = %amdgpu_ring_write.exit223
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit236

amdgpu_ring_write.exit236:                        ; preds = %if.then.i226, %amdgpu_ring_write.exit223.amdgpu_ring_write.exit236_crit_edge
  %216 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ring1.i, align 4
  %218 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %wptr.i, align 8
  %inc.i229 = add i64 %219, 1
  store i64 %inc.i229, ptr %wptr.i, align 8
  %220 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %buf_mask.i, align 8
  %222 = trunc i64 %219 to i32
  %idxprom.i231 = and i32 %221, %222
  %arrayidx.i232 = getelementptr i32, ptr %217, i32 %idxprom.i231
  %223 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile i32 0, ptr %arrayidx.i232, align 4
  %224 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %ptr_mask.i, align 8
  %226 = load i64, ptr %wptr.i, align 8
  %and3.i234 = and i64 %226, %225
  store i64 %and3.i234, ptr %wptr.i, align 8
  %227 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %count_dw.i, align 8
  %dec.i235 = add i32 %228, -1
  store i32 %dec.i235, ptr %count_dw.i, align 8
  %oa = getelementptr [16 x %struct.amdgpu_gds_reg_offset], ptr @amdgpu_gds_reg_offset, i32 0, i32 %vmid, i32 3
  %229 = ptrtoint ptr %oa to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %oa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i235)
  %cmp.i238 = icmp slt i32 %dec.i235, 1
  br i1 %cmp.i238, label %if.then.i239, label %amdgpu_ring_write.exit236.amdgpu_ring_write.exit249_crit_edge

amdgpu_ring_write.exit236.amdgpu_ring_write.exit249_crit_edge: ; preds = %amdgpu_ring_write.exit236
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit249

if.then.i239:                                     ; preds = %amdgpu_ring_write.exit236
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit249

amdgpu_ring_write.exit249:                        ; preds = %if.then.i239, %amdgpu_ring_write.exit236.amdgpu_ring_write.exit249_crit_edge
  %231 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ring1.i, align 4
  %233 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %wptr.i, align 8
  %inc.i242 = add i64 %234, 1
  store i64 %inc.i242, ptr %wptr.i, align 8
  %235 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %buf_mask.i, align 8
  %237 = trunc i64 %234 to i32
  %idxprom.i244 = and i32 %236, %237
  %arrayidx.i245 = getelementptr i32, ptr %232, i32 %idxprom.i244
  %238 = ptrtoint ptr %arrayidx.i245 to i32
  call void @__asan_store4_noabort(i32 %238)
  store volatile i32 %230, ptr %arrayidx.i245, align 4
  %239 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %ptr_mask.i, align 8
  %241 = load i64, ptr %wptr.i, align 8
  %and3.i247 = and i64 %241, %240
  store i64 %and3.i247, ptr %wptr.i, align 8
  %242 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %count_dw.i, align 8
  %dec.i248 = add i32 %243, -1
  store i32 %dec.i248, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i248)
  %cmp.i251 = icmp slt i32 %dec.i248, 1
  br i1 %cmp.i251, label %if.then.i252, label %amdgpu_ring_write.exit249.amdgpu_ring_write.exit262_crit_edge

amdgpu_ring_write.exit249.amdgpu_ring_write.exit262_crit_edge: ; preds = %amdgpu_ring_write.exit249
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit262

if.then.i252:                                     ; preds = %amdgpu_ring_write.exit249
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit262

amdgpu_ring_write.exit262:                        ; preds = %if.then.i252, %amdgpu_ring_write.exit249.amdgpu_ring_write.exit262_crit_edge
  %244 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ring1.i, align 4
  %246 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %wptr.i, align 8
  %inc.i255 = add i64 %247, 1
  store i64 %inc.i255, ptr %wptr.i, align 8
  %248 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %buf_mask.i, align 8
  %250 = trunc i64 %247 to i32
  %idxprom.i257 = and i32 %249, %250
  %arrayidx.i258 = getelementptr i32, ptr %245, i32 %idxprom.i257
  %251 = ptrtoint ptr %arrayidx.i258 to i32
  call void @__asan_store4_noabort(i32 %251)
  store volatile i32 0, ptr %arrayidx.i258, align 4
  %252 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %ptr_mask.i, align 8
  %254 = load i64, ptr %wptr.i, align 8
  %and3.i260 = and i64 %254, %253
  store i64 %and3.i260, ptr %wptr.i, align 8
  %255 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %count_dw.i, align 8
  %dec.i261 = add i32 %256, -1
  store i32 %dec.i261, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i261)
  %cmp.i264 = icmp slt i32 %dec.i261, 1
  br i1 %cmp.i264, label %if.then.i265, label %amdgpu_ring_write.exit262.amdgpu_ring_write.exit275_crit_edge

amdgpu_ring_write.exit262.amdgpu_ring_write.exit275_crit_edge: ; preds = %amdgpu_ring_write.exit262
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit275

if.then.i265:                                     ; preds = %amdgpu_ring_write.exit262
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit275

amdgpu_ring_write.exit275:                        ; preds = %if.then.i265, %amdgpu_ring_write.exit262.amdgpu_ring_write.exit275_crit_edge
  %shl5.neg = shl nsw i32 -1, %oa_base
  %add = add i32 %oa_size, %oa_base
  %shl4 = shl nuw i32 1, %add
  %sub = add i32 %shl4, %shl5.neg
  %257 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ring1.i, align 4
  %259 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %wptr.i, align 8
  %inc.i268 = add i64 %260, 1
  store i64 %inc.i268, ptr %wptr.i, align 8
  %261 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %buf_mask.i, align 8
  %263 = trunc i64 %260 to i32
  %idxprom.i270 = and i32 %262, %263
  %arrayidx.i271 = getelementptr i32, ptr %258, i32 %idxprom.i270
  %264 = ptrtoint ptr %arrayidx.i271 to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile i32 %sub, ptr %arrayidx.i271, align 4
  %265 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %ptr_mask.i, align 8
  %267 = load i64, ptr %wptr.i, align 8
  %and3.i273 = and i64 %267, %266
  store i64 %and3.i273, ptr %wptr.i, align 8
  %268 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %count_dw.i, align 8
  %dec.i274 = add i32 %269, -1
  store i32 %dec.i274, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_ring_test_ring(ptr noundef %ring) #0 align 64 {
entry:
  %scratch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch) #12
  %2 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %scratch, align 4, !annotation !191
  %call = call i32 @amdgpu_gfx_scratch_get(ptr noundef %1, ptr noundef nonnull %scratch) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scratch, align 4
  call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %4, i32 noundef -889266515, i32 noundef 0) #12
  %call2 = call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.error_free_scratch_crit_edge

if.end.error_free_scratch_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  store volatile i32 -1073645312, ptr %arrayidx.i, align 4
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
  %sub = add i32 %21, -49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i34 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i34, label %if.then.i35, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit45_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit45_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit45

if.then.i35:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit58

if.then.i48:                                      ; preds = %amdgpu_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @amdgpu_ring_commit(ptr noundef %ring) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %amdgpu_ring_write.exit58.for.body_crit_edge
  %i.060 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %amdgpu_ring_write.exit58.for.body_crit_edge ]
  %50 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scratch, align 4
  %call6 = call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %51, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %call6)
  %cmp7 = icmp eq i32 %call6, -559038737
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %if.end9

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end9:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748) #12
  %inc = add nuw i32 %i.060, 1
  %53 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %54
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @amdgpu_gfx_scratch_free(ptr noundef %1, i32 noundef %58) #12
  br label %cleanup

cleanup:                                          ; preds = %error_free_scratch, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %error_free_scratch ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) #0 align 64 {
entry:
  %ib = alloca %struct.amdgpu_ib, align 8
  %f = alloca ptr, align 4
  %scratch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ib) #12
  %2 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %3 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #12
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %f, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scratch) #12
  %5 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %scratch, align 4, !annotation !191
  %call = call i32 @amdgpu_gfx_scratch_get(ptr noundef %1, ptr noundef nonnull %scratch) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scratch, align 4
  call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %7, i32 noundef -889266515, i32 noundef 0) #12
  %8 = call ptr @memset(ptr %ib, i32 0, i32 24)
  %call2 = call i32 @amdgpu_ib_get(ptr noundef %1, ptr noundef null, i32 noundef 256, i32 noundef 2, ptr noundef nonnull %ib) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err1_crit_edge

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1073645312, ptr %10, align 4
  %12 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scratch, align 4
  %sub = add i32 %13, -49152
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
  %call10 = call i32 @amdgpu_ib_schedule(ptr noundef %ring, i32 noundef 1, ptr noundef nonnull %ib, ptr noundef null, ptr noundef nonnull %f) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end5.err2_crit_edge

if.end5.err2_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.end13:                                         ; preds = %if.end5
  %19 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f, align 4
  %call14 = call i32 @dma_fence_wait_timeout(ptr noundef %20, i1 noundef zeroext false, i32 noundef %timeout) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp eq i32 %call14, 0
  br i1 %cmp, label %if.end13.err2_crit_edge, label %if.else

if.end13.err2_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp16 = icmp slt i32 %call14, 0
  br i1 %cmp16, label %if.else.err2_crit_edge, label %if.end19

if.else.err2_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scratch, align 4
  %call20 = call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %22, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %call20)
  %cmp21 = icmp eq i32 %call20, -559038737
  %. = select i1 %cmp21, i32 0, i32 -22
  br label %err2

err2:                                             ; preds = %if.end19, %if.else.err2_crit_edge, %if.end13.err2_crit_edge, %if.end5.err2_crit_edge
  %r.0 = phi i32 [ %call10, %if.end5.err2_crit_edge ], [ %call14, %if.else.err2_crit_edge ], [ -110, %if.end13.err2_crit_edge ], [ %., %if.end19 ]
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef nonnull %ib, ptr noundef null) #12
  %23 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %err2.err1_crit_edge, label %if.then.i

err2.err1_crit_edge:                              ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.then.i:                                        ; preds = %err2
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %24, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !193
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !194
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.err1_crit_edge, label %if.then10.i.i.i.i.i, !prof !195

if.end5.i.i.i.i.i.err1_crit_edge:                 ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %err1

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !196
  call void @dma_fence_release(ptr noundef %refcount.i) #12
  br label %err1

err1:                                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.err1_crit_edge, %err2.err1_crit_edge, %if.end.err1_crit_edge
  %r.1 = phi i32 [ %call2, %if.end.err1_crit_edge ], [ %r.0, %err2.err1_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.err1_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i ], [ %r.0, %if.then.i.i ]
  %26 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scratch, align 4
  call void @amdgpu_gfx_scratch_free(ptr noundef %1, i32 noundef %27) #12
  br label %cleanup

cleanup:                                          ; preds = %err1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %err1 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scratch) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_insert_nop(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_generic_pad_ib(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_ring_emit_cntxcntl(ptr nocapture noundef %ring, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  %cmp.i5.i = icmp slt i32 %dec.i.i, 1
  br i1 %cmp.i5.i, label %if.then.i6.i, label %amdgpu_ring_write.exit.i.amdgpu_ring_write.exit16.i_crit_edge

amdgpu_ring_write.exit.i.amdgpu_ring_write.exit16.i_crit_edge: ; preds = %amdgpu_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit16.i

if.then.i6.i:                                     ; preds = %amdgpu_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit16.i

amdgpu_ring_write.exit16.i:                       ; preds = %if.then.i6.i, %amdgpu_ring_write.exit.i.amdgpu_ring_write.exit16.i_crit_edge
  %15 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i.i, align 4
  %17 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i.i, align 8
  %inc.i9.i = add i64 %18, 1
  store i64 %inc.i9.i, ptr %wptr.i.i, align 8
  %19 = ptrtoint ptr %buf_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i11.i = and i32 %20, %21
  %arrayidx.i12.i = getelementptr i32, ptr %16, i32 %idxprom.i11.i
  %22 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1039, ptr %arrayidx.i12.i, align 4
  %23 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i.i, align 8
  %25 = load i64, ptr %wptr.i.i, align 8
  %and3.i14.i = and i64 %25, %24
  store i64 %and3.i14.i, ptr %wptr.i.i, align 8
  %26 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i.i, align 8
  %dec.i15.i = add i32 %27, -1
  store i32 %dec.i15.i, ptr %count_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i15.i)
  %cmp.i18.i = icmp slt i32 %dec.i15.i, 1
  br i1 %cmp.i18.i, label %if.then.i19.i, label %amdgpu_ring_write.exit16.i.amdgpu_ring_write.exit29.i_crit_edge

amdgpu_ring_write.exit16.i.amdgpu_ring_write.exit29.i_crit_edge: ; preds = %amdgpu_ring_write.exit16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit29.i

if.then.i19.i:                                    ; preds = %amdgpu_ring_write.exit16.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit29.i

amdgpu_ring_write.exit29.i:                       ; preds = %if.then.i19.i, %amdgpu_ring_write.exit16.i.amdgpu_ring_write.exit29.i_crit_edge
  %28 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i.i, align 4
  %30 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i.i, align 8
  %inc.i22.i = add i64 %31, 1
  store i64 %inc.i22.i, ptr %wptr.i.i, align 8
  %32 = ptrtoint ptr %buf_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i24.i = and i32 %33, %34
  %arrayidx.i25.i = getelementptr i32, ptr %29, i32 %idxprom.i24.i
  %35 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 -1073723904, ptr %arrayidx.i25.i, align 4
  %36 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i.i, align 8
  %38 = load i64, ptr %wptr.i.i, align 8
  %and3.i27.i = and i64 %38, %37
  store i64 %and3.i27.i, ptr %wptr.i.i, align 8
  %39 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i.i, align 8
  %dec.i28.i = add i32 %40, -1
  store i32 %dec.i28.i, ptr %count_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i28.i)
  %cmp.i31.i = icmp slt i32 %dec.i28.i, 1
  br i1 %cmp.i31.i, label %if.then.i32.i, label %amdgpu_ring_write.exit29.i.gfx_v7_0_ring_emit_vgt_flush.exit_crit_edge

amdgpu_ring_write.exit29.i.gfx_v7_0_ring_emit_vgt_flush.exit_crit_edge: ; preds = %amdgpu_ring_write.exit29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_ring_emit_vgt_flush.exit

if.then.i32.i:                                    ; preds = %amdgpu_ring_write.exit29.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %gfx_v7_0_ring_emit_vgt_flush.exit

gfx_v7_0_ring_emit_vgt_flush.exit:                ; preds = %if.then.i32.i, %amdgpu_ring_write.exit29.i.gfx_v7_0_ring_emit_vgt_flush.exit_crit_edge
  %41 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i.i, align 4
  %43 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i.i, align 8
  %inc.i35.i = add i64 %44, 1
  store i64 %inc.i35.i, ptr %wptr.i.i, align 8
  %45 = ptrtoint ptr %buf_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i37.i = and i32 %46, %47
  %arrayidx.i38.i = getelementptr i32, ptr %42, i32 %idxprom.i37.i
  %48 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 36, ptr %arrayidx.i38.i, align 4
  %49 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i.i, align 8
  %51 = load i64, ptr %wptr.i.i, align 8
  %and3.i40.i = and i64 %51, %50
  store i64 %and3.i40.i, ptr %wptr.i.i, align 8
  %52 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i.i, align 8
  %dec.i41.i = add i32 %53, -1
  store i32 %dec.i41.i, ptr %count_dw.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %gfx_v7_0_ring_emit_vgt_flush.exit, %entry.if.end_crit_edge
  %dw2.0 = phi i32 [ -2130608125, %gfx_v7_0_ring_emit_vgt_flush.exit ], [ -2147483648, %entry.if.end_crit_edge ]
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %54 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i = icmp slt i32 %55, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %56 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %58 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %59, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %60 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_mask.i, align 8
  %62 = trunc i64 %59 to i32
  %idxprom.i = and i32 %61, %62
  %arrayidx.i = getelementptr i32, ptr %57, i32 %idxprom.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 -1073666048, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %64 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ptr_mask.i, align 8
  %66 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %66, %65
  store i64 %and3.i, ptr %wptr.i, align 8
  %67 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %68, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i12 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i12, label %if.then.i13, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit23_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit23_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit23

if.then.i13:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit23

amdgpu_ring_write.exit23:                         ; preds = %if.then.i13, %amdgpu_ring_write.exit.amdgpu_ring_write.exit23_crit_edge
  %69 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring1.i, align 4
  %71 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %wptr.i, align 8
  %inc.i16 = add i64 %72, 1
  store i64 %inc.i16, ptr %wptr.i, align 8
  %73 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buf_mask.i, align 8
  %75 = trunc i64 %72 to i32
  %idxprom.i18 = and i32 %74, %75
  %arrayidx.i19 = getelementptr i32, ptr %70, i32 %idxprom.i18
  %76 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %dw2.0, ptr %arrayidx.i19, align 4
  %77 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ptr_mask.i, align 8
  %79 = load i64, ptr %wptr.i, align 8
  %and3.i21 = and i64 %79, %78
  store i64 %and3.i21, ptr %wptr.i, align 8
  %80 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count_dw.i, align 8
  %dec.i22 = add i32 %81, -1
  store i32 %dec.i22, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i22)
  %cmp.i25 = icmp slt i32 %dec.i22, 1
  br i1 %cmp.i25, label %if.then.i26, label %amdgpu_ring_write.exit23.amdgpu_ring_write.exit36_crit_edge

amdgpu_ring_write.exit23.amdgpu_ring_write.exit36_crit_edge: ; preds = %amdgpu_ring_write.exit23
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit36

if.then.i26:                                      ; preds = %amdgpu_ring_write.exit23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit36

amdgpu_ring_write.exit36:                         ; preds = %if.then.i26, %amdgpu_ring_write.exit23.amdgpu_ring_write.exit36_crit_edge
  %82 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ring1.i, align 4
  %84 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %wptr.i, align 8
  %inc.i29 = add i64 %85, 1
  store i64 %inc.i29, ptr %wptr.i, align 8
  %86 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %buf_mask.i, align 8
  %88 = trunc i64 %85 to i32
  %idxprom.i31 = and i32 %87, %88
  %arrayidx.i32 = getelementptr i32, ptr %83, i32 %idxprom.i31
  %89 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 0, ptr %arrayidx.i32, align 4
  %90 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %ptr_mask.i, align 8
  %92 = load i64, ptr %wptr.i, align 8
  %and3.i34 = and i64 %92, %91
  store i64 %and3.i34, ptr %wptr.i, align 8
  %93 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %count_dw.i, align 8
  %dec.i35 = add i32 %94, -1
  store i32 %dec.i35, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_ring_emit_wreg(ptr noundef %ring, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit18

if.then.i8:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit31

if.then.i21:                                      ; preds = %amdgpu_ring_write.exit18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit44

if.then.i34:                                      ; preds = %amdgpu_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit57

if.then.i47:                                      ; preds = %amdgpu_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
define internal void @gfx_v7_0_ring_soft_recovery(ptr nocapture noundef readonly %ring, i32 noundef %vmid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %shl = shl i32 %vmid, 28
  %or8 = or i32 %shl, 147
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 9083, i32 noundef %or8, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_emit_mem_sync(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit17

if.then.i7:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit30

if.then.i20:                                      ; preds = %amdgpu_ring_write.exit17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit43

if.then.i33:                                      ; preds = %amdgpu_ring_write.exit30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit56

if.then.i46:                                      ; preds = %amdgpu_ring_write.exit43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gfx_scratch_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_scratch_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_schedule(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ib_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @gfx_v7_0_ring_get_wptr_compute(ptr nocapture noundef readonly %ring) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %wb1 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %2 = ptrtoint ptr %wb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wb1, align 4
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %4 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  %conv = zext i32 %7 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_ring_set_wptr_compute(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %3 to i32
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
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %conv, ptr %arrayidx, align 4
  %doorbell_index = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 23
  %9 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %doorbell_index, align 8
  %11 = load i64, ptr %wptr, align 8
  %conv5 = trunc i64 %11 to i32
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %1, i32 noundef %10, i32 noundef %conv5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_ring_emit_ib_compute(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vmid1 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %0 = ptrtoint ptr %vmid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vmid1, align 8
  %phi.bo = shl i32 %1, 24
  %phi.bo100 = or i32 %phi.bo, 8388608
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo100, %cond.true ], [ 8388608, %entry.cond.end_crit_edge ]
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %2 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_dw, align 4
  %flags3 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 4
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags3, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.then.amdgpu_ring_write.exit_crit_edge

if.then.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.then.amdgpu_ring_write.exit_crit_edge
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
  store volatile i32 -1073649664, ptr %arrayidx.i, align 4
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
  %cmp.i23 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i23, label %if.then.i24, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit34_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit34_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit34

if.then.i24:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit34

amdgpu_ring_write.exit34:                         ; preds = %if.then.i24, %amdgpu_ring_write.exit.amdgpu_ring_write.exit34_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 4
  %23 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wptr.i, align 8
  %inc.i27 = add i64 %24, 1
  store i64 %inc.i27, ptr %wptr.i, align 8
  %25 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_mask.i, align 8
  %27 = trunc i64 %24 to i32
  %idxprom.i29 = and i32 %26, %27
  %arrayidx.i30 = getelementptr i32, ptr %22, i32 %idxprom.i29
  %28 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 4936, ptr %arrayidx.i30, align 4
  %29 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr_mask.i, align 8
  %31 = load i64, ptr %wptr.i, align 8
  %and3.i32 = and i64 %31, %30
  store i64 %and3.i32, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i, align 8
  %dec.i33 = add i32 %33, -1
  store i32 %dec.i33, ptr %count_dw.i, align 8
  %34 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring, align 8
  %gds_compute_max_wave_id = getelementptr inbounds %struct.amdgpu_device, ptr %35, i32 0, i32 114, i32 3
  %36 = ptrtoint ptr %gds_compute_max_wave_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gds_compute_max_wave_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i33)
  %cmp.i36 = icmp slt i32 %dec.i33, 1
  br i1 %cmp.i36, label %if.then.i37, label %amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge

amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge: ; preds = %amdgpu_ring_write.exit34
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit47

if.then.i37:                                      ; preds = %amdgpu_ring_write.exit34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit47

amdgpu_ring_write.exit47:                         ; preds = %if.then.i37, %amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge
  %38 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring1.i, align 4
  %40 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %wptr.i, align 8
  %inc.i40 = add i64 %41, 1
  store i64 %inc.i40, ptr %wptr.i, align 8
  %42 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_mask.i, align 8
  %44 = trunc i64 %41 to i32
  %idxprom.i42 = and i32 %43, %44
  %arrayidx.i43 = getelementptr i32, ptr %39, i32 %idxprom.i42
  %45 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %37, ptr %arrayidx.i43, align 4
  %46 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ptr_mask.i, align 8
  %48 = load i64, ptr %wptr.i, align 8
  %and3.i45 = and i64 %48, %47
  store i64 %and3.i45, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count_dw.i, align 8
  %dec.i46 = add i32 %50, -1
  store i32 %dec.i46, ptr %count_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %amdgpu_ring_write.exit47, %cond.end.if.end_crit_edge
  %count_dw.i48 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %51 = ptrtoint ptr %count_dw.i48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count_dw.i48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i49 = icmp slt i32 %52, 1
  br i1 %cmp.i49, label %if.then.i50, label %if.end.amdgpu_ring_write.exit60_crit_edge

if.end.amdgpu_ring_write.exit60_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit60

if.then.i50:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit60

amdgpu_ring_write.exit60:                         ; preds = %if.then.i50, %if.end.amdgpu_ring_write.exit60_crit_edge
  %ring1.i51 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %53 = ptrtoint ptr %ring1.i51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring1.i51, align 4
  %wptr.i52 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %55 = ptrtoint ptr %wptr.i52 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %wptr.i52, align 8
  %inc.i53 = add i64 %56, 1
  store i64 %inc.i53, ptr %wptr.i52, align 8
  %buf_mask.i54 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %57 = ptrtoint ptr %buf_mask.i54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_mask.i54, align 8
  %59 = trunc i64 %56 to i32
  %idxprom.i55 = and i32 %58, %59
  %arrayidx.i56 = getelementptr i32, ptr %54, i32 %idxprom.i55
  %60 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 -1073594624, ptr %arrayidx.i56, align 4
  %ptr_mask.i57 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %61 = ptrtoint ptr %ptr_mask.i57 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ptr_mask.i57, align 8
  %63 = load i64, ptr %wptr.i52, align 8
  %and3.i58 = and i64 %63, %62
  store i64 %and3.i58, ptr %wptr.i52, align 8
  %64 = ptrtoint ptr %count_dw.i48 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count_dw.i48, align 8
  %dec.i59 = add i32 %65, -1
  store i32 %dec.i59, ptr %count_dw.i48, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %66 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %gpu_addr, align 8
  %68 = trunc i64 %67 to i32
  %69 = and i32 %68, -4
  %conv = or i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i59)
  %cmp.i62 = icmp slt i32 %dec.i59, 1
  br i1 %cmp.i62, label %if.then.i63, label %amdgpu_ring_write.exit60.amdgpu_ring_write.exit73_crit_edge

amdgpu_ring_write.exit60.amdgpu_ring_write.exit73_crit_edge: ; preds = %amdgpu_ring_write.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit73

if.then.i63:                                      ; preds = %amdgpu_ring_write.exit60
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit73

amdgpu_ring_write.exit73:                         ; preds = %if.then.i63, %amdgpu_ring_write.exit60.amdgpu_ring_write.exit73_crit_edge
  %70 = ptrtoint ptr %ring1.i51 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ring1.i51, align 4
  %72 = ptrtoint ptr %wptr.i52 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %wptr.i52, align 8
  %inc.i66 = add i64 %73, 1
  store i64 %inc.i66, ptr %wptr.i52, align 8
  %74 = ptrtoint ptr %buf_mask.i54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buf_mask.i54, align 8
  %76 = trunc i64 %73 to i32
  %idxprom.i68 = and i32 %75, %76
  %arrayidx.i69 = getelementptr i32, ptr %71, i32 %idxprom.i68
  %77 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 %conv, ptr %arrayidx.i69, align 4
  %78 = ptrtoint ptr %ptr_mask.i57 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ptr_mask.i57, align 8
  %80 = load i64, ptr %wptr.i52, align 8
  %and3.i71 = and i64 %80, %79
  store i64 %and3.i71, ptr %wptr.i52, align 8
  %81 = ptrtoint ptr %count_dw.i48 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count_dw.i48, align 8
  %dec.i72 = add i32 %82, -1
  store i32 %dec.i72, ptr %count_dw.i48, align 8
  %83 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %84, 32
  %conv9 = trunc i64 %shr to i32
  %and10 = and i32 %conv9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i72)
  %cmp.i75 = icmp slt i32 %dec.i72, 1
  br i1 %cmp.i75, label %if.then.i76, label %amdgpu_ring_write.exit73.amdgpu_ring_write.exit86_crit_edge

amdgpu_ring_write.exit73.amdgpu_ring_write.exit86_crit_edge: ; preds = %amdgpu_ring_write.exit73
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit86

if.then.i76:                                      ; preds = %amdgpu_ring_write.exit73
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit86

amdgpu_ring_write.exit86:                         ; preds = %if.then.i76, %amdgpu_ring_write.exit73.amdgpu_ring_write.exit86_crit_edge
  %85 = ptrtoint ptr %ring1.i51 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ring1.i51, align 4
  %87 = ptrtoint ptr %wptr.i52 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %wptr.i52, align 8
  %inc.i79 = add i64 %88, 1
  store i64 %inc.i79, ptr %wptr.i52, align 8
  %89 = ptrtoint ptr %buf_mask.i54 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %buf_mask.i54, align 8
  %91 = trunc i64 %88 to i32
  %idxprom.i81 = and i32 %90, %91
  %arrayidx.i82 = getelementptr i32, ptr %86, i32 %idxprom.i81
  %92 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 %and10, ptr %arrayidx.i82, align 4
  %93 = ptrtoint ptr %ptr_mask.i57 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %ptr_mask.i57, align 8
  %95 = load i64, ptr %wptr.i52, align 8
  %and3.i84 = and i64 %95, %94
  store i64 %and3.i84, ptr %wptr.i52, align 8
  %96 = ptrtoint ptr %count_dw.i48 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %count_dw.i48, align 8
  %dec.i85 = add i32 %97, -1
  store i32 %dec.i85, ptr %count_dw.i48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i85)
  %cmp.i88 = icmp slt i32 %dec.i85, 1
  br i1 %cmp.i88, label %if.then.i89, label %amdgpu_ring_write.exit86.amdgpu_ring_write.exit99_crit_edge

amdgpu_ring_write.exit86.amdgpu_ring_write.exit99_crit_edge: ; preds = %amdgpu_ring_write.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit99

if.then.i89:                                      ; preds = %amdgpu_ring_write.exit86
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit99

amdgpu_ring_write.exit99:                         ; preds = %if.then.i89, %amdgpu_ring_write.exit86.amdgpu_ring_write.exit99_crit_edge
  %or2 = or i32 %cond, %3
  %98 = ptrtoint ptr %ring1.i51 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ring1.i51, align 4
  %100 = ptrtoint ptr %wptr.i52 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %wptr.i52, align 8
  %inc.i92 = add i64 %101, 1
  store i64 %inc.i92, ptr %wptr.i52, align 8
  %102 = ptrtoint ptr %buf_mask.i54 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %buf_mask.i54, align 8
  %104 = trunc i64 %101 to i32
  %idxprom.i94 = and i32 %103, %104
  %arrayidx.i95 = getelementptr i32, ptr %99, i32 %idxprom.i94
  %105 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 %or2, ptr %arrayidx.i95, align 4
  %106 = ptrtoint ptr %ptr_mask.i57 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %ptr_mask.i57, align 8
  %108 = load i64, ptr %wptr.i52, align 8
  %and3.i97 = and i64 %108, %107
  store i64 %and3.i97, ptr %wptr.i52, align 8
  %109 = ptrtoint ptr %count_dw.i48 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %count_dw.i48, align 8
  %dec.i98 = add i32 %110, -1
  store i32 %dec.i98, ptr %count_dw.i48, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_ring_emit_fence_compute(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  store volatile i32 -1073395456, ptr %arrayidx.i, align 4
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
  %cmp.i26 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i26, label %if.then.i27, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit37_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit37_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit37

if.then.i27:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit37

amdgpu_ring_write.exit37:                         ; preds = %if.then.i27, %amdgpu_ring_write.exit.amdgpu_ring_write.exit37_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i30 = add i64 %18, 1
  store i64 %inc.i30, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i32 = and i32 %20, %21
  %arrayidx.i33 = getelementptr i32, ptr %16, i32 %idxprom.i32
  %22 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 197908, ptr %arrayidx.i33, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i35 = and i64 %25, %24
  store i64 %and3.i35, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i36 = add i32 %27, -1
  store i32 %dec.i36, ptr %count_dw.i, align 8
  %cond = select i1 %tobool.not, i32 536870912, i32 1073741824
  %and1 = shl i32 %flags, 24
  %shl7 = and i32 %and1, 33554432
  %or = or i32 %cond, %shl7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i36)
  %cmp.i39 = icmp slt i32 %dec.i36, 1
  br i1 %cmp.i39, label %if.then.i40, label %amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge

amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge: ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit50

if.then.i40:                                      ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit50

amdgpu_ring_write.exit50:                         ; preds = %if.then.i40, %amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i43 = add i64 %31, 1
  store i64 %inc.i43, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i45 = and i32 %33, %34
  %arrayidx.i46 = getelementptr i32, ptr %29, i32 %idxprom.i45
  %35 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %or, ptr %arrayidx.i46, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i48 = and i64 %38, %37
  store i64 %and3.i48, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i49 = add i32 %40, -1
  store i32 %dec.i49, ptr %count_dw.i, align 8
  %41 = trunc i64 %addr to i32
  %conv = and i32 %41, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i49)
  %cmp.i52 = icmp slt i32 %dec.i49, 1
  br i1 %cmp.i52, label %if.then.i53, label %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge

amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge: ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit63

if.then.i53:                                      ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit63

amdgpu_ring_write.exit63:                         ; preds = %if.then.i53, %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge
  %42 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring1.i, align 4
  %44 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %wptr.i, align 8
  %inc.i56 = add i64 %45, 1
  store i64 %inc.i56, ptr %wptr.i, align 8
  %46 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf_mask.i, align 8
  %48 = trunc i64 %45 to i32
  %idxprom.i58 = and i32 %47, %48
  %arrayidx.i59 = getelementptr i32, ptr %43, i32 %idxprom.i58
  %49 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %conv, ptr %arrayidx.i59, align 4
  %50 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ptr_mask.i, align 8
  %52 = load i64, ptr %wptr.i, align 8
  %and3.i61 = and i64 %52, %51
  store i64 %and3.i61, ptr %wptr.i, align 8
  %53 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count_dw.i, align 8
  %dec.i62 = add i32 %54, -1
  store i32 %dec.i62, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv10 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i62)
  %cmp.i65 = icmp slt i32 %dec.i62, 1
  br i1 %cmp.i65, label %if.then.i66, label %amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge

amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge: ; preds = %amdgpu_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit76

if.then.i66:                                      ; preds = %amdgpu_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit76

amdgpu_ring_write.exit76:                         ; preds = %if.then.i66, %amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge
  %55 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring1.i, align 4
  %57 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %wptr.i, align 8
  %inc.i69 = add i64 %58, 1
  store i64 %inc.i69, ptr %wptr.i, align 8
  %59 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf_mask.i, align 8
  %61 = trunc i64 %58 to i32
  %idxprom.i71 = and i32 %60, %61
  %arrayidx.i72 = getelementptr i32, ptr %56, i32 %idxprom.i71
  %62 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %conv10, ptr %arrayidx.i72, align 4
  %63 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %ptr_mask.i, align 8
  %65 = load i64, ptr %wptr.i, align 8
  %and3.i74 = and i64 %65, %64
  store i64 %and3.i74, ptr %wptr.i, align 8
  %66 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count_dw.i, align 8
  %dec.i75 = add i32 %67, -1
  store i32 %dec.i75, ptr %count_dw.i, align 8
  %conv12 = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i75)
  %cmp.i78 = icmp slt i32 %dec.i75, 1
  br i1 %cmp.i78, label %if.then.i79, label %amdgpu_ring_write.exit76.amdgpu_ring_write.exit89_crit_edge

amdgpu_ring_write.exit76.amdgpu_ring_write.exit89_crit_edge: ; preds = %amdgpu_ring_write.exit76
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit89

if.then.i79:                                      ; preds = %amdgpu_ring_write.exit76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit89

amdgpu_ring_write.exit89:                         ; preds = %if.then.i79, %amdgpu_ring_write.exit76.amdgpu_ring_write.exit89_crit_edge
  %68 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ring1.i, align 4
  %70 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %wptr.i, align 8
  %inc.i82 = add i64 %71, 1
  store i64 %inc.i82, ptr %wptr.i, align 8
  %72 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buf_mask.i, align 8
  %74 = trunc i64 %71 to i32
  %idxprom.i84 = and i32 %73, %74
  %arrayidx.i85 = getelementptr i32, ptr %69, i32 %idxprom.i84
  %75 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %conv12, ptr %arrayidx.i85, align 4
  %76 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %ptr_mask.i, align 8
  %78 = load i64, ptr %wptr.i, align 8
  %and3.i87 = and i64 %78, %77
  store i64 %and3.i87, ptr %wptr.i, align 8
  %79 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count_dw.i, align 8
  %dec.i88 = add i32 %80, -1
  store i32 %dec.i88, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i88)
  %cmp.i91 = icmp slt i32 %dec.i88, 1
  br i1 %cmp.i91, label %if.then.i92, label %amdgpu_ring_write.exit89.amdgpu_ring_write.exit102_crit_edge

amdgpu_ring_write.exit89.amdgpu_ring_write.exit102_crit_edge: ; preds = %amdgpu_ring_write.exit89
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit102

if.then.i92:                                      ; preds = %amdgpu_ring_write.exit89
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit102

amdgpu_ring_write.exit102:                        ; preds = %if.then.i92, %amdgpu_ring_write.exit89.amdgpu_ring_write.exit102_crit_edge
  %shr13 = lshr i64 %seq, 32
  %conv15 = trunc i64 %shr13 to i32
  %81 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ring1.i, align 4
  %83 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %wptr.i, align 8
  %inc.i95 = add i64 %84, 1
  store i64 %inc.i95, ptr %wptr.i, align 8
  %85 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf_mask.i, align 8
  %87 = trunc i64 %84 to i32
  %idxprom.i97 = and i32 %86, %87
  %arrayidx.i98 = getelementptr i32, ptr %82, i32 %idxprom.i97
  %88 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 %conv15, ptr %arrayidx.i98, align 4
  %89 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ptr_mask.i, align 8
  %91 = load i64, ptr %wptr.i, align 8
  %and3.i100 = and i64 %91, %90
  store i64 %and3.i100, ptr %wptr.i, align 8
  %92 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %count_dw.i, align 8
  %dec.i101 = add i32 %93, -1
  store i32 %dec.i101, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfx_v7_0_emit_mem_sync_compute(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
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
  store volatile i32 -1073391616, ptr %arrayidx.i, align 4
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
  %cmp.i8 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i8, label %if.then.i9, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit19_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit19_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit19

if.then.i9:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit19

amdgpu_ring_write.exit19:                         ; preds = %if.then.i9, %amdgpu_ring_write.exit.amdgpu_ring_write.exit19_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i12 = add i64 %18, 1
  store i64 %inc.i12, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i14 = and i32 %20, %21
  %arrayidx.i15 = getelementptr i32, ptr %16, i32 %idxprom.i14
  %22 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 683671552, ptr %arrayidx.i15, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i17 = and i64 %25, %24
  store i64 %and3.i17, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i18 = add i32 %27, -1
  store i32 %dec.i18, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i18)
  %cmp.i21 = icmp slt i32 %dec.i18, 1
  br i1 %cmp.i21, label %if.then.i22, label %amdgpu_ring_write.exit19.amdgpu_ring_write.exit32_crit_edge

amdgpu_ring_write.exit19.amdgpu_ring_write.exit32_crit_edge: ; preds = %amdgpu_ring_write.exit19
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit32

if.then.i22:                                      ; preds = %amdgpu_ring_write.exit19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit32

amdgpu_ring_write.exit32:                         ; preds = %if.then.i22, %amdgpu_ring_write.exit19.amdgpu_ring_write.exit32_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i25 = add i64 %31, 1
  store i64 %inc.i25, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i27 = and i32 %33, %34
  %arrayidx.i28 = getelementptr i32, ptr %29, i32 %idxprom.i27
  %35 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 -1, ptr %arrayidx.i28, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i30 = and i64 %38, %37
  store i64 %and3.i30, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i31 = add i32 %40, -1
  store i32 %dec.i31, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i31)
  %cmp.i34 = icmp slt i32 %dec.i31, 1
  br i1 %cmp.i34, label %if.then.i35, label %amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge

amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge: ; preds = %amdgpu_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit45

if.then.i35:                                      ; preds = %amdgpu_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit45

amdgpu_ring_write.exit45:                         ; preds = %if.then.i35, %amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i38 = add i64 %44, 1
  store i64 %inc.i38, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i40 = and i32 %46, %47
  %arrayidx.i41 = getelementptr i32, ptr %42, i32 %idxprom.i40
  %48 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 255, ptr %arrayidx.i41, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i43 = and i64 %51, %50
  store i64 %and3.i43, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i44 = add i32 %53, -1
  store i32 %dec.i44, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i44)
  %cmp.i47 = icmp slt i32 %dec.i44, 1
  br i1 %cmp.i47, label %if.then.i48, label %amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge

amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge: ; preds = %amdgpu_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit58

if.then.i48:                                      ; preds = %amdgpu_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit58

amdgpu_ring_write.exit58:                         ; preds = %if.then.i48, %amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i51 = add i64 %57, 1
  store i64 %inc.i51, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i53 = and i32 %59, %60
  %arrayidx.i54 = getelementptr i32, ptr %55, i32 %idxprom.i53
  %61 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %arrayidx.i54, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i56 = and i64 %64, %63
  store i64 %and3.i56, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i57 = add i32 %66, -1
  store i32 %dec.i57, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i57)
  %cmp.i60 = icmp slt i32 %dec.i57, 1
  br i1 %cmp.i60, label %if.then.i61, label %amdgpu_ring_write.exit58.amdgpu_ring_write.exit71_crit_edge

amdgpu_ring_write.exit58.amdgpu_ring_write.exit71_crit_edge: ; preds = %amdgpu_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit71

if.then.i61:                                      ; preds = %amdgpu_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit71

amdgpu_ring_write.exit71:                         ; preds = %if.then.i61, %amdgpu_ring_write.exit58.amdgpu_ring_write.exit71_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i64 = add i64 %70, 1
  store i64 %inc.i64, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i66 = and i32 %72, %73
  %arrayidx.i67 = getelementptr i32, ptr %68, i32 %idxprom.i66
  %74 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 0, ptr %arrayidx.i67, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i69 = and i64 %77, %76
  store i64 %and3.i69, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i70 = add i32 %79, -1
  store i32 %dec.i70, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i70)
  %cmp.i73 = icmp slt i32 %dec.i70, 1
  br i1 %cmp.i73, label %if.then.i74, label %amdgpu_ring_write.exit71.amdgpu_ring_write.exit84_crit_edge

amdgpu_ring_write.exit71.amdgpu_ring_write.exit84_crit_edge: ; preds = %amdgpu_ring_write.exit71
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit84

if.then.i74:                                      ; preds = %amdgpu_ring_write.exit71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %amdgpu_ring_write.exit84

amdgpu_ring_write.exit84:                         ; preds = %if.then.i74, %amdgpu_ring_write.exit71.amdgpu_ring_write.exit84_crit_edge
  %80 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ring1.i, align 4
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %wptr.i, align 8
  %inc.i77 = add i64 %83, 1
  store i64 %inc.i77, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buf_mask.i, align 8
  %86 = trunc i64 %83 to i32
  %idxprom.i79 = and i32 %85, %86
  %arrayidx.i80 = getelementptr i32, ptr %81, i32 %idxprom.i79
  %87 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 10, ptr %arrayidx.i80, align 4
  %88 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ptr_mask.i, align 8
  %90 = load i64, ptr %wptr.i, align 8
  %and3.i82 = and i64 %90, %89
  store i64 %and3.i82, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count_dw.i, align 8
  %dec.i83 = add i32 %92, -1
  store i32 %dec.i83, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wdoorbell(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_set_eop_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 8, label %sw.bb7
    i32 9, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %state, label %sw.bb.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #12
  %and.i = and i32 %call.i, -67108865
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #12
  %or.i = or i32 %call2.i, 67108864
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %sw.bb.i
  %or.sink.i = phi i32 [ %or.i, %sw.bb1.i ], [ %and.i, %sw.bb.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %or.sink.i, i32 noundef 0) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %state, label %sw.bb1.sw.epilog_crit_edge [
    i32 0, label %sw.bb4.i
    i32 1, label %sw.bb5.i
  ]

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %call.i25 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12421, i32 noundef 0) #12
  %and.i26 = and i32 %call.i25, -67108865
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12421, i32 noundef %and.i26, i32 noundef 0) #12
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12421, i32 noundef 0) #12
  %or.i27 = or i32 %call6.i, 67108864
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12421, i32 noundef %or.i27, i32 noundef 0) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %state, label %sw.bb2.sw.epilog_crit_edge [
    i32 0, label %sw.bb4.i31
    i32 1, label %sw.bb5.i34
  ]

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4.i31:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %call.i29 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12422, i32 noundef 0) #12
  %and.i30 = and i32 %call.i29, -67108865
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12422, i32 noundef %and.i30, i32 noundef 0) #12
  br label %sw.epilog

sw.bb5.i34:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i32 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12422, i32 noundef 0) #12
  %or.i33 = or i32 %call6.i32, 67108864
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12422, i32 noundef %or.i33, i32 noundef 0) #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %state, label %sw.bb3.sw.epilog_crit_edge [
    i32 0, label %sw.bb4.i38
    i32 1, label %sw.bb5.i41
  ]

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4.i38:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %call.i36 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12423, i32 noundef 0) #12
  %and.i37 = and i32 %call.i36, -67108865
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12423, i32 noundef %and.i37, i32 noundef 0) #12
  br label %sw.epilog

sw.bb5.i41:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i39 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12423, i32 noundef 0) #12
  %or.i40 = or i32 %call6.i39, 67108864
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12423, i32 noundef %or.i40, i32 noundef 0) #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %5 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %state, label %sw.bb4.sw.epilog_crit_edge [
    i32 0, label %sw.bb4.i45
    i32 1, label %sw.bb5.i48
  ]

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4.i45:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %call.i43 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12424, i32 noundef 0) #12
  %and.i44 = and i32 %call.i43, -67108865
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12424, i32 noundef %and.i44, i32 noundef 0) #12
  br label %sw.epilog

sw.bb5.i48:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i46 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12424, i32 noundef 0) #12
  %or.i47 = or i32 %call6.i46, 67108864
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12424, i32 noundef %or.i47, i32 noundef 0) #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 2) #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 2) #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 2) #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 2) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb5.i48, %sw.bb4.i45, %sw.bb4.sw.epilog_crit_edge, %sw.bb5.i41, %sw.bb4.i38, %sw.bb3.sw.epilog_crit_edge, %sw.bb5.i34, %sw.bb4.i31, %sw.bb2.sw.epilog_crit_edge, %sw.bb5.i, %sw.bb4.i, %sw.bb1.sw.epilog_crit_edge, %sw.epilog.sink.split.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_eop_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #12
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id, align 4
  %2 = lshr i32 %1, 2
  %conv = and i32 %2, 3
  %conv5 = and i32 %1, 3
  %3 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %conv, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb7_crit_edge
    i32 2, label %entry.sw.bb7_crit_edge30
  ]

entry.sw.bb7_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gfx_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36
  %call = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %gfx_ring) #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge30
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 39
  %4 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_compute_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.not = icmp eq i32 %5, 0
  br i1 %cmp27.not, label %sw.bb7.sw.epilog_crit_edge, label %sw.bb7.for.body_crit_edge

sw.bb7.for.body_crit_edge:                        ; preds = %sw.bb7
  br label %for.body

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb7.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %sw.bb7.for.body_crit_edge ]
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.028
  %me = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.028, i32 16
  %6 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp13 = icmp eq i32 %7, %conv
  br i1 %cmp13, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %pipe = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.028, i32 17
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv5)
  %cmp16 = icmp eq i32 %9, %conv5
  br i1 %cmp16, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %arrayidx11) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.028, 1
  %10 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_compute_rings, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.sw.epilog_crit_edge

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

sw.epilog:                                        ; preds = %for.inc.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_set_priv_reg_fault_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #12
  %and = and i32 %call, -8388609
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #12
  %or = or i32 %call2, 8388608
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %or.sink = phi i32 [ %or, %sw.bb1 ], [ %and, %sw.bb ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %or.sink, i32 noundef 0) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_priv_reg_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #12
  %ring_id.i = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id.i, align 4
  %2 = lshr i32 %1, 2
  %conv.i = and i32 %2, 3
  %conv5.i = and i32 %1, 3
  %3 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %conv.i, label %entry.gfx_v7_0_fault.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %entry.sw.bb7.i_crit_edge
    i32 2, label %entry.sw.bb7.i_crit_edge2
  ]

entry.sw.bb7.i_crit_edge2:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

entry.gfx_v7_0_fault.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_fault.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sched.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36, i32 0, i32 3
  tail call void @drm_sched_fault(ptr noundef %sched.i) #12
  br label %gfx_v7_0_fault.exit

sw.bb7.i:                                         ; preds = %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge2
  %num_compute_rings.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 39
  %4 = ptrtoint ptr %num_compute_rings.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_compute_rings.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.not.i = icmp eq i32 %5, 0
  br i1 %cmp27.not.i, label %sw.bb7.i.gfx_v7_0_fault.exit_crit_edge, label %sw.bb7.i.for.body.i_crit_edge

sw.bb7.i.for.body.i_crit_edge:                    ; preds = %sw.bb7.i
  br label %for.body.i

sw.bb7.i.gfx_v7_0_fault.exit_crit_edge:           ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_fault.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb7.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb7.i.for.body.i_crit_edge ]
  %me.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.028.i, i32 16
  %6 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %me.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp13.i = icmp eq i32 %7, %conv.i
  br i1 %cmp13.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pipe.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.028.i, i32 17
  %8 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv5.i)
  %cmp16.i = icmp eq i32 %9, %conv5.i
  br i1 %cmp16.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %sched18.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.028.i, i32 3
  tail call void @drm_sched_fault(ptr noundef %sched18.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.028.i, 1
  %10 = ptrtoint ptr %num_compute_rings.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_compute_rings.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.gfx_v7_0_fault.exit_crit_edge

for.inc.i.gfx_v7_0_fault.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_fault.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

gfx_v7_0_fault.exit:                              ; preds = %for.inc.i.gfx_v7_0_fault.exit_crit_edge, %sw.bb7.i.gfx_v7_0_fault.exit_crit_edge, %sw.bb.i, %entry.gfx_v7_0_fault.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fault(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_set_priv_inst_fault_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #12
  %and = and i32 %call, -4194305
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #12
  %or = or i32 %call2, 4194304
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %or.sink = phi i32 [ %or, %sw.bb1 ], [ %and, %sw.bb ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %or.sink, i32 noundef 0) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfx_v7_0_priv_inst_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #12
  %ring_id.i = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id.i, align 4
  %2 = lshr i32 %1, 2
  %conv.i = and i32 %2, 3
  %conv5.i = and i32 %1, 3
  %3 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %conv.i, label %entry.gfx_v7_0_fault.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %entry.sw.bb7.i_crit_edge
    i32 2, label %entry.sw.bb7.i_crit_edge2
  ]

entry.sw.bb7.i_crit_edge2:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

entry.gfx_v7_0_fault.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_fault.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sched.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36, i32 0, i32 3
  tail call void @drm_sched_fault(ptr noundef %sched.i) #12
  br label %gfx_v7_0_fault.exit

sw.bb7.i:                                         ; preds = %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge2
  %num_compute_rings.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 39
  %4 = ptrtoint ptr %num_compute_rings.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_compute_rings.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.not.i = icmp eq i32 %5, 0
  br i1 %cmp27.not.i, label %sw.bb7.i.gfx_v7_0_fault.exit_crit_edge, label %sw.bb7.i.for.body.i_crit_edge

sw.bb7.i.for.body.i_crit_edge:                    ; preds = %sw.bb7.i
  br label %for.body.i

sw.bb7.i.gfx_v7_0_fault.exit_crit_edge:           ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_fault.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb7.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb7.i.for.body.i_crit_edge ]
  %me.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.028.i, i32 16
  %6 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %me.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp13.i = icmp eq i32 %7, %conv.i
  br i1 %cmp13.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pipe.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.028.i, i32 17
  %8 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv5.i)
  %cmp16.i = icmp eq i32 %9, %conv5.i
  br i1 %cmp16.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %sched18.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.028.i, i32 3
  tail call void @drm_sched_fault(ptr noundef %sched18.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.028.i, 1
  %10 = ptrtoint ptr %num_compute_rings.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_compute_rings.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.gfx_v7_0_fault.exit_crit_edge

for.inc.i.gfx_v7_0_fault.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_fault.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

gfx_v7_0_fault.exit:                              ; preds = %for.inc.i.gfx_v7_0_fault.exit_crit_edge, %sw.bb7.i.gfx_v7_0_fault.exit_crit_edge, %sw.bb.i, %entry.gfx_v7_0_fault.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfx_v7_0_mec_init(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  %hpd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpd) #12
  %0 = ptrtoint ptr %hpd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hpd, align 4, !annotation !191
  %mec = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6
  %queue_bitmap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 8
  %1 = call ptr @memset(ptr %queue_bitmap, i32 0, i32 16)
  tail call void @amdgpu_gfx_compute_queue_acquire(ptr noundef %adev) #12
  %num_mec = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 4
  %2 = ptrtoint ptr %num_mec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_mec, align 8
  %num_pipe_per_mec = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 5
  %4 = ptrtoint ptr %num_pipe_per_mec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pipe_per_mec, align 4
  %mul = shl i32 %3, 12
  %mul6 = mul i32 %mul, %5
  %hpd_eop_gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 1
  %call = call i32 @amdgpu_bo_create_reserved(ptr noundef %adev, i32 noundef %mul6, i32 noundef 4096, i32 noundef 4, ptr noundef %mec, ptr noundef %hpd_eop_gpu_addr, ptr noundef nonnull %hpd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.28, i32 noundef %call) #15
  call void @amdgpu_bo_free_kernel(ptr noundef %mec, ptr noundef null, ptr noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hpd, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 %mul6)
  %11 = ptrtoint ptr %mec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mec, align 8
  call void @amdgpu_bo_kunmap(ptr noundef %12) #12
  %13 = ptrtoint ptr %mec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mec, align 8
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %14, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %14, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %16, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #12
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %14, i32 0, i32 4, i32 6
  %17 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %18, ptr noundef null) #12
  %19 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %20, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #12
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %14, i32 0, i32 4, i32 0, i32 9
  %21 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %22) #12
  call void @ww_mutex_unlock(ptr noundef %22) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpd) #12
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_gfx_is_mec_queue_enabled(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v7_0_gpu_early_init(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %1, label %sw.default [
    i32 5, label %sw.bb
    i32 8, label %sw.bb25
    i32 6, label %sw.bb65
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %config, align 8
  %max_tile_pipes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 1
  %4 = ptrtoint ptr %max_tile_pipes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %max_tile_pipes, align 4
  %max_cu_per_sh = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %5 = ptrtoint ptr %max_cu_per_sh to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %max_cu_per_sh, align 8
  %max_sh_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %6 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %max_sh_per_se, align 4
  %max_backends_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 4
  %7 = ptrtoint ptr %max_backends_per_se to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %max_backends_per_se, align 8
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %config27 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %8 = ptrtoint ptr %config27 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %config27, align 8
  %max_tile_pipes31 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 1
  %9 = ptrtoint ptr %max_tile_pipes31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %max_tile_pipes31, align 4
  %max_cu_per_sh34 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %10 = ptrtoint ptr %max_cu_per_sh34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 11, ptr %max_cu_per_sh34, align 8
  %max_sh_per_se37 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %11 = ptrtoint ptr %max_sh_per_se37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %max_sh_per_se37, align 4
  %max_backends_per_se40 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 4
  %12 = ptrtoint ptr %max_backends_per_se40 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %max_backends_per_se40, align 8
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %config67 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %13 = ptrtoint ptr %config67 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %config67, align 8
  %max_tile_pipes71 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 1
  %14 = ptrtoint ptr %max_tile_pipes71 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %max_tile_pipes71, align 4
  %max_cu_per_sh74 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %15 = ptrtoint ptr %max_cu_per_sh74 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %max_cu_per_sh74, align 8
  %max_backends_per_se77 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 4
  %16 = ptrtoint ptr %max_backends_per_se77 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %max_backends_per_se77, align 8
  %max_sh_per_se80 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %17 = ptrtoint ptr %max_sh_per_se80 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %max_sh_per_se80, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %config107 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %18 = ptrtoint ptr %config107 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %config107, align 8
  %max_tile_pipes111 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 1
  %19 = ptrtoint ptr %max_tile_pipes111 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %max_tile_pipes111, align 4
  %max_cu_per_sh114 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %20 = ptrtoint ptr %max_cu_per_sh114 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %max_cu_per_sh114, align 8
  %max_sh_per_se117 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %21 = ptrtoint ptr %max_sh_per_se117 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %max_sh_per_se117, align 4
  %max_backends_per_se120 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 4
  %22 = ptrtoint ptr %max_backends_per_se120 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %max_backends_per_se120, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb65, %sw.bb25, %sw.bb
  %.sink360 = phi i32 [ 2, %sw.default ], [ 4, %sw.bb65 ], [ 16, %sw.bb25 ], [ 4, %sw.bb ]
  %.sink = phi i32 [ 16, %sw.default ], [ 16, %sw.bb65 ], [ 32, %sw.bb25 ], [ 32, %sw.bb ]
  %gb_addr_config.0 = phi i32 [ 33619969, %sw.default ], [ 33619969, %sw.bb65 ], [ 33624067, %sw.bb25 ], [ 33619969, %sw.bb ]
  %max_texture_channel_caches123 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 5
  %23 = ptrtoint ptr %max_texture_channel_caches123 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink360, ptr %max_texture_channel_caches123, align 4
  %max_gprs126 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 6
  %24 = ptrtoint ptr %max_gprs126 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %max_gprs126, align 8
  %max_gs_threads129 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 7
  %25 = ptrtoint ptr %max_gs_threads129 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %max_gs_threads129, align 4
  %max_hw_contexts132 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 8
  %26 = ptrtoint ptr %max_hw_contexts132 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %max_hw_contexts132, align 8
  %sc_prim_fifo_size_frontend135 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 9
  %27 = ptrtoint ptr %sc_prim_fifo_size_frontend135 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32, ptr %sc_prim_fifo_size_frontend135, align 4
  %sc_prim_fifo_size_backend138 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 10
  %28 = ptrtoint ptr %sc_prim_fifo_size_backend138 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 256, ptr %sc_prim_fifo_size_backend138, align 8
  %sc_hiz_tile_fifo_size141 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 11
  %29 = ptrtoint ptr %sc_hiz_tile_fifo_size141 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 48, ptr %sc_hiz_tile_fifo_size141, align 4
  %sc_earlyz_tile_fifo_size144 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 12
  %30 = ptrtoint ptr %sc_earlyz_tile_fifo_size144 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 304, ptr %sc_earlyz_tile_fifo_size144, align 8
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 2520, i32 noundef 0) #12
  %mc_arb_ramcfg147 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 20
  %31 = ptrtoint ptr %mc_arb_ramcfg147 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call, ptr %mc_arb_ramcfg147, align 8
  %and = and i32 %call, 3
  %num_banks = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 21
  %32 = ptrtoint ptr %num_banks to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and, ptr %num_banks, align 4
  %and153 = lshr i32 %call, 2
  %shr154 = and i32 %and153, 1
  %num_ranks = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 22
  %33 = ptrtoint ptr %num_ranks to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr154, ptr %num_ranks, align 8
  %max_tile_pipes159 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 1
  %34 = ptrtoint ptr %max_tile_pipes159 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_tile_pipes159, align 4
  %num_tile_pipes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 13
  %36 = ptrtoint ptr %num_tile_pipes to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %num_tile_pipes, align 4
  %mem_max_burst_length_bytes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 15
  %37 = ptrtoint ptr %mem_max_burst_length_bytes to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 256, ptr %mem_max_burst_length_bytes, align 4
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 8
  %and164 = and i32 %39, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool.not = icmp eq i32 %and164, 0
  br i1 %tobool.not, label %if.else222, label %if.then

if.then:                                          ; preds = %sw.epilog
  %call165 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 2577, i32 noundef 0) #12
  %and166 = and i32 %call165, 15
  %and168 = lshr i32 %call165, 4
  %shr169 = and i32 %and168, 15
  %call170 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 2578, i32 noundef 0) #12
  %and171 = and i32 %call170, 15
  %and173 = lshr i32 %call170, 4
  %shr174 = and i32 %and173, 15
  %40 = zext i32 %and166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %and166, label %lor.lhs.false178 [
    i32 0, label %if.then.if.then180_crit_edge
    i32 3, label %if.then.if.then180_crit_edge361
    i32 4, label %if.then.if.then180_crit_edge362
  ]

if.then.if.then180_crit_edge362:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then180

if.then.if.then180_crit_edge361:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then180

if.then.if.then180_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then180

lor.lhs.false178:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and166)
  %cmp179 = icmp ugt i32 %and166, 12
  br i1 %cmp179, label %lor.lhs.false178.if.then180_crit_edge, label %lor.lhs.false178.if.end_crit_edge

lor.lhs.false178.if.end_crit_edge:                ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false178.if.then180_crit_edge:            ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then180

if.then180:                                       ; preds = %lor.lhs.false178.if.then180_crit_edge, %if.then.if.then180_crit_edge, %if.then.if.then180_crit_edge361, %if.then.if.then180_crit_edge362
  br label %if.end

if.end:                                           ; preds = %if.then180, %lor.lhs.false178.if.end_crit_edge
  %dimm00_addr_map.0 = phi i32 [ 0, %if.then180 ], [ %and166, %lor.lhs.false178.if.end_crit_edge ]
  %41 = zext i32 %shr169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %shr169, label %lor.lhs.false186 [
    i32 0, label %if.end.if.then188_crit_edge
    i32 3, label %if.end.if.then188_crit_edge363
    i32 4, label %if.end.if.then188_crit_edge364
  ]

if.end.if.then188_crit_edge364:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then188

if.end.if.then188_crit_edge363:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then188

if.end.if.then188_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then188

lor.lhs.false186:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %shr169)
  %cmp187 = icmp ugt i32 %shr169, 12
  br i1 %cmp187, label %lor.lhs.false186.if.then188_crit_edge, label %lor.lhs.false186.if.end189_crit_edge

lor.lhs.false186.if.end189_crit_edge:             ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189

lor.lhs.false186.if.then188_crit_edge:            ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then188

if.then188:                                       ; preds = %lor.lhs.false186.if.then188_crit_edge, %if.end.if.then188_crit_edge, %if.end.if.then188_crit_edge363, %if.end.if.then188_crit_edge364
  br label %if.end189

if.end189:                                        ; preds = %if.then188, %lor.lhs.false186.if.end189_crit_edge
  %dimm01_addr_map.0 = phi i32 [ 0, %if.then188 ], [ %shr169, %lor.lhs.false186.if.end189_crit_edge ]
  %42 = zext i32 %and171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and171, label %lor.lhs.false195 [
    i32 0, label %if.end189.if.then197_crit_edge
    i32 3, label %if.end189.if.then197_crit_edge365
    i32 4, label %if.end189.if.then197_crit_edge366
  ]

if.end189.if.then197_crit_edge366:                ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then197

if.end189.if.then197_crit_edge365:                ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then197

if.end189.if.then197_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then197

lor.lhs.false195:                                 ; preds = %if.end189
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and171)
  %cmp196 = icmp ugt i32 %and171, 12
  br i1 %cmp196, label %lor.lhs.false195.if.then197_crit_edge, label %lor.lhs.false195.if.end198_crit_edge

lor.lhs.false195.if.end198_crit_edge:             ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end198

lor.lhs.false195.if.then197_crit_edge:            ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then197

if.then197:                                       ; preds = %lor.lhs.false195.if.then197_crit_edge, %if.end189.if.then197_crit_edge, %if.end189.if.then197_crit_edge365, %if.end189.if.then197_crit_edge366
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %lor.lhs.false195.if.end198_crit_edge
  %dimm10_addr_map.0 = phi i32 [ 0, %if.then197 ], [ %and171, %lor.lhs.false195.if.end198_crit_edge ]
  %43 = zext i32 %shr174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %shr174, label %lor.lhs.false204 [
    i32 0, label %if.end198.if.then206_crit_edge
    i32 3, label %if.end198.if.then206_crit_edge367
    i32 4, label %if.end198.if.then206_crit_edge368
  ]

if.end198.if.then206_crit_edge368:                ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then206

if.end198.if.then206_crit_edge367:                ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then206

if.end198.if.then206_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then206

lor.lhs.false204:                                 ; preds = %if.end198
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %shr174)
  %cmp205 = icmp ugt i32 %shr174, 12
  br i1 %cmp205, label %lor.lhs.false204.if.then206_crit_edge, label %lor.lhs.false204.if.end207_crit_edge

lor.lhs.false204.if.end207_crit_edge:             ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

lor.lhs.false204.if.then206_crit_edge:            ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then206

if.then206:                                       ; preds = %lor.lhs.false204.if.then206_crit_edge, %if.end198.if.then206_crit_edge, %if.end198.if.then206_crit_edge367, %if.end198.if.then206_crit_edge368
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %lor.lhs.false204.if.end207_crit_edge
  %dimm11_addr_map.0 = phi i32 [ 0, %if.then206 ], [ %shr174, %lor.lhs.false204.if.end207_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %dimm00_addr_map.0)
  %cmp208 = icmp eq i32 %dimm00_addr_map.0, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %dimm01_addr_map.0)
  %cmp210 = icmp eq i32 %dimm01_addr_map.0, 11
  %or.cond = select i1 %cmp208, i1 true, i1 %cmp210
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %dimm10_addr_map.0)
  %cmp212 = icmp eq i32 %dimm10_addr_map.0, 11
  %or.cond358 = select i1 %or.cond, i1 true, i1 %cmp212
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %dimm11_addr_map.0)
  %cmp214 = icmp eq i32 %dimm11_addr_map.0, 11
  %or.cond359 = select i1 %or.cond358, i1 true, i1 %cmp214
  %mem_row_size_in_kb = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 16
  br i1 %or.cond359, label %if.then215, label %if.else

if.then215:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %mem_row_size_in_kb to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %mem_row_size_in_kb, align 8
  br label %if.end237

if.else:                                          ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %mem_row_size_in_kb to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %mem_row_size_in_kb, align 8
  br label %if.end237

if.else222:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %and223 = lshr i32 %call, 6
  %shr224 = and i32 %and223, 3
  %add = or i32 %shr224, 8
  %mul = shl i32 4, %add
  %div357 = lshr exact i32 %mul, 10
  %mem_row_size_in_kb227 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul)
  %cmp231 = icmp ugt i32 %mul, 4096
  %spec.store.select = select i1 %cmp231, i32 4, i32 %div357
  %46 = ptrtoint ptr %mem_row_size_in_kb227 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.store.select, ptr %mem_row_size_in_kb227, align 8
  br label %if.end237

if.end237:                                        ; preds = %if.else222, %if.else, %if.then215
  %shader_engine_tile_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 17
  %47 = ptrtoint ptr %shader_engine_tile_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 32, ptr %shader_engine_tile_size, align 4
  %num_gpus = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 18
  %48 = ptrtoint ptr %num_gpus to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %num_gpus, align 8
  %multi_gpu_tile_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 19
  %49 = ptrtoint ptr %multi_gpu_tile_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 64, ptr %multi_gpu_tile_size, align 4
  %mem_row_size_in_kb247 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 16
  %50 = ptrtoint ptr %mem_row_size_in_kb247 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mem_row_size_in_kb247, align 8
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %51, label %if.end237.sw.epilog254_crit_edge [
    i32 4, label %sw.bb252
    i32 2, label %sw.bb250
  ]

if.end237.sw.epilog254_crit_edge:                 ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog254

sw.bb250:                                         ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #14
  %or251 = or i32 %gb_addr_config.0, 268435456
  br label %sw.epilog254

sw.bb252:                                         ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #14
  %or253 = or i32 %gb_addr_config.0, 536870912
  br label %sw.epilog254

sw.epilog254:                                     ; preds = %sw.bb252, %sw.bb250, %if.end237.sw.epilog254_crit_edge
  %gb_addr_config.1 = phi i32 [ %or251, %sw.bb250 ], [ %or253, %sw.bb252 ], [ %gb_addr_config.0, %if.end237.sw.epilog254_crit_edge ]
  %gb_addr_config257 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 23
  %53 = ptrtoint ptr %gb_addr_config257 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %gb_addr_config.1, ptr %gb_addr_config257, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_compute_queue_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_reserved(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_rlc_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_parse_disable_cu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_gfx_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v7_0_fini_pg(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %0 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pg_flags, align 4
  %and = and i32 %1, 231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call fastcc void @gfx_v7_0_update_gfx_pg(ptr noundef %adev, i1 noundef zeroext false)
  %2 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_flags, align 4
  %and2 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.then
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  %or.i = or i32 %call.i, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %or.i)
  %cmp.not.i = icmp eq i32 %call.i, %or.i
  br i1 %cmp.not.i, label %if.then4.gfx_v7_0_enable_cp_pg.exit_crit_edge, label %if.then3.i

if.then4.gfx_v7_0_enable_cp_pg.exit_crit_edge:    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_enable_cp_pg.exit

if.then3.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12547, i32 noundef %or.i, i32 noundef 0) #12
  br label %gfx_v7_0_enable_cp_pg.exit

gfx_v7_0_enable_cp_pg.exit:                       ; preds = %if.then3.i, %if.then4.gfx_v7_0_enable_cp_pg.exit_crit_edge
  %call.i10 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12547, i32 noundef 0) #12
  %or.i11 = or i32 %call.i10, 8192
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i10, i32 %or.i11)
  %cmp.not.i12 = icmp eq i32 %call.i10, %or.i11
  br i1 %cmp.not.i12, label %gfx_v7_0_enable_cp_pg.exit.if.end5_crit_edge, label %if.then3.i13

gfx_v7_0_enable_cp_pg.exit.if.end5_crit_edge:     ; preds = %gfx_v7_0_enable_cp_pg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3.i13:                                     ; preds = %gfx_v7_0_enable_cp_pg.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12547, i32 noundef %or.i11, i32 noundef 0) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3.i13, %gfx_v7_0_enable_cp_pg.exit.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v7_0_enable_mgcg(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = and i32 %1, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %2)
  %.not = icmp eq i32 %2, 66
  br i1 %.not, label %if.then9, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then9:                                         ; preds = %if.then
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12409, i32 noundef 0) #12
  %or = or i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %or)
  %cmp.not = icmp eq i32 %call, %or
  br i1 %cmp.not, label %if.then9.if.end12_crit_edge, label %if.then10

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12409, i32 noundef %or, i32 noundef 0) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then9.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %call13 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12552, i32 noundef 0) #12
  %or14 = and i32 %call13, -4
  %and15 = or i32 %or14, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %and15)
  %cmp16.not = icmp eq i32 %call13, %and15
  br i1 %cmp16.not, label %if.end12.if.end18_crit_edge, label %if.then17

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12552, i32 noundef %and15, i32 noundef 0) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end12.if.end18_crit_edge
  %call19 = tail call fastcc i32 @gfx_v7_0_halt_rlc(ptr noundef %adev)
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12573, i32 noundef -1, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12574, i32 noundef -1, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12575, i32 noundef 4194559, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #12
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call19)
  %cmp.not.i = icmp eq i32 %call.i, %call19
  br i1 %cmp.not.i, label %if.end18.gfx_v7_0_update_rlc.exit_crit_edge, label %if.then.i

if.end18.gfx_v7_0_update_rlc.exit_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_update_rlc.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12480, i32 noundef %call19, i32 noundef 0) #12
  br label %gfx_v7_0_update_rlc.exit

gfx_v7_0_update_rlc.exit:                         ; preds = %if.then.i, %if.end18.gfx_v7_0_update_rlc.exit_crit_edge
  %3 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cg_flags, align 8
  %and22 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %gfx_v7_0_update_rlc.exit.if.end72_crit_edge, label %if.then24

gfx_v7_0_update_rlc.exit.if.end72_crit_edge:      ; preds = %gfx_v7_0_update_rlc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then24:                                        ; preds = %gfx_v7_0_update_rlc.exit
  %call25 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 61440, i32 noundef 0) #12
  %and26 = and i32 %call25, -4063233
  %or28 = or i32 %and26, 1310720
  %5 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cg_flags, align 8
  %7 = and i32 %6, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %7)
  %.not148 = icmp eq i32 %7, 34
  %and38 = and i32 %or28, 1441791
  %data.0 = select i1 %.not148, i32 %and38, i32 %or28
  %and40 = and i32 %data.0, 5636095
  %or42 = or i32 %and40, -1769996288
  call void @__sanitizer_cov_trace_cmp4(i32 %call25, i32 %or42)
  %cmp43.not = icmp eq i32 %call25, %or42
  br i1 %cmp43.not, label %if.then24.if.end72_crit_edge, label %if.then44

if.then24.if.end72_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then44:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 61440, i32 noundef %or42, i32 noundef 0) #12
  br label %if.end72

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call47 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12552, i32 noundef 0) #12
  %or48 = or i32 %call47, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call47, i32 %or48)
  %cmp49.not = icmp eq i32 %call47, %or48
  br i1 %cmp49.not, label %if.else.if.end51_crit_edge, label %if.then50

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12552, i32 noundef %or48, i32 noundef 0) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.else.if.end51_crit_edge
  %call52 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12486, i32 noundef 0) #12
  %and53 = and i32 %call52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end57_crit_edge, label %if.then55

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %and56 = and i32 %call52, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12486, i32 noundef %and56, i32 noundef 0) #12
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end51.if.end57_crit_edge
  %call58 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12409, i32 noundef 0) #12
  %and59 = and i32 %call58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end63_crit_edge, label %if.then61

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %and62 = and i32 %call58, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12409, i32 noundef %and62, i32 noundef 0) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end57.if.end63_crit_edge
  %call64 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 61440, i32 noundef 0) #12
  %or65 = or i32 %call64, 6291456
  call void @__sanitizer_cov_trace_cmp4(i32 %call64, i32 %or65)
  %cmp66.not = icmp eq i32 %call64, %or65
  br i1 %cmp66.not, label %if.end63.if.end68_crit_edge, label %if.then67

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 61440, i32 noundef %or65, i32 noundef 0) #12
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end63.if.end68_crit_edge
  %call69 = tail call fastcc i32 @gfx_v7_0_halt_rlc(ptr noundef %adev)
  %grbm_idx_mutex70 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex70, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12573, i32 noundef -1, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12574, i32 noundef -1, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12575, i32 noundef 8388863, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex70) #12
  %call.i144 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i144, i32 %call69)
  %cmp.not.i145 = icmp eq i32 %call.i144, %call69
  br i1 %cmp.not.i145, label %if.end68.if.end72_crit_edge, label %if.then.i146

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then.i146:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12480, i32 noundef %call69, i32 noundef 0) #12
  br label %if.end72

if.end72:                                         ; preds = %if.then.i146, %if.end68.if.end72_crit_edge, %if.then44, %if.then24.if.end72_crit_edge, %gfx_v7_0_update_rlc.exit.if.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfx_v7_0_enable_cgcg(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12553, i32 noundef 0) #12
  br i1 %enable, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #12
  %tmp.0.i = or i32 %call.i, 1572864
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %tmp.0.i, i32 noundef 0) #12
  %call2 = tail call fastcc i32 @gfx_v7_0_halt_rlc(ptr noundef %adev)
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12573, i32 noundef -1, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12574, i32 noundef -1, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12575, i32 noundef 1114367, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #12
  %call.i38 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i38, i32 %call2)
  %cmp.not.i = icmp eq i32 %call.i38, %call2
  br i1 %cmp.not.i, label %if.then.gfx_v7_0_update_rlc.exit_crit_edge, label %if.then.i

if.then.gfx_v7_0_update_rlc.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfx_v7_0_update_rlc.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12480, i32 noundef %call2, i32 noundef 0) #12
  br label %gfx_v7_0_update_rlc.exit

gfx_v7_0_update_rlc.exit:                         ; preds = %if.then.i, %if.then.gfx_v7_0_update_rlc.exit_crit_edge
  %or = or i32 %call, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %or)
  %cmp.not = icmp eq i32 %call, %or
  br i1 %cmp.not, label %gfx_v7_0_update_rlc.exit.if.end13_crit_edge, label %if.then4

gfx_v7_0_update_rlc.exit.if.end13_crit_edge:      ; preds = %gfx_v7_0_update_rlc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then4:                                         ; preds = %gfx_v7_0_update_rlc.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12553, i32 noundef %or, i32 noundef 0) #12
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call.i39 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #12
  %and.i40 = and i32 %call.i39, -1572865
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %and.i40, i32 noundef 0) #12
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 61608, i32 noundef 0) #12
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 61608, i32 noundef 0) #12
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 61608, i32 noundef 0) #12
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 61608, i32 noundef 0) #12
  %and9 = and i32 %call, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %and9)
  %cmp10.not = icmp eq i32 %call, %and9
  br i1 %cmp10.not, label %if.else.if.end12_crit_edge, label %if.then11

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12553, i32 noundef %and9, i32 noundef 0) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.else.if.end12_crit_edge
  %call.i41 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12394, i32 noundef 0) #12
  %tmp.0.i43 = or i32 %call.i41, 1572864
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12394, i32 noundef %tmp.0.i43, i32 noundef 0) #12
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then4, %gfx_v7_0_update_rlc.exit.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfx_v7_0_halt_rlc(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12480, i32 noundef 0) #12
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %and1 = and i32 %call, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 12480, i32 noundef %and1, i32 noundef 0) #12
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.not = icmp eq i32 %1, 0
  br i1 %cmp14.not, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 12544, i32 noundef 0) #12
  %and3 = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #12
  %inc = add nuw i32 %i.015, 1
  %3 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call fastcc void @gfx_v7_0_wait_for_rlc_serdes(ptr noundef %adev)
  br label %if.end6

if.end6:                                          ; preds = %for.end, %entry.if.end6_crit_edge
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !150, !152, !153, !154, !155, !156, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !173, !174, !176, !177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 64, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware346, !7, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 65, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware347, !9, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 66, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware348, !11, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 68, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware349, !13, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 69, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware350, !15, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 70, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware351, !17, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 71, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware352, !19, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 72, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware353, !21, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 74, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware354, !23, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 75, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware355, !25, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 76, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware356, !27, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 77, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware357, !29, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 78, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware358, !31, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 79, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware359, !33, !"__UNIQUE_ID_firmware359", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 81, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware360, !35, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 82, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware361, !37, !"__UNIQUE_ID_firmware361", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 83, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware362, !39, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 84, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware363, !41, !"__UNIQUE_ID_firmware363", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 85, i32 1}
!42 = !{ptr @__UNIQUE_ID_firmware364, !43, !"__UNIQUE_ID_firmware364", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 87, i32 1}
!44 = !{ptr @__UNIQUE_ID_firmware365, !45, !"__UNIQUE_ID_firmware365", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 88, i32 1}
!46 = !{ptr @__UNIQUE_ID_firmware366, !47, !"__UNIQUE_ID_firmware366", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 89, i32 1}
!48 = !{ptr @__UNIQUE_ID_firmware367, !49, !"__UNIQUE_ID_firmware367", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 90, i32 1}
!50 = !{ptr @__UNIQUE_ID_firmware368, !51, !"__UNIQUE_ID_firmware368", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 91, i32 1}
!52 = !{ptr @gfx_v7_1_ip_block, !53, !"gfx_v7_1_ip_block", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 5221, i32 38}
!54 = !{ptr @gfx_v7_2_ip_block, !55, !"gfx_v7_2_ip_block", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 5230, i32 38}
!56 = !{ptr @gfx_v7_3_ip_block, !57, !"gfx_v7_3_ip_block", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 5239, i32 38}
!58 = !{ptr @.str, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 5037, i32 10}
!60 = !{ptr @gfx_v7_0_ip_funcs, !61, !"gfx_v7_0_ip_funcs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 5036, i32 34}
!62 = !{ptr @gfx_v7_0_gfx_funcs, !63, !"gfx_v7_0_gfx_funcs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4223, i32 38}
!64 = !{ptr @gfx_v7_0_rlc_funcs, !65, !"gfx_v7_0_rlc_funcs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4231, i32 38}
!66 = !{ptr @spectre_rlc_save_restore_register_list, !67, !"spectre_rlc_save_restore_register_list", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 113, i32 18}
!68 = !{ptr @kalindi_rlc_save_restore_register_list, !69, !"kalindi_rlc_save_restore_register_list", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 560, i32 18}
!70 = !{ptr @ci_cs_data, !71, !"ci_cs_data", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_ci.h", i32 941, i32 36}
!72 = !{ptr @ci_SECT_CONTEXT_defs, !73, !"ci_SECT_CONTEXT_defs", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_ci.h", i32 930, i32 35}
!74 = !{ptr @ci_SECT_CONTEXT_def_1, !75, !"ci_SECT_CONTEXT_def_1", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_ci.h", i32 24, i32 27}
!76 = !{ptr @ci_SECT_CONTEXT_def_2, !77, !"ci_SECT_CONTEXT_def_2", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_ci.h", i32 239, i32 27}
!78 = !{ptr @ci_SECT_CONTEXT_def_3, !79, !"ci_SECT_CONTEXT_def_3", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_ci.h", i32 516, i32 27}
!80 = !{ptr @ci_SECT_CONTEXT_def_4, !81, !"ci_SECT_CONTEXT_def_4", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_ci.h", i32 525, i32 27}
!82 = !{ptr @ci_SECT_CONTEXT_def_5, !83, !"ci_SECT_CONTEXT_def_5", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_ci.h", i32 685, i32 27}
!84 = !{ptr @ci_SECT_CONTEXT_def_6, !85, !"ci_SECT_CONTEXT_def_6", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_ci.h", i32 690, i32 27}
!86 = !{ptr @ci_SECT_CONTEXT_def_7, !87, !"ci_SECT_CONTEXT_def_7", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/clearstate_ci.h", i32 694, i32 27}
!88 = !{ptr @gfx_v7_0_ring_funcs_gfx, !89, !"gfx_v7_0_ring_funcs_gfx", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 5053, i32 39}
!90 = !{ptr @.str.3, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!92 = !{ptr @amdgpu_gds_reg_offset, !93, !"amdgpu_gds_reg_offset", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 93, i32 43}
!94 = !{ptr @gfx_v7_0_ring_funcs_compute, !95, !"gfx_v7_0_ring_funcs_compute", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 5087, i32 39}
!96 = !{ptr @gfx_v7_0_eop_irq_funcs, !97, !"gfx_v7_0_eop_irq_funcs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 5128, i32 42}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4779, i32 4}
!100 = !{ptr @.str.5, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4783, i32 3}
!102 = !{ptr @.str.6, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4900, i32 2}
!104 = !{ptr @gfx_v7_0_priv_reg_irq_funcs, !105, !"gfx_v7_0_priv_reg_irq_funcs", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 5133, i32 42}
!106 = !{ptr @.str.7, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4947, i32 2}
!108 = !{ptr @gfx_v7_0_priv_inst_irq_funcs, !109, !"gfx_v7_0_priv_inst_irq_funcs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 5138, i32 42}
!110 = !{ptr @.str.8, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4956, i32 2}
!112 = !{ptr @.str.9, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4496, i32 3}
!114 = !{ptr @.str.10, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4502, i32 3}
!116 = !{ptr @.str.11, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4509, i32 3}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4516, i32 23}
!120 = !{ptr @.str.13, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 908, i32 2}
!122 = !{ptr @.str.14, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 912, i32 15}
!124 = !{ptr @.str.15, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 915, i32 15}
!126 = !{ptr @.str.16, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 918, i32 15}
!128 = !{ptr @.str.17, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 921, i32 15}
!130 = !{ptr @.str.18, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 924, i32 15}
!132 = !{ptr @.str.19, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 929, i32 37}
!134 = !{ptr @.str.20, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 937, i32 37}
!136 = !{ptr @.str.21, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 945, i32 37}
!138 = !{ptr @.str.22, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 953, i32 37}
!140 = !{ptr @.str.23, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 962, i32 38}
!142 = !{ptr @.str.24, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 971, i32 37}
!144 = !{ptr @.str.25, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 979, i32 3}
!146 = !{ptr @.str.26, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.27, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @gfx_v7_0_init_microcode._entry, !145, !"_entry", i1 false, i1 false}
!149 = !{ptr @gfx_v7_0_init_microcode._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.28, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 2816, i32 3}
!152 = !{ptr @.str.29, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.30, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.31, !151, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @gfx_v7_0_mec_init._entry, !151, !"_entry", i1 false, i1 false}
!156 = !{ptr @gfx_v7_0_mec_init._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.32, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4437, i32 22}
!159 = !{ptr @.str.33, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 1664, i32 3}
!161 = !{ptr @.str.34, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 2538, i32 3}
!163 = !{ptr @.str.35, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 3079, i32 3}
!165 = !{ptr @.str.36, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @gfx_v7_0_compute_queue_init._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @gfx_v7_0_compute_queue_init._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.37, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4701, i32 4}
!170 = !{ptr @.str.38, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.39, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @gfx_v7_0_soft_reset._entry, !169, !"_entry", i1 false, i1 false}
!173 = !{ptr @gfx_v7_0_soft_reset._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.41, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c", i32 4715, i32 4}
!176 = !{ptr @gfx_v7_0_soft_reset._entry.40, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @gfx_v7_0_soft_reset._entry_ptr.42, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{i64 2163698681, i64 2163699183, i64 2163698718, i64 2163698774, i64 2163698808, i64 2163698832, i64 2163698873, i64 2163698894, i64 2163698922, i64 2163698956}
!188 = distinct !{!188, !189}
!189 = !{!"llvm.loop.peeled.count", i32 1}
!190 = !{i32 0, i32 33}
!191 = !{!"auto-init"}
!192 = !{i8 0, i8 2}
!193 = !{i64 2148806385}
!194 = !{i64 2148720825, i64 2148720857, i64 2148720886, i64 2148720920, i64 2148720951, i64 2148720974}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{i64 2150004158}
