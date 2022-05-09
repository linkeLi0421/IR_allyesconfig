; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/dce_v6_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_display_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.anon.114 = type { i32, i32, i32, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.98, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
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
%struct.anon.90 = type { i32, ptr }
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
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.97], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.97 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.94] }
%struct.anon.94 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.98 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.109, i32, i32, i32, i32 }
%union.anon.109 = type { %struct.anon.111 }
%struct.anon.111 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_crtc = type { %struct.drm_crtc, i32, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, i32, i32, %struct.dm_irq_params, %struct.amdgpu_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, %struct.hrtimer, i32, i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%union.dfixed = type { i32 }
%struct.dm_irq_params = type { i32, %struct.mod_vrr_params, ptr, i32, i8, %struct.mod_freesync_config, i32 }
%struct.mod_vrr_params = type { i8, i8, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_adjust, %struct.mod_vrr_params_fixed_refresh, %struct.mod_vrr_params_btr }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.mod_vrr_params_fixed_refresh = type { i8, i8, i8, i32, i32 }
%struct.mod_vrr_params_btr = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.mod_freesync_config = type { i32, i8, i8, i8, i32, i32, i32 }
%struct.amdgpu_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.amdgpu_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i16, %struct.amdgpu_hpd, %struct.amdgpu_router, ptr, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.amdgpu_router = type { i32, %struct.amdgpu_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.84, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.84 = type { [4 x i8] }
%struct.dce6_wm_params = type { i32, i32, i32, i32, i32, i32, i32, i8, %union.dfixed, i32, i32, i32, i32 }
%struct.amdgpu_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr }
%struct.amdgpu_afmt_acr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_afmt = type { i8, i32, i8, i32, ptr }
%struct.cea_sad = type { i8, i8, i8, i8 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }
%struct.amdgpu_flip_work = type { %struct.delayed_work, %struct.work_struct, ptr, i32, i32, i64, ptr, ptr, i32, ptr, %struct.dma_fence_cb, i8 }
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

@crtc_offsets = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 768, i32 9728, i32 10496, i32 11264, i32 12032], [40 x i8] zeroinitializer }, align 32
@dce_v6_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @dce_v6_0_early_init, ptr null, ptr @dce_v6_0_sw_init, ptr @dce_v6_0_sw_fini, ptr null, ptr @dce_v6_0_hw_init, ptr @dce_v6_0_hw_fini, ptr null, ptr @dce_v6_0_suspend, ptr @dce_v6_0_resume, ptr @dce_v6_0_is_idle, ptr @dce_v6_0_wait_for_idle, ptr null, ptr null, ptr @dce_v6_0_soft_reset, ptr null, ptr @dce_v6_0_set_clockgating_state, ptr @dce_v6_0_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@dce_v6_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 5, i32 6, i32 0, i32 0, ptr @dce_v6_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@dce_v6_4_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 5, i32 6, i32 4, i32 0, ptr @dce_v6_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dce_v6_0\00", [23 x i8] zeroinitializer }, align 32
@dce_v6_0_display_funcs = internal constant { %struct.amdgpu_display_funcs, [52 x i8] } { %struct.amdgpu_display_funcs { ptr @dce_v6_0_bandwidth_update, ptr @dce_v6_0_vblank_get_counter, ptr @amdgpu_atombios_encoder_set_backlight_level, ptr @amdgpu_atombios_encoder_get_backlight_level, ptr @dce_v6_0_hpd_sense, ptr @dce_v6_0_hpd_set_polarity, ptr @dce_v6_0_hpd_get_gpio_reg, ptr @dce_v6_0_page_flip, ptr @dce_v6_0_crtc_get_scanoutpos, ptr @dce_v6_0_encoder_add, ptr @amdgpu_connector_add }, [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"force priority to high\0A\00", [40 x i8] zeroinitializer }, align 32
@hpd_offsets = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 3, i32 6, i32 9, i32 12, i32 15], [40 x i8] zeroinitializer }, align 32
@dce_v6_0_encoder_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @dce_v6_0_encoder_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@dce_v6_0_dac_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @amdgpu_atombios_encoder_dpms, ptr null, ptr @amdgpu_atombios_encoder_mode_fixup, ptr @dce_v6_0_encoder_prepare, ptr @dce_v6_0_encoder_commit, ptr @dce_v6_0_encoder_mode_set, ptr null, ptr @amdgpu_atombios_encoder_dac_detect, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@dce_v6_0_dig_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @amdgpu_atombios_encoder_dpms, ptr null, ptr @amdgpu_atombios_encoder_mode_fixup, ptr @dce_v6_0_encoder_prepare, ptr @dce_v6_0_encoder_commit, ptr @dce_v6_0_encoder_mode_set, ptr null, ptr @amdgpu_atombios_encoder_dig_detect, ptr null, ptr null, ptr @dce_v6_0_encoder_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@dce_v6_0_ext_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @dce_v6_0_ext_dpms, ptr null, ptr @dce_v6_0_ext_mode_fixup, ptr @dce_v6_0_ext_prepare, ptr @dce_v6_0_ext_commit, ptr @dce_v6_0_ext_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @dce_v6_0_ext_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid encoder_id: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%sabling AFMT interface @ 0x%04X for encoder 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't find encoder's connector\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No connected audio pins found!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Couldn't read Speaker Allocation Data Block: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@dce_v6_0_audio_write_sad_regs.eld_reg_to_type = internal constant { [12 x [2 x i16]], [48 x i8] } { [12 x [2 x i16]] [[2 x i16] [i16 40, i16 1], [2 x i16] [i16 41, i16 2], [2 x i16] [i16 42, i16 3], [2 x i16] [i16 43, i16 4], [2 x i16] [i16 44, i16 5], [2 x i16] [i16 45, i16 6], [2 x i16] [i16 46, i16 7], [2 x i16] [i16 47, i16 8], [2 x i16] [i16 49, i16 10], [2 x i16] [i16 50, i16 11], [2 x i16] [i16 51, i16 12], [2 x i16] [i16 53, i16 14]], [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't read SADs: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to setup AVI infoframe: %zd\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to pack AVI infoframe: %zd\0A\00", [61 x i8] zeroinitializer }, align 32
@dce_v6_0_crtc_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @dce_v6_0_set_crtc_interrupt_state, ptr @dce_v6_0_crtc_irq }, [24 x i8] zeroinitializer }, align 32
@dce_v6_0_pageflip_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @dce_v6_0_set_pageflip_interrupt_state, ptr @dce_v6_0_pageflip_irq }, [24 x i8] zeroinitializer }, align 32
@dce_v6_0_hpd_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @dce_v6_0_set_hpd_interrupt_state, ptr @dce_v6_0_hpd_irq }, [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid crtc %d\0A\00", [47 x i8] zeroinitializer }, align 32
@interrupt_status_offsets = internal constant { [6 x %struct.anon.114], [32 x i8] } { [6 x %struct.anon.114] [%struct.anon.114 { i32 6205, i32 8, i32 4, i32 131072 }, %struct.anon.114 { i32 6206, i32 8, i32 4, i32 131072 }, %struct.anon.114 { i32 6207, i32 8, i32 4, i32 131072 }, %struct.anon.114 { i32 6208, i32 8, i32 4, i32 131072 }, %struct.anon.114 { i32 6227, i32 8, i32 4, i32 131072 }, %struct.anon.114 { i32 6228, i32 8, i32 4, i32 131072 }], [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IH: IH event w/o asserted irq bit?\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IH: D%d vblank\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IH: D%d vline\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled interrupt: %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid pageflip crtc %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"amdgpu_crtc->pflip_status = %d != AMDGPU_FLIP_SUBMITTED(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid hdp %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IH: HPD%d\0A\00", [21 x i8] zeroinitializer }, align 32
@amdgpu_mode_funcs = external dso_local constant %struct.drm_mode_config_funcs, align 4
@dce_v6_0_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr null, ptr null, ptr @dce_v6_0_crtc_cursor_set2, ptr @dce_v6_0_crtc_cursor_move, ptr @dce_v6_0_crtc_gamma_set, ptr @dce_v6_0_crtc_destroy, ptr @amdgpu_display_crtc_set_config, ptr null, ptr @amdgpu_display_crtc_page_flip_target, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_get_vblank_counter_kms, ptr @amdgpu_enable_vblank_kms, ptr @amdgpu_disable_vblank_kms, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@dce_v6_0_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr @dce_v6_0_crtc_dpms, ptr @dce_v6_0_crtc_prepare, ptr @dce_v6_0_crtc_commit, ptr null, ptr @dce_v6_0_crtc_mode_fixup, ptr @dce_v6_0_crtc_mode_set, ptr null, ptr @dce_v6_0_crtc_set_base, ptr @dce_v6_0_crtc_set_base_atomic, ptr @dce_v6_0_crtc_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_crtc_get_scanout_position }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad cursor width or height %d x %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot find cursor object %x for crtc %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to pin new cursor BO (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.26, i32 179, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"x %d y %d c->x %d c->y %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate a PPLL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No FB bound\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported screen format %p4cc\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Bypassing hardware LUT due to 10 bit fb scanout.\0A\00", [46 x i8] zeroinitializer }, align 32
@vga_control_regs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 204, i32 206, i32 248, i32 249, i32 250, i32 251], [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to reserve abo before unpin\0A\00", [60 x i8] zeroinitializer }, align 32
@dig_offsets = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 768, i32 9728, i32 10496, i32 11264, i32 12032, i32 12800], [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Out of memory allocating afmt table\0A\00", [59 x i8] zeroinitializer }, align 32
@amdgpu_audio = external dso_local local_unnamed_addr global i32, align 4
@pin_offsets = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 29, i32 36], [36 x i8] zeroinitializer }, align 32
@dce_v6_0_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.40, i32 2818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016[drm] xxxx: dce_v6_0_soft_reset --- no impl!!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dce_v6_0_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/dce_v6_0.c\00", [58 x i8] zeroinitializer }, align 32
@dce_v6_0_soft_reset._entry_ptr = internal global ptr @dce_v6_0_soft_reset._entry, section ".printk_index", align 4
@switch.table.dce_v6_0_disable_dce = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 6, i32 6, i32 6, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.dce_v6_0_early_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 6, i32 6, i32 6, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.dce_v6_0_encoder_add = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 3, i32 3, i32 15, i32 3, i32 63], [40 x i8] zeroinitializer }, align 32
@switch.table.dce_v6_0_program_watermarks = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 4, i32 8, i32 3, i32 6, i32 10, i32 12, i32 16], [32 x i8] zeroinitializer }, align 32
@switch.table.dce_v6_0_set_crtc_vblank_interrupt_state = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 6864, i32 7632, i32 16592, i32 17360, i32 18128, i32 18896], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.41 = internal global [18 x i64] [i64 16, i64 8, i64 8, i64 9, i64 12, i64 13, i64 14, i64 16, i64 17, i64 20, i64 21, i64 22, i64 30, i64 32, i64 33, i64 34, i64 35, i64 37]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 30, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 8]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.58 = internal global [18 x i64] [i64 16, i64 32, i64 538982467, i64 808665410, i64 808669761, i64 808669784, i64 808671298, i64 842093121, i64 842093144, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 892420418, i64 892424769, i64 892424792, i64 892426306, i64 909199186]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 4, i64 2, i64 4]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"crtc_offsets\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 57, i32 18 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"dce_v6_0_ip_funcs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3111, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"dce_v6_0_ip_block\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3452, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"dce_v6_4_ip_block\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3461, i32 38 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3112, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"dce_v6_0_display_funcs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3403, i32 42 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 917, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"hpd_offsets\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 67, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"dce_v6_0_encoder_funcs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3296, i32 39 }
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"dce_v6_0_dac_helper_funcs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3277, i32 46 }
@___asan_gen_.91 = private unnamed_addr constant [26 x i8] c"dce_v6_0_dig_helper_funcs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3267, i32 46 }
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"dce_v6_0_ext_helper_funcs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3257, i32 46 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2126, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1738, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1670, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1111, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1203, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"eld_reg_to_type\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1247, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1278, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1462, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1468, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"dce_v6_0_crtc_irq_funcs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3422, i32 42 }
@___asan_gen_.133 = private unnamed_addr constant [28 x i8] c"dce_v6_0_pageflip_irq_funcs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3427, i32 42 }
@___asan_gen_.136 = private unnamed_addr constant [23 x i8] c"dce_v6_0_hpd_irq_funcs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3432, i32 42 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2829, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [25 x i8] c"interrupt_status_offsets\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 93, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2972, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2977, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2985, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2988, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3003, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3047, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2888, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 3092, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"dce_v6_0_crtc_funcs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2383, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant [27 x i8] c"dce_v6_0_crtc_helper_funcs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2572, i32 43 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2288, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2294, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2308, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 179, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2235, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2054, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2173, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1826, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1931, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1986, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"vga_control_regs\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1777, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2461, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant [12 x i8] c"dig_offsets\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 77, i32 23 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1760, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [12 x i8] c"pin_offsets\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1329, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2818, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [34 x i8] c"switch.table.dce_v6_0_disable_dce\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [33 x i8] c"switch.table.dce_v6_0_early_init\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [34 x i8] c"switch.table.dce_v6_0_encoder_add\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [41 x i8] c"switch.table.dce_v6_0_program_watermarks\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [54 x i8] c"switch.table.dce_v6_0_set_crtc_vblank_interrupt_state\00", align 1
@llvm.compiler.used = appending global [69 x ptr] [ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @dce_v6_0_soft_reset._entry, ptr @dce_v6_0_soft_reset._entry_ptr, ptr @crtc_offsets, ptr @dce_v6_0_ip_funcs, ptr @dce_v6_0_ip_block, ptr @dce_v6_4_ip_block, ptr @.str, ptr @dce_v6_0_display_funcs, ptr @.str.1, ptr @hpd_offsets, ptr @dce_v6_0_encoder_funcs, ptr @dce_v6_0_dac_helper_funcs, ptr @dce_v6_0_dig_helper_funcs, ptr @dce_v6_0_ext_helper_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dce_v6_0_audio_write_sad_regs.eld_reg_to_type, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @dce_v6_0_crtc_irq_funcs, ptr @dce_v6_0_pageflip_irq_funcs, ptr @dce_v6_0_hpd_irq_funcs, ptr @.str.12, ptr @interrupt_status_offsets, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @dce_v6_0_crtc_funcs, ptr @dce_v6_0_crtc_helper_funcs, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @vga_control_regs, ptr @.str.36, ptr @dig_offsets, ptr @.str.37, ptr @pin_offsets, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @switch.table.dce_v6_0_disable_dce, ptr @switch.table.dce_v6_0_early_init, ptr @switch.table.dce_v6_0_encoder_add, ptr @switch.table.dce_v6_0_program_watermarks, ptr @switch.table.dce_v6_0_set_crtc_vblank_interrupt_state], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc_offsets to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_4_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_display_funcs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_offsets to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_encoder_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_dac_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_dig_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_ext_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_audio_write_sad_regs.eld_reg_to_type to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_crtc_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_pageflip_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_hpd_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_status_offsets to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_control_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dig_offsets to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_offsets to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v6_0_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v6_0_disable_dce to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v6_0_early_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v6_0_encoder_add to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v6_0_program_watermarks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v6_0_set_crtc_vblank_interrupt_state to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_v6_0_disable_dce(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @amdgpu_atombios_has_dce_engine_info(ptr noundef %adev) #12
  br i1 %call, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 192, i32 noundef 0) #12
  %and.i = and i32 %call.i, -196609
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 192, i32 noundef %and.i, i32 noundef 0) #12
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %for.cond.dce_v6_0_get_num_crtc.exit_crit_edge

for.cond.dce_v6_0_get_num_crtc.exit_crit_edge:    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_get_num_crtc.exit

switch.lookup:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dce_v6_0_disable_dce, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dce_v6_0_get_num_crtc.exit

dce_v6_0_get_num_crtc.exit:                       ; preds = %switch.lookup, %for.cond.dce_v6_0_get_num_crtc.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %for.cond.dce_v6_0_get_num_crtc.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %retval.0.i)
  %cmp = icmp ult i32 %i.0, %retval.0.i
  br i1 %cmp, label %for.body, label %dce_v6_0_get_num_crtc.exit.if.end14_crit_edge

dce_v6_0_get_num_crtc.exit.if.end14_crit_edge:    ; preds = %dce_v6_0_get_num_crtc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.body:                                         ; preds = %dce_v6_0_get_num_crtc.exit
  %arrayidx = getelementptr [6 x i32], ptr @crtc_offsets, i32 0, i32 %i.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, 7068
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add5 = add i32 %5, 7093
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add5, i32 noundef 1, i32 noundef 0) #12
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and9 = and i32 %call8, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %and9, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add5, i32 noundef 0, i32 noundef 0) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond

if.end14:                                         ; preds = %dce_v6_0_get_num_crtc.exit.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atombios_has_dce_engine_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dce_v6_0_early_init(ptr nocapture noundef %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_endpt_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 58
  %0 = ptrtoint ptr %audio_endpt_rreg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dce_v6_0_audio_endpt_rreg, ptr %audio_endpt_rreg, align 4
  %audio_endpt_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 59
  %1 = ptrtoint ptr %audio_endpt_wreg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dce_v6_0_audio_endpt_wreg, ptr %audio_endpt_wreg, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 24
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce_v6_0_display_funcs, ptr %funcs.i, align 8
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %3 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %switch.lookup, label %dce_v6_0_get_num_crtc.exit

dce_v6_0_get_num_crtc.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %6 = ptrtoint ptr %num_crtc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num_crtc, align 8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dce_v6_0_early_init, i32 0, i32 %4
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %num_crtc25 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %8 = ptrtoint ptr %num_crtc25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %switch.load, ptr %num_crtc25, align 8
  %num_hpd = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 21
  %9 = ptrtoint ptr %num_hpd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.load, ptr %num_hpd, align 4
  %num_dig = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 22
  %10 = ptrtoint ptr %num_dig to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.load, ptr %num_dig, align 8
  %add.i = add nuw nsw i32 %switch.load, 6
  %11 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 81
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %11, align 4
  %funcs.i18 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 81, i32 2
  %13 = ptrtoint ptr %funcs.i18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dce_v6_0_crtc_irq_funcs, ptr %funcs.i18, align 4
  %pageflip_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 84
  %14 = ptrtoint ptr %pageflip_irq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %switch.load, ptr %pageflip_irq.i, align 8
  %funcs10.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 84, i32 2
  %15 = ptrtoint ptr %funcs10.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dce_v6_0_pageflip_irq_funcs, ptr %funcs10.i, align 8
  %num_hpd.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 21
  %16 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_hpd.i, align 4
  %hpd_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 85
  %18 = ptrtoint ptr %hpd_irq.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %hpd_irq.i, align 4
  %funcs14.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 85, i32 2
  %19 = ptrtoint ptr %funcs14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dce_v6_0_hpd_irq_funcs, ptr %funcs14.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %dce_v6_0_get_num_crtc.exit
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %dce_v6_0_get_num_crtc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %crtc_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 81
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %1)
  %cmp = icmp slt i32 %i.0, %1
  br i1 %cmp, label %for.body, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %pageflip_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 84
  %call4 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 8, ptr noundef %pageflip_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond1, label %for.cond1.preheader.cleanup_crit_edge

for.cond1.preheader.cleanup_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %add = add nuw nsw i32 %i.0, 1
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef %add, ptr noundef %crtc_irq) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.cond1:                                        ; preds = %for.cond1.preheader
  %call4.1 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 10, ptr noundef %pageflip_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool5.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool5.not.1, label %for.cond1.1, label %for.cond1.cleanup_crit_edge

for.cond1.cleanup_crit_edge:                      ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond1.1:                                      ; preds = %for.cond1
  %call4.2 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 12, ptr noundef %pageflip_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %tobool5.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool5.not.2, label %for.cond1.2, label %for.cond1.1.cleanup_crit_edge

for.cond1.1.cleanup_crit_edge:                    ; preds = %for.cond1.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond1.2:                                      ; preds = %for.cond1.1
  %call4.3 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 14, ptr noundef %pageflip_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %tobool5.not.3 = icmp eq i32 %call4.3, 0
  br i1 %tobool5.not.3, label %for.cond1.3, label %for.cond1.2.cleanup_crit_edge

for.cond1.2.cleanup_crit_edge:                    ; preds = %for.cond1.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond1.3:                                      ; preds = %for.cond1.2
  %call4.4 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 16, ptr noundef %pageflip_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %tobool5.not.4 = icmp eq i32 %call4.4, 0
  br i1 %tobool5.not.4, label %for.cond1.4, label %for.cond1.3.cleanup_crit_edge

for.cond1.3.cleanup_crit_edge:                    ; preds = %for.cond1.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond1.4:                                      ; preds = %for.cond1.3
  %call4.5 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 18, ptr noundef %pageflip_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.5)
  %tobool5.not.5 = icmp eq i32 %call4.5, 0
  br i1 %tobool5.not.5, label %for.cond1.5, label %for.cond1.4.cleanup_crit_edge

for.cond1.4.cleanup_crit_edge:                    ; preds = %for.cond1.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond1.5:                                      ; preds = %for.cond1.4
  %hpd_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 85
  %call11 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 42, ptr noundef %hpd_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %for.cond1.5.cleanup_crit_edge

for.cond1.5.cleanup_crit_edge:                    ; preds = %for.cond1.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %for.cond1.5
  %mode_config_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 2
  %2 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %mode_config_initialized, align 8
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 27
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @amdgpu_mode_funcs, ptr %funcs, align 4
  %async_page_flip = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 96
  %4 = ptrtoint ptr %async_page_flip to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %async_page_flip, align 1
  %max_width = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 25
  %5 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16384, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 26
  %6 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %max_height, align 4
  %preferred_depth = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 91
  %7 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %preferred_depth, align 4
  %prefer_shadow = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 92
  %8 = ptrtoint ptr %prefer_shadow to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %prefer_shadow, align 4
  %aper_base = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 1
  %9 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aper_base, align 4
  %fb_base = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 28
  %11 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fb_base, align 4
  %call29 = tail call i32 @amdgpu_display_modeset_create_props(ptr noundef %handle) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16384, ptr %max_width, align 4
  %13 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16384, ptr %max_height, align 4
  %14 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp42131 = icmp sgt i32 %15, 0
  br i1 %cmp42131, label %for.body43.lr.ph, label %if.end32.for.end50_crit_edge

if.end32.for.end50_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end50

for.body43.lr.ph:                                 ; preds = %if.end32
  %cursor_width.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 100
  %cursor_height.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 101
  br label %for.body43

for.body43:                                       ; preds = %for.inc48.for.body43_crit_edge, %for.body43.lr.ph
  %i.2132 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc49, %for.inc48.for.body43_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 1568) #15
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %for.body43.cleanup_crit_edge, label %for.inc48

for.body43.cleanup_crit_edge:                     ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc48:                                        ; preds = %for.body43
  %call2.i = tail call i32 @drm_crtc_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @dce_v6_0_crtc_funcs) #12
  %call4.i = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef nonnull %call7.i.i.i, i32 noundef 256) #12
  %crtc_id.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.2132, ptr %crtc_id.i, align 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 3, i32 %i.2132
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %max_cursor_width.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 13
  %19 = ptrtoint ptr %max_cursor_width.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64, ptr %max_cursor_width.i, align 8
  %max_cursor_height.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 14
  %20 = ptrtoint ptr %max_cursor_height.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 64, ptr %max_cursor_height.i, align 4
  %21 = ptrtoint ptr %cursor_width.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 64, ptr %cursor_width.i, align 4
  %22 = ptrtoint ptr %cursor_height.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 64, ptr %cursor_height.i, align 4
  %arrayidx11.i = getelementptr [6 x i32], ptr @crtc_offsets, i32 0, i32 %i.2132
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11.i, align 4
  %crtc_offset.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %crtc_offset.i, align 8
  %pll_id.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 21
  %26 = ptrtoint ptr %pll_id.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 255, ptr %pll_id.i, align 8
  %adjusted_clock.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 28
  %27 = ptrtoint ptr %adjusted_clock.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %adjusted_clock.i, align 4
  %encoder.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 33
  %28 = ptrtoint ptr %encoder.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %encoder.i, align 8
  %connector.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 34
  %29 = ptrtoint ptr %connector.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %connector.i, align 4
  %helper_private.i.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dce_v6_0_crtc_helper_funcs, ptr %helper_private.i.i, align 8
  %inc49 = add nuw nsw i32 %i.2132, 1
  %31 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_crtc, align 8
  %cmp42 = icmp slt i32 %inc49, %32
  br i1 %cmp42, label %for.inc48.for.body43_crit_edge, label %for.inc48.for.end50_crit_edge

for.inc48.for.end50_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end50

for.inc48.for.body43_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body43

for.end50:                                        ; preds = %for.inc48.for.end50_crit_edge, %if.end32.for.end50_crit_edge
  %call51 = tail call zeroext i1 @amdgpu_atombios_get_connector_info_from_object_table(ptr noundef %handle) #12
  br i1 %call51, label %if.then53, label %for.end50.cleanup_crit_edge

for.end50.cleanup_crit_edge:                      ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then53:                                        ; preds = %for.end50
  tail call void @amdgpu_display_print_display_setup(ptr noundef %ddev.i) #12
  %call56 = tail call fastcc i32 @dce_v6_0_afmt_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v6_0_audio_init(ptr noundef %handle)
  tail call void @drm_kms_helper_poll_init(ptr noundef %ddev.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then53.cleanup_crit_edge, %for.end50.cleanup_crit_edge, %for.body43.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %for.cond1.5.cleanup_crit_edge, %for.cond1.4.cleanup_crit_edge, %for.cond1.3.cleanup_crit_edge, %for.cond1.2.cleanup_crit_edge, %for.cond1.1.cleanup_crit_edge, %for.cond1.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond1.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ %call11, %for.cond1.5.cleanup_crit_edge ], [ %call29, %if.end14.cleanup_crit_edge ], [ -22, %for.end50.cleanup_crit_edge ], [ %call56, %if.then53.cleanup_crit_edge ], [ %call4, %for.cond1.preheader.cleanup_crit_edge ], [ %call4.1, %for.cond1.cleanup_crit_edge ], [ %call4.2, %for.cond1.1.cleanup_crit_edge ], [ %call4.3, %for.cond1.2.cleanup_crit_edge ], [ %call4.4, %for.cond1.3.cleanup_crit_edge ], [ %call4.5, %for.cond1.4.cleanup_crit_edge ], [ -12, %for.body43.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bios_hardcoded_edid = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 14
  %0 = ptrtoint ptr %bios_hardcoded_edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios_hardcoded_edid, align 8
  tail call void @kfree(ptr noundef %1) #12
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  tail call void @drm_kms_helper_poll_fini(ptr noundef %ddev.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_audio to i32))
  %2 = load i32, ptr @amdgpu_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.dce_v6_0_audio_fini.exit_crit_edge, label %if.end.i

entry.dce_v6_0_audio_fini.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_audio_fini.exit

if.end.i:                                         ; preds = %entry
  %audio.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19
  %3 = ptrtoint ptr %audio.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %audio.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.dce_v6_0_audio_fini.exit_crit_edge, label %for.cond.preheader.i

if.end.i.dce_v6_0_audio_fini.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_audio_fini.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %num_pins.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 2
  %5 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp17.i = icmp sgt i32 %6, 0
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %audio_endpt_wreg.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 59
  br label %for.body.i

for.body.i:                                       ; preds = %dce_v6_0_audio_enable.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %dce_v6_0_audio_enable.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 1, i32 %i.018.i
  %tobool.not.i.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i.i, label %for.body.i.dce_v6_0_audio_enable.exit.i_crit_edge, label %if.end.i.i

for.body.i.dce_v6_0_audio_enable.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_audio_enable.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %audio_endpt_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %audio_endpt_wreg.i.i, align 8
  %offset.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 1, i32 %i.018.i, i32 5
  %9 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i.i, align 4
  tail call void %8(ptr noundef %handle, i32 noundef %10, i32 noundef 84, i32 noundef 0) #12
  br label %dce_v6_0_audio_enable.exit.i

dce_v6_0_audio_enable.exit.i:                     ; preds = %if.end.i.i, %for.body.i.dce_v6_0_audio_enable.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %11 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_pins.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %12
  br i1 %cmp.i, label %dce_v6_0_audio_enable.exit.i.for.body.i_crit_edge, label %dce_v6_0_audio_enable.exit.i.for.end.i_crit_edge

dce_v6_0_audio_enable.exit.i.for.end.i_crit_edge: ; preds = %dce_v6_0_audio_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

dce_v6_0_audio_enable.exit.i.for.body.i_crit_edge: ; preds = %dce_v6_0_audio_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %dce_v6_0_audio_enable.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %13 = ptrtoint ptr %audio.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %audio.i, align 4
  br label %dce_v6_0_audio_fini.exit

dce_v6_0_audio_fini.exit:                         ; preds = %for.end.i, %if.end.i.dce_v6_0_audio_fini.exit_crit_edge, %entry.dce_v6_0_audio_fini.exit_crit_edge
  %num_dig.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 22
  %14 = ptrtoint ptr %num_dig.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_dig.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10.i = icmp sgt i32 %15, 0
  br i1 %cmp10.i, label %dce_v6_0_audio_fini.exit.for.body.i11_crit_edge, label %dce_v6_0_audio_fini.exit.dce_v6_0_afmt_fini.exit_crit_edge

dce_v6_0_audio_fini.exit.dce_v6_0_afmt_fini.exit_crit_edge: ; preds = %dce_v6_0_audio_fini.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_afmt_fini.exit

dce_v6_0_audio_fini.exit.for.body.i11_crit_edge:  ; preds = %dce_v6_0_audio_fini.exit
  br label %for.body.i11

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %dce_v6_0_audio_fini.exit.for.body.i11_crit_edge
  %i.011.i = phi i32 [ %inc.i9, %for.body.i11.for.body.i11_crit_edge ], [ 0, %dce_v6_0_audio_fini.exit.for.body.i11_crit_edge ]
  %arrayidx.i8 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 5, i32 %i.011.i
  %16 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i8, align 4
  tail call void @kfree(ptr noundef %17) #12
  %18 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.i8, align 4
  %inc.i9 = add nuw nsw i32 %i.011.i, 1
  %19 = ptrtoint ptr %num_dig.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_dig.i, align 8
  %cmp.i10 = icmp slt i32 %inc.i9, %20
  br i1 %cmp.i10, label %for.body.i11.for.body.i11_crit_edge, label %for.body.i11.dce_v6_0_afmt_fini.exit_crit_edge

for.body.i11.dce_v6_0_afmt_fini.exit_crit_edge:   ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_afmt_fini.exit

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i11

dce_v6_0_afmt_fini.exit:                          ; preds = %for.body.i11.dce_v6_0_afmt_fini.exit_crit_edge, %dce_v6_0_audio_fini.exit.dce_v6_0_afmt_fini.exit_crit_edge
  tail call void @drm_mode_config_cleanup(ptr noundef %ddev.i) #12
  %mode_config_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 2
  %21 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %mode_config_initialized, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  %iter.i = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 192, i32 noundef 0) #12
  %and.i = and i32 %call.i, -196609
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 192, i32 noundef %and.i, i32 noundef 0) #12
  tail call void @amdgpu_atombios_encoder_init_dig(ptr noundef %handle) #12
  %default_dispclk = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 61, i32 5
  %0 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %default_dispclk, align 4
  tail call void @amdgpu_atombios_crtc_set_disp_eng_pll(ptr noundef %handle, i32 noundef %1) #12
  %ddev.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i) #12
  %2 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i, align 4, !annotation !128
  %3 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !128
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i.i, ptr noundef nonnull %iter.i) #12
  %call150.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i) #12
  %tobool.not51.i = icmp eq ptr %call150.i, null
  br i1 %tobool.not51.i, label %entry.dce_v6_0_hpd_init.exit_crit_edge, label %while.body.lr.ph.i

entry.dce_v6_0_hpd_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_hpd_init.exit

