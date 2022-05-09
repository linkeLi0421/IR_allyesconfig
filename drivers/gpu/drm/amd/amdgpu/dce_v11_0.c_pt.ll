; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/dce_v11_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c"
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
%struct.dce10_wm_params = type { i32, i32, i32, i32, i32, i32, i32, i8, %union.dfixed, i32, i32, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.84, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.84 = type { [4 x i8] }
%struct.amdgpu_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr }
%struct.amdgpu_afmt_acr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.amdgpu_afmt = type { i8, i32, i8, i32, ptr }
%struct.cea_sad = type { i8, i8, i8, i8 }
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

@crtc_offsets = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 512, i32 1024, i32 9728, i32 10240, i32 10752, i32 11264], [36 x i8] zeroinitializer }, align 32
@dce_v11_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @dce_v11_0_early_init, ptr null, ptr @dce_v11_0_sw_init, ptr @dce_v11_0_sw_fini, ptr null, ptr @dce_v11_0_hw_init, ptr @dce_v11_0_hw_fini, ptr null, ptr @dce_v11_0_suspend, ptr @dce_v11_0_resume, ptr @dce_v11_0_is_idle, ptr @dce_v11_0_wait_for_idle, ptr null, ptr null, ptr @dce_v11_0_soft_reset, ptr null, ptr @dce_v11_0_set_clockgating_state, ptr @dce_v11_0_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@dce_v11_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 5, i32 11, i32 0, i32 0, ptr @dce_v11_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@dce_v11_2_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 5, i32 11, i32 2, i32 0, ptr @dce_v11_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dce_v11_0\00", [22 x i8] zeroinitializer }, align 32
@dce_v11_0_display_funcs = internal constant { %struct.amdgpu_display_funcs, [52 x i8] } { %struct.amdgpu_display_funcs { ptr @dce_v11_0_bandwidth_update, ptr @dce_v11_0_vblank_get_counter, ptr @amdgpu_atombios_encoder_set_backlight_level, ptr @amdgpu_atombios_encoder_get_backlight_level, ptr @dce_v11_0_hpd_sense, ptr @dce_v11_0_hpd_set_polarity, ptr @dce_v11_0_hpd_get_gpio_reg, ptr @dce_v11_0_page_flip, ptr @dce_v11_0_crtc_get_scanoutpos, ptr @dce_v11_0_encoder_add, ptr @amdgpu_connector_add }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mode too big for LB!\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"force priority to high\0A\00", [40 x i8] zeroinitializer }, align 32
@hpd_offsets = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40], [40 x i8] zeroinitializer }, align 32
@dce_v11_0_encoder_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @dce_v11_0_encoder_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@dce_v11_0_dac_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @amdgpu_atombios_encoder_dpms, ptr null, ptr @amdgpu_atombios_encoder_mode_fixup, ptr @dce_v11_0_encoder_prepare, ptr @dce_v11_0_encoder_commit, ptr @dce_v11_0_encoder_mode_set, ptr null, ptr @amdgpu_atombios_encoder_dac_detect, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@dce_v11_0_dig_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @amdgpu_atombios_encoder_dpms, ptr null, ptr @amdgpu_atombios_encoder_mode_fixup, ptr @dce_v11_0_encoder_prepare, ptr @dce_v11_0_encoder_commit, ptr @dce_v11_0_encoder_mode_set, ptr null, ptr @amdgpu_atombios_encoder_dig_detect, ptr null, ptr null, ptr @dce_v11_0_encoder_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@dce_v11_0_ext_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @dce_v11_0_ext_dpms, ptr null, ptr null, ptr @dce_v11_0_ext_prepare, ptr @dce_v11_0_ext_commit, ptr @dce_v11_0_ext_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @dce_v11_0_ext_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid encoder_id: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%sabling AFMT interface @ 0x%04X for encoder 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Disabling hdmi deep color for %d bpc.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Enabling hdmi deep color 30 for 10 bpc.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Enabling hdmi deep color 36 for 12 bpc.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to setup AVI infoframe: %zd\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to pack AVI infoframe: %zd\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No connected audio pins found!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't find encoder's connector\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Couldn't read Speaker Allocation Data Block: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@dce_v11_0_audio_write_sad_regs.eld_reg_to_type = internal constant { [12 x [2 x i16]], [48 x i8] } { [12 x [2 x i16]] [[2 x i16] [i16 40, i16 1], [2 x i16] [i16 41, i16 2], [2 x i16] [i16 42, i16 3], [2 x i16] [i16 43, i16 4], [2 x i16] [i16 44, i16 5], [2 x i16] [i16 45, i16 6], [2 x i16] [i16 46, i16 7], [2 x i16] [i16 47, i16 8], [2 x i16] [i16 49, i16 10], [2 x i16] [i16 50, i16 11], [2 x i16] [i16 51, i16 12], [2 x i16] [i16 53, i16 14]], [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't read SADs: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dce_v11_0_crtc_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @dce_v11_0_set_crtc_irq_state, ptr @dce_v11_0_crtc_irq }, [24 x i8] zeroinitializer }, align 32
@dce_v11_0_pageflip_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @dce_v11_0_set_pageflip_irq_state, ptr @dce_v11_0_pageflip_irq }, [24 x i8] zeroinitializer }, align 32
@dce_v11_0_hpd_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @dce_v11_0_set_hpd_irq_state, ptr @dce_v11_0_hpd_irq }, [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid crtc %d\0A\00", [47 x i8] zeroinitializer }, align 32
@interrupt_status_offsets = internal constant { [6 x %struct.anon.114], [32 x i8] } { [6 x %struct.anon.114] [%struct.anon.114 { i32 6231, i32 8, i32 4, i32 131072 }, %struct.anon.114 { i32 6232, i32 8, i32 4, i32 131072 }, %struct.anon.114 { i32 6233, i32 8, i32 4, i32 131072 }, %struct.anon.114 { i32 6234, i32 8, i32 4, i32 131072 }, %struct.anon.114 { i32 6235, i32 8, i32 4, i32 131072 }, %struct.anon.114 { i32 6236, i32 8, i32 4, i32 131072 }], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IH: IH event w/o asserted irq bit?\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IH: D%d vblank\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IH: D%d vline\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled interrupt: %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid pageflip crtc %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"amdgpu_crtc->pflip_status = %d != AMDGPU_FLIP_SUBMITTED(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid hdp %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IH: HPD%d\0A\00", [21 x i8] zeroinitializer }, align 32
@amdgpu_mode_funcs = external dso_local constant %struct.drm_mode_config_funcs, align 4
@dce_v11_0_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr null, ptr null, ptr @dce_v11_0_crtc_cursor_set2, ptr @dce_v11_0_crtc_cursor_move, ptr @dce_v11_0_crtc_gamma_set, ptr @dce_v11_0_crtc_destroy, ptr @amdgpu_display_crtc_set_config, ptr null, ptr @amdgpu_display_crtc_page_flip_target, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_get_vblank_counter_kms, ptr @amdgpu_enable_vblank_kms, ptr @amdgpu_disable_vblank_kms, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@dce_v11_0_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr @dce_v11_0_crtc_dpms, ptr @dce_v11_0_crtc_prepare, ptr @dce_v11_0_crtc_commit, ptr null, ptr @dce_v11_0_crtc_mode_fixup, ptr @dce_v11_0_crtc_mode_set, ptr null, ptr @dce_v11_0_crtc_set_base, ptr @dce_v11_0_crtc_set_base_atomic, ptr @dce_v11_0_crtc_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_crtc_get_scanout_position }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad cursor width or height %d x %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot find cursor object %x for crtc %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to pin new cursor BO (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 179, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"x %d y %d c->x %d c->y %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@vga_control_regs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 204, i32 206, i32 248, i32 249, i32 250, i32 251], [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate a PPLL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No FB bound\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported screen format %p4cc\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Bypassing hardware LUT due to 10 bit fb scanout.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to reserve abo before unpin\0A\00", [60 x i8] zeroinitializer }, align 32
@dig_offsets = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 256, i32 512, i32 768, i32 1024, i32 1280, i32 2560, i32 3072, i32 3328], [60 x i8] zeroinitializer }, align 32
@amdgpu_audio = external dso_local local_unnamed_addr global i32, align 4
@pin_offsets = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28], [32 x i8] zeroinitializer }, align 32
@cz_mgcg_cgcg_init = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 996, i32 -1, i32 256, i32 998, i32 257, i32 0], [40 x i8] zeroinitializer }, align 32
@cz_golden_settings_a11 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 7094, i32 65793, i32 65536, i32 674, i32 523313151, i32 338690048], [40 x i8] zeroinitializer }, align 32
@stoney_golden_settings_a11 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 7094, i32 65793, i32 65536, i32 674, i32 523313151, i32 338698240], [40 x i8] zeroinitializer }, align 32
@polaris11_golden_settings_a11 = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 793, i32 128, i32 0, i32 668, i32 240, i32 112, i32 647, i32 -1, i32 8, i32 674, i32 -1624162305, i32 338698248, i32 18953, i32 826213151, i32 17], [36 x i8] zeroinitializer }, align 32
@polaris10_golden_settings_a11 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 793, i32 128, i32 0, i32 668, i32 240, i32 112, i32 674, i32 -1624162305, i32 338698248, i32 18953, i32 826213151, i32 17], [48 x i8] zeroinitializer }, align 32
@dce_v11_0_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.43, i32 3085, ptr @.str.44, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: SRBM_SOFT_RESET=0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dce_v11_0_soft_reset\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/dce_v11_0.c\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dce_v11_0_soft_reset._entry_ptr = internal global ptr @dce_v11_0_soft_reset._entry, section ".printk_index", align 4
@switch.table.dce_v11_0_disable_dce = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 3, i32 2, i32 6, i32 5, i32 5, i32 6], [40 x i8] zeroinitializer }, align 32
@switch.table.dce_v11_0_early_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 6, i32 5, i32 5, i32 6], [16 x i8] zeroinitializer }, align 32
@switch.table.dce_v11_0_sw_init = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 512, i32 1024, i32 9728, i32 10240, i32 10752], [44 x i8] zeroinitializer }, align 32
@switch.table.dce_v11_0_bandwidth_update = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 4, i32 8, i32 3, i32 6, i32 10, i32 12, i32 16], [32 x i8] zeroinitializer }, align 32
@switch.table.dce_v11_0_bandwidth_update.45 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 4, i32 8, i32 3, i32 6, i32 10, i32 12, i32 16], [32 x i8] zeroinitializer }, align 32
@switch.table.dce_v11_0_encoder_add = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 3, i32 7, i32 15, i32 31, i32 63], [40 x i8] zeroinitializer }, align 32
@switch.table.dce_v11_0_audio_init = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 7, i32 7, i32 8, i32 6, i32 6, i32 8], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.48 = internal global [18 x i64] [i64 16, i64 8, i64 8, i64 9, i64 12, i64 13, i64 14, i64 16, i64 17, i64 20, i64 21, i64 22, i64 30, i64 32, i64 33, i64 34, i64 35, i64 37]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 30, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.52 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 30, i64 32, i64 33]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.62 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.64 = internal global [18 x i64] [i64 16, i64 32, i64 538982467, i64 808665410, i64 808669761, i64 808669784, i64 808671298, i64 842093121, i64 842093144, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 892420418, i64 892424769, i64 892424792, i64 892426306, i64 909199186]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 4, i64 2, i64 4]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"crtc_offsets\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 53, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"dce_v11_0_ip_funcs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3434, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"dce_v11_0_ip_block\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3768, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"dce_v11_2_ip_block\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3777, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3435, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant [24 x i8] c"dce_v11_0_display_funcs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3719, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 646, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1107, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"hpd_offsets\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 64, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"dce_v11_0_encoder_funcs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3605, i32 39 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"dce_v11_0_dac_helper_funcs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3586, i32 46 }
@___asan_gen_.100 = private unnamed_addr constant [27 x i8] c"dce_v11_0_dig_helper_funcs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3576, i32 46 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"dce_v11_0_ext_helper_funcs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3567, i32 46 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2251, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1815, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1659, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1665, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1671, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1755, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1761, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1233, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1325, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1331, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"eld_reg_to_type\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1367, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1401, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [25 x i8] c"dce_v11_0_crtc_irq_funcs\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3738, i32 42 }
@___asan_gen_.151 = private unnamed_addr constant [29 x i8] c"dce_v11_0_pageflip_irq_funcs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3743, i32 42 }
@___asan_gen_.154 = private unnamed_addr constant [24 x i8] c"dce_v11_0_hpd_irq_funcs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3748, i32 42 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3108, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [25 x i8] c"interrupt_status_offsets\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 92, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3372, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3377, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3386, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3390, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3245, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3289, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3167, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3416, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [21 x i8] c"dce_v11_0_crtc_funcs\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2562, i32 36 }
@___asan_gen_.190 = private unnamed_addr constant [28 x i8] c"dce_v11_0_crtc_helper_funcs\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2784, i32 43 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2466, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2472, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2486, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 179, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2413, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2161, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"vga_control_regs\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1854, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2343, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1910, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2025, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2092, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2644, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant [12 x i8] c"dig_offsets\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 74, i32 23 }
@___asan_gen_.247 = private unnamed_addr constant [12 x i8] c"pin_offsets\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1452, i32 18 }
@___asan_gen_.250 = private unnamed_addr constant [18 x i8] c"cz_mgcg_cgcg_init\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 130, i32 18 }
@___asan_gen_.253 = private unnamed_addr constant [23 x i8] c"cz_golden_settings_a11\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 124, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant [27 x i8] c"stoney_golden_settings_a11\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 136, i32 18 }
@___asan_gen_.259 = private unnamed_addr constant [30 x i8] c"polaris11_golden_settings_a11\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 142, i32 18 }
@___asan_gen_.262 = private unnamed_addr constant [30 x i8] c"polaris10_golden_settings_a11\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 151, i32 18 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3085, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [35 x i8] c"switch.table.dce_v11_0_disable_dce\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [34 x i8] c"switch.table.dce_v11_0_early_init\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [31 x i8] c"switch.table.dce_v11_0_sw_init\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [40 x i8] c"switch.table.dce_v11_0_bandwidth_update\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [43 x i8] c"switch.table.dce_v11_0_bandwidth_update.45\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [35 x i8] c"switch.table.dce_v11_0_encoder_add\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [34 x i8] c"switch.table.dce_v11_0_audio_init\00", align 1
@llvm.compiler.used = appending global [80 x ptr] [ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @dce_v11_0_soft_reset._entry, ptr @dce_v11_0_soft_reset._entry_ptr, ptr @crtc_offsets, ptr @dce_v11_0_ip_funcs, ptr @dce_v11_0_ip_block, ptr @dce_v11_2_ip_block, ptr @.str, ptr @dce_v11_0_display_funcs, ptr @.str.1, ptr @.str.2, ptr @hpd_offsets, ptr @dce_v11_0_encoder_funcs, ptr @dce_v11_0_dac_helper_funcs, ptr @dce_v11_0_dig_helper_funcs, ptr @dce_v11_0_ext_helper_funcs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @dce_v11_0_audio_write_sad_regs.eld_reg_to_type, ptr @.str.15, ptr @dce_v11_0_crtc_irq_funcs, ptr @dce_v11_0_pageflip_irq_funcs, ptr @dce_v11_0_hpd_irq_funcs, ptr @.str.16, ptr @interrupt_status_offsets, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @dce_v11_0_crtc_funcs, ptr @dce_v11_0_crtc_helper_funcs, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @vga_control_regs, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @dig_offsets, ptr @pin_offsets, ptr @cz_mgcg_cgcg_init, ptr @cz_golden_settings_a11, ptr @stoney_golden_settings_a11, ptr @polaris11_golden_settings_a11, ptr @polaris10_golden_settings_a11, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @switch.table.dce_v11_0_disable_dce, ptr @switch.table.dce_v11_0_early_init, ptr @switch.table.dce_v11_0_sw_init, ptr @switch.table.dce_v11_0_bandwidth_update, ptr @switch.table.dce_v11_0_bandwidth_update.45, ptr @switch.table.dce_v11_0_encoder_add, ptr @switch.table.dce_v11_0_audio_init], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc_offsets to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_2_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_display_funcs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_offsets to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_encoder_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_dac_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_dig_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_ext_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_audio_write_sad_regs.eld_reg_to_type to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_crtc_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_pageflip_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_hpd_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_status_offsets to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_control_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dig_offsets to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_offsets to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_mgcg_cgcg_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_golden_settings_a11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stoney_golden_settings_a11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris11_golden_settings_a11 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_golden_settings_a11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_v11_0_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v11_0_disable_dce to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v11_0_early_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v11_0_sw_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v11_0_bandwidth_update to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v11_0_bandwidth_update.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v11_0_encoder_add to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_v11_0_audio_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_v11_0_disable_dce(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @amdgpu_atombios_has_dce_engine_info(ptr noundef %adev) #12
  br i1 %call, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 202, i32 noundef 0) #12
  %or2.i = or i32 %call.i, 16
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 202, i32 noundef %or2.i, i32 noundef 0) #12
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 192, i32 noundef 0) #12
  %and9.i = and i32 %call3.i, -196609
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 192, i32 noundef %and9.i, i32 noundef 0) #12
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  %switch.tableidx = add i32 %1, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 6
  br i1 %2, label %switch.lookup, label %for.cond.dce_v11_0_get_num_crtc.exit_crit_edge

for.cond.dce_v11_0_get_num_crtc.exit_crit_edge:   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_get_num_crtc.exit

switch.lookup:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.dce_v11_0_disable_dce, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dce_v11_0_get_num_crtc.exit

dce_v11_0_get_num_crtc.exit:                      ; preds = %switch.lookup, %for.cond.dce_v11_0_get_num_crtc.exit_crit_edge
  %num_crtc.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %for.cond.dce_v11_0_get_num_crtc.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %num_crtc.0.i)
  %cmp = icmp ult i32 %i.0, %num_crtc.0.i
  br i1 %cmp, label %for.body, label %dce_v11_0_get_num_crtc.exit.if.end14_crit_edge

dce_v11_0_get_num_crtc.exit.if.end14_crit_edge:   ; preds = %dce_v11_0_get_num_crtc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.body:                                         ; preds = %dce_v11_0_get_num_crtc.exit
  %arrayidx = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %i.0
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

if.end14:                                         ; preds = %dce_v11_0_get_num_crtc.exit.if.end14_crit_edge, %entry.if.end14_crit_edge
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
define internal i32 @dce_v11_0_early_init(ptr noundef %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_endpt_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 58
  %0 = ptrtoint ptr %audio_endpt_rreg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dce_v11_0_audio_endpt_rreg, ptr %audio_endpt_rreg, align 4
  %audio_endpt_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 59
  %1 = ptrtoint ptr %audio_endpt_wreg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dce_v11_0_audio_endpt_wreg, ptr %audio_endpt_wreg, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 24
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce_v11_0_display_funcs, ptr %funcs.i, align 8
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %3 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_type.i, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.default.i [
    i32 13, label %entry.sw.epilog.thread_crit_edge
    i32 14, label %dce_v11_0_get_num_crtc.exit.thread37
    i32 15, label %entry.dce_v11_0_get_num_crtc.exit_crit_edge
    i32 18, label %entry.dce_v11_0_get_num_crtc.exit_crit_edge48
    i32 16, label %entry.sw.bb3.i_crit_edge
    i32 17, label %entry.sw.bb3.i_crit_edge49
  ]

entry.sw.bb3.i_crit_edge49:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i

entry.dce_v11_0_get_num_crtc.exit_crit_edge48:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_get_num_crtc.exit

entry.dce_v11_0_get_num_crtc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_get_num_crtc.exit

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread

dce_v11_0_get_num_crtc.exit.thread37:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge49
  br label %dce_v11_0_get_num_crtc.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_get_num_crtc.exit

dce_v11_0_get_num_crtc.exit:                      ; preds = %sw.default.i, %sw.bb3.i, %entry.dce_v11_0_get_num_crtc.exit_crit_edge, %entry.dce_v11_0_get_num_crtc.exit_crit_edge48
  %cmp.i.not = phi i1 [ false, %entry.dce_v11_0_get_num_crtc.exit_crit_edge ], [ false, %entry.dce_v11_0_get_num_crtc.exit_crit_edge48 ], [ false, %sw.bb3.i ], [ true, %sw.default.i ]
  %num_crtc.0.i = phi i32 [ 6, %entry.dce_v11_0_get_num_crtc.exit_crit_edge ], [ 6, %entry.dce_v11_0_get_num_crtc.exit_crit_edge48 ], [ 5, %sw.bb3.i ], [ 0, %sw.default.i ]
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %6 = ptrtoint ptr %num_crtc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %num_crtc.0.i, ptr %num_crtc, align 8
  %switch.tableidx = add i32 %4, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 4
  br i1 %7, label %switch.lookup, label %dce_v11_0_get_num_crtc.exit.cleanup_crit_edge

dce_v11_0_get_num_crtc.exit.cleanup_crit_edge:    ; preds = %dce_v11_0_get_num_crtc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog.thread:                                 ; preds = %dce_v11_0_get_num_crtc.exit.thread37, %entry.sw.epilog.thread_crit_edge
  %.sink = phi i32 [ 2, %dce_v11_0_get_num_crtc.exit.thread37 ], [ 3, %entry.sw.epilog.thread_crit_edge ]
  %num_crtc39 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %8 = ptrtoint ptr %num_crtc39 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %num_crtc39, align 8
  %num_hpd5 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 21
  %9 = ptrtoint ptr %num_hpd5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %num_hpd5, align 4
  %num_dig7 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 22
  %10 = ptrtoint ptr %num_dig7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9, ptr %num_dig7, align 8
  %add.i43 = add nuw nsw i32 %.sink, 6
  br label %14

switch.lookup:                                    ; preds = %dce_v11_0_get_num_crtc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dce_v11_0_early_init, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %num_hpd15 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 21
  %12 = ptrtoint ptr %num_hpd15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %switch.load, ptr %num_hpd15, align 4
  %num_dig17 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 22
  %13 = ptrtoint ptr %num_dig17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %switch.load, ptr %num_dig17, align 8
  %add.i = add nuw nsw i32 %num_crtc.0.i, 6
  %spec.select = select i1 %cmp.i.not, i32 0, i32 %num_crtc.0.i
  %spec.select47 = select i1 %cmp.i.not, i32 0, i32 %add.i
  br label %14

14:                                               ; preds = %switch.lookup, %sw.epilog.thread
  %num_crtc.0.i3544 = phi i32 [ %.sink, %sw.epilog.thread ], [ %spec.select, %switch.lookup ]
  %15 = phi i32 [ %add.i43, %sw.epilog.thread ], [ %spec.select47, %switch.lookup ]
  %16 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 81
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %16, align 4
  %funcs.i32 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 81, i32 2
  %18 = ptrtoint ptr %funcs.i32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dce_v11_0_crtc_irq_funcs, ptr %funcs.i32, align 4
  %pageflip_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 84
  %19 = ptrtoint ptr %pageflip_irq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %num_crtc.0.i3544, ptr %pageflip_irq.i, align 8
  %funcs10.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 84, i32 2
  %20 = ptrtoint ptr %funcs10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dce_v11_0_pageflip_irq_funcs, ptr %funcs10.i, align 8
  %num_hpd.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 21
  %21 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_hpd.i, align 4
  %hpd_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 85
  %23 = ptrtoint ptr %hpd_irq.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %hpd_irq.i, align 4
  %funcs14.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 85, i32 2
  %24 = ptrtoint ptr %funcs14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dce_v11_0_hpd_irq_funcs, ptr %funcs14.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %14, %dce_v11_0_get_num_crtc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %14 ], [ -22, %dce_v11_0_get_num_crtc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_sw_init(ptr noundef %handle) #0 align 64 {
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
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 27
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @amdgpu_mode_funcs, ptr %funcs, align 4
  %async_page_flip = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 96
  %3 = ptrtoint ptr %async_page_flip to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %async_page_flip, align 1
  %max_width = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 25
  %4 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16384, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 26
  %5 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16384, ptr %max_height, align 4
  %preferred_depth = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 91
  %6 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24, ptr %preferred_depth, align 4
  %prefer_shadow = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 92
  %7 = ptrtoint ptr %prefer_shadow to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %prefer_shadow, align 4
  %aper_base = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 1
  %8 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aper_base, align 4
  %fb_base = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 28
  %10 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fb_base, align 4
  %call28 = tail call i32 @amdgpu_display_modeset_create_props(ptr noundef %handle) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end14
  %11 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16384, ptr %max_width, align 4
  %12 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16384, ptr %max_height, align 4
  %13 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp41128 = icmp sgt i32 %14, 0
  br i1 %cmp41128, label %for.body42.lr.ph, label %if.end31.for.end49_crit_edge

if.end31.for.end49_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end49

for.body42.lr.ph:                                 ; preds = %if.end31
  %cursor_width.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 100
  %cursor_height.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 101
  br label %for.body42

for.body42:                                       ; preds = %for.inc47.for.body42_crit_edge, %for.body42.lr.ph
  %i.2129 = phi i32 [ 0, %for.body42.lr.ph ], [ %inc48, %for.inc47.for.body42_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 1568) #15
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %for.body42.cleanup_crit_edge, label %if.end.i

for.body42.cleanup_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %for.body42
  %call2.i = tail call i32 @drm_crtc_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @dce_v11_0_crtc_funcs) #12
  %call4.i = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef nonnull %call7.i.i.i, i32 noundef 256) #12
  %crtc_id.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.2129, ptr %crtc_id.i, align 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 3, i32 %i.2129
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %max_cursor_width.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %max_cursor_width.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 128, ptr %max_cursor_width.i, align 8
  %max_cursor_height.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %max_cursor_height.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 128, ptr %max_cursor_height.i, align 4
  %20 = ptrtoint ptr %cursor_width.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %cursor_width.i, align 4
  %21 = ptrtoint ptr %cursor_height.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %cursor_height.i, align 4
  %switch.tableidx = add nsw i32 %i.2129, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 5
  br i1 %22, label %switch.lookup, label %if.end.i.for.inc47_crit_edge

if.end.i.for.inc47_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc47

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.dce_v11_0_sw_init, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc47

for.inc47:                                        ; preds = %switch.lookup, %if.end.i.for.inc47_crit_edge
  %.sink.i = phi i32 [ 0, %if.end.i.for.inc47_crit_edge ], [ %switch.load, %switch.lookup ]
  %crtc_offset20.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %crtc_offset20.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i, ptr %crtc_offset20.i, align 8
  %pll_id.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 21
  %25 = ptrtoint ptr %pll_id.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 255, ptr %pll_id.i, align 8
  %adjusted_clock.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 28
  %26 = ptrtoint ptr %adjusted_clock.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %adjusted_clock.i, align 4
  %encoder.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 33
  %27 = ptrtoint ptr %encoder.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %encoder.i, align 8
  %connector.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %call7.i.i.i, i32 0, i32 34
  %28 = ptrtoint ptr %connector.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %connector.i, align 4
  %helper_private.i.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dce_v11_0_crtc_helper_funcs, ptr %helper_private.i.i, align 8
  %inc48 = add nuw nsw i32 %i.2129, 1
  %30 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_crtc, align 8
  %cmp41 = icmp slt i32 %inc48, %31
  br i1 %cmp41, label %for.inc47.for.body42_crit_edge, label %for.inc47.for.end49_crit_edge

for.inc47.for.end49_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end49

for.inc47.for.body42_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body42

for.end49:                                        ; preds = %for.inc47.for.end49_crit_edge, %if.end31.for.end49_crit_edge
  %call50 = tail call zeroext i1 @amdgpu_atombios_get_connector_info_from_object_table(ptr noundef %handle) #12
  br i1 %call50, label %if.then51, label %for.end49.cleanup_crit_edge

for.end49.cleanup_crit_edge:                      ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then51:                                        ; preds = %for.end49
  tail call void @amdgpu_display_print_display_setup(ptr noundef %ddev.i) #12
  %call54 = tail call fastcc i32 @dce_v11_0_afmt_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end57:                                         ; preds = %if.then51
  %call58 = tail call fastcc i32 @dce_v11_0_audio_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @drm_kms_helper_poll_init(ptr noundef %ddev.i) #12
  %mode_config_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 2
  %32 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %mode_config_initialized, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end57.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %for.end49.cleanup_crit_edge, %for.body42.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %for.cond1.5.cleanup_crit_edge, %for.cond1.4.cleanup_crit_edge, %for.cond1.3.cleanup_crit_edge, %for.cond1.2.cleanup_crit_edge, %for.cond1.1.cleanup_crit_edge, %for.cond1.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond1.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ %call11, %for.cond1.5.cleanup_crit_edge ], [ %call28, %if.end14.cleanup_crit_edge ], [ -22, %for.end49.cleanup_crit_edge ], [ %call54, %if.then51.cleanup_crit_edge ], [ %call58, %if.end57.cleanup_crit_edge ], [ %call4, %for.cond1.preheader.cleanup_crit_edge ], [ %call4.1, %for.cond1.cleanup_crit_edge ], [ %call4.2, %for.cond1.1.cleanup_crit_edge ], [ %call4.3, %for.cond1.2.cleanup_crit_edge ], [ %call4.4, %for.cond1.3.cleanup_crit_edge ], [ %call4.5, %for.cond1.4.cleanup_crit_edge ], [ -12, %for.body42.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_sw_fini(ptr noundef %handle) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.dce_v11_0_audio_fini.exit_crit_edge, label %if.end.i

entry.dce_v11_0_audio_fini.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_fini.exit

if.end.i:                                         ; preds = %entry
  %audio.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19
  %3 = ptrtoint ptr %audio.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %audio.i, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.dce_v11_0_audio_fini.exit_crit_edge, label %for.cond.preheader.i

if.end.i.dce_v11_0_audio_fini.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_fini.exit

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

for.body.i:                                       ; preds = %dce_v11_0_audio_enable.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %dce_v11_0_audio_enable.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 1, i32 %i.018.i
  %tobool.not.i.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i.i, label %for.body.i.dce_v11_0_audio_enable.exit.i_crit_edge, label %if.end.i.i

for.body.i.dce_v11_0_audio_enable.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_enable.exit.i

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
  br label %dce_v11_0_audio_enable.exit.i

dce_v11_0_audio_enable.exit.i:                    ; preds = %if.end.i.i, %for.body.i.dce_v11_0_audio_enable.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %11 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_pins.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %12
  br i1 %cmp.i, label %dce_v11_0_audio_enable.exit.i.for.body.i_crit_edge, label %dce_v11_0_audio_enable.exit.i.for.end.i_crit_edge

dce_v11_0_audio_enable.exit.i.for.end.i_crit_edge: ; preds = %dce_v11_0_audio_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

dce_v11_0_audio_enable.exit.i.for.body.i_crit_edge: ; preds = %dce_v11_0_audio_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %dce_v11_0_audio_enable.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %13 = ptrtoint ptr %audio.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %audio.i, align 4
  br label %dce_v11_0_audio_fini.exit

dce_v11_0_audio_fini.exit:                        ; preds = %for.end.i, %if.end.i.dce_v11_0_audio_fini.exit_crit_edge, %entry.dce_v11_0_audio_fini.exit_crit_edge
  %num_dig.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 22
  %14 = ptrtoint ptr %num_dig.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_dig.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10.i = icmp sgt i32 %15, 0
  br i1 %cmp10.i, label %dce_v11_0_audio_fini.exit.for.body.i11_crit_edge, label %dce_v11_0_audio_fini.exit.dce_v11_0_afmt_fini.exit_crit_edge

dce_v11_0_audio_fini.exit.dce_v11_0_afmt_fini.exit_crit_edge: ; preds = %dce_v11_0_audio_fini.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_afmt_fini.exit

dce_v11_0_audio_fini.exit.for.body.i11_crit_edge: ; preds = %dce_v11_0_audio_fini.exit
  br label %for.body.i11

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %dce_v11_0_audio_fini.exit.for.body.i11_crit_edge
  %i.011.i = phi i32 [ %inc.i9, %for.body.i11.for.body.i11_crit_edge ], [ 0, %dce_v11_0_audio_fini.exit.for.body.i11_crit_edge ]
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
  br i1 %cmp.i10, label %for.body.i11.for.body.i11_crit_edge, label %for.body.i11.dce_v11_0_afmt_fini.exit_crit_edge

for.body.i11.dce_v11_0_afmt_fini.exit_crit_edge:  ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_afmt_fini.exit

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i11

dce_v11_0_afmt_fini.exit:                         ; preds = %for.body.i11.dce_v11_0_afmt_fini.exit_crit_edge, %dce_v11_0_audio_fini.exit.dce_v11_0_afmt_fini.exit_crit_edge
  tail call void @drm_mode_config_cleanup(ptr noundef %ddev.i) #12
  %mode_config_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 2
  %21 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %mode_config_initialized, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  %iter.i = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %1, label %entry.dce_v11_0_init_golden_registers.exit_crit_edge [
    i32 13, label %sw.bb.i
    i32 14, label %sw.bb1.i
    i32 16, label %entry.sw.bb2.i_crit_edge
    i32 17, label %entry.sw.bb2.i_crit_edge40
    i32 15, label %entry.sw.bb3.i_crit_edge
    i32 18, label %entry.sw.bb3.i_crit_edge41
  ]

entry.sw.bb3.i_crit_edge41:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i

entry.sw.bb2.i_crit_edge40:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

entry.dce_v11_0_init_golden_registers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_init_golden_registers.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @cz_mgcg_cgcg_init, i32 noundef 6) #12
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @cz_golden_settings_a11, i32 noundef 6) #12
  br label %dce_v11_0_init_golden_registers.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @stoney_golden_settings_a11, i32 noundef 6) #12
  br label %dce_v11_0_init_golden_registers.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge40
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @polaris11_golden_settings_a11, i32 noundef 15) #12
  br label %dce_v11_0_init_golden_registers.exit

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge41
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @polaris10_golden_settings_a11, i32 noundef 12) #12
  br label %dce_v11_0_init_golden_registers.exit

