; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_dp_mst_topology_cbs = type { ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.171, i32, i32, i32, i32 }
%union.anon.171 = type { %struct.anon.173 }
%struct.anon.173 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.amdgpu_dm_connector = type { %struct.drm_connector, i32, ptr, %struct.amdgpu_hpd, i32, ptr, ptr, ptr, %struct.drm_dp_mst_topology_mgr, %struct.amdgpu_dm_dp_aux, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.mutex, i8, i32, i32, i8, %struct.dsc_preferred_settings, %struct.drm_display_mode, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_dm_dp_aux = type { %struct.drm_dp_aux, ptr }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.dsc_preferred_settings = type { i32, i32, i32, i32, i8 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.104 }
%struct.anon.104 = type { i8 }
%struct.graphics_object_id = type { i32 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.143 }
%struct.anon.143 = type { i8 }
%union.max_lane_count = type { %struct.anon.144 }
%struct.anon.144 = type { i8 }
%union.max_down_spread = type { %struct.anon.145 }
%struct.anon.145 = type { i8 }
%union.dprx_feature = type { %struct.anon.146 }
%struct.anon.146 = type { i8 }
%union.sink_count = type { %struct.anon.147 }
%struct.anon.147 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.148 }
%struct.anon.148 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.149 }
%struct.anon.149 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
%struct.dpcd_dsc_support = type { i8 }
%struct.dpcd_dsc_algorithm_revision = type { i8 }
%struct.dpcd_dsc_rc_buffer_block_size = type { i8 }
%struct.dpcd_dsc_slice_capability1 = type { i8 }
%struct.dpcd_dsc_line_buffer_bit_depth = type { i8 }
%struct.dpcd_dsc_block_prediction_support = type { i8 }
%struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor = type { i8, i8, i8 }
%struct.dpcd_dsc_decoder_color_format_capabilities = type { i8 }
%struct.dpcd_dsc_decoder_color_depth_capabilities = type { i8 }
%struct.dpcd_peak_dsc_throughput_dsc_sink = type { i8 }
%struct.dpcd_dsc_slice_capabilities_2 = type { i8 }
%struct.dpcd_bits_per_pixel_increment = type { i8 }
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.150 }
%struct.anon.150 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.151 }
%struct.anon.151 = type { i8 }
%union.dpia_info = type { %struct.anon.152 }
%struct.anon.152 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.153 }
%struct.anon.153 = type { i8, i8, %struct.anon.154 }
%struct.anon.154 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.155 }
%struct.anon.155 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.156 }
%struct.anon.156 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.aux_payload = type { i8, i8, i8, i8, i32, i32, ptr, ptr, i32 }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct.dc_sink_init_data = type { i32, ptr, i32, i8 }
%struct.dc_sink = type { i32, %struct.dc_edid, %struct.dc_edid_caps, ptr, i32, ptr, [14 x %struct.stereo_3d_features], i8, %struct.dc_sink_dsc_caps, %struct.dc_sink_fec_caps, i8, ptr, ptr, i32, %struct.kref }
%struct.dc_edid = type { i32, [2048 x i8] }
%struct.dc_edid_caps = type { i16, i16, i32, i8, i8, [20 x i8], i8, i32, [16 x %struct.dc_cea_audio_mode], i32, i32, %union.display_content_support, i8, i8, i32, i8, i8, i8, %struct.dc_panel_patch }
%struct.dc_cea_audio_mode = type { i8, i8, i8, %union.anon.98 }
%union.anon.98 = type { i8 }
%union.display_content_support = type { i32 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stereo_3d_features = type { i8, i8, i8, i8, i8 }
%struct.dc_sink_dsc_caps = type { i8, %struct.dsc_dec_dpcd_caps }
%struct.dsc_dec_dpcd_caps = type { i8, i8, i32, %union.dsc_slice_caps1, %union.dsc_slice_caps2, i32, i8, i32, %union.dsc_color_formats, %union.dsc_color_depth, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.dsc_slice_caps1 = type { %struct.anon.100 }
%struct.anon.100 = type { i8 }
%union.dsc_slice_caps2 = type { %struct.anon.101 }
%struct.anon.101 = type { i8 }
%union.dsc_color_formats = type { %struct.anon.102 }
%struct.anon.102 = type { i8 }
%union.dsc_color_depth = type { %struct.anon.103 }
%struct.anon.103 = type { i8 }
%struct.dc_sink_fec_caps = type { i8, i8 }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.162 }
%union.anon.162 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_crtc = type { %struct.drm_crtc, i32, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, i32, i32, %struct.dm_irq_params, %struct.amdgpu_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, %struct.hrtimer, i32, i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%union.dfixed = type { i32 }
%struct.dm_irq_params = type { i32, %struct.mod_vrr_params, ptr, i32, i8, %struct.mod_freesync_config, i32 }
%struct.mod_vrr_params = type { i8, i8, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_adjust, %struct.mod_vrr_params_fixed_refresh, %struct.mod_vrr_params_btr }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.mod_vrr_params_fixed_refresh = type { i8, i8, i8, i32, i32 }
%struct.mod_vrr_params_btr = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.mod_freesync_config = type { i32, i8, i8, i8, i32, i32, i32 }
%struct.amdgpu_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@amdgpu_dm_encoder_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @amdgpu_dm_encoder_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@amdgpu_dm_encoder_helper_funcs = external dso_local constant %struct.drm_encoder_helper_funcs, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AMDGPU DM aux hw bus %d\00", [40 x i8] zeroinitializer }, align 32
@dm_mst_cbs = internal constant { %struct.drm_dp_mst_topology_cbs, [24 x i8] } { %struct.drm_dp_mst_topology_cbs { ptr @dm_dp_add_mst_connector, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c\00", [58 x i8] zeroinitializer }, align 32
@dm_dp_mst_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @amdgpu_dm_connector_funcs_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @amdgpu_dm_mst_connector_late_register, ptr @amdgpu_dm_mst_connector_early_unregister, ptr @dm_dp_mst_connector_destroy, ptr @amdgpu_dm_connector_atomic_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr @amdgpu_dm_connector_atomic_set_property, ptr @amdgpu_dm_connector_atomic_get_property, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dm_dp_mst_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @dm_dp_mst_get_modes, ptr @dm_dp_mst_detect, ptr @amdgpu_dm_connector_mode_valid, ptr null, ptr null, ptr @dm_mst_atomic_best_encoder, ptr @dm_dp_mst_atomic_check, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Can't get EDID of %s. Add default remote sink.\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to add a remote sink\0A\00", [35 x i8] zeroinitializer }, align 32
@switch.table.dm_dp_aux_transfer = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -5, i32 -16, i32 -110, i32 -5, i32 -16, i32 -5, i32 -5], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"amdgpu_dm_encoder_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 376, i32 39 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 486, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"dm_mst_cbs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 475, i32 45 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 59, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [26 x i8] c"dm_dp_mst_connector_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 149, i32 41 }
@___asan_gen_.20 = private unnamed_addr constant [33 x i8] c"dm_dp_mst_connector_helper_funcs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 362, i32 48 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 231, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [73 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 245, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"switch.table.dm_dp_aux_transfer\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @amdgpu_dm_encoder_funcs, ptr @.str, ptr @dm_mst_cbs, ptr @.str.1, ptr @dm_dp_mst_connector_funcs, ptr @dm_dp_mst_connector_helper_funcs, ptr @.str.2, ptr @.str.3, ptr @switch.table.dm_dp_aux_transfer], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dm_encoder_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_mst_cbs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dp_mst_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dp_mst_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dm_dp_aux_transfer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_dp_create_fake_mst_encoders(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %display_indexes_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 14
  %0 = ptrtoint ptr %display_indexes_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %display_indexes_num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp14.not = icmp eq i16 %1, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 42, i32 %i.015
  %call3 = tail call i32 @amdgpu_dm_get_encoder_crtc_mask(ptr noundef %adev) #5
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %arrayidx, i32 0, i32 6
  %2 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3, ptr %possible_crtcs, align 4
  %call5 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %ddev.i, ptr noundef %arrayidx, ptr noundef nonnull @amdgpu_dm_encoder_funcs, i32 noundef 7, ptr noundef null) #5
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %arrayidx, i32 0, i32 11
  %3 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @amdgpu_dm_encoder_helper_funcs, ptr %helper_private.i, align 4
  %inc = add nuw nsw i32 %i.015, 1
  %4 = ptrtoint ptr %display_indexes_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %display_indexes_num, align 4
  %conv = zext i16 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dm_get_encoder_crtc_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dm_initialize_dp_connector(ptr nocapture noundef readonly %dm, ptr noundef %aconnector, i32 noundef %link_index) local_unnamed_addr #0 align 64 {
entry:
  %max_link_enc_cap = alloca %struct.dc_link_settings, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %max_link_enc_cap) #5
  %0 = call ptr @memset(ptr %max_link_enc_cap, i32 0, i32 16)
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %link_index) #5
  %dm_dp_aux = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %aconnector, i32 0, i32 9
  %1 = ptrtoint ptr %dm_dp_aux to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %dm_dp_aux, align 8
  %transfer = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %aconnector, i32 0, i32 9, i32 0, i32 8
  %2 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dm_dp_aux_transfer, ptr %transfer, align 8
  %ddev = getelementptr inbounds %struct.amdgpu_display_manager, ptr %dm, i32 0, i32 13
  %3 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddev, align 8
  %drm_dev = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %aconnector, i32 0, i32 9, i32 0, i32 3
  %5 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %drm_dev, align 4
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %aconnector, i32 0, i32 6
  %6 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_link, align 8
  %ddc = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc, align 4
  %ddc_service = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %aconnector, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %ddc_service to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ddc_service, align 8
  tail call void @drm_dp_aux_init(ptr noundef %dm_dp_aux) #5
  tail call void @drm_dp_cec_register_connector(ptr noundef %dm_dp_aux, ptr noundef %aconnector) #5
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %aconnector, i32 0, i32 10
  %11 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %12)
  %cmp = icmp eq i32 %12, 14
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dc_link, align 8
  %call12 = call zeroext i1 @dc_link_dp_get_max_link_enc_cap(ptr noundef %14, ptr noundef nonnull %max_link_enc_cap) #5
  %mst_mgr = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %aconnector, i32 0, i32 8
  %cbs = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %aconnector, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %cbs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dm_mst_cbs, ptr %cbs, align 8
  %adev = getelementptr inbounds %struct.amdgpu_display_manager, ptr %dm, i32 0, i32 12
  %16 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev, align 4
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %max_link_enc_cap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_link_enc_cap, align 4
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %max_link_enc_cap, i32 0, i32 1
  %20 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link_rate, align 4
  %conv = trunc i32 %21 to i8
  %call17 = call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %conv) #5
  %connector_id = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %aconnector, i32 0, i32 1
  %22 = ptrtoint ptr %connector_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %connector_id, align 8
  %call18 = call i32 @drm_dp_mst_topology_mgr_init(ptr noundef %mst_mgr, ptr noundef %ddev.i, ptr noundef %dm_dp_aux, i32 noundef 16, i32 noundef 4, i32 noundef %19, i32 noundef %call17, i32 noundef %23) #5
  call void @drm_connector_attach_dp_subconnector_property(ptr noundef %aconnector) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max_link_enc_cap) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_dp_aux_transfer(ptr nocapture noundef readonly %aux, ptr noundef %msg) #0 align 64 {