while.body.lr.ph.i:                               ; preds = %entry
  %num_hpd.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 21
  %hpd_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 85
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call152.i = phi ptr [ %call150.i, %while.body.lr.ph.i ], [ %call1.i, %cleanup.i.while.body.i_crit_edge ]
  %hpd.i = getelementptr inbounds %struct.amdgpu_connector, ptr %call152.i, i32 0, i32 11
  %5 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hpd.i, align 4
  %7 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_hpd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i = icmp ult i32 %6, %8
  br i1 %cmp.not.i, label %if.end.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %while.body.i
  %arrayidx.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %6
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, 6153
  %call6.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #12
  %or.i = or i32 %call6.i, 268435456
  %11 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hpd.i, align 4
  %arrayidx9.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.i, align 4
  %add10.i = add i32 %14, 6153
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add10.i, i32 noundef %or.i, i32 noundef 0) #12
  %connector_type.i = getelementptr inbounds %struct.drm_connector, ptr %call152.i, i32 0, i32 10
  %15 = ptrtoint ptr %connector_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %connector_type.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end24.i [
    i32 14, label %if.end.i.if.then14.i_crit_edge
    i32 7, label %if.end.i.if.then14.i_crit_edge20
  ]

if.end.i.if.then14.i_crit_edge20:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

if.end.i.if.then14.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i.if.then14.i_crit_edge, %if.end.i.if.then14.i_crit_edge20
  %18 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hpd.i, align 4
  %arrayidx17.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17.i, align 4
  %add18.i = add i32 %21, 6152
  %call19.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add18.i, i32 noundef 0) #12
  %and.i13 = and i32 %call19.i, -65537
  %22 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hpd.i, align 4
  %arrayidx22.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx22.i, align 4
  %add23.i = add i32 %25, 6152
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add23.i, i32 noundef %and.i13, i32 noundef 0) #12
  br label %cleanup.i

if.end24.i:                                       ; preds = %if.end.i
  %26 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hpd.i, align 4
  %28 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_hpd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp.not.i.i.i = icmp ugt i32 %29, %27
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end24.i.dce_v6_0_hpd_sense.exit.i.i_crit_edge

if.end24.i.dce_v6_0_hpd_sense.exit.i.i_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_hpd_sense.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %27
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %31, 6151
  %call.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i.i.i, i32 noundef 0) #12
  %and.i.i.i = shl i32 %call.i.i.i, 7
  %32 = and i32 %and.i.i.i, 256
  %33 = xor i32 %32, 256
  br label %dce_v6_0_hpd_sense.exit.i.i

dce_v6_0_hpd_sense.exit.i.i:                      ; preds = %if.end.i.i.i, %if.end24.i.dce_v6_0_hpd_sense.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %33, %if.end.i.i.i ], [ 256, %if.end24.i.dce_v6_0_hpd_sense.exit.i.i_crit_edge ]
  %34 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_hpd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %27)
  %cmp.not.i.i = icmp ugt i32 %35, %27
  br i1 %cmp.not.i.i, label %if.end.i.i, label %dce_v6_0_hpd_sense.exit.i.i.dce_v6_0_hpd_set_polarity.exit.i_crit_edge

dce_v6_0_hpd_sense.exit.i.i.dce_v6_0_hpd_set_polarity.exit.i_crit_edge: ; preds = %dce_v6_0_hpd_sense.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_hpd_set_polarity.exit.i

if.end.i.i:                                       ; preds = %dce_v6_0_hpd_sense.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %27
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %37, 6152
  %call1.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef 0) #12
  %and.i.i = and i32 %call1.i.i, -257
  %tmp.0.i.i = or i32 %and.i.i, %retval.0.i.i.i
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef %tmp.0.i.i, i32 noundef 0) #12
  br label %dce_v6_0_hpd_set_polarity.exit.i

dce_v6_0_hpd_set_polarity.exit.i:                 ; preds = %if.end.i.i, %dce_v6_0_hpd_sense.exit.i.i.dce_v6_0_hpd_set_polarity.exit.i_crit_edge
  %38 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hpd.i, align 4
  %call29.i = call i32 @amdgpu_irq_get(ptr noundef %handle, ptr noundef %hpd_irq.i, i32 noundef %39) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %dce_v6_0_hpd_set_polarity.exit.i, %if.then14.i, %while.body.i.cleanup.i_crit_edge
  %call1.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %cleanup.i.dce_v6_0_hpd_init.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.dce_v6_0_hpd_init.exit_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_hpd_init.exit

dce_v6_0_hpd_init.exit:                           ; preds = %cleanup.i.dce_v6_0_hpd_init.exit_crit_edge, %entry.dce_v6_0_hpd_init.exit_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i) #12
  %num_pins = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 2
  %40 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp17 = icmp sgt i32 %41, 0
  br i1 %cmp17, label %for.body.lr.ph, label %dce_v6_0_hpd_init.exit.for.end_crit_edge

dce_v6_0_hpd_init.exit.for.end_crit_edge:         ; preds = %dce_v6_0_hpd_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %dce_v6_0_hpd_init.exit
  %audio_endpt_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 59
  br label %for.body

for.body:                                         ; preds = %dce_v6_0_audio_enable.exit.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dce_v6_0_audio_enable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 1, i32 %i.018
  %tobool.not.i14 = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i14, label %for.body.dce_v6_0_audio_enable.exit_crit_edge, label %if.end.i15

for.body.dce_v6_0_audio_enable.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_audio_enable.exit

if.end.i15:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %audio_endpt_wreg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %audio_endpt_wreg.i, align 8
  %offset.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 1, i32 %i.018, i32 5
  %44 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset.i, align 4
  call void %43(ptr noundef %handle, i32 noundef %45, i32 noundef 84, i32 noundef 0) #12
  br label %dce_v6_0_audio_enable.exit

dce_v6_0_audio_enable.exit:                       ; preds = %if.end.i15, %for.body.dce_v6_0_audio_enable.exit_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %46 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %47
  br i1 %cmp, label %dce_v6_0_audio_enable.exit.for.body_crit_edge, label %dce_v6_0_audio_enable.exit.for.end_crit_edge

dce_v6_0_audio_enable.exit.for.end_crit_edge:     ; preds = %dce_v6_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

dce_v6_0_audio_enable.exit.for.body_crit_edge:    ; preds = %dce_v6_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %dce_v6_0_audio_enable.exit.for.end_crit_edge, %dce_v6_0_hpd_init.exit.for.end_crit_edge
  %num_crtc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %48 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_crtc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp5.not.i = icmp eq i32 %49, 0
  br i1 %cmp5.not.i, label %for.end.dce_v6_0_pageflip_interrupt_init.exit_crit_edge, label %for.body.lr.ph.i

for.end.dce_v6_0_pageflip_interrupt_init.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_pageflip_interrupt_init.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %pageflip_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 84
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call.i16 = call i32 @amdgpu_irq_get(ptr noundef %handle, ptr noundef %pageflip_irq.i, i32 noundef %i.06.i) #12
  %inc.i = add nuw i32 %i.06.i, 1
  %50 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_crtc.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %51
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dce_v6_0_pageflip_interrupt_init.exit_crit_edge

for.body.i.dce_v6_0_pageflip_interrupt_init.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_pageflip_interrupt_init.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

dce_v6_0_pageflip_interrupt_init.exit:            ; preds = %for.body.i.dce_v6_0_pageflip_interrupt_init.exit_crit_edge, %for.end.dce_v6_0_pageflip_interrupt_init.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  %iter.i = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i) #12
  %0 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i, align 4, !annotation !128
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !128
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i.i, ptr noundef nonnull %iter.i) #12
  %call122.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i) #12
  %tobool.not23.i = icmp eq ptr %call122.i, null
  br i1 %tobool.not23.i, label %entry.dce_v6_0_hpd_fini.exit_crit_edge, label %while.body.lr.ph.i

entry.dce_v6_0_hpd_fini.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_hpd_fini.exit

while.body.lr.ph.i:                               ; preds = %entry
  %num_hpd.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 21
  %hpd_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 85
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call124.i = phi ptr [ %call122.i, %while.body.lr.ph.i ], [ %call1.i, %cleanup.i.while.body.i_crit_edge ]
  %hpd.i = getelementptr inbounds %struct.amdgpu_connector, ptr %call124.i, i32 0, i32 11
  %3 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hpd.i, align 4
  %5 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_hpd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not.i = icmp ult i32 %4, %6
  br i1 %cmp.not.i, label %if.end.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %4
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, 6153
  %call6.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #12
  %9 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hpd.i, align 4
  %arrayidx9.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9.i, align 4
  %add10.i = add i32 %12, 6153
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add10.i, i32 noundef 0, i32 noundef 0) #12
  %13 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hpd.i, align 4
  %call13.i = call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %hpd_irq.i, i32 noundef %14) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %while.body.i.cleanup.i_crit_edge
  %call1.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %cleanup.i.dce_v6_0_hpd_fini.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.dce_v6_0_hpd_fini.exit_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_hpd_fini.exit

dce_v6_0_hpd_fini.exit:                           ; preds = %cleanup.i.dce_v6_0_hpd_fini.exit_crit_edge, %entry.dce_v6_0_hpd_fini.exit_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i) #12
  %num_pins = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 2
  %15 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11 = icmp sgt i32 %16, 0
  br i1 %cmp11, label %for.body.lr.ph, label %dce_v6_0_hpd_fini.exit.for.end_crit_edge

dce_v6_0_hpd_fini.exit.for.end_crit_edge:         ; preds = %dce_v6_0_hpd_fini.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %dce_v6_0_hpd_fini.exit
  %audio_endpt_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 59
  br label %for.body

for.body:                                         ; preds = %dce_v6_0_audio_enable.exit.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dce_v6_0_audio_enable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 1, i32 %i.012
  %tobool.not.i9 = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i9, label %for.body.dce_v6_0_audio_enable.exit_crit_edge, label %if.end.i10

for.body.dce_v6_0_audio_enable.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_audio_enable.exit

if.end.i10:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %audio_endpt_wreg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %audio_endpt_wreg.i, align 8
  %offset.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 1, i32 %i.012, i32 5
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  call void %18(ptr noundef %handle, i32 noundef %20, i32 noundef 84, i32 noundef 0) #12
  br label %dce_v6_0_audio_enable.exit

dce_v6_0_audio_enable.exit:                       ; preds = %if.end.i10, %for.body.dce_v6_0_audio_enable.exit_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %21 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %dce_v6_0_audio_enable.exit.for.body_crit_edge, label %dce_v6_0_audio_enable.exit.for.end_crit_edge

dce_v6_0_audio_enable.exit.for.end_crit_edge:     ; preds = %dce_v6_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

dce_v6_0_audio_enable.exit.for.body_crit_edge:    ; preds = %dce_v6_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %dce_v6_0_audio_enable.exit.for.end_crit_edge, %dce_v6_0_hpd_fini.exit.for.end_crit_edge
  %num_crtc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %23 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_crtc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp5.not.i = icmp eq i32 %24, 0
  br i1 %cmp5.not.i, label %for.end.dce_v6_0_pageflip_interrupt_fini.exit_crit_edge, label %for.body.lr.ph.i

for.end.dce_v6_0_pageflip_interrupt_fini.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_pageflip_interrupt_fini.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %pageflip_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 84
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call.i = call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %pageflip_irq.i, i32 noundef %i.06.i) #12
  %inc.i = add nuw i32 %i.06.i, 1
  %25 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_crtc.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %26
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dce_v6_0_pageflip_interrupt_fini.exit_crit_edge

for.body.i.dce_v6_0_pageflip_interrupt_fini.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_pageflip_interrupt_fini.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

dce_v6_0_pageflip_interrupt_fini.exit:            ; preds = %for.body.i.dce_v6_0_pageflip_interrupt_fini.exit_crit_edge, %for.end.dce_v6_0_pageflip_interrupt_fini.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_display_suspend_helper(ptr noundef %handle) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call zeroext i8 @amdgpu_atombios_encoder_get_backlight_level_from_reg(ptr noundef %handle) #12
  %bl_level = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 18
  %0 = ptrtoint ptr %bl_level to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call1, ptr %bl_level, align 8
  %call2 = tail call i32 @dce_v6_0_hw_fini(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bl_level = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 18
  %0 = ptrtoint ptr %bl_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bl_level, align 8
  tail call void @amdgpu_atombios_encoder_set_backlight_level_to_reg(ptr noundef %handle, i8 noundef zeroext %1) #12
  %call = tail call i32 @dce_v6_0_hw_init(ptr noundef %handle)
  %bl_encoder = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 17
  %2 = ptrtoint ptr %bl_encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_encoder, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 24
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %backlight_get_level = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %backlight_get_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backlight_get_level, align 4
  %call6 = tail call zeroext i8 %7(ptr noundef nonnull %3) #12
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 8
  %backlight_set_level = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %backlight_set_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %backlight_set_level, align 4
  %12 = ptrtoint ptr %bl_encoder to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bl_encoder, align 4
  tail call void %11(ptr noundef %13, i8 noundef zeroext %call6) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then, %entry.if.end13_crit_edge
  %call14 = tail call i32 @amdgpu_display_resume_helper(ptr noundef %handle) #12
  ret i32 %call14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dce_v6_0_is_idle(ptr nocapture noundef readnone %handle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dce_v6_0_wait_for_idle(ptr nocapture noundef readnone %handle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_soft_reset(ptr nocapture noundef readnone %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #16
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dce_v6_0_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dce_v6_0_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_audio_endpt_rreg(ptr noundef %adev, i32 noundef %block_offset, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_endpt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 57
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %audio_endpt_idx_lock) #12
  %add = add i32 %block_offset, 6016
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %reg, i32 noundef 0) #12
  %add5 = add i32 %block_offset, 6017
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add5, i32 noundef 0) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %audio_endpt_idx_lock, i32 noundef %call2) #12
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_audio_endpt_wreg(ptr noundef %adev, i32 noundef %block_offset, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_endpt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 57
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %audio_endpt_idx_lock) #12
  %add = add i32 %block_offset, 6016
  %or = or i32 %reg, 256
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %or, i32 noundef 0) #12
  %add5 = add i32 %block_offset, 6017
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add5, i32 noundef %v, i32 noundef 0) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %audio_endpt_idx_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_bandwidth_update(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_config_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 2
  %0 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode_config_initialized, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @amdgpu_display_update_priority(ptr noundef %adev) #12
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %2 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp72 = icmp sgt i32 %3, 0
  br i1 %cmp72, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond7.preheader:                              ; preds = %for.body
  %4 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp1076 = icmp sgt i32 %.pr, 0
  br i1 %cmp1076, label %for.cond7.preheader.for.body11_crit_edge, label %for.cond7.preheader.cleanup_crit_edge

for.cond7.preheader.cleanup_crit_edge:            ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond7.preheader.for.body11_crit_edge:         ; preds = %for.cond7.preheader
  br label %for.body11

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.074 = phi i32 [ %inc6, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %num_heads.073 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 3, i32 %i.074
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 8, !range !127
  %9 = zext i8 %8 to i32
  %spec.select = add i32 %num_heads.073, %9
  %inc6 = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc6, %3
  br i1 %exitcond.not, label %for.cond7.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond7.preheader.for.body11_crit_edge
  %i.177 = phi i32 [ %add37, %for.body11.for.body11_crit_edge ], [ 0, %for.cond7.preheader.for.body11_crit_edge ]
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 3, i32 %i.177
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 4
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 12
  %add = or i32 %i.177, 1
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 3, i32 %add
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18, align 4
  %mode20 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 12
  %call = tail call fastcc i32 @dce_v6_0_line_buffer_adjust(ptr noundef %adev, ptr noundef %11, ptr noundef %mode, ptr noundef %mode20), !range !129
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx14, align 4
  tail call fastcc void @dce_v6_0_program_watermarks(ptr noundef %adev, ptr noundef %15, i32 noundef %call, i32 noundef %spec.select)
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 4
  %call31 = tail call fastcc i32 @dce_v6_0_line_buffer_adjust(ptr noundef %adev, ptr noundef %17, ptr noundef %mode20, ptr noundef %mode), !range !129
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx18, align 4
  tail call fastcc void @dce_v6_0_program_watermarks(ptr noundef %adev, ptr noundef %19, i32 noundef %call31, i32 noundef %spec.select)
  %add37 = add i32 %i.177, 2
  %20 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_crtc, align 8
  %cmp10 = icmp slt i32 %add37, %21
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.body11.cleanup_crit_edge

for.body11.cleanup_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

cleanup:                                          ; preds = %for.body11.cleanup_crit_edge, %for.cond7.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_vblank_get_counter(ptr noundef %adev, i32 noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %crtc)
  %cmp.not = icmp sgt i32 %1, %crtc
  br i1 %cmp.not, label %if.else, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [6 x i32], ptr @crtc_offsets, i32 0, i32 %crtc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 7078
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.else ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_set_backlight_level(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @amdgpu_atombios_encoder_get_backlight_level(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_v6_0_hpd_sense(ptr noundef %adev, i32 noundef %hpd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hpd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 21
  %0 = ptrtoint ptr %num_hpd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_hpd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %hpd)
  %cmp.not = icmp ugt i32 %1, %hpd
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %hpd
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 6151
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool1.not, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_hpd_set_polarity(ptr noundef %adev, i32 noundef %hpd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hpd.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 21
  %0 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_hpd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %hpd)
  %cmp.not.i = icmp ugt i32 %1, %hpd
  br i1 %cmp.not.i, label %if.end.i, label %entry.dce_v6_0_hpd_sense.exit_crit_edge

entry.dce_v6_0_hpd_sense.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_hpd_sense.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %hpd
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %3, 6151
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0) #12
  %and.i = shl i32 %call.i, 7
  %4 = and i32 %and.i, 256
  %5 = xor i32 %4, 256
  br label %dce_v6_0_hpd_sense.exit

dce_v6_0_hpd_sense.exit:                          ; preds = %if.end.i, %entry.dce_v6_0_hpd_sense.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.end.i ], [ 256, %entry.dce_v6_0_hpd_sense.exit_crit_edge ]
  %6 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_hpd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %hpd)
  %cmp.not = icmp ugt i32 %7, %hpd
  br i1 %cmp.not, label %if.end, label %dce_v6_0_hpd_sense.exit.cleanup_crit_edge

dce_v6_0_hpd_sense.exit.cleanup_crit_edge:        ; preds = %dce_v6_0_hpd_sense.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %dce_v6_0_hpd_sense.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %hpd
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, 6152
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call1, -257
  %tmp.0 = or i32 %and, %retval.0.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dce_v6_0_hpd_sense.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dce_v6_0_hpd_get_gpio_reg(ptr nocapture noundef readnone %adev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 6509
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_page_flip(ptr noundef %adev, i32 noundef %crtc_id, i64 noundef %crtc_base, i1 noundef zeroext %async) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 3, i32 %crtc_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %fb1 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb1, align 4
  %crtc_offset = getelementptr inbounds %struct.amdgpu_crtc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %7, 6674
  %cond = zext i1 %async to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %cond, i32 noundef 0) #12
  %8 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_offset, align 8
  %add3 = add i32 %9, 6662
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pitches, align 8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format, align 8
  %14 = getelementptr inbounds %struct.drm_format_info, ptr %13, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 2
  %conv = zext i8 %16 to i32
  %div = udiv i32 %11, %conv
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add3, i32 noundef %div, i32 noundef 0) #12
  %17 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crtc_offset, align 8
  %add7 = add i32 %18, 6663
  %shr = lshr i64 %crtc_base, 32
  %conv9 = trunc i64 %shr to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add7, i32 noundef %conv9, i32 noundef 0) #12
  %19 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crtc_offset, align 8
  %add11 = add i32 %20, 6660
  %conv12 = trunc i64 %crtc_base to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add11, i32 noundef %conv12, i32 noundef 0) #12
  %21 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crtc_offset, align 8
  %add14 = add i32 %22, 6660
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add14, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_crtc_get_scanoutpos(ptr noundef %adev, i32 noundef %crtc, ptr nocapture noundef writeonly %vbl, ptr nocapture noundef writeonly %position) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crtc)
  %cmp = icmp slt i32 %crtc, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %crtc)
  %cmp1.not = icmp sgt i32 %1, %crtc
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [6 x i32], ptr @crtc_offsets, i32 0, i32 %crtc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 7053
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %4 = ptrtoint ptr %vbl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %vbl, align 4
  %add3 = add i32 %3, 7076
  %call4 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add3, i32 noundef 0) #12
  %5 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call4, ptr %position, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_encoder_add(ptr noundef %adev, i32 noundef %encoder_enum, i32 noundef %supported_device, i16 noundef zeroext %caps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %encoder_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %encoder_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %encoder_enum6 = getelementptr i8, ptr %.pn, i32 68
  %1 = ptrtoint ptr %encoder_enum6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %encoder_enum6, align 4
  %cmp7 = icmp eq i32 %2, %encoder_enum
  br i1 %cmp7, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %devices = getelementptr i8, ptr %.pn, i32 76
  %3 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devices, align 4
  %or = or i32 %4, %supported_device
  store i32 %or, ptr %devices, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 236) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %6 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc, align 8
  %switch.tableidx = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 6
  br i1 %8, label %switch.lookup, label %if.end15.sw.epilog_crit_edge

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.dce_v6_0_encoder_add, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end15.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.end15.sw.epilog_crit_edge ]
  %possible_crtcs21 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %possible_crtcs21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %possible_crtcs21, align 4
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %enc_priv, align 8
  %encoder_enum22 = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %encoder_enum22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %encoder_enum, ptr %encoder_enum22, align 8
  %and = and i32 %encoder_enum, 255
  %encoder_id = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %encoder_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %encoder_id, align 4
  %devices23 = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %devices23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %supported_device, ptr %devices23, align 8
  %rmx_type = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %rmx_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rmx_type, align 8
  %underscan_type = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %underscan_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %underscan_type, align 4
  %is_ext_encoder = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 14
  %17 = ptrtoint ptr %is_ext_encoder to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_ext_encoder, align 8
  %caps24 = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 15
  %18 = ptrtoint ptr %caps24 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %caps, ptr %caps24, align 2
  %trunc = trunc i32 %encoder_enum to i8
  %19 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %trunc, label %sw.epilog.cleanup_crit_edge [
    i8 21, label %sw.epilog.sw.bb26_crit_edge
    i8 22, label %sw.epilog.sw.bb26_crit_edge131
    i8 20, label %sw.epilog.sw.bb28_crit_edge
    i8 30, label %sw.epilog.sw.bb28_crit_edge132
    i8 32, label %sw.epilog.sw.bb28_crit_edge133
    i8 33, label %sw.epilog.sw.bb28_crit_edge134
    i8 37, label %sw.epilog.sw.bb28_crit_edge135
    i8 8, label %sw.epilog.sw.bb50_crit_edge
    i8 9, label %sw.epilog.sw.bb50_crit_edge136
    i8 12, label %sw.epilog.sw.bb50_crit_edge137
    i8 13, label %sw.epilog.sw.bb50_crit_edge138
    i8 14, label %sw.epilog.sw.bb50_crit_edge139
    i8 16, label %sw.epilog.sw.bb50_crit_edge140
    i8 17, label %sw.epilog.sw.bb50_crit_edge141
    i8 35, label %sw.epilog.sw.bb50_crit_edge142
    i8 34, label %sw.epilog.sw.bb50_crit_edge143
  ]

sw.epilog.sw.bb50_crit_edge143:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb50

sw.epilog.sw.bb50_crit_edge142:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb50

sw.epilog.sw.bb50_crit_edge141:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb50

sw.epilog.sw.bb50_crit_edge140:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb50

sw.epilog.sw.bb50_crit_edge139:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb50

sw.epilog.sw.bb50_crit_edge138:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb50

sw.epilog.sw.bb50_crit_edge137:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb50

sw.epilog.sw.bb50_crit_edge136:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb50

sw.epilog.sw.bb50_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb50

sw.epilog.sw.bb28_crit_edge135:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb28

sw.epilog.sw.bb28_crit_edge134:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb28

sw.epilog.sw.bb28_crit_edge133:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb28

sw.epilog.sw.bb28_crit_edge132:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb28

sw.epilog.sw.bb28_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb28

sw.epilog.sw.bb26_crit_edge131:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb26

sw.epilog.sw.bb26_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb26

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb26:                                          ; preds = %sw.epilog.sw.bb26_crit_edge, %sw.epilog.sw.bb26_crit_edge131
  %call27 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dce_v6_0_encoder_funcs, i32 noundef 1, ptr noundef null) #12
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dce_v6_0_dac_helper_funcs, ptr %helper_private.i, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %sw.epilog.sw.bb28_crit_edge, %sw.epilog.sw.bb28_crit_edge132, %sw.epilog.sw.bb28_crit_edge133, %sw.epilog.sw.bb28_crit_edge134, %sw.epilog.sw.bb28_crit_edge135
  %and30 = and i32 %supported_device, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %rmx_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %rmx_type, align 8
  %call34 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dce_v6_0_encoder_funcs, i32 noundef 3, ptr noundef null) #12
  %call35 = tail call ptr @amdgpu_atombios_encoder_get_lcd_info(ptr noundef nonnull %call7.i.i) #12
  br label %if.end49

if.else:                                          ; preds = %sw.bb28
  %and38 = and i32 %supported_device, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else44, label %if.then40

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call41 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dce_v6_0_encoder_funcs, i32 noundef 1, ptr noundef null) #12
  %call42 = tail call ptr @amdgpu_atombios_encoder_get_dig_info(ptr noundef nonnull %call7.i.i) #12
  br label %if.end49

if.else44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dce_v6_0_encoder_funcs, i32 noundef 2, ptr noundef null) #12
  %call46 = tail call ptr @amdgpu_atombios_encoder_get_dig_info(ptr noundef nonnull %call7.i.i) #12
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then40, %if.then32
  %call42.sink = phi ptr [ %call42, %if.then40 ], [ %call46, %if.else44 ], [ %call35, %if.then32 ]
  %22 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call42.sink, ptr %enc_priv, align 8
  %helper_private.i122 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %23 = ptrtoint ptr %helper_private.i122 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dce_v6_0_dig_helper_funcs, ptr %helper_private.i122, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %sw.epilog.sw.bb50_crit_edge, %sw.epilog.sw.bb50_crit_edge136, %sw.epilog.sw.bb50_crit_edge137, %sw.epilog.sw.bb50_crit_edge138, %sw.epilog.sw.bb50_crit_edge139, %sw.epilog.sw.bb50_crit_edge140, %sw.epilog.sw.bb50_crit_edge141, %sw.epilog.sw.bb50_crit_edge142, %sw.epilog.sw.bb50_crit_edge143
  %24 = ptrtoint ptr %is_ext_encoder to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %is_ext_encoder, align 8
  %and53 = and i32 %supported_device, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %and59 = and i32 %supported_device, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %. = select i1 %tobool60.not, i32 2, i32 1
  %.sink127 = select i1 %tobool54.not, i32 %., i32 3
  %call62 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dce_v6_0_encoder_funcs, i32 noundef %.sink127, ptr noundef null) #12
  %helper_private.i123 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %25 = ptrtoint ptr %helper_private.i123 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dce_v6_0_ext_helper_funcs, ptr %helper_private.i123, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb50, %if.end49, %sw.bb26, %sw.epilog.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_connector_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_display_update_priority(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dce_v6_0_line_buffer_adjust(ptr noundef %adev, ptr nocapture noundef readonly %amdgpu_crtc, ptr noundef readnone %mode, ptr noundef readnone %other_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %amdgpu_crtc, i32 0, i32 1
  %0 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crtc_id, align 8
  %mul = shl i32 %1, 3
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %amdgpu_crtc, i32 0, i32 11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %tobool1.not = icmp eq ptr %mode, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %tobool2.not = icmp eq ptr %other_mode, null
  %.33 = select i1 %tobool2.not, i32 2097152, i32 0
  %.34 = select i1 %tobool2.not, i32 2, i32 1
  %tmp.0 = select i1 %or.cond, i32 0, i32 %.33
  %buffer_alloc.0 = select i1 %or.cond, i32 0, i32 %.34
  %crtc_offset = getelementptr inbounds %struct.amdgpu_crtc, ptr %amdgpu_crtc, i32 0, i32 4
  %4 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %5, 6851
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 0) #12
  %add6 = add i32 %mul, 808
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add6, i32 noundef %buffer_alloc.0, i32 noundef 0) #12
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %6 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp37.not = icmp eq i32 %7, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %if.end11.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add6, i32 noundef 0) #12
  %and = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end11:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #12
  %inc = add nuw i32 %i.038, 1
  %9 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %phi.sel = select i1 %tobool2.not, i32 16384, i32 8192
  %cond = select i1 %or.cond, i32 8192, i32 %phi.sel
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not = icmp eq i8 %12, 0
  %or.cond35 = or i1 %tobool1.not, %tobool14.not
  %retval.0 = select i1 %or.cond35, i32 0, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v6_0_program_watermarks(ptr noundef %adev, ptr noundef %amdgpu_crtc, i32 noundef %lb_size, i32 noundef %num_heads) unnamed_addr #0 align 64 {
entry:
  %wm_low = alloca %struct.dce6_wm_params, align 4
  %wm_high = alloca %struct.dce6_wm_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.drm_crtc, ptr %amdgpu_crtc, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wm_low) #12
  %0 = call ptr @memset(ptr %wm_low, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wm_high) #12
  %1 = getelementptr inbounds i8, ptr %wm_high, i32 28
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !128
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %amdgpu_crtc, i32 0, i32 11
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_heads)
  %tobool3.not = icmp eq i32 %num_heads, 0
  %or.cond = or i1 %tobool3.not, %tobool.not
  %tobool5.not = icmp eq ptr %mode1, null
  %or.cond356 = select i1 %or.cond, i1 true, i1 %tobool5.not
  br i1 %or.cond356, label %entry.if.end191_crit_edge, label %if.then

entry.if.end191_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

if.then:                                          ; preds = %entry
  %crtc_hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %amdgpu_crtc, i32 0, i32 12, i32 13
  %5 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %crtc_hdisplay, align 4
  %conv = zext i16 %6 to i64
  %mul = mul nuw nsw i64 %conv, 1000000
  %7 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !130

if.then168.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %8
  br label %if.else162.i.i465

if.else174.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %mul) #17, !srcloc !131
  %asmresult1.i.i.i = extractvalue { i64, i64 } %9, 1
  %extract.t658 = trunc i64 %asmresult1.i.i.i to i32
  br label %if.else162.i.i465

if.else162.i.i465:                                ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t658, %if.else174.i.i ]
  %crtc_htotal = getelementptr inbounds %struct.drm_crtc, ptr %amdgpu_crtc, i32 0, i32 12, i32 18
  %10 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %crtc_htotal, align 2
  %conv7 = zext i16 %11 to i64
  %mul8 = mul nuw nsw i64 %conv7, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul8)
  %cmp164.i.i464 = icmp ult i64 %mul8, 4294967296
  br i1 %cmp164.i.i464, label %if.then168.i.i469, label %if.else174.i.i471, !prof !130

if.then168.i.i469:                                ; preds = %if.else162.i.i465
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i466 = trunc i64 %mul8 to i32
  %div172.i.i467 = udiv i32 %conv169.i.i466, %8
  br label %div_u64.exit473

if.else174.i.i471:                                ; preds = %if.else162.i.i465
  call void @__sanitizer_cov_trace_pc() #14
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %mul8) #17, !srcloc !131
  %asmresult1.i.i.i470 = extractvalue { i64, i64 } %12, 1
  %extract.t660 = trunc i64 %asmresult1.i.i.i470 to i32
  br label %div_u64.exit473

div_u64.exit473:                                  ; preds = %if.else174.i.i471, %if.then168.i.i469
  %dividend.addr.0.i.i472.off0 = phi i32 [ %div172.i.i467, %if.then168.i.i469 ], [ %extract.t660, %if.else174.i.i471 ]
  %13 = tail call i32 @llvm.umin.i32(i32 %dividend.addr.0.i.i472.off0, i32 65535)
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 2049, i32 noundef 0) #12
  %and.i = lshr i32 %call.i, 12
  %shr.i = and i32 %and.i, 15
  %switch.tableidx = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 8
  br i1 %14, label %switch.lookup, label %div_u64.exit473.si_get_number_of_dram_channels.exit_crit_edge