dce_v11_0_init_golden_registers.exit:             ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %entry.dce_v11_0_init_golden_registers.exit_crit_edge
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 202, i32 noundef 0) #12
  %or2.i = or i32 %call.i, 16
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 202, i32 noundef %or2.i, i32 noundef 0) #12
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 192, i32 noundef 0) #12
  %and9.i = and i32 %call3.i, -196609
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 192, i32 noundef %and9.i, i32 noundef 0) #12
  tail call void @amdgpu_atombios_crtc_powergate_init(ptr noundef %handle) #12
  tail call void @amdgpu_atombios_encoder_init_dig(ptr noundef %handle) #12
  %3 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_type.i, align 8
  %.off = add i32 %4, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  %default_dispclk = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 61, i32 5
  %5 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %default_dispclk, align 4
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %dce_v11_0_init_golden_registers.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @amdgpu_atombios_crtc_set_dce_clock(ptr noundef %handle, i32 noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 8) #12
  %call9 = tail call i32 @amdgpu_atombios_crtc_set_dce_clock(ptr noundef %handle, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8) #12
  br label %if.end

if.else:                                          ; preds = %dce_v11_0_init_golden_registers.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_atombios_crtc_set_disp_eng_pll(ptr noundef %handle, i32 noundef %6) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ddev.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i) #12
  %7 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i, align 4, !annotation !145
  %8 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !145
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i.i, ptr noundef nonnull %iter.i) #12
  %call172.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i) #12
  %tobool.not73.i = icmp eq ptr %call172.i, null
  br i1 %tobool.not73.i, label %if.end.dce_v11_0_hpd_init.exit_crit_edge, label %while.body.lr.ph.i

if.end.dce_v11_0_hpd_init.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_hpd_init.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %num_hpd.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 21
  %hpd_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 85
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call174.i = phi ptr [ %call172.i, %while.body.lr.ph.i ], [ %call1.i, %cleanup.i.while.body.i_crit_edge ]
  %hpd.i = getelementptr inbounds %struct.amdgpu_connector, ptr %call174.i, i32 0, i32 11
  %10 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hpd.i, align 4
  %12 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_hpd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i = icmp ult i32 %11, %13
  br i1 %cmp.not.i, label %if.end.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %while.body.i
  %connector_type.i = getelementptr inbounds %struct.drm_connector, ptr %call174.i, i32 0, i32 10
  %14 = ptrtoint ptr %connector_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %connector_type.i, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %15, label %if.end15.i [
    i32 14, label %if.end.i.if.then7.i_crit_edge
    i32 7, label %if.end.i.if.then7.i_crit_edge42
  ]

if.end.i.if.then7.i_crit_edge42:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge42
  %arrayidx.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %11
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, 6297
  %call10.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #12
  %and.i = and i32 %call10.i, -65537
  %19 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hpd.i, align 4
  %arrayidx13.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx13.i, align 4
  %add14.i = add i32 %22, 6297
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add14.i, i32 noundef %and.i, i32 noundef 0) #12
  br label %cleanup.i

if.end15.i:                                       ; preds = %if.end.i
  %arrayidx18.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %11
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add i32 %24, 6298
  %call20.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add19.i, i32 noundef 0) #12
  %or22.i = or i32 %call20.i, 268435456
  %25 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hpd.i, align 4
  %arrayidx25.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx25.i, align 4
  %add26.i = add i32 %28, 6298
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add26.i, i32 noundef %or22.i, i32 noundef 0) #12
  %29 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hpd.i, align 4
  %arrayidx29.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %32, 6300
  %call31.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add30.i, i32 noundef 0) #12
  %and32.i = and i32 %call31.i, -267387136
  %or35.i = or i32 %and32.i, 10485810
  %33 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hpd.i, align 4
  %arrayidx38.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %36, 6300
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add39.i, i32 noundef %or35.i, i32 noundef 0) #12
  %37 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hpd.i, align 4
  %39 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_hpd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp.not.i.i.i = icmp ugt i32 %40, %38
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end15.i.dce_v11_0_hpd_sense.exit.i.i_crit_edge

if.end15.i.dce_v11_0_hpd_sense.exit.i.i_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_hpd_sense.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %38
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %42, 6296
  %call.i.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i.i.i, i32 noundef 0) #12
  %and.i.i.i = shl i32 %call.i.i.i, 7
  %43 = and i32 %and.i.i.i, 256
  %44 = xor i32 %43, 256
  br label %dce_v11_0_hpd_sense.exit.i.i

dce_v11_0_hpd_sense.exit.i.i:                     ; preds = %if.end.i.i.i, %if.end15.i.dce_v11_0_hpd_sense.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %44, %if.end.i.i.i ], [ 256, %if.end15.i.dce_v11_0_hpd_sense.exit.i.i_crit_edge ]
  %45 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_hpd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %38)
  %cmp.not.i.i = icmp ugt i32 %46, %38
  br i1 %cmp.not.i.i, label %if.end.i.i, label %dce_v11_0_hpd_sense.exit.i.i.dce_v11_0_hpd_set_polarity.exit.i_crit_edge

dce_v11_0_hpd_sense.exit.i.i.dce_v11_0_hpd_set_polarity.exit.i_crit_edge: ; preds = %dce_v11_0_hpd_sense.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_hpd_set_polarity.exit.i

if.end.i.i:                                       ; preds = %dce_v11_0_hpd_sense.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %38
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %48, 6297
  %call1.i.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef 0) #12
  %and.i.i = and i32 %call1.i.i, -257
  %tmp.0.i.i = or i32 %and.i.i, %retval.0.i.i.i
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef %tmp.0.i.i, i32 noundef 0) #12
  br label %dce_v11_0_hpd_set_polarity.exit.i

dce_v11_0_hpd_set_polarity.exit.i:                ; preds = %if.end.i.i, %dce_v11_0_hpd_sense.exit.i.i.dce_v11_0_hpd_set_polarity.exit.i_crit_edge
  %49 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hpd.i, align 4
  %call44.i = call i32 @amdgpu_irq_get(ptr noundef %handle, ptr noundef %hpd_irq.i, i32 noundef %50) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %dce_v11_0_hpd_set_polarity.exit.i, %if.then7.i, %while.body.i.cleanup.i_crit_edge
  %call1.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %cleanup.i.dce_v11_0_hpd_init.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.dce_v11_0_hpd_init.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_hpd_init.exit

dce_v11_0_hpd_init.exit:                          ; preds = %cleanup.i.dce_v11_0_hpd_init.exit_crit_edge, %if.end.dce_v11_0_hpd_init.exit_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i) #12
  %num_pins = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 2
  %51 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp1237 = icmp sgt i32 %52, 0
  br i1 %cmp1237, label %for.body.lr.ph, label %dce_v11_0_hpd_init.exit.for.end_crit_edge

dce_v11_0_hpd_init.exit.for.end_crit_edge:        ; preds = %dce_v11_0_hpd_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %dce_v11_0_hpd_init.exit
  %audio_endpt_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 59
  br label %for.body

for.body:                                         ; preds = %dce_v11_0_audio_enable.exit.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dce_v11_0_audio_enable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 1, i32 %i.038
  %tobool.not.i34 = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i34, label %for.body.dce_v11_0_audio_enable.exit_crit_edge, label %if.end.i35

for.body.dce_v11_0_audio_enable.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_enable.exit

if.end.i35:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %audio_endpt_wreg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %audio_endpt_wreg.i, align 8
  %offset.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 1, i32 %i.038, i32 5
  %55 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset.i, align 4
  call void %54(ptr noundef %handle, i32 noundef %56, i32 noundef 84, i32 noundef 0) #12
  br label %dce_v11_0_audio_enable.exit

dce_v11_0_audio_enable.exit:                      ; preds = %if.end.i35, %for.body.dce_v11_0_audio_enable.exit_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %57 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_pins, align 4
  %cmp12 = icmp slt i32 %inc, %58
  br i1 %cmp12, label %dce_v11_0_audio_enable.exit.for.body_crit_edge, label %dce_v11_0_audio_enable.exit.for.end_crit_edge

dce_v11_0_audio_enable.exit.for.end_crit_edge:    ; preds = %dce_v11_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

dce_v11_0_audio_enable.exit.for.body_crit_edge:   ; preds = %dce_v11_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %dce_v11_0_audio_enable.exit.for.end_crit_edge, %dce_v11_0_hpd_init.exit.for.end_crit_edge
  %num_crtc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %59 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_crtc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp5.not.i = icmp eq i32 %60, 0
  br i1 %cmp5.not.i, label %for.end.dce_v11_0_pageflip_interrupt_init.exit_crit_edge, label %for.body.lr.ph.i

for.end.dce_v11_0_pageflip_interrupt_init.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pageflip_interrupt_init.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %pageflip_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 84
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call.i36 = call i32 @amdgpu_irq_get(ptr noundef %handle, ptr noundef %pageflip_irq.i, i32 noundef %i.06.i) #12
  %inc.i = add nuw i32 %i.06.i, 1
  %61 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_crtc.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %62
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dce_v11_0_pageflip_interrupt_init.exit_crit_edge

for.body.i.dce_v11_0_pageflip_interrupt_init.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pageflip_interrupt_init.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

dce_v11_0_pageflip_interrupt_init.exit:           ; preds = %for.body.i.dce_v11_0_pageflip_interrupt_init.exit_crit_edge, %for.end.dce_v11_0_pageflip_interrupt_init.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  %iter.i = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i) #12
  %0 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i, align 4, !annotation !145
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !145
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i.i, ptr noundef nonnull %iter.i) #12
  %call123.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i) #12
  %tobool.not24.i = icmp eq ptr %call123.i, null
  br i1 %tobool.not24.i, label %entry.dce_v11_0_hpd_fini.exit_crit_edge, label %while.body.lr.ph.i

entry.dce_v11_0_hpd_fini.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_hpd_fini.exit

while.body.lr.ph.i:                               ; preds = %entry
  %num_hpd.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 21
  %hpd_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 85
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call125.i = phi ptr [ %call123.i, %while.body.lr.ph.i ], [ %call1.i, %cleanup.i.while.body.i_crit_edge ]
  %hpd.i = getelementptr inbounds %struct.amdgpu_connector, ptr %call125.i, i32 0, i32 11
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
  %add.i = add i32 %8, 6298
  %call6.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #12
  %and.i = and i32 %call6.i, -268435457
  %9 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hpd.i, align 4
  %arrayidx9.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9.i, align 4
  %add10.i = add i32 %12, 6298
  call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add10.i, i32 noundef %and.i, i32 noundef 0) #12
  %13 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hpd.i, align 4
  %call13.i = call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %hpd_irq.i, i32 noundef %14) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %while.body.i.cleanup.i_crit_edge
  %call1.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %cleanup.i.dce_v11_0_hpd_fini.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.dce_v11_0_hpd_fini.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_hpd_fini.exit

dce_v11_0_hpd_fini.exit:                          ; preds = %cleanup.i.dce_v11_0_hpd_fini.exit_crit_edge, %entry.dce_v11_0_hpd_fini.exit_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i) #12
  %num_pins = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 2
  %15 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11 = icmp sgt i32 %16, 0
  br i1 %cmp11, label %for.body.lr.ph, label %dce_v11_0_hpd_fini.exit.for.end_crit_edge

dce_v11_0_hpd_fini.exit.for.end_crit_edge:        ; preds = %dce_v11_0_hpd_fini.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %dce_v11_0_hpd_fini.exit
  %audio_endpt_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 59
  br label %for.body

for.body:                                         ; preds = %dce_v11_0_audio_enable.exit.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dce_v11_0_audio_enable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 19, i32 1, i32 %i.012
  %tobool.not.i9 = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i9, label %for.body.dce_v11_0_audio_enable.exit_crit_edge, label %if.end.i10

for.body.dce_v11_0_audio_enable.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_enable.exit

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
  br label %dce_v11_0_audio_enable.exit

dce_v11_0_audio_enable.exit:                      ; preds = %if.end.i10, %for.body.dce_v11_0_audio_enable.exit_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %21 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %dce_v11_0_audio_enable.exit.for.body_crit_edge, label %dce_v11_0_audio_enable.exit.for.end_crit_edge

dce_v11_0_audio_enable.exit.for.end_crit_edge:    ; preds = %dce_v11_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

dce_v11_0_audio_enable.exit.for.body_crit_edge:   ; preds = %dce_v11_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %dce_v11_0_audio_enable.exit.for.end_crit_edge, %dce_v11_0_hpd_fini.exit.for.end_crit_edge
  %num_crtc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %23 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_crtc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp5.not.i = icmp eq i32 %24, 0
  br i1 %cmp5.not.i, label %for.end.dce_v11_0_pageflip_interrupt_fini.exit_crit_edge, label %for.body.lr.ph.i

for.end.dce_v11_0_pageflip_interrupt_fini.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pageflip_interrupt_fini.exit

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
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dce_v11_0_pageflip_interrupt_fini.exit_crit_edge

for.body.i.dce_v11_0_pageflip_interrupt_fini.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pageflip_interrupt_fini.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

dce_v11_0_pageflip_interrupt_fini.exit:           ; preds = %for.body.i.dce_v11_0_pageflip_interrupt_fini.exit_crit_edge, %for.end.dce_v11_0_pageflip_interrupt_fini.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_suspend(ptr noundef %handle) #0 align 64 {
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
  %call2 = tail call i32 @dce_v11_0_hw_fini(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bl_level = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 18
  %0 = ptrtoint ptr %bl_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bl_level, align 8
  tail call void @amdgpu_atombios_encoder_set_backlight_level_to_reg(ptr noundef %handle, i8 noundef zeroext %1) #12
  %call = tail call i32 @dce_v11_0_hw_init(ptr noundef %handle)
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
define internal zeroext i1 @dce_v11_0_is_idle(ptr nocapture noundef readnone %handle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dce_v11_0_wait_for_idle(ptr nocapture noundef readnone %handle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_soft_reset(ptr noundef %handle) #0 align 64 {
entry:
  %crtc_status.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %crtc_status.i) #12
  %num_crtc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %0 = call ptr @memset(ptr %crtc_status.i, i32 255, i32 24)
  %1 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_crtc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp60.not.i = icmp eq i32 %2, 0
  br i1 %cmp60.not.i, label %entry.for.cond8.preheader.i.preheader_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.cond8.preheader.i.preheader_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond8.preheader.i.preheader

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.062.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %crtc_hung.061.i = phi i32 [ %crtc_hung.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %i.062.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %4, 7068
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #12
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %add2.i = add i32 %4, 7080
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add2.i, i32 noundef 0) #12
  %arrayidx4.i = getelementptr [6 x i32], ptr %crtc_status.i, i32 0, i32 %i.062.i
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3.i, ptr %arrayidx4.i, align 4
  %shl.i = shl nuw i32 1, %i.062.i
  %or.i = or i32 %shl.i, %crtc_hung.061.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %crtc_hung.1.i = phi i32 [ %or.i, %if.then.i ], [ %crtc_hung.061.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.062.i, 1
  %6 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond8.preheader.i.preheader_crit_edge

for.inc.i.for.cond8.preheader.i.preheader_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond8.preheader.i.preheader

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond8.preheader.i.preheader:                  ; preds = %for.inc.i.for.cond8.preheader.i.preheader_crit_edge, %entry.for.cond8.preheader.i.preheader_crit_edge
  %crtc_hung.270.i.ph = phi i32 [ 0, %entry.for.cond8.preheader.i.preheader_crit_edge ], [ %crtc_hung.1.i, %for.inc.i.for.cond8.preheader.i.preheader_crit_edge ]
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %if.end32.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.i.preheader
  %cmp672.i = phi i1 [ %cmp6.i, %if.end32.i.for.cond8.preheader.i_crit_edge ], [ true, %for.cond8.preheader.i.preheader ]
  %j.071.i = phi i32 [ %inc34.i, %if.end32.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.i.preheader ]
  %crtc_hung.270.i = phi i32 [ %crtc_hung.3.lcssa.i, %if.end32.i.for.cond8.preheader.i_crit_edge ], [ %crtc_hung.270.i.ph, %for.cond8.preheader.i.preheader ]
  %8 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_crtc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1165.not.i = icmp eq i32 %9, 0
  br i1 %cmp1165.not.i, label %for.cond8.preheader.i.for.end29.i_crit_edge, label %for.cond8.preheader.i.for.body12.i_crit_edge

for.cond8.preheader.i.for.body12.i_crit_edge:     ; preds = %for.cond8.preheader.i
  br label %for.body12.i

for.cond8.preheader.i.for.end29.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end29.i

for.body12.i:                                     ; preds = %for.inc27.i.for.body12.i_crit_edge, %for.cond8.preheader.i.for.body12.i_crit_edge
  %i.167.i = phi i32 [ %inc28.i, %for.inc27.i.for.body12.i_crit_edge ], [ 0, %for.cond8.preheader.i.for.body12.i_crit_edge ]
  %crtc_hung.366.i = phi i32 [ %crtc_hung.4.i, %for.inc27.i.for.body12.i_crit_edge ], [ %crtc_hung.270.i, %for.cond8.preheader.i.for.body12.i_crit_edge ]
  %shl13.i = shl nuw i32 1, %i.167.i
  %and14.i = and i32 %shl13.i, %crtc_hung.366.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %for.body12.i.for.inc27.i_crit_edge, label %if.then16.i

for.body12.i.for.inc27.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc27.i

if.then16.i:                                      ; preds = %for.body12.i
  %arrayidx17.i = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %i.167.i
  %10 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx17.i, align 4
  %add18.i = add i32 %11, 7080
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add18.i, i32 noundef 0) #12
  %arrayidx20.i = getelementptr [6 x i32], ptr %crtc_status.i, i32 0, i32 %i.167.i
  %12 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call19.i, i32 %13)
  %cmp21.not.i = icmp eq i32 %call19.i, %13
  br i1 %cmp21.not.i, label %if.then16.i.for.inc27.i_crit_edge, label %if.then22.i

if.then16.i.for.inc27.i_crit_edge:                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc27.i

if.then22.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  %neg.i = xor i32 %shl13.i, -1
  %and24.i = and i32 %crtc_hung.366.i, %neg.i
  br label %for.inc27.i

for.inc27.i:                                      ; preds = %if.then22.i, %if.then16.i.for.inc27.i_crit_edge, %for.body12.i.for.inc27.i_crit_edge
  %crtc_hung.4.i = phi i32 [ %and24.i, %if.then22.i ], [ %crtc_hung.366.i, %if.then16.i.for.inc27.i_crit_edge ], [ %crtc_hung.366.i, %for.body12.i.for.inc27.i_crit_edge ]
  %inc28.i = add nuw i32 %i.167.i, 1
  %14 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_crtc.i, align 8
  %cmp11.i = icmp ult i32 %inc28.i, %15
  br i1 %cmp11.i, label %for.inc27.i.for.body12.i_crit_edge, label %for.inc27.i.for.end29.i_crit_edge

for.inc27.i.for.end29.i_crit_edge:                ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end29.i

for.inc27.i.for.body12.i_crit_edge:               ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12.i

for.end29.i:                                      ; preds = %for.inc27.i.for.end29.i_crit_edge, %for.cond8.preheader.i.for.end29.i_crit_edge
  %crtc_hung.3.lcssa.i = phi i32 [ %crtc_hung.270.i, %for.cond8.preheader.i.for.end29.i_crit_edge ], [ %crtc_hung.4.i, %for.inc27.i.for.end29.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crtc_hung.3.lcssa.i)
  %cmp30.i = icmp eq i32 %crtc_hung.3.lcssa.i, 0
  br i1 %cmp30.i, label %for.end29.i.dce_v11_0_is_display_hung.exit_crit_edge, label %if.end32.i

for.end29.i.dce_v11_0_is_display_hung.exit_crit_edge: ; preds = %for.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_is_display_hung.exit

if.end32.i:                                       ; preds = %for.end29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #12
  %inc34.i = add nuw nsw i32 %j.071.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %j.071.i)
  %cmp6.i = icmp ult i32 %j.071.i, 9
  %exitcond.not.i = icmp eq i32 %inc34.i, 10
  br i1 %exitcond.not.i, label %if.end32.i.dce_v11_0_is_display_hung.exit_crit_edge, label %if.end32.i.for.cond8.preheader.i_crit_edge

if.end32.i.for.cond8.preheader.i_crit_edge:       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond8.preheader.i

if.end32.i.dce_v11_0_is_display_hung.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_is_display_hung.exit

dce_v11_0_is_display_hung.exit:                   ; preds = %if.end32.i.dce_v11_0_is_display_hung.exit_crit_edge, %for.end29.i.dce_v11_0_is_display_hung.exit_crit_edge
  %cmp6.lcssa.i = phi i1 [ %cmp6.i, %if.end32.i.dce_v11_0_is_display_hung.exit_crit_edge ], [ %cmp672.i, %for.end29.i.dce_v11_0_is_display_hung.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %crtc_status.i) #12
  br i1 %cmp6.lcssa.i, label %dce_v11_0_is_display_hung.exit.if.end6_crit_edge, label %if.then1

dce_v11_0_is_display_hung.exit.if.end6_crit_edge: ; preds = %dce_v11_0_is_display_hung.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then1:                                         ; preds = %dce_v11_0_is_display_hung.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  %or3 = or i32 %call2, 32
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.41, i32 noundef %or3) #16
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %or3, i32 noundef 0) #12
  %call4 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 10737400) #12
  %and = and i32 %call4, -33
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %and, i32 noundef 0) #12
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 10737400) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %dce_v11_0_is_display_hung.exit.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dce_v11_0_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dce_v11_0_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_audio_endpt_rreg(ptr noundef %adev, i32 noundef %block_offset, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_endpt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 57
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %audio_endpt_idx_lock) #12
  %add = add i32 %block_offset, 6056
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %reg, i32 noundef 0) #12
  %add5 = add i32 %block_offset, 6057
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add5, i32 noundef 0) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %audio_endpt_idx_lock, i32 noundef %call2) #12
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v11_0_audio_endpt_wreg(ptr noundef %adev, i32 noundef %block_offset, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_endpt_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 57
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %audio_endpt_idx_lock) #12
  %add = add i32 %block_offset, 6056
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %reg, i32 noundef 0) #12
  %add5 = add i32 %block_offset, 6057
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add5, i32 noundef %v, i32 noundef 0) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %audio_endpt_idx_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v11_0_bandwidth_update(ptr noundef %adev) #0 align 64 {
entry:
  %wm_low.i = alloca %struct.dce10_wm_params, align 4
  %wm_high.i = alloca %struct.dce10_wm_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_display_update_priority(ptr noundef %adev) #12
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp48 = icmp sgt i32 %1, 0
  br i1 %cmp48, label %entry.for.body_crit_edge, label %entry.for.end21_crit_edge

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end21

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body
  %2 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp652 = icmp sgt i32 %.pr, 0
  br i1 %cmp652, label %for.body7.lr.ph, label %for.cond3.preheader.for.end21_crit_edge

for.cond3.preheader.for.end21_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end21

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %3 = getelementptr inbounds i8, ptr %wm_high.i, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool3.not.i = icmp eq i32 %spec.select, 0
  %dpm_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 13
  %current_mclk.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 2
  %current_sclk.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 1
  %4 = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_high.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_high.i, i32 0, i32 2
  %disp_clk.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_high.i, i32 0, i32 3
  %src_width.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_high.i, i32 0, i32 4
  %active_time29.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_high.i, i32 0, i32 5
  %blank_time.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_high.i, i32 0, i32 6
  %vsc.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_high.i, i32 0, i32 8
  %vtaps.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_high.i, i32 0, i32 12
  %bytes_per_pixel.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_high.i, i32 0, i32 10
  %lb_size41.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_high.i, i32 0, i32 11
  %num_heads43.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_high.i, i32 0, i32 9
  %disp_priority.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 23
  %6 = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 2
  %disp_clk82.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 3
  %src_width85.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 4
  %active_time86.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 5
  %blank_time89.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 6
  %interlaced90.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 7
  %vsc97.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 8
  %vtaps99.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 12
  %bytes_per_pixel106.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 10
  %lb_size107.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 11
  %num_heads110.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm_low.i, i32 0, i32 9
  br label %for.body7

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.050 = phi i32 [ %inc2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %num_heads.049 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 3, i32 %i.050
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled, align 8, !range !144
  %12 = zext i8 %11 to i32
  %spec.select = add i32 %num_heads.049, %12
  %inc2 = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc2, %1
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body7:                                        ; preds = %dce_v11_0_program_watermarks.exit.for.body7_crit_edge, %for.body7.lr.ph
  %i.153 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc20, %dce_v11_0_program_watermarks.exit.for.body7_crit_edge ]
  %arrayidx10 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 3, i32 %i.153
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10, align 4
  %mode12 = getelementptr inbounds %struct.drm_crtc, ptr %14, i32 0, i32 12
  %crtc_id.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crtc_id.i, align 8
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %14, i32 0, i32 11
  %17 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enabled.i, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %tobool1.not.i = icmp eq ptr %mode12, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %for.body7.if.end24.i_crit_edge, label %if.then.i

for.body7.if.end24.i_crit_edge:                   ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.then.i:                                        ; preds = %for.body7
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %14, i32 0, i32 12, i32 13
  %19 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %crtc_hdisplay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1920, i16 %20)
  %cmp.i = icmp ult i16 %20, 1920
  br i1 %cmp.i, label %if.then.i.if.end24.i_crit_edge, label %if.else.i

if.then.i.if.end24.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2560, i16 %20)
  %cmp6.i = icmp ult i16 %20, 2560
  br i1 %cmp6.i, label %if.else.i.if.end24.i_crit_edge, label %if.else9.i

if.else.i.if.end24.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %20)
  %cmp12.i = icmp ult i16 %20, 4096
  br i1 %cmp12.i, label %if.else9.i.if.end24.sink.split.i_crit_edge, label %if.else16.i

if.else9.i.if.end24.sink.split.i_crit_edge:       ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.sink.split.i

if.else16.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1) #12
  br label %if.end24.sink.split.i

if.end24.sink.split.i:                            ; preds = %if.else16.i, %if.else9.i.if.end24.sink.split.i_crit_edge
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool15.not.i, i32 4, i32 2
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24.sink.split.i, %if.else.i.if.end24.i_crit_edge, %if.then.i.if.end24.i_crit_edge, %for.body7.if.end24.i_crit_edge
  %buffer_alloc.0.i = phi i32 [ 2, %if.then.i.if.end24.i_crit_edge ], [ 2, %if.else.i.if.end24.i_crit_edge ], [ 0, %for.body7.if.end24.i_crit_edge ], [ %cond.i, %if.end24.sink.split.i ]
  %switch.selectcmp82.i = phi i32 [ 3840, %if.then.i.if.end24.i_crit_edge ], [ 5120, %if.else.i.if.end24.i_crit_edge ], [ 3840, %for.body7.if.end24.i_crit_edge ], [ 8192, %if.end24.sink.split.i ]
  %mem_cfg.0.i = phi i32 [ 1048576, %if.then.i.if.end24.i_crit_edge ], [ 2097152, %if.else.i.if.end24.i_crit_edge ], [ 1048576, %for.body7.if.end24.i_crit_edge ], [ 0, %if.end24.sink.split.i ]
  %crtc_offset.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %14, i32 0, i32 4
  %23 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %crtc_offset.i, align 8
  %add.i = add i32 %24, 6849
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0) #12
  %and25.i = and i32 %call.i, -3145729
  %or.i = or i32 %and25.i, %mem_cfg.0.i
  %25 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %crtc_offset.i, align 8
  %add28.i = add i32 %26, 6849
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add28.i, i32 noundef %or.i, i32 noundef 0) #12
  %add29.i = add i32 %16, 801
  %call30.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add29.i, i32 noundef 0) #12
  %and31.i = and i32 %call30.i, -8
  %or34.i = or i32 %and31.i, %buffer_alloc.0.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add29.i, i32 noundef %or34.i, i32 noundef 0) #12
  %27 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp3684.not.i = icmp eq i32 %28, 0
  br i1 %cmp3684.not.i, label %if.end24.i.dce_v11_0_line_buffer_adjust.exit_crit_edge, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  br label %for.body.i

if.end24.i.dce_v11_0_line_buffer_adjust.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_line_buffer_adjust.exit

for.body.i:                                       ; preds = %if.end43.i.for.body.i_crit_edge, %if.end24.i.for.body.i_crit_edge
  %i.085.i = phi i32 [ %inc.i, %if.end43.i.for.body.i_crit_edge ], [ 0, %if.end24.i.for.body.i_crit_edge ]
  %call39.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add29.i, i32 noundef 0) #12
  %29 = and i32 %call39.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool41.not.i = icmp eq i32 %29, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %for.body.i.dce_v11_0_line_buffer_adjust.exit_crit_edge

for.body.i.dce_v11_0_line_buffer_adjust.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_line_buffer_adjust.exit

if.end43.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #12
  %inc.i = add nuw i32 %i.085.i, 1
  %31 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %usec_timeout.i, align 8
  %cmp36.i = icmp ult i32 %inc.i, %32
  br i1 %cmp36.i, label %if.end43.i.for.body.i_crit_edge, label %if.end43.i.dce_v11_0_line_buffer_adjust.exit_crit_edge

if.end43.i.dce_v11_0_line_buffer_adjust.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_line_buffer_adjust.exit

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

dce_v11_0_line_buffer_adjust.exit:                ; preds = %if.end43.i.dce_v11_0_line_buffer_adjust.exit_crit_edge, %for.body.i.dce_v11_0_line_buffer_adjust.exit_crit_edge, %if.end24.i.dce_v11_0_line_buffer_adjust.exit_crit_edge
  %33 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enabled.i, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool46.not.i = icmp eq i8 %34, 0
  %or.cond81.i = or i1 %tobool1.not.i, %tobool46.not.i
  %retval.0.i = select i1 %or.cond81.i, i32 0, i32 %switch.selectcmp82.i
  %35 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx10, align 4
  %mode1.i = getelementptr inbounds %struct.drm_crtc, ptr %36, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wm_low.i) #12
  %37 = call ptr @memset(ptr %wm_low.i, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wm_high.i) #12
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %3, align 4, !annotation !145
  %enabled.i38 = getelementptr inbounds %struct.drm_crtc, ptr %36, i32 0, i32 11
  %39 = ptrtoint ptr %enabled.i38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %enabled.i38, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i39 = icmp eq i8 %40, 0
  %or.cond.i40 = or i1 %tobool3.not.i, %tobool.not.i39
  br i1 %or.cond.i40, label %dce_v11_0_line_buffer_adjust.exit.dce_v11_0_program_watermarks.exit_crit_edge, label %if.then.i42

dce_v11_0_line_buffer_adjust.exit.dce_v11_0_program_watermarks.exit_crit_edge: ; preds = %dce_v11_0_line_buffer_adjust.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_program_watermarks.exit

if.then.i42:                                      ; preds = %dce_v11_0_line_buffer_adjust.exit
  %crtc_hdisplay.i41 = getelementptr inbounds %struct.drm_crtc, ptr %36, i32 0, i32 12, i32 13
  %41 = ptrtoint ptr %crtc_hdisplay.i41 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %crtc_hdisplay.i41, align 4
  %conv.i = zext i16 %42 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000
  %43 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mode1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !146

if.then168.i.i.i:                                 ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %44
  br label %if.else162.i.i363.i

if.else174.i.i.i:                                 ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #14
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %mul.i) #17, !srcloc !147
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %45, 1
  %extract.t562.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.else162.i.i363.i