entry:
  %payload = alloca %struct.aux_payload, align 4
  %operation_result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %payload) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %operation_result) #5
  %0 = ptrtoint ptr %operation_result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %operation_result, align 4, !annotation !25
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp = icmp ugt i32 %2, 16
  br i1 %cmp, label %do.end, label %if.end21, !prof !26

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 59, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  %3 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 8
  %4 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 7
  %5 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 6
  %6 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 5
  %7 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 4
  %8 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 3
  %9 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 2
  %10 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 1
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %7, align 4
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %5, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %2, ptr %6, align 4
  %reply = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %reply, ptr %4, align 4
  %request = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %request, align 4
  %21 = lshr i8 %20, 3
  %.lobit = and i8 %21, 1
  %22 = xor i8 %.lobit, 1
  %23 = ptrtoint ptr %payload to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %payload, align 4
  %24 = and i8 %20, 1
  %25 = xor i8 %24, 1
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %10, align 1
  %27 = lshr i8 %20, 2
  %.lobit74 = and i8 %27, 1
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.lobit74, ptr %9, align 2
  %29 = lshr i8 %20, 1
  %.lobit75 = and i8 %29, 1
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.lobit75, ptr %8, align 1
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %3, align 4
  %ddc_service = getelementptr inbounds %struct.amdgpu_dm_dp_aux, ptr %aux, i32 0, i32 1
  %32 = ptrtoint ptr %ddc_service to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ddc_service, align 8
  %call = call i32 @dc_link_aux_transfer_raw(ptr noundef %33, ptr noundef nonnull %payload, ptr noundef nonnull %operation_result) #5
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %10, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool47.not = icmp ne i8 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp49 = icmp sgt i32 %call, -1
  %or.cond = select i1 %tobool47.not, i1 %cmp49, i1 false
  br i1 %or.cond, label %if.then51, label %if.end21.if.end53_crit_edge