div_u64.exit473.si_get_number_of_dram_channels.exit_crit_edge: ; preds = %div_u64.exit473
  call void @__sanitizer_cov_trace_pc() #14
  br label %si_get_number_of_dram_channels.exit

switch.lookup:                                    ; preds = %div_u64.exit473
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.dce_v6_0_program_watermarks, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %si_get_number_of_dram_channels.exit

si_get_number_of_dram_channels.exit:              ; preds = %switch.lookup, %div_u64.exit473.si_get_number_of_dram_channels.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %div_u64.exit473.si_get_number_of_dram_channels.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 13
  %16 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dpm_enabled, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %si_get_number_of_dram_channels.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 @amdgpu_dpm_get_mclk(ptr noundef %adev, i1 noundef zeroext false) #12
  %call19 = tail call i32 @amdgpu_dpm_get_sclk(ptr noundef %adev, i1 noundef zeroext false) #12
  br label %if.end

if.else:                                          ; preds = %si_get_number_of_dram_channels.exit
  call void @__sanitizer_cov_trace_pc() #14
  %current_mclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 2
  %18 = ptrtoint ptr %current_mclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %current_mclk, align 8
  %current_sclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 1
  %20 = ptrtoint ptr %current_sclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_sclk, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then16
  %mul18.sink.in = phi i32 [ %19, %if.else ], [ %call17, %if.then16 ]
  %mul20.sink.in = phi i32 [ %21, %if.else ], [ %call19, %if.then16 ]
  %mul20.sink = mul i32 %mul20.sink.in, 10
  %mul18.sink = mul i32 %mul18.sink.in, 10
  %22 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul18.sink, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul20.sink, ptr %24, align 4
  %26 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode1, align 4
  %disp_clk = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 3
  %28 = ptrtoint ptr %disp_clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %disp_clk, align 4
  %29 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %crtc_hdisplay, align 4
  %conv29 = zext i16 %30 to i32
  %src_width = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 4
  %31 = ptrtoint ptr %src_width to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv29, ptr %src_width, align 4
  %active_time30 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 5
  %32 = ptrtoint ptr %active_time30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dividend.addr.0.i.i.off0, ptr %active_time30, align 4
  %sub = sub i32 %13, %dividend.addr.0.i.i.off0
  %blank_time = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 6
  %33 = ptrtoint ptr %blank_time to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %blank_time, align 4
  %interlaced = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 7
  %flags = getelementptr inbounds %struct.drm_crtc, ptr %amdgpu_crtc, i32 0, i32 12, i32 11
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %36 = trunc i32 %35 to i8
  %37 = lshr i8 %36, 4
  %38 = and i8 %37, 1
  %39 = ptrtoint ptr %interlaced to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %interlaced, align 4
  %vsc = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 8
  %vsc36 = getelementptr inbounds %struct.amdgpu_crtc, ptr %amdgpu_crtc, i32 0, i32 18
  %40 = ptrtoint ptr %vsc36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vsc36, align 8
  %42 = ptrtoint ptr %vsc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %vsc, align 4
  %vtaps = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 12
  %rmx_type = getelementptr inbounds %struct.amdgpu_crtc, ptr %amdgpu_crtc, i32 0, i32 15
  %43 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rmx_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp37.not = icmp eq i32 %44, 0
  %spec.store.select358 = select i1 %cmp37.not, i32 1, i32 2
  %45 = ptrtoint ptr %vtaps to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select358, ptr %vtaps, align 4
  %bytes_per_pixel = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 10
  %46 = ptrtoint ptr %bytes_per_pixel to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %bytes_per_pixel, align 4
  %lb_size42 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 11
  %47 = ptrtoint ptr %lb_size42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %lb_size, ptr %lb_size42, align 4
  %48 = ptrtoint ptr %wm_high to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i, ptr %wm_high, align 4
  %num_heads44 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_high, i32 0, i32 9
  %49 = ptrtoint ptr %num_heads44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %num_heads, ptr %num_heads44, align 4
  %50 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dpm_enabled, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool47.not = icmp eq i8 %51, 0
  br i1 %tobool47.not, label %if.else55, label %if.then48

if.then48:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call i32 @amdgpu_dpm_get_mclk(ptr noundef %adev, i1 noundef zeroext true) #12
  %call52 = tail call i32 @amdgpu_dpm_get_sclk(ptr noundef %adev, i1 noundef zeroext true) #12
  br label %if.end64

if.else55:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %current_mclk57 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 2
  %52 = ptrtoint ptr %current_mclk57 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %current_mclk57, align 8
  %current_sclk61 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 1
  %54 = ptrtoint ptr %current_sclk61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %current_sclk61, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else55, %if.then48
  %mul50.sink.in = phi i32 [ %53, %if.else55 ], [ %call49, %if.then48 ]
  %mul53.sink.in = phi i32 [ %55, %if.else55 ], [ %call52, %if.then48 ]
  %mul53.sink = mul i32 %mul53.sink.in, 10
  %mul50.sink = mul i32 %mul50.sink.in, 10
  %56 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul50.sink, ptr %56, align 4
  %58 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul53.sink, ptr %58, align 4
  %60 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mode1, align 4
  %disp_clk66 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 3
  %62 = ptrtoint ptr %disp_clk66 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %disp_clk66, align 4
  %63 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %crtc_hdisplay, align 4
  %conv68 = zext i16 %64 to i32
  %src_width69 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 4
  %65 = ptrtoint ptr %src_width69 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv68, ptr %src_width69, align 4
  %active_time70 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 5
  %66 = ptrtoint ptr %active_time70 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %dividend.addr.0.i.i.off0, ptr %active_time70, align 4
  %blank_time73 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 6
  %67 = ptrtoint ptr %blank_time73 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub, ptr %blank_time73, align 4
  %interlaced74 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 7
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %70 = trunc i32 %69 to i8
  %71 = lshr i8 %70, 4
  %72 = and i8 %71, 1
  %73 = ptrtoint ptr %interlaced74 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %interlaced74, align 4
  %vsc81 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 8
  %74 = ptrtoint ptr %vsc36 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vsc36, align 8
  %76 = ptrtoint ptr %vsc81 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %vsc81, align 4
  %vtaps83 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 12
  %77 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rmx_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp85.not = icmp eq i32 %78, 0
  %spec.store.select359 = select i1 %cmp85.not, i32 1, i32 2
  %79 = ptrtoint ptr %vtaps83 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %spec.store.select359, ptr %vtaps83, align 4
  %bytes_per_pixel90 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 10
  %80 = ptrtoint ptr %bytes_per_pixel90 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %bytes_per_pixel90, align 4
  %lb_size91 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 11
  %81 = ptrtoint ptr %lb_size91 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %lb_size, ptr %lb_size91, align 4
  %82 = ptrtoint ptr %wm_low to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i, ptr %wm_low, align 4
  %num_heads93 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm_low, i32 0, i32 9
  %83 = ptrtoint ptr %num_heads93 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %num_heads, ptr %num_heads93, align 4
  %call94 = call fastcc i32 @dce_v6_0_latency_watermark(ptr noundef nonnull %wm_high)
  %84 = tail call i32 @llvm.umin.i32(i32 %call94, i32 65535)
  %call102 = call fastcc i32 @dce_v6_0_latency_watermark(ptr noundef nonnull %wm_low)
  %85 = tail call i32 @llvm.umin.i32(i32 %call102, i32 65535)
  %call110 = call fastcc zeroext i1 @dce_v6_0_average_bandwidth_vs_dram_bandwidth_for_display(ptr noundef nonnull %wm_high)
  br i1 %call110, label %lor.lhs.false, label %if.end64.if.then117_crit_edge

if.end64.if.then117_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then117

lor.lhs.false:                                    ; preds = %if.end64
  %86 = ptrtoint ptr %active_time30 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %active_time30, align 4
  %88 = ptrtoint ptr %blank_time to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %blank_time, align 4
  %add.i.i474 = add i32 %89, %87
  %shl.i.i475 = shl i32 %add.i.i474, 12
  %.fca.0.insert21.i.i = insertvalue [1 x i32] poison, i32 %shl.i.i475, 0
  %call.i.i = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert21.i.i, [1 x i32] [i32 4096000]) #12
  %90 = ptrtoint ptr %bytes_per_pixel to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bytes_per_pixel, align 4
  %shl2.i.i = shl i32 %91, 12
  %92 = ptrtoint ptr %src_width to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %src_width, align 4
  %shl4.i.i = shl i32 %93, 12
  %conv.i.i = zext i32 %shl4.i.i to i64
  %conv5.i.i = zext i32 %shl2.i.i to i64
  %mul.i.i476 = mul nuw i64 %conv.i.i, %conv5.i.i
  %shr.i.i477 = lshr exact i64 %mul.i.i476, 12
  %conv8.i.i = and i64 %shr.i.i477, 4294963200
  %94 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vsc, align 4
  %conv9.i.i = zext i32 %95 to i64
  %mul10.i.i = mul nuw i64 %conv8.i.i, %conv9.i.i
  %conv.i.i.i = shl i64 %mul10.i.i, 1
  %96 = and i64 %mul10.i.i, 17590038560768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %96)
  %cmp169.i.i.i = icmp eq i64 %96, 0
  br i1 %cmp169.i.i.i, label %if.then173.i.i.i, label %if.else179.i.i.i, !prof !130

if.then173.i.i.i:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %conv174.i.i.i = trunc i64 %conv.i.i.i to i32
  %div177.i.i.i = udiv i32 %conv174.i.i.i, %call.i.i
  %conv178.i.i.i = zext i32 %div177.i.i.i to i64
  br label %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit

if.else179.i.i.i:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i.i.i = and i64 %conv.i.i.i, 35184372080640
  %97 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i.i, i64 %shl.i.i.i) #17, !srcloc !131
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %97, 1
  br label %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit

dce_v6_0_average_bandwidth_vs_available_bandwidth.exit: ; preds = %if.else179.i.i.i, %if.then173.i.i.i
  %tmp.0.i.i.i = phi i64 [ %conv178.i.i.i, %if.then173.i.i.i ], [ %asmresult1.i.i.i.i, %if.else179.i.i.i ]
  %add185.i.i.i = add i64 %tmp.0.i.i.i, 1
  %sum.shift.i.i = lshr i64 %add185.i.i.i, 13
  %shr1730.i.i = trunc i64 %sum.shift.i.i to i32
  %shr17.i.i = and i32 %shr1730.i.i, 1048575
  %call1.i = call fastcc i32 @dce_v6_0_available_bandwidth(ptr noundef nonnull %wm_high) #12
  %98 = ptrtoint ptr %num_heads44 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_heads44, align 4
  %div.i = udiv i32 %call1.i, %99
  call void @__sanitizer_cov_trace_cmp4(i32 %shr17.i.i, i32 %div.i)
  %cmp.not.i.not = icmp ugt i32 %shr17.i.i, %div.i
  br i1 %cmp.not.i.not, label %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit.if.then117_crit_edge, label %lor.lhs.false112

dce_v6_0_average_bandwidth_vs_available_bandwidth.exit.if.then117_crit_edge: ; preds = %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then117

lor.lhs.false112:                                 ; preds = %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %95)
  %cmp.i = icmp ugt i32 %95, 4096
  br i1 %cmp.i, label %lor.lhs.false112.dce_v6_0_check_latency_hiding.exit_crit_edge, label %if.else.i

lor.lhs.false112.dce_v6_0_check_latency_hiding.exit_crit_edge: ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_check_latency_hiding.exit

if.else.i:                                        ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %lb_size42 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %lb_size42, align 4
  %div.i478 = udiv i32 %101, %93
  %102 = ptrtoint ptr %vtaps to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %vtaps, align 4
  %add1.i = add i32 %103, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i478, i32 %add1.i)
  %cmp2.not.i = icmp ugt i32 %div.i478, %add1.i
  %..i = select i1 %cmp2.not.i, i32 2, i32 1
  br label %dce_v6_0_check_latency_hiding.exit

dce_v6_0_check_latency_hiding.exit:               ; preds = %if.else.i, %lor.lhs.false112.dce_v6_0_check_latency_hiding.exit_crit_edge
  %latency_tolerant_lines.0.i = phi i32 [ 1, %lor.lhs.false112.dce_v6_0_check_latency_hiding.exit_crit_edge ], [ %..i, %if.else.i ]
  %mul.i = mul i32 %latency_tolerant_lines.0.i, %add.i.i474
  %add7.i = add i32 %mul.i, %89
  %call.i479 = call fastcc i32 @dce_v6_0_latency_watermark(ptr noundef nonnull %wm_high) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i479, i32 %add7.i)
  %cmp8.not.i.not = icmp ugt i32 %call.i479, %add7.i
  br i1 %cmp8.not.i.not, label %dce_v6_0_check_latency_hiding.exit.if.then117_crit_edge, label %lor.lhs.false114

dce_v6_0_check_latency_hiding.exit.if.then117_crit_edge: ; preds = %dce_v6_0_check_latency_hiding.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then117

lor.lhs.false114:                                 ; preds = %dce_v6_0_check_latency_hiding.exit
  %disp_priority = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 23
  %104 = ptrtoint ptr %disp_priority to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %disp_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %cmp115 = icmp eq i32 %105, 2
  br i1 %cmp115, label %lor.lhs.false114.if.then117_crit_edge, label %lor.lhs.false114.if.end119_crit_edge

lor.lhs.false114.if.end119_crit_edge:             ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

lor.lhs.false114.if.then117_crit_edge:            ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then117

if.then117:                                       ; preds = %lor.lhs.false114.if.then117_crit_edge, %dce_v6_0_check_latency_hiding.exit.if.then117_crit_edge, %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit.if.then117_crit_edge, %if.end64.if.then117_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1) #12
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %lor.lhs.false114.if.end119_crit_edge
  %priority_b_cnt.0 = phi i32 [ 1048576, %if.then117 ], [ 0, %lor.lhs.false114.if.end119_crit_edge ]
  %call120 = call fastcc zeroext i1 @dce_v6_0_average_bandwidth_vs_dram_bandwidth_for_display(ptr noundef nonnull %wm_low)
  br i1 %call120, label %lor.lhs.false121, label %if.end119.if.then130_crit_edge

if.end119.if.then130_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then130

lor.lhs.false121:                                 ; preds = %if.end119
  %106 = ptrtoint ptr %active_time70 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %active_time70, align 4
  %108 = ptrtoint ptr %blank_time73 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %blank_time73, align 4
  %add.i.i482 = add i32 %109, %107
  %shl.i.i483 = shl i32 %add.i.i482, 12
  %.fca.0.insert21.i.i484 = insertvalue [1 x i32] poison, i32 %shl.i.i483, 0
  %call.i.i485 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert21.i.i484, [1 x i32] [i32 4096000]) #12
  %110 = ptrtoint ptr %bytes_per_pixel90 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bytes_per_pixel90, align 4
  %shl2.i.i487 = shl i32 %111, 12
  %112 = ptrtoint ptr %src_width69 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %src_width69, align 4
  %shl4.i.i489 = shl i32 %113, 12
  %conv.i.i490 = zext i32 %shl4.i.i489 to i64
  %conv5.i.i491 = zext i32 %shl2.i.i487 to i64
  %mul.i.i492 = mul nuw i64 %conv.i.i490, %conv5.i.i491
  %shr.i.i493 = lshr exact i64 %mul.i.i492, 12
  %conv8.i.i494 = and i64 %shr.i.i493, 4294963200
  %114 = ptrtoint ptr %vsc81 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vsc81, align 4
  %conv9.i.i496 = zext i32 %115 to i64
  %mul10.i.i497 = mul nuw i64 %conv8.i.i494, %conv9.i.i496
  %conv.i.i.i498 = shl i64 %mul10.i.i497, 1
  %116 = and i64 %mul10.i.i497, 17590038560768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %116)
  %cmp169.i.i.i606 = icmp eq i64 %116, 0
  br i1 %cmp169.i.i.i606, label %if.then173.i.i.i611, label %if.else179.i.i.i613, !prof !130

if.then173.i.i.i611:                              ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #14
  %conv174.i.i.i608 = trunc i64 %conv.i.i.i498 to i32
  %div177.i.i.i609 = udiv i32 %conv174.i.i.i608, %call.i.i485
  %conv178.i.i.i610 = zext i32 %div177.i.i.i609 to i64
  br label %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit623

if.else179.i.i.i613:                              ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i.i.i499 = and i64 %conv.i.i.i498, 35184372080640
  %117 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i.i485, i64 %shl.i.i.i499) #17, !srcloc !131
  %asmresult1.i.i.i.i612 = extractvalue { i64, i64 } %117, 1
  br label %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit623

dce_v6_0_average_bandwidth_vs_available_bandwidth.exit623: ; preds = %if.else179.i.i.i613, %if.then173.i.i.i611
  %tmp.0.i.i.i614 = phi i64 [ %conv178.i.i.i610, %if.then173.i.i.i611 ], [ %asmresult1.i.i.i.i612, %if.else179.i.i.i613 ]
  %add185.i.i.i615 = add i64 %tmp.0.i.i.i614, 1
  %sum.shift.i.i616 = lshr i64 %add185.i.i.i615, 13
  %shr1730.i.i617 = trunc i64 %sum.shift.i.i616 to i32
  %shr17.i.i618 = and i32 %shr1730.i.i617, 1048575
  %call1.i619 = call fastcc i32 @dce_v6_0_available_bandwidth(ptr noundef nonnull %wm_low) #12
  %118 = ptrtoint ptr %num_heads93 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_heads93, align 4
  %div.i621 = udiv i32 %call1.i619, %119
  call void @__sanitizer_cov_trace_cmp4(i32 %shr17.i.i618, i32 %div.i621)
  %cmp.not.i622.not = icmp ugt i32 %shr17.i.i618, %div.i621
  br i1 %cmp.not.i622.not, label %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit623.if.then130_crit_edge, label %lor.lhs.false123

dce_v6_0_average_bandwidth_vs_available_bandwidth.exit623.if.then130_crit_edge: ; preds = %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit623
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then130

lor.lhs.false123:                                 ; preds = %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit623
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %115)
  %cmp.i627 = icmp ugt i32 %115, 4096
  br i1 %cmp.i627, label %lor.lhs.false123.dce_v6_0_check_latency_hiding.exit642_crit_edge, label %if.else.i635

lor.lhs.false123.dce_v6_0_check_latency_hiding.exit642_crit_edge: ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_check_latency_hiding.exit642

if.else.i635:                                     ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %lb_size91 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %lb_size91, align 4
  %div.i630 = udiv i32 %121, %113
  %122 = ptrtoint ptr %vtaps83 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vtaps83, align 4
  %add1.i632 = add i32 %123, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i630, i32 %add1.i632)
  %cmp2.not.i633 = icmp ugt i32 %div.i630, %add1.i632
  %..i634 = select i1 %cmp2.not.i633, i32 2, i32 1
  br label %dce_v6_0_check_latency_hiding.exit642

dce_v6_0_check_latency_hiding.exit642:            ; preds = %if.else.i635, %lor.lhs.false123.dce_v6_0_check_latency_hiding.exit642_crit_edge
  %latency_tolerant_lines.0.i636 = phi i32 [ 1, %lor.lhs.false123.dce_v6_0_check_latency_hiding.exit642_crit_edge ], [ %..i634, %if.else.i635 ]
  %mul.i638 = mul i32 %latency_tolerant_lines.0.i636, %add.i.i482
  %add7.i639 = add i32 %mul.i638, %109
  %call.i640 = call fastcc i32 @dce_v6_0_latency_watermark(ptr noundef nonnull %wm_low) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i640, i32 %add7.i639)
  %cmp8.not.i641.not = icmp ugt i32 %call.i640, %add7.i639
  br i1 %cmp8.not.i641.not, label %dce_v6_0_check_latency_hiding.exit642.if.then130_crit_edge, label %lor.lhs.false125

dce_v6_0_check_latency_hiding.exit642.if.then130_crit_edge: ; preds = %dce_v6_0_check_latency_hiding.exit642
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then130

lor.lhs.false125:                                 ; preds = %dce_v6_0_check_latency_hiding.exit642
  %disp_priority127 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 23
  %124 = ptrtoint ptr %disp_priority127 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %disp_priority127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %125)
  %cmp128 = icmp eq i32 %125, 2
  br i1 %cmp128, label %lor.lhs.false125.if.then130_crit_edge, label %lor.lhs.false125.if.end133_crit_edge

lor.lhs.false125.if.end133_crit_edge:             ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

lor.lhs.false125.if.then130_crit_edge:            ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then130

if.then130:                                       ; preds = %lor.lhs.false125.if.then130_crit_edge, %dce_v6_0_check_latency_hiding.exit642.if.then130_crit_edge, %dce_v6_0_average_bandwidth_vs_available_bandwidth.exit623.if.then130_crit_edge, %if.end119.if.then130_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1) #12
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %lor.lhs.false125.if.end133_crit_edge
  %priority_b_cnt.1 = phi i32 [ 1048576, %if.then130 ], [ %priority_b_cnt.0, %lor.lhs.false125.if.end133_crit_edge ]
  %126 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mode1, align 4
  %shl = shl i32 %127, 12
  %.fca.0.insert248 = insertvalue [1 x i32] poison, i32 %shl, 0
  %call136 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert248, [1 x i32] [i32 4096000])
  %shl137 = shl nuw nsw i32 %84, 12
  %conv138 = zext i32 %shl137 to i64
  %conv139 = zext i32 %call136 to i64
  %mul140 = mul nuw nsw i64 %conv139, %conv138
  %shr = lshr exact i64 %mul140, 12
  %conv142 = and i64 %shr, 4294967295
  %hsc = getelementptr inbounds %struct.amdgpu_crtc, ptr %amdgpu_crtc, i32 0, i32 19
  %128 = ptrtoint ptr %hsc to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %hsc, align 4
  %conv143 = zext i32 %129 to i64
  %mul144 = mul nuw i64 %conv142, %conv143
  %add145 = add nuw i64 %mul144, 2048
  %shr146 = lshr i64 %add145, 12
  %conv147 = trunc i64 %shr146 to i32
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %conv147, 0
  %call150 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert, [1 x i32] [i32 4096000])
  %130 = lshr i32 %call150, 3
  %narrow = add nuw nsw i32 %130, 1
  %131 = lshr i32 %narrow, 13
  %and155 = and i32 %131, 32767
  %or156 = or i32 %and155, %priority_b_cnt.1
  %shl162 = shl nuw nsw i32 %85, 12
  %conv163 = zext i32 %shl162 to i64
  %mul165 = mul nuw nsw i64 %conv139, %conv163
  %shr167 = lshr exact i64 %mul165, 12
  %conv169 = and i64 %shr167, 4294967295
  %mul172 = mul nuw i64 %conv169, %conv143
  %add173 = add nuw i64 %mul172, 2048
  %shr174 = lshr i64 %add173, 12
  %conv175 = trunc i64 %shr174 to i32
  %.fca.0.insert235 = insertvalue [1 x i32] poison, i32 %conv175, 0
  %call178 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert235, [1 x i32] [i32 4096000])
  %132 = lshr i32 %call178, 3
  %narrow662 = add nuw nsw i32 %132, 1
  %133 = lshr i32 %narrow662, 13
  %and183 = and i32 %133, 32767
  %or184 = or i32 %and183, %priority_b_cnt.1
  %134 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %crtc_hdisplay, align 4
  %conv186 = zext i16 %135 to i32
  %add187 = add i32 %lb_size, -1
  %sub188 = add i32 %add187, %conv186
  %div = udiv i32 %sub188, %conv186
  br label %if.end191

if.end191:                                        ; preds = %if.end133, %entry.if.end191_crit_edge
  %line_time.0 = phi i32 [ %13, %if.end133 ], [ 0, %entry.if.end191_crit_edge ]
  %latency_watermark_a.0 = phi i32 [ %84, %if.end133 ], [ 0, %entry.if.end191_crit_edge ]
  %latency_watermark_b.0 = phi i32 [ %85, %if.end133 ], [ 0, %entry.if.end191_crit_edge ]
  %priority_a_cnt.2 = phi i32 [ %or156, %if.end133 ], [ 65536, %entry.if.end191_crit_edge ]
  %priority_b_cnt.2 = phi i32 [ %or184, %if.end133 ], [ 65536, %entry.if.end191_crit_edge ]
  %lb_vblank_lead_lines.0 = phi i32 [ %div, %if.end133 ], [ 0, %entry.if.end191_crit_edge ]
  %crtc_offset = getelementptr inbounds %struct.amdgpu_crtc, ptr %amdgpu_crtc, i32 0, i32 4
  %136 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %crtc_offset, align 8
  %add192 = add i32 %137, 6962
  %call193 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add192, i32 noundef 0) #12
  %and194 = and i32 %call193, -196609
  %or195 = or i32 %and194, 65536
  %138 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %crtc_offset, align 8
  %add197 = add i32 %139, 6962
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add197, i32 noundef %or195, i32 noundef 0) #12
  %140 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %crtc_offset, align 8
  %add199 = add i32 %141, 6963
  %shl201 = shl nuw i32 %line_time.0, 16
  %or202 = or i32 %latency_watermark_a.0, %shl201
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add199, i32 noundef %or202, i32 noundef 0) #12
  %142 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %crtc_offset, align 8
  %add204 = add i32 %143, 6962
  %call205 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add204, i32 noundef 0) #12
  %and206 = and i32 %call205, -196609
  %or207 = or i32 %and206, 131072
  %144 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %crtc_offset, align 8
  %add209 = add i32 %145, 6962
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add209, i32 noundef %or207, i32 noundef 0) #12
  %146 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %crtc_offset, align 8
  %add211 = add i32 %147, 6963
  %or214 = or i32 %latency_watermark_b.0, %shl201
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add211, i32 noundef %or214, i32 noundef 0) #12
  %148 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %crtc_offset, align 8
  %add216 = add i32 %149, 6962
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add216, i32 noundef %call193, i32 noundef 0) #12
  %150 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %crtc_offset, align 8
  %add218 = add i32 %151, 6854
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add218, i32 noundef %priority_a_cnt.2, i32 noundef 0) #12
  %152 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %crtc_offset, align 8
  %add220 = add i32 %153, 6855
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add220, i32 noundef %priority_b_cnt.2, i32 noundef 0) #12
  %line_time221 = getelementptr inbounds %struct.amdgpu_crtc, ptr %amdgpu_crtc, i32 0, i32 35
  %154 = ptrtoint ptr %line_time221 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %line_time.0, ptr %line_time221, align 8
  %wm_high222 = getelementptr inbounds %struct.amdgpu_crtc, ptr %amdgpu_crtc, i32 0, i32 37
  %155 = ptrtoint ptr %wm_high222 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %latency_watermark_a.0, ptr %wm_high222, align 8
  %lb_vblank_lead_lines223 = getelementptr inbounds %struct.amdgpu_crtc, ptr %amdgpu_crtc, i32 0, i32 38
  %156 = ptrtoint ptr %lb_vblank_lead_lines223 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %lb_vblank_lead_lines.0, ptr %lb_vblank_lead_lines223, align 4
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wm_high) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wm_low) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_get_mclk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_get_sclk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dce_v6_0_latency_watermark(ptr nocapture noundef readonly %wm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dce_v6_0_available_bandwidth(ptr noundef %wm)
  %div = udiv i32 4096000, %call
  %div1 = udiv i32 512000, %call
  %disp_clk = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 3
  %0 = ptrtoint ptr %disp_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disp_clk, align 4
  %div2 = udiv i32 40000000, %1
  %num_heads = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 9
  %2 = ptrtoint ptr %num_heads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_heads, align 4
  %add = add i32 %3, 1
  %mul = mul i32 %add, %div
  %mul4 = mul i32 %3, %div1
  %add5 = add nuw nsw i32 %div2, 2000
  %add6 = add i32 %add5, %mul4
  %add7 = add i32 %add6, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsc = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 8
  %4 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %5)
  %cmp9 = icmp ugt i32 %5, 8192
  br i1 %cmp9, label %if.end.if.end21_crit_edge, label %lor.lhs.false

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp11 = icmp ugt i32 %5, 4096
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false.lor.lhs.false13_crit_edge

lor.lhs.false.lor.lhs.false13_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false13

land.lhs.true:                                    ; preds = %lor.lhs.false
  %vtaps = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 12
  %6 = ptrtoint ptr %vtaps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vtaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp12 = icmp ugt i32 %7, 2
  br i1 %cmp12, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true.lor.lhs.false13_crit_edge

land.lhs.true.lor.lhs.false13_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false13

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

lor.lhs.false13:                                  ; preds = %land.lhs.true.lor.lhs.false13_crit_edge, %lor.lhs.false.lor.lhs.false13_crit_edge
  %vtaps14 = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 12
  %8 = ptrtoint ptr %vtaps14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vtaps14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp15 = icmp ugt i32 %9, 4
  br i1 %cmp15, label %lor.lhs.false13.if.end21_crit_edge, label %lor.lhs.false16

lor.lhs.false13.if.end21_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %5)
  %cmp18 = icmp ugt i32 %5, 8191
  br i1 %cmp18, label %land.lhs.true19, label %lor.lhs.false16.if.else_crit_edge

lor.lhs.false16.if.else_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true19:                                  ; preds = %lor.lhs.false16
  %interlaced = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 7
  %10 = ptrtoint ptr %interlaced to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %interlaced, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %land.lhs.true19.if.else_crit_edge, label %land.lhs.true19.if.end21_crit_edge

land.lhs.true19.if.end21_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true19.if.else_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %land.lhs.true19.if.else_crit_edge, %lor.lhs.false16.if.else_crit_edge
  br label %if.end21

if.end21:                                         ; preds = %if.else, %land.lhs.true19.if.end21_crit_edge, %lor.lhs.false13.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %max_src_lines_per_dst_line.0 = phi i32 [ 8192, %if.else ], [ 16384, %land.lhs.true19.if.end21_crit_edge ], [ 16384, %lor.lhs.false13.if.end21_crit_edge ], [ 16384, %land.lhs.true.if.end21_crit_edge ], [ 16384, %if.end.if.end21_crit_edge ]
  %shl = shl i32 %call, 12
  %shl23 = shl i32 %3, 12
  %conv.i = zext i32 %shl to i64
  %shl.i = shl nuw nsw i64 %conv.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %shl)
  %cmp169.i = icmp ult i32 %shl, 524288
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !130

if.then173.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %conv174.i = trunc i64 %shl.i to i32
  %div177.i = udiv i32 %conv174.i, %shl23
  %conv178.i = zext i32 %div177.i to i64
  br label %dfixed_div.exit

if.else179.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl23, i64 %shl.i) #17, !srcloc !131
  %asmresult1.i.i = extractvalue { i64, i64 } %12, 1
  br label %dfixed_div.exit

dfixed_div.exit:                                  ; preds = %if.else179.i, %if.then173.i
  %tmp.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %add185.i = add i64 %tmp.0.i, 1
  %conv27 = zext i32 %1 to i64
  %mul28 = mul nuw nsw i64 %conv27, 12288
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3759845925851628355, i64 %mul28) #17, !srcloc !132
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 3759845925851628355, i64 %mul28, i64 %13, i32 0) #17, !srcloc !133
  %asmresult10.i.i.i = extractvalue { i64, i32 } %14, 0
  %div158.i.i246 = lshr i64 %asmresult10.i.i.i, 9
  %conv31 = trunc i64 %div158.i.i246 to i32
  %sum.shift = lshr i64 %add185.i, 13
  %shr247 = trunc i64 %sum.shift to i32
  %shr = and i32 %shr247, 1048575
  %15 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %conv31)
  %bytes_per_pixel = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 10
  %16 = ptrtoint ptr %bytes_per_pixel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes_per_pixel, align 4
  %mul36 = mul i32 %17, %1
  %div37 = udiv i32 %mul36, 1000
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %div37)
  %src_width = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 4
  %19 = ptrtoint ptr %src_width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_width, align 4
  %mul47 = mul i32 %max_src_lines_per_dst_line.0, %17
  %shl48 = mul i32 %mul47, %20
  %shl49 = shl nuw i32 %18, 12
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %shl49, 0
  %call52 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert, [1 x i32] [i32 4096000])
  %conv.i125 = zext i32 %shl48 to i64
  %shl.i126 = shl nuw nsw i64 %conv.i125, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %shl48)
  %cmp169.i233 = icmp ult i32 %shl48, 524288
  br i1 %cmp169.i233, label %if.then173.i238, label %if.else179.i240, !prof !130

