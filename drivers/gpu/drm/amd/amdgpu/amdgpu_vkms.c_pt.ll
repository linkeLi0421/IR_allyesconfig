; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mode_size = type { i32, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.100, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.99], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.99 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.96] }
%struct.anon.96 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.100 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.111, i32, i32, i32, i32 }
%union.anon.111 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_vkms_output = type { %struct.amdgpu_crtc, %struct.drm_encoder, %struct.drm_connector, i64, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.amdgpu_framebuffer = type { %struct.drm_framebuffer, i64, i8, i64 }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@amdgpu_vkms_mode_funcs = dso_local constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @amdgpu_display_user_framebuffer_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@amdgpu_vkms_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr null, ptr null, ptr @amdgpu_vkms_sw_init, ptr @amdgpu_vkms_sw_fini, ptr null, ptr @amdgpu_vkms_hw_init, ptr @amdgpu_vkms_hw_fini, ptr null, ptr @amdgpu_vkms_suspend, ptr @amdgpu_vkms_resume, ptr @amdgpu_vkms_is_idle, ptr @amdgpu_vkms_wait_for_idle, ptr null, ptr null, ptr @amdgpu_vkms_soft_reset, ptr null, ptr @amdgpu_vkms_set_clockgating_state, ptr @amdgpu_vkms_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@amdgpu_vkms_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 5, i32 1, i32 0, i32 0, ptr @amdgpu_vkms_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amdgpu_vkms\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@amdgpu_vkms_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to init connector\0A\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_vkms_conn_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @amdgpu_vkms_conn_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to init encoder\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to attach connector to encoder\0A\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_vkms_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@amdgpu_vkms_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875713112], [28 x i8] zeroinitializer }, align 32
@amdgpu_vkms_primary_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @amdgpu_vkms_prepare_fb, ptr @amdgpu_vkms_cleanup_fb, ptr @amdgpu_vkms_plane_atomic_check, ptr @amdgpu_vkms_plane_atomic_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No FB bound\0A\00", [19 x i8] zeroinitializer }, align 32
@amdgpu_vkms_prepare_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 327, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: fail to reserve bo (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_vkms_prepare_fb\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_vkms_prepare_fb._entry_ptr = internal global ptr @amdgpu_vkms_prepare_fb._entry, section ".printk_index", align 4
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to pin framebuffer with error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%p bind failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to reserve rbo before unpin\0A\00", [60 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 179, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@amdgpu_vkms_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_vkms_enable_vblank, ptr @amdgpu_vkms_disable_vblank, ptr @amdgpu_vkms_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to init CRTC\0A\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_vkms_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_vkms_crtc_atomic_flush, ptr @amdgpu_vkms_crtc_atomic_enable, ptr @amdgpu_vkms_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_vkms_vblank_simulate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.7, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014[drm] %s: vblank timer overrun\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu_vkms_vblank_simulate\00", [36 x i8] zeroinitializer }, align 32
@amdgpu_vkms_vblank_simulate._entry_ptr = internal global ptr @amdgpu_vkms_vblank_simulate._entry, section ".printk_index", align 4
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu_vkms failure on handling vblank\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_vkms_conn_get_modes.common_modes = internal constant { [22 x %struct.mode_size], [48 x i8] } { [22 x %struct.mode_size] [%struct.mode_size { i32 640, i32 480 }, %struct.mode_size { i32 720, i32 480 }, %struct.mode_size { i32 800, i32 600 }, %struct.mode_size { i32 848, i32 480 }, %struct.mode_size { i32 1024, i32 768 }, %struct.mode_size { i32 1152, i32 768 }, %struct.mode_size { i32 1280, i32 720 }, %struct.mode_size { i32 1280, i32 800 }, %struct.mode_size { i32 1280, i32 854 }, %struct.mode_size { i32 1280, i32 960 }, %struct.mode_size { i32 1280, i32 1024 }, %struct.mode_size { i32 1440, i32 900 }, %struct.mode_size { i32 1400, i32 1050 }, %struct.mode_size { i32 1680, i32 1050 }, %struct.mode_size { i32 1600, i32 1200 }, %struct.mode_size { i32 1920, i32 1080 }, %struct.mode_size { i32 1920, i32 1200 }, %struct.mode_size { i32 2560, i32 1440 }, %struct.mode_size { i32 4096, i32 3112 }, %struct.mode_size { i32 3656, i32 2664 }, %struct.mode_size { i32 3840, i32 2160 }, %struct.mode_size { i32 4096, i32 2160 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"amdgpu_vkms_mode_funcs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 473, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"amdgpu_vkms_ip_funcs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 636, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"amdgpu_vkms_ip_block\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 653, i32 38 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 637, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [28 x i8] c"amdgpu_vkms_connector_funcs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 198, i32 41 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 435, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [30 x i8] c"amdgpu_vkms_conn_helper_funcs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 249, i32 48 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 443, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 450, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [24 x i8] c"amdgpu_vkms_plane_funcs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 253, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"amdgpu_vkms_formats\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 40, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant [33 x i8] c"amdgpu_vkms_primary_helper_funcs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 382, i32 44 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 312, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 327, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 339, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 348, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 373, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 179, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [23 x i8] c"amdgpu_vkms_crtc_funcs\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 120, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 178, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [30 x i8] c"amdgpu_vkms_crtc_helper_funcs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 162, i32 43 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 55, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 59, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"common_modes\00", align 1
@___asan_gen_.123 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 214, i32 4 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_vkms_prepare_fb._entry, ptr @amdgpu_vkms_prepare_fb._entry_ptr, ptr @amdgpu_vkms_vblank_simulate._entry, ptr @amdgpu_vkms_vblank_simulate._entry_ptr, ptr @amdgpu_vkms_mode_funcs, ptr @amdgpu_vkms_ip_funcs, ptr @amdgpu_vkms_ip_block, ptr @.str, ptr @amdgpu_vkms_connector_funcs, ptr @.str.1, ptr @amdgpu_vkms_conn_helper_funcs, ptr @.str.2, ptr @.str.3, ptr @amdgpu_vkms_plane_funcs, ptr @amdgpu_vkms_formats, ptr @amdgpu_vkms_primary_helper_funcs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @amdgpu_vkms_crtc_funcs, ptr @.str.17, ptr @amdgpu_vkms_crtc_helper_funcs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @amdgpu_vkms_conn_get_modes.common_modes], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_mode_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_conn_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_primary_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_prepare_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_vblank_simulate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vkms_conn_get_modes.common_modes to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_display_user_framebuffer_create(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vkms_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 2680) #8
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !72

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %amdgpu_vkms_output63 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 78
  %4 = ptrtoint ptr %amdgpu_vkms_output63 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %amdgpu_vkms_output63, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #11
  %amdgpu_vkms_output = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 78
  %6 = ptrtoint ptr %amdgpu_vkms_output to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %amdgpu_vkms_output, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  %max_vblank_count = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 26
  %7 = ptrtoint ptr %max_vblank_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %max_vblank_count, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 27
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @amdgpu_vkms_mode_funcs, ptr %funcs, align 4
  %max_width = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 25
  %9 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16384, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 26
  %10 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16384, ptr %max_height, align 4
  %preferred_depth = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 91
  %11 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 24, ptr %preferred_depth, align 4
  %prefer_shadow = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 92
  %12 = ptrtoint ptr %prefer_shadow to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %prefer_shadow, align 4
  %aper_base = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 1
  %13 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aper_base, align 4
  %fb_base = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2, i32 30, i32 28
  %15 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %fb_base, align 4
  %call14 = tail call i32 @amdgpu_display_modeset_create_props(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %16 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp102 = icmp sgt i32 %17, 0
  br i1 %cmp102, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %amdgpu_vkms_output_init.exit.thread.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %amdgpu_vkms_output_init.exit.thread.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %18 = ptrtoint ptr %amdgpu_vkms_output to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %amdgpu_vkms_output, align 4
  %arrayidx = getelementptr %struct.amdgpu_vkms_output, ptr %19, i32 %i.0103
  %connector1.i = getelementptr %struct.amdgpu_vkms_output, ptr %19, i32 %i.0103, i32 2
  %encoder2.i = getelementptr %struct.amdgpu_vkms_output, ptr %19, i32 %i.0103, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 528) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.amdgpu_vkms_output_init.exit_crit_edge, label %if.end.i.i59

for.body.amdgpu_vkms_output_init.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_vkms_output_init.exit

if.end.i.i59:                                     ; preds = %for.body
  %shl.i.i = shl nuw i32 1, %i.0103
  %call2.i.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %ddev.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %shl.i.i, ptr noundef nonnull @amdgpu_vkms_plane_funcs, ptr noundef nonnull @amdgpu_vkms_formats, i32 noundef 1, ptr noundef null, i32 noundef 1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end6.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  %21 = inttoptr i32 %call2.i.i to ptr
  br label %amdgpu_vkms_plane_init.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i59
  call void @__sanitizer_cov_trace_pc() #10
  %helper_private.i.i.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i.i.i, i32 0, i32 18
  %22 = ptrtoint ptr %helper_private.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @amdgpu_vkms_primary_helper_funcs, ptr %helper_private.i.i.i, align 8
  br label %amdgpu_vkms_plane_init.exit.i

amdgpu_vkms_plane_init.exit.i:                    ; preds = %if.end6.i.i, %if.then4.i.i
  %retval.0.i.i60 = phi ptr [ %21, %if.then4.i.i ], [ %call7.i.i.i.i, %if.end6.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %amdgpu_vkms_plane_init.exit.i.amdgpu_vkms_output_init.exit_crit_edge, label %if.end.i

amdgpu_vkms_plane_init.exit.i.amdgpu_vkms_output_init.exit_crit_edge: ; preds = %amdgpu_vkms_plane_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_vkms_output_init.exit

if.end.i:                                         ; preds = %amdgpu_vkms_plane_init.exit.i
  %call1.i.i = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %ddev.i, ptr noundef %arrayidx, ptr noundef %retval.0.i.i60, ptr noundef null, ptr noundef nonnull @amdgpu_vkms_crtc_funcs, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i47.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i47.i, label %if.end8.i, label %amdgpu_vkms_crtc_init.exit.i

amdgpu_vkms_crtc_init.exit.i:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #8
  br label %amdgpu_vkms_output_init.exit.thread72

if.end8.i:                                        ; preds = %if.end.i
  %helper_private.i.i48.i = getelementptr inbounds %struct.drm_crtc, ptr %arrayidx, i32 0, i32 19
  %23 = ptrtoint ptr %helper_private.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @amdgpu_vkms_crtc_helper_funcs, ptr %helper_private.i.i48.i, align 8
  %index.i.i.i = getelementptr inbounds %struct.drm_crtc, ptr %arrayidx, i32 0, i32 8
  %24 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i.i.i, align 4
  %crtc_id.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %arrayidx, i32 0, i32 1
  %26 = ptrtoint ptr %crtc_id.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %crtc_id.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 3, i32 %25
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx, ptr %arrayidx.i.i, align 4
  %pll_id.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %arrayidx, i32 0, i32 21
  %28 = ptrtoint ptr %pll_id.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 255, ptr %pll_id.i.i, align 8
  %encoder.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %arrayidx, i32 0, i32 33
  %29 = ptrtoint ptr %encoder.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %encoder.i.i, align 8
  %connector.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %arrayidx, i32 0, i32 34
  %30 = ptrtoint ptr %connector.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %connector.i.i, align 4
  %vsync_timer_enabled.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %arrayidx, i32 0, i32 41
  %31 = ptrtoint ptr %vsync_timer_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %vsync_timer_enabled.i.i, align 8
  %vblank_timer.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %arrayidx, i32 0, i32 40
  tail call void @hrtimer_init(ptr noundef %vblank_timer.i.i, i32 noundef 1, i32 noundef 1) #8
  %function.i.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %arrayidx, i32 0, i32 40, i32 2
  %32 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @amdgpu_vkms_vblank_simulate, ptr %function.i.i, align 8
  %call9.i = tail call i32 @drm_connector_init(ptr noundef %ddev.i, ptr noundef %connector1.i, ptr noundef nonnull @amdgpu_vkms_connector_funcs, i32 noundef 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #8
  br label %err_connector.i

if.end12.i:                                       ; preds = %if.end8.i
  %helper_private.i.i = getelementptr %struct.amdgpu_vkms_output, ptr %19, i32 %i.0103, i32 2, i32 35
  %33 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @amdgpu_vkms_conn_helper_funcs, ptr %helper_private.i.i, align 4
  %call13.i = tail call i32 @drm_simple_encoder_init(ptr noundef %ddev.i, ptr noundef %encoder2.i, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #8
  br label %err_encoder.i

if.end16.i:                                       ; preds = %if.end12.i
  %possible_crtcs.i = getelementptr %struct.amdgpu_vkms_output, ptr %19, i32 %i.0103, i32 1, i32 6
  %34 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl.i.i, ptr %possible_crtcs.i, align 4
  %call17.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector1.i, ptr noundef %encoder2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %amdgpu_vkms_output_init.exit.thread, label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #8
  tail call void @drm_encoder_cleanup(ptr noundef %encoder2.i) #8
  br label %err_encoder.i

amdgpu_vkms_output_init.exit.thread:              ; preds = %if.end16.i
  tail call void @drm_mode_config_reset(ptr noundef %ddev.i) #8
  %inc = add nuw nsw i32 %i.0103, 1
  %35 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_crtc, align 8
  %cmp = icmp slt i32 %inc, %36
  br i1 %cmp, label %amdgpu_vkms_output_init.exit.thread.for.body_crit_edge, label %amdgpu_vkms_output_init.exit.thread.for.end_crit_edge

amdgpu_vkms_output_init.exit.thread.for.end_crit_edge: ; preds = %amdgpu_vkms_output_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

amdgpu_vkms_output_init.exit.thread.for.body_crit_edge: ; preds = %amdgpu_vkms_output_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_encoder.i:                                    ; preds = %if.then19.i, %if.then15.i
  %ret.0.i = phi i32 [ %call13.i, %if.then15.i ], [ %call17.i, %if.then19.i ]
  tail call void @drm_connector_cleanup(ptr noundef %connector1.i) #8
  br label %err_connector.i

err_connector.i:                                  ; preds = %err_encoder.i, %if.then11.i
  %ret.1.i = phi i32 [ %call9.i, %if.then11.i ], [ %ret.0.i, %err_encoder.i ]
  tail call void @drm_crtc_cleanup(ptr noundef %arrayidx) #8
  br label %amdgpu_vkms_output_init.exit.thread72

amdgpu_vkms_output_init.exit.thread72:            ; preds = %err_connector.i, %amdgpu_vkms_crtc_init.exit.i
  %ret.2.i = phi i32 [ %call1.i.i, %amdgpu_vkms_crtc_init.exit.i ], [ %ret.1.i, %err_connector.i ]
  tail call void @drm_plane_cleanup(ptr noundef %retval.0.i.i60) #8
  br label %cleanup

amdgpu_vkms_output_init.exit:                     ; preds = %amdgpu_vkms_plane_init.exit.i.amdgpu_vkms_output_init.exit_crit_edge, %for.body.amdgpu_vkms_output_init.exit_crit_edge
  %retval.0.i52.i = phi ptr [ %retval.0.i.i60, %amdgpu_vkms_plane_init.exit.i.amdgpu_vkms_output_init.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.body.amdgpu_vkms_output_init.exit_crit_edge ]
  %37 = ptrtoint ptr %retval.0.i52.i to i32
  br label %cleanup

for.end:                                          ; preds = %amdgpu_vkms_output_init.exit.thread.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @drm_kms_helper_poll_init(ptr noundef %ddev.i) #8
  %mode_config_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 2
  %38 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %mode_config_initialized, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %amdgpu_vkms_output_init.exit, %amdgpu_vkms_output_init.exit.thread72, %if.end.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %call14, %if.end.cleanup_crit_edge ], [ %37, %amdgpu_vkms_output_init.exit ], [ -12, %kcalloc.exit.thread ], [ %ret.2.i, %amdgpu_vkms_output_init.exit.thread72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vkms_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20 = icmp sgt i32 %1, 0
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 3, i32 %i.021
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %vblank_timer = getelementptr inbounds %struct.amdgpu_crtc, ptr %3, i32 0, i32 40
  %call = tail call i32 @hrtimer_cancel(ptr noundef %vblank_timer) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %4 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc, align 8
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  tail call void @drm_kms_helper_poll_fini(ptr noundef %ddev.i) #8
  tail call void @drm_mode_config_cleanup(ptr noundef %ddev.i) #8
  %mode_config_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 2
  %6 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mode_config_initialized, align 8
  %bios_hardcoded_edid = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 14
  %7 = ptrtoint ptr %bios_hardcoded_edid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios_hardcoded_edid, align 8
  tail call void @kfree(ptr noundef %8) #8
  %amdgpu_vkms_output = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 78
  %9 = ptrtoint ptr %amdgpu_vkms_output to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %amdgpu_vkms_output, align 4
  tail call void @kfree(ptr noundef %10) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vkms_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge9
    i32 2, label %entry.sw.bb_crit_edge10
    i32 3, label %entry.sw.bb_crit_edge11
    i32 5, label %entry.sw.bb1_crit_edge
    i32 8, label %entry.sw.bb1_crit_edge12
    i32 6, label %entry.sw.bb1_crit_edge13
    i32 7, label %entry.sw.bb1_crit_edge14
    i32 9, label %entry.sw.bb1_crit_edge15
    i32 12, label %entry.sw.bb2_crit_edge
    i32 11, label %entry.sw.bb2_crit_edge16
    i32 13, label %entry.sw.bb3_crit_edge
    i32 14, label %entry.sw.bb3_crit_edge17
    i32 15, label %entry.sw.bb3_crit_edge18
    i32 16, label %entry.sw.bb3_crit_edge19
    i32 18, label %entry.sw.bb3_crit_edge20
  ]

entry.sw.bb3_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb2_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11
  tail call void @dce_v6_0_disable_dce(ptr noundef %handle) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge12, %entry.sw.bb1_crit_edge13, %entry.sw.bb1_crit_edge14, %entry.sw.bb1_crit_edge15
  tail call void @dce_v8_0_disable_dce(ptr noundef %handle) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge16
  tail call void @dce_v10_0_disable_dce(ptr noundef %handle) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge17, %entry.sw.bb3_crit_edge18, %entry.sw.bb3_crit_edge19, %entry.sw.bb3_crit_edge20
  tail call void @dce_v11_0_disable_dce(ptr noundef %handle) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amdgpu_vkms_hw_fini(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vkms_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %ddev.i) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vkms_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_vkms_hw_init(ptr noundef %handle)
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  %call2 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %ddev.i) #8
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @amdgpu_vkms_is_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amdgpu_vkms_wait_for_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amdgpu_vkms_soft_reset(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amdgpu_vkms_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amdgpu_vkms_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_modeset_create_props(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vkms_prepare_fb(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %new_state) #1 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  %tv = alloca %struct.ttm_validate_buffer, align 8
  %ticket = alloca %struct.ww_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv) #8
  %1 = getelementptr inbounds %struct.list_head, ptr %tv, i32 0, i32 1
  %2 = ptrtoint ptr %tv to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tv, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ticket) #8
  %3 = call ptr @memset(ptr %ticket, i32 255, i32 64)
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 2
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %tv, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %tv, i32 0, i32 1
  %obj3 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %obj3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %obj3, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 -72
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -17736
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %list, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %0, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %7, align 8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %tv, ptr noundef nonnull %list, ptr noundef nonnull %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tv, ptr %0, align 4
  %17 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %tv, align 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %1, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %tv, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %call8 = call i32 @ttm_eu_reserve_buffers(ptr noundef nonnull %ticket, ptr noundef nonnull %list, i1 noundef zeroext false, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end

do.end:                                           ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.5, i32 noundef %call8) #13
  br label %cleanup

if.end11:                                         ; preds = %list_add.exit
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.not = icmp eq i32 %23, 2
  br i1 %cmp.not, label %if.end11.if.end14_crit_edge, label %if.then12

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr i8, ptr %9, i32 432
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %flags, align 8
  %call13 = call i32 @amdgpu_display_supported_domains(ptr noundef %add.ptr.i, i64 noundef %25) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end11.if.end14_crit_edge
  %domain.0 = phi i32 [ %call13, %if.then12 ], [ 4, %if.end11.if.end14_crit_edge ]
  %call15 = call i32 @amdgpu_bo_pin(ptr noundef %add.ptr6, i32 noundef %domain.0) #8
  %26 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call15, label %if.then21 [
    i32 0, label %if.end23
    i32 -512, label %if.end14.if.end22_crit_edge
  ], !prof !73

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %call15) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end14.if.end22_crit_edge
  call void @ttm_eu_backoff_reservation(ptr noundef nonnull %ticket, ptr noundef nonnull %list) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %call25 = call i32 @amdgpu_ttm_alloc_gart(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end34, label %if.then33, !prof !74

if.then33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_bo_unpin(ptr noundef %add.ptr6) #8
  call void @ttm_eu_backoff_reservation(ptr noundef nonnull %ticket, ptr noundef nonnull %list) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, ptr noundef %add.ptr6) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @ttm_eu_backoff_reservation(ptr noundef nonnull %ticket, ptr noundef nonnull %list) #8
  %call35 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %add.ptr6) #8
  %address = getelementptr inbounds %struct.amdgpu_framebuffer, ptr %5, i32 0, i32 3
  %27 = ptrtoint ptr %address to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call35, ptr %address, align 8
  %call36 = call ptr @amdgpu_bo_ref(ptr noundef %add.ptr6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then33, %if.end22, %do.end, %if.then
  %retval.0 = phi i32 [ %call8, %do.end ], [ %call15, %if.end22 ], [ %call25, %if.then33 ], [ 0, %if.end34 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ticket) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_vkms_cleanup_fb(ptr nocapture noundef readnone %plane, ptr nocapture noundef readonly %old_state) #1 align 64 {
entry:
  %rbo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbo) #8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %obj, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -72
  %4 = ptrtoint ptr %rbo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %rbo, align 4
  %bdev.i = getelementptr i8, ptr %3, i32 352
  %5 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr i8, ptr %3, i32 200
  %7 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %8, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %9 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end6
    i32 -512, label %if.end.if.then5_crit_edge
  ], !prof !73

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -17736
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef %add.ptr) #13
  br label %if.then5