if.else162.i.i363.i:                              ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t562.i, %if.else174.i.i.i ]
  %crtc_htotal.i = getelementptr inbounds %struct.drm_crtc, ptr %36, i32 0, i32 12, i32 18
  %46 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %crtc_htotal.i, align 2
  %conv7.i = zext i16 %47 to i64
  %mul8.i = mul nuw nsw i64 %conv7.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul8.i)
  %cmp164.i.i362.i = icmp ult i64 %mul8.i, 4294967296
  br i1 %cmp164.i.i362.i, label %if.then168.i.i367.i, label %if.else174.i.i369.i, !prof !146

if.then168.i.i367.i:                              ; preds = %if.else162.i.i363.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i364.i = trunc i64 %mul8.i to i32
  %div172.i.i365.i = udiv i32 %conv169.i.i364.i, %44
  br label %div_u64.exit371.i

if.else174.i.i369.i:                              ; preds = %if.else162.i.i363.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %mul8.i) #17, !srcloc !147
  %asmresult1.i.i.i368.i = extractvalue { i64, i64 } %48, 1
  %extract.t564.i = trunc i64 %asmresult1.i.i.i368.i to i32
  br label %div_u64.exit371.i

div_u64.exit371.i:                                ; preds = %if.else174.i.i369.i, %if.then168.i.i367.i
  %dividend.addr.0.i.i370.off0.i = phi i32 [ %div172.i.i365.i, %if.then168.i.i367.i ], [ %extract.t564.i, %if.else174.i.i369.i ]
  %49 = tail call i32 @llvm.umin.i32(i32 %dividend.addr.0.i.i370.off0.i, i32 65535) #12
  %50 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dpm_enabled.i, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool14.not.i = icmp eq i8 %51, 0
  br i1 %tobool14.not.i, label %if.else.i43, label %if.then15.i

if.then15.i:                                      ; preds = %div_u64.exit371.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = tail call i32 @amdgpu_dpm_get_mclk(ptr noundef %adev, i1 noundef zeroext false) #12
  %call18.i = tail call i32 @amdgpu_dpm_get_sclk(ptr noundef %adev, i1 noundef zeroext false) #12
  br label %if.end.i

if.else.i43:                                      ; preds = %div_u64.exit371.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %current_mclk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %current_mclk.i, align 8
  %54 = ptrtoint ptr %current_sclk.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %current_sclk.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i43, %if.then15.i
  %mul17.sink.in.i = phi i32 [ %53, %if.else.i43 ], [ %call16.i, %if.then15.i ]
  %mul19.sink.in.i = phi i32 [ %55, %if.else.i43 ], [ %call18.i, %if.then15.i ]
  %mul19.sink.i = mul i32 %mul19.sink.in.i, 10
  %mul17.sink.i = mul i32 %mul17.sink.in.i, 10
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul17.sink.i, ptr %4, align 4
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul19.sink.i, ptr %5, align 4
  %58 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mode1.i, align 4
  %60 = ptrtoint ptr %disp_clk.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %disp_clk.i, align 4
  %61 = ptrtoint ptr %crtc_hdisplay.i41 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %crtc_hdisplay.i41, align 4
  %conv28.i = zext i16 %62 to i32
  %63 = ptrtoint ptr %src_width.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv28.i, ptr %src_width.i, align 4
  %64 = ptrtoint ptr %active_time29.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %active_time29.i, align 4
  %sub.i = sub i32 %49, %dividend.addr.0.i.i.off0.i
  %65 = ptrtoint ptr %blank_time.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub.i, ptr %blank_time.i, align 4
  %flags.i44 = getelementptr inbounds %struct.drm_crtc, ptr %36, i32 0, i32 12, i32 11
  %66 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i44, align 4
  %68 = trunc i32 %67 to i8
  %69 = lshr i8 %68, 4
  %70 = and i8 %69, 1
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %3, align 4
  %vsc35.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %36, i32 0, i32 18
  %72 = ptrtoint ptr %vsc35.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vsc35.i, align 8
  %74 = ptrtoint ptr %vsc.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %vsc.i, align 4
  %rmx_type.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %36, i32 0, i32 15
  %75 = ptrtoint ptr %rmx_type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rmx_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp36.not.i = icmp eq i32 %76, 0
  %spec.store.select256.i = select i1 %cmp36.not.i, i32 1, i32 2
  %77 = ptrtoint ptr %vtaps.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %spec.store.select256.i, ptr %vtaps.i, align 4
  %78 = ptrtoint ptr %bytes_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %bytes_per_pixel.i, align 4
  %79 = ptrtoint ptr %lb_size41.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i, ptr %lb_size41.i, align 4
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 2049, i32 noundef 0) #12
  %and.i.i = lshr i32 %call.i.i, 12
  %shr.i.i = and i32 %and.i.i, 15
  %switch.tableidx = add nsw i32 %shr.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %80 = icmp ult i32 %switch.tableidx, 8
  br i1 %80, label %switch.lookup, label %if.end.i.cik_get_number_of_dram_channels.exit.i_crit_edge

if.end.i.cik_get_number_of_dram_channels.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_get_number_of_dram_channels.exit.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.dce_v11_0_bandwidth_update, i32 0, i32 %switch.tableidx
  %81 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %81)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cik_get_number_of_dram_channels.exit.i

cik_get_number_of_dram_channels.exit.i:           ; preds = %switch.lookup, %if.end.i.cik_get_number_of_dram_channels.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end.i.cik_get_number_of_dram_channels.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %82 = ptrtoint ptr %wm_high.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i.i, ptr %wm_high.i, align 4
  %83 = ptrtoint ptr %num_heads43.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.select, ptr %num_heads43.i, align 4
  %call44.i = call fastcc i32 @dce_v11_0_latency_watermark(ptr noundef nonnull %wm_high.i) #12
  %84 = tail call i32 @llvm.umin.i32(i32 %call44.i, i32 65535) #12
  %call52.i = call fastcc zeroext i1 @dce_v11_0_average_bandwidth_vs_dram_bandwidth_for_display(ptr noundef nonnull %wm_high.i) #12
  br i1 %call52.i, label %lor.lhs.false.i, label %cik_get_number_of_dram_channels.exit.i.if.then59.i_crit_edge

cik_get_number_of_dram_channels.exit.i.if.then59.i_crit_edge: ; preds = %cik_get_number_of_dram_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59.i

lor.lhs.false.i:                                  ; preds = %cik_get_number_of_dram_channels.exit.i
  %shl.i.i373.i = shl nuw nsw i32 %49, 12
  %.fca.0.insert21.i.i.i = insertvalue [1 x i32] poison, i32 %shl.i.i373.i, 0
  %call.i.i.i = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert21.i.i.i, [1 x i32] [i32 4096000]) #12
  %shl4.i.i.i = shl nuw nsw i32 %conv28.i, 14
  %mul.i.i374.i = zext i32 %shl4.i.i.i to i64
  %conv9.i.i.i = zext i32 %73 to i64
  %mul10.i.i.i = mul nuw nsw i64 %conv9.i.i.i, %mul.i.i374.i
  %conv.i.i.i.i = shl nuw nsw i64 %mul10.i.i.i, 1
  %85 = and i64 %mul10.i.i.i, 17590038560768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %85)
  %cmp169.i.i.i.i = icmp eq i64 %85, 0
  br i1 %cmp169.i.i.i.i, label %if.then173.i.i.i.i, label %if.else179.i.i.i.i, !prof !146

if.then173.i.i.i.i:                               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv174.i.i.i.i = trunc i64 %conv.i.i.i.i to i32
  %div177.i.i.i.i = udiv i32 %conv174.i.i.i.i, %call.i.i.i
  %conv178.i.i.i.i = zext i32 %div177.i.i.i.i to i64
  br label %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit.i

if.else179.i.i.i.i:                               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i.i.i.i = and i64 %conv.i.i.i.i, 35184372056064
  %86 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i.i.i, i64 %shl.i.i.i.i) #17, !srcloc !147
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %86, 1
  br label %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit.i

dce_v11_0_average_bandwidth_vs_available_bandwidth.exit.i: ; preds = %if.else179.i.i.i.i, %if.then173.i.i.i.i
  %tmp.0.i.i.i.i = phi i64 [ %conv178.i.i.i.i, %if.then173.i.i.i.i ], [ %asmresult1.i.i.i.i.i, %if.else179.i.i.i.i ]
  %add185.i.i.i.i = add i64 %tmp.0.i.i.i.i, 1
  %sum.shift.i.i.i = lshr i64 %add185.i.i.i.i, 13
  %shr1730.i.i.i = trunc i64 %sum.shift.i.i.i to i32
  %shr17.i.i.i = and i32 %shr1730.i.i.i, 1048575
  %call1.i.i = call fastcc i32 @dce_v11_0_available_bandwidth(ptr noundef nonnull %wm_high.i) #12
  %div.i.i = udiv i32 %call1.i.i, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %shr17.i.i.i, i32 %div.i.i)
  %cmp.not.i.not.i = icmp ugt i32 %shr17.i.i.i, %div.i.i
  br i1 %cmp.not.i.not.i, label %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit.i.if.then59.i_crit_edge, label %lor.lhs.false54.i

dce_v11_0_average_bandwidth_vs_available_bandwidth.exit.i.if.then59.i_crit_edge: ; preds = %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59.i

lor.lhs.false54.i:                                ; preds = %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %73)
  %cmp.i.i = icmp ugt i32 %73, 4096
  br i1 %cmp.i.i, label %lor.lhs.false54.i.dce_v11_0_check_latency_hiding.exit.i_crit_edge, label %if.else.i.i

lor.lhs.false54.i.dce_v11_0_check_latency_hiding.exit.i_crit_edge: ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_check_latency_hiding.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #14
  %div.i376.i = udiv i32 %retval.0.i, %conv28.i
  %add1.i.i = add nuw nsw i32 %spec.store.select256.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i376.i, i32 %add1.i.i)
  %cmp2.not.i.i = icmp ugt i32 %div.i376.i, %add1.i.i
  %..i.i = select i1 %cmp2.not.i.i, i32 2, i32 1
  br label %dce_v11_0_check_latency_hiding.exit.i

dce_v11_0_check_latency_hiding.exit.i:            ; preds = %if.else.i.i, %lor.lhs.false54.i.dce_v11_0_check_latency_hiding.exit.i_crit_edge
  %latency_tolerant_lines.0.i.i = phi i32 [ 1, %lor.lhs.false54.i.dce_v11_0_check_latency_hiding.exit.i_crit_edge ], [ %..i.i, %if.else.i.i ]
  %mul.i.i = mul nuw nsw i32 %latency_tolerant_lines.0.i.i, %49
  %add7.i.i = add i32 %mul.i.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call44.i, i32 %add7.i.i)
  %cmp8.not.i.not.i = icmp ugt i32 %call44.i, %add7.i.i
  br i1 %cmp8.not.i.not.i, label %dce_v11_0_check_latency_hiding.exit.i.if.then59.i_crit_edge, label %lor.lhs.false56.i

dce_v11_0_check_latency_hiding.exit.i.if.then59.i_crit_edge: ; preds = %dce_v11_0_check_latency_hiding.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59.i

lor.lhs.false56.i:                                ; preds = %dce_v11_0_check_latency_hiding.exit.i
  %87 = ptrtoint ptr %disp_priority.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %disp_priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp57.i = icmp eq i32 %88, 2
  br i1 %cmp57.i, label %lor.lhs.false56.i.if.then59.i_crit_edge, label %lor.lhs.false56.i.if.end60.i_crit_edge

lor.lhs.false56.i.if.end60.i_crit_edge:           ; preds = %lor.lhs.false56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

lor.lhs.false56.i.if.then59.i_crit_edge:          ; preds = %lor.lhs.false56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59.i

if.then59.i:                                      ; preds = %lor.lhs.false56.i.if.then59.i_crit_edge, %dce_v11_0_check_latency_hiding.exit.i.if.then59.i_crit_edge, %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit.i.if.then59.i_crit_edge, %cik_get_number_of_dram_channels.exit.i.if.then59.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #12
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then59.i, %lor.lhs.false56.i.if.end60.i_crit_edge
  %89 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dpm_enabled.i, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool63.not.i = icmp eq i8 %90, 0
  br i1 %tobool63.not.i, label %if.else71.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  %call65.i = tail call i32 @amdgpu_dpm_get_mclk(ptr noundef %adev, i1 noundef zeroext true) #12
  %call68.i = tail call i32 @amdgpu_dpm_get_sclk(ptr noundef %adev, i1 noundef zeroext true) #12
  br label %if.end80.i

if.else71.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %current_mclk.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %current_mclk.i, align 8
  %93 = ptrtoint ptr %current_sclk.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %current_sclk.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else71.i, %if.then64.i
  %mul66.sink.in.i = phi i32 [ %92, %if.else71.i ], [ %call65.i, %if.then64.i ]
  %mul69.sink.in.i = phi i32 [ %94, %if.else71.i ], [ %call68.i, %if.then64.i ]
  %mul69.sink.i = mul i32 %mul69.sink.in.i, 10
  %mul66.sink.i = mul i32 %mul66.sink.in.i, 10
  %95 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %mul66.sink.i, ptr %6, align 4
  %96 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mul69.sink.i, ptr %7, align 4
  %97 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mode1.i, align 4
  %99 = ptrtoint ptr %disp_clk82.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %disp_clk82.i, align 4
  %100 = ptrtoint ptr %crtc_hdisplay.i41 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %crtc_hdisplay.i41, align 4
  %conv84.i = zext i16 %101 to i32
  %102 = ptrtoint ptr %src_width85.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv84.i, ptr %src_width85.i, align 4
  %103 = ptrtoint ptr %active_time86.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %active_time86.i, align 4
  %104 = ptrtoint ptr %blank_time89.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub.i, ptr %blank_time89.i, align 4
  %105 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags.i44, align 4
  %107 = trunc i32 %106 to i8
  %108 = lshr i8 %107, 4
  %109 = and i8 %108, 1
  %110 = ptrtoint ptr %interlaced90.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %interlaced90.i, align 4
  %111 = ptrtoint ptr %vsc35.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vsc35.i, align 8
  %113 = ptrtoint ptr %vsc97.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %vsc97.i, align 4
  %114 = ptrtoint ptr %rmx_type.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rmx_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp101.not.i = icmp eq i32 %115, 0
  %spec.store.select257.i = select i1 %cmp101.not.i, i32 1, i32 2
  %116 = ptrtoint ptr %vtaps99.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %spec.store.select257.i, ptr %vtaps99.i, align 4
  %117 = ptrtoint ptr %bytes_per_pixel106.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 4, ptr %bytes_per_pixel106.i, align 4
  %118 = ptrtoint ptr %lb_size107.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %retval.0.i, ptr %lb_size107.i, align 4
  %call.i378.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 2049, i32 noundef 0) #12
  %and.i379.i = lshr i32 %call.i378.i, 12
  %shr.i380.i = and i32 %and.i379.i, 15
  %switch.tableidx57 = add nsw i32 %shr.i380.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx57)
  %119 = icmp ult i32 %switch.tableidx57, 8
  br i1 %119, label %switch.lookup56, label %if.end80.i.cik_get_number_of_dram_channels.exit390.i_crit_edge

if.end80.i.cik_get_number_of_dram_channels.exit390.i_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cik_get_number_of_dram_channels.exit390.i

switch.lookup56:                                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep58 = getelementptr inbounds [8 x i32], ptr @switch.table.dce_v11_0_bandwidth_update.45, i32 0, i32 %switch.tableidx57
  %120 = ptrtoint ptr %switch.gep58 to i32
  call void @__asan_load4_noabort(i32 %120)
  %switch.load59 = load i32, ptr %switch.gep58, align 4
  br label %cik_get_number_of_dram_channels.exit390.i

cik_get_number_of_dram_channels.exit390.i:        ; preds = %switch.lookup56, %if.end80.i.cik_get_number_of_dram_channels.exit390.i_crit_edge
  %retval.0.i389.i = phi i32 [ 1, %if.end80.i.cik_get_number_of_dram_channels.exit390.i_crit_edge ], [ %switch.load59, %switch.lookup56 ]
  %121 = ptrtoint ptr %wm_low.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %retval.0.i389.i, ptr %wm_low.i, align 4
  %122 = ptrtoint ptr %num_heads110.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %spec.select, ptr %num_heads110.i, align 4
  %call111.i = call fastcc i32 @dce_v11_0_latency_watermark(ptr noundef nonnull %wm_low.i) #12
  %123 = tail call i32 @llvm.umin.i32(i32 %call111.i, i32 65535) #12
  %call119.i = call fastcc zeroext i1 @dce_v11_0_average_bandwidth_vs_dram_bandwidth_for_display(ptr noundef nonnull %wm_low.i) #12
  br i1 %call119.i, label %lor.lhs.false120.i, label %cik_get_number_of_dram_channels.exit390.i.if.then129.i_crit_edge

cik_get_number_of_dram_channels.exit390.i.if.then129.i_crit_edge: ; preds = %cik_get_number_of_dram_channels.exit390.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129.i

lor.lhs.false120.i:                               ; preds = %cik_get_number_of_dram_channels.exit390.i
  %shl.i.i394.i = shl nuw nsw i32 %49, 12
  %.fca.0.insert21.i.i395.i = insertvalue [1 x i32] poison, i32 %shl.i.i394.i, 0
  %call.i.i396.i = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert21.i.i395.i, [1 x i32] [i32 4096000]) #12
  %shl4.i.i400.i = shl nuw nsw i32 %conv84.i, 14
  %mul.i.i403.i = zext i32 %shl4.i.i400.i to i64
  %conv9.i.i407.i = zext i32 %112 to i64
  %mul10.i.i408.i = mul nuw nsw i64 %conv9.i.i407.i, %mul.i.i403.i
  %conv.i.i.i409.i = shl nuw nsw i64 %mul10.i.i408.i, 1
  %124 = and i64 %mul10.i.i408.i, 17590038560768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %124)
  %cmp169.i.i.i517.i = icmp eq i64 %124, 0
  br i1 %cmp169.i.i.i517.i, label %if.then173.i.i.i522.i, label %if.else179.i.i.i524.i, !prof !146

if.then173.i.i.i522.i:                            ; preds = %lor.lhs.false120.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv174.i.i.i519.i = trunc i64 %conv.i.i.i409.i to i32
  %div177.i.i.i520.i = udiv i32 %conv174.i.i.i519.i, %call.i.i396.i
  %conv178.i.i.i521.i = zext i32 %div177.i.i.i520.i to i64
  br label %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit534.i

if.else179.i.i.i524.i:                            ; preds = %lor.lhs.false120.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i.i.i410.i = and i64 %conv.i.i.i409.i, 35184372056064
  %125 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i.i396.i, i64 %shl.i.i.i410.i) #17, !srcloc !147
  %asmresult1.i.i.i.i523.i = extractvalue { i64, i64 } %125, 1
  br label %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit534.i

dce_v11_0_average_bandwidth_vs_available_bandwidth.exit534.i: ; preds = %if.else179.i.i.i524.i, %if.then173.i.i.i522.i
  %tmp.0.i.i.i525.i = phi i64 [ %conv178.i.i.i521.i, %if.then173.i.i.i522.i ], [ %asmresult1.i.i.i.i523.i, %if.else179.i.i.i524.i ]
  %add185.i.i.i526.i = add i64 %tmp.0.i.i.i525.i, 1
  %sum.shift.i.i527.i = lshr i64 %add185.i.i.i526.i, 13
  %shr1730.i.i528.i = trunc i64 %sum.shift.i.i527.i to i32
  %shr17.i.i529.i = and i32 %shr1730.i.i528.i, 1048575
  %call1.i530.i = call fastcc i32 @dce_v11_0_available_bandwidth(ptr noundef nonnull %wm_low.i) #12
  %div.i532.i = udiv i32 %call1.i530.i, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %shr17.i.i529.i, i32 %div.i532.i)
  %cmp.not.i533.not.i = icmp ugt i32 %shr17.i.i529.i, %div.i532.i
  br i1 %cmp.not.i533.not.i, label %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit534.i.if.then129.i_crit_edge, label %lor.lhs.false122.i

dce_v11_0_average_bandwidth_vs_available_bandwidth.exit534.i.if.then129.i_crit_edge: ; preds = %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit534.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129.i

lor.lhs.false122.i:                               ; preds = %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit534.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %112)
  %cmp.i538.i = icmp ugt i32 %112, 4096
  br i1 %cmp.i538.i, label %lor.lhs.false122.i.dce_v11_0_check_latency_hiding.exit553.i_crit_edge, label %if.else.i546.i

lor.lhs.false122.i.dce_v11_0_check_latency_hiding.exit553.i_crit_edge: ; preds = %lor.lhs.false122.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_check_latency_hiding.exit553.i

if.else.i546.i:                                   ; preds = %lor.lhs.false122.i
  call void @__sanitizer_cov_trace_pc() #14
  %div.i541.i = udiv i32 %retval.0.i, %conv84.i
  %add1.i543.i = add nuw nsw i32 %spec.store.select257.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i541.i, i32 %add1.i543.i)
  %cmp2.not.i544.i = icmp ugt i32 %div.i541.i, %add1.i543.i
  %..i545.i = select i1 %cmp2.not.i544.i, i32 2, i32 1
  br label %dce_v11_0_check_latency_hiding.exit553.i

dce_v11_0_check_latency_hiding.exit553.i:         ; preds = %if.else.i546.i, %lor.lhs.false122.i.dce_v11_0_check_latency_hiding.exit553.i_crit_edge
  %latency_tolerant_lines.0.i547.i = phi i32 [ 1, %lor.lhs.false122.i.dce_v11_0_check_latency_hiding.exit553.i_crit_edge ], [ %..i545.i, %if.else.i546.i ]
  %mul.i549.i = mul nuw nsw i32 %latency_tolerant_lines.0.i547.i, %49
  %add7.i550.i = add i32 %mul.i549.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call111.i, i32 %add7.i550.i)
  %cmp8.not.i552.not.i = icmp ugt i32 %call111.i, %add7.i550.i
  br i1 %cmp8.not.i552.not.i, label %dce_v11_0_check_latency_hiding.exit553.i.if.then129.i_crit_edge, label %lor.lhs.false124.i

dce_v11_0_check_latency_hiding.exit553.i.if.then129.i_crit_edge: ; preds = %dce_v11_0_check_latency_hiding.exit553.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129.i

lor.lhs.false124.i:                               ; preds = %dce_v11_0_check_latency_hiding.exit553.i
  %126 = ptrtoint ptr %disp_priority.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %disp_priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp127.i = icmp eq i32 %127, 2
  br i1 %cmp127.i, label %lor.lhs.false124.i.if.then129.i_crit_edge, label %lor.lhs.false124.i.if.end130.i_crit_edge

lor.lhs.false124.i.if.end130.i_crit_edge:         ; preds = %lor.lhs.false124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130.i

lor.lhs.false124.i.if.then129.i_crit_edge:        ; preds = %lor.lhs.false124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129.i

if.then129.i:                                     ; preds = %lor.lhs.false124.i.if.then129.i_crit_edge, %dce_v11_0_check_latency_hiding.exit553.i.if.then129.i_crit_edge, %dce_v11_0_average_bandwidth_vs_available_bandwidth.exit534.i.if.then129.i_crit_edge, %cik_get_number_of_dram_channels.exit390.i.if.then129.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #12
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then129.i, %lor.lhs.false124.i.if.end130.i_crit_edge
  %128 = ptrtoint ptr %crtc_hdisplay.i41 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %crtc_hdisplay.i41, align 4
  %conv132.i = zext i16 %129 to i32
  %add.i45 = add nsw i32 %retval.0.i, -1
  %sub133.i = add nsw i32 %add.i45, %conv132.i
  %div.i = udiv i32 %sub133.i, %conv132.i
  br label %dce_v11_0_program_watermarks.exit

dce_v11_0_program_watermarks.exit:                ; preds = %if.end130.i, %dce_v11_0_line_buffer_adjust.exit.dce_v11_0_program_watermarks.exit_crit_edge
  %latency_watermark_a.0.i = phi i32 [ %84, %if.end130.i ], [ 0, %dce_v11_0_line_buffer_adjust.exit.dce_v11_0_program_watermarks.exit_crit_edge ]
  %latency_watermark_b.0.i = phi i32 [ %123, %if.end130.i ], [ 0, %dce_v11_0_line_buffer_adjust.exit.dce_v11_0_program_watermarks.exit_crit_edge ]
  %lb_vblank_lead_lines.0.i = phi i32 [ %div.i, %if.end130.i ], [ 0, %dce_v11_0_line_buffer_adjust.exit.dce_v11_0_program_watermarks.exit_crit_edge ]
  %line_time.0.i = phi i32 [ %49, %if.end130.i ], [ 0, %dce_v11_0_line_buffer_adjust.exit.dce_v11_0_program_watermarks.exit_crit_edge ]
  %crtc_offset.i46 = getelementptr inbounds %struct.amdgpu_crtc, ptr %36, i32 0, i32 4
  %130 = ptrtoint ptr %crtc_offset.i46 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %crtc_offset.i46, align 8
  %add137.i = add i32 %131, 6962
  %call138.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add137.i, i32 noundef 0) #12
  %and139.i = and i32 %call138.i, -769
  %or.i47 = or i32 %and139.i, 256
  %132 = ptrtoint ptr %crtc_offset.i46 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %crtc_offset.i46, align 8
  %add141.i = add i32 %133, 6962
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add141.i, i32 noundef %or.i47, i32 noundef 0) #12
  %134 = ptrtoint ptr %crtc_offset.i46 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %crtc_offset.i46, align 8
  %add143.i = add i32 %135, 6963
  %call144.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add143.i, i32 noundef 0) #12
  %shl149.i = shl nuw i32 %line_time.0.i, 16
  %or151.i = or i32 %shl149.i, %latency_watermark_a.0.i
  %136 = ptrtoint ptr %crtc_offset.i46 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %crtc_offset.i46, align 8
  %add153.i = add i32 %137, 6963
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add153.i, i32 noundef %or151.i, i32 noundef 0) #12
  %or155.i = or i32 %and139.i, 512
  %138 = ptrtoint ptr %crtc_offset.i46 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %crtc_offset.i46, align 8
  %add157.i = add i32 %139, 6962
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add157.i, i32 noundef %or155.i, i32 noundef 0) #12
  %140 = ptrtoint ptr %crtc_offset.i46 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %crtc_offset.i46, align 8
  %add159.i = add i32 %141, 6963
  %call160.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add159.i, i32 noundef 0) #12
  %or168.i = or i32 %shl149.i, %latency_watermark_b.0.i
  %142 = ptrtoint ptr %crtc_offset.i46 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %crtc_offset.i46, align 8
  %add170.i = add i32 %143, 6963
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add170.i, i32 noundef %or168.i, i32 noundef 0) #12
  %144 = ptrtoint ptr %crtc_offset.i46 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %crtc_offset.i46, align 8
  %add172.i = add i32 %145, 6962
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add172.i, i32 noundef %call138.i, i32 noundef 0) #12
  %line_time173.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %36, i32 0, i32 35
  %146 = ptrtoint ptr %line_time173.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %line_time.0.i, ptr %line_time173.i, align 8
  %wm_high174.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %36, i32 0, i32 37
  %147 = ptrtoint ptr %wm_high174.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %latency_watermark_a.0.i, ptr %wm_high174.i, align 8
  %wm_low175.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %36, i32 0, i32 36
  %148 = ptrtoint ptr %wm_low175.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %latency_watermark_b.0.i, ptr %wm_low175.i, align 4
  %lb_vblank_lead_lines176.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %36, i32 0, i32 38
  %149 = ptrtoint ptr %lb_vblank_lead_lines176.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %lb_vblank_lead_lines.0.i, ptr %lb_vblank_lead_lines176.i, align 4
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wm_high.i) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wm_low.i) #12
  %inc20 = add nuw nsw i32 %i.153, 1
  %150 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %num_crtc, align 8
  %cmp6 = icmp slt i32 %inc20, %151
  br i1 %cmp6, label %dce_v11_0_program_watermarks.exit.for.body7_crit_edge, label %dce_v11_0_program_watermarks.exit.for.end21_crit_edge

dce_v11_0_program_watermarks.exit.for.end21_crit_edge: ; preds = %dce_v11_0_program_watermarks.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end21

dce_v11_0_program_watermarks.exit.for.body7_crit_edge: ; preds = %dce_v11_0_program_watermarks.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7

for.end21:                                        ; preds = %dce_v11_0_program_watermarks.exit.for.end21_crit_edge, %for.cond3.preheader.for.end21_crit_edge, %entry.for.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_vblank_get_counter(ptr noundef %adev, i32 noundef %crtc) #0 align 64 {
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
  br i1 %cmp1.not, label %if.else, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %crtc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 7078
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  br label %return

return:                                           ; preds = %if.else, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.else ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_set_backlight_level(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @amdgpu_atombios_encoder_get_backlight_level(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_v11_0_hpd_sense(ptr noundef %adev, i32 noundef %hpd) #0 align 64 {
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
  %add = add i32 %3, 6296
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
define internal void @dce_v11_0_hpd_set_polarity(ptr noundef %adev, i32 noundef %hpd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hpd.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 21
  %0 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_hpd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %hpd)
  %cmp.not.i = icmp ugt i32 %1, %hpd
  br i1 %cmp.not.i, label %if.end.i, label %entry.dce_v11_0_hpd_sense.exit_crit_edge

entry.dce_v11_0_hpd_sense.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_hpd_sense.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %hpd
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %3, 6296
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0) #12
  %and.i = shl i32 %call.i, 7
  %4 = and i32 %and.i, 256
  %5 = xor i32 %4, 256
  br label %dce_v11_0_hpd_sense.exit

dce_v11_0_hpd_sense.exit:                         ; preds = %if.end.i, %entry.dce_v11_0_hpd_sense.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.end.i ], [ 256, %entry.dce_v11_0_hpd_sense.exit_crit_edge ]
  %6 = ptrtoint ptr %num_hpd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_hpd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %hpd)
  %cmp.not = icmp ugt i32 %7, %hpd
  br i1 %cmp.not, label %if.end, label %dce_v11_0_hpd_sense.exit.cleanup_crit_edge

dce_v11_0_hpd_sense.exit.cleanup_crit_edge:       ; preds = %dce_v11_0_hpd_sense.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %dce_v11_0_hpd_sense.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %hpd
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, 6297
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call1, -257
  %tmp.0 = or i32 %and, %retval.0.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %tmp.0, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dce_v11_0_hpd_sense.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dce_v11_0_hpd_get_gpio_reg(ptr nocapture noundef readnone %adev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 18573
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v11_0_page_flip(ptr noundef %adev, i32 noundef %crtc_id, i64 noundef %crtc_base, i1 noundef zeroext %async) #0 align 64 {
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
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call, -17
  %shl = select i1 %async, i32 16, i32 0
  %or = or i32 %and, %shl
  %8 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_offset, align 8
  %add4 = add i32 %9, 6674
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add4, i32 noundef %or, i32 noundef 0) #12
  %10 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_offset, align 8
  %add6 = add i32 %11, 6662
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pitches, align 8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %format, align 8
  %16 = getelementptr inbounds %struct.drm_format_info, ptr %15, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 2
  %conv = zext i8 %18 to i32
  %div = udiv i32 %13, %conv
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add6, i32 noundef %div, i32 noundef 0) #12
  %19 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crtc_offset, align 8
  %add10 = add i32 %20, 6663
  %shr = lshr i64 %crtc_base, 32
  %conv12 = trunc i64 %shr to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add10, i32 noundef %conv12, i32 noundef 0) #12
  %21 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crtc_offset, align 8
  %add14 = add i32 %22, 6660
  %conv16 = trunc i64 %crtc_base to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add14, i32 noundef %conv16, i32 noundef 0) #12
  %23 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %crtc_offset, align 8
  %add18 = add i32 %24, 6660
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add18, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_crtc_get_scanoutpos(ptr noundef %adev, i32 noundef %crtc, ptr nocapture noundef writeonly %vbl, ptr nocapture noundef writeonly %position) #0 align 64 {
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
  %arrayidx = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %crtc
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
define internal void @dce_v11_0_encoder_add(ptr noundef %adev, i32 noundef %encoder_enum, i32 noundef %supported_device, i16 noundef zeroext %caps) #0 align 64 {
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
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.dce_v11_0_encoder_add, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end15.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.end15.sw.epilog_crit_edge ]
  %possible_crtcs25 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %possible_crtcs25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %possible_crtcs25, align 4
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %enc_priv, align 8
  %encoder_enum26 = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %encoder_enum26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %encoder_enum, ptr %encoder_enum26, align 8
  %and = and i32 %encoder_enum, 255
  %encoder_id = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %encoder_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %encoder_id, align 4
  %devices27 = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %devices27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %supported_device, ptr %devices27, align 8
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
  %caps28 = getelementptr inbounds %struct.amdgpu_encoder, ptr %call7.i.i, i32 0, i32 15
  %18 = ptrtoint ptr %caps28 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %caps, ptr %caps28, align 2
  %trunc = trunc i32 %encoder_enum to i8
  %19 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %trunc, label %sw.epilog.cleanup_crit_edge [
    i8 21, label %sw.epilog.sw.bb30_crit_edge
    i8 22, label %sw.epilog.sw.bb30_crit_edge137
    i8 20, label %sw.epilog.sw.bb32_crit_edge
    i8 30, label %sw.epilog.sw.bb32_crit_edge138
    i8 32, label %sw.epilog.sw.bb32_crit_edge139
    i8 33, label %sw.epilog.sw.bb32_crit_edge140
    i8 37, label %sw.epilog.sw.bb32_crit_edge141
    i8 8, label %sw.epilog.sw.bb54_crit_edge
    i8 9, label %sw.epilog.sw.bb54_crit_edge142
    i8 12, label %sw.epilog.sw.bb54_crit_edge143
    i8 13, label %sw.epilog.sw.bb54_crit_edge144
    i8 14, label %sw.epilog.sw.bb54_crit_edge145
    i8 16, label %sw.epilog.sw.bb54_crit_edge146
    i8 17, label %sw.epilog.sw.bb54_crit_edge147
    i8 35, label %sw.epilog.sw.bb54_crit_edge148
    i8 34, label %sw.epilog.sw.bb54_crit_edge149
  ]