if.then173.i238:                                  ; preds = %dfixed_div.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv174.i235 = trunc i64 %shl.i126 to i32
  %div177.i236 = udiv i32 %conv174.i235, %call52
  %conv178.i237 = zext i32 %div177.i236 to i64
  br label %dfixed_div.exit245

if.else179.i240:                                  ; preds = %dfixed_div.exit
  call void @__sanitizer_cov_trace_pc() #14
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call52, i64 %shl.i126) #17, !srcloc !131
  %asmresult1.i.i239 = extractvalue { i64, i64 } %21, 1
  br label %dfixed_div.exit245

dfixed_div.exit245:                               ; preds = %if.else179.i240, %if.then173.i238
  %tmp.0.i241 = phi i64 [ %conv178.i237, %if.then173.i238 ], [ %asmresult1.i.i239, %if.else179.i240 ]
  %add185.i242 = add i64 %tmp.0.i241, 1
  %sum.shift248 = lshr i64 %add185.i242, 13
  %shr56249 = trunc i64 %sum.shift248 to i32
  %shr56 = and i32 %shr56249, 1048575
  %active_time = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 5
  %22 = ptrtoint ptr %active_time to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr56, i32 %23)
  %cmp57 = icmp ult i32 %shr56, %23
  br i1 %cmp57, label %dfixed_div.exit245.cleanup_crit_edge, label %if.else60

dfixed_div.exit245.cleanup_crit_edge:             ; preds = %dfixed_div.exit245
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else60:                                        ; preds = %dfixed_div.exit245
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %add7, %23
  %add62 = add i32 %sub, %shr56
  br label %cleanup

cleanup:                                          ; preds = %if.else60, %dfixed_div.exit245.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add62, %if.else60 ], [ 0, %entry.cleanup_crit_edge ], [ %add7, %dfixed_div.exit245.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dce_v6_0_average_bandwidth_vs_dram_bandwidth_for_display(ptr nocapture noundef readonly %wm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_time.i = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 5
  %0 = ptrtoint ptr %active_time.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_time.i, align 4
  %blank_time.i = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 6
  %2 = ptrtoint ptr %blank_time.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blank_time.i, align 4
  %add.i = add i32 %3, %1
  %shl.i = shl i32 %add.i, 12
  %.fca.0.insert21.i = insertvalue [1 x i32] poison, i32 %shl.i, 0
  %call.i = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert21.i, [1 x i32] [i32 4096000]) #12
  %bytes_per_pixel.i = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 10
  %4 = ptrtoint ptr %bytes_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytes_per_pixel.i, align 4
  %shl2.i = shl i32 %5, 12
  %src_width3.i = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 4
  %6 = ptrtoint ptr %src_width3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_width3.i, align 4
  %shl4.i = shl i32 %7, 12
  %conv.i = zext i32 %shl4.i to i64
  %conv5.i = zext i32 %shl2.i to i64
  %mul.i = mul nuw i64 %conv.i, %conv5.i
  %shr.i = lshr exact i64 %mul.i, 12
  %conv8.i = and i64 %shr.i, 4294963200
  %vsc.i = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 8
  %8 = ptrtoint ptr %vsc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsc.i, align 4
  %conv9.i = zext i32 %9 to i64
  %mul10.i = mul nuw i64 %conv8.i, %conv9.i
  %conv.i.i = shl i64 %mul10.i, 1
  %10 = and i64 %mul10.i, 17590038560768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp169.i.i = icmp eq i64 %10, 0
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !130

if.then173.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv174.i.i = trunc i64 %conv.i.i to i32
  %div177.i.i = udiv i32 %conv174.i.i, %call.i
  %conv178.i.i = zext i32 %div177.i.i to i64
  br label %dce_v6_0_average_bandwidth.exit

if.else179.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i.i = and i64 %conv.i.i, 35184372080640
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i, i64 %shl.i.i) #17, !srcloc !131
  %asmresult1.i.i.i = extractvalue { i64, i64 } %11, 1
  br label %dce_v6_0_average_bandwidth.exit

dce_v6_0_average_bandwidth.exit:                  ; preds = %if.else179.i.i, %if.then173.i.i
  %tmp.0.i.i = phi i64 [ %conv178.i.i, %if.then173.i.i ], [ %asmresult1.i.i.i, %if.else179.i.i ]
  %add185.i.i = add i64 %tmp.0.i.i, 1
  %sum.shift.i = lshr i64 %add185.i.i, 13
  %shr1730.i = trunc i64 %sum.shift.i to i32
  %shr17.i = and i32 %shr1730.i, 1048575
  %yclk1.i = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 1
  %12 = ptrtoint ptr %yclk1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yclk1.i, align 4
  %shl.i4 = shl i32 %13, 12
  %.fca.0.insert23.i = insertvalue [1 x i32] poison, i32 %shl.i4, 0
  %call.i5 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert23.i, [1 x i32] [i32 4096000]) #12
  %14 = ptrtoint ptr %wm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wm, align 4
  %mul.i6 = shl i32 %15, 14
  %16 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 12288, i64 3689348814741910323) #17, !srcloc !134
  %17 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 12288, i64 %16) #17, !srcloc !135
  %add185.i.i7 = add i64 %17, 1
  %div186268.i.i = lshr i64 %add185.i.i7, 1
  %conv.i8 = zext i32 %mul.i6 to i64
  %conv8.i9 = zext i32 %call.i5 to i64
  %mul9.i = mul nuw i64 %conv.i8, %conv8.i9
  %shr.i10 = lshr exact i64 %mul9.i, 12
  %conv11.i = and i64 %shr.i10, 4294967292
  %conv12.i = and i64 %div186268.i.i, 4294967295
  %mul13.i = mul nuw i64 %conv11.i, %conv12.i
  %add14.i = add nuw i64 %mul13.i, 2048
  %sum.shift.i11 = lshr i64 %add14.i, 24
  %shr1728.i = trunc i64 %sum.shift.i11 to i32
  %shr17.i12 = and i32 %shr1728.i, 1048575
  %num_heads = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 9
  %18 = ptrtoint ptr %num_heads to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_heads, align 4
  %div = udiv i32 %shr17.i12, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %shr17.i, i32 %div)
  %cmp.not = icmp ule i32 %shr17.i, %div
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfixed_div([1 x i32] %A.coerce, [1 x i32] %B.coerce) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %A.coerce.fca.0.extract = extractvalue [1 x i32] %A.coerce, 0
  %B.coerce.fca.0.extract = extractvalue [1 x i32] %B.coerce, 0
  %conv = zext i32 %A.coerce.fca.0.extract to i64
  %shl = shl nuw nsw i64 %conv, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %A.coerce.fca.0.extract)
  %cmp169 = icmp ult i32 %A.coerce.fca.0.extract, 524288
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !130

if.then173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv174 = trunc i64 %shl to i32
  %div177 = udiv i32 %conv174, %B.coerce.fca.0.extract
  %conv178 = zext i32 %div177 to i64
  br label %if.end183

if.else179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %B.coerce.fca.0.extract, i64 %shl) #17, !srcloc !131
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %tmp.0 = phi i64 [ %conv178, %if.then173 ], [ %asmresult1.i, %if.else179 ]
  %add185 = add i64 %tmp.0, 1
  %div186268 = lshr i64 %add185, 1
  %conv188 = trunc i64 %div186268 to i32
  ret i32 %conv188
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dce_v6_0_available_bandwidth(ptr nocapture noundef readonly %wm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %yclk1.i = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 1
  %0 = ptrtoint ptr %yclk1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %yclk1.i, align 4
  %shl.i = shl i32 %1, 12
  %.fca.0.insert23.i = insertvalue [1 x i32] poison, i32 %shl.i, 0
  %call.i = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert23.i, [1 x i32] [i32 4096000]) #12
  %2 = ptrtoint ptr %wm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wm, align 4
  %mul.i = shl i32 %3, 14
  %4 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 28672, i64 3689348814741910323) #17, !srcloc !134
  %5 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 28672, i64 %4) #17, !srcloc !135
  %add185.i.i = add i64 %5, 1
  %div186268.i.i = lshr i64 %add185.i.i, 1
  %conv.i = zext i32 %mul.i to i64
  %conv8.i = zext i32 %call.i to i64
  %mul9.i = mul nuw i64 %conv.i, %conv8.i
  %shr.i = lshr exact i64 %mul9.i, 12
  %conv11.i = and i64 %shr.i, 4294967292
  %conv12.i = and i64 %div186268.i.i, 4294967295
  %mul13.i = mul nuw i64 %conv11.i, %conv12.i
  %add14.i = add nuw i64 %mul13.i, 2048
  %sum.shift.i = lshr i64 %add14.i, 24
  %shr1728.i = trunc i64 %sum.shift.i to i32
  %shr17.i = and i32 %shr1728.i, 1048575
  %sclk1.i = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 2
  %6 = ptrtoint ptr %sclk1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sclk1.i, align 4
  %shl.i15 = shl i32 %7, 12
  %.fca.0.insert21.i = insertvalue [1 x i32] poison, i32 %shl.i15, 0
  %call.i16 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert21.i, [1 x i32] [i32 4096000]) #12
  %8 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 32768, i64 3689348814741910323) #17, !srcloc !134
  %9 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 32768, i64 %8) #17, !srcloc !135
  %add185.i.i17 = add i64 %9, 1
  %div186268.i.i18 = lshr i64 %add185.i.i17, 1
  %mul.i19 = shl i32 %call.i16, 5
  %conv8.i20 = zext i32 %mul.i19 to i64
  %conv9.i = and i64 %div186268.i.i18, 4294967295
  %mul10.i = mul nuw i64 %conv9.i, %conv8.i20
  %add11.i = add nuw i64 %mul10.i, 2048
  %sum.shift.i21 = lshr i64 %add11.i, 24
  %shr1425.i = trunc i64 %sum.shift.i21 to i32
  %shr14.i = and i32 %shr1425.i, 1048575
  %disp_clk1.i = getelementptr inbounds %struct.dce6_wm_params, ptr %wm, i32 0, i32 3
  %10 = ptrtoint ptr %disp_clk1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %disp_clk1.i, align 4
  %shl.i22 = shl i32 %11, 12
  %.fca.0.insert20.i = insertvalue [1 x i32] poison, i32 %shl.i22, 0
  %call.i23 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert20.i, [1 x i32] [i32 4096000]) #12
  %mul.i24 = shl i32 %call.i23, 5
  %conv8.i27 = zext i32 %mul.i24 to i64
  %mul10.i29 = mul nuw i64 %conv9.i, %conv8.i27
  %add11.i30 = add nuw i64 %mul10.i29, 2048
  %sum.shift.i31 = lshr i64 %add11.i30, 24
  %shr1424.i = trunc i64 %sum.shift.i31 to i32
  %shr14.i32 = and i32 %shr1424.i, 1048575
  %12 = tail call i32 @llvm.umin.i32(i32 %shr14.i, i32 %shr14.i32)
  %13 = tail call i32 @llvm.umin.i32(i32 %shr17.i, i32 %12)
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_atombios_encoder_get_lcd_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_atombios_encoder_get_dig_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_encoder_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devices, align 4
  %and = and i32 %1, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_atombios_encoder_fini_backlight(ptr noundef %encoder) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %2 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc_priv, align 4
  tail call void @kfree(ptr noundef %3) #12
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #12
  tail call void @kfree(ptr noundef %encoder) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_fini_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_dpms(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atombios_encoder_mode_fixup(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_encoder_prepare(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call1 = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #12
  %active_device = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %2 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_device, align 4
  %and = and i32 %3, 3818
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef %encoder) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2)
  %cmp.not = icmp eq i16 %call2, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then.if.end14_crit_edge, label %if.then5

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then5:                                         ; preds = %if.then
  %encoder_id.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %6 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %encoder_id.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %7, label %sw.default.i [
    i32 30, label %sw.bb.i
    i32 32, label %sw.bb1.i
    i32 33, label %sw.bb5.i
    i32 37, label %if.then5.dce_v6_0_pick_dig_encoder.exit_crit_edge
  ]

if.then5.dce_v6_0_pick_dig_encoder.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_pick_dig_encoder.exit

sw.bb.i:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %5, align 4, !range !127
  %11 = zext i8 %10 to i32
  br label %dce_v6_0_pick_dig_encoder.exit

sw.bb1.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %5, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  %cond4.i = select i1 %tobool3.not.i, i32 2, i32 3
  br label %dce_v6_0_pick_dig_encoder.exit

sw.bb5.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %5, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not.i = icmp eq i8 %15, 0
  %cond8.i = select i1 %tobool7.not.i, i32 4, i32 5
  br label %dce_v6_0_pick_dig_encoder.exit

sw.default.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %7) #12
  br label %dce_v6_0_pick_dig_encoder.exit

dce_v6_0_pick_dig_encoder.exit:                   ; preds = %sw.default.i, %sw.bb5.i, %sw.bb1.i, %sw.bb.i, %if.then5.dce_v6_0_pick_dig_encoder.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ %cond8.i, %sw.bb5.i ], [ %cond4.i, %sw.bb1.i ], [ %11, %sw.bb.i ], [ 6, %if.then5.dce_v6_0_pick_dig_encoder.exit_crit_edge ]
  %dig_encoder = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i, ptr %dig_encoder, align 4
  %17 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active_device, align 4
  %and8 = and i32 %18, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %dce_v6_0_pick_dig_encoder.exit.if.end14_crit_edge, label %if.then10

dce_v6_0_pick_dig_encoder.exit.if.end14_crit_edge: ; preds = %dce_v6_0_pick_dig_encoder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then10:                                        ; preds = %dce_v6_0_pick_dig_encoder.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 79, i32 5, i32 %retval.0.i
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %afmt12 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %5, i32 0, i32 11
  %21 = ptrtoint ptr %afmt12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %afmt12, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %dce_v6_0_pick_dig_encoder.exit.if.end14_crit_edge, %if.then.if.end14_crit_edge, %lor.lhs.false.if.end14_crit_edge
  tail call void @amdgpu_atombios_scratch_regs_lock(ptr noundef %add.ptr.i, i1 noundef zeroext true) #12
  %tobool15.not = icmp eq ptr %call1, null
  br i1 %tobool15.not, label %if.end14.if.end28_crit_edge, label %if.then16

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then16:                                        ; preds = %if.end14
  %cd_valid = getelementptr inbounds %struct.amdgpu_connector, ptr %call1, i32 0, i32 12, i32 7
  %22 = ptrtoint ptr %cd_valid to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cd_valid, align 1, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  br i1 %tobool20.not, label %if.then16.if.end22_crit_edge, label %if.then21

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_i2c_router_select_cd_port(ptr noundef nonnull %call1) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then16.if.end22_crit_edge
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %call1, i32 0, i32 10
  %24 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %25)
  %cmp23 = icmp eq i32 %25, 14
  br i1 %cmp23, label %if.then25, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call zeroext i1 @amdgpu_atombios_encoder_set_edp_panel_power(ptr noundef nonnull %call1, i32 noundef 12) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge, %if.end14.if.end28_crit_edge
  tail call void @amdgpu_atombios_encoder_set_crtc_source(ptr noundef %encoder) #12
  %26 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 -8
  %call2.i = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #12
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %28 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crtc.i, align 4
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end28.if.end.i_crit_edge, label %if.then.i

if.end28.if.end.i_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i = tail call i32 @amdgpu_connector_get_monitor_bpc(ptr noundef nonnull %call2.i) #12
  %dither11.i = getelementptr inbounds %struct.amdgpu_connector, ptr %call2.i, i32 0, i32 15
  %30 = ptrtoint ptr %dither11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dither11.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end28.if.end.i_crit_edge
  %bpc.0.i = phi i32 [ %call10.i, %if.then.i ], [ 0, %if.end28.if.end.i_crit_edge ]
  %dither.0.i = phi i32 [ %31, %if.then.i ], [ 0, %if.end28.if.end.i_crit_edge ]
  %devices.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %32 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devices.i, align 4
  %and.i = and i32 %33, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end.i.dce_v6_0_program_fmt.exit_crit_edge

if.end.i.dce_v6_0_program_fmt.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_program_fmt.exit

if.end14.i:                                       ; preds = %if.end.i
  %34 = zext i32 %bpc.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %bpc.0.i, label %if.end14.i.sw.epilog.i_crit_edge [
    i32 0, label %if.end14.i.dce_v6_0_program_fmt.exit_crit_edge
    i32 6, label %sw.bb.i45
    i32 8, label %sw.bb21.i
  ]

if.end14.i.dce_v6_0_program_fmt.exit_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_program_fmt.exit

if.end14.i.sw.epilog.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i45:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dither.0.i)
  %cmp17.i = icmp eq i32 %dither.0.i, 1
  %..i = select i1 %cmp17.i, i32 41216, i32 1
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dither.0.i)
  %cmp22.i = icmp eq i32 %dither.0.i, 1
  %.47.i = select i1 %cmp22.i, i32 61696, i32 17
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb21.i, %sw.bb.i45, %if.end14.i.sw.epilog.i_crit_edge
  %tmp6.0.i = phi i32 [ 0, %if.end14.i.sw.epilog.i_crit_edge ], [ %..i, %sw.bb.i45 ], [ %.47.i, %sw.bb21.i ]
  %crtc_offset.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %29, i32 0, i32 4
  %35 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %crtc_offset.i, align 8
  %add.i = add i32 %36, 7154
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add.i, i32 noundef %tmp6.0.i, i32 noundef 0) #12
  br label %dce_v6_0_program_fmt.exit

dce_v6_0_program_fmt.exit:                        ; preds = %sw.epilog.i, %if.end14.i.dce_v6_0_program_fmt.exit_crit_edge, %if.end.i.dce_v6_0_program_fmt.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_encoder_commit(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  tail call void @amdgpu_atombios_encoder_dpms(ptr noundef %encoder, i32 noundef 0) #12
  tail call void @amdgpu_atombios_scratch_regs_lock(ptr noundef %add.ptr.i, i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_encoder_mode_set(ptr noundef %encoder, ptr nocapture noundef readonly %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  %acr.i.i = alloca %struct.amdgpu_afmt_acr, align 4
  %iter.i133.i = alloca %struct.drm_connector_list_iter, align 4
  %iter.i114.i = alloca %struct.drm_connector_list_iter, align 4
  %sads.i.i = alloca ptr, align 4
  %iter.i.i = alloca %struct.drm_connector_list_iter, align 4
  %sadb.i.i = alloca ptr, align 4
  %iter.i = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder) #12
  %0 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adjusted_mode, align 4
  %pixel_clock = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %2 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %pixel_clock, align 4
  tail call void @amdgpu_atombios_encoder_dpms(ptr noundef %encoder, i32 noundef 3) #12
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %3 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -8
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %crtc_offset2.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %crtc_offset2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crtc_offset2.i, align 8
  %add3.i = add i32 %10, 6848
  %and.i = lshr i32 %8, 4
  %and.lobit.i = and i32 %and.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add3.i, i32 noundef %and.lobit.i, i32 noundef 0) #12
  %11 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call, label %entry.if.end_crit_edge [
    i32 3, label %entry.if.then_crit_edge
    i32 0, label %entry.if.then_crit_edge44
    i32 5, label %entry.if.then_crit_edge45
  ]

entry.if.then_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge44, %entry.if.then_crit_edge45
  %enc_priv.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %12 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.dce_v6_0_afmt_enable.exit_crit_edge, label %lor.lhs.false.i

if.then.dce_v6_0_afmt_enable.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_afmt_enable.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %afmt.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %afmt.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dce_v6_0_afmt_enable.exitthread-pre-split_crit_edge, label %if.end.i

lor.lhs.false.i.dce_v6_0_afmt_enable.exitthread-pre-split_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_afmt_enable.exitthread-pre-split

if.end.i:                                         ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not.i = icmp eq i8 %17, 0
  br i1 %tobool5.not.i, label %if.end24.i, label %if.end.i.dce_v6_0_afmt_enable.exitthread-pre-split_crit_edge

if.end.i.dce_v6_0_afmt_enable.exitthread-pre-split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_afmt_enable.exitthread-pre-split

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %15, align 4
  %19 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %afmt.i, align 4
  %offset.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %encoder_id.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %23 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %encoder_id.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %22, i32 noundef %24) #12
  br label %dce_v6_0_afmt_enable.exitthread-pre-split

dce_v6_0_afmt_enable.exitthread-pre-split:        ; preds = %if.end24.i, %if.end.i.dce_v6_0_afmt_enable.exitthread-pre-split_crit_edge, %lor.lhs.false.i.dce_v6_0_afmt_enable.exitthread-pre-split_crit_edge
  %25 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load ptr, ptr %enc_priv.i, align 4
  br label %dce_v6_0_afmt_enable.exit

dce_v6_0_afmt_enable.exit:                        ; preds = %dce_v6_0_afmt_enable.exitthread-pre-split, %if.then.dce_v6_0_afmt_enable.exit_crit_edge
  %26 = phi ptr [ %.pr, %dce_v6_0_afmt_enable.exitthread-pre-split ], [ null, %if.then.dce_v6_0_afmt_enable.exit_crit_edge ]
  %27 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %28, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i) #12
  %29 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i, align 4, !annotation !128
  %30 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %30, align 4, !annotation !128
  %call2.i = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder) #12
  %tobool.not.i15 = icmp eq ptr %26, null
  br i1 %tobool.not.i15, label %dce_v6_0_afmt_enable.exit.dce_v6_0_afmt_setmode.exit_crit_edge, label %lor.lhs.false.i17

dce_v6_0_afmt_enable.exit.dce_v6_0_afmt_setmode.exit_crit_edge: ; preds = %dce_v6_0_afmt_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_afmt_setmode.exit

lor.lhs.false.i17:                                ; preds = %dce_v6_0_afmt_enable.exit
  %afmt.i16 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %26, i32 0, i32 11
  %32 = ptrtoint ptr %afmt.i16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %afmt.i16, align 4
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i17.dce_v6_0_afmt_setmode.exit_crit_edge, label %if.end.i18

lor.lhs.false.i17.dce_v6_0_afmt_setmode.exit_crit_edge: ; preds = %lor.lhs.false.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_afmt_setmode.exit

if.end.i18:                                       ; preds = %lor.lhs.false.i17
  call void @drm_connector_list_iter_begin(ptr noundef %28, ptr noundef nonnull %iter.i) #12
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end.i18
  %call4.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i) #12
  %tobool5.not.i19 = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i19, label %if.then13.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %encoder6.i = getelementptr inbounds %struct.drm_connector, ptr %call4.i, i32 0, i32 41
  %34 = ptrtoint ptr %encoder6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %encoder6.i, align 4
  %cmp.i = icmp eq ptr %35, %encoder
  br i1 %cmp.i, label %if.end14.critedge.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then13.critedge.i:                             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i) #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #12
  br label %dce_v6_0_afmt_setmode.exit

if.end14.critedge.i:                              ; preds = %while.body.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i) #12
  %36 = ptrtoint ptr %afmt.i16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %afmt.i16, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool16.not.i = icmp eq i8 %39, 0
  br i1 %tobool16.not.i, label %if.end14.critedge.i.dce_v6_0_afmt_setmode.exit_crit_edge, label %if.end18.i

if.end14.critedge.i.dce_v6_0_afmt_setmode.exit_crit_edge: ; preds = %if.end14.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_afmt_setmode.exit

if.end18.i:                                       ; preds = %if.end14.critedge.i
  %num_pins.i.i.i = getelementptr i8, ptr %28, i32 22396
  %40 = ptrtoint ptr %num_pins.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_pins.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp21.i.i.i = icmp sgt i32 %41, 0
  br i1 %cmp21.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end18.i.for.end.i.i_crit_edge

if.end18.i.for.end.i.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end18.i
  %audio_endpt_rreg.i.i.i = getelementptr i8, ptr %28, i32 3300
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.022.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %42 = ptrtoint ptr %audio_endpt_rreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %audio_endpt_rreg.i.i.i, align 4
  %offset.i.i.i = getelementptr %struct.amdgpu_device, ptr %add.ptr.i.i13, i32 0, i32 79, i32 19, i32 1, i32 %i.022.i.i.i, i32 5
  %44 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset.i.i.i, align 4
  %call.i.i.i = call i32 %43(ptr noundef %add.ptr.i.i13, i32 noundef %45, i32 noundef 86) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp ult i32 %call.i.i.i, 1073741824
  %spec.select.i.i.i = zext i1 %tobool.not.i.i.i to i8
  %46 = getelementptr %struct.amdgpu_device, ptr %add.ptr.i.i13, i32 0, i32 79, i32 19, i32 1, i32 %i.022.i.i.i, i32 6
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %spec.select.i.i.i, ptr %46, align 4
  %inc.i.i.i = add nuw nsw i32 %i.022.i.i.i, 1
  %48 = ptrtoint ptr %num_pins.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_pins.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %49
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %dce_v6_0_audio_get_connected_pins.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

dce_v6_0_audio_get_connected_pins.exit.i.i:       ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp14.i.i = icmp sgt i32 %49, 0
  br i1 %cmp14.i.i, label %dce_v6_0_audio_get_connected_pins.exit.i.i.for.body.i.i_crit_edge, label %dce_v6_0_audio_get_connected_pins.exit.i.i.for.end.i.i_crit_edge

dce_v6_0_audio_get_connected_pins.exit.i.i.for.end.i.i_crit_edge: ; preds = %dce_v6_0_audio_get_connected_pins.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

dce_v6_0_audio_get_connected_pins.exit.i.i.for.body.i.i_crit_edge: ; preds = %dce_v6_0_audio_get_connected_pins.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %dce_v6_0_audio_get_connected_pins.exit.i.i.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %dce_v6_0_audio_get_connected_pins.exit.i.i.for.body.i.i_crit_edge ]
  %connected.i.i = getelementptr %struct.amdgpu_device, ptr %add.ptr.i.i13, i32 0, i32 79, i32 19, i32 1, i32 %i.015.i.i, i32 6
  %50 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %connected.i.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %add.ptr.i.i13, i32 0, i32 79, i32 19, i32 1, i32 %i.015.i.i
  br label %dce_v6_0_audio_get_pin.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %49
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %dce_v6_0_audio_get_connected_pins.exit.i.i.for.end.i.i_crit_edge, %if.end18.i.for.end.i.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #12
  br label %dce_v6_0_audio_get_pin.exit.i

dce_v6_0_audio_get_pin.exit.i:                    ; preds = %for.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %if.then.i.i ], [ null, %for.end.i.i ]
  %52 = ptrtoint ptr %afmt.i16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %afmt.i16, align 4
  %pin.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %pin.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %retval.0.i.i, ptr %pin.i, align 4
  %55 = load ptr, ptr %afmt.i16, align 4
  %pin22.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %pin22.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pin22.i, align 4
  %tobool23.not.i = icmp eq ptr %57, null
  br i1 %tobool23.not.i, label %dce_v6_0_audio_get_pin.exit.i.dce_v6_0_afmt_setmode.exit_crit_edge, label %if.end25.i

dce_v6_0_audio_get_pin.exit.i.dce_v6_0_afmt_setmode.exit_crit_edge: ; preds = %dce_v6_0_audio_get_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_afmt_setmode.exit

if.end25.i:                                       ; preds = %dce_v6_0_audio_get_pin.exit.i
  %58 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %crtc, align 4
  %tobool26.not.i = icmp eq ptr %59, null
  br i1 %tobool26.not.i, label %if.end25.i.dce_v6_0_audio_enable.exit.i_crit_edge, label %if.then27.i

if.end25.i.dce_v6_0_audio_enable.exit.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_audio_enable.exit.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %bpc32.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %59, i32 0, i32 29
  %60 = ptrtoint ptr %bpc32.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bpc32.i, align 8
  br label %dce_v6_0_audio_enable.exit.i

dce_v6_0_audio_enable.exit.i:                     ; preds = %if.then27.i, %if.end25.i.dce_v6_0_audio_enable.exit.i_crit_edge
  %bpc.0.i = phi i32 [ %61, %if.then27.i ], [ 8, %if.end25.i.dce_v6_0_audio_enable.exit.i_crit_edge ]
  %audio_endpt_wreg.i.i = getelementptr i8, ptr %28, i32 3304
  %62 = ptrtoint ptr %audio_endpt_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %audio_endpt_wreg.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %57, i32 0, i32 5
  %64 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset.i.i, align 4
  call void %63(ptr noundef %add.ptr.i.i13, i32 noundef %65, i32 noundef 84, i32 noundef 0) #12
  %66 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %67, i32 -8
  %68 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %enc_priv.i, align 4
  %afmt.i.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %afmt.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %afmt.i.i, align 4
  %offset.i106.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %offset.i106.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset.i106.i, align 4
  %add.i.i = add i32 %73, 7190
  %call3.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i.i, i32 noundef %add.i.i, i32 noundef 0) #12
  %or.i.i = or i32 %call3.i.i, 1
  %74 = ptrtoint ptr %afmt.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %afmt.i.i, align 4
  %offset6.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %offset6.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offset6.i.i, align 4
  %add7.i.i = add i32 %77, 7190
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i.i, i32 noundef %add7.i.i, i32 noundef %or.i.i, i32 noundef 0) #12
  %78 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i107.i = getelementptr i8, ptr %79, i32 -8
  %80 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %enc_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i.i) #12
  %82 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i.i, align 4, !annotation !128
  %83 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 -1 to ptr), ptr %83, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sadb.i.i) #12
  %85 = ptrtoint ptr %sadb.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %sadb.i.i, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %79, ptr noundef nonnull %iter.i.i) #12
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %dce_v6_0_audio_enable.exit.i
  %call3.i109.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i.i) #12
  %tobool.not.i110.i = icmp eq ptr %call3.i109.i, null
  br i1 %tobool.not.i110.i, label %if.then9.critedge.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %encoder4.i.i = getelementptr inbounds %struct.drm_connector, ptr %call3.i109.i, i32 0, i32 41
  %86 = ptrtoint ptr %encoder4.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %encoder4.i.i, align 4
  %cmp.i.i = icmp eq ptr %87, %encoder
  br i1 %cmp.i.i, label %if.end10.critedge.i.i, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.then9.critedge.i.i:                            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i) #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #12
  br label %dce_v6_0_audio_write_speaker_allocation.exit.i

if.end10.critedge.i.i:                            ; preds = %while.body.i.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i) #12
  %call11.i.i = call ptr @amdgpu_connector_edid(ptr noundef nonnull %call3.i109.i) #12
  %call12.i.i = call i32 @drm_edid_to_speaker_allocation(ptr noundef %call11.i.i, ptr noundef nonnull %sadb.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.end10.critedge.i.i.if.end15.i.i_crit_edge

if.end10.critedge.i.i.if.end15.i.i_crit_edge:     ; preds = %if.end10.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.then14.i.i:                                    ; preds = %if.end10.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %call12.i.i) #12
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then14.i.i, %if.end10.critedge.i.i.if.end15.i.i_crit_edge
  %sad_count.0.i.i = phi i32 [ 0, %if.then14.i.i ], [ %call12.i.i, %if.end10.critedge.i.i.if.end15.i.i_crit_edge ]
  %audio_endpt_rreg.i.i = getelementptr i8, ptr %79, i32 3300
  %88 = ptrtoint ptr %audio_endpt_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %audio_endpt_rreg.i.i, align 4
  %afmt.i111.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %81, i32 0, i32 11
  %90 = ptrtoint ptr %afmt.i111.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %afmt.i111.i, align 4
  %pin.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %pin.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pin.i.i, align 4
  %offset.i112.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %offset.i112.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset.i112.i, align 4
  %call16.i.i = call i32 %89(ptr noundef %add.ptr.i.i107.i, i32 noundef %95, i32 noundef 37) #12
  %and17.i.i = and i32 %call16.i.i, -196736
  %connector_type.i.i = getelementptr inbounds %struct.drm_connector, ptr %call3.i109.i, i32 0, i32 10
  %96 = ptrtoint ptr %connector_type.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %connector_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %97)
  %cmp19.i.i = icmp eq i32 %97, 10
  %tmp2.0.v.i.i = select i1 %cmp19.i.i, i32 131072, i32 65536
  %tmp2.0.i.i = or i32 %tmp2.0.v.i.i, %and17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sad_count.0.i.i)
  %tobool26.not.i.i = icmp eq i32 %sad_count.0.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end15.i.i.if.end34.i.i_crit_edge, label %if.then27.i.i