if.then5:                                         ; preds = %do.end.i, %if.end.if.then5_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %rbo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rbo, align 4
  tail call void @amdgpu_bo_unpin(ptr noundef %13) #8
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %13, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %13, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %15, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #8
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %13, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %17, ptr noundef null) #8
  %18 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #8
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %13, i32 0, i32 4, i32 0, i32 9
  %20 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %21) #8
  tail call void @ww_mutex_unlock(ptr noundef %21) #8
  call void @amdgpu_bo_unref(ptr noundef nonnull %rbo) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbo) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vkms_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %do.end, label %if.end24, !prof !72

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 276, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %call26 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %9) #8
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %call31 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %call26, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp.not = icmp eq i32 %call31, 0
  br i1 %cmp.not, label %if.end33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %11 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %visible, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool34.not = icmp eq i8 %12, 0
  %. = select i1 %tobool34.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end30.cleanup_crit_edge, %if.then28, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then28 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %., %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amdgpu_vkms_plane_atomic_update(ptr nocapture noundef %plane, ptr nocapture noundef %old_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_eu_reserve_buffers(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_supported_domains(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_pin(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_eu_backoff_reservation(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_alloc_gart(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unpin(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_bo_ref(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vkms_vblank_simulate(ptr noundef %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -1488
  %period_ns = getelementptr i8, ptr %timer, i32 1176
  %0 = ptrtoint ptr %period_ns to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %period_ns, align 8
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %5() #8
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i, i64 noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call1.i)
  %cmp.not = icmp eq i64 %call1.i, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call6 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %add.ptr) #8
  br i1 %call6, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vkms_enable_vblank(ptr noundef %crtc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %vblank2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %vblank2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vblank2, align 4
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12
  tail call void @drm_calc_timestamping_constants(ptr noundef %crtc, ptr noundef %mode) #8
  %framedur_ns = getelementptr %struct.drm_vblank_crtc, ptr %5, i32 %3, i32 11
  %6 = ptrtoint ptr %framedur_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %framedur_ns, align 4
  %conv.i = zext i32 %7 to i64
  %period_ns = getelementptr inbounds %struct.amdgpu_vkms_output, ptr %crtc, i32 0, i32 3
  %8 = ptrtoint ptr %period_ns to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv.i, ptr %period_ns, align 8
  %vblank_timer = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 40
  tail call void @hrtimer_start_range_ns(ptr noundef %vblank_timer, i64 noundef %conv.i, i64 noundef 0, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_vkms_disable_vblank(ptr noundef %crtc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vblank_timer = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 40
  %call = tail call i32 @hrtimer_cancel(ptr noundef %vblank_timer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @amdgpu_vkms_get_vblank_timestamp(ptr noundef %crtc, ptr nocapture noundef readnone %max_error, ptr nocapture noundef %vblank_time, i1 noundef zeroext %in_vblank_irq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %vblank2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %vblank2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vblank2, align 4
  %enabled = getelementptr %struct.drm_vblank_crtc, ptr %5, i32 %3, i32 14
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %enabled, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i64 @ktime_get() #8
  %8 = ptrtoint ptr %vblank_time to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call, ptr %vblank_time, align 8
  br label %cleanup

do.end11:                                         ; preds = %entry
  %expires = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 40, i32 0, i32 1
  %9 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load volatile i64, ptr %expires, align 8
  %11 = ptrtoint ptr %vblank_time to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %vblank_time, align 8
  %time = getelementptr %struct.drm_vblank_crtc, ptr %5, i32 %3, i32 5
  %12 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %13)
  %cmp = icmp eq i64 %10, %13
  br i1 %cmp, label %do.end24, label %if.end40, !prof !72

do.end24:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 105, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end40:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %period_ns = getelementptr inbounds %struct.amdgpu_vkms_output, ptr %crtc, i32 0, i32 3
  %14 = ptrtoint ptr %period_ns to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %period_ns, align 8
  %sub = sub i64 %10, %15
  %16 = ptrtoint ptr %vblank_time to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub, ptr %vblank_time, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end24, %if.then
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_calc_timestamping_constants(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_vkms_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %do.body2

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.body2:                                         ; preds = %entry
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #8
  %call6 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %event13 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %event13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event13, align 4
  br i1 %cmp7.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %9) #8
  br label %if.end

if.else:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %event_lock15 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock15, i32 noundef %call3) #8
  %12 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state1, align 4
  %event17 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %event17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %event17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_vkms_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_vkms_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vkms_conn_get_modes(ptr noundef %connector) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [22 x %struct.mode_size], ptr @amdgpu_vkms_conn_get_modes.common_modes, i32 0, i32 %i.08
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %h = getelementptr [22 x %struct.mode_size], ptr @amdgpu_vkms_conn_get_modes.common_modes, i32 0, i32 %i.08, i32 1
  %4 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %h, align 4
  %call = tail call ptr @drm_cvt_mode(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call) #8
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_set_preferred_mode(ptr noundef %connector, i32 noundef 1024, i32 noundef 768) #8
  ret i32 22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_cvt_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_set_preferred_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_v6_0_disable_dce(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_v8_0_disable_dce(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_v10_0_disable_dce(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_v11_0_disable_dce(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @amdgpu_vkms_mode_funcs, !1, !"amdgpu_vkms_mode_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 473, i32 36}
!2 = !{ptr @amdgpu_vkms_ip_block, !3, !"amdgpu_vkms_ip_block", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 653, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 637, i32 10}
!6 = !{ptr @amdgpu_vkms_ip_funcs, !7, !"amdgpu_vkms_ip_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 636, i32 34}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 435, i32 3}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 443, i32 3}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 450, i32 3}
!14 = !{ptr @amdgpu_vkms_plane_funcs, !15, !"amdgpu_vkms_plane_funcs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 253, i32 37}
!16 = !{ptr @amdgpu_vkms_formats, !17, !"amdgpu_vkms_formats", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 40, i32 18}
!18 = !{ptr @amdgpu_vkms_primary_helper_funcs, !19, !"amdgpu_vkms_primary_helper_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 382, i32 44}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 312, i32 3}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 327, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @amdgpu_vkms_prepare_fb._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @amdgpu_vkms_prepare_fb._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 339, i32 4}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 348, i32 3}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 373, i32 3}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @amdgpu_bo_reserve._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @amdgpu_bo_reserve._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 178, i32 3}
!46 = !{ptr @amdgpu_vkms_crtc_funcs, !47, !"amdgpu_vkms_crtc_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 120, i32 36}
!48 = !{ptr @amdgpu_vkms_crtc_helper_funcs, !49, !"amdgpu_vkms_crtc_helper_funcs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 162, i32 43}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 55, i32 3}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @amdgpu_vkms_vblank_simulate._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @amdgpu_vkms_vblank_simulate._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 59, i32 3}
!57 = !{ptr @amdgpu_vkms_connector_funcs, !58, !"amdgpu_vkms_connector_funcs", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 198, i32 41}
!59 = !{ptr @amdgpu_vkms_conn_helper_funcs, !60, !"amdgpu_vkms_conn_helper_funcs", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 249, i32 48}
!61 = !{ptr @amdgpu_vkms_conn_get_modes.common_modes, !62, !"common_modes", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c", i32 214, i32 4}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i8 0, i8 2}