sw.epilog.sw.bb54_crit_edge149:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb54

sw.epilog.sw.bb54_crit_edge148:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb54

sw.epilog.sw.bb54_crit_edge147:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb54

sw.epilog.sw.bb54_crit_edge146:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb54

sw.epilog.sw.bb54_crit_edge145:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb54

sw.epilog.sw.bb54_crit_edge144:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb54

sw.epilog.sw.bb54_crit_edge143:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb54

sw.epilog.sw.bb54_crit_edge142:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb54

sw.epilog.sw.bb54_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb54

sw.epilog.sw.bb32_crit_edge141:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb32

sw.epilog.sw.bb32_crit_edge140:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb32

sw.epilog.sw.bb32_crit_edge139:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb32

sw.epilog.sw.bb32_crit_edge138:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb32

sw.epilog.sw.bb32_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb32

sw.epilog.sw.bb30_crit_edge137:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb30

sw.epilog.sw.bb30_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb30

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb30:                                          ; preds = %sw.epilog.sw.bb30_crit_edge, %sw.epilog.sw.bb30_crit_edge137
  %call31 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dce_v11_0_encoder_funcs, i32 noundef 1, ptr noundef null) #12
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dce_v11_0_dac_helper_funcs, ptr %helper_private.i, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %sw.epilog.sw.bb32_crit_edge, %sw.epilog.sw.bb32_crit_edge138, %sw.epilog.sw.bb32_crit_edge139, %sw.epilog.sw.bb32_crit_edge140, %sw.epilog.sw.bb32_crit_edge141
  %and34 = and i32 %supported_device, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %rmx_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %rmx_type, align 8
  %call38 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dce_v11_0_encoder_funcs, i32 noundef 3, ptr noundef null) #12
  %call39 = tail call ptr @amdgpu_atombios_encoder_get_lcd_info(ptr noundef nonnull %call7.i.i) #12
  br label %if.end53

if.else:                                          ; preds = %sw.bb32
  %and42 = and i32 %supported_device, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else48, label %if.then44

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dce_v11_0_encoder_funcs, i32 noundef 1, ptr noundef null) #12
  %call46 = tail call ptr @amdgpu_atombios_encoder_get_dig_info(ptr noundef nonnull %call7.i.i) #12
  br label %if.end53

if.else48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dce_v11_0_encoder_funcs, i32 noundef 2, ptr noundef null) #12
  %call50 = tail call ptr @amdgpu_atombios_encoder_get_dig_info(ptr noundef nonnull %call7.i.i) #12
  br label %if.end53

if.end53:                                         ; preds = %if.else48, %if.then44, %if.then36
  %call46.sink = phi ptr [ %call46, %if.then44 ], [ %call50, %if.else48 ], [ %call39, %if.then36 ]
  %22 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call46.sink, ptr %enc_priv, align 8
  %helper_private.i128 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %23 = ptrtoint ptr %helper_private.i128 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dce_v11_0_dig_helper_funcs, ptr %helper_private.i128, align 4
  br label %cleanup

sw.bb54:                                          ; preds = %sw.epilog.sw.bb54_crit_edge, %sw.epilog.sw.bb54_crit_edge142, %sw.epilog.sw.bb54_crit_edge143, %sw.epilog.sw.bb54_crit_edge144, %sw.epilog.sw.bb54_crit_edge145, %sw.epilog.sw.bb54_crit_edge146, %sw.epilog.sw.bb54_crit_edge147, %sw.epilog.sw.bb54_crit_edge148, %sw.epilog.sw.bb54_crit_edge149
  %24 = ptrtoint ptr %is_ext_encoder to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %is_ext_encoder, align 8
  %and57 = and i32 %supported_device, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %and63 = and i32 %supported_device, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %. = select i1 %tobool64.not, i32 2, i32 1
  %.sink133 = select i1 %tobool58.not, i32 %., i32 3
  %call66 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dce_v11_0_encoder_funcs, i32 noundef %.sink133, ptr noundef null) #12
  %helper_private.i129 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %25 = ptrtoint ptr %helper_private.i129 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dce_v11_0_ext_helper_funcs, ptr %helper_private.i129, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb54, %if.end53, %sw.bb30, %sw.epilog.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_connector_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_display_update_priority(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_get_mclk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_get_sclk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dce_v11_0_latency_watermark(ptr nocapture noundef readonly %wm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dce_v11_0_available_bandwidth(ptr noundef %wm)
  %div = udiv i32 4096000, %call
  %div1 = udiv i32 512000, %call
  %disp_clk = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 3
  %0 = ptrtoint ptr %disp_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disp_clk, align 4
  %div2 = udiv i32 40000000, %1
  %num_heads = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 9
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
  %vsc = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 8
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
  %vtaps = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 12
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
  %vtaps14 = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 12
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
  %interlaced = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 7
  %10 = ptrtoint ptr %interlaced to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %interlaced, align 4, !range !144
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
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !146

if.then173.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %conv174.i = trunc i64 %shl.i to i32
  %div177.i = udiv i32 %conv174.i, %shl23
  %conv178.i = zext i32 %div177.i to i64
  br label %dfixed_div.exit

if.else179.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl23, i64 %shl.i) #17, !srcloc !147
  %asmresult1.i.i = extractvalue { i64, i64 } %12, 1
  br label %dfixed_div.exit

dfixed_div.exit:                                  ; preds = %if.else179.i, %if.then173.i
  %tmp.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %add185.i = add i64 %tmp.0.i, 1
  %conv27 = zext i32 %1 to i64
  %mul28 = mul nuw nsw i64 %conv27, 12288
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3759845925851628355, i64 %mul28) #17, !srcloc !148
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 3759845925851628355, i64 %mul28, i64 %13, i32 0) #17, !srcloc !149
  %asmresult10.i.i.i = extractvalue { i64, i32 } %14, 0
  %div158.i.i246 = lshr i64 %asmresult10.i.i.i, 9
  %conv31 = trunc i64 %div158.i.i246 to i32
  %sum.shift = lshr i64 %add185.i, 13
  %shr247 = trunc i64 %sum.shift to i32
  %shr = and i32 %shr247, 1048575
  %15 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %conv31)
  %bytes_per_pixel = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 10
  %16 = ptrtoint ptr %bytes_per_pixel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes_per_pixel, align 4
  %mul36 = mul i32 %17, %1
  %div37 = udiv i32 %mul36, 1000
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %div37)
  %src_width = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 4
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
  br i1 %cmp169.i233, label %if.then173.i238, label %if.else179.i240, !prof !146

if.then173.i238:                                  ; preds = %dfixed_div.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv174.i235 = trunc i64 %shl.i126 to i32
  %div177.i236 = udiv i32 %conv174.i235, %call52
  %conv178.i237 = zext i32 %div177.i236 to i64
  br label %dfixed_div.exit245

if.else179.i240:                                  ; preds = %dfixed_div.exit
  call void @__sanitizer_cov_trace_pc() #14
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call52, i64 %shl.i126) #17, !srcloc !147
  %asmresult1.i.i239 = extractvalue { i64, i64 } %21, 1
  br label %dfixed_div.exit245

dfixed_div.exit245:                               ; preds = %if.else179.i240, %if.then173.i238
  %tmp.0.i241 = phi i64 [ %conv178.i237, %if.then173.i238 ], [ %asmresult1.i.i239, %if.else179.i240 ]
  %add185.i242 = add i64 %tmp.0.i241, 1
  %sum.shift248 = lshr i64 %add185.i242, 13
  %shr56249 = trunc i64 %sum.shift248 to i32
  %shr56 = and i32 %shr56249, 1048575
  %active_time = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 5
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
define internal fastcc zeroext i1 @dce_v11_0_average_bandwidth_vs_dram_bandwidth_for_display(ptr nocapture noundef readonly %wm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_time.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 5
  %0 = ptrtoint ptr %active_time.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_time.i, align 4
  %blank_time.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 6
  %2 = ptrtoint ptr %blank_time.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blank_time.i, align 4
  %add.i = add i32 %3, %1
  %shl.i = shl i32 %add.i, 12
  %.fca.0.insert21.i = insertvalue [1 x i32] poison, i32 %shl.i, 0
  %call.i = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert21.i, [1 x i32] [i32 4096000]) #12
  %bytes_per_pixel.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 10
  %4 = ptrtoint ptr %bytes_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytes_per_pixel.i, align 4
  %shl2.i = shl i32 %5, 12
  %src_width3.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 4
  %6 = ptrtoint ptr %src_width3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_width3.i, align 4
  %shl4.i = shl i32 %7, 12
  %conv.i = zext i32 %shl4.i to i64
  %conv5.i = zext i32 %shl2.i to i64
  %mul.i = mul nuw i64 %conv.i, %conv5.i
  %shr.i = lshr exact i64 %mul.i, 12
  %conv8.i = and i64 %shr.i, 4294963200
  %vsc.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 8
  %8 = ptrtoint ptr %vsc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsc.i, align 4
  %conv9.i = zext i32 %9 to i64
  %mul10.i = mul nuw i64 %conv8.i, %conv9.i
  %conv.i.i = shl i64 %mul10.i, 1
  %10 = and i64 %mul10.i, 17590038560768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp169.i.i = icmp eq i64 %10, 0
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !146

if.then173.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv174.i.i = trunc i64 %conv.i.i to i32
  %div177.i.i = udiv i32 %conv174.i.i, %call.i
  %conv178.i.i = zext i32 %div177.i.i to i64
  br label %dce_v11_0_average_bandwidth.exit

if.else179.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i.i = and i64 %conv.i.i, 35184372080640
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i, i64 %shl.i.i) #17, !srcloc !147
  %asmresult1.i.i.i = extractvalue { i64, i64 } %11, 1
  br label %dce_v11_0_average_bandwidth.exit

dce_v11_0_average_bandwidth.exit:                 ; preds = %if.else179.i.i, %if.then173.i.i
  %tmp.0.i.i = phi i64 [ %conv178.i.i, %if.then173.i.i ], [ %asmresult1.i.i.i, %if.else179.i.i ]
  %add185.i.i = add i64 %tmp.0.i.i, 1
  %sum.shift.i = lshr i64 %add185.i.i, 13
  %shr1730.i = trunc i64 %sum.shift.i to i32
  %shr17.i = and i32 %shr1730.i, 1048575
  %yclk1.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 1
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
  %16 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 12288, i64 3689348814741910323) #17, !srcloc !150
  %17 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 12288, i64 %16) #17, !srcloc !151
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
  %num_heads = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 9
  %18 = ptrtoint ptr %num_heads to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_heads, align 4
  %div = udiv i32 %shr17.i12, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %shr17.i, i32 %div)
  %cmp.not = icmp ule i32 %shr17.i, %div
  ret i1 %cmp.not
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dce_v11_0_available_bandwidth(ptr nocapture noundef readonly %wm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %yclk1.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 1
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
  %4 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 28672, i64 3689348814741910323) #17, !srcloc !150
  %5 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 28672, i64 %4) #17, !srcloc !151
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
  %sclk1.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 2
  %6 = ptrtoint ptr %sclk1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sclk1.i, align 4
  %shl.i15 = shl i32 %7, 12
  %.fca.0.insert21.i = insertvalue [1 x i32] poison, i32 %shl.i15, 0
  %call.i16 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert21.i, [1 x i32] [i32 4096000]) #12
  %8 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 32768, i64 3689348814741910323) #17, !srcloc !150
  %9 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 32768, i64 %8) #17, !srcloc !151
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
  %disp_clk1.i = getelementptr inbounds %struct.dce10_wm_params, ptr %wm, i32 0, i32 3
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
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !146

if.then173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv174 = trunc i64 %shl to i32
  %div177 = udiv i32 %conv174, %B.coerce.fca.0.extract
  %conv178 = zext i32 %div177 to i64
  br label %if.end183

if.else179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %B.coerce.fca.0.extract, i64 %shl) #17, !srcloc !147
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %tmp.0 = phi i64 [ %conv178, %if.then173 ], [ %asmresult1.i, %if.else179 ]
  %add185 = add i64 %tmp.0, 1
  %div186268 = lshr i64 %add185, 1
  %conv188 = trunc i64 %div186268 to i32
  ret i32 %conv188
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
define internal void @dce_v11_0_encoder_destroy(ptr noundef %encoder) #0 align 64 {
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
define internal void @dce_v11_0_encoder_prepare(ptr noundef %encoder) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %7, label %sw.default.i [
    i32 30, label %sw.bb.i
    i32 32, label %sw.bb1.i
    i32 33, label %sw.bb6.i
    i32 37, label %if.then5.dce_v11_0_pick_dig_encoder.exit_crit_edge
  ]

if.then5.dce_v11_0_pick_dig_encoder.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pick_dig_encoder.exit

sw.bb.i:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %5, align 4, !range !144
  %11 = zext i8 %10 to i32
  br label %dce_v11_0_pick_dig_encoder.exit

sw.bb1.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %5, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  %.18.i = select i1 %tobool3.not.i, i32 2, i32 3
  br label %dce_v11_0_pick_dig_encoder.exit

sw.bb6.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %5, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not.i = icmp eq i8 %15, 0
  %.19.i = select i1 %tobool8.not.i, i32 4, i32 5
  br label %dce_v11_0_pick_dig_encoder.exit

sw.default.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %7) #12
  br label %dce_v11_0_pick_dig_encoder.exit

dce_v11_0_pick_dig_encoder.exit:                  ; preds = %sw.default.i, %sw.bb6.i, %sw.bb1.i, %sw.bb.i, %if.then5.dce_v11_0_pick_dig_encoder.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ %11, %sw.bb.i ], [ %.18.i, %sw.bb1.i ], [ %.19.i, %sw.bb6.i ], [ 6, %if.then5.dce_v11_0_pick_dig_encoder.exit_crit_edge ]
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
  br i1 %tobool9.not, label %dce_v11_0_pick_dig_encoder.exit.if.end14_crit_edge, label %if.then10

dce_v11_0_pick_dig_encoder.exit.if.end14_crit_edge: ; preds = %dce_v11_0_pick_dig_encoder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then10:                                        ; preds = %dce_v11_0_pick_dig_encoder.exit
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

if.end14:                                         ; preds = %if.then10, %dce_v11_0_pick_dig_encoder.exit.if.end14_crit_edge, %if.then.if.end14_crit_edge, %lor.lhs.false.if.end14_crit_edge
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
  %23 = load i8, ptr %cd_valid, align 1, !range !144
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
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %28 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crtc.i, align 4
  %call5.i = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #12
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end28.if.end.i_crit_edge, label %if.then.i

if.end28.if.end.i_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i = tail call i32 @amdgpu_connector_get_monitor_bpc(ptr noundef nonnull %call5.i) #12
  %dither11.i = getelementptr inbounds %struct.amdgpu_connector, ptr %call5.i, i32 0, i32 15
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
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end.i.dce_v11_0_program_fmt.exit_crit_edge

if.end.i.dce_v11_0_program_fmt.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_program_fmt.exit

if.end14.i:                                       ; preds = %if.end.i
  %encoder_id.i45 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %34 = ptrtoint ptr %encoder_id.i45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %encoder_id.i45, align 4
  %.off.i = add i32 %35, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end14.i.dce_v11_0_program_fmt.exit_crit_edge, label %if.end18.i

if.end14.i.dce_v11_0_program_fmt.exit_crit_edge:  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_program_fmt.exit

if.end18.i:                                       ; preds = %if.end14.i
  %36 = tail call i32 @llvm.fshl.i32(i32 %bpc.0.i, i32 %bpc.0.i, i32 31) #12
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %36, label %if.end18.i.sw.epilog.i_crit_edge [
    i32 0, label %if.end18.i.dce_v11_0_program_fmt.exit_crit_edge
    i32 3, label %sw.bb.i46
    i32 4, label %sw.bb36.i
    i32 5, label %sw.bb55.i
  ]

if.end18.i.dce_v11_0_program_fmt.exit_crit_edge:  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_program_fmt.exit

if.end18.i.sw.epilog.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i46:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dither.0.i)
  %cmp22.i = icmp eq i32 %dither.0.i, 1
  %..i = select i1 %cmp22.i, i32 41216, i32 1
  br label %sw.epilog.i

sw.bb36.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dither.0.i)
  %cmp37.i = icmp eq i32 %dither.0.i, 1
  %.111.i = select i1 %cmp37.i, i32 59648, i32 17
  br label %sw.epilog.i

sw.bb55.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dither.0.i)
  %cmp56.i = icmp eq i32 %dither.0.i, 1
  %.112.i = select i1 %cmp56.i, i32 61696, i32 33
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb55.i, %sw.bb36.i, %sw.bb.i46, %if.end18.i.sw.epilog.i_crit_edge
  %tmp6.0.i = phi i32 [ 0, %if.end18.i.sw.epilog.i_crit_edge ], [ %..i, %sw.bb.i46 ], [ %.111.i, %sw.bb36.i ], [ %.112.i, %sw.bb55.i ]
  %crtc_offset.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %29, i32 0, i32 4
  %38 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %crtc_offset.i, align 8
  %add.i = add i32 %39, 7154
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add.i, i32 noundef %tmp6.0.i, i32 noundef 0) #12
  br label %dce_v11_0_program_fmt.exit

dce_v11_0_program_fmt.exit:                       ; preds = %sw.epilog.i, %if.end18.i.dce_v11_0_program_fmt.exit_crit_edge, %if.end14.i.dce_v11_0_program_fmt.exit_crit_edge, %if.end.i.dce_v11_0_program_fmt.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v11_0_encoder_commit(ptr noundef %encoder) #0 align 64 {
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
define internal void @dce_v11_0_encoder_mode_set(ptr noundef %encoder, ptr nocapture noundef readonly %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  %iter.i441.i = alloca %struct.drm_connector_list_iter, align 4
  %iter.i416.i = alloca %struct.drm_connector_list_iter, align 4
  %sads.i.i = alloca ptr, align 4
  %iter.i.i = alloca %struct.drm_connector_list_iter, align 4
  %sadb.i.i = alloca ptr, align 4
  %acr.i.i = alloca %struct.amdgpu_afmt_acr, align 4
  %buffer.i = alloca [17 x i8], align 1
  %frame.i = alloca %struct.hdmi_avi_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
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
  %crtc_offset.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %crtc_offset.i, align 8
  %add.i = add i32 %8, 6848
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add.i, i32 noundef 0) #12
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and5.i = and i32 %call3.i, -9
  %and.i = lshr i32 %10, 1
  %11 = and i32 %and.i, 8
  %tmp2.0.i = or i32 %11, %and5.i
  %12 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_offset.i, align 8
  %add8.i = add i32 %13, 6848
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add8.i, i32 noundef %tmp2.0.i, i32 noundef 0) #12
  %call = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %enc_priv.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %14 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.dce_v11_0_afmt_enable.exit_crit_edge, label %lor.lhs.false.i

if.then.dce_v11_0_afmt_enable.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_afmt_enable.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %afmt.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %afmt.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dce_v11_0_afmt_enable.exitthread-pre-split_crit_edge, label %if.end.i

lor.lhs.false.i.dce_v11_0_afmt_enable.exitthread-pre-split_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_afmt_enable.exitthread-pre-split

if.end.i:                                         ; preds = %lor.lhs.false.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not.i = icmp eq i8 %19, 0
  br i1 %tobool5.not.i, label %if.end24.i, label %if.end.i.dce_v11_0_afmt_enable.exitthread-pre-split_crit_edge

if.end.i.dce_v11_0_afmt_enable.exitthread-pre-split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_afmt_enable.exitthread-pre-split

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %17, align 4
  %21 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %afmt.i, align 4
  %offset.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset.i, align 4
  %encoder_id.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %25 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %encoder_id.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %24, i32 noundef %26) #12
  br label %dce_v11_0_afmt_enable.exitthread-pre-split

dce_v11_0_afmt_enable.exitthread-pre-split:       ; preds = %if.end24.i, %if.end.i.dce_v11_0_afmt_enable.exitthread-pre-split_crit_edge, %lor.lhs.false.i.dce_v11_0_afmt_enable.exitthread-pre-split_crit_edge
  %27 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load ptr, ptr %enc_priv.i, align 4
  br label %dce_v11_0_afmt_enable.exit

dce_v11_0_afmt_enable.exit:                       ; preds = %dce_v11_0_afmt_enable.exitthread-pre-split, %if.then.dce_v11_0_afmt_enable.exit_crit_edge
  %28 = phi ptr [ %.pr, %dce_v11_0_afmt_enable.exitthread-pre-split ], [ null, %if.then.dce_v11_0_afmt_enable.exit_crit_edge ]
  %29 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %30, i32 -8
  %call2.i = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #12
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer.i) #12
  %31 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 1
  %32 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 3
  %33 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 4
  %34 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 5
  %35 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 6
  %36 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 7
  %37 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 8
  %38 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 9
  %39 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 10
  %40 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 11
  %41 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 12
  %42 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 13
  %43 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 14
  %44 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 15
  %45 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 16
  %46 = call ptr @memset(ptr %buffer.i, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i) #12
  %47 = call ptr @memset(ptr %frame.i, i32 255, i32 68)
  %tobool.not.i10 = icmp eq ptr %28, null
  br i1 %tobool.not.i10, label %dce_v11_0_afmt_enable.exit.dce_v11_0_afmt_setmode.exit_crit_edge, label %lor.lhs.false.i12

dce_v11_0_afmt_enable.exit.dce_v11_0_afmt_setmode.exit_crit_edge: ; preds = %dce_v11_0_afmt_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_afmt_setmode.exit

lor.lhs.false.i12:                                ; preds = %dce_v11_0_afmt_enable.exit
  %afmt.i11 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %28, i32 0, i32 11
  %48 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %afmt.i11, align 4
  %tobool4.not.i = icmp eq ptr %49, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i12.dce_v11_0_afmt_setmode.exit_crit_edge, label %if.end.i13

lor.lhs.false.i12.dce_v11_0_afmt_setmode.exit_crit_edge: ; preds = %lor.lhs.false.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_afmt_setmode.exit

if.end.i13:                                       ; preds = %lor.lhs.false.i12
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool6.not.i = icmp eq i8 %51, 0
  br i1 %tobool6.not.i, label %if.end.i13.dce_v11_0_afmt_setmode.exit_crit_edge, label %if.end8.i

if.end.i13.dce_v11_0_afmt_setmode.exit_crit_edge: ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_afmt_setmode.exit

if.end8.i:                                        ; preds = %if.end.i13
  %52 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %crtc, align 4
  %tobool9.not.i = icmp eq ptr %53, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end16.i_crit_edge, label %if.then10.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %bpc15.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %53, i32 0, i32 29
  %54 = ptrtoint ptr %bpc15.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bpc15.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end16.i_crit_edge
  %bpc.0.i = phi i32 [ %55, %if.then10.i ], [ 8, %if.end8.i.if.end16.i_crit_edge ]
  %num_pins.i.i.i = getelementptr i8, ptr %30, i32 22396
  %56 = ptrtoint ptr %num_pins.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_pins.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp23.i.i.i = icmp sgt i32 %57, 0
  br i1 %cmp23.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end16.i.for.end.i.i_crit_edge

if.end16.i.for.end.i.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end16.i
  %audio_endpt_rreg.i.i.i = getelementptr i8, ptr %30, i32 3300
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.024.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %offset3.i.i.i = getelementptr %struct.amdgpu_device, ptr %add.ptr.i.i8, i32 0, i32 79, i32 19, i32 1, i32 %i.024.i.i.i, i32 5
  %58 = ptrtoint ptr %offset3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset3.i.i.i, align 4
  %60 = ptrtoint ptr %audio_endpt_rreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %audio_endpt_rreg.i.i.i, align 4
  %call.i.i.i = tail call i32 %61(ptr noundef %add.ptr.i.i8, i32 noundef %59, i32 noundef 86) #12
  %shr.mask.i.i.i = and i32 %call.i.i.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i.i.i)
  %cmp4.i.i.i = icmp ne i32 %shr.mask.i.i.i, 1073741824
  %spec.select.i.i.i = zext i1 %cmp4.i.i.i to i8
  %62 = getelementptr %struct.amdgpu_device, ptr %add.ptr.i.i8, i32 0, i32 79, i32 19, i32 1, i32 %i.024.i.i.i, i32 6
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %spec.select.i.i.i, ptr %62, align 4
  %inc.i.i.i = add nuw nsw i32 %i.024.i.i.i, 1
  %64 = ptrtoint ptr %num_pins.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_pins.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %65
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %dce_v11_0_audio_get_connected_pins.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

dce_v11_0_audio_get_connected_pins.exit.i.i:      ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp14.i.i = icmp sgt i32 %65, 0
  br i1 %cmp14.i.i, label %dce_v11_0_audio_get_connected_pins.exit.i.i.for.body.i.i_crit_edge, label %dce_v11_0_audio_get_connected_pins.exit.i.i.for.end.i.i_crit_edge

dce_v11_0_audio_get_connected_pins.exit.i.i.for.end.i.i_crit_edge: ; preds = %dce_v11_0_audio_get_connected_pins.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

dce_v11_0_audio_get_connected_pins.exit.i.i.for.body.i.i_crit_edge: ; preds = %dce_v11_0_audio_get_connected_pins.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %dce_v11_0_audio_get_connected_pins.exit.i.i.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %dce_v11_0_audio_get_connected_pins.exit.i.i.for.body.i.i_crit_edge ]
  %connected.i.i = getelementptr %struct.amdgpu_device, ptr %add.ptr.i.i8, i32 0, i32 79, i32 19, i32 1, i32 %i.015.i.i, i32 6
  %66 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %connected.i.i, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %add.ptr.i.i8, i32 0, i32 79, i32 19, i32 1, i32 %i.015.i.i
  br label %dce_v11_0_audio_get_pin.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %65
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %dce_v11_0_audio_get_connected_pins.exit.i.i.for.end.i.i_crit_edge, %if.end16.i.for.end.i.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #12
  br label %dce_v11_0_audio_get_pin.exit.i

dce_v11_0_audio_get_pin.exit.i:                   ; preds = %for.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %if.then.i.i ], [ null, %for.end.i.i ]
  %68 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %afmt.i11, align 4
  %pin.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %pin.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %retval.0.i.i, ptr %pin.i, align 4
  %71 = load ptr, ptr %afmt.i11, align 4
  %pin20.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %pin20.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pin20.i, align 4
  %tobool.not.i385.i = icmp eq ptr %73, null
  br i1 %tobool.not.i385.i, label %dce_v11_0_audio_get_pin.exit.i.dce_v11_0_audio_enable.exit.i_crit_edge, label %if.end.i.i

dce_v11_0_audio_get_pin.exit.i.dce_v11_0_audio_enable.exit.i_crit_edge: ; preds = %dce_v11_0_audio_get_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_enable.exit.i

if.end.i.i:                                       ; preds = %dce_v11_0_audio_get_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %audio_endpt_wreg.i.i = getelementptr i8, ptr %30, i32 3304
  %74 = ptrtoint ptr %audio_endpt_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %audio_endpt_wreg.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %73, i32 0, i32 5
  %76 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offset.i.i, align 4
  tail call void %75(ptr noundef %add.ptr.i.i8, i32 noundef %77, i32 noundef 84, i32 noundef 0) #12
  br label %dce_v11_0_audio_enable.exit.i

dce_v11_0_audio_enable.exit.i:                    ; preds = %if.end.i.i, %dce_v11_0_audio_get_pin.exit.i.dce_v11_0_audio_enable.exit.i_crit_edge
  %78 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %adjusted_mode, align 4
  %80 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %81, i32 -8
  %82 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %enc_priv.i, align 4
  %84 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %crtc, align 4
  %tobool.not.i386.i = icmp eq ptr %83, null
  br i1 %tobool.not.i386.i, label %dce_v11_0_audio_enable.exit.i.dce_v11_0_audio_set_dto.exit.i_crit_edge, label %lor.lhs.false.i.i

dce_v11_0_audio_enable.exit.i.dce_v11_0_audio_set_dto.exit.i_crit_edge: ; preds = %dce_v11_0_audio_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_set_dto.exit.i

lor.lhs.false.i.i:                                ; preds = %dce_v11_0_audio_enable.exit.i
  %afmt.i.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %83, i32 0, i32 11
  %86 = ptrtoint ptr %afmt.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %afmt.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %87, null
  br i1 %tobool6.not.i.i, label %lor.lhs.false.i.i.dce_v11_0_audio_set_dto.exit.i_crit_edge, label %if.end.i387.i

lor.lhs.false.i.i.dce_v11_0_audio_set_dto.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_set_dto.exit.i

if.end.i387.i:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i.i, i32 noundef 363, i32 noundef 0) #12
  %and.i.i = and i32 %call7.i.i, -8
  %crtc_id.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %crtc_id.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %crtc_id.i.i, align 8
  %and8.i.i = and i32 %89, 7
  %or.i.i = or i32 %and8.i.i, %and.i.i
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i.i, i32 noundef 363, i32 noundef %or.i.i, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i.i, i32 noundef 364, i32 noundef 24000, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i.i, i32 noundef 365, i32 noundef %79, i32 noundef 0) #12
  br label %dce_v11_0_audio_set_dto.exit.i

dce_v11_0_audio_set_dto.exit.i:                   ; preds = %if.end.i387.i, %lor.lhs.false.i.i.dce_v11_0_audio_set_dto.exit.i_crit_edge, %dce_v11_0_audio_enable.exit.i.dce_v11_0_audio_set_dto.exit.i_crit_edge
  %90 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %afmt.i11, align 4
  %offset.i14 = getelementptr inbounds %struct.amdgpu_afmt, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %offset.i14 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %offset.i14, align 4
  %add.i15 = add i32 %93, 18957
  %call22.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add.i15, i32 noundef 0) #12
  %or.i = or i32 %call22.i, 1
  %94 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %afmt.i11, align 4
  %offset24.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %offset24.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %offset24.i, align 4
  %add25.i = add i32 %97, 18957
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add25.i, i32 noundef %or.i, i32 noundef 0) #12
  %98 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %afmt.i11, align 4
  %offset27.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %offset27.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %offset27.i, align 4
  %add28.i = add i32 %101, 19002
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add28.i, i32 noundef 4096, i32 noundef 0) #12
  %102 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %afmt.i11, align 4
  %offset30.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %offset30.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %offset30.i, align 4
  %add31.i = add i32 %105, 18953
  %call32.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add31.i, i32 noundef 0) #12
  %106 = tail call i32 @llvm.fshl.i32(i32 %bpc.0.i, i32 %bpc.0.i, i32 31) #12
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %106, label %sw.default.i [
    i32 6, label %sw.bb43.i
    i32 5, label %sw.bb37.i
  ]

sw.default.i:                                     ; preds = %dce_v11_0_audio_set_dto.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %and35.i = and i32 %call32.i, -822083585
  %name.i = getelementptr inbounds %struct.drm_connector, ptr %call2.i, i32 0, i32 7
  %108 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef %109, i32 noundef %bpc.0.i) #12
  br label %sw.epilog.i

sw.bb37.i:                                        ; preds = %dce_v11_0_audio_set_dto.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %or39.i = and i32 %call32.i, -822083585
  %or41.i = or i32 %or39.i, 285212672
  %name42.i = getelementptr inbounds %struct.drm_connector, ptr %call2.i, i32 0, i32 7
  %110 = ptrtoint ptr %name42.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name42.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef %111) #12
  br label %sw.epilog.i