if.end15.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i.i

if.then27.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %sadb.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sadb.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 1
  %102 = and i8 %101, 127
  %and29.i.i = zext i8 %102 to i32
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then27.i.i, %if.end15.i.i.if.end34.i.i_crit_edge
  %.sink.i.i = phi i32 [ %and29.i.i, %if.then27.i.i ], [ 5, %if.end15.i.i.if.end34.i.i_crit_edge ]
  %or33.i.i = or i32 %tmp2.0.i.i, %.sink.i.i
  %audio_endpt_wreg.i113.i = getelementptr i8, ptr %79, i32 3304
  %103 = ptrtoint ptr %audio_endpt_wreg.i113.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %audio_endpt_wreg.i113.i, align 8
  %105 = ptrtoint ptr %afmt.i111.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %afmt.i111.i, align 4
  %pin36.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %pin36.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pin36.i.i, align 4
  %offset37.i.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %offset37.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %offset37.i.i, align 4
  call void %104(ptr noundef %add.ptr.i.i107.i, i32 noundef %110, i32 noundef 37, i32 noundef %or33.i.i) #12
  %111 = ptrtoint ptr %sadb.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sadb.i.i, align 4
  call void @kfree(ptr noundef %112) #12
  br label %dce_v6_0_audio_write_speaker_allocation.exit.i

dce_v6_0_audio_write_speaker_allocation.exit.i:   ; preds = %if.end34.i.i, %if.then9.critedge.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sadb.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i) #12
  %113 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i115.i = getelementptr i8, ptr %114, i32 -8
  %115 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %enc_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i114.i) #12
  %117 = ptrtoint ptr %iter.i114.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i114.i, align 4, !annotation !128
  %118 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i114.i, i32 0, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 -1 to ptr), ptr %118, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sads.i.i) #12
  %120 = ptrtoint ptr %sads.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 -1 to ptr), ptr %sads.i.i, align 4, !annotation !128
  call void @drm_connector_list_iter_begin(ptr noundef %114, ptr noundef nonnull %iter.i114.i) #12
  br label %while.cond.i118.i

while.cond.i118.i:                                ; preds = %while.body.i120.i.while.cond.i118.i_crit_edge, %dce_v6_0_audio_write_speaker_allocation.exit.i
  %call2.i.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i114.i) #12
  %tobool.not.i117.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i117.i, label %if.then8.critedge.i.i, label %while.body.i120.i

while.body.i120.i:                                ; preds = %while.cond.i118.i
  %encoder3.i.i = getelementptr inbounds %struct.drm_connector, ptr %call2.i.i, i32 0, i32 41
  %121 = ptrtoint ptr %encoder3.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %encoder3.i.i, align 4
  %cmp.i119.i = icmp eq ptr %122, %encoder
  br i1 %cmp.i119.i, label %if.end9.critedge.i.i, label %while.body.i120.i.while.cond.i118.i_crit_edge

while.body.i120.i.while.cond.i118.i_crit_edge:    ; preds = %while.body.i120.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i118.i

if.then8.critedge.i.i:                            ; preds = %while.cond.i118.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i114.i) #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #12
  br label %dce_v6_0_audio_write_sad_regs.exit.i

if.end9.critedge.i.i:                             ; preds = %while.body.i120.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i114.i) #12
  %call10.i.i = call ptr @amdgpu_connector_edid(ptr noundef nonnull %call2.i.i) #12
  %call11.i121.i = call i32 @drm_edid_to_sad(ptr noundef %call10.i.i, ptr noundef nonnull %sads.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i121.i)
  %cmp12.i.i = icmp slt i32 %call11.i121.i, 0
  br i1 %cmp12.i.i, label %if.end14.thread.i.i, label %if.end14.i.i

if.end14.thread.i.i:                              ; preds = %if.end9.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %call11.i121.i) #12
  br label %dce_v6_0_audio_write_sad_regs.exit.i

if.end14.i.i:                                     ; preds = %if.end9.critedge.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i121.i)
  %cmp15.i.i = icmp eq i32 %call11.i121.i, 0
  br i1 %cmp15.i.i, label %if.end14.i.i.dce_v6_0_audio_write_sad_regs.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end14.i.i.dce_v6_0_audio_write_sad_regs.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_audio_write_sad_regs.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end14.i.i
  %audio_endpt_wreg.i122.i = getelementptr i8, ptr %114, i32 3304
  %afmt.i123.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %116, i32 0, i32 11
  br label %for.cond20.preheader.i.i

for.cond20.preheader.i.i:                         ; preds = %for.end.i132.i.for.cond20.preheader.i.i_crit_edge, %for.cond.preheader.i.i
  %i.0131.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc70.i.i, %for.end.i132.i.for.cond20.preheader.i.i_crit_edge ]
  %123 = ptrtoint ptr %sads.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sads.i.i, align 4
  %arrayidx24.i.i = getelementptr [12 x [2 x i16]], ptr @dce_v6_0_audio_write_sad_regs.eld_reg_to_type, i32 0, i32 %i.0131.i.i, i32 1
  %125 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx24.i.i, align 2
  br label %for.body22.i.i

for.body22.i.i:                                   ; preds = %for.inc.i129.i.for.body22.i.i_crit_edge, %for.cond20.preheader.i.i
  %j.0125.i.i = phi i32 [ 0, %for.cond20.preheader.i.i ], [ %inc.i127.i, %for.inc.i129.i.for.body22.i.i_crit_edge ]
  %max_channels.0124.i.i = phi i32 [ -1, %for.cond20.preheader.i.i ], [ %max_channels.3.ph.i.i, %for.inc.i129.i.for.body22.i.i_crit_edge ]
  %stereo_freqs.0123.i.i = phi i8 [ 0, %for.cond20.preheader.i.i ], [ %stereo_freqs.2.ph.i.i, %for.inc.i129.i.for.body22.i.i_crit_edge ]
  %tmp19.0122.i.i = phi i32 [ 0, %for.cond20.preheader.i.i ], [ %tmp19.3.ph.i.i, %for.inc.i129.i.for.body22.i.i_crit_edge ]
  %arrayidx.i124.i = getelementptr %struct.cea_sad, ptr %124, i32 %j.0125.i.i
  %127 = ptrtoint ptr %arrayidx.i124.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.i124.i, align 1
  %129 = zext i8 %128 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %126, i16 %129)
  %cmp26.i.i = icmp eq i16 %126, %129
  br i1 %cmp26.i.i, label %if.then28.i.i, label %for.body22.i.i.for.inc.i129.i_crit_edge

for.body22.i.i.for.inc.i129.i_crit_edge:          ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i129.i

if.then28.i.i:                                    ; preds = %for.body22.i.i
  %channels.i.i = getelementptr %struct.cea_sad, ptr %124, i32 %j.0125.i.i, i32 1
  %130 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %channels.i.i, align 1
  %conv29.i.i = zext i8 %131 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_channels.0124.i.i, i32 %conv29.i.i)
  %cmp30.i.i = icmp slt i32 %max_channels.0124.i.i, %conv29.i.i
  br i1 %cmp30.i.i, label %if.then32.i.i, label %if.then28.i.i.if.end48.i.i_crit_edge

if.then28.i.i.if.end48.i.i_crit_edge:             ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i.i

if.then32.i.i:                                    ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i125.i = and i32 %tmp19.0122.i.i, -16776968
  %and35.i.i = and i32 %conv29.i.i, 7
  %or.i126.i = or i32 %and.i125.i, %and35.i.i
  %byte2.i.i = getelementptr %struct.cea_sad, ptr %124, i32 %j.0125.i.i, i32 3
  %132 = ptrtoint ptr %byte2.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %byte2.i.i, align 1
  %conv37.i.i = zext i8 %133 to i32
  %shl38.i.i = shl nuw nsw i32 %conv37.i.i, 16
  %or40.i.i = or i32 %shl38.i.i, %or.i126.i
  %freq.i.i = getelementptr %struct.cea_sad, ptr %124, i32 %j.0125.i.i, i32 2
  %134 = ptrtoint ptr %freq.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %freq.i.i, align 1
  %conv42.i.i = zext i8 %135 to i32
  %shl43.i.i = shl nuw nsw i32 %conv42.i.i, 8
  %or45.i.i = or i32 %or40.i.i, %shl43.i.i
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then32.i.i, %if.then28.i.i.if.end48.i.i_crit_edge
  %tmp19.1.i.i = phi i32 [ %or45.i.i, %if.then32.i.i ], [ %tmp19.0122.i.i, %if.then28.i.i.if.end48.i.i_crit_edge ]
  %max_channels.1.i.i = phi i32 [ %conv29.i.i, %if.then32.i.i ], [ %max_channels.0124.i.i, %if.then28.i.i.if.end48.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %128)
  %cmp51.i.i = icmp eq i8 %128, 1
  br i1 %cmp51.i.i, label %if.then53.i.i, label %if.end48.i.i.for.end.i132.i_crit_edge

if.end48.i.i.for.end.i132.i_crit_edge:            ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i132.i

if.then53.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %freq54.i.i = getelementptr %struct.cea_sad, ptr %124, i32 %j.0125.i.i, i32 2
  %136 = ptrtoint ptr %freq54.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %freq54.i.i, align 1
  %or57110.i.i = or i8 %137, %stereo_freqs.0123.i.i
  br label %for.inc.i129.i

for.inc.i129.i:                                   ; preds = %if.then53.i.i, %for.body22.i.i.for.inc.i129.i_crit_edge
  %tmp19.3.ph.i.i = phi i32 [ %tmp19.0122.i.i, %for.body22.i.i.for.inc.i129.i_crit_edge ], [ %tmp19.1.i.i, %if.then53.i.i ]
  %stereo_freqs.2.ph.i.i = phi i8 [ %stereo_freqs.0123.i.i, %for.body22.i.i.for.inc.i129.i_crit_edge ], [ %or57110.i.i, %if.then53.i.i ]
  %max_channels.3.ph.i.i = phi i32 [ %max_channels.0124.i.i, %for.body22.i.i.for.inc.i129.i_crit_edge ], [ %max_channels.1.i.i, %if.then53.i.i ]
  %inc.i127.i = add nuw nsw i32 %j.0125.i.i, 1
  %exitcond.not.i128.i = icmp eq i32 %inc.i127.i, %call11.i121.i
  br i1 %exitcond.not.i128.i, label %for.inc.i129.i.for.end.i132.i_crit_edge, label %for.inc.i129.i.for.body22.i.i_crit_edge

for.inc.i129.i.for.body22.i.i_crit_edge:          ; preds = %for.inc.i129.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body22.i.i

for.inc.i129.i.for.end.i132.i_crit_edge:          ; preds = %for.inc.i129.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i132.i

for.end.i132.i:                                   ; preds = %for.inc.i129.i.for.end.i132.i_crit_edge, %if.end48.i.i.for.end.i132.i_crit_edge
  %stereo_freqs.0.lcssa.ph.i.i = phi i8 [ %stereo_freqs.0123.i.i, %if.end48.i.i.for.end.i132.i_crit_edge ], [ %stereo_freqs.2.ph.i.i, %for.inc.i129.i.for.end.i132.i_crit_edge ]
  %tmp19.4.ph.i.i = phi i32 [ %tmp19.1.i.i, %if.end48.i.i.for.end.i132.i_crit_edge ], [ %tmp19.3.ph.i.i, %for.inc.i129.i.for.end.i132.i_crit_edge ]
  %and61.i.i = and i32 %tmp19.4.ph.i.i, 16777215
  %conv62.i.i = zext i8 %stereo_freqs.0.lcssa.ph.i.i to i32
  %shl63.i.i = shl nuw i32 %conv62.i.i, 24
  %or65.i.i = or i32 %and61.i.i, %shl63.i.i
  %138 = ptrtoint ptr %audio_endpt_wreg.i122.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %audio_endpt_wreg.i122.i, align 8
  %140 = ptrtoint ptr %afmt.i123.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %afmt.i123.i, align 4
  %pin.i130.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %pin.i130.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pin.i130.i, align 4
  %offset.i131.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %143, i32 0, i32 5
  %144 = ptrtoint ptr %offset.i131.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %offset.i131.i, align 4
  %arrayidx66.i.i = getelementptr [12 x [2 x i16]], ptr @dce_v6_0_audio_write_sad_regs.eld_reg_to_type, i32 0, i32 %i.0131.i.i
  %146 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx66.i.i, align 2
  %conv68.i.i = zext i16 %147 to i32
  call void %139(ptr noundef %add.ptr.i.i115.i, i32 noundef %145, i32 noundef %conv68.i.i, i32 noundef %or65.i.i) #12
  %inc70.i.i = add nuw nsw i32 %i.0131.i.i, 1
  %exitcond134.not.i.i = icmp eq i32 %inc70.i.i, 12
  br i1 %exitcond134.not.i.i, label %for.end71.i.i, label %for.end.i132.i.for.cond20.preheader.i.i_crit_edge

for.end.i132.i.for.cond20.preheader.i.i_crit_edge: ; preds = %for.end.i132.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond20.preheader.i.i

for.end71.i.i:                                    ; preds = %for.end.i132.i
  call void @__sanitizer_cov_trace_pc() #14
  %148 = ptrtoint ptr %sads.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %sads.i.i, align 4
  call void @kfree(ptr noundef %149) #12
  br label %dce_v6_0_audio_write_sad_regs.exit.i

dce_v6_0_audio_write_sad_regs.exit.i:             ; preds = %for.end71.i.i, %if.end14.i.i.dce_v6_0_audio_write_sad_regs.exit.i_crit_edge, %if.end14.thread.i.i, %if.then8.critedge.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sads.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i114.i) #12
  %150 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i134.i = getelementptr i8, ptr %151, i32 -8
  %152 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %enc_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i133.i) #12
  %154 = ptrtoint ptr %iter.i133.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i133.i, align 4, !annotation !128
  %155 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i133.i, i32 0, i32 1
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr inttoptr (i32 -1 to ptr), ptr %155, align 4, !annotation !128
  call void @drm_connector_list_iter_begin(ptr noundef %151, ptr noundef nonnull %iter.i133.i) #12
  br label %while.cond.i138.i

while.cond.i138.i:                                ; preds = %while.body.i141.i.while.cond.i138.i_crit_edge, %dce_v6_0_audio_write_sad_regs.exit.i
  %call3.i136.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i133.i) #12
  %tobool.not.i137.i = icmp eq ptr %call3.i136.i, null
  br i1 %tobool.not.i137.i, label %if.then9.critedge.i142.i, label %while.body.i141.i

while.body.i141.i:                                ; preds = %while.cond.i138.i
  %encoder4.i139.i = getelementptr inbounds %struct.drm_connector, ptr %call3.i136.i, i32 0, i32 41
  %157 = ptrtoint ptr %encoder4.i139.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %encoder4.i139.i, align 4
  %cmp.i140.i = icmp eq ptr %158, %encoder
  br i1 %cmp.i140.i, label %if.end10.critedge.i145.i, label %while.body.i141.i.while.cond.i138.i_crit_edge

while.body.i141.i.while.cond.i138.i_crit_edge:    ; preds = %while.body.i141.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i138.i

if.then9.critedge.i142.i:                         ; preds = %while.cond.i138.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i133.i) #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #12
  br label %dce_v6_0_audio_write_latency_fields.exit.i

if.end10.critedge.i145.i:                         ; preds = %while.body.i141.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i133.i) #12
  %flags.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %159 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %flags.i.i, align 4
  %and.i143.i = lshr i32 %160, 4
  %and.lobit.i.i = and i32 %and.i143.i, 1
  %arrayidx.i144.i = getelementptr %struct.drm_connector, ptr %call3.i136.i, i32 0, i32 43, i32 %and.lobit.i.i
  %161 = ptrtoint ptr %arrayidx.i144.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx.i144.i, align 1, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool14.not.i.i = icmp eq i8 %162, 0
  br i1 %tobool14.not.i.i, label %if.end10.critedge.i145.i.if.end25.i.i_crit_edge, label %if.then15.i.i

if.end10.critedge.i145.i.if.end25.i.i_crit_edge:  ; preds = %if.end10.critedge.i145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i.i

if.then15.i.i:                                    ; preds = %if.end10.critedge.i145.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx16.i.i = getelementptr %struct.drm_connector, ptr %call3.i136.i, i32 0, i32 44, i32 %and.lobit.i.i
  %163 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx16.i.i, align 4
  %and17.i146.i = and i32 %164, 255
  %arrayidx19.i.i = getelementptr %struct.drm_connector, ptr %call3.i136.i, i32 0, i32 45, i32 %and.lobit.i.i
  %165 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx19.i.i, align 4
  %shl20.i.i = shl i32 %166, 8
  %and21.i.i = and i32 %shl20.i.i, 65280
  %or22.i.i = or i32 %and21.i.i, %and17.i146.i
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then15.i.i, %if.end10.critedge.i145.i.if.end25.i.i_crit_edge
  %tmp2.0.i147.i = phi i32 [ %or22.i.i, %if.then15.i.i ], [ 0, %if.end10.critedge.i145.i.if.end25.i.i_crit_edge ]
  %audio_endpt_wreg.i148.i = getelementptr i8, ptr %151, i32 3304
  %167 = ptrtoint ptr %audio_endpt_wreg.i148.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %audio_endpt_wreg.i148.i, align 8
  %afmt.i149.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %153, i32 0, i32 11
  %169 = ptrtoint ptr %afmt.i149.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %afmt.i149.i, align 4
  %pin.i150.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %pin.i150.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pin.i150.i, align 4
  %offset.i151.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %172, i32 0, i32 5
  %173 = ptrtoint ptr %offset.i151.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %offset.i151.i, align 4
  call void %168(ptr noundef %add.ptr.i.i134.i, i32 noundef %174, i32 noundef 55, i32 noundef %tmp2.0.i147.i) #12
  br label %dce_v6_0_audio_write_latency_fields.exit.i

dce_v6_0_audio_write_latency_fields.exit.i:       ; preds = %if.end25.i.i, %if.then9.critedge.i142.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i133.i) #12
  %175 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call2.i, label %if.else48.critedge.i [
    i32 3, label %if.then37.i
    i32 0, label %dce_v6_0_audio_write_latency_fields.exit.i.if.then42.i_crit_edge
    i32 5, label %dce_v6_0_audio_write_latency_fields.exit.i.if.then42.i_crit_edge46
  ]

dce_v6_0_audio_write_latency_fields.exit.i.if.then42.i_crit_edge46: ; preds = %dce_v6_0_audio_write_latency_fields.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42.i

dce_v6_0_audio_write_latency_fields.exit.i.if.then42.i_crit_edge: ; preds = %dce_v6_0_audio_write_latency_fields.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42.i

if.then37.i:                                      ; preds = %dce_v6_0_audio_write_latency_fields.exit.i
  %176 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %adjusted_mode, align 4
  call fastcc void @dce_v6_0_audio_set_dto(ptr noundef %encoder, i32 noundef %177) #12
  %178 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i152.i = getelementptr i8, ptr %179, i32 -8
  %180 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %enc_priv.i, align 4
  %afmt.i154.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %181, i32 0, i32 11
  %182 = ptrtoint ptr %afmt.i154.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %afmt.i154.i, align 4
  %offset.i155.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %offset.i155.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %offset.i155.i, align 4
  %add.i156.i = add i32 %185, 7184
  %call3.i157.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i152.i, i32 noundef %add.i156.i, i32 noundef 0) #12
  %or7.i.i = or i32 %call3.i157.i, 49
  %186 = ptrtoint ptr %afmt.i154.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %afmt.i154.i, align 4
  %offset9.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %offset9.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %offset9.i.i, align 4
  %add10.i.i = add i32 %189, 7184
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i152.i, i32 noundef %add10.i.i, i32 noundef %or7.i.i, i32 noundef 0) #12
  %190 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %adjusted_mode, align 4
  %192 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i158.i = getelementptr i8, ptr %193, i32 -8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %acr.i.i) #12
  %194 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 1
  %195 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 2
  %196 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 3
  %197 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 4
  %198 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 5
  %199 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 6
  %200 = call ptr @memset(ptr %acr.i.i, i32 255, i32 28)
  call void @amdgpu_afmt_acr(ptr nonnull sret(%struct.amdgpu_afmt_acr) align 4 %acr.i.i, i32 noundef %191) #12
  %201 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %enc_priv.i, align 4
  %afmt.i160.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %202, i32 0, i32 11
  %203 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %afmt.i160.i, align 4
  %offset.i161.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %offset.i161.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %offset.i161.i, align 4
  %add.i162.i = add i32 %206, 7183
  %call3.i163.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add.i162.i, i32 noundef 0) #12
  %or.i164.i = and i32 %call3.i163.i, -4353
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bpc.0.i)
  %cmp.i165.i = icmp slt i32 %bpc.0.i, 9
  %and4.i.i = select i1 %cmp.i165.i, i32 4352, i32 4096
  %or6.i.i = or i32 %or.i164.i, %and4.i.i
  %207 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %afmt.i160.i, align 4
  %offset8.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %offset8.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %offset8.i.i, align 4
  %add9.i.i = add i32 %210, 7183
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add9.i.i, i32 noundef %or6.i.i, i32 noundef 0) #12
  %211 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %afmt.i160.i, align 4
  %offset11.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %offset11.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %offset11.i.i, align 4
  %add12.i.i = add i32 %214, 7223
  %call13.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add12.i.i, i32 noundef 0) #12
  %and14.i.i = and i32 %call13.i.i, 4095
  %215 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %195, align 4
  %shl15.i.i = shl i32 %216, 12
  %or17.i.i = or i32 %shl15.i.i, %and14.i.i
  %217 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %afmt.i160.i, align 4
  %offset19.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %offset19.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %offset19.i.i, align 4
  %add20.i.i = add i32 %220, 7223
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add20.i.i, i32 noundef %or17.i.i, i32 noundef 0) #12
  %221 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %afmt.i160.i, align 4
  %offset22.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %offset22.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %offset22.i.i, align 4
  %add23.i.i = add i32 %224, 7224
  %call24.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add23.i.i, i32 noundef 0) #12
  %and25.i.i = and i32 %call24.i.i, -1048576
  %225 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %194, align 4
  %and27.i.i = and i32 %226, 1048575
  %or28.i.i = or i32 %and27.i.i, %and25.i.i
  %227 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %afmt.i160.i, align 4
  %offset30.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %offset30.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %offset30.i.i, align 4
  %add31.i.i = add i32 %230, 7224
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add31.i.i, i32 noundef %or28.i.i, i32 noundef 0) #12
  %231 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %afmt.i160.i, align 4
  %offset33.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %offset33.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %offset33.i.i, align 4
  %add34.i.i = add i32 %234, 7225
  %call35.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add34.i.i, i32 noundef 0) #12
  %and36.i.i = and i32 %call35.i.i, 4095
  %235 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %197, align 4
  %shl37.i.i = shl i32 %236, 12
  %or39.i.i = or i32 %shl37.i.i, %and36.i.i
  %237 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %afmt.i160.i, align 4
  %offset41.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %offset41.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %offset41.i.i, align 4
  %add42.i.i = add i32 %240, 7225
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add42.i.i, i32 noundef %or39.i.i, i32 noundef 0) #12
  %241 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %afmt.i160.i, align 4
  %offset44.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %offset44.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %offset44.i.i, align 4
  %add45.i.i = add i32 %244, 7226
  %call46.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add45.i.i, i32 noundef 0) #12
  %and47.i.i = and i32 %call46.i.i, -1048576
  %245 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %196, align 4
  %and49.i.i = and i32 %246, 1048575
  %or50.i.i = or i32 %and49.i.i, %and47.i.i
  %247 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %afmt.i160.i, align 4
  %offset52.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %offset52.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %offset52.i.i, align 4
  %add53.i.i = add i32 %250, 7226
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add53.i.i, i32 noundef %or50.i.i, i32 noundef 0) #12
  %251 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %afmt.i160.i, align 4
  %offset55.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %offset55.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %offset55.i.i, align 4
  %add56.i.i = add i32 %254, 7227
  %call57.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add56.i.i, i32 noundef 0) #12
  %and58.i.i = and i32 %call57.i.i, 4095
  %255 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %199, align 4
  %shl59.i.i = shl i32 %256, 12
  %or61.i.i = or i32 %shl59.i.i, %and58.i.i
  %257 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %afmt.i160.i, align 4
  %offset63.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %offset63.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %offset63.i.i, align 4
  %add64.i.i = add i32 %260, 7227
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add64.i.i, i32 noundef %or61.i.i, i32 noundef 0) #12
  %261 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %afmt.i160.i, align 4
  %offset66.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %offset66.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %offset66.i.i, align 4
  %add67.i.i = add i32 %264, 7228
  %call68.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add67.i.i, i32 noundef 0) #12
  %and69.i.i = and i32 %call68.i.i, -1048576
  %265 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %198, align 4
  %and71.i.i = and i32 %266, 1048575
  %or72.i.i = or i32 %and71.i.i, %and69.i.i
  %267 = ptrtoint ptr %afmt.i160.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %afmt.i160.i, align 4
  %offset74.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %268, i32 0, i32 1
  %269 = ptrtoint ptr %offset74.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %offset74.i.i, align 4
  %add75.i.i = add i32 %270, 7228
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i158.i, i32 noundef %add75.i.i, i32 noundef %or72.i.i, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %acr.i.i) #12
  call fastcc void @dce_v6_0_audio_set_packet(ptr noundef %encoder) #12
  %271 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i166.i = getelementptr i8, ptr %272, i32 -8
  %273 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i168.i = icmp eq ptr %274, null
  br i1 %tobool.not.i168.i, label %if.then37.i.dce_v6_0_audio_select_pin.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then37.i.dce_v6_0_audio_select_pin.exit.i_crit_edge: ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_audio_select_pin.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then37.i
  %afmt.i169.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %274, i32 0, i32 11
  %275 = ptrtoint ptr %afmt.i169.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %afmt.i169.i, align 4
  %tobool1.not.i.i = icmp eq ptr %276, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dce_v6_0_audio_select_pin.exit.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dce_v6_0_audio_select_pin.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_audio_select_pin.exit.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %pin.i170.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %276, i32 0, i32 4
  %277 = ptrtoint ptr %pin.i170.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %pin.i170.i, align 4
  %tobool4.not.i.i = icmp eq ptr %278, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dce_v6_0_audio_select_pin.exit.i_crit_edge, label %if.end.i174.i

lor.lhs.false2.i.i.dce_v6_0_audio_select_pin.exit.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_audio_select_pin.exit.i

if.end.i174.i:                                    ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %offset.i171.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %276, i32 0, i32 1
  %279 = ptrtoint ptr %offset.i171.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %offset.i171.i, align 4
  %add.i172.i = add i32 %280, 7247
  %id.i.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %278, i32 0, i32 7
  %281 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %id.i.i, align 4
  %and.i173.i = and i32 %282, 7
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i166.i, i32 noundef %add.i172.i, i32 noundef %and.i173.i, i32 noundef 0) #12
  br label %dce_v6_0_audio_select_pin.exit.i

dce_v6_0_audio_select_pin.exit.i:                 ; preds = %if.end.i174.i, %lor.lhs.false2.i.i.dce_v6_0_audio_select_pin.exit.i_crit_edge, %lor.lhs.false.i.i.dce_v6_0_audio_select_pin.exit.i_crit_edge, %if.then37.i.dce_v6_0_audio_select_pin.exit.i_crit_edge
  call fastcc void @dce_v6_0_audio_set_avi_infoframe(ptr noundef %encoder, ptr noundef %adjusted_mode) #12
  %283 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i175.i = getelementptr i8, ptr %284, i32 -8
  %285 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %enc_priv.i, align 4
  %afmt.i177.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %286, i32 0, i32 11
  %287 = ptrtoint ptr %afmt.i177.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %afmt.i177.i, align 4
  %offset.i178.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %offset.i178.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %offset.i178.i, align 4
  %add.i179.i = add i32 %290, 7190
  %call3.i180.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i175.i, i32 noundef %add.i179.i, i32 noundef 0) #12
  %and.i181.i = and i32 %call3.i180.i, -2
  %291 = ptrtoint ptr %afmt.i177.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %afmt.i177.i, align 4
  %offset6.i182.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %292, i32 0, i32 1
  %293 = ptrtoint ptr %offset6.i182.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %offset6.i182.i, align 4
  %add7.i183.i = add i32 %294, 7190
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i175.i, i32 noundef %add7.i183.i, i32 noundef %and.i181.i, i32 noundef 0) #12
  %295 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i184.i = getelementptr i8, ptr %296, i32 -8
  %297 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %enc_priv.i, align 4
  %afmt.i186.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %298, i32 0, i32 11
  %299 = ptrtoint ptr %afmt.i186.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %afmt.i186.i, align 4
  %offset.i187.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %300, i32 0, i32 1
  %301 = ptrtoint ptr %offset.i187.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %offset.i187.i, align 4
  %add.i188.i = add i32 %302, 7185
  %call3.i189.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i184.i, i32 noundef %add.i188.i, i32 noundef 0) #12
  %or9.i.i = or i32 %call3.i189.i, 51
  %303 = ptrtoint ptr %afmt.i186.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %afmt.i186.i, align 4
  %offset11.i190.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %offset11.i190.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %offset11.i190.i, align 4
  %add12.i191.i = add i32 %306, 7185
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i184.i, i32 noundef %add12.i191.i, i32 noundef %or9.i.i, i32 noundef 0) #12
  %307 = ptrtoint ptr %afmt.i186.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %afmt.i186.i, align 4
  %offset14.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %308, i32 0, i32 1
  %309 = ptrtoint ptr %offset14.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %offset14.i.i, align 4
  %add15.i.i = add i32 %310, 7186
  %call16.i192.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i184.i, i32 noundef %add15.i.i, i32 noundef 0) #12
  %and17.i193.i = and i32 %call16.i192.i, -64
  %or18.i.i = or i32 %and17.i193.i, 2
  %311 = ptrtoint ptr %afmt.i186.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %afmt.i186.i, align 4
  %offset20.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %312, i32 0, i32 1
  %313 = ptrtoint ptr %offset20.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %offset20.i.i, align 4
  %add21.i.i = add i32 %314, 7186
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i184.i, i32 noundef %add21.i.i, i32 noundef %or18.i.i, i32 noundef 0) #12
  br label %if.end54.sink.split.i

if.then42.i:                                      ; preds = %dce_v6_0_audio_write_latency_fields.exit.i.if.then42.i_crit_edge, %dce_v6_0_audio_write_latency_fields.exit.i.if.then42.i_crit_edge46
  %default_dispclk.i = getelementptr i8, ptr %28, i32 3732
  %315 = ptrtoint ptr %default_dispclk.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %default_dispclk.i, align 4
  %mul.i = mul i32 %316, 10
  call fastcc void @dce_v6_0_audio_set_dto(ptr noundef %encoder, i32 noundef %mul.i) #12
  call fastcc void @dce_v6_0_audio_set_packet(ptr noundef %encoder) #12
  %317 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %encoder, align 4
  %319 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i196.i = icmp eq ptr %320, null
  br i1 %tobool.not.i196.i, label %if.then42.i.if.else48.i_crit_edge, label %lor.lhs.false.i199.i

if.then42.i.if.else48.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else48.i

lor.lhs.false.i199.i:                             ; preds = %if.then42.i
  %afmt.i197.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %320, i32 0, i32 11
  %321 = ptrtoint ptr %afmt.i197.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %afmt.i197.i, align 4
  %tobool1.not.i198.i = icmp eq ptr %322, null
  br i1 %tobool1.not.i198.i, label %lor.lhs.false.i199.i.if.else48.i_crit_edge, label %lor.lhs.false2.i202.i

lor.lhs.false.i199.i.if.else48.i_crit_edge:       ; preds = %lor.lhs.false.i199.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else48.i