if.end21.if.end53_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then51:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end21.if.end53_crit_edge
  %result.0 = phi i32 [ %37, %if.then51 ], [ %call, %if.end21.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %cmp54 = icmp slt i32 %result.0, 0
  br i1 %cmp54, label %if.then56, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then56:                                        ; preds = %if.end53
  %38 = ptrtoint ptr %operation_result to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %operation_result, align 4
  %switch.tableidx = add i32 %39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %40 = icmp ult i32 %switch.tableidx, 7
  br i1 %40, label %switch.lookup, label %if.then56.cleanup_crit_edge

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.dm_dp_aux_transfer, i32 0, i32 %switch.tableidx
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.then56.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ %result.0, %if.then56.cleanup_crit_edge ], [ %result.0, %if.end53.cleanup_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %operation_result) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %payload) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_cec_register_connector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_dp_get_max_link_enc_cap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_topology_mgr_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_attach_dp_subconnector_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_mst_get_pbn_divider(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %link, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @dc_link_get_link_cap(ptr noundef nonnull %link) #5
  %call1 = tail call i32 @dc_link_bandwidth_kbps(ptr noundef nonnull %link, ptr noundef %call) #5
  %div = udiv i32 %call1, 432000
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %div, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_link_bandwidth_kbps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dc_link_get_link_cap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_dm_encoder_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #5
  tail call void @kfree(ptr noundef %encoder) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_link_aux_transfer_raw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dm_dp_add_mst_connector(ptr noundef %mgr, ptr noundef %port, ptr noundef %pathprop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mgr, i32 -1088
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4880) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %port4 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call7.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %port4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %port, ptr %port4, align 8
  %mst_port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call7.i.i, i32 0, i32 11
  %4 = ptrtoint ptr %mst_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %mst_port, align 4
  %call5 = tail call i32 @drm_connector_init(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dm_dp_mst_connector_funcs, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %5 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dm_dp_mst_connector_helper_funcs, ptr %helper_private.i, align 4
  %dm = getelementptr i8, ptr %1, i32 82840
  %dc_link = getelementptr i8, ptr %mgr, i32 -8
  %6 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_link, align 8
  %connector_id = getelementptr i8, ptr %mgr, i32 -48
  %8 = ptrtoint ptr %connector_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %connector_id, align 8
  tail call void @amdgpu_dm_connector_init_helper(ptr noundef %dm, ptr noundef nonnull %call7.i.i, i32 noundef 10, ptr noundef %7, i32 noundef %9) #5
  %display_indexes_num = getelementptr i8, ptr %1, i32 82924
  %10 = ptrtoint ptr %display_indexes_num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %display_indexes_num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp70.not = icmp eq i16 %11, 0
  br i1 %cmp70.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 117, i32 42, i32 %i.071
  %call14 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call7.i.i, ptr noundef %arrayidx) #5
  %inc = add nuw nsw i32 %i.071, 1
  %12 = ptrtoint ptr %display_indexes_num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %display_indexes_num, align 4
  %conv = zext i16 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %max_bpc_property = getelementptr i8, ptr %mgr, i32 -416
  %14 = ptrtoint ptr %max_bpc_property to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %max_bpc_property, align 8
  %max_bpc_property16 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 28
  %16 = ptrtoint ptr %max_bpc_property16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %max_bpc_property16, align 8
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %for.end.if.end21_crit_edge, label %if.then19

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 @drm_connector_attach_max_bpc_property(ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 16) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.end.if.end21_crit_edge
  %vrr_capable_property = getelementptr i8, ptr %mgr, i32 -428
  %17 = ptrtoint ptr %vrr_capable_property to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vrr_capable_property, align 4
  %vrr_capable_property23 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 25
  %19 = ptrtoint ptr %vrr_capable_property23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %vrr_capable_property23, align 4
  %tobool25.not = icmp eq ptr %18, null
  br i1 %tobool25.not, label %if.end21.if.end28_crit_edge, label %if.then26

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 @drm_connector_attach_vrr_capable_property(ptr noundef nonnull %call7.i.i) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21.if.end28_crit_edge
  %base29 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %path_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 37
  %20 = ptrtoint ptr %path_property to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %path_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base29, ptr noundef %21, i64 noundef 0) #5
  %tile_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 38
  %22 = ptrtoint ptr %tile_property to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tile_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base29, ptr noundef %23, i64 noundef 0) #5
  %call32 = tail call i32 @drm_connector_set_path_property(ptr noundef nonnull %call7.i.i, ptr noundef %pathprop) #5
  tail call void @amdgpu_dm_connector_funcs_reset(ptr noundef nonnull %call7.i.i) #5
  tail call void @drm_dp_mst_get_port_malloc(ptr noundef %port) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then7 ], [ %call7.i.i, %if.end28 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dm_connector_init_helper(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_max_bpc_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_vrr_capable_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_path_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dm_connector_funcs_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_get_port_malloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_dm_mst_connector_late_register(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 10
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %call = tail call i32 @drm_dp_mst_connector_late_register(ptr noundef %connector, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @connector_debugfs_init(ptr noundef %connector) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_dm_mst_connector_early_unregister(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 10
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  tail call void @drm_dp_mst_connector_early_unregister(ptr noundef %connector, ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm_dp_mst_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dc_sink = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 5
  %0 = ptrtoint ptr %dc_sink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc_sink, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 6
  %2 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_link, align 8
  tail call void @dc_link_remove_remote_sink(ptr noundef %3, ptr noundef nonnull %1) #5
  %4 = ptrtoint ptr %dc_sink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_sink, align 4
  tail call void @dc_sink_release(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %edid = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 2
  %6 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edid, align 4
  tail call void @kfree(ptr noundef %7) #5
  tail call void @drm_connector_cleanup(ptr noundef %connector) #5
  %port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 10
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 8
  tail call void @drm_dp_mst_put_port_malloc(ptr noundef %9) #5
  tail call void @kfree(ptr noundef %connector) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_dm_connector_atomic_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dm_connector_atomic_set_property(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dm_connector_atomic_get_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_connector_late_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @connector_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_connector_early_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_link_remove_remote_sink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_sink_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_put_port_malloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_dp_mst_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  %init_params = alloca %struct.dc_sink_init_data, align 4
  %init_params37 = alloca %struct.dc_sink_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %connector, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @drm_add_edid_modes(ptr noundef null, ptr noundef null) #5
  br label %cleanup67

if.end:                                           ; preds = %entry
  %edid = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then2:                                         ; preds = %if.end
  %mst_port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 11
  %2 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mst_port, align 4
  %mst_mgr = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 8
  %port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 10
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  %call4 = tail call ptr @drm_dp_mst_get_edid(ptr noundef nonnull %connector, ptr noundef %mst_mgr, ptr noundef %5) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end19

if.then6:                                         ; preds = %if.then2
  %call7 = tail call i32 @drm_connector_update_edid_property(ptr noundef nonnull %connector, ptr noundef null) #5
  %name = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef %7) #5
  %dc_sink = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 5
  %8 = ptrtoint ptr %dc_sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc_sink, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.then9, label %if.then6.cleanup67_crit_edge

if.then6.cleanup67_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup67

if.then9:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_params) #5
  %10 = getelementptr inbounds i8, ptr %init_params, i32 12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %12 = ptrtoint ptr %init_params to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %init_params, align 4
  %link = getelementptr inbounds %struct.dc_sink_init_data, ptr %init_params, i32 0, i32 1
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 6
  %13 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dc_link, align 8
  %15 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %link, align 4
  %dongle_max_pix_clk = getelementptr inbounds %struct.dc_sink_init_data, ptr %init_params, i32 0, i32 2
  %16 = ptrtoint ptr %dongle_max_pix_clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dongle_max_pix_clk, align 4
  %converter_disable_audio = getelementptr inbounds %struct.dc_sink_init_data, ptr %init_params, i32 0, i32 3
  %17 = ptrtoint ptr %converter_disable_audio to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %converter_disable_audio, align 4
  %call12 = call ptr @dc_link_add_remote_sink(ptr noundef %14, ptr noundef null, i32 noundef 0, ptr noundef nonnull %init_params) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_params) #5
  br label %cleanup67

if.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %priv = getelementptr inbounds %struct.dc_sink, ptr %call12, i32 0, i32 5
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %connector, ptr %priv, align 4
  %19 = ptrtoint ptr %dc_sink to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call12, ptr %dc_sink, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_params) #5
  br label %cleanup67

if.end19:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call4, ptr %edid, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end19, %if.end.if.end24_crit_edge
  %dc_sink25 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 5
  %21 = ptrtoint ptr %dc_sink25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dc_sink25, align 4
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %if.end24.if.then35_crit_edge, label %land.lhs.true

if.end24.if.then35_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

land.lhs.true:                                    ; preds = %if.end24
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %24)
  %cmp = icmp eq i32 %24, 512
  br i1 %cmp, label %if.then29, label %land.lhs.true.if.end61_crit_edge

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dc_sink_release(ptr noundef nonnull %22) #5
  %25 = ptrtoint ptr %dc_sink25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dc_sink25, align 4
  br label %if.then35

if.then35:                                        ; preds = %if.then29, %if.end24.if.then35_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_params37) #5
  %26 = getelementptr inbounds i8, ptr %init_params37, i32 12
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4
  %28 = ptrtoint ptr %init_params37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 64, ptr %init_params37, align 4
  %link39 = getelementptr inbounds %struct.dc_sink_init_data, ptr %init_params37, i32 0, i32 1
  %dc_link40 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 6
  %29 = ptrtoint ptr %dc_link40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dc_link40, align 8
  %31 = ptrtoint ptr %link39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %link39, align 4
  %dongle_max_pix_clk41 = getelementptr inbounds %struct.dc_sink_init_data, ptr %init_params37, i32 0, i32 2
  %32 = ptrtoint ptr %dongle_max_pix_clk41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dongle_max_pix_clk41, align 4
  %converter_disable_audio42 = getelementptr inbounds %struct.dc_sink_init_data, ptr %init_params37, i32 0, i32 3
  %33 = ptrtoint ptr %converter_disable_audio42 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %converter_disable_audio42, align 4
  %34 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %edid, align 4
  %extensions = getelementptr inbounds %struct.edid, ptr %35, i32 0, i32 26
  %36 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %extensions, align 1
  %conv = zext i8 %37 to i32
  %add = shl nuw nsw i32 %conv, 7
  %mul = add nuw nsw i32 %add, 128
  %call46 = call ptr @dc_link_add_remote_sink(ptr noundef %30, ptr noundef %35, i32 noundef %mul, ptr noundef nonnull %init_params37) #5
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_params37) #5
  br label %cleanup67

if.end49:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %priv50 = getelementptr inbounds %struct.dc_sink, ptr %call46, i32 0, i32 5
  %38 = ptrtoint ptr %priv50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %connector, ptr %priv50, align 4
  %39 = ptrtoint ptr %dc_sink25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call46, ptr %dc_sink25, align 4
  %40 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %edid, align 4
  call void @amdgpu_dm_update_freesync_caps(ptr noundef nonnull %connector, ptr noundef %41) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_params37) #5
  br label %if.end61