sw.bb43.i:                                        ; preds = %dce_v11_0_audio_set_dto.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %or45.i = and i32 %call32.i, -822083585
  %or47.i = or i32 %or45.i, 553648128
  %name48.i = getelementptr inbounds %struct.drm_connector, ptr %call2.i, i32 0, i32 7
  %112 = ptrtoint ptr %name48.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name48.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef %113) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb43.i, %sw.bb37.i, %sw.default.i
  %tmp3.0.i = phi i32 [ %and35.i, %sw.default.i ], [ %or41.i, %sw.bb37.i ], [ %or47.i, %sw.bb43.i ]
  %114 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %afmt.i11, align 4
  %offset50.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %offset50.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %offset50.i, align 4
  %add51.i = add i32 %117, 18953
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add51.i, i32 noundef %tmp3.0.i, i32 noundef 0) #12
  %118 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %afmt.i11, align 4
  %offset53.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %offset53.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %offset53.i, align 4
  %add54.i = add i32 %121, 18957
  %call55.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add54.i, i32 noundef 0) #12
  %or61.i = or i32 %call55.i, 49
  %122 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %afmt.i11, align 4
  %offset63.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %offset63.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %offset63.i, align 4
  %add64.i = add i32 %125, 18957
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add64.i, i32 noundef %or61.i, i32 noundef 0) #12
  %126 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %afmt.i11, align 4
  %offset66.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %offset66.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %offset66.i, align 4
  %add67.i = add i32 %129, 18958
  %call68.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add67.i, i32 noundef 0) #12
  %or72.i = or i32 %call68.i, 48
  %130 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %afmt.i11, align 4
  %offset74.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %offset74.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %offset74.i, align 4
  %add75.i = add i32 %133, 18958
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add75.i, i32 noundef %or72.i, i32 noundef 0) #12
  %134 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %afmt.i11, align 4
  %offset77.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %offset77.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %offset77.i, align 4
  %add78.i = add i32 %137, 19012
  %call79.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add78.i, i32 noundef 0) #12
  %or81.i = or i32 %call79.i, 128
  %138 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %afmt.i11, align 4
  %offset83.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %offset83.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %offset83.i, align 4
  %add84.i = add i32 %141, 19012
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add84.i, i32 noundef %or81.i, i32 noundef 0) #12
  %142 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %afmt.i11, align 4
  %offset86.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %offset86.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %offset86.i, align 4
  %add87.i = add i32 %145, 18959
  %call88.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add87.i, i32 noundef 0) #12
  %and89.i = and i32 %call88.i, -16129
  %or90.i = or i32 %and89.i, 512
  %146 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %afmt.i11, align 4
  %offset92.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %offset92.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %offset92.i, align 4
  %add93.i = add i32 %149, 18959
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add93.i, i32 noundef %or90.i, i32 noundef 0) #12
  %150 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %afmt.i11, align 4
  %offset95.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %offset95.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %offset95.i, align 4
  %add96.i = add i32 %153, 18963
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add96.i, i32 noundef 0, i32 noundef 0) #12
  %154 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %afmt.i11, align 4
  %offset98.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %offset98.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %offset98.i, align 4
  %add99.i = add i32 %157, 18955
  %call100.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add99.i, i32 noundef 0) #12
  %and101.i = and i32 %call100.i, -2031665
  %or104.i = or i32 %and101.i, 196624
  %158 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %afmt.i11, align 4
  %offset106.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %offset106.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %offset106.i, align 4
  %add107.i = add i32 %161, 18955
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add107.i, i32 noundef %or104.i, i32 noundef 0) #12
  %162 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %afmt.i11, align 4
  %offset109.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %offset109.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %offset109.i, align 4
  %add110.i = add i32 %165, 19010
  %call111.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add110.i, i32 noundef 0) #12
  %or113.i = or i32 %call111.i, 67108864
  %166 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %afmt.i11, align 4
  %offset115.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %offset115.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %offset115.i, align 4
  %add116.i = add i32 %169, 19010
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add116.i, i32 noundef %or113.i, i32 noundef 0) #12
  %170 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %afmt.i11, align 4
  %offset118.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %offset118.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %offset118.i, align 4
  %add119.i = add i32 %173, 18956
  %call120.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add119.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bpc.0.i)
  %cmp.i = icmp sgt i32 %bpc.0.i, 8
  %and122.i = and i32 %call120.i, -4353
  %tmp3.1.i = select i1 %cmp.i, i32 4096, i32 4352
  %or128.i = or i32 %and122.i, %tmp3.1.i
  %174 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %afmt.i11, align 4
  %offset130.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %offset130.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %offset130.i, align 4
  %add131.i = add i32 %177, 18956
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add131.i, i32 noundef %or128.i, i32 noundef 0) #12
  %178 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %adjusted_mode, align 4
  %180 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i388.i = getelementptr i8, ptr %181, i32 -8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %acr.i.i) #12
  %182 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 1
  %183 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 2
  %184 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 3
  %185 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 4
  %186 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 5
  %187 = getelementptr inbounds %struct.amdgpu_afmt_acr, ptr %acr.i.i, i32 0, i32 6
  %188 = call ptr @memset(ptr %acr.i.i, i32 255, i32 28)
  call void @amdgpu_afmt_acr(ptr nonnull sret(%struct.amdgpu_afmt_acr) align 4 %acr.i.i, i32 noundef %179) #12
  %189 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %enc_priv.i, align 4
  %afmt.i390.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %190, i32 0, i32 11
  %191 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %afmt.i390.i, align 4
  %offset.i391.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %offset.i391.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %offset.i391.i, align 4
  %add.i.i = add i32 %194, 18990
  %call3.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add.i.i, i32 noundef 0) #12
  %and.i392.i = and i32 %call3.i.i, 4095
  %195 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %183, align 4
  %shl.i.i = shl i32 %196, 12
  %or.i393.i = or i32 %shl.i.i, %and.i392.i
  %197 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %afmt.i390.i, align 4
  %offset6.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %offset6.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %offset6.i.i, align 4
  %add7.i.i = add i32 %200, 18990
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add7.i.i, i32 noundef %or.i393.i, i32 noundef 0) #12
  %201 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %afmt.i390.i, align 4
  %offset9.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %offset9.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %offset9.i.i, align 4
  %add10.i.i = add i32 %204, 18991
  %call11.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add10.i.i, i32 noundef 0) #12
  %and12.i.i = and i32 %call11.i.i, -1048576
  %205 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %182, align 4
  %and14.i.i = and i32 %206, 1048575
  %or15.i.i = or i32 %and14.i.i, %and12.i.i
  %207 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %afmt.i390.i, align 4
  %offset17.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %offset17.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %offset17.i.i, align 4
  %add18.i.i = add i32 %210, 18991
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add18.i.i, i32 noundef %or15.i.i, i32 noundef 0) #12
  %211 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %afmt.i390.i, align 4
  %offset20.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %offset20.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %offset20.i.i, align 4
  %add21.i.i = add i32 %214, 18992
  %call22.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add21.i.i, i32 noundef 0) #12
  %and23.i.i = and i32 %call22.i.i, 4095
  %215 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %185, align 4
  %shl24.i.i = shl i32 %216, 12
  %or26.i.i = or i32 %shl24.i.i, %and23.i.i
  %217 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %afmt.i390.i, align 4
  %offset28.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %offset28.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %offset28.i.i, align 4
  %add29.i.i = add i32 %220, 18992
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add29.i.i, i32 noundef %or26.i.i, i32 noundef 0) #12
  %221 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %afmt.i390.i, align 4
  %offset31.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %offset31.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %offset31.i.i, align 4
  %add32.i.i = add i32 %224, 18993
  %call33.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add32.i.i, i32 noundef 0) #12
  %and34.i.i = and i32 %call33.i.i, -1048576
  %225 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %184, align 4
  %and36.i.i = and i32 %226, 1048575
  %or37.i.i = or i32 %and36.i.i, %and34.i.i
  %227 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %afmt.i390.i, align 4
  %offset39.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %offset39.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %offset39.i.i, align 4
  %add40.i.i = add i32 %230, 18993
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add40.i.i, i32 noundef %or37.i.i, i32 noundef 0) #12
  %231 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %afmt.i390.i, align 4
  %offset42.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %offset42.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %offset42.i.i, align 4
  %add43.i.i = add i32 %234, 18994
  %call44.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add43.i.i, i32 noundef 0) #12
  %and45.i.i = and i32 %call44.i.i, 4095
  %235 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %187, align 4
  %shl46.i.i = shl i32 %236, 12
  %or48.i.i = or i32 %shl46.i.i, %and45.i.i
  %237 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %afmt.i390.i, align 4
  %offset50.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %offset50.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %offset50.i.i, align 4
  %add51.i.i = add i32 %240, 18994
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add51.i.i, i32 noundef %or48.i.i, i32 noundef 0) #12
  %241 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %afmt.i390.i, align 4
  %offset53.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %offset53.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %offset53.i.i, align 4
  %add54.i.i = add i32 %244, 18995
  %call55.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add54.i.i, i32 noundef 0) #12
  %and56.i.i = and i32 %call55.i.i, -1048576
  %245 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %186, align 4
  %and58.i.i = and i32 %246, 1048575
  %or59.i.i = or i32 %and58.i.i, %and56.i.i
  %247 = ptrtoint ptr %afmt.i390.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %afmt.i390.i, align 4
  %offset61.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %offset61.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %offset61.i.i, align 4
  %add62.i.i = add i32 %250, 18995
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i388.i, i32 noundef %add62.i.i, i32 noundef %or59.i.i, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %acr.i.i) #12
  %251 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %afmt.i11, align 4
  %offset134.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %offset134.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %offset134.i, align 4
  %add135.i = add i32 %254, 19000
  %call136.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add135.i, i32 noundef 0) #12
  %and137.i = and i32 %call136.i, -15728641
  %or138.i = or i32 %and137.i, 1048576
  %255 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %afmt.i11, align 4
  %offset140.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %256, i32 0, i32 1
  %257 = ptrtoint ptr %offset140.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %offset140.i, align 4
  %add141.i = add i32 %258, 19000
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add141.i, i32 noundef %or138.i, i32 noundef 0) #12
  %259 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %afmt.i11, align 4
  %offset143.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %offset143.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %offset143.i, align 4
  %add144.i = add i32 %262, 19001
  %call145.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add144.i, i32 noundef 0) #12
  %and146.i = and i32 %call145.i, -15728641
  %or147.i = or i32 %and146.i, 2097152
  %263 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %afmt.i11, align 4
  %offset149.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %offset149.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %offset149.i, align 4
  %add150.i = add i32 %266, 19001
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add150.i, i32 noundef %or147.i, i32 noundef 0) #12
  %267 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %afmt.i11, align 4
  %offset152.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %268, i32 0, i32 1
  %269 = ptrtoint ptr %offset152.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %offset152.i, align 4
  %add153.i = add i32 %270, 19007
  %call154.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add153.i, i32 noundef 0) #12
  %and155.i = and i32 %call154.i, -16777216
  %or166.i = or i32 %and155.i, 8873283
  %271 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %afmt.i11, align 4
  %offset168.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %offset168.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %offset168.i, align 4
  %add169.i = add i32 %274, 19007
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add169.i, i32 noundef %or166.i, i32 noundef 0) #12
  %275 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i394.i = getelementptr i8, ptr %276, i32 -8
  %277 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %enc_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i.i) #12
  %279 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i.i, align 4, !annotation !145
  %280 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i.i, i32 0, i32 1
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr inttoptr (i32 -1 to ptr), ptr %280, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sadb.i.i) #12
  %282 = ptrtoint ptr %sadb.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr null, ptr %sadb.i.i, align 4
  %tobool.not.i396.i = icmp eq ptr %278, null
  br i1 %tobool.not.i396.i, label %sw.epilog.i.dce_v11_0_audio_write_speaker_allocation.exit.i_crit_edge, label %lor.lhs.false.i398.i

sw.epilog.i.dce_v11_0_audio_write_speaker_allocation.exit.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_write_speaker_allocation.exit.i

lor.lhs.false.i398.i:                             ; preds = %sw.epilog.i
  %afmt.i397.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %278, i32 0, i32 11
  %283 = ptrtoint ptr %afmt.i397.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %afmt.i397.i, align 4
  %tobool3.not.i.i = icmp eq ptr %284, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i398.i.dce_v11_0_audio_write_speaker_allocation.exit.i_crit_edge, label %lor.lhs.false4.i.i

lor.lhs.false.i398.i.dce_v11_0_audio_write_speaker_allocation.exit.i_crit_edge: ; preds = %lor.lhs.false.i398.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_write_speaker_allocation.exit.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i398.i
  %pin.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %284, i32 0, i32 4
  %285 = ptrtoint ptr %pin.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %pin.i.i, align 4
  %tobool6.not.i399.i = icmp eq ptr %286, null
  br i1 %tobool6.not.i399.i, label %lor.lhs.false4.i.i.dce_v11_0_audio_write_speaker_allocation.exit.i_crit_edge, label %if.end.i400.i

lor.lhs.false4.i.i.dce_v11_0_audio_write_speaker_allocation.exit.i_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_write_speaker_allocation.exit.i

if.end.i400.i:                                    ; preds = %lor.lhs.false4.i.i
  call void @drm_connector_list_iter_begin(ptr noundef %276, ptr noundef nonnull %iter.i.i) #12
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end.i400.i
  %call7.i401.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i.i) #12
  %tobool8.not.i.i = icmp eq ptr %call7.i401.i, null
  br i1 %tobool8.not.i.i, label %if.then16.critedge.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %encoder9.i.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i401.i, i32 0, i32 41
  %287 = ptrtoint ptr %encoder9.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %encoder9.i.i, align 4
  %cmp.i.i = icmp eq ptr %288, %encoder
  br i1 %cmp.i.i, label %if.end17.critedge.i.i, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.then16.critedge.i.i:                           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i) #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #12
  br label %dce_v11_0_audio_write_speaker_allocation.exit.i

if.end17.critedge.i.i:                            ; preds = %while.body.i.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i) #12
  %call18.i.i = call ptr @amdgpu_connector_edid(ptr noundef nonnull %call7.i401.i) #12
  %call19.i.i = call i32 @drm_edid_to_speaker_allocation(ptr noundef %call18.i.i, ptr noundef nonnull %sadb.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %cmp20.i.i = icmp slt i32 %call19.i.i, 0
  br i1 %cmp20.i.i, label %if.then21.i.i, label %if.end17.critedge.i.i.if.end22.i.i_crit_edge

if.end17.critedge.i.i.if.end22.i.i_crit_edge:     ; preds = %if.end17.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i.i

if.then21.i.i:                                    ; preds = %if.end17.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %call19.i.i) #12
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then21.i.i, %if.end17.critedge.i.i.if.end22.i.i_crit_edge
  %sad_count.0.i.i = phi i32 [ 0, %if.then21.i.i ], [ %call19.i.i, %if.end17.critedge.i.i.if.end22.i.i_crit_edge ]
  %audio_endpt_rreg.i.i = getelementptr i8, ptr %276, i32 3300
  %289 = ptrtoint ptr %audio_endpt_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %audio_endpt_rreg.i.i, align 4
  %291 = ptrtoint ptr %afmt.i397.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %afmt.i397.i, align 4
  %pin24.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %292, i32 0, i32 4
  %293 = ptrtoint ptr %pin24.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %pin24.i.i, align 4
  %offset.i402.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %294, i32 0, i32 5
  %295 = ptrtoint ptr %offset.i402.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %offset.i402.i, align 4
  %call25.i.i = call i32 %290(ptr noundef %add.ptr.i.i394.i, i32 noundef %296, i32 noundef 37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sad_count.0.i.i)
  %tobool28.not.i.i = icmp eq i32 %sad_count.0.i.i, 0
  %or27.i.i = and i32 %call25.i.i, -196736
  br i1 %tobool28.not.i.i, label %if.end22.i.i.if.end35.i.i_crit_edge, label %if.then29.i.i

if.end22.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i.i

if.then29.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %297 = ptrtoint ptr %sadb.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %sadb.i.i, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %298, align 1
  %301 = and i8 %300, 127
  %and31.i.i = zext i8 %301 to i32
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then29.i.i, %if.end22.i.i.if.end35.i.i_crit_edge
  %.sink.i.i = phi i32 [ %and31.i.i, %if.then29.i.i ], [ 5, %if.end22.i.i.if.end35.i.i_crit_edge ]
  %and33.i.i = or i32 %or27.i.i, %.sink.i.i
  %or34.i.i = or i32 %and33.i.i, 65536
  %audio_endpt_wreg.i403.i = getelementptr i8, ptr %276, i32 3304
  %302 = ptrtoint ptr %audio_endpt_wreg.i403.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %audio_endpt_wreg.i403.i, align 8
  %304 = ptrtoint ptr %afmt.i397.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %afmt.i397.i, align 4
  %pin37.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %305, i32 0, i32 4
  %306 = ptrtoint ptr %pin37.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %pin37.i.i, align 4
  %offset38.i.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %307, i32 0, i32 5
  %308 = ptrtoint ptr %offset38.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %offset38.i.i, align 4
  call void %303(ptr noundef %add.ptr.i.i394.i, i32 noundef %309, i32 noundef 37, i32 noundef %or34.i.i) #12
  %310 = ptrtoint ptr %sadb.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %sadb.i.i, align 4
  call void @kfree(ptr noundef %311) #12
  br label %dce_v11_0_audio_write_speaker_allocation.exit.i

dce_v11_0_audio_write_speaker_allocation.exit.i:  ; preds = %if.end35.i.i, %if.then16.critedge.i.i, %lor.lhs.false4.i.i.dce_v11_0_audio_write_speaker_allocation.exit.i_crit_edge, %lor.lhs.false.i398.i.dce_v11_0_audio_write_speaker_allocation.exit.i_crit_edge, %sw.epilog.i.dce_v11_0_audio_write_speaker_allocation.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sadb.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i) #12
  %312 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %afmt.i11, align 4
  %offset171.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %offset171.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %offset171.i, align 4
  %add172.i = add i32 %315, 18964
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add172.i, i32 noundef 65280, i32 noundef 0) #12
  %316 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i404.i = getelementptr i8, ptr %317, i32 -8
  %318 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i406.i = icmp eq ptr %319, null
  br i1 %tobool.not.i406.i, label %dce_v11_0_audio_write_sad_regs.exit.i.thread, label %lor.lhs.false.i408.i

dce_v11_0_audio_write_sad_regs.exit.i.thread:     ; preds = %dce_v11_0_audio_write_speaker_allocation.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i416.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sads.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sads.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i416.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i441.i) #12
  br label %dce_v11_0_audio_write_latency_fields.exit.i

lor.lhs.false.i408.i:                             ; preds = %dce_v11_0_audio_write_speaker_allocation.exit.i
  %afmt.i407.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %319, i32 0, i32 11
  %320 = ptrtoint ptr %afmt.i407.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %afmt.i407.i, align 4
  %tobool2.not.i.i = icmp eq ptr %321, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i408.i.dce_v11_0_afmt_audio_select_pin.exit.i_crit_edge, label %lor.lhs.false3.i.i

lor.lhs.false.i408.i.dce_v11_0_afmt_audio_select_pin.exit.i_crit_edge: ; preds = %lor.lhs.false.i408.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_afmt_audio_select_pin.exit.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i408.i
  %pin.i409.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %321, i32 0, i32 4
  %322 = ptrtoint ptr %pin.i409.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %pin.i409.i, align 4
  %tobool5.not.i.i = icmp eq ptr %323, null
  br i1 %tobool5.not.i.i, label %lor.lhs.false3.i.i.dce_v11_0_afmt_audio_select_pin.exit.i_crit_edge, label %if.end.i415.i

lor.lhs.false3.i.i.dce_v11_0_afmt_audio_select_pin.exit.i_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_afmt_audio_select_pin.exit.i

if.end.i415.i:                                    ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %offset.i410.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %321, i32 0, i32 1
  %324 = ptrtoint ptr %offset.i410.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %offset.i410.i, align 4
  %add.i411.i = add i32 %325, 19013
  %call7.i412.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i404.i, i32 noundef %add.i411.i, i32 noundef 0) #12
  %and.i413.i = and i32 %call7.i412.i, -8
  %326 = ptrtoint ptr %afmt.i407.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %afmt.i407.i, align 4
  %pin9.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %327, i32 0, i32 4
  %328 = ptrtoint ptr %pin9.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %pin9.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %329, i32 0, i32 7
  %330 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %id.i.i, align 4
  %and10.i.i = and i32 %331, 7
  %or.i414.i = or i32 %and10.i.i, %and.i413.i
  %offset12.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %327, i32 0, i32 1
  %332 = ptrtoint ptr %offset12.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %offset12.i.i, align 4
  %add13.i.i = add i32 %333, 19013
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i404.i, i32 noundef %add13.i.i, i32 noundef %or.i414.i, i32 noundef 0) #12
  br label %dce_v11_0_afmt_audio_select_pin.exit.i

dce_v11_0_afmt_audio_select_pin.exit.i:           ; preds = %if.end.i415.i, %lor.lhs.false3.i.i.dce_v11_0_afmt_audio_select_pin.exit.i_crit_edge, %lor.lhs.false.i408.i.dce_v11_0_afmt_audio_select_pin.exit.i_crit_edge
  %334 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %.pr.i = load ptr, ptr %enc_priv.i, align 4
  %335 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i417.i = getelementptr i8, ptr %336, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i416.i) #12
  %337 = ptrtoint ptr %iter.i416.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i416.i, align 4, !annotation !145
  %338 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i416.i, i32 0, i32 1
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr inttoptr (i32 -1 to ptr), ptr %338, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sads.i.i) #12
  %340 = ptrtoint ptr %sads.i.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr inttoptr (i32 -1 to ptr), ptr %sads.i.i, align 4, !annotation !145
  %tobool.not.i419.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i419.i, label %dce_v11_0_afmt_audio_select_pin.exit.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge, label %lor.lhs.false.i422.i

dce_v11_0_afmt_audio_select_pin.exit.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge: ; preds = %dce_v11_0_afmt_audio_select_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_write_sad_regs.exit.i

lor.lhs.false.i422.i:                             ; preds = %dce_v11_0_afmt_audio_select_pin.exit.i
  %afmt.i420.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %.pr.i, i32 0, i32 11
  %341 = ptrtoint ptr %afmt.i420.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %afmt.i420.i, align 4
  %tobool2.not.i421.i = icmp eq ptr %342, null
  br i1 %tobool2.not.i421.i, label %lor.lhs.false.i422.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge, label %lor.lhs.false3.i425.i

lor.lhs.false.i422.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge: ; preds = %lor.lhs.false.i422.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_write_sad_regs.exit.i

lor.lhs.false3.i425.i:                            ; preds = %lor.lhs.false.i422.i
  %pin.i423.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %342, i32 0, i32 4
  %343 = ptrtoint ptr %pin.i423.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %pin.i423.i, align 4
  %tobool5.not.i424.i = icmp eq ptr %344, null
  br i1 %tobool5.not.i424.i, label %lor.lhs.false3.i425.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge, label %if.end.i426.i

lor.lhs.false3.i425.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge: ; preds = %lor.lhs.false3.i425.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_write_sad_regs.exit.i

if.end.i426.i:                                    ; preds = %lor.lhs.false3.i425.i
  call void @drm_connector_list_iter_begin(ptr noundef %336, ptr noundef nonnull %iter.i416.i) #12
  br label %while.cond.i427.i

while.cond.i427.i:                                ; preds = %while.body.i429.i.while.cond.i427.i_crit_edge, %if.end.i426.i
  %call6.i.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i416.i) #12
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %if.then15.critedge.i.i, label %while.body.i429.i

while.body.i429.i:                                ; preds = %while.cond.i427.i
  %encoder8.i.i = getelementptr inbounds %struct.drm_connector, ptr %call6.i.i, i32 0, i32 41
  %345 = ptrtoint ptr %encoder8.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %encoder8.i.i, align 4
  %cmp.i428.i = icmp eq ptr %346, %encoder
  br i1 %cmp.i428.i, label %if.end16.critedge.i.i, label %while.body.i429.i.while.cond.i427.i_crit_edge

while.body.i429.i.while.cond.i427.i_crit_edge:    ; preds = %while.body.i429.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i427.i

if.then15.critedge.i.i:                           ; preds = %while.cond.i427.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i416.i) #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #12
  br label %dce_v11_0_audio_write_sad_regs.exit.i

if.end16.critedge.i.i:                            ; preds = %while.body.i429.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i416.i) #12
  %call17.i.i = call ptr @amdgpu_connector_edid(ptr noundef nonnull %call6.i.i) #12
  %call18.i430.i = call i32 @drm_edid_to_sad(ptr noundef %call17.i.i, ptr noundef nonnull %sads.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i430.i)
  %cmp19.i.i = icmp slt i32 %call18.i430.i, 0
  br i1 %cmp19.i.i, label %if.end21.thread.i.i, label %if.end21.i.i

if.end21.thread.i.i:                              ; preds = %if.end16.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %call18.i430.i) #12
  br label %dce_v11_0_audio_write_sad_regs.exit.i

if.end21.i.i:                                     ; preds = %if.end16.critedge.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i430.i)
  %cmp22.i.i = icmp eq i32 %call18.i430.i, 0
  br i1 %cmp22.i.i, label %if.end21.i.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge, label %do.body.i.i

if.end21.i.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_write_sad_regs.exit.i

do.body.i.i:                                      ; preds = %if.end21.i.i
  %347 = ptrtoint ptr %sads.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %sads.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %348, null
  br i1 %tobool25.not.i.i, label %do.body30.i.i, label %for.cond.preheader.i.i, !prof !152

for.cond.preheader.i.i:                           ; preds = %do.body.i.i
  %audio_endpt_wreg.i431.i = getelementptr i8, ptr %336, i32 3304
  br label %for.cond39.preheader.i.i

do.body30.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/dce_v11_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1404, 0\0A.popsection", ""() #12, !srcloc !153
  unreachable

for.cond39.preheader.i.i:                         ; preds = %for.end.i440.i.for.cond39.preheader.i.i_crit_edge, %for.cond.preheader.i.i
  %i.0156.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc91.i.i, %for.end.i440.i.for.cond39.preheader.i.i_crit_edge ]
  %349 = ptrtoint ptr %sads.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %sads.i.i, align 4
  %arrayidx43.i.i = getelementptr [12 x [2 x i16]], ptr @dce_v11_0_audio_write_sad_regs.eld_reg_to_type, i32 0, i32 %i.0156.i.i, i32 1
  %351 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %arrayidx43.i.i, align 2
  br label %for.body41.i.i

for.body41.i.i:                                   ; preds = %for.inc.i438.i.for.body41.i.i_crit_edge, %for.cond39.preheader.i.i
  %j.0150.i.i = phi i32 [ 0, %for.cond39.preheader.i.i ], [ %inc.i436.i, %for.inc.i438.i.for.body41.i.i_crit_edge ]
  %max_channels.0149.i.i = phi i32 [ -1, %for.cond39.preheader.i.i ], [ %max_channels.3.ph.i.i, %for.inc.i438.i.for.body41.i.i_crit_edge ]
  %stereo_freqs.0148.i.i = phi i8 [ 0, %for.cond39.preheader.i.i ], [ %stereo_freqs.2.ph.i.i, %for.inc.i438.i.for.body41.i.i_crit_edge ]
  %tmp38.0147.i.i = phi i32 [ 0, %for.cond39.preheader.i.i ], [ %tmp38.3.ph.i.i, %for.inc.i438.i.for.body41.i.i_crit_edge ]
  %arrayidx.i432.i = getelementptr %struct.cea_sad, ptr %350, i32 %j.0150.i.i
  %353 = ptrtoint ptr %arrayidx.i432.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx.i432.i, align 1
  %355 = zext i8 %354 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %352, i16 %355)
  %cmp45.i.i = icmp eq i16 %352, %355
  br i1 %cmp45.i.i, label %if.then47.i.i, label %for.body41.i.i.for.inc.i438.i_crit_edge

for.body41.i.i.for.inc.i438.i_crit_edge:          ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i438.i

if.then47.i.i:                                    ; preds = %for.body41.i.i
  %channels.i.i = getelementptr %struct.cea_sad, ptr %350, i32 %j.0150.i.i, i32 1
  %356 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %channels.i.i, align 1
  %conv48.i.i = zext i8 %357 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_channels.0149.i.i, i32 %conv48.i.i)
  %cmp49.i.i = icmp slt i32 %max_channels.0149.i.i, %conv48.i.i
  br i1 %cmp49.i.i, label %if.then51.i.i, label %if.then47.i.i.if.end67.i.i_crit_edge

if.then47.i.i.if.end67.i.i_crit_edge:             ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i.i

if.then51.i.i:                                    ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i433.i = and i32 %tmp38.0147.i.i, -16776968
  %and54.i.i = and i32 %conv48.i.i, 7
  %or.i434.i = or i32 %and.i433.i, %and54.i.i
  %byte2.i.i = getelementptr %struct.cea_sad, ptr %350, i32 %j.0150.i.i, i32 3
  %358 = ptrtoint ptr %byte2.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %byte2.i.i, align 1
  %conv56.i.i = zext i8 %359 to i32
  %shl57.i.i = shl nuw nsw i32 %conv56.i.i, 16
  %or59.i435.i = or i32 %shl57.i.i, %or.i434.i
  %freq.i.i = getelementptr %struct.cea_sad, ptr %350, i32 %j.0150.i.i, i32 2
  %360 = ptrtoint ptr %freq.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %freq.i.i, align 1
  %conv61.i.i = zext i8 %361 to i32
  %shl62.i.i = shl nuw nsw i32 %conv61.i.i, 8
  %or64.i.i = or i32 %or59.i435.i, %shl62.i.i
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.then51.i.i, %if.then47.i.i.if.end67.i.i_crit_edge
  %tmp38.1.i.i = phi i32 [ %or64.i.i, %if.then51.i.i ], [ %tmp38.0147.i.i, %if.then47.i.i.if.end67.i.i_crit_edge ]
  %max_channels.1.i.i = phi i32 [ %conv48.i.i, %if.then51.i.i ], [ %max_channels.0149.i.i, %if.then47.i.i.if.end67.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %354)
  %cmp70.i.i = icmp eq i8 %354, 1
  br i1 %cmp70.i.i, label %if.then72.i.i, label %if.end67.i.i.for.end.i440.i_crit_edge

if.end67.i.i.for.end.i440.i_crit_edge:            ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i440.i

if.then72.i.i:                                    ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %freq73.i.i = getelementptr %struct.cea_sad, ptr %350, i32 %j.0150.i.i, i32 2
  %362 = ptrtoint ptr %freq73.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %freq73.i.i, align 1
  %or76135.i.i = or i8 %363, %stereo_freqs.0148.i.i
  br label %for.inc.i438.i

for.inc.i438.i:                                   ; preds = %if.then72.i.i, %for.body41.i.i.for.inc.i438.i_crit_edge
  %tmp38.3.ph.i.i = phi i32 [ %tmp38.0147.i.i, %for.body41.i.i.for.inc.i438.i_crit_edge ], [ %tmp38.1.i.i, %if.then72.i.i ]
  %stereo_freqs.2.ph.i.i = phi i8 [ %stereo_freqs.0148.i.i, %for.body41.i.i.for.inc.i438.i_crit_edge ], [ %or76135.i.i, %if.then72.i.i ]
  %max_channels.3.ph.i.i = phi i32 [ %max_channels.0149.i.i, %for.body41.i.i.for.inc.i438.i_crit_edge ], [ %max_channels.1.i.i, %if.then72.i.i ]
  %inc.i436.i = add nuw nsw i32 %j.0150.i.i, 1
  %exitcond.not.i437.i = icmp eq i32 %inc.i436.i, %call18.i430.i
  br i1 %exitcond.not.i437.i, label %for.inc.i438.i.for.end.i440.i_crit_edge, label %for.inc.i438.i.for.body41.i.i_crit_edge

for.inc.i438.i.for.body41.i.i_crit_edge:          ; preds = %for.inc.i438.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body41.i.i

for.inc.i438.i.for.end.i440.i_crit_edge:          ; preds = %for.inc.i438.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i440.i