lor.lhs.false2.i202.i:                            ; preds = %lor.lhs.false.i199.i
  %pin.i200.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %322, i32 0, i32 4
  %323 = ptrtoint ptr %pin.i200.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %pin.i200.i, align 4
  %tobool4.not.i201.i = icmp eq ptr %324, null
  br i1 %tobool4.not.i201.i, label %lor.lhs.false2.i202.i.if.else48.i_crit_edge, label %lor.lhs.false2.i202.i.if.else48.sink.split.i_crit_edge

lor.lhs.false2.i202.i.if.else48.sink.split.i_crit_edge: ; preds = %lor.lhs.false2.i202.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else48.sink.split.i

lor.lhs.false2.i202.i.if.else48.i_crit_edge:      ; preds = %lor.lhs.false2.i202.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else48.i

if.else48.critedge.i:                             ; preds = %dce_v6_0_audio_write_latency_fields.exit.i
  call fastcc void @dce_v6_0_audio_set_packet(ptr noundef %encoder) #12
  %325 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %encoder, align 4
  %327 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i220.i = icmp eq ptr %328, null
  br i1 %tobool.not.i220.i, label %if.else48.critedge.i.if.else48.i_crit_edge, label %lor.lhs.false.i223.i

if.else48.critedge.i.if.else48.i_crit_edge:       ; preds = %if.else48.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else48.i

lor.lhs.false.i223.i:                             ; preds = %if.else48.critedge.i
  %afmt.i221.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %328, i32 0, i32 11
  %329 = ptrtoint ptr %afmt.i221.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %afmt.i221.i, align 4
  %tobool1.not.i222.i = icmp eq ptr %330, null
  br i1 %tobool1.not.i222.i, label %lor.lhs.false.i223.i.if.else48.i_crit_edge, label %lor.lhs.false2.i226.i

lor.lhs.false.i223.i.if.else48.i_crit_edge:       ; preds = %lor.lhs.false.i223.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else48.i

lor.lhs.false2.i226.i:                            ; preds = %lor.lhs.false.i223.i
  %pin.i224.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %330, i32 0, i32 4
  %331 = ptrtoint ptr %pin.i224.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %pin.i224.i, align 4
  %tobool4.not.i225.i = icmp eq ptr %332, null
  br i1 %tobool4.not.i225.i, label %lor.lhs.false2.i226.i.if.else48.i_crit_edge, label %lor.lhs.false2.i226.i.if.else48.sink.split.i_crit_edge

lor.lhs.false2.i226.i.if.else48.sink.split.i_crit_edge: ; preds = %lor.lhs.false2.i226.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else48.sink.split.i

lor.lhs.false2.i226.i.if.else48.i_crit_edge:      ; preds = %lor.lhs.false2.i226.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else48.i

if.else48.sink.split.i:                           ; preds = %lor.lhs.false2.i226.i.if.else48.sink.split.i_crit_edge, %lor.lhs.false2.i202.i.if.else48.sink.split.i_crit_edge
  %.sink287.i = phi ptr [ %322, %lor.lhs.false2.i202.i.if.else48.sink.split.i_crit_edge ], [ %330, %lor.lhs.false2.i226.i.if.else48.sink.split.i_crit_edge ]
  %.sink285.i = phi ptr [ %324, %lor.lhs.false2.i202.i.if.else48.sink.split.i_crit_edge ], [ %332, %lor.lhs.false2.i226.i.if.else48.sink.split.i_crit_edge ]
  %.pn.i = phi ptr [ %318, %lor.lhs.false2.i202.i.if.else48.sink.split.i_crit_edge ], [ %326, %lor.lhs.false2.i226.i.if.else48.sink.split.i_crit_edge ]
  %add.ptr.i.i218.sink.i = getelementptr i8, ptr %.pn.i, i32 -8
  %offset.i227.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %.sink287.i, i32 0, i32 1
  %333 = ptrtoint ptr %offset.i227.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %offset.i227.i, align 4
  %add.i228.i = add i32 %334, 7247
  %id.i229.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %.sink285.i, i32 0, i32 7
  %335 = ptrtoint ptr %id.i229.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %id.i229.i, align 4
  %and.i230.i = and i32 %336, 7
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i218.sink.i, i32 noundef %add.i228.i, i32 noundef %and.i230.i, i32 noundef 0) #12
  br label %if.else48.i

if.else48.i:                                      ; preds = %if.else48.sink.split.i, %lor.lhs.false2.i226.i.if.else48.i_crit_edge, %lor.lhs.false.i223.i.if.else48.i_crit_edge, %if.else48.critedge.i.if.else48.i_crit_edge, %lor.lhs.false2.i202.i.if.else48.i_crit_edge, %lor.lhs.false.i199.i.if.else48.i_crit_edge, %if.then42.i.if.else48.i_crit_edge
  call fastcc void @dce_v6_0_audio_set_avi_infoframe(ptr noundef %encoder, ptr noundef %adjusted_mode) #12
  %337 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i209.i = getelementptr i8, ptr %338, i32 -8
  %339 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %enc_priv.i, align 4
  %afmt.i211.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %340, i32 0, i32 11
  %341 = ptrtoint ptr %afmt.i211.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %afmt.i211.i, align 4
  %offset.i212.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %342, i32 0, i32 1
  %343 = ptrtoint ptr %offset.i212.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %offset.i212.i, align 4
  %add.i213.i = add i32 %344, 7190
  %call3.i214.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i209.i, i32 noundef %add.i213.i, i32 noundef 0) #12
  %and.i215.i = and i32 %call3.i214.i, -2
  %345 = ptrtoint ptr %afmt.i211.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %afmt.i211.i, align 4
  %offset6.i216.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %346, i32 0, i32 1
  %347 = ptrtoint ptr %offset6.i216.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %offset6.i216.i, align 4
  %add7.i217.i = add i32 %348, 7190
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i209.i, i32 noundef %add7.i217.i, i32 noundef %and.i215.i, i32 noundef 0) #12
  %349 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %349, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call2.i, label %if.else48.i.if.end54.i_crit_edge [
    i32 0, label %if.else48.i.if.then52.i_crit_edge
    i32 5, label %if.else48.i.if.then52.i_crit_edge47
  ]

if.else48.i.if.then52.i_crit_edge47:              ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52.i

if.else48.i.if.then52.i_crit_edge:                ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52.i

if.else48.i.if.end54.i_crit_edge:                 ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

if.then52.i:                                      ; preds = %if.else48.i.if.then52.i_crit_edge, %if.else48.i.if.then52.i_crit_edge47
  %350 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i242.i = getelementptr i8, ptr %351, i32 -8
  %352 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %enc_priv.i, align 4
  %afmt.i244.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %353, i32 0, i32 11
  %354 = ptrtoint ptr %afmt.i244.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %afmt.i244.i, align 4
  %offset.i245.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %offset.i245.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %offset.i245.i, align 4
  %add.i246.i = add i32 %357, 7243
  %call3.i247.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i242.i, i32 noundef %add.i246.i, i32 noundef 0) #12
  %or.i248.i = or i32 %call3.i247.i, 1
  %358 = ptrtoint ptr %afmt.i244.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %afmt.i244.i, align 4
  %offset5.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %359, i32 0, i32 1
  %360 = ptrtoint ptr %offset5.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %offset5.i.i, align 4
  %add6.i.i = add i32 %361, 7243
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i242.i, i32 noundef %add6.i.i, i32 noundef %or.i248.i, i32 noundef 0) #12
  %362 = ptrtoint ptr %afmt.i244.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %afmt.i244.i, align 4
  %offset8.i249.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %363, i32 0, i32 1
  %364 = ptrtoint ptr %offset8.i249.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %offset8.i249.i, align 4
  %add9.i250.i = add i32 %365, 7337
  %call10.i251.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i242.i, i32 noundef %add9.i250.i, i32 noundef 0) #12
  %or12.i.i = or i32 %call10.i251.i, 1
  %366 = ptrtoint ptr %afmt.i244.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %afmt.i244.i, align 4
  %offset14.i252.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %offset14.i252.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %offset14.i252.i, align 4
  %add15.i253.i = add i32 %369, 7337
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i242.i, i32 noundef %add15.i253.i, i32 noundef %or12.i.i, i32 noundef 0) #12
  br label %if.end54.sink.split.i

if.end54.sink.split.i:                            ; preds = %if.then52.i, %dce_v6_0_audio_select_pin.exit.i
  %afmt.i244.sink281.i = phi ptr [ %afmt.i244.i, %if.then52.i ], [ %afmt.i186.i, %dce_v6_0_audio_select_pin.exit.i ]
  %.sink279.i = phi i32 [ 7328, %if.then52.i ], [ 7243, %dce_v6_0_audio_select_pin.exit.i ]
  %add.ptr.i.i242.sink277.i = phi ptr [ %add.ptr.i.i242.i, %if.then52.i ], [ %add.ptr.i.i184.i, %dce_v6_0_audio_select_pin.exit.i ]
  %.sink.i = phi i32 [ 4369, %if.then52.i ], [ 1, %dce_v6_0_audio_select_pin.exit.i ]
  %370 = ptrtoint ptr %afmt.i244.sink281.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %afmt.i244.sink281.i, align 4
  %offset17.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %offset17.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %offset17.i.i, align 4
  %add18.i.i = add i32 %373, %.sink279.i
  %call19.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i242.sink277.i, i32 noundef %add18.i.i, i32 noundef 0) #12
  %or27.i254.i = or i32 %call19.i.i, %.sink.i
  %374 = ptrtoint ptr %afmt.i244.sink281.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %afmt.i244.sink281.i, align 4
  %offset29.i255.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %375, i32 0, i32 1
  %376 = ptrtoint ptr %offset29.i255.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %offset29.i255.i, align 4
  %add30.i256.i = add i32 %377, %.sink279.i
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i242.sink277.i, i32 noundef %add30.i256.i, i32 noundef %or27.i254.i, i32 noundef 0) #12
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end54.sink.split.i, %if.else48.i.if.end54.i_crit_edge
  %378 = ptrtoint ptr %afmt.i16 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %afmt.i16, align 4
  %pin56.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %379, i32 0, i32 4
  %380 = ptrtoint ptr %pin56.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %pin56.i, align 4
  %tobool.not.i257.i = icmp eq ptr %381, null
  br i1 %tobool.not.i257.i, label %if.end54.i.dce_v6_0_afmt_setmode.exit_crit_edge, label %if.end.i260.i

if.end54.i.dce_v6_0_afmt_setmode.exit_crit_edge:  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_afmt_setmode.exit

if.end.i260.i:                                    ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  %382 = ptrtoint ptr %audio_endpt_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %audio_endpt_wreg.i.i, align 8
  %offset.i259.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %381, i32 0, i32 5
  %384 = ptrtoint ptr %offset.i259.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %offset.i259.i, align 4
  call void %383(ptr noundef %add.ptr.i.i13, i32 noundef %385, i32 noundef 84, i32 noundef -2147483648) #12
  br label %dce_v6_0_afmt_setmode.exit

dce_v6_0_afmt_setmode.exit:                       ; preds = %if.end.i260.i, %if.end54.i.dce_v6_0_afmt_setmode.exit_crit_edge, %dce_v6_0_audio_get_pin.exit.i.dce_v6_0_afmt_setmode.exit_crit_edge, %if.end14.critedge.i.dce_v6_0_afmt_setmode.exit_crit_edge, %if.then13.critedge.i, %lor.lhs.false.i17.dce_v6_0_afmt_setmode.exit_crit_edge, %dce_v6_0_afmt_enable.exit.dce_v6_0_afmt_setmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i) #12
  br label %if.end

if.end:                                           ; preds = %dce_v6_0_afmt_setmode.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_encoder_dac_detect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_get_connector_for_encoder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_scratch_regs_lock(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_i2c_router_select_cd_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atombios_encoder_set_edp_panel_power(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_set_crtc_source(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_connector_get_monitor_bpc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v6_0_audio_set_dto(ptr noundef %encoder, i32 noundef %clock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %call2 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder) #12
  %call4 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef 363, i32 noundef 0) #12
  %and = and i32 %call4, -8
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_id, align 8
  %and5 = and i32 %5, 7
  %or = or i32 %and5, %and
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call2, label %entry.if.else16_crit_edge [
    i32 3, label %if.then
    i32 0, label %entry.if.then10_crit_edge
    i32 5, label %entry.if.then10_crit_edge41
  ]

entry.if.then10_crit_edge41:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

entry.if.else16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and6 = and i32 %or, -17
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef 363, i32 noundef %and6, i32 noundef 0) #12
  br label %if.end22.sink.split

if.then10:                                        ; preds = %entry.if.then10_crit_edge, %entry.if.then10_crit_edge41
  %or12 = or i32 %or, 16
  br label %if.else16

if.else16:                                        ; preds = %if.then10, %entry.if.else16_crit_edge
  %or12.sink = phi i32 [ %or12, %if.then10 ], [ %or, %entry.if.else16_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef 363, i32 noundef %or12.sink, i32 noundef 0) #12
  %7 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call2, label %if.else16.if.end22_crit_edge [
    i32 0, label %if.else16.if.end22.sink.split_crit_edge
    i32 5, label %if.else16.if.end22.sink.split_crit_edge42
  ]

if.else16.if.end22.sink.split_crit_edge42:        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.sink.split

if.else16.if.end22.sink.split_crit_edge:          ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.sink.split

if.else16.if.end22_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end22.sink.split:                              ; preds = %if.else16.if.end22.sink.split_crit_edge, %if.else16.if.end22.sink.split_crit_edge42, %if.then
  %.sink40 = phi i32 [ 364, %if.then ], [ 368, %if.else16.if.end22.sink.split_crit_edge ], [ 368, %if.else16.if.end22.sink.split_crit_edge42 ]
  %.sink = phi i32 [ 365, %if.then ], [ 369, %if.else16.if.end22.sink.split_crit_edge ], [ 369, %if.else16.if.end22.sink.split_crit_edge42 ]
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %.sink40, i32 noundef 24000, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %.sink, i32 noundef %clock, i32 noundef 0) #12
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.else16.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v6_0_audio_set_packet(ptr nocapture noundef readonly %encoder) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %2 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc_priv, align 4
  %afmt = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %afmt, align 4
  %offset = getelementptr inbounds %struct.amdgpu_afmt, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add = add i32 %7, 7245
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef 0) #12
  %or = or i32 %call3, 128
  %8 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %afmt, align 4
  %offset5 = getelementptr inbounds %struct.amdgpu_afmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset5, align 4
  %add6 = add i32 %11, 7245
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add6, i32 noundef %or, i32 noundef 0) #12
  %12 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %afmt, align 4
  %offset8 = getelementptr inbounds %struct.amdgpu_afmt, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %offset8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset8, align 4
  %add9 = add i32 %15, 7233
  %call10 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add9, i32 noundef 0) #12
  %and11 = and i32 %call10, -15728641
  %or12 = or i32 %and11, 1048576
  %16 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %afmt, align 4
  %offset14 = getelementptr inbounds %struct.amdgpu_afmt, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset14, align 4
  %add15 = add i32 %19, 7233
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add15, i32 noundef %or12, i32 noundef 0) #12
  %20 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %afmt, align 4
  %offset17 = getelementptr inbounds %struct.amdgpu_afmt, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %offset17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset17, align 4
  %add18 = add i32 %23, 7234
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add18, i32 noundef 0) #12
  %and20 = and i32 %call19, -15728641
  %or21 = or i32 %and20, 2097152
  %24 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %afmt, align 4
  %offset23 = getelementptr inbounds %struct.amdgpu_afmt, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset23, align 4
  %add24 = add i32 %27, 7234
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add24, i32 noundef %or21, i32 noundef 0) #12
  %28 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %afmt, align 4
  %offset26 = getelementptr inbounds %struct.amdgpu_afmt, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %offset26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset26, align 4
  %add27 = add i32 %31, 7240
  %call28 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add27, i32 noundef 0) #12
  %and29 = and i32 %call28, -16777216
  %or40 = or i32 %and29, 8873283
  %32 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %afmt, align 4
  %offset42 = getelementptr inbounds %struct.amdgpu_afmt, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %offset42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset42, align 4
  %add43 = add i32 %35, 7240
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add43, i32 noundef %or40, i32 noundef 0) #12
  %36 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %afmt, align 4
  %offset45 = getelementptr inbounds %struct.amdgpu_afmt, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %offset45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset45, align 4
  %add46 = add i32 %39, 7191
  %call47 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add46, i32 noundef 0) #12
  %or49 = or i32 %call47, 65280
  %40 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %afmt, align 4
  %offset51 = getelementptr inbounds %struct.amdgpu_afmt, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %offset51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset51, align 4
  %add52 = add i32 %43, 7191
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add52, i32 noundef %or49, i32 noundef 0) #12
  %44 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %afmt, align 4
  %offset54 = getelementptr inbounds %struct.amdgpu_afmt, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %offset54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset54, align 4
  %add55 = add i32 %47, 7182
  %call56 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add55, i32 noundef 0) #12
  %and57 = and i32 %call56, -2031665
  %or60 = or i32 %and57, 196624
  %48 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %afmt, align 4
  %offset62 = getelementptr inbounds %struct.amdgpu_afmt, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %offset62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset62, align 4
  %add63 = add i32 %51, 7182
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add63, i32 noundef %or60, i32 noundef 0) #12
  %52 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %afmt, align 4
  %offset65 = getelementptr inbounds %struct.amdgpu_afmt, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %offset65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset65, align 4
  %add66 = add i32 %55, 7243
  %call67 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add66, i32 noundef 0) #12
  %or71 = or i32 %call67, 67110912
  %56 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %afmt, align 4
  %offset73 = getelementptr inbounds %struct.amdgpu_afmt, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %offset73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset73, align 4
  %add74 = add i32 %59, 7243
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add74, i32 noundef %or71, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v6_0_audio_set_avi_infoframe(ptr noundef %encoder, ptr noundef %mode) unnamed_addr #0 align 64 {
entry:
  %frame = alloca %struct.hdmi_avi_infoframe, align 4
  %buffer = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %2 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc_priv, align 4
  %call2 = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #12
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame) #12
  %4 = call ptr @memset(ptr %frame, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer) #12
  %5 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 1
  %6 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 3
  %7 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 4
  %8 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 5
  %9 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 6
  %10 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 7
  %11 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 8
  %12 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 9
  %13 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 10
  %14 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 11
  %15 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 12
  %16 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 13
  %17 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 14
  %18 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 15
  %19 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 16
  %20 = call ptr @memset(ptr %buffer, i32 255, i32 17)
  %call6 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame, ptr noundef %call2, ptr noundef %mode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %call6) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %frame, ptr noundef nonnull %buffer, i32 noundef 17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %call8) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %afmt = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %afmt, align 4
  %offset = getelementptr inbounds %struct.amdgpu_afmt, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %add = add i32 %24, 7201
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %6, align 1
  %conv = zext i8 %26 to i32
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %7, align 1
  %conv13 = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %conv13, 8
  %or = or i32 %shl, %conv
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %8, align 1
  %conv15 = zext i8 %30 to i32
  %shl16 = shl nuw nsw i32 %conv15, 16
  %or17 = or i32 %or, %shl16
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %9, align 1
  %conv19 = zext i8 %32 to i32
  %shl20 = shl nuw i32 %conv19, 24
  %or21 = or i32 %or17, %shl20
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef %or21, i32 noundef 0) #12
  %33 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %afmt, align 4
  %offset23 = getelementptr inbounds %struct.amdgpu_afmt, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset23, align 4
  %add24 = add i32 %36, 7202
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %10, align 1
  %conv26 = zext i8 %38 to i32
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %11, align 1
  %conv28 = zext i8 %40 to i32
  %shl29 = shl nuw nsw i32 %conv28, 8
  %or30 = or i32 %shl29, %conv26
  %41 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %12, align 1
  %conv32 = zext i8 %42 to i32
  %shl33 = shl nuw nsw i32 %conv32, 16
  %or34 = or i32 %or30, %shl33
  %43 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %13, align 1
  %conv36 = zext i8 %44 to i32
  %shl37 = shl nuw i32 %conv36, 24
  %or38 = or i32 %or34, %shl37
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add24, i32 noundef %or38, i32 noundef 0) #12
  %45 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %afmt, align 4
  %offset40 = getelementptr inbounds %struct.amdgpu_afmt, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %offset40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset40, align 4
  %add41 = add i32 %48, 7203
  %49 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %14, align 1
  %conv43 = zext i8 %50 to i32
  %51 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %15, align 1
  %conv45 = zext i8 %52 to i32
  %shl46 = shl nuw nsw i32 %conv45, 8
  %or47 = or i32 %shl46, %conv43
  %53 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %16, align 1
  %conv49 = zext i8 %54 to i32
  %shl50 = shl nuw nsw i32 %conv49, 16
  %or51 = or i32 %or47, %shl50
  %55 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %17, align 1
  %conv53 = zext i8 %56 to i32
  %shl54 = shl nuw i32 %conv53, 24
  %or55 = or i32 %or51, %shl54
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add41, i32 noundef %or55, i32 noundef 0) #12
  %57 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %afmt, align 4
  %offset57 = getelementptr inbounds %struct.amdgpu_afmt, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %offset57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset57, align 4
  %add58 = add i32 %60, 7204
  %61 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %18, align 1
  %conv60 = zext i8 %62 to i32
  %63 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %19, align 1
  %conv62 = zext i8 %64 to i32
  %shl63 = shl nuw nsw i32 %conv62, 8
  %or64 = or i32 %shl63, %conv60
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %5, align 1
  %conv66 = zext i8 %66 to i32
  %shl67 = shl nuw i32 %conv66, 24
  %or68 = or i32 %or64, %shl67
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add58, i32 noundef %or68, i32 noundef 0) #12
  %67 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %afmt, align 4
  %offset70 = getelementptr inbounds %struct.amdgpu_afmt, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %offset70 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset70, align 4
  %add71 = add i32 %70, 7186
  %call72 = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add71, i32 noundef 0) #12
  %and = and i32 %call72, -16129
  %or73 = or i32 %and, 512
  %71 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %afmt, align 4
  %offset75 = getelementptr inbounds %struct.amdgpu_afmt, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %offset75 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset75, align 4
  %add76 = add i32 %74, 7186
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add76, i32 noundef %or73, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_to_speaker_allocation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_connector_edid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_to_sad(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_afmt_acr(ptr sret(%struct.amdgpu_afmt_acr) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_encoder_dig_detect(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_encoder_disable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder) #12
  tail call void @amdgpu_atombios_encoder_dpms(ptr noundef %encoder, i32 noundef 3) #12
  %call1 = tail call zeroext i1 @amdgpu_atombios_encoder_is_digital(ptr noundef %encoder) #12
  br i1 %call1, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call, label %if.then.if.end_crit_edge [
    i32 3, label %if.then.if.then5_crit_edge
    i32 0, label %if.then.if.then5_crit_edge14
    i32 5, label %if.then.if.then5_crit_edge15
  ]

if.then.if.then5_crit_edge15:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then.if.then5_crit_edge14:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then5:                                         ; preds = %if.then.if.then5_crit_edge, %if.then.if.then5_crit_edge14, %if.then.if.then5_crit_edge15
  %1 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 -8
  %enc_priv.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %3 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then5.if.end_crit_edge, label %lor.lhs.false.i

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then5
  %afmt.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %afmt.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not.i = icmp eq i8 %8, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true16.critedge.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true16.critedge.i:                       ; preds = %if.end.i
  %pin.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pin.i, align 4
  %tobool18.not.i = icmp eq ptr %10, null
  br i1 %tobool18.not.i, label %land.lhs.true16.critedge.i.if.end24.i_crit_edge, label %dce_v6_0_audio_enable.exit.i

land.lhs.true16.critedge.i.if.end24.i_crit_edge:  ; preds = %land.lhs.true16.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

dce_v6_0_audio_enable.exit.i:                     ; preds = %land.lhs.true16.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %audio_endpt_wreg.i.i = getelementptr i8, ptr %2, i32 3304
  %11 = ptrtoint ptr %audio_endpt_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %audio_endpt_wreg.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i.i, align 4
  tail call void %12(ptr noundef %add.ptr.i.i, i32 noundef %14, i32 noundef 84, i32 noundef 0) #12
  %15 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %afmt.i, align 4
  %pin23.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %pin23.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pin23.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %dce_v6_0_audio_enable.exit.i, %land.lhs.true16.critedge.i.if.end24.i_crit_edge
  %18 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %afmt.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %19, align 4
  %21 = load ptr, ptr %afmt.i, align 4
  %offset.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %encoder_id.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %24 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %encoder_id.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %23, i32 noundef %25) #12
  br label %if.end

if.end:                                           ; preds = %if.end24.i, %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %26 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %enc_priv, align 4
  %dig_encoder = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %dig_encoder, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %active_device = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %29 = ptrtoint ptr %active_device to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %active_device, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atombios_encoder_is_digital(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce_v6_0_ext_dpms(ptr nocapture noundef %encoder, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dce_v6_0_ext_mode_fixup(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adjusted_mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce_v6_0_ext_prepare(ptr nocapture noundef %encoder) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce_v6_0_ext_commit(ptr nocapture noundef %encoder) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce_v6_0_ext_mode_set(ptr nocapture noundef %encoder, ptr nocapture noundef %mode, ptr nocapture noundef %adjusted_mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce_v6_0_ext_disable(ptr nocapture noundef %encoder) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_set_crtc_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %switch = icmp ult i32 %type, 6
  br i1 %switch, label %sw.epilog.sink.split, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v6_0_set_crtc_vblank_interrupt_state(ptr noundef %adev, i32 noundef %type, i32 noundef %state)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_crtc_irq(ptr noundef %adev, ptr noundef %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_id, align 8
  %sub = add i32 %1, -1
  %arrayidx = getelementptr [6 x %struct.anon.114], ptr @interrupt_status_offsets, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %3, i32 noundef 0) #12
  %call2 = tail call i32 @amdgpu_display_crtc_idx_to_irq_type(ptr noundef %adev, i32 noundef %sub) #12
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %4 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_data, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %vblank = getelementptr [6 x %struct.anon.114], ptr @interrupt_status_offsets, i32 0, i32 %sub, i32 1
  %7 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vblank, align 4
  %and = and i32 %8, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx5 = getelementptr [6 x i32], ptr @crtc_offsets, i32 0, i32 %sub
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5, align 4
  %add = add i32 %10, 6895
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef 16, i32 noundef 0) #12
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = tail call zeroext i1 @amdgpu_irq_enabled(ptr noundef %adev, ptr noundef %source, i32 noundef %call2) #12
  br i1 %call6, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call9 = tail call zeroext i1 @drm_handle_vblank(ptr noundef %ddev.i, i32 noundef %sub) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %1) #12
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %vline = getelementptr [6 x %struct.anon.114], ptr @interrupt_status_offsets, i32 0, i32 %sub, i32 2
  %11 = ptrtoint ptr %vline to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vline, align 4
  %and14 = and i32 %12, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else19, label %if.then16

if.then16:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx17 = getelementptr [6 x i32], ptr @crtc_offsets, i32 0, i32 %sub
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %14, 6894
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add18, i32 noundef 16, i32 noundef 0) #12
  br label %if.end20

if.else19:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13) #12
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %1) #12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_id, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %16, i32 noundef %5) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end20, %if.end10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v6_0_set_crtc_vblank_interrupt_state(ptr noundef %adev, i32 noundef %crtc, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %crtc)
  %cmp.not = icmp sgt i32 %1, %crtc
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %crtc) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %crtc)
  %2 = icmp ult i32 %crtc, 6
  br i1 %2, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %crtc) #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.dce_v6_0_set_crtc_vblank_interrupt_state, i32 0, i32 %crtc
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %4 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %state, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %sw.bb6
    i32 1, label %sw.bb8
  ]

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb6:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %switch.load, i32 noundef 0) #12
  %and = and i32 %call, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %switch.load, i32 noundef %and, i32 noundef 0) #12
  br label %cleanup

sw.bb8:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %switch.load, i32 noundef 0) #12
  %or = or i32 %call10, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %switch.load, i32 noundef %or, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb6, %switch.lookup.cleanup_crit_edge, %sw.default, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_crtc_idx_to_irq_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_irq_enabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_handle_vblank(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_set_pageflip_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %type)
  %cmp.not = icmp ugt i32 %1, %type
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %type) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [6 x i32], ptr @crtc_offsets, i32 0, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 6679
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp1 = icmp eq i32 %state, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %call, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %and, i32 noundef 0) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %call, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %or, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.else ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_pageflip_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_id, align 8
  %sub = add i32 %1, -8
  %shr = lshr i32 %sub, 1
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 3, i32 %shr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %4 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %5)
  %cmp.not = icmp ult i32 %shr, %5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %shr) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr [6 x i32], ptr @crtc_offsets, i32 0, i32 %shr
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %7, 6678
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef 256, i32 noundef 0) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %cmp8 = icmp eq ptr %3, null
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %do.body11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body11:                                        ; preds = %if.end7
  %event_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 28
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #12
  %pflip_works = getelementptr inbounds %struct.amdgpu_crtc, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %pflip_works to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pflip_works, align 4
  %pflip_status = getelementptr inbounds %struct.amdgpu_crtc, ptr %3, i32 0, i32 23
  %10 = ptrtoint ptr %pflip_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pflip_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp18.not = icmp eq i32 %11, 2
  br i1 %cmp18.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef 2) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call15) #12
  br label %cleanup

if.end24:                                         ; preds = %do.body11
  %12 = ptrtoint ptr %pflip_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pflip_status, align 8
  %13 = ptrtoint ptr %pflip_works to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pflip_works, align 4
  %event = getelementptr inbounds %struct.amdgpu_flip_work, ptr %9, i32 0, i32 6
  %14 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %event, align 8
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %if.end24.if.end30_crit_edge, label %if.then28

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @drm_crtc_send_vblank_event(ptr noundef nonnull %3, ptr noundef nonnull %15) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end24.if.end30_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call15) #12
  tail call void @drm_crtc_vblank_put(ptr noundef nonnull %3) #12
  %unpin_work = getelementptr inbounds %struct.amdgpu_flip_work, ptr %9, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %unpin_work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then20, %if.end7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then20 ], [ 0, %if.end30 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_set_hpd_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hpd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 21
  %0 = ptrtoint ptr %num_hpd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_hpd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %type)
  %cmp.not = icmp ugt i32 %1, %type
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %type) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %state, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %type
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, 6152
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call, -65537
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %and, i32 noundef 0) #12
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx4 = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %type
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %add5 = add i32 %6, 6152
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add5, i32 noundef 0) #12
  %or = or i32 %call6, 65536
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add5, i32 noundef %or, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_hpd_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %0 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_data, align 4
  %num_hpd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 21
  %2 = ptrtoint ptr %num_hpd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_hpd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %4 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_id, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx6 = getelementptr [6 x %struct.anon.114], ptr @interrupt_status_offsets, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %7, i32 noundef 0) #12
  %hpd8 = getelementptr [6 x %struct.anon.114], ptr @interrupt_status_offsets, i32 0, i32 %1, i32 3
  %8 = ptrtoint ptr %hpd8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hpd8, align 4
  %and = and i32 %9, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx10 = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %add = add i32 %11, 6152
  %call11 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %or = or i32 %call11, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %or, i32 noundef 0) #12
  %hotplug_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %hotplug_work) #12
  %add15 = add nuw i32 %1, 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef %add15) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_modeset_create_props(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atombios_get_connector_info_from_object_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_display_print_display_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dce_v6_0_afmt_init(ptr nocapture noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_dig = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 22
  %0 = ptrtoint ptr %num_dig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_dig, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp59 = icmp sgt i32 %1, 0
  br i1 %cmp59, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp561 = icmp sgt i32 %4, 0
  br i1 %cmp561, label %for.cond2.preheader.for.body6_crit_edge, label %for.cond2.preheader.cleanup_crit_edge

for.cond2.preheader.cleanup_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond2.preheader.for.body6_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body6

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.060 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 5, i32 %i.060
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.060, 1
  %3 = ptrtoint ptr %num_dig to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_dig, align 8
  %cmp = icmp slt i32 %inc, %4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body6:                                        ; preds = %if.then.for.body6_crit_edge, %for.cond2.preheader.for.body6_crit_edge
  %i.162 = phi i32 [ %inc33, %if.then.for.body6_crit_edge ], [ 0, %for.cond2.preheader.for.body6_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 20) #15
  %arrayidx9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 5, i32 %i.162
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %arrayidx9, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.cond20.preheader, label %if.then

for.cond20.preheader:                             ; preds = %for.body6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.162)
  %cmp2163.not = icmp eq i32 %i.162, 0
  br i1 %cmp2163.not, label %for.cond20.preheader.for.end31_crit_edge, label %for.cond20.preheader.for.body22_crit_edge

for.cond20.preheader.for.body22_crit_edge:        ; preds = %for.cond20.preheader
  br label %for.body22

for.cond20.preheader.for.end31_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31

if.then:                                          ; preds = %for.body6
  %arrayidx13 = getelementptr [7 x i32], ptr @dig_offsets, i32 0, i32 %i.162
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx13, align 4
  %offset = getelementptr inbounds %struct.amdgpu_afmt, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %offset, align 4
  %id = getelementptr inbounds %struct.amdgpu_afmt, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.162, ptr %id, align 4
  %inc33 = add nuw nsw i32 %i.162, 1
  %11 = ptrtoint ptr %num_dig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_dig, align 8
  %cmp5 = icmp slt i32 %inc33, %12
  br i1 %cmp5, label %if.then.for.body6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.for.body6_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.cond20.preheader.for.body22_crit_edge
  %j.064 = phi i32 [ %inc30, %for.body22.for.body22_crit_edge ], [ 0, %for.cond20.preheader.for.body22_crit_edge ]
  %arrayidx25 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 5, i32 %j.064
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx25, align 4
  tail call void @kfree(ptr noundef %14) #12
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx25, align 4
  %inc30 = add nuw nsw i32 %j.064, 1
  %exitcond.not = icmp eq i32 %inc30, %i.162
  br i1 %exitcond.not, label %for.body22.for.end31_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body22

for.body22.for.end31_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31

for.end31:                                        ; preds = %for.body22.for.end31_crit_edge, %for.cond20.preheader.for.end31_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end31, %if.then.cleanup_crit_edge, %for.cond2.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.end31 ], [ 0, %for.cond2.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v6_0_audio_init(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_audio to i32))
  %0 = load i32, ptr @amdgpu_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %audio = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19
  %1 = ptrtoint ptr %audio to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %audio, align 4
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cond = icmp eq i32 %3, 3
  %spec.select = select i1 %cond, i32 2, i32 6
  %4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 4
  %audio_endpt_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 59
  br label %for.body