if.end61:                                         ; preds = %if.end49, %land.lhs.true.if.end61_crit_edge
  %42 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %edid, align 4
  %call64 = call i32 @drm_connector_update_edid_property(ptr noundef nonnull %connector, ptr noundef %43) #5
  %44 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %edid, align 4
  %call66 = call i32 @drm_add_edid_modes(ptr noundef nonnull %connector, ptr noundef %45) #5
  br label %cleanup67

cleanup67:                                        ; preds = %if.end61, %if.then48, %if.end15, %if.then14, %if.then6.cleanup67_crit_edge, %if.then
  %retval.4 = phi i32 [ %call66, %if.end61 ], [ %call, %if.then ], [ 0, %if.end15 ], [ 0, %if.then14 ], [ 0, %if.then48 ], [ 0, %if.then6.cleanup67_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_dp_mst_detect(ptr noundef %connector, ptr noundef %ctx, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mst_port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 11
  %0 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mst_port, align 4
  %registration_state.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 16
  %2 = ptrtoint ptr %registration_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %registration_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mst_mgr = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 8
  %port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 10
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  %call1 = tail call i32 @drm_dp_mst_detect_port(ptr noundef %connector, ptr noundef %ctx, ptr noundef %mst_mgr, ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dm_connector_mode_valid(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @dm_mst_atomic_best_encoder(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 9
  %0 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i, label %entry.drm_atomic_get_new_connector_state.exit_crit_edge

entry.drm_atomic_get_new_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_atomic_get_new_connector_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  br label %drm_atomic_get_new_connector_state.exit

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end.i, %entry.drm_atomic_get_new_connector_state.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %8 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 -8
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_id, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 117, i32 42, i32 %13
  ret ptr %arrayidx
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_dp_mst_atomic_check(ptr nocapture noundef readonly %connector, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 9
  %0 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i35, label %entry.drm_atomic_get_old_connector_state.exit_crit_edge

entry.drm_atomic_get_old_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_atomic_get_old_connector_state.exit

if.end.i35:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %old_state.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 2
  %8 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_state.i, align 4
  br label %drm_atomic_get_old_connector_state.exit

drm_atomic_get_old_connector_state.exit:          ; preds = %if.end.i35, %entry.drm_atomic_get_old_connector_state.exit_crit_edge
  %retval.0.i40 = phi ptr [ %7, %if.end.i35 ], [ null, %entry.drm_atomic_get_old_connector_state.exit_crit_edge ]
  %retval.0.i36 = phi ptr [ %9, %if.end.i35 ], [ null, %entry.drm_atomic_get_old_connector_state.exit_crit_edge ]
  %port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 10
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %mst_port2 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 11
  %12 = ptrtoint ptr %mst_port2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mst_port2, align 4
  %mst_mgr3 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %13, i32 0, i32 8
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i36, i32 0, i32 1
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %drm_atomic_get_old_connector_state.exit.cleanup_crit_edge, label %if.end

drm_atomic_get_old_connector_state.exit.cleanup_crit_edge: ; preds = %drm_atomic_get_old_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %drm_atomic_get_old_connector_state.exit
  %crtc4 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i40, i32 0, i32 1
  %16 = ptrtoint ptr %crtc4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc4, align 4
  %tobool5.not = icmp eq ptr %17, null
  br i1 %tobool5.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %18 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtcs.i, align 4
  %index.i.i37 = getelementptr inbounds %struct.drm_crtc, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %index.i.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i.i37, align 4
  %new_state.i38 = getelementptr %struct.__drm_crtcs_state, ptr %19, i32 %21, i32 3
  %22 = ptrtoint ptr %new_state.i38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %new_state.i38, align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %if.then6.cleanup_crit_edge, label %lor.lhs.false

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then6
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %25 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %.not = icmp eq i8 %25, 0
  br i1 %.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool12.not = icmp eq i8 %27, 0
  br i1 %tobool12.not, label %lor.lhs.false11.if.end15_crit_edge, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false11.if.end15_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end15:                                         ; preds = %lor.lhs.false11.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %call16 = tail call i32 @drm_dp_atomic_release_vcpi_slots(ptr noundef %state, ptr noundef %mst_mgr3, ptr noundef %11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %drm_atomic_get_old_connector_state.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ 0, %drm_atomic_get_old_connector_state.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false11.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dp_mst_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dc_link_add_remote_sink(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dm_update_freesync_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_detect_port(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_atomic_release_vcpi_slots(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c", i32 486, i32 25}
!2 = !{ptr @amdgpu_dm_encoder_funcs, !3, !"amdgpu_dm_encoder_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c", i32 376, i32 39}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c", i32 59, i32 6}
!6 = !{ptr @dm_mst_cbs, !7, !"dm_mst_cbs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c", i32 475, i32 45}
!8 = !{ptr @dm_dp_mst_connector_funcs, !9, !"dm_dp_mst_connector_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c", i32 149, i32 41}
!10 = !{ptr @dm_dp_mst_connector_helper_funcs, !11, !"dm_dp_mst_connector_helper_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c", i32 362, i32 48}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c", i32 231, i32 4}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c", i32 245, i32 6}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i8 0, i8 2}