for.end.i440.i:                                   ; preds = %for.inc.i438.i.for.end.i440.i_crit_edge, %if.end67.i.i.for.end.i440.i_crit_edge
  %stereo_freqs.0.lcssa.ph.i.i = phi i8 [ %stereo_freqs.0148.i.i, %if.end67.i.i.for.end.i440.i_crit_edge ], [ %stereo_freqs.2.ph.i.i, %for.inc.i438.i.for.end.i440.i_crit_edge ]
  %tmp38.4.ph.i.i = phi i32 [ %tmp38.1.i.i, %if.end67.i.i.for.end.i440.i_crit_edge ], [ %tmp38.3.ph.i.i, %for.inc.i438.i.for.end.i440.i_crit_edge ]
  %and80.i.i = and i32 %tmp38.4.ph.i.i, 16777215
  %conv81.i.i = zext i8 %stereo_freqs.0.lcssa.ph.i.i to i32
  %shl82.i.i = shl nuw i32 %conv81.i.i, 24
  %or84.i.i = or i32 %and80.i.i, %shl82.i.i
  %364 = ptrtoint ptr %audio_endpt_wreg.i431.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %audio_endpt_wreg.i431.i, align 8
  %366 = ptrtoint ptr %afmt.i420.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %afmt.i420.i, align 4
  %pin86.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %367, i32 0, i32 4
  %368 = ptrtoint ptr %pin86.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %pin86.i.i, align 4
  %offset.i439.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %369, i32 0, i32 5
  %370 = ptrtoint ptr %offset.i439.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %offset.i439.i, align 4
  %arrayidx87.i.i = getelementptr [12 x [2 x i16]], ptr @dce_v11_0_audio_write_sad_regs.eld_reg_to_type, i32 0, i32 %i.0156.i.i
  %372 = ptrtoint ptr %arrayidx87.i.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %arrayidx87.i.i, align 2
  %conv89.i.i = zext i16 %373 to i32
  call void %365(ptr noundef %add.ptr.i.i417.i, i32 noundef %371, i32 noundef %conv89.i.i, i32 noundef %or84.i.i) #12
  %inc91.i.i = add nuw nsw i32 %i.0156.i.i, 1
  %exitcond159.not.i.i = icmp eq i32 %inc91.i.i, 12
  br i1 %exitcond159.not.i.i, label %for.end92.i.i, label %for.end.i440.i.for.cond39.preheader.i.i_crit_edge

for.end.i440.i.for.cond39.preheader.i.i_crit_edge: ; preds = %for.end.i440.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond39.preheader.i.i

for.end92.i.i:                                    ; preds = %for.end.i440.i
  call void @__sanitizer_cov_trace_pc() #14
  %374 = ptrtoint ptr %sads.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %sads.i.i, align 4
  call void @kfree(ptr noundef %375) #12
  br label %dce_v11_0_audio_write_sad_regs.exit.i

dce_v11_0_audio_write_sad_regs.exit.i:            ; preds = %for.end92.i.i, %if.end21.i.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge, %if.end21.thread.i.i, %if.then15.critedge.i.i, %lor.lhs.false3.i425.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge, %lor.lhs.false.i422.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge, %dce_v11_0_afmt_audio_select_pin.exit.i.dce_v11_0_audio_write_sad_regs.exit.i_crit_edge
  %376 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %.pr16 = load ptr, ptr %enc_priv.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sads.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i416.i) #12
  %377 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i442.i = getelementptr i8, ptr %378, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i441.i) #12
  %379 = ptrtoint ptr %iter.i441.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i441.i, align 4, !annotation !145
  %380 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i441.i, i32 0, i32 1
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr inttoptr (i32 -1 to ptr), ptr %380, align 4, !annotation !145
  %tobool.not.i444.i = icmp eq ptr %.pr16, null
  br i1 %tobool.not.i444.i, label %dce_v11_0_audio_write_sad_regs.exit.i.dce_v11_0_audio_write_latency_fields.exit.i_crit_edge, label %lor.lhs.false.i447.i

dce_v11_0_audio_write_sad_regs.exit.i.dce_v11_0_audio_write_latency_fields.exit.i_crit_edge: ; preds = %dce_v11_0_audio_write_sad_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_write_latency_fields.exit.i

lor.lhs.false.i447.i:                             ; preds = %dce_v11_0_audio_write_sad_regs.exit.i
  %afmt.i445.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %.pr16, i32 0, i32 11
  %382 = ptrtoint ptr %afmt.i445.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %afmt.i445.i, align 4
  %tobool3.not.i446.i = icmp eq ptr %383, null
  br i1 %tobool3.not.i446.i, label %lor.lhs.false.i447.i.dce_v11_0_audio_write_latency_fields.exit.i_crit_edge, label %lor.lhs.false4.i450.i

lor.lhs.false.i447.i.dce_v11_0_audio_write_latency_fields.exit.i_crit_edge: ; preds = %lor.lhs.false.i447.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_write_latency_fields.exit.i

lor.lhs.false4.i450.i:                            ; preds = %lor.lhs.false.i447.i
  %pin.i448.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %383, i32 0, i32 4
  %384 = ptrtoint ptr %pin.i448.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %pin.i448.i, align 4
  %tobool6.not.i449.i = icmp eq ptr %385, null
  br i1 %tobool6.not.i449.i, label %lor.lhs.false4.i450.i.dce_v11_0_audio_write_latency_fields.exit.i_crit_edge, label %if.end.i451.i

lor.lhs.false4.i450.i.dce_v11_0_audio_write_latency_fields.exit.i_crit_edge: ; preds = %lor.lhs.false4.i450.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_write_latency_fields.exit.i

if.end.i451.i:                                    ; preds = %lor.lhs.false4.i450.i
  call void @drm_connector_list_iter_begin(ptr noundef %378, ptr noundef nonnull %iter.i441.i) #12
  br label %while.cond.i454.i

while.cond.i454.i:                                ; preds = %while.body.i457.i.while.cond.i454.i_crit_edge, %if.end.i451.i
  %call7.i452.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i441.i) #12
  %tobool8.not.i453.i = icmp eq ptr %call7.i452.i, null
  br i1 %tobool8.not.i453.i, label %if.then16.critedge.i458.i, label %while.body.i457.i

while.body.i457.i:                                ; preds = %while.cond.i454.i
  %encoder9.i455.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i452.i, i32 0, i32 41
  %386 = ptrtoint ptr %encoder9.i455.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %encoder9.i455.i, align 4
  %cmp.i456.i = icmp eq ptr %387, %encoder
  br i1 %cmp.i456.i, label %if.end17.critedge.i461.i, label %while.body.i457.i.while.cond.i454.i_crit_edge

while.body.i457.i.while.cond.i454.i_crit_edge:    ; preds = %while.body.i457.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i454.i

if.then16.critedge.i458.i:                        ; preds = %while.cond.i454.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i441.i) #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #12
  br label %dce_v11_0_audio_write_latency_fields.exit.i

if.end17.critedge.i461.i:                         ; preds = %while.body.i457.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i441.i) #12
  %flags.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %388 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %flags.i.i, align 4
  %and.i459.i = lshr i32 %389, 4
  %and.lobit.i.i = and i32 %and.i459.i, 1
  %arrayidx.i460.i = getelementptr %struct.drm_connector, ptr %call7.i452.i, i32 0, i32 43, i32 %and.lobit.i.i
  %390 = ptrtoint ptr %arrayidx.i460.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %arrayidx.i460.i, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %391)
  %tobool21.not.i.i = icmp eq i8 %391, 0
  br i1 %tobool21.not.i.i, label %if.end17.critedge.i461.i.if.end29.i.i_crit_edge, label %if.then22.i.i

if.end17.critedge.i461.i.if.end29.i.i_crit_edge:  ; preds = %if.end17.critedge.i461.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i.i

if.then22.i.i:                                    ; preds = %if.end17.critedge.i461.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx25.i.i = getelementptr %struct.drm_connector, ptr %call7.i452.i, i32 0, i32 45, i32 %and.lobit.i.i
  %392 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx25.i.i, align 4
  %shl26.i.i = shl i32 %393, 8
  %and27.i.i = and i32 %shl26.i.i, 65280
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then22.i.i, %if.end17.critedge.i461.i.if.end29.i.i_crit_edge
  %tmp2.0.i.i = phi i32 [ %and27.i.i, %if.then22.i.i ], [ 0, %if.end17.critedge.i461.i.if.end29.i.i_crit_edge ]
  %audio_endpt_wreg.i462.i = getelementptr i8, ptr %378, i32 3304
  %394 = ptrtoint ptr %audio_endpt_wreg.i462.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %audio_endpt_wreg.i462.i, align 8
  %396 = ptrtoint ptr %afmt.i445.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %afmt.i445.i, align 4
  %pin31.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %397, i32 0, i32 4
  %398 = ptrtoint ptr %pin31.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %pin31.i.i, align 4
  %offset.i463.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %399, i32 0, i32 5
  %400 = ptrtoint ptr %offset.i463.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %offset.i463.i, align 4
  call void %395(ptr noundef %add.ptr.i.i442.i, i32 noundef %401, i32 noundef 55, i32 noundef %tmp2.0.i.i) #12
  br label %dce_v11_0_audio_write_latency_fields.exit.i

dce_v11_0_audio_write_latency_fields.exit.i:      ; preds = %if.end29.i.i, %if.then16.critedge.i458.i, %lor.lhs.false4.i450.i.dce_v11_0_audio_write_latency_fields.exit.i_crit_edge, %lor.lhs.false.i447.i.dce_v11_0_audio_write_latency_fields.exit.i_crit_edge, %dce_v11_0_audio_write_sad_regs.exit.i.dce_v11_0_audio_write_latency_fields.exit.i_crit_edge, %dce_v11_0_audio_write_sad_regs.exit.i.thread
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i441.i) #12
  %call173.i = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame.i, ptr noundef %call2.i, ptr noundef %adjusted_mode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173.i)
  %cmp174.i = icmp slt i32 %call173.i, 0
  br i1 %cmp174.i, label %if.then175.i, label %if.end176.i

if.then175.i:                                     ; preds = %dce_v11_0_audio_write_latency_fields.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %call173.i) #12
  br label %dce_v11_0_afmt_setmode.exit

if.end176.i:                                      ; preds = %dce_v11_0_audio_write_latency_fields.exit.i
  %call177.i = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %frame.i, ptr noundef nonnull %buffer.i, i32 noundef 17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177.i)
  %cmp178.i = icmp slt i32 %call177.i, 0
  br i1 %cmp178.i, label %if.then179.i, label %if.end180.i

if.then179.i:                                     ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %call177.i) #12
  br label %dce_v11_0_afmt_setmode.exit

if.end180.i:                                      ; preds = %if.end176.i
  %402 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i464.i = getelementptr i8, ptr %403, i32 -8
  %404 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %enc_priv.i, align 4
  %afmt.i466.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %405, i32 0, i32 11
  %406 = ptrtoint ptr %afmt.i466.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %afmt.i466.i, align 4
  %offset.i467.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %407, i32 0, i32 1
  %408 = ptrtoint ptr %offset.i467.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %offset.i467.i, align 4
  %add.i468.i = add i32 %409, 18974
  %410 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %32, align 1
  %conv.i.i = zext i8 %411 to i32
  %412 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %33, align 1
  %conv4.i.i = zext i8 %413 to i32
  %shl.i469.i = shl nuw nsw i32 %conv4.i.i, 8
  %or.i470.i = or i32 %shl.i469.i, %conv.i.i
  %414 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %34, align 1
  %conv6.i.i = zext i8 %415 to i32
  %shl7.i.i = shl nuw nsw i32 %conv6.i.i, 16
  %or8.i.i = or i32 %or.i470.i, %shl7.i.i
  %416 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %35, align 1
  %conv10.i.i = zext i8 %417 to i32
  %shl11.i.i = shl nuw i32 %conv10.i.i, 24
  %or12.i.i = or i32 %or8.i.i, %shl11.i.i
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i464.i, i32 noundef %add.i468.i, i32 noundef %or12.i.i, i32 noundef 0) #12
  %418 = ptrtoint ptr %afmt.i466.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %afmt.i466.i, align 4
  %offset14.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %419, i32 0, i32 1
  %420 = ptrtoint ptr %offset14.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %offset14.i.i, align 4
  %add15.i.i = add i32 %421, 18975
  %422 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %36, align 1
  %conv17.i.i = zext i8 %423 to i32
  %424 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %37, align 1
  %conv19.i.i = zext i8 %425 to i32
  %shl20.i.i = shl nuw nsw i32 %conv19.i.i, 8
  %or21.i.i = or i32 %shl20.i.i, %conv17.i.i
  %426 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %38, align 1
  %conv23.i.i = zext i8 %427 to i32
  %shl24.i471.i = shl nuw nsw i32 %conv23.i.i, 16
  %or25.i.i = or i32 %or21.i.i, %shl24.i471.i
  %428 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %39, align 1
  %conv27.i.i = zext i8 %429 to i32
  %shl28.i.i = shl nuw i32 %conv27.i.i, 24
  %or29.i.i = or i32 %or25.i.i, %shl28.i.i
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i464.i, i32 noundef %add15.i.i, i32 noundef %or29.i.i, i32 noundef 0) #12
  %430 = ptrtoint ptr %afmt.i466.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %afmt.i466.i, align 4
  %offset31.i472.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %431, i32 0, i32 1
  %432 = ptrtoint ptr %offset31.i472.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %offset31.i472.i, align 4
  %add32.i473.i = add i32 %433, 18976
  %434 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %40, align 1
  %conv34.i.i = zext i8 %435 to i32
  %436 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %41, align 1
  %conv36.i.i = zext i8 %437 to i32
  %shl37.i.i = shl nuw nsw i32 %conv36.i.i, 8
  %or38.i.i = or i32 %shl37.i.i, %conv34.i.i
  %438 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %42, align 1
  %conv40.i.i = zext i8 %439 to i32
  %shl41.i.i = shl nuw nsw i32 %conv40.i.i, 16
  %or42.i.i = or i32 %or38.i.i, %shl41.i.i
  %440 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %43, align 1
  %conv44.i.i = zext i8 %441 to i32
  %shl45.i.i = shl nuw i32 %conv44.i.i, 24
  %or46.i.i = or i32 %or42.i.i, %shl45.i.i
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i464.i, i32 noundef %add32.i473.i, i32 noundef %or46.i.i, i32 noundef 0) #12
  %442 = ptrtoint ptr %afmt.i466.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %afmt.i466.i, align 4
  %offset48.i.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %443, i32 0, i32 1
  %444 = ptrtoint ptr %offset48.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %offset48.i.i, align 4
  %add49.i.i = add i32 %445, 18977
  %446 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %44, align 1
  %conv51.i.i = zext i8 %447 to i32
  %448 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %45, align 1
  %conv53.i.i = zext i8 %449 to i32
  %shl54.i.i = shl nuw nsw i32 %conv53.i.i, 8
  %or55.i.i = or i32 %shl54.i.i, %conv51.i.i
  %450 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %31, align 1
  %conv57.i.i = zext i8 %451 to i32
  %shl58.i.i = shl nuw i32 %conv57.i.i, 24
  %or59.i475.i = or i32 %or55.i.i, %shl58.i.i
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i464.i, i32 noundef %add49.i.i, i32 noundef %or59.i475.i, i32 noundef 0) #12
  %452 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %afmt.i11, align 4
  %offset183.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %453, i32 0, i32 1
  %454 = ptrtoint ptr %offset183.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %offset183.i, align 4
  %add184.i = add i32 %455, 18958
  %call185.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add184.i, i32 noundef 0) #12
  %or189.i = or i32 %call185.i, 3
  %456 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %afmt.i11, align 4
  %offset191.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %457, i32 0, i32 1
  %458 = ptrtoint ptr %offset191.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %offset191.i, align 4
  %add192.i = add i32 %459, 18958
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add192.i, i32 noundef %or189.i, i32 noundef 0) #12
  %460 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %afmt.i11, align 4
  %offset194.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %461, i32 0, i32 1
  %462 = ptrtoint ptr %offset194.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %offset194.i, align 4
  %add195.i = add i32 %463, 18959
  %call196.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add195.i, i32 noundef 0) #12
  %and197.i = and i32 %call196.i, -64
  %or198.i = or i32 %and197.i, 2
  %464 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %afmt.i11, align 4
  %offset200.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %465, i32 0, i32 1
  %466 = ptrtoint ptr %offset200.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %offset200.i, align 4
  %add201.i = add i32 %467, 18959
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add201.i, i32 noundef %or198.i, i32 noundef 0) #12
  %468 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %afmt.i11, align 4
  %offset203.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %469, i32 0, i32 1
  %470 = ptrtoint ptr %offset203.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %offset203.i, align 4
  %add204.i = add i32 %471, 19010
  %call205.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i8, i32 noundef %add204.i, i32 noundef 0) #12
  %or207.i = or i32 %call205.i, 1
  %472 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %afmt.i11, align 4
  %offset209.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %473, i32 0, i32 1
  %474 = ptrtoint ptr %offset209.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %offset209.i, align 4
  %add210.i = add i32 %475, 19010
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add210.i, i32 noundef %or207.i, i32 noundef 0) #12
  %476 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %afmt.i11, align 4
  %offset212.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %477, i32 0, i32 1
  %478 = ptrtoint ptr %offset212.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %offset212.i, align 4
  %add213.i = add i32 %479, 19003
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add213.i, i32 noundef 16777215, i32 noundef 0) #12
  %480 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %afmt.i11, align 4
  %offset215.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %481, i32 0, i32 1
  %482 = ptrtoint ptr %offset215.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %offset215.i, align 4
  %add216.i = add i32 %483, 19004
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add216.i, i32 noundef 8388607, i32 noundef 0) #12
  %484 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %afmt.i11, align 4
  %offset218.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %485, i32 0, i32 1
  %486 = ptrtoint ptr %offset218.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %offset218.i, align 4
  %add219.i = add i32 %487, 19005
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add219.i, i32 noundef 1, i32 noundef 0) #12
  %488 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %afmt.i11, align 4
  %offset221.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %489, i32 0, i32 1
  %490 = ptrtoint ptr %offset221.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %offset221.i, align 4
  %add222.i = add i32 %491, 19006
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i8, i32 noundef %add222.i, i32 noundef 1, i32 noundef 0) #12
  %492 = ptrtoint ptr %afmt.i11 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %afmt.i11, align 4
  %pin224.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %493, i32 0, i32 4
  %494 = ptrtoint ptr %pin224.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %pin224.i, align 4
  %tobool.not.i476.i = icmp eq ptr %495, null
  br i1 %tobool.not.i476.i, label %if.end180.i.dce_v11_0_afmt_setmode.exit_crit_edge, label %if.end.i479.i

if.end180.i.dce_v11_0_afmt_setmode.exit_crit_edge: ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_afmt_setmode.exit

if.end.i479.i:                                    ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #14
  %audio_endpt_wreg.i477.i = getelementptr i8, ptr %30, i32 3304
  %496 = ptrtoint ptr %audio_endpt_wreg.i477.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %audio_endpt_wreg.i477.i, align 8
  %offset.i478.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %495, i32 0, i32 5
  %498 = ptrtoint ptr %offset.i478.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %offset.i478.i, align 4
  call void %497(ptr noundef %add.ptr.i.i8, i32 noundef %499, i32 noundef 84, i32 noundef -2147483648) #12
  br label %dce_v11_0_afmt_setmode.exit

dce_v11_0_afmt_setmode.exit:                      ; preds = %if.end.i479.i, %if.end180.i.dce_v11_0_afmt_setmode.exit_crit_edge, %if.then179.i, %if.then175.i, %if.end.i13.dce_v11_0_afmt_setmode.exit_crit_edge, %lor.lhs.false.i12.dce_v11_0_afmt_setmode.exit_crit_edge, %dce_v11_0_afmt_enable.exit.dce_v11_0_afmt_setmode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i) #12
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i) #12
  br label %if.end

if.end:                                           ; preds = %dce_v11_0_afmt_setmode.exit, %entry.if.end_crit_edge
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
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_afmt_acr(ptr sret(%struct.amdgpu_afmt_acr) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_to_speaker_allocation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_connector_edid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_to_sad(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_encoder_dig_detect(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v11_0_encoder_disable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_atombios_encoder_dpms(ptr noundef %encoder, i32 noundef 3) #12
  %call = tail call zeroext i1 @amdgpu_atombios_encoder_is_digital(ptr noundef %encoder) #12
  br i1 %call, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp = icmp eq i32 %call1, 3
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -8
  %enc_priv.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %2 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then2.if.end_crit_edge, label %lor.lhs.false.i

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then2
  %afmt.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %afmt.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not.i = icmp eq i8 %7, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true16.critedge.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true16.critedge.i:                       ; preds = %if.end.i
  %pin.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin.i, align 4
  %tobool18.not.i = icmp eq ptr %9, null
  br i1 %tobool18.not.i, label %land.lhs.true16.critedge.i.if.end24.i_crit_edge, label %dce_v11_0_audio_enable.exit.i

land.lhs.true16.critedge.i.if.end24.i_crit_edge:  ; preds = %land.lhs.true16.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

dce_v11_0_audio_enable.exit.i:                    ; preds = %land.lhs.true16.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %audio_endpt_wreg.i.i = getelementptr i8, ptr %1, i32 3304
  %10 = ptrtoint ptr %audio_endpt_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %audio_endpt_wreg.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.amdgpu_audio_pin, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i.i, align 4
  tail call void %11(ptr noundef %add.ptr.i.i, i32 noundef %13, i32 noundef 84, i32 noundef 0) #12
  %14 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %afmt.i, align 4
  %pin23.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %pin23.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pin23.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %dce_v11_0_audio_enable.exit.i, %land.lhs.true16.critedge.i.if.end24.i_crit_edge
  %17 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %afmt.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %18, align 4
  %20 = load ptr, ptr %afmt.i, align 4
  %offset.i = getelementptr inbounds %struct.amdgpu_afmt, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %encoder_id.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %23 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %encoder_id.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %22, i32 noundef %24) #12
  br label %if.end

if.end:                                           ; preds = %if.end24.i, %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then2.if.end_crit_edge, %if.then.if.end_crit_edge
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %25 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enc_priv, align 4
  %dig_encoder = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %dig_encoder, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %active_device = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %28 = ptrtoint ptr %active_device to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %active_device, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atombios_encoder_is_digital(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce_v11_0_ext_dpms(ptr nocapture noundef %encoder, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce_v11_0_ext_prepare(ptr nocapture noundef %encoder) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce_v11_0_ext_commit(ptr nocapture noundef %encoder) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce_v11_0_ext_mode_set(ptr nocapture noundef %encoder, ptr nocapture noundef %mode, ptr nocapture noundef %adjusted_mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce_v11_0_ext_disable(ptr nocapture noundef %encoder) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_set_crtc_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 10, label %sw.bb10
    i32 11, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vblank_interrupt_state(ptr noundef %adev, i32 noundef 0, i32 noundef %state)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vblank_interrupt_state(ptr noundef %adev, i32 noundef 1, i32 noundef %state)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vblank_interrupt_state(ptr noundef %adev, i32 noundef 2, i32 noundef %state)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vblank_interrupt_state(ptr noundef %adev, i32 noundef 3, i32 noundef %state)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vblank_interrupt_state(ptr noundef %adev, i32 noundef 4, i32 noundef %state)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vblank_interrupt_state(ptr noundef %adev, i32 noundef 5, i32 noundef %state)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vline_interrupt_state(ptr noundef %adev, i32 noundef 0, i32 noundef %state)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vline_interrupt_state(ptr noundef %adev, i32 noundef 1, i32 noundef %state)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vline_interrupt_state(ptr noundef %adev, i32 noundef 2, i32 noundef %state)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vline_interrupt_state(ptr noundef %adev, i32 noundef 3, i32 noundef %state)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vline_interrupt_state(ptr noundef %adev, i32 noundef 4, i32 noundef %state)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dce_v11_0_set_crtc_vline_interrupt_state(ptr noundef %adev, i32 noundef 5, i32 noundef %state)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_crtc_irq(ptr noundef %adev, ptr noundef %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i = icmp slt i32 %sub, 0
  br i1 %cmp.i, label %if.then.if.then.i_crit_edge, label %lor.lhs.false.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then
  %num_crtc.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %9 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_crtc.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub)
  %cmp1.not.i = icmp sgt i32 %10, %sub
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %sub) #12
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %sub
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, 6859
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0) #12
  %or.i = or i32 %call.i, 16
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef %or.i, i32 noundef 0) #12
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i, %if.then.i
  %call5 = tail call zeroext i1 @amdgpu_irq_enabled(ptr noundef %adev, ptr noundef %source, i32 noundef %call2) #12
  br i1 %call5, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call8 = tail call zeroext i1 @drm_handle_vblank(ptr noundef %ddev.i, i32 noundef %sub) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %1) #12
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %vline = getelementptr [6 x %struct.anon.114], ptr @interrupt_status_offsets, i32 0, i32 %sub, i32 2
  %13 = ptrtoint ptr %vline to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vline, align 4
  %and12 = and i32 %14, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i38 = icmp slt i32 %sub, 0
  br i1 %cmp.i38, label %if.then14.if.then.i42_crit_edge, label %lor.lhs.false.i41

if.then14.if.then.i42_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i42

lor.lhs.false.i41:                                ; preds = %if.then14
  %num_crtc.i39 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %15 = ptrtoint ptr %num_crtc.i39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_crtc.i39, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub)
  %cmp1.not.i40 = icmp sgt i32 %16, %sub
  br i1 %cmp1.not.i40, label %if.end.i47, label %lor.lhs.false.i41.if.then.i42_crit_edge

lor.lhs.false.i41.if.then.i42_crit_edge:          ; preds = %lor.lhs.false.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i42

if.then.i42:                                      ; preds = %lor.lhs.false.i41.if.then.i42_crit_edge, %if.then14.if.then.i42_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %sub) #12
  br label %if.end16

if.end.i47:                                       ; preds = %lor.lhs.false.i41
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i43 = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %sub
  %17 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i43, align 4
  %add.i44 = add i32 %18, 6857
  %call.i45 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i44, i32 noundef 0) #12
  %or.i46 = or i32 %call.i45, 16
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i44, i32 noundef %or.i46, i32 noundef 0) #12
  br label %if.end16

if.else15:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17) #12
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.end.i47, %if.then.i42
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %1) #12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_id, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef %20, i32 noundef %5) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end16, %if.end9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v11_0_set_crtc_vblank_interrupt_state(ptr noundef %adev, i32 noundef %crtc, i32 noundef %state) unnamed_addr #0 align 64 {
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %crtc) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %state, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %crtc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, 6856
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %and, i32 noundef 0) #12
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx4 = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %crtc
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %add5 = add i32 %6, 6856
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add5, i32 noundef 0) #12
  %or8 = or i32 %call6, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add5, i32 noundef %or8, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v11_0_set_crtc_vline_interrupt_state(ptr noundef %adev, i32 noundef %crtc, i32 noundef %state) unnamed_addr #0 align 64 {
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %crtc) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %state, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %crtc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, 6856
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call, -17
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %and, i32 noundef 0) #12
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx4 = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %crtc
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %add5 = add i32 %6, 6856
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add5, i32 noundef 0) #12
  %or8 = or i32 %call6, 16
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add5, i32 noundef %or8, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_crtc_idx_to_irq_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_irq_enabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_handle_vblank(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_set_pageflip_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #0 align 64 {
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %type) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %type
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
define internal i32 @dce_v11_0_pageflip_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %shr) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr [7 x i32], ptr @crtc_offsets, i32 0, i32 %shr
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef %11, i32 noundef 2) #12
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
define internal i32 @dce_v11_0_set_hpd_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %source, i32 noundef %hpd, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hpd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 21
  %0 = ptrtoint ptr %num_hpd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_hpd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %hpd)
  %cmp.not = icmp ugt i32 %1, %hpd
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, i32 noundef %hpd) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %state, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %hpd
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, 6297
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call, -65537
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %and, i32 noundef 0) #12
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx4 = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %hpd
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %add5 = add i32 %6, 6297
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add5, i32 noundef 0) #12
  %or8 = or i32 %call6, 65536
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add5, i32 noundef %or8, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_hpd_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef %5, i32 noundef %1) #12
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
  %10 = ptrtoint ptr %num_hpd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_hpd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp.not.i = icmp sgt i32 %11, %1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, i32 noundef %1) #12
  br label %dce_v11_0_hpd_int_ack.exit

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr [6 x i32], ptr @hpd_offsets, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, 6297
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0) #12
  %or.i = or i32 %call.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef %or.i, i32 noundef 0) #12
  br label %dce_v11_0_hpd_int_ack.exit

dce_v11_0_hpd_int_ack.exit:                       ; preds = %if.end.i, %if.then.i
  %hotplug_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %hotplug_work) #12
  %add = add nuw i32 %1, 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %dce_v11_0_hpd_int_ack.exit, %if.end.cleanup_crit_edge, %if.then
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
define internal fastcc i32 @dce_v11_0_afmt_init(ptr nocapture noundef %adev) unnamed_addr #0 align 64 {
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
  br i1 %cmp2163.not, label %for.cond20.preheader.cleanup_crit_edge, label %for.cond20.preheader.for.body22_crit_edge

for.cond20.preheader.for.body22_crit_edge:        ; preds = %for.cond20.preheader
  br label %for.body22

for.cond20.preheader.cleanup_crit_edge:           ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %for.body6
  %arrayidx13 = getelementptr [9 x i32], ptr @dig_offsets, i32 0, i32 %i.162
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
  br i1 %exitcond.not, label %for.body22.cleanup_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body22

for.body22.cleanup_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body22.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.cond20.preheader.cleanup_crit_edge, %for.cond2.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.cond20.preheader.cleanup_crit_edge ], [ 0, %for.cond2.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %for.body22.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dce_v11_0_audio_init(ptr noundef %adev) unnamed_addr #0 align 64 {
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
  %switch.tableidx = add i32 %3, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 6
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.dce_v11_0_audio_init, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %num_pins10 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 2
  %6 = ptrtoint ptr %num_pins10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.load, ptr %num_pins10, align 4
  %num_pins13 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 2
  %audio_endpt_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 59
  br label %for.body

for.body:                                         ; preds = %dce_v11_0_audio_enable.exit.for.body_crit_edge, %switch.lookup
  %i.077 = phi i32 [ 0, %switch.lookup ], [ %inc, %dce_v11_0_audio_enable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.077
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %arrayidx, align 4
  %rate = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.077, i32 1
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %rate, align 4
  %bits_per_sample = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.077, i32 2
  %9 = ptrtoint ptr %bits_per_sample to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %bits_per_sample, align 4
  %status_bits = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.077, i32 3
  %10 = ptrtoint ptr %status_bits to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %status_bits, align 4
  %category_code = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.077, i32 4
  %11 = ptrtoint ptr %category_code to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %category_code, align 1
  %connected = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.077, i32 6
  %12 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %connected, align 4
  %arrayidx36 = getelementptr [8 x i32], ptr @pin_offsets, i32 0, i32 %i.077
  %13 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx36, align 4
  %offset = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.077, i32 5
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %offset, align 4
  %id = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 19, i32 1, i32 %i.077, i32 7
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.077, ptr %id, align 4
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %for.body.dce_v11_0_audio_enable.exit_crit_edge, label %if.end.i

for.body.dce_v11_0_audio_enable.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_audio_enable.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %audio_endpt_wreg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %audio_endpt_wreg.i, align 8
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  tail call void %18(ptr noundef %adev, i32 noundef %20, i32 noundef 84, i32 noundef 0) #12
  br label %dce_v11_0_audio_enable.exit

dce_v11_0_audio_enable.exit:                      ; preds = %if.end.i, %for.body.dce_v11_0_audio_enable.exit_crit_edge
  %inc = add nuw nsw i32 %i.077, 1
  %21 = ptrtoint ptr %num_pins13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_pins13, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %dce_v11_0_audio_enable.exit.for.body_crit_edge, label %dce_v11_0_audio_enable.exit.cleanup_crit_edge

dce_v11_0_audio_enable.exit.cleanup_crit_edge:    ; preds = %dce_v11_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

dce_v11_0_audio_enable.exit.for.body_crit_edge:   ; preds = %dce_v11_0_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %dce_v11_0_audio_enable.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %dce_v11_0_audio_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_crtc_cursor_set2(ptr nocapture noundef %crtc, ptr noundef %file_priv, i32 noundef %handle, i32 noundef %width, i32 noundef %height, i32 noundef %hot_x, i32 noundef %hot_y) #0 align 64 {
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
  %call2.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add.i, i32 noundef 0) #12
  %and.i = and i32 %call2.i, -2
  %4 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_offset.i, align 8
  %add4.i = add i32 %5, 6758
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add4.i, i32 noundef %and.i, i32 noundef 0) #12
  br label %unpin

if.end:                                           ; preds = %entry
  %max_cursor_width = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 13
  %6 = ptrtoint ptr %max_cursor_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_cursor_width, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %width)
  %cmp = icmp ult i32 %7, %width
  br i1 %cmp, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %max_cursor_height = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 14
  %8 = ptrtoint ptr %max_cursor_height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_cursor_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %height)
  %cmp1 = icmp ult i32 %9, %height
  br i1 %cmp1, label %lor.lhs.false.if.then2_crit_edge, label %if.end3

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %width, i32 noundef %height) #12
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %handle) #12
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %10 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_id, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %handle, i32 noundef %11) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %add.ptr9 = getelementptr i8, ptr %call, i32 -72
  %bdev.i = getelementptr i8, ptr %call, i32 352
  %12 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr i8, ptr %call, i32 200
  %14 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %15, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %16 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end13
    i32 -512, label %if.end6.if.then.i_crit_edge
  ], !prof !154

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i106 = getelementptr i8, ptr %13, i32 -17736
  %17 = ptrtoint ptr %add.ptr.i.i106 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i106, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.28, ptr noundef %add.ptr9) #16
  br label %if.then.i