for.body:                                         ; preds = %dce_v6_0_audio_enable.exit.for.body_crit_edge, %if.end
  %i.02 = phi i32 [ 0, %if.end ], [ %inc, %dce_v6_0_audio_enable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.02
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %arrayidx, align 4
  %rate = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.02, i32 1
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %rate, align 4
  %bits_per_sample = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.02, i32 2
  %8 = ptrtoint ptr %bits_per_sample to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %bits_per_sample, align 4
  %status_bits = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.02, i32 3
  %9 = ptrtoint ptr %status_bits to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %status_bits, align 4
  %category_code = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.02, i32 4
  %10 = ptrtoint ptr %category_code to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %category_code, align 1
  %connected = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.02, i32 6
  %11 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %connected, align 4
  %arrayidx32 = getelementptr [7 x i32], ptr @pin_offsets, i32 0, i32 %i.02
  %12 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx32, align 4
  %offset = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.02, i32 5
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %offset, align 4
  %id = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.02, i32 7
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.02, ptr %id, align 4
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %for.body.dce_v6_0_audio_enable.exit_crit_edge, label %if.end.i

for.body.dce_v6_0_audio_enable.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_audio_enable.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %audio_endpt_wreg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %audio_endpt_wreg.i, align 8
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  tail call void %17(ptr noundef %adev, i32 noundef %19, i32 noundef 84, i32 noundef 0) #12
  br label %dce_v6_0_audio_enable.exit

dce_v6_0_audio_enable.exit:                       ; preds = %if.end.i, %for.body.dce_v6_0_audio_enable.exit_crit_edge
  %inc = add nuw nsw i32 %i.02, 1
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %4, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %dce_v6_0_audio_enable.exit.for.body_crit_edge, label %dce_v6_0_audio_enable.exit.cleanup_crit_edge

dce_v6_0_audio_enable.exit.cleanup_crit_edge:     ; preds = %dce_v6_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

dce_v6_0_audio_enable.exit.for.body_crit_edge:    ; preds = %dce_v6_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %dce_v6_0_audio_enable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_crtc_cursor_set2(ptr nocapture noundef %crtc, ptr noundef %file_priv, i32 noundef %handle, i32 noundef %width, i32 noundef %height, i32 noundef %hot_x, i32 noundef %hot_y) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool.not = icmp eq i32 %handle, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -8
  %crtc_offset.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %2 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crtc_offset.i, align 8
  %add.i = add i32 %3, 6758
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add.i, i32 noundef 67109376, i32 noundef 0) #12
  br label %unpin

if.end:                                           ; preds = %entry
  %max_cursor_width = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 13
  %4 = ptrtoint ptr %max_cursor_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_cursor_width, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %width)
  %cmp = icmp ult i32 %5, %width
  br i1 %cmp, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %max_cursor_height = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 14
  %6 = ptrtoint ptr %max_cursor_height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_cursor_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %height)
  %cmp1 = icmp ult i32 %7, %height
  br i1 %cmp1, label %lor.lhs.false.if.then2_crit_edge, label %if.end3

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %width, i32 noundef %height) #12
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %handle) #12
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_id, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %handle, i32 noundef %9) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %add.ptr9 = getelementptr i8, ptr %call, i32 -72
  %bdev.i = getelementptr i8, ptr %call, i32 352
  %10 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr i8, ptr %call, i32 200
  %12 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %13, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %14 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end13
    i32 -512, label %if.end6.if.then.i_crit_edge
  ], !prof !136

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i106 = getelementptr i8, ptr %11, i32 -17736
  %15 = ptrtoint ptr %add.ptr.i.i106 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i106, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.24, ptr noundef %add.ptr9) #16
  br label %if.then.i

if.then.i:                                        ; preds = %do.end.i, %if.end6.if.then.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !137
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !138
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !130

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call i32 @amdgpu_bo_pin(ptr noundef %add.ptr9, i32 noundef 4) #12
  %18 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #12
  %resource.i.i.i = getelementptr i8, ptr %call, i32 372
  %20 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call, ptr noundef %21, ptr noundef null) #12
  %22 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %23, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #12
  %24 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %25) #12
  tail call void @ww_mutex_unlock(ptr noundef %25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then.i111

if.then.i111:                                     ; preds = %if.end13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %call14) #12
  %call.i.i.i.i.i.i.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !137
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !138
  %asmresult.i.i.i.i.i.i.i.i.i109 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i109)
  %cmp.i.i.i.i.i.i110 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i109, 1
  br i1 %cmp.i.i.i.i.i.i110, label %if.then.i.i.i115, label %if.end5.i.i.i.i.i.i113

if.end5.i.i.i.i.i.i113:                           ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i109)
  %.not.i.i.i.i.i.i112 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i109, 0
  br i1 %.not.i.i.i.i.i.i112, label %if.end5.i.i.i.i.i.i113.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i114, !prof !130

if.end5.i.i.i.i.i.i113.cleanup_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i114:                         ; preds = %if.end5.i.i.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i115:                                 ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %add.ptr9) #12
  %cursor_addr = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 6
  %27 = ptrtoint ptr %cursor_addr to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call18, ptr %cursor_addr, align 8
  tail call fastcc void @dce_v6_0_lock_cursor(ptr noundef %crtc, i1 noundef zeroext true)
  %cursor_width = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 11
  %28 = ptrtoint ptr %cursor_width to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cursor_width, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %width)
  %cmp19.not = icmp eq i32 %29, %width
  br i1 %cmp19.not, label %lor.lhs.false20, label %if.end17.if.then26_crit_edge

if.end17.if.then26_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

lor.lhs.false20:                                  ; preds = %if.end17
  %cursor_height = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 12
  %30 = ptrtoint ptr %cursor_height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cursor_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %height)
  %cmp21.not = icmp eq i32 %31, %height
  br i1 %cmp21.not, label %lor.lhs.false22, label %lor.lhs.false20.if.then26_crit_edge

lor.lhs.false20.if.then26_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %cursor_hot_x = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 9
  %32 = ptrtoint ptr %cursor_hot_x to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cursor_hot_x, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %hot_x)
  %cmp23.not = icmp eq i32 %33, %hot_x
  br i1 %cmp23.not, label %lor.lhs.false24, label %lor.lhs.false22.if.then26_crit_edge

lor.lhs.false22.if.then26_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %cursor_hot_y = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 10
  %34 = ptrtoint ptr %cursor_hot_y to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cursor_hot_y, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %hot_y)
  %cmp25.not = icmp eq i32 %35, %hot_y
  br i1 %cmp25.not, label %lor.lhs.false24.if.end36_crit_edge, label %lor.lhs.false24.if.then26_crit_edge

lor.lhs.false24.if.then26_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

lor.lhs.false24.if.end36_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then26:                                        ; preds = %lor.lhs.false24.if.then26_crit_edge, %lor.lhs.false22.if.then26_crit_edge, %lor.lhs.false20.if.then26_crit_edge, %if.end17.if.then26_crit_edge
  %cursor_x = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 7
  %36 = ptrtoint ptr %cursor_x to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cursor_x, align 8
  %cursor_hot_x27 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 9
  %38 = ptrtoint ptr %cursor_hot_x27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cursor_hot_x27, align 8
  %add = sub i32 %37, %hot_x
  %sub = add i32 %add, %39
  %cursor_y = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 8
  %40 = ptrtoint ptr %cursor_y to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cursor_y, align 4
  %cursor_hot_y28 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 10
  %42 = ptrtoint ptr %cursor_hot_y28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cursor_hot_y28, align 4
  %add29 = sub i32 %41, %hot_y
  %sub30 = add i32 %add29, %43
  tail call fastcc void @dce_v6_0_cursor_move_locked(ptr noundef %crtc, i32 noundef %sub, i32 noundef %sub30)
  %44 = ptrtoint ptr %cursor_width to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %width, ptr %cursor_width, align 8
  %cursor_height33 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 12
  %45 = ptrtoint ptr %cursor_height33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %height, ptr %cursor_height33, align 4
  %46 = ptrtoint ptr %cursor_hot_x27 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %hot_x, ptr %cursor_hot_x27, align 8
  %47 = ptrtoint ptr %cursor_hot_y28 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %hot_y, ptr %cursor_hot_y28, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then26, %lor.lhs.false24.if.end36_crit_edge
  tail call fastcc void @dce_v6_0_show_cursor(ptr noundef %crtc)
  tail call fastcc void @dce_v6_0_lock_cursor(ptr noundef %crtc, i1 noundef zeroext false)
  br label %unpin

unpin:                                            ; preds = %if.end36, %if.then
  %obj.0 = phi ptr [ %call, %if.end36 ], [ null, %if.then ]
  %cursor_bo = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 5
  %48 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cursor_bo, align 4
  %tobool37.not = icmp eq ptr %49, null
  br i1 %tobool37.not, label %unpin.if.end51_crit_edge, label %if.then38

unpin.if.end51_crit_edge:                         ; preds = %unpin
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then38:                                        ; preds = %unpin
  %add.ptr43 = getelementptr i8, ptr %49, i32 -72
  %bdev.i117 = getelementptr i8, ptr %49, i32 352
  %50 = ptrtoint ptr %bdev.i117 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bdev.i117, align 8
  %resv32.i.i119 = getelementptr i8, ptr %49, i32 200
  %52 = ptrtoint ptr %resv32.i.i119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %resv32.i.i119, align 8
  %call.i1.i.i = tail call i32 @ww_mutex_lock(ptr noundef %53, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i120 = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i121 = select i1 %cmp.i.i120, i32 -512, i32 %call.i1.i.i
  %54 = zext i32 %.ret.0.i.i121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %.ret.0.i.i121, label %do.end.i122 [
    i32 0, label %if.then48
    i32 -512, label %if.then38.if.end49_crit_edge
  ], !prof !136

if.then38.if.end49_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.end.i122:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i118 = getelementptr i8, ptr %51, i32 -17736
  %55 = ptrtoint ptr %add.ptr.i.i118 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i.i118, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.24, ptr noundef %add.ptr43) #16
  br label %if.end49

if.then48:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_bo_unpin(ptr noundef %add.ptr43) #12
  %57 = ptrtoint ptr %bdev.i117 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bdev.i117, align 8
  %lru_lock.i.i.i126 = getelementptr inbounds %struct.ttm_device, ptr %58, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i126) #12
  %resource.i.i.i127 = getelementptr i8, ptr %49, i32 372
  %59 = ptrtoint ptr %resource.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %resource.i.i.i127, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %49, ptr noundef %60, ptr noundef null) #12
  %61 = ptrtoint ptr %bdev.i117 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bdev.i117, align 8
  %lru_lock2.i.i.i128 = getelementptr inbounds %struct.ttm_device, ptr %62, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i128) #12
  %63 = ptrtoint ptr %resv32.i.i119 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %resv32.i.i119, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %64) #12
  tail call void @ww_mutex_unlock(ptr noundef %64) #12
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %do.end.i122, %if.then38.if.end49_crit_edge
  %65 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cursor_bo, align 4
  %tobool.not.i130 = icmp eq ptr %66, null
  br i1 %tobool.not.i130, label %if.end49.if.end51_crit_edge, label %if.then.i134

if.end49.if.end51_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then.i134:                                     ; preds = %if.end49
  %call.i.i.i.i.i.i.i.i131 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %66, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !137
  tail call void @llvm.prefetch.p0(ptr nonnull %66, i32 1, i32 3, i32 1) #12
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %66, ptr nonnull %66, i32 1, ptr nonnull elementtype(i32) %66) #12, !srcloc !138
  %asmresult.i.i.i.i.i.i.i.i.i132 = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i132)
  %cmp.i.i.i.i.i.i133 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i132, 1
  br i1 %cmp.i.i.i.i.i.i133, label %if.then.i.i.i138, label %if.end5.i.i.i.i.i.i136

if.end5.i.i.i.i.i.i136:                           ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i132)
  %.not.i.i.i.i.i.i135 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i132, 0
  br i1 %.not.i.i.i.i.i.i135, label %if.end5.i.i.i.i.i.i136.if.end51_crit_edge, label %if.then10.i.i.i.i.i.i137, !prof !130

if.end5.i.i.i.i.i.i136.if.end51_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then10.i.i.i.i.i.i137:                         ; preds = %if.end5.i.i.i.i.i.i136
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %66, i32 noundef 3) #12
  br label %if.end51

if.then.i.i.i138:                                 ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void @drm_gem_object_free(ptr noundef nonnull %66) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then.i.i.i138, %if.then10.i.i.i.i.i.i137, %if.end5.i.i.i.i.i.i136.if.end51_crit_edge, %if.end49.if.end51_crit_edge, %unpin.if.end51_crit_edge
  %68 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %obj.0, ptr %cursor_bo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then.i.i.i115, %if.then10.i.i.i.i.i.i114, %if.end5.i.i.i.i.i.i113.cleanup_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then5, %if.then2
  %retval.0 = phi i32 [ -22, %if.then2 ], [ 0, %if.end51 ], [ -2, %if.then5 ], [ %.ret.0.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %.ret.0.i.i, %if.then10.i.i.i.i.i.i ], [ %.ret.0.i.i, %if.then.i.i.i ], [ %call14, %if.end5.i.i.i.i.i.i113.cleanup_crit_edge ], [ %call14, %if.then10.i.i.i.i.i.i114 ], [ %call14, %if.then.i.i.i115 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_crtc_cursor_move(ptr nocapture noundef %crtc, i32 noundef %x, i32 noundef %y) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -8
  %crtc_offset.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %2 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crtc_offset.i, align 8
  %add.i = add i32 %3, 6766
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add.i, i32 noundef 0) #12
  %cur_lock.0.i = or i32 %call1.i, 65536
  %4 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_offset.i, align 8
  %add3.i = add i32 %5, 6766
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add3.i, i32 noundef %cur_lock.0.i, i32 noundef 0) #12
  tail call fastcc void @dce_v6_0_cursor_move_locked(ptr noundef %crtc, i32 noundef %x, i32 noundef %y)
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i3 = getelementptr i8, ptr %7, i32 -8
  %8 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_offset.i, align 8
  %add.i5 = add i32 %9, 6766
  %call1.i6 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i3, i32 noundef %add.i5, i32 noundef 0) #12
  %and.i7 = and i32 %call1.i6, -65537
  %10 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_offset.i, align 8
  %add3.i8 = add i32 %11, 6766
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i3, i32 noundef %add3.i8, i32 noundef %and.i7, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_crtc_gamma_set(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %red, ptr nocapture noundef readnone %green, ptr nocapture noundef readnone %blue, i32 noundef %size, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dce_v6_0_crtc_load_lut(ptr noundef %crtc)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #12
  tail call void @kfree(ptr noundef %crtc) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_crtc_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_crtc_page_flip_target(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_get_vblank_counter_kms(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_enable_vblank_kms(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_disable_vblank_kms(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_pin(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_bo_unreserve(ptr noundef %bo) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4
  %bdev.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #12
  %resource.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %3, ptr noundef null) #12
  %4 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #12
  %resv.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #12
  tail call void @ww_mutex_unlock(ptr noundef %7) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v6_0_lock_cursor(ptr nocapture noundef readonly %crtc, i1 noundef zeroext %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %crtc_offset = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %2 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %3, 6766
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call1, -65537
  %masksel = select i1 %lock, i32 65536, i32 0
  %cur_lock.0 = or i32 %and, %masksel
  %4 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_offset, align 8
  %add3 = add i32 %5, 6766
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add3, i32 noundef %cur_lock.0, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v6_0_cursor_move_locked(ptr nocapture noundef %crtc, i32 noundef %x, i32 noundef %y) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %cursor_width = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 11
  %2 = ptrtoint ptr %cursor_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cursor_width, align 8
  %cursor_x = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 7
  %4 = ptrtoint ptr %cursor_x to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %x, ptr %cursor_x, align 8
  %cursor_y = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 8
  %5 = ptrtoint ptr %cursor_y to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %y, ptr %cursor_y, align 4
  %x1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %6 = ptrtoint ptr %x1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %x1, align 4
  %add = add i32 %7, %x
  %y2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %8 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %y2, align 8
  %add3 = add i32 %9, %y
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef %add, i32 noundef %add3, i32 noundef %7, i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp = icmp slt i32 %add, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 0, %add
  %max_cursor_width = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 13
  %10 = ptrtoint ptr %max_cursor_width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_cursor_width, align 8
  %sub6 = add i32 %11, -1
  %12 = tail call i32 @llvm.smin.i32(i32 %sub6, i32 %sub)
  %phi.bo = shl i32 %12, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xorigin.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %x.addr.0 = phi i32 [ 0, %if.then ], [ %add, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add3)
  %cmp9 = icmp slt i32 %add3, 0
  br i1 %cmp9, label %if.then10, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub11 = sub i32 0, %add3
  %max_cursor_height = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 14
  %13 = ptrtoint ptr %max_cursor_height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_cursor_height, align 4
  %sub12 = add i32 %14, -1
  %15 = tail call i32 @llvm.smin.i32(i32 %sub12, i32 %sub11)
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.end.if.end19_crit_edge
  %yorigin.0 = phi i32 [ %15, %if.then10 ], [ 0, %if.end.if.end19_crit_edge ]
  %y.addr.0 = phi i32 [ 0, %if.then10 ], [ %add3, %if.end.if.end19_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %crtc_offset = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %16 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_offset, align 8
  %add20 = add i32 %17, 6762
  %shl = shl i32 %x.addr.0, 16
  %or = or i32 %y.addr.0, %shl
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add20, i32 noundef %or, i32 noundef 0) #12
  %18 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_offset, align 8
  %add22 = add i32 %19, 6763
  %or24 = or i32 %yorigin.0, %xorigin.0
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add22, i32 noundef %or24, i32 noundef 0) #12
  %20 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_offset, align 8
  %add26 = add i32 %21, 6760
  %sub27 = shl i32 %3, 16
  %shl28 = add i32 %sub27, -65536
  %cursor_height = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 12
  %22 = ptrtoint ptr %cursor_height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cursor_height, align 4
  %sub29 = add i32 %23, -1
  %or30 = or i32 %sub29, %shl28
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add26, i32 noundef %or30, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v6_0_show_cursor(ptr nocapture noundef readonly %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %crtc_offset = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %2 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %3, 6761
  %cursor_addr = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 6
  %4 = ptrtoint ptr %cursor_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cursor_addr, align 8
  %shr = lshr i64 %5, 32
  %conv = trunc i64 %shr to i32
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef %conv, i32 noundef 0) #12
  %6 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_offset, align 8
  %add3 = add i32 %7, 6759
  %8 = ptrtoint ptr %cursor_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cursor_addr, align 8
  %conv5 = trunc i64 %9 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add3, i32 noundef %conv5, i32 noundef 0) #12
  %10 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_offset, align 8
  %add7 = add i32 %11, 6758
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add7, i32 noundef 67109377, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v6_0_crtc_load_lut(ptr nocapture noundef readonly %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crtc_id, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %3) #12
  %crtc_offset = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %4 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %5, 6709
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef 0, i32 noundef 0) #12
  %6 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_offset, align 8
  %add3 = add i32 %7, 6701
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add3, i32 noundef 16, i32 noundef 0) #12
  %8 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_offset, align 8
  %add5 = add i32 %9, 6705
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add5, i32 noundef 16, i32 noundef 0) #12
  %10 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_offset, align 8
  %add7 = add i32 %11, 6672
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add7, i32 noundef 0, i32 noundef 0) #12
  %12 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_offset, align 8
  %add9 = add i32 %13, 6784
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add9, i32 noundef 0, i32 noundef 0) #12
  %14 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_offset, align 8
  %add11 = add i32 %15, 6785
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add11, i32 noundef 0, i32 noundef 0) #12
  %16 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_offset, align 8
  %add13 = add i32 %17, 6786
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add13, i32 noundef 0, i32 noundef 0) #12
  %18 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_offset, align 8
  %add15 = add i32 %19, 6787
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add15, i32 noundef 0, i32 noundef 0) #12
  %20 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_offset, align 8
  %add17 = add i32 %21, 6788
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add17, i32 noundef 65535, i32 noundef 0) #12
  %22 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crtc_offset, align 8
  %add19 = add i32 %23, 6789
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add19, i32 noundef 65535, i32 noundef 0) #12
  %24 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_offset, align 8
  %add21 = add i32 %25, 6790
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add21, i32 noundef 65535, i32 noundef 0) #12
  %26 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crtc_offset, align 8
  %add23 = add i32 %27, 6776
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add23, i32 noundef 0, i32 noundef 0) #12
  %28 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_offset, align 8
  %add25 = add i32 %29, 6782
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add25, i32 noundef 7, i32 noundef 0) #12
  %30 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_offset, align 8
  %add27 = add i32 %31, 6777
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add27, i32 noundef 0, i32 noundef 0) #12
  %gamma_store = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 18
  %32 = ptrtoint ptr %gamma_store to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gamma_store, align 4
  %gamma_size = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %34 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gamma_size, align 8
  %add.ptr28 = getelementptr i16, ptr %33, i32 %35
  %add.ptr30 = getelementptr i16, ptr %add.ptr28, i32 %35
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.099 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %b.098 = phi ptr [ %add.ptr30, %entry ], [ %incdec.ptr37, %for.body.for.body_crit_edge ]
  %g.097 = phi ptr [ %add.ptr28, %entry ], [ %incdec.ptr33, %for.body.for.body_crit_edge ]
  %r.096 = phi ptr [ %33, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %36 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %crtc_offset, align 8
  %add32 = add i32 %37, 6780
  %incdec.ptr = getelementptr i16, ptr %r.096, i32 1
  %38 = ptrtoint ptr %r.096 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %r.096, align 2
  %40 = and i16 %39, -64
  %and = zext i16 %40 to i32
  %shl = shl nuw nsw i32 %and, 14
  %incdec.ptr33 = getelementptr i16, ptr %g.097, i32 1
  %41 = ptrtoint ptr %g.097 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %g.097, align 2
  %43 = and i16 %42, -64
  %and35 = zext i16 %43 to i32
  %shl36 = shl nuw nsw i32 %and35, 4
  %or = or i32 %shl36, %shl
  %incdec.ptr37 = getelementptr i16, ptr %b.098, i32 1
  %44 = ptrtoint ptr %b.098 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %b.098, align 2
  %46 = lshr i16 %45, 6
  %47 = zext i16 %46 to i32
  %or39 = or i32 %or, %47
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add32, i32 noundef %or39, i32 noundef 0) #12
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %crtc_offset, align 8
  %add41 = add i32 %49, 6744
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add41, i32 noundef 0, i32 noundef 0) #12
  %50 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %crtc_offset, align 8
  %add43 = add i32 %51, 6745
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add43, i32 noundef 0, i32 noundef 0) #12
  %52 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %crtc_offset, align 8
  %add45 = add i32 %53, 6816
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add45, i32 noundef 0, i32 noundef 0) #12
  %54 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %crtc_offset, align 8
  %add47 = add i32 %55, 6716
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add47, i32 noundef 0, i32 noundef 0) #12
  %56 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crtc_offset, align 8
  %add49 = add i32 %57, 6736
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add49, i32 noundef 0, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_crtc_dpms(ptr noundef %crtc, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb5_crit_edge
    i32 2, label %entry.sw.bb5_crit_edge25
    i32 3, label %entry.sw.bb5_crit_edge26
  ]

entry.sw.bb5_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %enabled = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 2
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %enabled, align 4
  tail call void @amdgpu_atombios_crtc_enable(ptr noundef %crtc, i32 noundef 1) #12
  tail call void @amdgpu_atombios_crtc_blank(ptr noundef %crtc, i32 noundef 0) #12
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %4 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_id, align 8
  %call2 = tail call i32 @amdgpu_display_crtc_idx_to_irq_type(ptr noundef %add.ptr.i, i32 noundef %5) #12
  %crtc_irq = getelementptr i8, ptr %1, i32 22468
  %call3 = tail call i32 @amdgpu_irq_update(ptr noundef %add.ptr.i, ptr noundef %crtc_irq, i32 noundef %call2) #12
  %pageflip_irq = getelementptr i8, ptr %1, i32 22504
  %call4 = tail call i32 @amdgpu_irq_update(ptr noundef %add.ptr.i, ptr noundef %pageflip_irq, i32 noundef %call2) #12
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #12
  tail call fastcc void @dce_v6_0_crtc_load_lut(ptr noundef %crtc)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge25, %entry.sw.bb5_crit_edge26
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #12
  %enabled6 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 2
  %6 = ptrtoint ptr %enabled6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled6, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %sw.bb5.if.end_crit_edge, label %if.then

sw.bb5.if.end_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_atombios_crtc_blank(ptr noundef %crtc, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb5.if.end_crit_edge
  tail call void @amdgpu_atombios_crtc_enable(ptr noundef %crtc, i32 noundef 0) #12
  %8 = ptrtoint ptr %enabled6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @amdgpu_pm_compute_clocks(ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_crtc_prepare(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_atombios_crtc_powergate(ptr noundef %crtc, i32 noundef 0) #12
  tail call void @amdgpu_atombios_crtc_lock(ptr noundef %crtc, i32 noundef 1) #12
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #12
  %enabled6.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 2
  %2 = ptrtoint ptr %enabled6.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled6.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.dce_v6_0_crtc_dpms.exit_crit_edge, label %if.then.i

entry.dce_v6_0_crtc_dpms.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_crtc_dpms.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_atombios_crtc_blank(ptr noundef %crtc, i32 noundef 1) #12
  br label %dce_v6_0_crtc_dpms.exit

dce_v6_0_crtc_dpms.exit:                          ; preds = %if.then.i, %entry.dce_v6_0_crtc_dpms.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -8
  tail call void @amdgpu_atombios_crtc_enable(ptr noundef %crtc, i32 noundef 0) #12
  %4 = ptrtoint ptr %enabled6.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled6.i, align 4
  tail call void @amdgpu_pm_compute_clocks(ptr noundef %add.ptr.i.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_crtc_commit(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -8
  %enabled.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 2
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enabled.i, align 4
  tail call void @amdgpu_atombios_crtc_enable(ptr noundef %crtc, i32 noundef 1) #12
  tail call void @amdgpu_atombios_crtc_blank(ptr noundef %crtc, i32 noundef 0) #12
  %crtc_id.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %3 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %crtc_id.i, align 8
  %call2.i = tail call i32 @amdgpu_display_crtc_idx_to_irq_type(ptr noundef %add.ptr.i.i, i32 noundef %4) #12
  %crtc_irq.i = getelementptr i8, ptr %1, i32 22468
  %call3.i = tail call i32 @amdgpu_irq_update(ptr noundef %add.ptr.i.i, ptr noundef %crtc_irq.i, i32 noundef %call2.i) #12
  %pageflip_irq.i = getelementptr i8, ptr %1, i32 22504
  %call4.i = tail call i32 @amdgpu_irq_update(ptr noundef %add.ptr.i.i, ptr noundef %pageflip_irq.i, i32 noundef %call2.i) #12
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #12
  tail call fastcc void @dce_v6_0_crtc_load_lut(ptr noundef %crtc) #12
  tail call void @amdgpu_pm_compute_clocks(ptr noundef %add.ptr.i.i) #12
  tail call void @amdgpu_atombios_crtc_lock(ptr noundef %crtc, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_v6_0_crtc_mode_fixup(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %encoder_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %crtc7 = getelementptr i8, ptr %.pn, i32 48
  %3 = ptrtoint ptr %crtc7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc7, align 4
  %cmp8 = icmp eq ptr %4, %crtc
  br i1 %cmp8, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %encoder.0.le = getelementptr i8, ptr %.pn, i32 -4
  %encoder9 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 33
  %5 = ptrtoint ptr %encoder9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %encoder.0.le, ptr %encoder9, align 8
  %call = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder.0.le) #12
  %connector = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 34
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %connector, align 4
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %encoder15 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 33
  %7 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %encoder15, align 8
  %cmp16 = icmp eq ptr %8, null
  br i1 %cmp16, label %for.end.if.then19_crit_edge, label %lor.lhs.false

for.end.if.then19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

lor.lhs.false:                                    ; preds = %for.end
  %connector17 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 34
  %9 = ptrtoint ptr %connector17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connector17, align 4
  %cmp18 = icmp eq ptr %10, null
  br i1 %cmp18, label %lor.lhs.false.if.then19_crit_edge, label %if.end22

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %for.end.if.then19_crit_edge
  %11 = ptrtoint ptr %encoder15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %encoder15, align 8
  %connector21 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 34
  %12 = ptrtoint ptr %connector21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %connector21, align 4
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %call23 = tail call zeroext i1 @amdgpu_display_crtc_scaling_mode_fixup(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode) #12
  br i1 %call23, label %if.end25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %call26 = tail call i32 @amdgpu_atombios_crtc_prepare_pll(ptr noundef %crtc, ptr noundef %adjusted_mode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.end28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %13 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crtc, align 8
  %15 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %encoder15, align 8
  %call2.i = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.end28.if.then.i_crit_edge, label %lor.lhs.false.i

if.end28.if.then.i_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end28
  %17 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encoder15, align 8
  %call4.i = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call4.i)
  %cmp5.i = icmp eq i32 %call4.i, 5
  br i1 %cmp5.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else7.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end28.if.then.i_crit_edge
  %dp_extclk.i = getelementptr i8, ptr %14, i32 3740
  %19 = ptrtoint ptr %dp_extclk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dp_extclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then.i.dce_v6_0_pick_pll.exit.thread_crit_edge, label %if.then.i.land.lhs.true_crit_edge

if.then.i.land.lhs.true_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then.i.dce_v6_0_pick_pll.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_pick_pll.exit.thread

if.else7.i:                                       ; preds = %lor.lhs.false.i
  %call8.i = tail call i32 @amdgpu_pll_get_shared_nondp_ppll(ptr noundef %crtc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, 255
  br i1 %cmp9.not.i, label %if.end11.i, label %if.else7.i.dce_v6_0_pick_pll.exit.thread_crit_edge

if.else7.i.dce_v6_0_pick_pll.exit.thread_crit_edge: ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_pick_pll.exit.thread

if.end11.i:                                       ; preds = %if.else7.i
  %call12.i = tail call i32 @amdgpu_pll_get_use_mask(ptr noundef %crtc) #12
  %and.i = and i32 %call12.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.dce_v6_0_pick_pll.exit.thread_crit_edge, label %if.end15.i

if.end11.i.dce_v6_0_pick_pll.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_pick_pll.exit.thread

if.end15.i:                                       ; preds = %if.end11.i
  %and16.i = and i32 %call12.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.dce_v6_0_pick_pll.exit.thread_crit_edge, label %if.end19.i

if.end15.i.dce_v6_0_pick_pll.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_pick_pll.exit.thread

if.end19.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #12
  br label %land.lhs.true

dce_v6_0_pick_pll.exit.thread:                    ; preds = %if.end15.i.dce_v6_0_pick_pll.exit.thread_crit_edge, %if.end11.i.dce_v6_0_pick_pll.exit.thread_crit_edge, %if.else7.i.dce_v6_0_pick_pll.exit.thread_crit_edge, %if.then.i.dce_v6_0_pick_pll.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %if.end15.i.dce_v6_0_pick_pll.exit.thread_crit_edge ], [ 1, %if.end11.i.dce_v6_0_pick_pll.exit.thread_crit_edge ], [ %call8.i, %if.else7.i.dce_v6_0_pick_pll.exit.thread_crit_edge ], [ 2, %if.then.i.dce_v6_0_pick_pll.exit.thread_crit_edge ]
  %pll_id64 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  %21 = ptrtoint ptr %pll_id64 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i.ph, ptr %pll_id64, align 8
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end19.i, %if.then.i.land.lhs.true_crit_edge
  %pll_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  %22 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 255, ptr %pll_id, align 8
  %23 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %encoder15, align 8
  %call33 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %land.lhs.true.if.end40_crit_edge, label %lor.lhs.false35

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

lor.lhs.false35:                                  ; preds = %land.lhs.true
  %25 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %encoder15, align 8
  %call37 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 5
  br i1 %cmp38, label %lor.lhs.false35.if.end40_crit_edge, label %lor.lhs.false35.cleanup_crit_edge

lor.lhs.false35.cleanup_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false35.if.end40_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end40:                                         ; preds = %lor.lhs.false35.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %dce_v6_0_pick_pll.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %lor.lhs.false35.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then19
  %retval.0 = phi i1 [ false, %if.then19 ], [ true, %if.end40 ], [ false, %if.end22.cleanup_crit_edge ], [ false, %if.end25.cleanup_crit_edge ], [ false, %lor.lhs.false35.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_crtc_mode_set(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode, i32 noundef %x, i32 noundef %y, ptr noundef %old_fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %adjusted_clock = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 28
  %0 = ptrtoint ptr %adjusted_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adjusted_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @amdgpu_atombios_crtc_set_pll(ptr noundef %crtc, ptr noundef %adjusted_mode) #12
  tail call void @amdgpu_atombios_crtc_set_dtd_timing(ptr noundef %crtc, ptr noundef %adjusted_mode) #12
  %call = tail call fastcc i32 @dce_v6_0_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0)
  tail call void @amdgpu_atombios_crtc_overscan_setup(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode) #12
  tail call void @amdgpu_atombios_crtc_scaler_setup(ptr noundef %crtc) #12
  %cursor_bo.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 5
  %2 = ptrtoint ptr %cursor_bo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cursor_bo.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.dce_v6_0_cursor_reset.exit_crit_edge, label %if.then.i

if.end.dce_v6_0_cursor_reset.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_cursor_reset.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -8
  %crtc_offset.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %6 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_offset.i.i, align 8
  %add.i.i = add i32 %7, 6766
  %call1.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i.i, i32 noundef %add.i.i, i32 noundef 0) #12
  %cur_lock.0.i.i = or i32 %call1.i.i, 65536
  %8 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_offset.i.i, align 8
  %add3.i.i = add i32 %9, 6766
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i.i, i32 noundef %add3.i.i, i32 noundef %cur_lock.0.i.i, i32 noundef 0) #12
  %cursor_x.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 7
  %10 = ptrtoint ptr %cursor_x.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cursor_x.i, align 8
  %cursor_y.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 8
  %12 = ptrtoint ptr %cursor_y.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cursor_y.i, align 4
  tail call fastcc void @dce_v6_0_cursor_move_locked(ptr noundef %crtc, i32 noundef %11, i32 noundef %13) #12
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i7.i = getelementptr i8, ptr %15, i32 -8
  %16 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_offset.i.i, align 8
  %add.i9.i = add i32 %17, 6761
  %cursor_addr.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 6
  %18 = ptrtoint ptr %cursor_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cursor_addr.i.i, align 8
  %shr.i.i = lshr i64 %19, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i7.i, i32 noundef %add.i9.i, i32 noundef %conv.i.i, i32 noundef 0) #12
  %20 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_offset.i.i, align 8
  %add3.i10.i = add i32 %21, 6759
  %22 = ptrtoint ptr %cursor_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %cursor_addr.i.i, align 8
  %conv5.i.i = trunc i64 %23 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i7.i, i32 noundef %add3.i10.i, i32 noundef %conv5.i.i, i32 noundef 0) #12
  %24 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_offset.i.i, align 8
  %add7.i.i = add i32 %25, 6758
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i7.i, i32 noundef %add7.i.i, i32 noundef 67109377, i32 noundef 0) #12
  %26 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i11.i = getelementptr i8, ptr %27, i32 -8
  %28 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_offset.i.i, align 8
  %add.i13.i = add i32 %29, 6766
  %call1.i14.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i11.i, i32 noundef %add.i13.i, i32 noundef 0) #12
  %and.i15.i = and i32 %call1.i14.i, -65537
  %30 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_offset.i.i, align 8
  %add3.i16.i = add i32 %31, 6766
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i11.i, i32 noundef %add3.i16.i, i32 noundef %and.i15.i, i32 noundef 0) #12
  br label %dce_v6_0_cursor_reset.exit

dce_v6_0_cursor_reset.exit:                       ; preds = %if.then.i, %if.end.dce_v6_0_cursor_reset.exit_crit_edge
  %hw_mode = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 39
  %32 = call ptr @memcpy(ptr %hw_mode, ptr %adjusted_mode, i32 112)
  br label %cleanup

cleanup:                                          ; preds = %dce_v6_0_cursor_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dce_v6_0_cursor_reset.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_crtc_set_base(ptr nocapture noundef readonly %crtc, i32 noundef %x, i32 noundef %y, ptr noundef %old_fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dce_v6_0_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v6_0_crtc_set_base_atomic(ptr nocapture noundef readonly %crtc, ptr noundef %fb, i32 noundef %x, i32 noundef %y, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dce_v6_0_crtc_do_set_base(ptr noundef %crtc, ptr noundef %fb, i32 noundef %x, i32 noundef %y, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v6_0_crtc_disable(ptr noundef %crtc) #0 align 64 {
entry:
  %ss = alloca %struct.amdgpu_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #12
  %2 = call ptr @memset(ptr %ss, i32 255, i32 16)
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #12
  %enabled6.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 2
  %3 = ptrtoint ptr %enabled6.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled6.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.dce_v6_0_crtc_dpms.exit_crit_edge, label %if.then.i

entry.dce_v6_0_crtc_dpms.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v6_0_crtc_dpms.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_atombios_crtc_blank(ptr noundef %crtc, i32 noundef 1) #12
  br label %dce_v6_0_crtc_dpms.exit

dce_v6_0_crtc_dpms.exit:                          ; preds = %if.then.i, %entry.dce_v6_0_crtc_dpms.exit_crit_edge
  tail call void @amdgpu_atombios_crtc_enable(ptr noundef %crtc, i32 noundef 0) #12
  %5 = ptrtoint ptr %enabled6.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %enabled6.i, align 4
  tail call void @amdgpu_pm_compute_clocks(ptr noundef %add.ptr.i) #12
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %6 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %primary, align 4
  %fb = getelementptr inbounds %struct.drm_plane, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %dce_v6_0_crtc_dpms.exit.if.end12_crit_edge, label %if.then

dce_v6_0_crtc_dpms.exit.if.end12_crit_edge:       ; preds = %dce_v6_0_crtc_dpms.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %dce_v6_0_crtc_dpms.exit
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 -72
  %bdev.i = getelementptr i8, ptr %11, i32 352
  %12 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr i8, ptr %11, i32 200
  %14 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resv32.i.i, align 8
  %call.i1.i.i = tail call i32 @ww_mutex_lock(ptr noundef %15, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i1.i.i
  %16 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.else
    i32 -512, label %if.then.if.then11_crit_edge
  ], !prof !136

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i60 = getelementptr i8, ptr %13, i32 -17736
  %17 = ptrtoint ptr %add.ptr.i.i60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i60, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.24, ptr noundef %add.ptr6) #16
  br label %if.then11

if.then11:                                        ; preds = %do.end.i, %if.then.if.then11_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #12
  br label %if.end12

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_bo_unpin(ptr noundef %add.ptr6) #12
  %19 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %20, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #12
  %resource.i.i.i = getelementptr i8, ptr %11, i32 372
  %21 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %11, ptr noundef %22, ptr noundef null) #12
  %23 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %24, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #12
  %25 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %26) #12
  tail call void @ww_mutex_unlock(ptr noundef %26) #12
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11, %dce_v6_0_crtc_dpms.exit.if.end12_crit_edge
  %27 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i61 = getelementptr i8, ptr %28, i32 -8
  %crtc_offset.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %29 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crtc_offset.i, align 8
  %add.i = add i32 %30, 6656
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i61, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #12
  tail call void @amdgpu_atombios_crtc_powergate(ptr noundef %crtc, i32 noundef 1) #12
  %num_crtc = getelementptr i8, ptr %1, i32 22400
  %31 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp62 = icmp sgt i32 %32, 0
  br i1 %cmp62, label %for.body.lr.ph, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %pll_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 79, i32 3, i32 %i.063
  %33 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %34, null
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %enabled = getelementptr inbounds %struct.amdgpu_crtc, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enabled, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool19.not = icmp eq i8 %36, 0
  br i1 %tobool19.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true20

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true20:                                  ; preds = %land.lhs.true
  %37 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.063, i32 %38)
  %cmp21.not = icmp eq i32 %i.063, %38
  br i1 %cmp21.not, label %land.lhs.true20.for.inc_crit_edge, label %land.lhs.true22

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %39 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pll_id, align 8
  %pll_id26 = getelementptr inbounds %struct.amdgpu_crtc, ptr %34, i32 0, i32 21
  %41 = ptrtoint ptr %pll_id26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pll_id26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp27 = icmp eq i32 %40, %42
  br i1 %cmp27, label %land.lhs.true22.done_crit_edge, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true22.done_crit_edge:                   ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

for.inc:                                          ; preds = %land.lhs.true22.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge
  %pll_id30 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  %43 = ptrtoint ptr %pll_id30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pll_id30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %switch = icmp ult i32 %44, 2
  br i1 %switch, label %sw.bb, label %for.end.done_crit_edge

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %crtc_id31 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %45 = ptrtoint ptr %crtc_id31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %crtc_id31, align 8
  call void @amdgpu_atombios_crtc_program_pll(ptr noundef %crtc, i32 noundef %46, i32 noundef %44, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %ss) #12
  br label %done

done:                                             ; preds = %sw.bb, %for.end.done_crit_edge, %land.lhs.true22.done_crit_edge
  %pll_id33 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  %47 = ptrtoint ptr %pll_id33 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 255, ptr %pll_id33, align 8
  %adjusted_clock = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 28
  %48 = ptrtoint ptr %adjusted_clock to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %adjusted_clock, align 4
  %encoder = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 33
  %49 = ptrtoint ptr %encoder to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %encoder, align 8
  %connector = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 34
  %50 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %connector, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_crtc_get_scanout_position(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_blank(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_pm_compute_clocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_powergate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_display_crtc_scaling_mode_fixup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_crtc_prepare_pll(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_pll_get_shared_nondp_ppll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_pll_get_use_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_set_pll(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_set_dtd_timing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dce_v6_0_crtc_do_set_base(ptr nocapture noundef readonly %crtc, ptr noundef readonly %fb, i32 noundef %x, i32 noundef %y, i32 noundef %atomic) unnamed_addr #0 align 64 {
entry:
  %tiling_flags = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tiling_flags) #12
  %2 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tiling_flags, align 8, !annotation !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %atomic)
  %tobool.not = icmp eq i32 %atomic, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %3 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %primary, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fb2, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %target_fb.0 = phi ptr [ %fb, %entry.if.end8_crit_edge ], [ %6, %land.lhs.true.if.end8_crit_edge ]
  %obj9 = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 15
  %7 = ptrtoint ptr %obj9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %obj9, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 -72
  %bdev.i = getelementptr i8, ptr %8, i32 352
  %9 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr i8, ptr %8, i32 200
  %11 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %12, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %13 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end17
    i32 -512, label %if.end8.cleanup_crit_edge
  ], !prof !136

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -17736
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.24, ptr noundef %add.ptr12) #16
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  br i1 %tobool.not, label %if.then19, label %if.end17.if.end30_crit_edge

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @amdgpu_bo_pin(ptr noundef %add.ptr12, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.then19.if.end30_crit_edge, label %if.then28, !prof !130

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @amdgpu_bo_unreserve(ptr noundef %add.ptr12)
  br label %cleanup

if.end30:                                         ; preds = %if.then19.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  %call31 = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %add.ptr12) #12
  call void @amdgpu_bo_get_tiling_flags(ptr noundef %add.ptr12, ptr noundef nonnull %tiling_flags) #12
  %16 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %17, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #12
  %resource.i.i.i = getelementptr i8, ptr %8, i32 372
  %18 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %8, ptr noundef %19, ptr noundef null) #12
  %20 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %21, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #12
  %22 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resv32.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %23) #12
  call void @ww_mutex_unlock(ptr noundef %23) #12
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 4
  %24 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %format, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %27, label %sw.default [
    i32 538982467, label %if.end30.sw.epilog_crit_edge
    i32 842093144, label %if.end30.sw.bb33_crit_edge
    i32 842093121, label %if.end30.sw.bb33_crit_edge307
    i32 892424792, label %if.end30.sw.bb34_crit_edge
    i32 892424769, label %if.end30.sw.bb34_crit_edge308
    i32 892426306, label %if.end30.sw.bb35_crit_edge
    i32 892420418, label %if.end30.sw.bb35_crit_edge309
    i32 909199186, label %sw.bb36
    i32 875713112, label %if.end30.sw.bb37_crit_edge
    i32 875713089, label %if.end30.sw.bb37_crit_edge310
    i32 808669784, label %if.end30.sw.bb38_crit_edge
    i32 808669761, label %if.end30.sw.bb38_crit_edge311
    i32 808671298, label %if.end30.sw.bb39_crit_edge
    i32 808665410, label %if.end30.sw.bb39_crit_edge312
    i32 875709016, label %if.end30.sw.bb40_crit_edge
    i32 875708993, label %if.end30.sw.bb40_crit_edge313
  ]

if.end30.sw.bb40_crit_edge313:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb40

if.end30.sw.bb40_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb40

if.end30.sw.bb39_crit_edge312:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb39

if.end30.sw.bb39_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb39

if.end30.sw.bb38_crit_edge311:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb38

if.end30.sw.bb38_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb38

if.end30.sw.bb37_crit_edge310:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb37

if.end30.sw.bb37_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb37

if.end30.sw.bb35_crit_edge309:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35

if.end30.sw.bb35_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35

if.end30.sw.bb34_crit_edge308:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb34

if.end30.sw.bb34_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb34

if.end30.sw.bb33_crit_edge307:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb33

if.end30.sw.bb33_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb33

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end30.sw.bb33_crit_edge, %if.end30.sw.bb33_crit_edge307
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end30.sw.bb34_crit_edge, %if.end30.sw.bb34_crit_edge308
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end30.sw.bb35_crit_edge, %if.end30.sw.bb35_crit_edge309
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end30.sw.bb37_crit_edge, %if.end30.sw.bb37_crit_edge310
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end30.sw.bb38_crit_edge, %if.end30.sw.bb38_crit_edge311
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end30.sw.bb39_crit_edge, %if.end30.sw.bb39_crit_edge312
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end30.sw.bb40_crit_edge, %if.end30.sw.bb40_crit_edge313
  br label %sw.epilog

sw.default:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, ptr noundef %25) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %if.end30.sw.epilog_crit_edge
  %fb_swap.0 = phi i32 [ 546, %sw.bb40 ], [ 2, %sw.bb39 ], [ 2, %sw.bb38 ], [ 2, %sw.bb37 ], [ 1, %sw.bb36 ], [ 1, %sw.bb35 ], [ 1, %sw.bb34 ], [ 1, %sw.bb33 ], [ 0, %if.end30.sw.epilog_crit_edge ]
  %bypass_lut.0.off0 = phi i1 [ false, %sw.bb40 ], [ true, %sw.bb39 ], [ true, %sw.bb38 ], [ false, %sw.bb37 ], [ false, %sw.bb36 ], [ false, %sw.bb35 ], [ false, %sw.bb34 ], [ false, %sw.bb33 ], [ false, %if.end30.sw.epilog_crit_edge ]
  %fb_format.0 = phi i32 [ 2, %sw.bb40 ], [ 1026, %sw.bb39 ], [ 258, %sw.bb38 ], [ 2, %sw.bb37 ], [ 257, %sw.bb36 ], [ 1281, %sw.bb35 ], [ 1, %sw.bb34 ], [ 513, %sw.bb33 ], [ 0, %if.end30.sw.epilog_crit_edge ]
  %29 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tiling_flags, align 8
  %trunc = trunc i64 %30 to i4
  %31 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.59)
  switch i4 %trunc, label %sw.epilog.if.end82_crit_edge [
    i4 4, label %if.then44
    i4 2, label %if.then79
  ]

sw.epilog.if.end82_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then44:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %32 = trunc i64 %30 to i32
  %33 = lshr i32 %32, 19
  %shl = and i32 %33, 12
  %34 = shl i32 %32, 4
  %shl63 = and i32 %34, 57344
  %35 = lshr i32 %32, 9
  %shl66 = and i32 %35, 192
  %36 = lshr i32 %32, 6
  %shl69 = and i32 %36, 6144
  %37 = lshr i32 %32, 1
  %shl72 = and i32 %37, 786432
  %or60 = or i32 %fb_format.0, %shl
  %or61 = or i32 %or60, %shl63
  %or64 = or i32 %or61, %shl66
  %or67 = or i32 %or64, %shl69
  %or70 = or i32 %or67, %shl72
  %or73 = or i32 %or70, 4194304
  br label %if.end82

if.then79:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %or80 = or i32 %fb_format.0, 2097152
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.then44, %sw.epilog.if.end82_crit_edge
  %fb_format.1 = phi i32 [ %or73, %if.then44 ], [ %or80, %if.then79 ], [ %fb_format.0, %sw.epilog.if.end82_crit_edge ]
  %38 = trunc i64 %30 to i32
  %39 = shl i32 %38, 20
  %shl87 = and i32 %39, 520093696
  %or88 = or i32 %fb_format.1, %shl87
  %40 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i292 = getelementptr i8, ptr %41, i32 -8
  %crtc_id.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %42 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %crtc_id.i, align 8
  %arrayidx.i = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %call2.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i292, i32 noundef %45, i32 noundef 0) #12
  %and.i = and i32 %call2.i, -2
  %46 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %crtc_id.i, align 8
  %arrayidx4.i = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx4.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i292, i32 noundef %49, i32 noundef %and.i, i32 noundef 0) #12
  %crtc_offset = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %50 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %51, 6674
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef 0, i32 noundef 0) #12
  %52 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %crtc_offset, align 8
  %add90 = add i32 %53, 6663
  %shr91 = lshr i64 %call31, 32
  %conv93 = trunc i64 %shr91 to i32
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add90, i32 noundef %conv93, i32 noundef 0) #12
  %54 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %crtc_offset, align 8
  %add95 = add i32 %55, 6664
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add95, i32 noundef %conv93, i32 noundef 0) #12
  %56 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crtc_offset, align 8
  %add100 = add i32 %57, 6660
  %conv101 = trunc i64 %call31 to i32
  %and102 = and i32 %conv101, -256
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add100, i32 noundef %and102, i32 noundef 0) #12
  %58 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crtc_offset, align 8
  %add104 = add i32 %59, 6661
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add104, i32 noundef %and102, i32 noundef 0) #12
  %60 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %crtc_offset, align 8
  %add108 = add i32 %61, 6657
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add108, i32 noundef %or88, i32 noundef 0) #12
  %62 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %crtc_offset, align 8
  %add110 = add i32 %63, 6659
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add110, i32 noundef %fb_swap.0, i32 noundef 0) #12
  %64 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %crtc_offset, align 8
  %add112 = add i32 %65, 6658
  %call113 = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add112, i32 noundef 0) #12
  %and114 = and i32 %call113, -257
  %cond = select i1 %bypass_lut.0.off0, i32 256, i32 0
  %or118 = or i32 %and114, %cond
  %66 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %crtc_offset, align 8
  %add120 = add i32 %67, 6658
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add120, i32 noundef %or118, i32 noundef 0) #12
  br i1 %bypass_lut.0.off0, label %if.then122, label %if.end82.if.end123_crit_edge

if.end82.if.end123_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.then122:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.35) #12
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.end82.if.end123_crit_edge
  %68 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %crtc_offset, align 8
  %add125 = add i32 %69, 6665
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add125, i32 noundef 0, i32 noundef 0) #12
  %70 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %crtc_offset, align 8
  %add127 = add i32 %71, 6666
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add127, i32 noundef 0, i32 noundef 0) #12
  %72 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %crtc_offset, align 8
  %add129 = add i32 %73, 6667
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add129, i32 noundef 0, i32 noundef 0) #12
  %74 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %crtc_offset, align 8
  %add131 = add i32 %75, 6668
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add131, i32 noundef 0, i32 noundef 0) #12
  %76 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %crtc_offset, align 8
  %add133 = add i32 %77, 6669
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 9
  %78 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %width, align 8
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add133, i32 noundef %79, i32 noundef 0) #12
  %80 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %crtc_offset, align 8
  %add135 = add i32 %81, 6670
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 10
  %82 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height, align 4
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add135, i32 noundef %83, i32 noundef 0) #12
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 6
  %84 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pitches, align 8
  %86 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %format, align 8
  %88 = getelementptr inbounds %struct.drm_format_info, ptr %87, i32 0, i32 3
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 2
  %conv139 = zext i8 %90 to i32
  %div = udiv i32 %85, %conv139
  %91 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %crtc_offset, align 8
  %add141 = add i32 %92, 6662
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add141, i32 noundef %div, i32 noundef 0) #12
  %93 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i293 = getelementptr i8, ptr %94, i32 -8
  %95 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %crtc_offset, align 8
  %add.i = add i32 %96, 6656
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i293, i32 noundef %add.i, i32 noundef 1, i32 noundef 0) #12
  %97 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %crtc_offset, align 8
  %add143 = add i32 %98, 6849
  %99 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %height, align 4
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add143, i32 noundef %100, i32 noundef 0) #12
  %and146 = and i32 %y, -2
  %101 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %crtc_offset, align 8
  %add148 = add i32 %102, 7004
  %and145 = shl i32 %x, 16
  %shl149 = and i32 %and145, -262144
  %or150 = or i32 %shl149, %and146
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add148, i32 noundef %or150, i32 noundef 0) #12
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %103 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %hdisplay, align 4
  %conv151 = zext i16 %104 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %105 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %vdisplay, align 2
  %conv153 = zext i16 %106 to i32
  %add154 = add nuw nsw i32 %conv153, 1
  %and155 = and i32 %add154, 131070
  %107 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %crtc_offset, align 8
  %add157 = add i32 %108, 7005
  %shl158 = shl nuw i32 %conv151, 16
  %or159 = or i32 %and155, %shl158
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add157, i32 noundef %or159, i32 noundef 0) #12
  %109 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %crtc_offset, align 8
  %add161 = add i32 %110, 7102
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add161, i32 noundef 0, i32 noundef 0) #12
  %tobool164.not = icmp ne ptr %fb, null
  %111 = and i1 %tobool164.not, %tobool.not
  br i1 %111, label %land.lhs.true165, label %if.end123.if.end187_crit_edge

if.end123.if.end187_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187

land.lhs.true165:                                 ; preds = %if.end123
  %primary166 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %112 = ptrtoint ptr %primary166 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %primary166, align 4
  %fb167 = getelementptr inbounds %struct.drm_plane, ptr %113, i32 0, i32 12
  %114 = ptrtoint ptr %fb167 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fb167, align 4
  %cmp168.not = icmp eq ptr %115, %fb
  br i1 %cmp168.not, label %land.lhs.true165.if.end187_crit_edge, label %if.then170

land.lhs.true165.if.end187_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187

if.then170:                                       ; preds = %land.lhs.true165
  %obj172 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %116 = ptrtoint ptr %obj172 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %obj172, align 4
  %add.ptr175 = getelementptr i8, ptr %117, i32 -72
  %bdev.i294 = getelementptr i8, ptr %117, i32 352
  %118 = ptrtoint ptr %bdev.i294 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bdev.i294, align 8
  %resv32.i.i296 = getelementptr i8, ptr %117, i32 200
  %120 = ptrtoint ptr %resv32.i.i296 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %resv32.i.i296, align 8
  %call.i1.i.i = call i32 @ww_mutex_lock(ptr noundef %121, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i297 = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i298 = select i1 %cmp.i.i297, i32 -512, i32 %call.i1.i.i
  %122 = zext i32 %.ret.0.i.i298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %.ret.0.i.i298, label %do.end.i299 [
    i32 0, label %if.end186
    i32 -512, label %if.then170.cleanup_crit_edge
  ], !prof !136

if.then170.cleanup_crit_edge:                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i299:                                      ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i295 = getelementptr i8, ptr %119, i32 -17736
  %123 = ptrtoint ptr %add.ptr.i.i295 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr.i.i295, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.24, ptr noundef %add.ptr175) #16
  br label %cleanup

if.end186:                                        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_bo_unpin(ptr noundef %add.ptr175) #12
  %125 = ptrtoint ptr %bdev.i294 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bdev.i294, align 8
  %lru_lock.i.i.i303 = getelementptr inbounds %struct.ttm_device, ptr %126, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i303) #12
  %resource.i.i.i304 = getelementptr i8, ptr %117, i32 372
  %127 = ptrtoint ptr %resource.i.i.i304 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %resource.i.i.i304, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %117, ptr noundef %128, ptr noundef null) #12
  %129 = ptrtoint ptr %bdev.i294 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bdev.i294, align 8
  %lru_lock2.i.i.i305 = getelementptr inbounds %struct.ttm_device, ptr %130, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i305) #12
  %131 = ptrtoint ptr %resv32.i.i296 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %resv32.i.i296, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %132) #12
  call void @ww_mutex_unlock(ptr noundef %132) #12
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %land.lhs.true165.if.end187_crit_edge, %if.end123.if.end187_crit_edge
  call void @dce_v6_0_bandwidth_update(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end187, %do.end.i299, %if.then170.cleanup_crit_edge, %sw.default, %if.then28, %do.end.i, %if.end8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %if.end187 ], [ -22, %if.then28 ], [ 0, %if.then ], [ %.ret.0.i.i, %do.end.i ], [ %.ret.0.i.i298, %do.end.i299 ], [ %.ret.0.i.i, %if.end8.cleanup_crit_edge ], [ %.ret.0.i.i298, %if.then170.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tiling_flags) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_overscan_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_scaler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_get_tiling_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_program_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_init_dig(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_set_disp_eng_pll(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_suspend_helper(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @amdgpu_atombios_encoder_get_backlight_level_from_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_set_backlight_level_to_reg(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_resume_helper(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @dce_v6_0_ip_block, !1, !"dce_v6_0_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3452, i32 38}
!2 = !{ptr @dce_v6_4_ip_block, !3, !"dce_v6_4_ip_block", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3461, i32 38}
!4 = !{ptr @crtc_offsets, !5, !"crtc_offsets", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 57, i32 18}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3112, i32 10}
!8 = !{ptr @dce_v6_0_ip_funcs, !9, !"dce_v6_0_ip_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3111, i32 34}
!10 = !{ptr @dce_v6_0_display_funcs, !11, !"dce_v6_0_display_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3403, i32 42}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 917, i32 4}
!14 = !{ptr @hpd_offsets, !15, !"hpd_offsets", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 67, i32 18}
!16 = !{ptr @dce_v6_0_encoder_funcs, !17, !"dce_v6_0_encoder_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3296, i32 39}
!18 = !{ptr @dce_v6_0_dac_helper_funcs, !19, !"dce_v6_0_dac_helper_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3277, i32 46}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2126, i32 3}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1738, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1670, i32 3}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1111, i32 2}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1203, i32 3}
!32 = !{ptr @dce_v6_0_audio_write_sad_regs.eld_reg_to_type, !33, !"eld_reg_to_type", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1247, i32 19}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1278, i32 3}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1462, i32 3}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1468, i32 3}
!40 = !{ptr @dce_v6_0_dig_helper_funcs, !41, !"dce_v6_0_dig_helper_funcs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3267, i32 46}
!42 = !{ptr @dce_v6_0_ext_helper_funcs, !43, !"dce_v6_0_ext_helper_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3257, i32 46}
!44 = !{ptr @dce_v6_0_crtc_irq_funcs, !45, !"dce_v6_0_crtc_irq_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3422, i32 42}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2829, i32 3}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2972, i32 4}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2977, i32 3}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2985, i32 3}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2988, i32 3}
!56 = !{ptr @interrupt_status_offsets, !57, !"interrupt_status_offsets", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 93, i32 3}
!58 = !{ptr @dce_v6_0_pageflip_irq_funcs, !59, !"dce_v6_0_pageflip_irq_funcs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3427, i32 42}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3003, i32 3}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3047, i32 3}
!64 = !{ptr @dce_v6_0_hpd_irq_funcs, !65, !"dce_v6_0_hpd_irq_funcs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3432, i32 42}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2888, i32 3}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 3092, i32 3}
!70 = !{ptr @dce_v6_0_crtc_funcs, !71, !"dce_v6_0_crtc_funcs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2383, i32 36}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2288, i32 3}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2294, i32 3}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2308, i32 3}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!80 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @amdgpu_bo_reserve._entry, !79, !"_entry", i1 false, i1 false}
!85 = !{ptr @amdgpu_bo_reserve._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2235, i32 2}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2054, i32 2}
!92 = !{ptr @dce_v6_0_crtc_helper_funcs, !93, !"dce_v6_0_crtc_helper_funcs", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2572, i32 43}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2173, i32 2}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1826, i32 3}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1931, i32 3}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1986, i32 3}
!102 = !{ptr @vga_control_regs, !103, !"vga_control_regs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1777, i32 18}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2461, i32 4}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1760, i32 4}
!108 = !{ptr @dig_offsets, !109, !"dig_offsets", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 77, i32 23}
!110 = !{ptr @pin_offsets, !111, !"pin_offsets", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 1329, i32 18}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v6_0.c", i32 2818, i32 2}
!114 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @dce_v6_0_soft_reset._entry, !113, !"_entry", i1 false, i1 false}
!117 = !{ptr @dce_v6_0_soft_reset._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i8 0, i8 2}
!128 = !{!"auto-init"}
!129 = !{i32 0, i32 16385}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2148616397, i64 2148616677, i64 2148617011, i64 2148617345}
!132 = !{i64 1130566, i64 1130593}
!133 = !{i64 1131261, i64 1131288, i64 1131321, i64 1131342, i64 1131369, i64 1131395}
!134 = !{i64 1130736, i64 1130763}
!135 = !{i64 1131076, i64 1131103, i64 1131137, i64 1131158}
!136 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!137 = !{i64 2148856950}
!138 = !{i64 2148771390, i64 2148771422, i64 2148771451, i64 2148771485, i64 2148771516, i64 2148771539}
!139 = !{i64 2150159791}