if.then.i:                                        ; preds = %do.end.i, %if.end6.if.then.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !146

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !157
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call i32 @amdgpu_bo_pin(ptr noundef %add.ptr9, i32 noundef 4) #12
  %20 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %21, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #12
  %resource.i.i.i = getelementptr i8, ptr %call, i32 372
  %22 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call, ptr noundef %23, ptr noundef null) #12
  %24 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %25, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #12
  %26 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %27) #12
  tail call void @ww_mutex_unlock(ptr noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then.i111

if.then.i111:                                     ; preds = %if.end13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %call14) #12
  %call.i.i.i.i.i.i.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i109 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i109)
  %cmp.i.i.i.i.i.i110 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i109, 1
  br i1 %cmp.i.i.i.i.i.i110, label %if.then.i.i.i115, label %if.end5.i.i.i.i.i.i113

if.end5.i.i.i.i.i.i113:                           ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i109)
  %.not.i.i.i.i.i.i112 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i109, 0
  br i1 %.not.i.i.i.i.i.i112, label %if.end5.i.i.i.i.i.i113.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i114, !prof !146

if.end5.i.i.i.i.i.i113.cleanup_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i114:                         ; preds = %if.end5.i.i.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i115:                                 ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !157
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %add.ptr9) #12
  %cursor_addr = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 6
  %29 = ptrtoint ptr %cursor_addr to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call18, ptr %cursor_addr, align 8
  tail call fastcc void @dce_v11_0_lock_cursor(ptr noundef %crtc, i1 noundef zeroext true)
  %cursor_width = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 11
  %30 = ptrtoint ptr %cursor_width to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cursor_width, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %width)
  %cmp19.not = icmp eq i32 %31, %width
  br i1 %cmp19.not, label %lor.lhs.false20, label %if.end17.if.then26_crit_edge

if.end17.if.then26_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

lor.lhs.false20:                                  ; preds = %if.end17
  %cursor_height = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 12
  %32 = ptrtoint ptr %cursor_height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cursor_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %height)
  %cmp21.not = icmp eq i32 %33, %height
  br i1 %cmp21.not, label %lor.lhs.false22, label %lor.lhs.false20.if.then26_crit_edge

lor.lhs.false20.if.then26_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %cursor_hot_x = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 9
  %34 = ptrtoint ptr %cursor_hot_x to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cursor_hot_x, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %hot_x)
  %cmp23.not = icmp eq i32 %35, %hot_x
  br i1 %cmp23.not, label %lor.lhs.false24, label %lor.lhs.false22.if.then26_crit_edge

lor.lhs.false22.if.then26_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %cursor_hot_y = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 10
  %36 = ptrtoint ptr %cursor_hot_y to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cursor_hot_y, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %hot_y)
  %cmp25.not = icmp eq i32 %37, %hot_y
  br i1 %cmp25.not, label %lor.lhs.false24.if.end36_crit_edge, label %lor.lhs.false24.if.then26_crit_edge

lor.lhs.false24.if.then26_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

lor.lhs.false24.if.end36_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then26:                                        ; preds = %lor.lhs.false24.if.then26_crit_edge, %lor.lhs.false22.if.then26_crit_edge, %lor.lhs.false20.if.then26_crit_edge, %if.end17.if.then26_crit_edge
  %cursor_x = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 7
  %38 = ptrtoint ptr %cursor_x to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cursor_x, align 8
  %cursor_hot_x27 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 9
  %40 = ptrtoint ptr %cursor_hot_x27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cursor_hot_x27, align 8
  %add = sub i32 %39, %hot_x
  %sub = add i32 %add, %41
  %cursor_y = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 8
  %42 = ptrtoint ptr %cursor_y to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cursor_y, align 4
  %cursor_hot_y28 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 10
  %44 = ptrtoint ptr %cursor_hot_y28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cursor_hot_y28, align 4
  %add29 = sub i32 %43, %hot_y
  %sub30 = add i32 %add29, %45
  tail call fastcc void @dce_v11_0_cursor_move_locked(ptr noundef %crtc, i32 noundef %sub, i32 noundef %sub30)
  %46 = ptrtoint ptr %cursor_width to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %width, ptr %cursor_width, align 8
  %cursor_height33 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 12
  %47 = ptrtoint ptr %cursor_height33 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %height, ptr %cursor_height33, align 4
  %48 = ptrtoint ptr %cursor_hot_x27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %hot_x, ptr %cursor_hot_x27, align 8
  %49 = ptrtoint ptr %cursor_hot_y28 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %hot_y, ptr %cursor_hot_y28, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then26, %lor.lhs.false24.if.end36_crit_edge
  tail call fastcc void @dce_v11_0_show_cursor(ptr noundef %crtc)
  tail call fastcc void @dce_v11_0_lock_cursor(ptr noundef %crtc, i1 noundef zeroext false)
  br label %unpin

unpin:                                            ; preds = %if.end36, %if.then
  %obj.0 = phi ptr [ %call, %if.end36 ], [ null, %if.then ]
  %cursor_bo = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 5
  %50 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cursor_bo, align 4
  %tobool37.not = icmp eq ptr %51, null
  br i1 %tobool37.not, label %unpin.if.end51_crit_edge, label %if.then38

unpin.if.end51_crit_edge:                         ; preds = %unpin
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then38:                                        ; preds = %unpin
  %add.ptr43 = getelementptr i8, ptr %51, i32 -72
  %bdev.i117 = getelementptr i8, ptr %51, i32 352
  %52 = ptrtoint ptr %bdev.i117 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev.i117, align 8
  %resv32.i.i119 = getelementptr i8, ptr %51, i32 200
  %54 = ptrtoint ptr %resv32.i.i119 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resv32.i.i119, align 8
  %call.i1.i.i = tail call i32 @ww_mutex_lock(ptr noundef %55, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i120 = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i121 = select i1 %cmp.i.i120, i32 -512, i32 %call.i1.i.i
  %56 = zext i32 %.ret.0.i.i121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %.ret.0.i.i121, label %do.end.i122 [
    i32 0, label %if.then48
    i32 -512, label %if.then38.if.end49_crit_edge
  ], !prof !154

if.then38.if.end49_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.end.i122:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i118 = getelementptr i8, ptr %53, i32 -17736
  %57 = ptrtoint ptr %add.ptr.i.i118 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i.i118, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.28, ptr noundef %add.ptr43) #16
  br label %if.end49

if.then48:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_bo_unpin(ptr noundef %add.ptr43) #12
  %59 = ptrtoint ptr %bdev.i117 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bdev.i117, align 8
  %lru_lock.i.i.i126 = getelementptr inbounds %struct.ttm_device, ptr %60, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i126) #12
  %resource.i.i.i127 = getelementptr i8, ptr %51, i32 372
  %61 = ptrtoint ptr %resource.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %resource.i.i.i127, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %51, ptr noundef %62, ptr noundef null) #12
  %63 = ptrtoint ptr %bdev.i117 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bdev.i117, align 8
  %lru_lock2.i.i.i128 = getelementptr inbounds %struct.ttm_device, ptr %64, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i128) #12
  %65 = ptrtoint ptr %resv32.i.i119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %resv32.i.i119, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %66) #12
  tail call void @ww_mutex_unlock(ptr noundef %66) #12
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %do.end.i122, %if.then38.if.end49_crit_edge
  %67 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cursor_bo, align 4
  %tobool.not.i130 = icmp eq ptr %68, null
  br i1 %tobool.not.i130, label %if.end49.if.end51_crit_edge, label %if.then.i134

if.end49.if.end51_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then.i134:                                     ; preds = %if.end49
  %call.i.i.i.i.i.i.i.i131 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %68, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %68, i32 1, i32 3, i32 1) #12
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %68, ptr nonnull %68, i32 1, ptr nonnull elementtype(i32) %68) #12, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i132 = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i132)
  %cmp.i.i.i.i.i.i133 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i132, 1
  br i1 %cmp.i.i.i.i.i.i133, label %if.then.i.i.i138, label %if.end5.i.i.i.i.i.i136

if.end5.i.i.i.i.i.i136:                           ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i132)
  %.not.i.i.i.i.i.i135 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i132, 0
  br i1 %.not.i.i.i.i.i.i135, label %if.end5.i.i.i.i.i.i136.if.end51_crit_edge, label %if.then10.i.i.i.i.i.i137, !prof !146

if.end5.i.i.i.i.i.i136.if.end51_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then10.i.i.i.i.i.i137:                         ; preds = %if.end5.i.i.i.i.i.i136
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %68, i32 noundef 3) #12
  br label %if.end51

if.then.i.i.i138:                                 ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !157
  tail call void @drm_gem_object_free(ptr noundef nonnull %68) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then.i.i.i138, %if.then10.i.i.i.i.i.i137, %if.end5.i.i.i.i.i.i136.if.end51_crit_edge, %if.end49.if.end51_crit_edge, %unpin.if.end51_crit_edge
  %70 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %obj.0, ptr %cursor_bo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then.i.i.i115, %if.then10.i.i.i.i.i.i114, %if.end5.i.i.i.i.i.i113.cleanup_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then5, %if.then2
  %retval.0 = phi i32 [ -22, %if.then2 ], [ 0, %if.end51 ], [ -2, %if.then5 ], [ %.ret.0.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %.ret.0.i.i, %if.then10.i.i.i.i.i.i ], [ %.ret.0.i.i, %if.then.i.i.i ], [ %call14, %if.end5.i.i.i.i.i.i113.cleanup_crit_edge ], [ %call14, %if.then10.i.i.i.i.i.i114 ], [ %call14, %if.then.i.i.i115 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_crtc_cursor_move(ptr nocapture noundef %crtc, i32 noundef %x, i32 noundef %y) #0 align 64 {
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
  %add5.i = add i32 %5, 6766
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add5.i, i32 noundef %cur_lock.0.i, i32 noundef 0) #12
  tail call fastcc void @dce_v11_0_cursor_move_locked(ptr noundef %crtc, i32 noundef %x, i32 noundef %y)
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i3 = getelementptr i8, ptr %7, i32 -8
  %8 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_offset.i, align 8
  %add.i5 = add i32 %9, 6766
  %call1.i6 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i3, i32 noundef %add.i5, i32 noundef 0) #12
  %and2.i7 = and i32 %call1.i6, -65537
  %10 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_offset.i, align 8
  %add5.i8 = add i32 %11, 6766
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i3, i32 noundef %add5.i8, i32 noundef %and2.i7, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_crtc_gamma_set(ptr noundef %crtc, ptr nocapture noundef readnone %red, ptr nocapture noundef readnone %green, ptr nocapture noundef readnone %blue, i32 noundef %size, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dce_v11_0_crtc_load_lut(ptr noundef %crtc)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v11_0_crtc_destroy(ptr noundef %crtc) #0 align 64 {
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
define internal fastcc void @dce_v11_0_lock_cursor(ptr nocapture noundef readonly %crtc, i1 noundef zeroext %lock) unnamed_addr #0 align 64 {
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
  %and2 = and i32 %call1, -65537
  %masksel = select i1 %lock, i32 65536, i32 0
  %cur_lock.0 = or i32 %and2, %masksel
  %4 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_offset, align 8
  %add5 = add i32 %5, 6766
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add5, i32 noundef %cur_lock.0, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v11_0_cursor_move_locked(ptr nocapture noundef %crtc, i32 noundef %x, i32 noundef %y) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %cursor_x = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 7
  %2 = ptrtoint ptr %cursor_x to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %x, ptr %cursor_x, align 8
  %cursor_y = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 8
  %3 = ptrtoint ptr %cursor_y to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %y, ptr %cursor_y, align 4
  %x1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %4 = ptrtoint ptr %x1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %x1, align 4
  %add = add i32 %5, %x
  %y2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %6 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %y2, align 8
  %add3 = add i32 %7, %y
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %add, i32 noundef %add3, i32 noundef %5, i32 noundef %7) #12
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
  %8 = ptrtoint ptr %max_cursor_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_cursor_width, align 8
  %sub6 = add i32 %9, -1
  %10 = tail call i32 @llvm.smin.i32(i32 %sub6, i32 %sub)
  %phi.bo = shl i32 %10, 16
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
  %11 = ptrtoint ptr %max_cursor_height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_cursor_height, align 4
  %sub12 = add i32 %12, -1
  %13 = tail call i32 @llvm.smin.i32(i32 %sub12, i32 %sub11)
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.end.if.end19_crit_edge
  %yorigin.0 = phi i32 [ %13, %if.then10 ], [ 0, %if.end.if.end19_crit_edge ]
  %y.addr.0 = phi i32 [ 0, %if.then10 ], [ %add3, %if.end.if.end19_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %crtc_offset = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %14 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_offset, align 8
  %add20 = add i32 %15, 6762
  %shl = shl i32 %x.addr.0, 16
  %or = or i32 %y.addr.0, %shl
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add20, i32 noundef %or, i32 noundef 0) #12
  %16 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_offset, align 8
  %add22 = add i32 %17, 6763
  %or24 = or i32 %yorigin.0, %xorigin.0
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add22, i32 noundef %or24, i32 noundef 0) #12
  %18 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_offset, align 8
  %add26 = add i32 %19, 6760
  %cursor_width = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 11
  %20 = ptrtoint ptr %cursor_width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cursor_width, align 8
  %sub27 = shl i32 %21, 16
  %shl28 = add i32 %sub27, -65536
  %cursor_height = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 12
  %22 = ptrtoint ptr %cursor_height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cursor_height, align 4
  %sub29 = add i32 %23, -1
  %or30 = or i32 %shl28, %sub29
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add26, i32 noundef %or30, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce_v11_0_show_cursor(ptr nocapture noundef readonly %crtc) unnamed_addr #0 align 64 {
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
  %add4 = add i32 %7, 6759
  %8 = ptrtoint ptr %cursor_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cursor_addr, align 8
  %conv6 = trunc i64 %9 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add4, i32 noundef %conv6, i32 noundef 0) #12
  %10 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_offset, align 8
  %add8 = add i32 %11, 6758
  %call9 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add8, i32 noundef 0) #12
  %or = and i32 %call9, -770
  %or12 = or i32 %or, 513
  %12 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_offset, align 8
  %add14 = add i32 %13, 6758
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add14, i32 noundef %or12, i32 noundef 0) #12
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
define internal fastcc void @dce_v11_0_crtc_load_lut(ptr noundef readonly %crtc) unnamed_addr #0 align 64 {
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %3) #12
  %crtc_offset = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %4 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %5, 6709
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call3, -4
  %6 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_offset, align 8
  %add5 = add i32 %7, 6709
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add5, i32 noundef %and, i32 noundef 0) #12
  %8 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_offset, align 8
  %add7 = add i32 %9, 6701
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add7, i32 noundef 0) #12
  %or10 = or i32 %call8, 16
  %10 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_offset, align 8
  %add12 = add i32 %11, 6701
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add12, i32 noundef %or10, i32 noundef 0) #12
  %12 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_offset, align 8
  %add14 = add i32 %13, 6672
  %call15 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add14, i32 noundef 0) #12
  %and16 = and i32 %call15, -2
  %14 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_offset, align 8
  %add19 = add i32 %15, 6672
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add19, i32 noundef %and16, i32 noundef 0) #12
  %16 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_offset, align 8
  %add21 = add i32 %17, 6784
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add21, i32 noundef 0, i32 noundef 0) #12
  %18 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_offset, align 8
  %add23 = add i32 %19, 6785
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add23, i32 noundef 0, i32 noundef 0) #12
  %20 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_offset, align 8
  %add25 = add i32 %21, 6786
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add25, i32 noundef 0, i32 noundef 0) #12
  %22 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crtc_offset, align 8
  %add27 = add i32 %23, 6787
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add27, i32 noundef 0, i32 noundef 0) #12
  %24 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_offset, align 8
  %add29 = add i32 %25, 6788
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add29, i32 noundef 65535, i32 noundef 0) #12
  %26 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crtc_offset, align 8
  %add31 = add i32 %27, 6789
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add31, i32 noundef 65535, i32 noundef 0) #12
  %28 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_offset, align 8
  %add33 = add i32 %29, 6790
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add33, i32 noundef 65535, i32 noundef 0) #12
  %30 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_offset, align 8
  %add35 = add i32 %31, 6776
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add35, i32 noundef 0, i32 noundef 0) #12
  %32 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crtc_offset, align 8
  %add37 = add i32 %33, 6782
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add37, i32 noundef 7, i32 noundef 0) #12
  %34 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_offset, align 8
  %add39 = add i32 %35, 6777
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add39, i32 noundef 0, i32 noundef 0) #12
  %gamma_store = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 18
  %36 = ptrtoint ptr %gamma_store to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gamma_store, align 4
  %gamma_size = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %38 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gamma_size, align 8
  %add.ptr40 = getelementptr i16, ptr %37, i32 %39
  %add.ptr42 = getelementptr i16, ptr %add.ptr40, i32 %39
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0177 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %b.0176 = phi ptr [ %add.ptr42, %entry ], [ %incdec.ptr51, %for.body.for.body_crit_edge ]
  %g.0175 = phi ptr [ %add.ptr40, %entry ], [ %incdec.ptr46, %for.body.for.body_crit_edge ]
  %r.0174 = phi ptr [ %37, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %40 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crtc_offset, align 8
  %add44 = add i32 %41, 6780
  %incdec.ptr = getelementptr i16, ptr %r.0174, i32 1
  %42 = ptrtoint ptr %r.0174 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %r.0174, align 2
  %44 = and i16 %43, -64
  %and45 = zext i16 %44 to i32
  %shl = shl nuw nsw i32 %and45, 14
  %incdec.ptr46 = getelementptr i16, ptr %g.0175, i32 1
  %45 = ptrtoint ptr %g.0175 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %g.0175, align 2
  %47 = and i16 %46, -64
  %and48 = zext i16 %47 to i32
  %shl49 = shl nuw nsw i32 %and48, 4
  %or50 = or i32 %shl49, %shl
  %incdec.ptr51 = getelementptr i16, ptr %b.0176, i32 1
  %48 = ptrtoint ptr %b.0176 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %b.0176, align 2
  %50 = lshr i16 %49, 6
  %51 = zext i16 %50 to i32
  %or53 = or i32 %or50, %51
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add44, i32 noundef %or53, i32 noundef 0) #12
  %inc = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %crtc_offset, align 8
  %add55 = add i32 %53, 6744
  %call56 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add55, i32 noundef 0) #12
  %and61 = and i32 %call56, -13060
  %54 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %crtc_offset, align 8
  %add64 = add i32 %55, 6744
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add64, i32 noundef %and61, i32 noundef 0) #12
  %56 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crtc_offset, align 8
  %add66 = add i32 %57, 6745
  %call67 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add66, i32 noundef 0) #12
  %and68 = and i32 %call67, -4
  %58 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crtc_offset, align 8
  %add71 = add i32 %59, 6745
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add71, i32 noundef %and68, i32 noundef 0) #12
  %60 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %crtc_offset, align 8
  %add73 = add i32 %61, 6816
  %call74 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add73, i32 noundef 0) #12
  %and75 = and i32 %call74, -8
  %62 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %crtc_offset, align 8
  %add78 = add i32 %63, 6816
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add78, i32 noundef %and75, i32 noundef 0) #12
  %64 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %crtc_offset, align 8
  %add80 = add i32 %65, 6716
  %call81 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add80, i32 noundef 0) #12
  %and82 = and i32 %call81, -8
  %66 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %crtc_offset, align 8
  %add85 = add i32 %67, 6716
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add85, i32 noundef %and82, i32 noundef 0) #12
  %68 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %crtc_offset, align 8
  %add87 = add i32 %69, 6736
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add87, i32 noundef 0, i32 noundef 0) #12
  %70 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %crtc_offset, align 8
  %add89 = add i32 %71, 6844
  %call90 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add89, i32 noundef 0) #12
  %or92 = or i32 %call90, 2
  %72 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %crtc_offset, align 8
  %add94 = add i32 %73, 6844
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add94, i32 noundef %or92, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v11_0_crtc_dpms(ptr noundef %crtc, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb5_crit_edge
    i32 2, label %entry.sw.bb5_crit_edge45
    i32 3, label %entry.sw.bb5_crit_edge46
  ]

entry.sw.bb5_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge45:                         ; preds = %entry
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
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -8
  %crtc_id.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %6 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_id.i, align 8
  %arrayidx.i = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %9, i32 noundef 0) #12
  %10 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_id.i, align 8
  %arrayidx4.i = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %or.i = or i32 %call2.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %13, i32 noundef %or.i, i32 noundef 0) #12
  tail call void @amdgpu_atombios_crtc_blank(ptr noundef %crtc, i32 noundef 0) #12
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i29 = getelementptr i8, ptr %15, i32 -8
  %16 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_id.i, align 8
  %arrayidx.i31 = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i31, align 4
  %call2.i32 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i29, i32 noundef %19, i32 noundef 0) #12
  %and.i = and i32 %call2.i32, -2
  %20 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_id.i, align 8
  %arrayidx6.i = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx6.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i29, i32 noundef %23, i32 noundef %and.i, i32 noundef 0) #12
  %24 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_id.i, align 8
  %call2 = tail call i32 @amdgpu_display_crtc_idx_to_irq_type(ptr noundef %add.ptr.i, i32 noundef %25) #12
  %crtc_irq = getelementptr i8, ptr %1, i32 22468
  %call3 = tail call i32 @amdgpu_irq_update(ptr noundef %add.ptr.i, ptr noundef %crtc_irq, i32 noundef %call2) #12
  %pageflip_irq = getelementptr i8, ptr %1, i32 22504
  %call4 = tail call i32 @amdgpu_irq_update(ptr noundef %add.ptr.i, ptr noundef %pageflip_irq, i32 noundef %call2) #12
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #12
  tail call fastcc void @dce_v11_0_crtc_load_lut(ptr noundef %crtc)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge45, %entry.sw.bb5_crit_edge46
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #12
  %enabled6 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 2
  %26 = ptrtoint ptr %enabled6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled6, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %sw.bb5.if.end_crit_edge, label %if.then

sw.bb5.if.end_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i33 = getelementptr i8, ptr %29, i32 -8
  %crtc_id.i34 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %30 = ptrtoint ptr %crtc_id.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_id.i34, align 8
  %arrayidx.i35 = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i35, align 4
  %call2.i36 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i33, i32 noundef %33, i32 noundef 0) #12
  %34 = ptrtoint ptr %crtc_id.i34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_id.i34, align 8
  %arrayidx4.i37 = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx4.i37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx4.i37, align 4
  %or.i38 = or i32 %call2.i36, 1
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i33, i32 noundef %37, i32 noundef %or.i38, i32 noundef 0) #12
  tail call void @amdgpu_atombios_crtc_blank(ptr noundef %crtc, i32 noundef 1) #12
  %38 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i39 = getelementptr i8, ptr %39, i32 -8
  %40 = ptrtoint ptr %crtc_id.i34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crtc_id.i34, align 8
  %arrayidx.i41 = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i41, align 4
  %call2.i42 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i39, i32 noundef %43, i32 noundef 0) #12
  %and.i43 = and i32 %call2.i42, -2
  %44 = ptrtoint ptr %crtc_id.i34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %crtc_id.i34, align 8
  %arrayidx6.i44 = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx6.i44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx6.i44, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i39, i32 noundef %47, i32 noundef %and.i43, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb5.if.end_crit_edge
  tail call void @amdgpu_atombios_crtc_enable(ptr noundef %crtc, i32 noundef 0) #12
  %48 = ptrtoint ptr %enabled6 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %enabled6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @amdgpu_pm_compute_clocks(ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v11_0_crtc_prepare(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_atombios_crtc_powergate(ptr noundef %crtc, i32 noundef 0) #12
  tail call void @amdgpu_atombios_crtc_lock(ptr noundef %crtc, i32 noundef 1) #12
  tail call void @dce_v11_0_crtc_dpms(ptr noundef %crtc, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v11_0_crtc_commit(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dce_v11_0_crtc_dpms(ptr noundef %crtc, i32 noundef 0)
  tail call void @amdgpu_atombios_crtc_lock(ptr noundef %crtc, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_v11_0_crtc_mode_fixup(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode) #0 align 64 {
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
  %asic_type.i = getelementptr i8, ptr %14, i32 2360
  %15 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asic_type.i, align 8
  %.off.i = add i32 %16, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  %17 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encoder15, align 8
  br i1 %switch.i, label %if.then.i, label %if.end34.i

if.then.i:                                        ; preds = %if.end28
  %enc_priv.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %enc_priv.i, align 4
  %call14.i = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then.i.dce_v11_0_pick_pll.exit.thread_crit_edge, label %lor.lhs.false16.i

if.then.i.dce_v11_0_pick_pll.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pick_pll.exit.thread

lor.lhs.false16.i:                                ; preds = %if.then.i
  %21 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %encoder15, align 8
  %call18.i = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call18.i)
  %cmp19.i = icmp eq i32 %call18.i, 5
  br i1 %cmp19.i, label %lor.lhs.false16.i.dce_v11_0_pick_pll.exit.thread_crit_edge, label %if.end.i

lor.lhs.false16.i.dce_v11_0_pick_pll.exit.thread_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pick_pll.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false16.i
  %encoder_id.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %encoder_id.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %24, label %sw.default.i [
    i32 30, label %sw.bb.i
    i32 32, label %sw.bb22.i
    i32 33, label %sw.bb27.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %20, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  %..i = select i1 %tobool.not.i, i32 20, i32 21
  br label %dce_v11_0_pick_pll.exit.thread

sw.bb22.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %20, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool24.not.i = icmp eq i8 %29, 0
  %.110.i = select i1 %tobool24.not.i, i32 22, i32 23
  br label %dce_v11_0_pick_pll.exit.thread

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %20, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool29.not.i = icmp eq i8 %31, 0
  %.111.i = select i1 %tobool29.not.i, i32 24, i32 25
  br label %dce_v11_0_pick_pll.exit.thread

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %24) #12
  br label %land.lhs.true

if.end34.i:                                       ; preds = %if.end28
  %call36.i = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp eq i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end34.i.if.then42.i_crit_edge, label %lor.lhs.false38.i

if.end34.i.if.then42.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42.i

lor.lhs.false38.i:                                ; preds = %if.end34.i
  %32 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %encoder15, align 8
  %call40.i = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call40.i)
  %cmp41.i = icmp eq i32 %call40.i, 5
  br i1 %cmp41.i, label %lor.lhs.false38.i.if.then42.i_crit_edge, label %if.else51.i

lor.lhs.false38.i.if.then42.i_crit_edge:          ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42.i

if.then42.i:                                      ; preds = %lor.lhs.false38.i.if.then42.i_crit_edge, %if.end34.i.if.then42.i_crit_edge
  %dp_extclk.i = getelementptr i8, ptr %14, i32 3740
  %34 = ptrtoint ptr %dp_extclk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dp_extclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool43.not.i = icmp eq i32 %35, 0
  br i1 %tobool43.not.i, label %if.else45.i, label %if.then42.i.land.lhs.true_crit_edge

if.then42.i.land.lhs.true_crit_edge:              ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.else45.i:                                      ; preds = %if.then42.i
  %call46.i = tail call i32 @amdgpu_pll_get_shared_dp_ppll(ptr noundef %crtc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call46.i)
  %cmp47.not.i = icmp eq i32 %call46.i, 255
  br i1 %cmp47.not.i, label %if.else45.i.if.end56.i_crit_edge, label %if.else45.i.dce_v11_0_pick_pll.exit.thread_crit_edge

if.else45.i.dce_v11_0_pick_pll.exit.thread_crit_edge: ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pick_pll.exit.thread

if.else45.i.if.end56.i_crit_edge:                 ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.else51.i:                                      ; preds = %lor.lhs.false38.i
  %call52.i = tail call i32 @amdgpu_pll_get_shared_nondp_ppll(ptr noundef %crtc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call52.i)
  %cmp53.not.i = icmp eq i32 %call52.i, 255
  br i1 %cmp53.not.i, label %if.else51.i.if.end56.i_crit_edge, label %if.else51.i.dce_v11_0_pick_pll.exit.thread_crit_edge

if.else51.i.dce_v11_0_pick_pll.exit.thread_crit_edge: ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pick_pll.exit.thread

if.else51.i.if.end56.i_crit_edge:                 ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else51.i.if.end56.i_crit_edge, %if.else45.i.if.end56.i_crit_edge
  %call57.i = tail call i32 @amdgpu_pll_get_use_mask(ptr noundef %crtc) #12
  %flags.i = getelementptr i8, ptr %14, i32 2376
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %37, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool58.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool58.not.i, label %if.else68.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end56.i
  %and60.i = and i32 %call57.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.then59.i.dce_v11_0_pick_pll.exit.thread_crit_edge, label %if.end63.i

if.then59.i.dce_v11_0_pick_pll.exit.thread_crit_edge: ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pick_pll.exit.thread

if.end63.i:                                       ; preds = %if.then59.i
  %and64.i = and i32 %call57.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end63.i.dce_v11_0_pick_pll.exit.thread_crit_edge, label %if.end67.i

if.end63.i.dce_v11_0_pick_pll.exit.thread_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pick_pll.exit.thread

if.end67.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #12
  br label %land.lhs.true

if.else68.i:                                      ; preds = %if.end56.i
  %and69.i = and i32 %call57.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.else68.i.dce_v11_0_pick_pll.exit.thread_crit_edge, label %if.end72.i

if.else68.i.dce_v11_0_pick_pll.exit.thread_crit_edge: ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pick_pll.exit.thread

if.end72.i:                                       ; preds = %if.else68.i
  %and73.i = and i32 %call57.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.end72.i.dce_v11_0_pick_pll.exit.thread_crit_edge, label %if.end76.i

if.end72.i.dce_v11_0_pick_pll.exit.thread_crit_edge: ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pick_pll.exit.thread

if.end76.i:                                       ; preds = %if.end72.i
  %and77.i = and i32 %call57.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %if.end76.i.dce_v11_0_pick_pll.exit.thread_crit_edge, label %if.end80.i

if.end76.i.dce_v11_0_pick_pll.exit.thread_crit_edge: ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_pick_pll.exit.thread

if.end80.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #12
  br label %land.lhs.true

dce_v11_0_pick_pll.exit.thread:                   ; preds = %if.end76.i.dce_v11_0_pick_pll.exit.thread_crit_edge, %if.end72.i.dce_v11_0_pick_pll.exit.thread_crit_edge, %if.else68.i.dce_v11_0_pick_pll.exit.thread_crit_edge, %if.end63.i.dce_v11_0_pick_pll.exit.thread_crit_edge, %if.then59.i.dce_v11_0_pick_pll.exit.thread_crit_edge, %if.else51.i.dce_v11_0_pick_pll.exit.thread_crit_edge, %if.else45.i.dce_v11_0_pick_pll.exit.thread_crit_edge, %sw.bb27.i, %sw.bb22.i, %sw.bb.i, %lor.lhs.false16.i.dce_v11_0_pick_pll.exit.thread_crit_edge, %if.then.i.dce_v11_0_pick_pll.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ 2, %if.end76.i.dce_v11_0_pick_pll.exit.thread_crit_edge ], [ 0, %if.end72.i.dce_v11_0_pick_pll.exit.thread_crit_edge ], [ 1, %if.else68.i.dce_v11_0_pick_pll.exit.thread_crit_edge ], [ 2, %if.end63.i.dce_v11_0_pick_pll.exit.thread_crit_edge ], [ 0, %if.then59.i.dce_v11_0_pick_pll.exit.thread_crit_edge ], [ %call52.i, %if.else51.i.dce_v11_0_pick_pll.exit.thread_crit_edge ], [ %call46.i, %if.else45.i.dce_v11_0_pick_pll.exit.thread_crit_edge ], [ %.111.i, %sw.bb27.i ], [ %.110.i, %sw.bb22.i ], [ %..i, %sw.bb.i ], [ 11, %if.then.i.dce_v11_0_pick_pll.exit.thread_crit_edge ], [ 11, %lor.lhs.false16.i.dce_v11_0_pick_pll.exit.thread_crit_edge ]
  %pll_id64 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  %38 = ptrtoint ptr %pll_id64 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.1.i.ph, ptr %pll_id64, align 8
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end80.i, %if.end67.i, %if.then42.i.land.lhs.true_crit_edge, %sw.default.i
  %pll_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  %39 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 255, ptr %pll_id, align 8
  %40 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %encoder15, align 8
  %call33 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %land.lhs.true.if.end40_crit_edge, label %lor.lhs.false35

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

lor.lhs.false35:                                  ; preds = %land.lhs.true
  %42 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %encoder15, align 8
  %call37 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 5
  br i1 %cmp38, label %lor.lhs.false35.if.end40_crit_edge, label %lor.lhs.false35.cleanup_crit_edge

lor.lhs.false35.cleanup_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false35.if.end40_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end40:                                         ; preds = %lor.lhs.false35.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %dce_v11_0_pick_pll.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %lor.lhs.false35.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then19
  %retval.0 = phi i1 [ false, %if.then19 ], [ true, %if.end40 ], [ false, %if.end22.cleanup_crit_edge ], [ false, %if.end25.cleanup_crit_edge ], [ false, %lor.lhs.false35.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_crtc_mode_set(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode, i32 noundef %x, i32 noundef %y, ptr noundef %old_fb) #0 align 64 {
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
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %asic_type = getelementptr i8, ptr %3, i32 2360
  %4 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type, align 8
  %.off = add i32 %5, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %encoder = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 33
  %6 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoder, align 8
  %call15 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %7) #12
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_id, align 8
  %pll_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  %10 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll_id, align 8
  %encoder_id = getelementptr inbounds %struct.amdgpu_encoder, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_id, align 4
  %14 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %adjusted_mode, align 4
  %bpc = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 29
  %16 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bpc, align 8
  %ss_enabled = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 27
  %18 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ss_enabled, align 8, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool16 = icmp ne i8 %19, 0
  %ss = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26
  tail call void @amdgpu_atombios_crtc_program_pll(ptr noundef %crtc, i32 noundef %9, i32 noundef %11, i32 noundef %call15, i32 noundef %13, i32 noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %17, i1 noundef zeroext %tobool16, ptr noundef %ss) #12
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_atombios_crtc_set_pll(ptr noundef %crtc, ptr noundef %adjusted_mode) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10
  tail call void @amdgpu_atombios_crtc_set_dtd_timing(ptr noundef %crtc, ptr noundef %adjusted_mode) #12
  %call18 = tail call fastcc i32 @dce_v11_0_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0)
  tail call void @amdgpu_atombios_crtc_overscan_setup(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode) #12
  tail call void @amdgpu_atombios_crtc_scaler_setup(ptr noundef %crtc) #12
  %cursor_bo.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 5
  %20 = ptrtoint ptr %cursor_bo.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cursor_bo.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end17.dce_v11_0_cursor_reset.exit_crit_edge, label %if.then.i

if.end17.dce_v11_0_cursor_reset.exit_crit_edge:   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %dce_v11_0_cursor_reset.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 -8
  %crtc_offset.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %24 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_offset.i.i, align 8
  %add.i.i = add i32 %25, 6766
  %call1.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i.i, i32 noundef %add.i.i, i32 noundef 0) #12
  %cur_lock.0.i.i = or i32 %call1.i.i, 65536
  %26 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crtc_offset.i.i, align 8
  %add5.i.i = add i32 %27, 6766
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i.i, i32 noundef %add5.i.i, i32 noundef %cur_lock.0.i.i, i32 noundef 0) #12
  %cursor_x.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 7
  %28 = ptrtoint ptr %cursor_x.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cursor_x.i, align 8
  %cursor_y.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 8
  %30 = ptrtoint ptr %cursor_y.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cursor_y.i, align 4
  tail call fastcc void @dce_v11_0_cursor_move_locked(ptr noundef %crtc, i32 noundef %29, i32 noundef %31) #12
  %32 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i7.i = getelementptr i8, ptr %33, i32 -8
  %34 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_offset.i.i, align 8
  %add.i9.i = add i32 %35, 6761
  %cursor_addr.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 6
  %36 = ptrtoint ptr %cursor_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %cursor_addr.i.i, align 8
  %shr.i.i = lshr i64 %37, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i7.i, i32 noundef %add.i9.i, i32 noundef %conv.i.i, i32 noundef 0) #12
  %38 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %crtc_offset.i.i, align 8
  %add4.i.i = add i32 %39, 6759
  %40 = ptrtoint ptr %cursor_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %cursor_addr.i.i, align 8
  %conv6.i.i = trunc i64 %41 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i7.i, i32 noundef %add4.i.i, i32 noundef %conv6.i.i, i32 noundef 0) #12
  %42 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %crtc_offset.i.i, align 8
  %add8.i.i = add i32 %43, 6758
  %call9.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i7.i, i32 noundef %add8.i.i, i32 noundef 0) #12
  %or.i.i = and i32 %call9.i.i, -770
  %or12.i.i = or i32 %or.i.i, 513
  %44 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %crtc_offset.i.i, align 8
  %add14.i.i = add i32 %45, 6758
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i7.i, i32 noundef %add14.i.i, i32 noundef %or12.i.i, i32 noundef 0) #12
  %46 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i10.i = getelementptr i8, ptr %47, i32 -8
  %48 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %crtc_offset.i.i, align 8
  %add.i12.i = add i32 %49, 6766
  %call1.i13.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i10.i, i32 noundef %add.i12.i, i32 noundef 0) #12
  %and2.i14.i = and i32 %call1.i13.i, -65537
  %50 = ptrtoint ptr %crtc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %crtc_offset.i.i, align 8
  %add5.i15.i = add i32 %51, 6766
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i10.i, i32 noundef %add5.i15.i, i32 noundef %and2.i14.i, i32 noundef 0) #12
  br label %dce_v11_0_cursor_reset.exit

dce_v11_0_cursor_reset.exit:                      ; preds = %if.then.i, %if.end17.dce_v11_0_cursor_reset.exit_crit_edge
  %hw_mode = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 39
  %52 = call ptr @memcpy(ptr %hw_mode, ptr %adjusted_mode, i32 112)
  br label %cleanup

cleanup:                                          ; preds = %dce_v11_0_cursor_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dce_v11_0_cursor_reset.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_crtc_set_base(ptr noundef %crtc, i32 noundef %x, i32 noundef %y, ptr noundef %old_fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dce_v11_0_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_v11_0_crtc_set_base_atomic(ptr noundef %crtc, ptr noundef %fb, i32 noundef %x, i32 noundef %y, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dce_v11_0_crtc_do_set_base(ptr noundef %crtc, ptr noundef %fb, i32 noundef %x, i32 noundef %y, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_v11_0_crtc_disable(ptr noundef %crtc) #0 align 64 {
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
  tail call void @dce_v11_0_crtc_dpms(ptr noundef %crtc, i32 noundef 3)
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %3 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %primary, align 4
  %fb = getelementptr inbounds %struct.drm_plane, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %entry
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %obj, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 -72
  %bdev.i = getelementptr i8, ptr %8, i32 352
  %9 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr i8, ptr %8, i32 200
  %11 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resv32.i.i, align 8
  %call.i1.i.i = tail call i32 @ww_mutex_lock(ptr noundef %12, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i1.i.i
  %13 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.else
    i32 -512, label %if.then.if.then11_crit_edge
  ], !prof !154

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -17736
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.28, ptr noundef %add.ptr6) #16
  br label %if.then11

if.then11:                                        ; preds = %do.end.i, %if.then.if.then11_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40) #12
  br label %if.end12

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_bo_unpin(ptr noundef %add.ptr6) #12
  %16 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %17, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #12
  %resource.i.i.i = getelementptr i8, ptr %8, i32 372
  %18 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %8, ptr noundef %19, ptr noundef null) #12
  %20 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %21, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #12
  %22 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %23) #12
  tail call void @ww_mutex_unlock(ptr noundef %23) #12
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11, %entry.if.end12_crit_edge
  %24 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i64 = getelementptr i8, ptr %25, i32 -8
  %crtc_offset.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %26 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crtc_offset.i, align 8
  %add.i = add i32 %27, 6656
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i64, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #12
  tail call void @amdgpu_atombios_crtc_powergate(ptr noundef %crtc, i32 noundef 1) #12
  %num_crtc = getelementptr i8, ptr %1, i32 22400
  %28 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp65 = icmp sgt i32 %29, 0
  br i1 %cmp65, label %for.body.lr.ph, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %pll_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 79, i32 3, i32 %i.066
  %30 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %31, null
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %enabled = getelementptr inbounds %struct.amdgpu_crtc, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %enabled, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool19.not = icmp eq i8 %33, 0
  br i1 %tobool19.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true20

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true20:                                  ; preds = %land.lhs.true
  %34 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.066, i32 %35)
  %cmp21.not = icmp eq i32 %i.066, %35
  br i1 %cmp21.not, label %land.lhs.true20.for.inc_crit_edge, label %land.lhs.true22

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %36 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pll_id, align 8
  %pll_id26 = getelementptr inbounds %struct.amdgpu_crtc, ptr %31, i32 0, i32 21
  %38 = ptrtoint ptr %pll_id26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pll_id26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp27 = icmp eq i32 %37, %39
  br i1 %cmp27, label %land.lhs.true22.done_crit_edge, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true22.done_crit_edge:                   ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

for.inc:                                          ; preds = %land.lhs.true22.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %29
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge
  %pll_id30 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  %40 = ptrtoint ptr %pll_id30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pll_id30, align 8
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %41, label %for.end.done_crit_edge [
    i32 2, label %for.end.sw.bb_crit_edge
    i32 0, label %for.end.sw.bb_crit_edge68
    i32 1, label %for.end.sw.bb_crit_edge69
    i32 20, label %for.end.done.sink.split_crit_edge
    i32 21, label %for.end.done.sink.split_crit_edge70
    i32 22, label %for.end.done.sink.split_crit_edge71
    i32 23, label %for.end.done.sink.split_crit_edge72
    i32 24, label %for.end.done.sink.split_crit_edge73
    i32 25, label %for.end.done.sink.split_crit_edge74
  ]

for.end.done.sink.split_crit_edge74:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.sink.split

for.end.done.sink.split_crit_edge73:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.sink.split

for.end.done.sink.split_crit_edge72:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.sink.split

for.end.done.sink.split_crit_edge71:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.sink.split

for.end.done.sink.split_crit_edge70:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.sink.split

for.end.done.sink.split_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.sink.split

for.end.sw.bb_crit_edge69:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

for.end.sw.bb_crit_edge68:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

for.end.sw.bb_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

sw.bb:                                            ; preds = %for.end.sw.bb_crit_edge, %for.end.sw.bb_crit_edge68, %for.end.sw.bb_crit_edge69
  %crtc_id31 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %43 = ptrtoint ptr %crtc_id31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %crtc_id31, align 8
  br label %done.sink.split

done.sink.split:                                  ; preds = %sw.bb, %for.end.done.sink.split_crit_edge, %for.end.done.sink.split_crit_edge70, %for.end.done.sink.split_crit_edge71, %for.end.done.sink.split_crit_edge72, %for.end.done.sink.split_crit_edge73, %for.end.done.sink.split_crit_edge74
  %.sink = phi i32 [ %44, %sw.bb ], [ 255, %for.end.done.sink.split_crit_edge ], [ 255, %for.end.done.sink.split_crit_edge70 ], [ 255, %for.end.done.sink.split_crit_edge71 ], [ 255, %for.end.done.sink.split_crit_edge72 ], [ 255, %for.end.done.sink.split_crit_edge73 ], [ 255, %for.end.done.sink.split_crit_edge74 ]
  call void @amdgpu_atombios_crtc_program_pll(ptr noundef %crtc, i32 noundef %.sink, i32 noundef %41, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %ss) #12
  br label %done

done:                                             ; preds = %done.sink.split, %for.end.done_crit_edge, %land.lhs.true22.done_crit_edge
  %pll_id35 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  %45 = ptrtoint ptr %pll_id35 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 255, ptr %pll_id35, align 8
  %adjusted_clock = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 28
  %46 = ptrtoint ptr %adjusted_clock to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %adjusted_clock, align 4
  %encoder = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 33
  %47 = ptrtoint ptr %encoder to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %encoder, align 8
  %connector = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 34
  %48 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %48)
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
declare dso_local i32 @amdgpu_pll_get_shared_dp_ppll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_pll_get_shared_nondp_ppll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_pll_get_use_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_program_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_set_pll(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_set_dtd_timing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dce_v11_0_crtc_do_set_base(ptr noundef readonly %crtc, ptr noundef readonly %fb, i32 noundef %x, i32 noundef %y, i32 noundef %atomic) unnamed_addr #0 align 64 {
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
  store i64 -1, ptr %tiling_flags, align 8, !annotation !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %atomic)
  %tobool.not = icmp eq i32 %atomic, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %3 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %primary, align 4
  %fb3 = getelementptr inbounds %struct.drm_plane, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fb3, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %target_fb.0 = phi ptr [ %fb, %entry.if.end9_crit_edge ], [ %6, %land.lhs.true.if.end9_crit_edge ]
  %obj10 = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 15
  %7 = ptrtoint ptr %obj10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %obj10, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 -72
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
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end18
    i32 -512, label %if.end9.cleanup_crit_edge
  ], !prof !154

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -17736
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.28, ptr noundef %add.ptr13) #16
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  br i1 %tobool.not, label %if.then20, label %if.end18.if.end31_crit_edge

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then20:                                        ; preds = %if.end18
  %call21 = tail call i32 @amdgpu_bo_pin(ptr noundef %add.ptr13, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.then20.if.end31_crit_edge, label %if.then29, !prof !146

if.then20.if.end31_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then29:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @amdgpu_bo_unreserve(ptr noundef %add.ptr13)
  br label %cleanup

if.end31:                                         ; preds = %if.then20.if.end31_crit_edge, %if.end18.if.end31_crit_edge
  %call32 = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %add.ptr13) #12
  call void @amdgpu_bo_get_tiling_flags(ptr noundef %add.ptr13, ptr noundef nonnull %tiling_flags) #12
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
  %24 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tiling_flags, align 8
  %26 = trunc i64 %25 to i32
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 4
  %27 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %format, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %30, label %sw.default [
    i32 538982467, label %if.end31.sw.epilog_crit_edge
    i32 842093144, label %if.end31.sw.bb35_crit_edge
    i32 842093121, label %if.end31.sw.bb35_crit_edge388
    i32 892424792, label %if.end31.sw.bb40_crit_edge
    i32 892424769, label %if.end31.sw.bb40_crit_edge389
    i32 892426306, label %if.end31.sw.bb45_crit_edge
    i32 892420418, label %if.end31.sw.bb45_crit_edge390
    i32 909199186, label %sw.bb50
    i32 875713112, label %if.end31.sw.bb55_crit_edge
    i32 875713089, label %if.end31.sw.bb55_crit_edge391
    i32 808669784, label %if.end31.sw.bb60_crit_edge
    i32 808669761, label %if.end31.sw.bb60_crit_edge392
    i32 808671298, label %if.end31.sw.bb65_crit_edge
    i32 808665410, label %if.end31.sw.bb65_crit_edge393
    i32 875709016, label %if.end31.sw.bb70_crit_edge
    i32 875708993, label %if.end31.sw.bb70_crit_edge394
  ]

if.end31.sw.bb70_crit_edge394:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb70

if.end31.sw.bb70_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb70

if.end31.sw.bb65_crit_edge393:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb65

if.end31.sw.bb65_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb65

if.end31.sw.bb60_crit_edge392:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb60

if.end31.sw.bb60_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb60

if.end31.sw.bb55_crit_edge391:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb55

if.end31.sw.bb55_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb55

if.end31.sw.bb45_crit_edge390:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb45

if.end31.sw.bb45_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb45

if.end31.sw.bb40_crit_edge389:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb40

if.end31.sw.bb40_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb40

if.end31.sw.bb35_crit_edge388:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35

if.end31.sw.bb35_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end31.sw.bb35_crit_edge, %if.end31.sw.bb35_crit_edge388
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end31.sw.bb40_crit_edge, %if.end31.sw.bb40_crit_edge389
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end31.sw.bb45_crit_edge, %if.end31.sw.bb45_crit_edge390
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end31.sw.bb55_crit_edge, %if.end31.sw.bb55_crit_edge391
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end31.sw.bb60_crit_edge, %if.end31.sw.bb60_crit_edge392
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end31.sw.bb65_crit_edge, %if.end31.sw.bb65_crit_edge393
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end31.sw.bb70_crit_edge, %if.end31.sw.bb70_crit_edge394
  br label %sw.epilog

sw.default:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, ptr noundef %28) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb70, %sw.bb65, %sw.bb60, %sw.bb55, %sw.bb50, %sw.bb45, %sw.bb40, %sw.bb35, %if.end31.sw.epilog_crit_edge
  %fb_format.0 = phi i32 [ 2, %sw.bb70 ], [ 1026, %sw.bb65 ], [ 258, %sw.bb60 ], [ 2, %sw.bb55 ], [ 257, %sw.bb50 ], [ 1281, %sw.bb45 ], [ 1, %sw.bb40 ], [ 513, %sw.bb35 ], [ 0, %if.end31.sw.epilog_crit_edge ]
  %fb_swap.0 = phi i32 [ 546, %sw.bb70 ], [ 2, %sw.bb65 ], [ 2, %sw.bb60 ], [ 2, %sw.bb55 ], [ 1, %sw.bb50 ], [ 1, %sw.bb45 ], [ 1, %sw.bb40 ], [ 1, %sw.bb35 ], [ 0, %if.end31.sw.epilog_crit_edge ]
  %bypass_lut.0.off0 = phi i1 [ false, %sw.bb70 ], [ true, %sw.bb65 ], [ true, %sw.bb60 ], [ false, %sw.bb55 ], [ false, %sw.bb50 ], [ false, %sw.bb45 ], [ false, %sw.bb40 ], [ false, %sw.bb35 ], [ false, %if.end31.sw.epilog_crit_edge ]
  %trunc = trunc i64 %25 to i4
  %32 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.65)
  switch i4 %trunc, label %sw.epilog.if.end133_crit_edge [
    i4 4, label %if.then85
    i4 2, label %if.then129
  ]

sw.epilog.if.end133_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then85:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %33 = lshr i32 %26, 19
  %shl = and i32 %33, 12
  %34 = shl i32 %26, 4
  %shl107 = and i32 %34, 57344
  %35 = lshr i32 %26, 9
  %shl111 = and i32 %35, 192
  %36 = lshr i32 %26, 6
  %shl115 = and i32 %36, 6144
  %37 = lshr i32 %26, 1
  %shl119 = and i32 %37, 786432
  %or103 = or i32 %shl, %shl107
  %or105 = or i32 %or103, %shl111
  %or109 = or i32 %or105, %shl115
  %or117 = or i32 %or109, %shl119
  %or121 = or i32 %or117, %fb_format.0
  %and122 = or i32 %or121, 4194304
  br label %if.end133

if.then129:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %or131 = or i32 %fb_format.0, 2097152
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %if.then85, %sw.epilog.if.end133_crit_edge
  %fb_format.1 = phi i32 [ %and122, %if.then85 ], [ %or131, %if.then129 ], [ %fb_format.0, %sw.epilog.if.end133_crit_edge ]
  %and134 = and i32 %fb_format.1, -520093697
  %38 = shl i32 %26, 20
  %shl135 = and i32 %38, 520093696
  %or137 = or i32 %and134, %shl135
  %39 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i373 = getelementptr i8, ptr %40, i32 -8
  %crtc_id.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %41 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %crtc_id.i, align 8
  %arrayidx.i = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %call2.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i373, i32 noundef %44, i32 noundef 0) #12
  %and.i = and i32 %call2.i, -2
  %45 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %crtc_id.i, align 8
  %arrayidx6.i = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx6.i, align 4
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i373, i32 noundef %48, i32 noundef %and.i, i32 noundef 0) #12
  %crtc_offset = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 4
  %49 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %50, 6674
  %call138 = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef 0) #12
  %and139 = and i32 %call138, -2
  %51 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %crtc_offset, align 8
  %add142 = add i32 %52, 6674
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add142, i32 noundef %and139, i32 noundef 0) #12
  %53 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %crtc_offset, align 8
  %add144 = add i32 %54, 6663
  %shr145 = lshr i64 %call32, 32
  %conv147 = trunc i64 %shr145 to i32
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add144, i32 noundef %conv147, i32 noundef 0) #12
  %55 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %crtc_offset, align 8
  %add149 = add i32 %56, 6664
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add149, i32 noundef %conv147, i32 noundef 0) #12
  %57 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %crtc_offset, align 8
  %add154 = add i32 %58, 6660
  %conv155 = trunc i64 %call32 to i32
  %and156 = and i32 %conv155, -256
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add154, i32 noundef %and156, i32 noundef 0) #12
  %59 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %crtc_offset, align 8
  %add158 = add i32 %60, 6661
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add158, i32 noundef %and156, i32 noundef 0) #12
  %61 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %crtc_offset, align 8
  %add162 = add i32 %62, 6657
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add162, i32 noundef %or137, i32 noundef 0) #12
  %63 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %crtc_offset, align 8
  %add164 = add i32 %64, 6659
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add164, i32 noundef %fb_swap.0, i32 noundef 0) #12
  %65 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %crtc_offset, align 8
  %add166 = add i32 %66, 6658
  %call167 = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %add166, i32 noundef 0) #12
  %and173 = and i32 %call167, -257
  %masksel = select i1 %bypass_lut.0.off0, i32 256, i32 0
  %tmp2.0 = or i32 %and173, %masksel
  %67 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %crtc_offset, align 8
  %add177 = add i32 %68, 6658
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add177, i32 noundef %tmp2.0, i32 noundef 0) #12
  br i1 %bypass_lut.0.off0, label %if.then179, label %if.end133.if.end180_crit_edge

if.end133.if.end180_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

if.then179:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.39) #12
  br label %if.end180

if.end180:                                        ; preds = %if.then179, %if.end133.if.end180_crit_edge
  %69 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %crtc_offset, align 8
  %add182 = add i32 %70, 6665
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add182, i32 noundef 0, i32 noundef 0) #12
  %71 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %crtc_offset, align 8
  %add184 = add i32 %72, 6666
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add184, i32 noundef 0, i32 noundef 0) #12
  %73 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %crtc_offset, align 8
  %add186 = add i32 %74, 6667
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add186, i32 noundef 0, i32 noundef 0) #12
  %75 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %crtc_offset, align 8
  %add188 = add i32 %76, 6668
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add188, i32 noundef 0, i32 noundef 0) #12
  %77 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %crtc_offset, align 8
  %add190 = add i32 %78, 6669
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 9
  %79 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %width, align 8
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add190, i32 noundef %80, i32 noundef 0) #12
  %81 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %crtc_offset, align 8
  %add192 = add i32 %82, 6670
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 10
  %83 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %height, align 4
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add192, i32 noundef %84, i32 noundef 0) #12
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 6
  %85 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pitches, align 8
  %87 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %format, align 8
  %89 = getelementptr inbounds %struct.drm_format_info, ptr %88, i32 0, i32 3
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 2
  %conv196 = zext i8 %91 to i32
  %div = udiv i32 %86, %conv196
  %92 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %crtc_offset, align 8
  %add198 = add i32 %93, 6662
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add198, i32 noundef %div, i32 noundef 0) #12
  %94 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %crtc, align 8
  %add.ptr.i.i374 = getelementptr i8, ptr %95, i32 -8
  %96 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %crtc_offset, align 8
  %add.i = add i32 %97, 6656
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i374, i32 noundef %add.i, i32 noundef 1, i32 noundef 0) #12
  %98 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %crtc_offset, align 8
  %add200 = add i32 %99, 6851
  %100 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %height, align 4
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add200, i32 noundef %101, i32 noundef 0) #12
  %and203 = and i32 %y, -2
  %102 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %crtc_offset, align 8
  %add205 = add i32 %103, 7004
  %and202 = shl i32 %x, 16
  %shl206 = and i32 %and202, -262144
  %or207 = or i32 %shl206, %and203
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add205, i32 noundef %or207, i32 noundef 0) #12
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %104 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %hdisplay, align 4
  %conv208 = zext i16 %105 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %106 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %vdisplay, align 2
  %conv210 = zext i16 %107 to i32
  %add211 = add nuw nsw i32 %conv210, 1
  %and212 = and i32 %add211, 131070
  %108 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %crtc_offset, align 8
  %add214 = add i32 %109, 7005
  %shl215 = shl nuw i32 %conv208, 16
  %or216 = or i32 %and212, %shl215
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add214, i32 noundef %or216, i32 noundef 0) #12
  %110 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %crtc_offset, align 8
  %add218 = add i32 %111, 7102
  call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %add218, i32 noundef 0, i32 noundef 0) #12
  %tobool221.not = icmp ne ptr %fb, null
  %112 = and i1 %tobool221.not, %tobool.not
  br i1 %112, label %land.lhs.true222, label %if.end180.if.end244_crit_edge

if.end180.if.end244_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244

land.lhs.true222:                                 ; preds = %if.end180
  %primary223 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %113 = ptrtoint ptr %primary223 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %primary223, align 4
  %fb224 = getelementptr inbounds %struct.drm_plane, ptr %114, i32 0, i32 12
  %115 = ptrtoint ptr %fb224 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fb224, align 4
  %cmp225.not = icmp eq ptr %116, %fb
  br i1 %cmp225.not, label %land.lhs.true222.if.end244_crit_edge, label %if.then227

land.lhs.true222.if.end244_crit_edge:             ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244

if.then227:                                       ; preds = %land.lhs.true222
  %obj229 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %117 = ptrtoint ptr %obj229 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %obj229, align 4
  %add.ptr232 = getelementptr i8, ptr %118, i32 -72
  %bdev.i375 = getelementptr i8, ptr %118, i32 352
  %119 = ptrtoint ptr %bdev.i375 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bdev.i375, align 8
  %resv32.i.i377 = getelementptr i8, ptr %118, i32 200
  %121 = ptrtoint ptr %resv32.i.i377 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %resv32.i.i377, align 8
  %call.i1.i.i = call i32 @ww_mutex_lock(ptr noundef %122, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i378 = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i379 = select i1 %cmp.i.i378, i32 -512, i32 %call.i1.i.i
  %123 = zext i32 %.ret.0.i.i379 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %.ret.0.i.i379, label %do.end.i380 [
    i32 0, label %if.end243
    i32 -512, label %if.then227.cleanup_crit_edge
  ], !prof !154

if.then227.cleanup_crit_edge:                     ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i380:                                      ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i376 = getelementptr i8, ptr %120, i32 -17736
  %124 = ptrtoint ptr %add.ptr.i.i376 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %add.ptr.i.i376, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.28, ptr noundef %add.ptr232) #16
  br label %cleanup

if.end243:                                        ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_bo_unpin(ptr noundef %add.ptr232) #12
  %126 = ptrtoint ptr %bdev.i375 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bdev.i375, align 8
  %lru_lock.i.i.i384 = getelementptr inbounds %struct.ttm_device, ptr %127, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i384) #12
  %resource.i.i.i385 = getelementptr i8, ptr %118, i32 372
  %128 = ptrtoint ptr %resource.i.i.i385 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %resource.i.i.i385, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %118, ptr noundef %129, ptr noundef null) #12
  %130 = ptrtoint ptr %bdev.i375 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bdev.i375, align 8
  %lru_lock2.i.i.i386 = getelementptr inbounds %struct.ttm_device, ptr %131, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i386) #12
  %132 = ptrtoint ptr %resv32.i.i377 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %resv32.i.i377, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %133) #12
  call void @ww_mutex_unlock(ptr noundef %133) #12
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %land.lhs.true222.if.end244_crit_edge, %if.end180.if.end244_crit_edge
  call void @dce_v11_0_bandwidth_update(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end244, %do.end.i380, %if.then227.cleanup_crit_edge, %sw.default, %if.then29, %do.end.i, %if.end9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %if.end244 ], [ -22, %if.then29 ], [ 0, %if.then ], [ %.ret.0.i.i, %do.end.i ], [ %.ret.0.i.i379, %do.end.i380 ], [ %.ret.0.i.i, %if.end9.cleanup_crit_edge ], [ %.ret.0.i.i379, %if.then227.cleanup_crit_edge ]
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
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_powergate_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_init_dig(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_crtc_set_dce_clock(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_crtc_set_disp_eng_pll(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90, !91, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133, !134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @dce_v11_0_ip_block, !1, !"dce_v11_0_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3768, i32 38}
!2 = !{ptr @dce_v11_2_ip_block, !3, !"dce_v11_2_ip_block", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3777, i32 38}
!4 = !{ptr @crtc_offsets, !5, !"crtc_offsets", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 53, i32 18}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3435, i32 10}
!8 = !{ptr @dce_v11_0_ip_funcs, !9, !"dce_v11_0_ip_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3434, i32 34}
!10 = !{ptr @dce_v11_0_display_funcs, !11, !"dce_v11_0_display_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3719, i32 42}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 646, i32 4}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1107, i32 4}
!16 = !{ptr @hpd_offsets, !17, !"hpd_offsets", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 64, i32 18}
!18 = !{ptr @dce_v11_0_encoder_funcs, !19, !"dce_v11_0_encoder_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3605, i32 39}
!20 = !{ptr @dce_v11_0_dac_helper_funcs, !21, !"dce_v11_0_dac_helper_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3586, i32 46}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2251, i32 3}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1815, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1659, i32 3}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1665, i32 3}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1671, i32 3}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1755, i32 3}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1761, i32 3}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1233, i32 2}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1325, i32 3}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1331, i32 3}
!44 = !{ptr @dce_v11_0_audio_write_sad_regs.eld_reg_to_type, !45, !"eld_reg_to_type", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1367, i32 19}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1401, i32 3}
!48 = !{ptr @dce_v11_0_dig_helper_funcs, !49, !"dce_v11_0_dig_helper_funcs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3576, i32 46}
!50 = !{ptr @dce_v11_0_ext_helper_funcs, !51, !"dce_v11_0_ext_helper_funcs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3567, i32 46}
!52 = !{ptr @dce_v11_0_crtc_irq_funcs, !53, !"dce_v11_0_crtc_irq_funcs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3738, i32 42}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3108, i32 3}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3372, i32 4}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3377, i32 3}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3386, i32 3}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3390, i32 3}
!64 = !{ptr @interrupt_status_offsets, !65, !"interrupt_status_offsets", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 92, i32 3}
!66 = !{ptr @dce_v11_0_pageflip_irq_funcs, !67, !"dce_v11_0_pageflip_irq_funcs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3743, i32 42}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3245, i32 3}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3289, i32 3}
!72 = !{ptr @dce_v11_0_hpd_irq_funcs, !73, !"dce_v11_0_hpd_irq_funcs", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3748, i32 42}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3167, i32 3}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3416, i32 3}
!78 = !{ptr @dce_v11_0_crtc_funcs, !79, !"dce_v11_0_crtc_funcs", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2562, i32 36}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2466, i32 3}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2472, i32 3}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2486, i32 3}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!88 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @amdgpu_bo_reserve._entry, !87, !"_entry", i1 false, i1 false}
!93 = !{ptr @amdgpu_bo_reserve._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2413, i32 2}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2161, i32 2}
!100 = !{ptr @dce_v11_0_crtc_helper_funcs, !101, !"dce_v11_0_crtc_helper_funcs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2784, i32 43}
!102 = !{ptr @vga_control_regs, !103, !"vga_control_regs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1854, i32 18}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2343, i32 3}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1910, i32 3}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2025, i32 3}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2092, i32 3}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 2644, i32 4}
!114 = !{ptr @dig_offsets, !115, !"dig_offsets", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 74, i32 23}
!116 = !{ptr @pin_offsets, !117, !"pin_offsets", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 1452, i32 18}
!118 = !{ptr @cz_mgcg_cgcg_init, !119, !"cz_mgcg_cgcg_init", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 130, i32 18}
!120 = !{ptr @cz_golden_settings_a11, !121, !"cz_golden_settings_a11", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 124, i32 18}
!122 = !{ptr @stoney_golden_settings_a11, !123, !"stoney_golden_settings_a11", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 136, i32 18}
!124 = !{ptr @polaris11_golden_settings_a11, !125, !"polaris11_golden_settings_a11", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 142, i32 18}
!126 = !{ptr @polaris10_golden_settings_a11, !127, !"polaris10_golden_settings_a11", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 151, i32 18}
!128 = !{ptr @.str.41, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/dce_v11_0.c", i32 3085, i32 3}
!130 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @dce_v11_0_soft_reset._entry, !129, !"_entry", i1 false, i1 false}
!134 = !{ptr @dce_v11_0_soft_reset._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i8 0, i8 2}
!145 = !{!"auto-init"}
!146 = !{!"branch_weights", i32 2000, i32 1}
!147 = !{i64 2149112940, i64 2149113220, i64 2149113554, i64 2149113888}
!148 = !{i64 1627109, i64 1627136}
!149 = !{i64 1627804, i64 1627831, i64 1627864, i64 1627885, i64 1627912, i64 1627938}
!150 = !{i64 1627279, i64 1627306}
!151 = !{i64 1627619, i64 1627646, i64 1627680, i64 1627701}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{i64 2162988661, i64 2162989165, i64 2162988698, i64 2162988754, i64 2162988788, i64 2162988812, i64 2162988853, i64 2162988874, i64 2162988902, i64 2162988936}
!154 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!155 = !{i64 2148811901}
!156 = !{i64 2148726341, i64 2148726373, i64 2148726402, i64 2148726436, i64 2148726467, i64 2148726490}
!157 = !{i64 2150183792}
