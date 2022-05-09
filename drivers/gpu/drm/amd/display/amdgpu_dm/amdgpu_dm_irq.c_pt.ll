; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.dc_interrupt_params = type { i32, i32, i32, i32 }
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
%struct.amdgpu_dm_irq_handler_data = type { %struct.list_head, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.drm_connector_list_iter = type { ptr, ptr }
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
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
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
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DM_IRQ: failed to allocate irq handler!\0A\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_dm_irq_register_interrupt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&handler_data->work)\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"DM_IRQ: added irq handler: %p for: dal_src=%d, irq context=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"DM_IRQ: failed to find irq handler:%p for irq_source:%d!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DM_IRQ\0A\00", [24 x i8] zeroinitializer }, align 32
@amdgpu_dm_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&adev->dm.irq_handler_list_table_lock\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DM_IRQ: releasing resources.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DM_IRQ: suspend\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DM_IRQ: early resume\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DM_IRQ: resume\0A\00", [16 x i8] zeroinitializer }, align 32
@dm_crtc_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @amdgpu_dm_set_crtc_irq_state, ptr @amdgpu_dm_irq_handler }, [24 x i8] zeroinitializer }, align 32
@dm_vline0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @amdgpu_dm_set_vline0_irq_state, ptr @amdgpu_dm_irq_handler }, [24 x i8] zeroinitializer }, align 32
@dm_dmub_outbox_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @amdgpu_dm_set_dmub_outbox_irq_state, ptr @amdgpu_dm_irq_handler }, [24 x i8] zeroinitializer }, align 32
@dm_vupdate_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @amdgpu_dm_set_vupdate_irq_state, ptr @amdgpu_dm_irq_handler }, [24 x i8] zeroinitializer }, align 32
@dm_dmub_trace_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @amdgpu_dm_set_dmub_trace_irq_state, ptr @amdgpu_dm_irq_handler }, [24 x i8] zeroinitializer }, align 32
@dm_pageflip_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @amdgpu_dm_set_pflip_irq_state, ptr @amdgpu_dm_irq_handler }, [24 x i8] zeroinitializer }, align 32
@dm_hpd_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @amdgpu_dm_set_hpd_irq_state, ptr @amdgpu_dm_irq_handler }, [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DM_IRQ: invalid input!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DM_IRQ: invalid context: %d!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DM_IRQ: invalid irq_source: %d!\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DM_IRQ: invalid handler_idx==NULL!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DM_IRQ: invalid irq_source:%d!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"DM_IRQ: removed irq handler: %p for: dal_src=%d, irq context=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.amdgpu_dm_set_crtc_irq_state = private unnamed_addr constant [29 x i8] c"amdgpu_dm_set_crtc_irq_state\00", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: crtc is NULL at id :%d\0A\00", [36 x i8] zeroinitializer }, align 32
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@amdgpu_dm_irq_schedule_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&handler_data_add->work)\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Queued work for handling interrupt from display for IRQ source %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Failed to queue work for handling interrupt from display for IRQ source %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.amdgpu_dm_set_vline0_irq_state = private unnamed_addr constant [31 x i8] c"amdgpu_dm_set_vline0_irq_state\00", align 1
@__func__.amdgpu_dm_set_vupdate_irq_state = private unnamed_addr constant [32 x i8] c"amdgpu_dm_set_vupdate_irq_state\00", align 1
@__func__.amdgpu_dm_set_pflip_irq_state = private unnamed_addr constant [30 x i8] c"amdgpu_dm_set_pflip_irq_state\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 315, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 335, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 348, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 394, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 419, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 421, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 448, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 482, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 520, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 543, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"dm_crtc_irq_funcs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 810, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"dm_vline0_irq_funcs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 815, i32 42 }
@___asan_gen_.62 = private unnamed_addr constant [25 x i8] c"dm_dmub_outbox_irq_funcs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 820, i32 42 }
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"dm_vupdate_irq_funcs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 825, i32 42 }
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"dm_dmub_trace_irq_funcs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 830, i32 42 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"dm_pageflip_irq_funcs\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 835, i32 42 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"dm_hpd_irq_funcs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 840, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 242, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 247, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 253, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 265, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 270, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 181, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 712, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 601, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 604, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 608, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @amdgpu_dm_irq_register_interrupt.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @amdgpu_dm_irq_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dm_crtc_irq_funcs, ptr @dm_vline0_irq_funcs, ptr @dm_dmub_outbox_irq_funcs, ptr @dm_vupdate_irq_funcs, ptr @dm_dmub_trace_irq_funcs, ptr @dm_pageflip_irq_funcs, ptr @dm_hpd_irq_funcs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @amdgpu_dm_irq_schedule_work.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dm_irq_register_interrupt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dm_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_crtc_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_vline0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dmub_outbox_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_vupdate_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dmub_trace_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pageflip_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_hpd_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dm_irq_schedule_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_dm_irq_register_interrupt(ptr noundef %adev, ptr noundef readonly %int_params, ptr noundef %ih, ptr noundef %handler_args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %int_params, null
  %cmp1.i = icmp eq ptr %ih, null
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %int_context.i = getelementptr inbounds %struct.dc_interrupt_params, ptr %int_params, i32 0, i32 3
  %0 = ptrtoint ptr %int_context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_context.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 1
  br i1 %cmp2.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %1) #5
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %irq_source.i = getelementptr inbounds %struct.dc_interrupt_params, ptr %int_params, i32 0, i32 2
  %2 = ptrtoint ptr %irq_source.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_source.i, align 4
  %4 = add i32 %3, -99
  call void @__sanitizer_cov_trace_const_cmp4(i32 -98, i32 %4)
  %5 = icmp ult i32 %4, -98
  br i1 %5, label %if.then9.i, label %if.end

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %3) #5
  br label %cleanup

if.end:                                           ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 68) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %handler.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ih, ptr %handler.i, align 8
  %handler_arg.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %handler_arg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %handler_args, ptr %handler_arg.i, align 4
  %dm1.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %dm1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dm, ptr %dm1.i, align 8
  %10 = ptrtoint ptr %irq_source.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_source.i, align 4
  %irq_source6 = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %irq_source6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %irq_source6, align 4
  %irq_handler_list_table_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 28
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_handler_list_table_lock) #5
  %13 = ptrtoint ptr %int_context.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_context.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cond = icmp eq i32 %14, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 %11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 %11
  %work = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %15 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @amdgpu_dm_irq_register_interrupt.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry23 = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry23, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dm_irq_work_func, ptr %func, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %hnd_list.0 = phi ptr [ %arrayidx, %sw.bb ], [ %arrayidx18, %sw.default ]
  %prev.i54 = getelementptr inbounds %struct.list_head, ptr %hnd_list.0, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i54, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %20, ptr noundef %hnd_list.0) #5
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.list_add_tail.exit_crit_edge

sw.epilog.list_add_tail.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %prev.i54, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %hnd_list.0, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sw.epilog.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock, i32 noundef %call12) #5
  %25 = ptrtoint ptr %int_context.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %int_context.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i, i32 noundef %11, i32 noundef %26) #5
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then3, %if.then9.i, %if.then3.i, %if.then.i
  %retval.0 = phi ptr [ %call7.i.i, %list_add_tail.exit ], [ null, %if.then3 ], [ null, %if.then.i ], [ null, %if.then3.i ], [ null, %if.then9.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm_irq_work_func(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 4
  %handler_arg = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %handler_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_arg, align 4
  tail call void %1(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dm_irq_unregister_interrupt(ptr noundef %adev, i32 noundef %irq_source, ptr noundef %ih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %ih, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = add i32 %irq_source, -99
  call void @__sanitizer_cov_trace_const_cmp4(i32 -98, i32 %0)
  %1 = icmp ult i32 %0, -98
  br i1 %1, label %if.then3.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end.i
  %irq_handler_list_table_lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 28
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 %irq_source
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 %irq_source
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_handler_list_table_lock.i) #5
  %2 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx11.i, align 4
  %cmp.i.not59.i = icmp eq ptr %3, %arrayidx11.i
  br i1 %cmp.i.not59.i, label %for.cond.preheader.remove_irq_handler.exit.thread_crit_edge, label %for.cond.preheader.for.body.i_crit_edge

for.cond.preheader.for.body.i_crit_edge:          ; preds = %for.cond.preheader
  br label %for.body.i

for.cond.preheader.remove_irq_handler.exit.thread_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_irq_handler.exit.thread

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %irq_source) #5
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.for.body.i_crit_edge
  %entry1.060.i = phi ptr [ %tmp.061.i, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %entry1.060.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.061.i = load ptr, ptr %entry1.060.i, align 4
  %cmp15.i = icmp eq ptr %entry1.060.i, null
  br i1 %cmp15.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i23

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i23:                                       ; preds = %for.body.i
  %handler17.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %entry1.060.i, i32 0, i32 1
  %5 = ptrtoint ptr %handler17.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handler17.i, align 4
  %cmp18.i = icmp eq ptr %6, %ih
  br i1 %cmp18.i, label %if.then20.i, label %if.end.i23.for.inc.i_crit_edge

if.end.i23.for.inc.i_crit_edge:                   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then20.i:                                      ; preds = %if.end.i23
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1.060.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then20.i.remove_irq_handler.exit_crit_edge

if.then20.i.remove_irq_handler.exit_crit_edge:    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_irq_handler.exit

if.end.i.i.i:                                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.060.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %entry1.060.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry1.060.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %remove_irq_handler.exit

for.inc.i:                                        ; preds = %if.end.i23.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %tmp.061.i, %arrayidx11.i
  br i1 %cmp.i.not.i, label %for.inc.i.remove_irq_handler.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.remove_irq_handler.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_irq_handler.exit.thread

remove_irq_handler.exit.thread:                   ; preds = %for.inc.i.remove_irq_handler.exit.thread_crit_edge, %for.cond.preheader.remove_irq_handler.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock.i, i32 noundef %call4.i) #5
  br label %for.inc

remove_irq_handler.exit:                          ; preds = %if.end.i.i.i, %if.then20.i.remove_irq_handler.exit_crit_edge
  %13 = ptrtoint ptr %entry1.060.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.060.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.060.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock.i, i32 noundef %call4.i) #5
  tail call void @kfree(ptr noundef nonnull %entry1.060.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef nonnull %ih, i32 noundef %irq_source, i32 noundef 0) #5
  %cmp6.not = icmp eq ptr %arrayidx11.i, null
  br i1 %cmp6.not, label %remove_irq_handler.exit.for.inc_crit_edge, label %remove_irq_handler.exit.cleanup_crit_edge

remove_irq_handler.exit.cleanup_crit_edge:        ; preds = %remove_irq_handler.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

remove_irq_handler.exit.for.inc_crit_edge:        ; preds = %remove_irq_handler.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %remove_irq_handler.exit.for.inc_crit_edge, %remove_irq_handler.exit.thread
  %call4.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_handler_list_table_lock.i) #5
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.not59.i.1 = icmp eq ptr %16, %arrayidx.i
  br i1 %cmp.i.not59.i.1, label %for.inc.remove_irq_handler.exit.thread.1_crit_edge, label %for.inc.for.body.i.1_crit_edge

for.inc.for.body.i.1_crit_edge:                   ; preds = %for.inc
  br label %for.body.i.1

for.inc.remove_irq_handler.exit.thread.1_crit_edge: ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_irq_handler.exit.thread.1

for.body.i.1:                                     ; preds = %for.inc.i.1.for.body.i.1_crit_edge, %for.inc.for.body.i.1_crit_edge
  %entry1.060.i.1 = phi ptr [ %tmp.061.i.1, %for.inc.i.1.for.body.i.1_crit_edge ], [ %16, %for.inc.for.body.i.1_crit_edge ]
  %17 = ptrtoint ptr %entry1.060.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp.061.i.1 = load ptr, ptr %entry1.060.i.1, align 4
  %cmp15.i.1 = icmp eq ptr %entry1.060.i.1, null
  br i1 %cmp15.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.end.i23.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.1

if.end.i23.1:                                     ; preds = %for.body.i.1
  %handler17.i.1 = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %entry1.060.i.1, i32 0, i32 1
  %18 = ptrtoint ptr %handler17.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler17.i.1, align 4
  %cmp18.i.1 = icmp eq ptr %19, %ih
  br i1 %cmp18.i.1, label %if.then20.i.1, label %if.end.i23.1.for.inc.i.1_crit_edge

if.end.i23.1.for.inc.i.1_crit_edge:               ; preds = %if.end.i23.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.1

if.then20.i.1:                                    ; preds = %if.end.i23.1
  %call.i.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1.060.i.1) #5
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %if.then20.i.1.remove_irq_handler.exit.1_crit_edge

if.then20.i.1.remove_irq_handler.exit.1_crit_edge: ; preds = %if.then20.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_irq_handler.exit.1

if.end.i.i.i.1:                                   ; preds = %if.then20.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %entry1.060.i.1, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.1, align 4
  %22 = ptrtoint ptr %entry1.060.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %entry1.060.i.1, align 4
  %prev1.i.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i.1, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %remove_irq_handler.exit.1

remove_irq_handler.exit.1:                        ; preds = %if.end.i.i.i.1, %if.then20.i.1.remove_irq_handler.exit.1_crit_edge
  %26 = ptrtoint ptr %entry1.060.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.060.i.1, align 4
  %prev.i.i.1 = getelementptr inbounds %struct.list_head, ptr %entry1.060.i.1, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock.i, i32 noundef %call4.i.1) #5
  tail call void @kfree(ptr noundef nonnull %entry1.060.i.1) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef nonnull %ih, i32 noundef %irq_source, i32 noundef 1) #5
  %cmp6.not.1 = icmp eq ptr %arrayidx.i, null
  br i1 %cmp6.not.1, label %remove_irq_handler.exit.1.for.inc.1_crit_edge, label %remove_irq_handler.exit.1.cleanup_crit_edge

remove_irq_handler.exit.1.cleanup_crit_edge:      ; preds = %remove_irq_handler.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

remove_irq_handler.exit.1.for.inc.1_crit_edge:    ; preds = %remove_irq_handler.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.i.1:                                      ; preds = %if.end.i23.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  %cmp.i.not.i.1 = icmp eq ptr %tmp.061.i.1, %arrayidx.i
  br i1 %cmp.i.not.i.1, label %for.inc.i.1.remove_irq_handler.exit.thread.1_crit_edge, label %for.inc.i.1.for.body.i.1_crit_edge

for.inc.i.1.for.body.i.1_crit_edge:               ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.1

for.inc.i.1.remove_irq_handler.exit.thread.1_crit_edge: ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_irq_handler.exit.thread.1

remove_irq_handler.exit.thread.1:                 ; preds = %for.inc.i.1.remove_irq_handler.exit.thread.1_crit_edge, %for.inc.remove_irq_handler.exit.thread.1_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock.i, i32 noundef %call4.i.1) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %remove_irq_handler.exit.thread.1, %remove_irq_handler.exit.1.for.inc.1_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull %ih, i32 noundef %irq_source) #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %remove_irq_handler.exit.1.cleanup_crit_edge, %remove_irq_handler.exit.cleanup_crit_edge, %if.then3.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dm_irq_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #5
  %irq_handler_list_table_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 28
  tail call void @__raw_spin_lock_init(ptr noundef %irq_handler_list_table_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @amdgpu_dm_irq_init.__key, i16 noundef signext 3) #5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %src.010 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 %src.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 %src.010, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %prev.i, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 %src.010
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %arrayidx3, ptr %arrayidx3, align 4
  %prev.i9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 %src.010, i32 1
  %3 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx3, ptr %prev.i9, align 4
  %inc = add nuw nsw i32 %src.010, 1
  %exitcond.not = icmp eq i32 %inc, 99
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dm_irq_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #5
  %irq_handler_list_table_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 28
  br label %do.body2

do.body2:                                         ; preds = %for.inc20.do.body2_crit_edge, %entry
  %src.036 = phi i32 [ 0, %entry ], [ %inc, %for.inc20.do.body2_crit_edge ]
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_handler_list_table_lock) #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 %src.036
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock, i32 noundef %call5) #5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %1, %arrayidx
  br i1 %cmp.i.not, label %do.body2.for.inc20_crit_edge, label %do.body2.for.body16_crit_edge

do.body2.for.body16_crit_edge:                    ; preds = %do.body2
  br label %for.body16

do.body2.for.inc20_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %do.body2.for.body16_crit_edge
  %entry1.035 = phi ptr [ %tmp.0, %for.body16.for.body16_crit_edge ], [ %1, %do.body2.for.body16_crit_edge ]
  %2 = ptrtoint ptr %entry1.035 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %entry1.035, align 4
  %work = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %entry1.035, i32 0, i32 5
  %call18 = tail call zeroext i1 @flush_work(ptr noundef %work) #5
  %cmp.i32.not = icmp eq ptr %tmp.0, %arrayidx
  br i1 %cmp.i32.not, label %for.body16.for.inc20_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16

for.body16.for.inc20_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20

for.inc20:                                        ; preds = %for.body16.for.inc20_crit_edge, %do.body2.for.inc20_crit_edge
  %inc = add nuw nsw i32 %src.036, 1
  %exitcond.not = icmp eq i32 %inc, 99
  br i1 %exitcond.not, label %for.end21, label %for.inc20.do.body2_crit_edge

for.inc20.do.body2_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

for.end21:                                        ; preds = %for.inc20
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_handler_list_table_lock) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc45.i.for.body.i_crit_edge, %for.end21
  %i.090.i = phi i32 [ 0, %for.end21 ], [ %inc.i, %for.inc45.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 %i.090.i
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 %i.090.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.not81.i = icmp eq ptr %4, %arrayidx.i
  br i1 %cmp.i.not81.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body15.i_crit_edge

for.body.i.for.body15.i_crit_edge:                ; preds = %for.body.i
  br label %for.body15.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body15.i:                                     ; preds = %for.inc.i.for.body15.i_crit_edge, %for.body.i.for.body15.i_crit_edge
  %entry1.082.i = phi ptr [ %tmp.084.i, %for.inc.i.for.body15.i_crit_edge ], [ %4, %for.body.i.for.body15.i_crit_edge ]
  %5 = ptrtoint ptr %entry1.082.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.084.i = load ptr, ptr %entry1.082.i, align 4
  %cmp17.i = icmp eq ptr %entry1.082.i, null
  br i1 %cmp17.i, label %for.body15.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body15.i.for.inc.i_crit_edge:                 ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body15.i
  %handler19.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %entry1.082.i, i32 0, i32 1
  %6 = ptrtoint ptr %handler19.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler19.i, align 4
  %cmp20.i = icmp eq ptr %7, null
  br i1 %cmp20.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1.082.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.082.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %entry1.082.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entry1.082.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %entry1.082.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.082.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.082.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %entry1.082.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body15.i.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %tmp.084.i, %arrayidx.i
  br i1 %cmp.i.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body15.i_crit_edge

for.inc.i.for.body15.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx11.i, align 4
  %cmp.i72.not86.i = icmp eq ptr %17, %arrayidx11.i
  br i1 %cmp.i72.not86.i, label %for.end.i.for.inc45.i_crit_edge, label %for.end.i.for.body29.i_crit_edge

for.end.i.for.body29.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body29.i

for.end.i.for.inc45.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45.i

for.body29.i:                                     ; preds = %for.inc42.i.for.body29.i_crit_edge, %for.end.i.for.body29.i_crit_edge
  %entry1.187.i = phi ptr [ %tmp.189.i, %for.inc42.i.for.body29.i_crit_edge ], [ %17, %for.end.i.for.body29.i_crit_edge ]
  %18 = ptrtoint ptr %entry1.187.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %tmp.189.i = load ptr, ptr %entry1.187.i, align 4
  %cmp33.i = icmp eq ptr %entry1.187.i, null
  br i1 %cmp33.i, label %for.body29.i.for.inc42.i_crit_edge, label %lor.lhs.false35.i

for.body29.i.for.inc42.i_crit_edge:               ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc42.i

lor.lhs.false35.i:                                ; preds = %for.body29.i
  %handler36.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %entry1.187.i, i32 0, i32 1
  %19 = ptrtoint ptr %handler36.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handler36.i, align 4
  %cmp37.i = icmp eq ptr %20, null
  br i1 %cmp37.i, label %lor.lhs.false35.i.for.inc42.i_crit_edge, label %if.end40.i

lor.lhs.false35.i.for.inc42.i_crit_edge:          ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc42.i

if.end40.i:                                       ; preds = %lor.lhs.false35.i
  %call.i.i74.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1.187.i) #5
  br i1 %call.i.i74.i, label %if.end.i.i77.i, label %if.end40.i.list_del.exit79.i_crit_edge

if.end40.i.list_del.exit79.i_crit_edge:           ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit79.i

if.end.i.i77.i:                                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i75.i = getelementptr inbounds %struct.list_head, ptr %entry1.187.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i75.i, align 4
  %23 = ptrtoint ptr %entry1.187.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry1.187.i, align 4
  %prev1.i.i.i76.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i76.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit79.i

list_del.exit79.i:                                ; preds = %if.end.i.i77.i, %if.end40.i.list_del.exit79.i_crit_edge
  %27 = ptrtoint ptr %entry1.187.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.187.i, align 4
  %prev.i78.i = getelementptr inbounds %struct.list_head, ptr %entry1.187.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i78.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i78.i, align 4
  tail call void @kfree(ptr noundef nonnull %entry1.187.i) #5
  br label %for.inc42.i

for.inc42.i:                                      ; preds = %list_del.exit79.i, %lor.lhs.false35.i.for.inc42.i_crit_edge, %for.body29.i.for.inc42.i_crit_edge
  %cmp.i72.not.i = icmp eq ptr %tmp.189.i, %arrayidx11.i
  br i1 %cmp.i72.not.i, label %for.inc42.i.for.inc45.i_crit_edge, label %for.inc42.i.for.body29.i_crit_edge

for.inc42.i.for.body29.i_crit_edge:               ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29.i

for.inc42.i.for.inc45.i_crit_edge:                ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45.i

for.inc45.i:                                      ; preds = %for.inc42.i.for.inc45.i_crit_edge, %for.end.i.for.inc45.i_crit_edge
  %inc.i = add nuw nsw i32 %i.090.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 99
  br i1 %exitcond.not.i, label %unregister_all_irq_handlers.exit, label %for.inc45.i.for.body.i_crit_edge

for.inc45.i.for.body.i_crit_edge:                 ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

unregister_all_irq_handlers.exit:                 ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock, i32 noundef %call4.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dm_irq_suspend(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %irq_handler_list_table_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 28
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_handler_list_table_lock) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7) #5
  br label %for.body

for.body:                                         ; preds = %do.body32.for.body_crit_edge, %entry
  %src.076 = phi i32 [ 1, %entry ], [ %inc, %do.body32.for.body_crit_edge ]
  %irq_table_flags.075 = phi i32 [ %call4, %entry ], [ %call41, %do.body32.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 %src.076
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %1, %arrayidx
  br i1 %cmp.i.not, label %lor.lhs.false, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 %src.076
  %2 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx11, align 4
  %cmp.i67.not = icmp eq ptr %3, %arrayidx11
  br i1 %cmp.i67.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %4 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm, align 8
  %call16 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %5, i32 noundef %src.076, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock, i32 noundef %irq_table_flags.075) #5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i69.not = icmp eq ptr %7, %arrayidx
  br i1 %cmp.i69.not, label %if.end.do.body32_crit_edge, label %if.end.for.body26_crit_edge

if.end.for.body26_crit_edge:                      ; preds = %if.end
  br label %for.body26

if.end.do.body32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body32

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %if.end.for.body26_crit_edge
  %entry1.074 = phi ptr [ %tmp.0, %for.body26.for.body26_crit_edge ], [ %7, %if.end.for.body26_crit_edge ]
  %8 = ptrtoint ptr %entry1.074 to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.0 = load ptr, ptr %entry1.074, align 4
  %work = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %entry1.074, i32 0, i32 5
  %call28 = tail call zeroext i1 @flush_work(ptr noundef %work) #5
  %cmp.i71.not = icmp eq ptr %tmp.0, %arrayidx
  br i1 %cmp.i71.not, label %for.body26.do.body32_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26

for.body26.do.body32_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body32

do.body32:                                        ; preds = %for.body26.do.body32_crit_edge, %if.end.do.body32_crit_edge
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_handler_list_table_lock) #5
  %inc = add nuw nsw i32 %src.076, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end47, label %do.body32.for.body_crit_edge

do.body32.for.body_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end47:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock, i32 noundef %call41) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_interrupt_set(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dm_irq_resume_early(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %irq_handler_list_table_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 28
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_handler_list_table_lock) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %1, %arrayidx
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 7
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx9, align 4
  %cmp.i25.not = icmp eq ptr %3, %arrayidx9
  br i1 %cmp.i25.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm, align 8
  %call14 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %5, i32 noundef 7, i1 noundef zeroext true) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %lor.lhs.false.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 8
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.1, align 4
  %cmp.i.not.1 = icmp eq ptr %7, %arrayidx.1
  br i1 %cmp.i.not.1, label %lor.lhs.false.1, label %for.inc.if.then.1_crit_edge

for.inc.if.then.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %arrayidx9.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 8
  %8 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx9.1, align 4
  %cmp.i25.not.1 = icmp eq ptr %9, %arrayidx9.1
  br i1 %cmp.i25.not.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %lor.lhs.false.1.if.then.1_crit_edge

lor.lhs.false.1.if.then.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %lor.lhs.false.1.if.then.1_crit_edge, %for.inc.if.then.1_crit_edge
  %10 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dm, align 8
  %call14.1 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %11, i32 noundef 8, i1 noundef zeroext true) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %lor.lhs.false.1.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 9
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.2, align 4
  %cmp.i.not.2 = icmp eq ptr %13, %arrayidx.2
  br i1 %cmp.i.not.2, label %lor.lhs.false.2, label %for.inc.1.if.then.2_crit_edge

for.inc.1.if.then.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.2

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %arrayidx9.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 9
  %14 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx9.2, align 4
  %cmp.i25.not.2 = icmp eq ptr %15, %arrayidx9.2
  br i1 %cmp.i25.not.2, label %lor.lhs.false.2.for.inc.2_crit_edge, label %lor.lhs.false.2.if.then.2_crit_edge

lor.lhs.false.2.if.then.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.2

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %lor.lhs.false.2.if.then.2_crit_edge, %for.inc.1.if.then.2_crit_edge
  %16 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dm, align 8
  %call14.2 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %17, i32 noundef 9, i1 noundef zeroext true) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %lor.lhs.false.2.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 10
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.3, align 4
  %cmp.i.not.3 = icmp eq ptr %19, %arrayidx.3
  br i1 %cmp.i.not.3, label %lor.lhs.false.3, label %for.inc.2.if.then.3_crit_edge

for.inc.2.if.then.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.3

lor.lhs.false.3:                                  ; preds = %for.inc.2
  %arrayidx9.3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 10
  %20 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx9.3, align 4
  %cmp.i25.not.3 = icmp eq ptr %21, %arrayidx9.3
  br i1 %cmp.i25.not.3, label %lor.lhs.false.3.for.inc.3_crit_edge, label %lor.lhs.false.3.if.then.3_crit_edge

lor.lhs.false.3.if.then.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.3

lor.lhs.false.3.for.inc.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %lor.lhs.false.3.if.then.3_crit_edge, %for.inc.2.if.then.3_crit_edge
  %22 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dm, align 8
  %call14.3 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %23, i32 noundef 10, i1 noundef zeroext true) #5
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %lor.lhs.false.3.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 11
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %arrayidx.4, align 4
  %cmp.i.not.4 = icmp eq ptr %25, %arrayidx.4
  br i1 %cmp.i.not.4, label %lor.lhs.false.4, label %for.inc.3.if.then.4_crit_edge

for.inc.3.if.then.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.4

lor.lhs.false.4:                                  ; preds = %for.inc.3
  %arrayidx9.4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 11
  %26 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx9.4, align 4
  %cmp.i25.not.4 = icmp eq ptr %27, %arrayidx9.4
  br i1 %cmp.i25.not.4, label %lor.lhs.false.4.for.inc.4_crit_edge, label %lor.lhs.false.4.if.then.4_crit_edge

lor.lhs.false.4.if.then.4_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.4

lor.lhs.false.4.for.inc.4_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then.4:                                        ; preds = %lor.lhs.false.4.if.then.4_crit_edge, %for.inc.3.if.then.4_crit_edge
  %28 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dm, align 8
  %call14.4 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %29, i32 noundef 11, i1 noundef zeroext true) #5
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %lor.lhs.false.4.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 12
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx.5, align 4
  %cmp.i.not.5 = icmp eq ptr %31, %arrayidx.5
  br i1 %cmp.i.not.5, label %lor.lhs.false.5, label %for.inc.4.if.then.5_crit_edge

for.inc.4.if.then.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.5

lor.lhs.false.5:                                  ; preds = %for.inc.4
  %arrayidx9.5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 12
  %32 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %arrayidx9.5, align 4
  %cmp.i25.not.5 = icmp eq ptr %33, %arrayidx9.5
  br i1 %cmp.i25.not.5, label %lor.lhs.false.5.for.inc.5_crit_edge, label %lor.lhs.false.5.if.then.5_crit_edge

lor.lhs.false.5.if.then.5_crit_edge:              ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.5

lor.lhs.false.5.for.inc.5_crit_edge:              ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then.5:                                        ; preds = %lor.lhs.false.5.if.then.5_crit_edge, %for.inc.4.if.then.5_crit_edge
  %34 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dm, align 8
  %call14.5 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %35, i32 noundef 12, i1 noundef zeroext true) #5
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %lor.lhs.false.5.for.inc.5_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock, i32 noundef %call2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dm_irq_resume_late(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %irq_handler_list_table_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 28
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_handler_list_table_lock) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.9) #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %1, %arrayidx
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 1
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx9, align 4
  %cmp.i25.not = icmp eq ptr %3, %arrayidx9
  br i1 %cmp.i25.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm, align 8
  %call14 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %5, i32 noundef 1, i1 noundef zeroext true) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %lor.lhs.false.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 2
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.1, align 4
  %cmp.i.not.1 = icmp eq ptr %7, %arrayidx.1
  br i1 %cmp.i.not.1, label %lor.lhs.false.1, label %for.inc.if.then.1_crit_edge

for.inc.if.then.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %arrayidx9.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 2
  %8 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx9.1, align 4
  %cmp.i25.not.1 = icmp eq ptr %9, %arrayidx9.1
  br i1 %cmp.i25.not.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %lor.lhs.false.1.if.then.1_crit_edge

lor.lhs.false.1.if.then.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %lor.lhs.false.1.if.then.1_crit_edge, %for.inc.if.then.1_crit_edge
  %10 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dm, align 8
  %call14.1 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %11, i32 noundef 2, i1 noundef zeroext true) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %lor.lhs.false.1.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 3
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.2, align 4
  %cmp.i.not.2 = icmp eq ptr %13, %arrayidx.2
  br i1 %cmp.i.not.2, label %lor.lhs.false.2, label %for.inc.1.if.then.2_crit_edge

for.inc.1.if.then.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.2

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %arrayidx9.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 3
  %14 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx9.2, align 4
  %cmp.i25.not.2 = icmp eq ptr %15, %arrayidx9.2
  br i1 %cmp.i25.not.2, label %lor.lhs.false.2.for.inc.2_crit_edge, label %lor.lhs.false.2.if.then.2_crit_edge

lor.lhs.false.2.if.then.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.2

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %lor.lhs.false.2.if.then.2_crit_edge, %for.inc.1.if.then.2_crit_edge
  %16 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dm, align 8
  %call14.2 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %17, i32 noundef 3, i1 noundef zeroext true) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %lor.lhs.false.2.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 4
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.3, align 4
  %cmp.i.not.3 = icmp eq ptr %19, %arrayidx.3
  br i1 %cmp.i.not.3, label %lor.lhs.false.3, label %for.inc.2.if.then.3_crit_edge

for.inc.2.if.then.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.3

lor.lhs.false.3:                                  ; preds = %for.inc.2
  %arrayidx9.3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 4
  %20 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx9.3, align 4
  %cmp.i25.not.3 = icmp eq ptr %21, %arrayidx9.3
  br i1 %cmp.i25.not.3, label %lor.lhs.false.3.for.inc.3_crit_edge, label %lor.lhs.false.3.if.then.3_crit_edge

lor.lhs.false.3.if.then.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.3

lor.lhs.false.3.for.inc.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %lor.lhs.false.3.if.then.3_crit_edge, %for.inc.2.if.then.3_crit_edge
  %22 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dm, align 8
  %call14.3 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %23, i32 noundef 4, i1 noundef zeroext true) #5
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %lor.lhs.false.3.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 5
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %arrayidx.4, align 4
  %cmp.i.not.4 = icmp eq ptr %25, %arrayidx.4
  br i1 %cmp.i.not.4, label %lor.lhs.false.4, label %for.inc.3.if.then.4_crit_edge

for.inc.3.if.then.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.4

lor.lhs.false.4:                                  ; preds = %for.inc.3
  %arrayidx9.4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 5
  %26 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx9.4, align 4
  %cmp.i25.not.4 = icmp eq ptr %27, %arrayidx9.4
  br i1 %cmp.i25.not.4, label %lor.lhs.false.4.for.inc.4_crit_edge, label %lor.lhs.false.4.if.then.4_crit_edge

lor.lhs.false.4.if.then.4_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.4

lor.lhs.false.4.for.inc.4_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then.4:                                        ; preds = %lor.lhs.false.4.if.then.4_crit_edge, %for.inc.3.if.then.4_crit_edge
  %28 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dm, align 8
  %call14.4 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %29, i32 noundef 5, i1 noundef zeroext true) #5
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %lor.lhs.false.4.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 6
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx.5, align 4
  %cmp.i.not.5 = icmp eq ptr %31, %arrayidx.5
  br i1 %cmp.i.not.5, label %lor.lhs.false.5, label %for.inc.4.if.then.5_crit_edge

for.inc.4.if.then.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.5

lor.lhs.false.5:                                  ; preds = %for.inc.4
  %arrayidx9.5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 6
  %32 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %arrayidx9.5, align 4
  %cmp.i25.not.5 = icmp eq ptr %33, %arrayidx9.5
  br i1 %cmp.i25.not.5, label %lor.lhs.false.5.for.inc.5_crit_edge, label %lor.lhs.false.5.if.then.5_crit_edge

lor.lhs.false.5.if.then.5_crit_edge:              ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.5

lor.lhs.false.5.for.inc.5_crit_edge:              ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then.5:                                        ; preds = %lor.lhs.false.5.if.then.5_crit_edge, %for.inc.4.if.then.5_crit_edge
  %34 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dm, align 8
  %call14.5 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %35, i32 noundef 6, i1 noundef zeroext true) #5
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %lor.lhs.false.5.for.inc.5_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock, i32 noundef %call2) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_dm_set_irq_funcs(ptr nocapture noundef %adev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  %crtc_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 81
  %2 = ptrtoint ptr %crtc_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %crtc_irq, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 81, i32 2
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dm_crtc_irq_funcs, ptr %funcs, align 4
  %vline0_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 82
  %4 = ptrtoint ptr %vline0_irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %vline0_irq, align 8
  %funcs6 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 82, i32 2
  %5 = ptrtoint ptr %funcs6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dm_vline0_irq_funcs, ptr %funcs6, align 8
  %dmub_outbox_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 87
  %6 = ptrtoint ptr %dmub_outbox_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %dmub_outbox_irq, align 4
  %funcs9 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 87, i32 2
  %7 = ptrtoint ptr %funcs9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dm_dmub_outbox_irq_funcs, ptr %funcs9, align 4
  %vupdate_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 83
  %8 = ptrtoint ptr %vupdate_irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %vupdate_irq, align 4
  %funcs14 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 83, i32 2
  %9 = ptrtoint ptr %funcs14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dm_vupdate_irq_funcs, ptr %funcs14, align 4
  %dmub_trace_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 86
  %10 = ptrtoint ptr %dmub_trace_irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %dmub_trace_irq, align 8
  %funcs17 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 86, i32 2
  %11 = ptrtoint ptr %funcs17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dm_dmub_trace_irq_funcs, ptr %funcs17, align 8
  %pageflip_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 84
  %12 = ptrtoint ptr %pageflip_irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %1, ptr %pageflip_irq, align 8
  %funcs22 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 84, i32 2
  %13 = ptrtoint ptr %funcs22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dm_pageflip_irq_funcs, ptr %funcs22, align 8
  %num_hpd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 21
  %14 = ptrtoint ptr %num_hpd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_hpd, align 4
  %hpd_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 85
  %16 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hpd_irq, align 4
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 85, i32 2
  %17 = ptrtoint ptr %funcs26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dm_hpd_irq_funcs, ptr %funcs26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dm_outbox_init(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 8
  %call = tail call zeroext i1 @dc_interrupt_set(ptr noundef %1, i32 noundef 96, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dm_hpd_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #5
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !74
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !74
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i, ptr noundef nonnull %iter) #5
  %call118 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #5
  %tobool.not19 = icmp eq ptr %call118, null
  br i1 %tobool.not19, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %while.body.lr.ph
  %call120 = phi ptr [ %call118, %while.body.lr.ph ], [ %call1, %if.end11.while.body_crit_edge ]
  %dc_link2 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call120, i32 0, i32 6
  %3 = ptrtoint ptr %dc_link2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dc_link2, align 8
  %irq_source_hpd = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %irq_source_hpd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_source_hpd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dm, align 8
  %call4 = call zeroext i1 @dc_interrupt_set(ptr noundef %8, i32 noundef %6, i1 noundef zeroext true) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %irq_source_hpd_rx = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %irq_source_hpd_rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_source_hpd_rx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.not = icmp eq i32 %10, 0
  br i1 %cmp5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dm, align 8
  %call10 = call zeroext i1 @dc_interrupt_set(ptr noundef %12, i32 noundef %10, i1 noundef zeroext true) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %call1 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end11.while.end_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end11.while.end_crit_edge, %entry.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dm_hpd_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #5
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !74
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !74
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i, ptr noundef nonnull %iter) #5
  %call112 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #5
  %tobool.not13 = icmp eq ptr %call112, null
  br i1 %tobool.not13, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call114 = phi ptr [ %call112, %while.body.lr.ph ], [ %call1, %if.end.while.body_crit_edge ]
  %dc_link2 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call114, i32 0, i32 6
  %3 = ptrtoint ptr %dc_link2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dc_link2, align 8
  %5 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dm, align 8
  %irq_source_hpd = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %irq_source_hpd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_source_hpd, align 4
  %call3 = call zeroext i1 @dc_interrupt_set(ptr noundef %6, i32 noundef %8, i1 noundef zeroext false) #5
  %irq_source_hpd_rx = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %irq_source_hpd_rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_source_hpd_rx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dm, align 8
  %call7 = call zeroext i1 @dc_interrupt_set(ptr noundef %12, i32 noundef %10, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %call1 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_dm_set_crtc_irq_state(ptr nocapture noundef readonly %adev, ptr nocapture noundef readnone %source, i32 noundef %crtc_id, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 3, i32 %crtc_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.amdgpu_dm_set_crtc_irq_state, i32 noundef %crtc_id) #5
  br label %dm_irq_state.exit

if.end.i:                                         ; preds = %entry
  %otg_inst.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %otg_inst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %otg_inst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  br i1 %cmp.i, label %if.end.i.dm_irq_state.exit_crit_edge, label %if.end2.i

if.end.i.dm_irq_state.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dm_irq_state.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add i32 %3, 78
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp4.i = icmp eq i32 %state, 1
  %dm.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %4 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm.i, align 8
  %call.i = tail call zeroext i1 @dc_interrupt_set(ptr noundef %5, i32 noundef %add.i, i1 noundef zeroext %cmp4.i) #5
  br label %dm_irq_state.exit

dm_irq_state.exit:                                ; preds = %if.end2.i, %if.end.i.dm_irq_state.exit_crit_edge, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_dm_irq_handler(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 8
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_id, align 8
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %4 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_data, align 4
  %call = tail call i32 @dc_interrupt_to_irq_source(ptr noundef %1, i32 noundef %3, i32 noundef %5) #5
  %6 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dm, align 8
  tail call void @dc_interrupt_ack(ptr noundef %7, i32 noundef %call) #5
  %irq_handler_list_table_lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 28
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_handler_list_table_lock.i) #5
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 21, i32 %call
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %handler_data.026.i = load ptr, ptr %arrayidx.i, align 4
  %cmp10.not27.i = icmp eq ptr %handler_data.026.i, %arrayidx.i
  br i1 %cmp10.not27.i, label %entry.amdgpu_dm_irq_immediate_work.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.amdgpu_dm_irq_immediate_work.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_dm_irq_immediate_work.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %handler_data.028.i = phi ptr [ %handler_data.0.i, %for.body.i.for.body.i_crit_edge ], [ %handler_data.026.i, %entry.for.body.i_crit_edge ]
  %handler.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %handler_data.028.i, i32 0, i32 1
  %9 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handler.i, align 4
  %handler_arg.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %handler_data.028.i, i32 0, i32 2
  %11 = ptrtoint ptr %handler_arg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handler_arg.i, align 4
  tail call void %10(ptr noundef %12) #5
  %13 = ptrtoint ptr %handler_data.028.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %handler_data.0.i = load ptr, ptr %handler_data.028.i, align 4
  %cmp10.not.i = icmp eq ptr %handler_data.0.i, %arrayidx.i
  br i1 %cmp10.not.i, label %for.body.i.amdgpu_dm_irq_immediate_work.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.amdgpu_dm_irq_immediate_work.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_dm_irq_immediate_work.exit

amdgpu_dm_irq_immediate_work.exit:                ; preds = %for.body.i.amdgpu_dm_irq_immediate_work.exit_crit_edge, %entry.amdgpu_dm_irq_immediate_work.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_handler_list_table_lock.i, i32 noundef %call2.i) #5
  %arrayidx.i10 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 %call
  %14 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.i10, align 4
  %cmp.i.not.i = icmp eq ptr %15, %arrayidx.i10
  br i1 %cmp.i.not.i, label %amdgpu_dm_irq_immediate_work.exit.amdgpu_dm_irq_schedule_work.exit_crit_edge, label %amdgpu_dm_irq_immediate_work.exit.for.cond.i_crit_edge

amdgpu_dm_irq_immediate_work.exit.for.cond.i_crit_edge: ; preds = %amdgpu_dm_irq_immediate_work.exit
  br label %for.cond.i

amdgpu_dm_irq_immediate_work.exit.amdgpu_dm_irq_schedule_work.exit_crit_edge: ; preds = %amdgpu_dm_irq_immediate_work.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_dm_irq_schedule_work.exit

for.cond.i:                                       ; preds = %for.body.i12.for.cond.i_crit_edge, %amdgpu_dm_irq_immediate_work.exit.for.cond.i_crit_edge
  %handler_data.0.in.i = phi ptr [ %handler_data.0.i11, %for.body.i12.for.cond.i_crit_edge ], [ %arrayidx.i10, %amdgpu_dm_irq_immediate_work.exit.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %handler_data.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %handler_data.0.i11 = load ptr, ptr %handler_data.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %handler_data.0.i11, %arrayidx.i10
  br i1 %cmp.not.i, label %if.then10.critedge.i, label %for.body.i12

for.body.i12:                                     ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %17 = load ptr, ptr @system_highpri_wq, align 4
  %work.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %handler_data.0.i11, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %work.i) #5
  br i1 %call.i.i, label %for.body.i12.amdgpu_dm_irq_schedule_work.exit_crit_edge, label %for.body.i12.for.cond.i_crit_edge

for.body.i12.for.cond.i_crit_edge:                ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.body.i12.amdgpu_dm_irq_schedule_work.exit_crit_edge: ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_dm_irq_schedule_work.exit

if.then10.critedge.i:                             ; preds = %for.cond.i
  %18 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 2848, i32 noundef 68) #8
  %tobool16.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %if.then10.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %amdgpu_dm_irq_schedule_work.exit

if.end18.i:                                       ; preds = %if.then10.critedge.i
  %handler.i13 = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %handler.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handler.i13, align 4
  %handler19.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %handler19.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %handler19.i, align 8
  %handler_arg.i14 = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %handler_arg.i14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handler_arg.i14, align 4
  %handler_arg20.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %handler_arg20.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %handler_arg20.i, align 4
  %dm21.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %19, i32 0, i32 3
  %27 = ptrtoint ptr %dm21.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dm21.i, align 4
  %dm22.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %dm22.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %dm22.i, align 8
  %irq_source23.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %irq_source23.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call, ptr %irq_source23.i, align 4
  %prev.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 20, i32 %call, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %32, ptr noundef %arrayidx.i10) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end18.i.list_add_tail.exit.i_crit_edge

if.end18.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx.i10, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call7.i.i.i, ptr %32, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end18.i.list_add_tail.exit.i_crit_edge
  %work25.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work25.i, i32 noundef 0) #5
  %37 = ptrtoint ptr %work25.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %work25.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @amdgpu_dm_irq_schedule_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry29.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %entry29.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry29.i, ptr %entry29.i, align 4
  %prev.i66.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i66.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry29.i, ptr %prev.i66.i, align 8
  %func.i = getelementptr inbounds %struct.amdgpu_dm_irq_handler_data, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @dm_irq_work_func, ptr %func.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %41 = load ptr, ptr @system_highpri_wq, align 4
  %call.i67.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %work25.i) #5
  br i1 %call.i67.i, label %if.then33.i, label %if.else.i

if.then33.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %call) #5
  br label %amdgpu_dm_irq_schedule_work.exit

if.else.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %call) #5
  br label %amdgpu_dm_irq_schedule_work.exit

amdgpu_dm_irq_schedule_work.exit:                 ; preds = %if.else.i, %if.then33.i, %if.then17.i, %for.body.i12.amdgpu_dm_irq_schedule_work.exit_crit_edge, %amdgpu_dm_irq_immediate_work.exit.amdgpu_dm_irq_schedule_work.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_interrupt_to_irq_source(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_interrupt_ack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_dm_set_vline0_irq_state(ptr nocapture noundef readonly %adev, ptr nocapture noundef readnone %source, i32 noundef %crtc_id, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 3, i32 %crtc_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.amdgpu_dm_set_vline0_irq_state, i32 noundef %crtc_id) #5
  br label %dm_irq_state.exit

if.end.i:                                         ; preds = %entry
  %otg_inst.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %otg_inst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %otg_inst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  br i1 %cmp.i, label %if.end.i.dm_irq_state.exit_crit_edge, label %if.end2.i

if.end.i.dm_irq_state.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dm_irq_state.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add i32 %3, 84
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp4.i = icmp eq i32 %state, 1
  %dm.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %4 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm.i, align 8
  %call.i = tail call zeroext i1 @dc_interrupt_set(ptr noundef %5, i32 noundef %add.i, i1 noundef zeroext %cmp4.i) #5
  br label %dm_irq_state.exit

dm_irq_state.exit:                                ; preds = %if.end2.i, %if.end.i.dm_irq_state.exit_crit_edge, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_dm_set_dmub_outbox_irq_state(ptr nocapture noundef readonly %adev, ptr nocapture noundef readnone %source, i32 noundef %crtc_id, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 8
  %call = tail call zeroext i1 @dc_interrupt_set(ptr noundef %1, i32 noundef 96, i1 noundef zeroext %cmp) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_dm_set_vupdate_irq_state(ptr nocapture noundef readonly %adev, ptr nocapture noundef readnone %source, i32 noundef %crtc_id, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 3, i32 %crtc_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.amdgpu_dm_set_vupdate_irq_state, i32 noundef %crtc_id) #5
  br label %dm_irq_state.exit

if.end.i:                                         ; preds = %entry
  %otg_inst.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %otg_inst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %otg_inst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  br i1 %cmp.i, label %if.end.i.dm_irq_state.exit_crit_edge, label %if.end2.i

if.end.i.dm_irq_state.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dm_irq_state.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add i32 %3, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp4.i = icmp eq i32 %state, 1
  %dm.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %4 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm.i, align 8
  %call.i = tail call zeroext i1 @dc_interrupt_set(ptr noundef %5, i32 noundef %add.i, i1 noundef zeroext %cmp4.i) #5
  br label %dm_irq_state.exit

dm_irq_state.exit:                                ; preds = %if.end2.i, %if.end.i.dm_irq_state.exit_crit_edge, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_dm_set_dmub_trace_irq_state(ptr nocapture noundef readonly %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 8
  %call = tail call zeroext i1 @dc_interrupt_set(ptr noundef %1, i32 noundef 97, i1 noundef zeroext %cmp) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_dm_set_pflip_irq_state(ptr nocapture noundef readonly %adev, ptr nocapture noundef readnone %source, i32 noundef %crtc_id, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 3, i32 %crtc_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.amdgpu_dm_set_pflip_irq_state, i32 noundef %crtc_id) #5
  br label %dm_irq_state.exit

if.end.i:                                         ; preds = %entry
  %otg_inst.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %otg_inst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %otg_inst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  br i1 %cmp.i, label %if.end.i.dm_irq_state.exit_crit_edge, label %if.end2.i

if.end.i.dm_irq_state.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dm_irq_state.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add i32 %3, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp4.i = icmp eq i32 %state, 1
  %dm.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %4 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm.i, align 8
  %call.i = tail call zeroext i1 @dc_interrupt_set(ptr noundef %5, i32 noundef %add.i, i1 noundef zeroext %cmp4.i) #5
  br label %dm_irq_state.exit

dm_irq_state.exit:                                ; preds = %if.end2.i, %if.end.i.dm_irq_state.exit_crit_edge, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_dm_set_hpd_irq_state(ptr nocapture noundef readonly %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %0 = icmp ult i32 %type, 6
  %switch.offset = add i32 %type, 1
  %retval.0.i = select i1 %0, i32 %switch.offset, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117
  %1 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dm, align 8
  %call1 = tail call zeroext i1 @dc_interrupt_set(ptr noundef %2, i32 noundef %retval.0.i, i1 noundef zeroext %cmp) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 315, i32 3}
!2 = !{ptr @amdgpu_dm_irq_register_interrupt.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 335, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 348, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 394, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 419, i32 2}
!11 = !{ptr @amdgpu_dm_irq_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 421, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 448, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 482, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 520, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 543, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 242, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 247, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 253, i32 3}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 265, i32 3}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 270, i32 3}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 181, i32 2}
!34 = !{ptr @dm_crtc_irq_funcs, !35, !"dm_crtc_irq_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 810, i32 42}
!36 = !{ptr @__func__.amdgpu_dm_set_crtc_irq_state, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 755, i32 3}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 712, i32 3}
!40 = !{ptr @amdgpu_dm_irq_schedule_work.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 601, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 604, i32 4}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 608, i32 4}
!47 = !{ptr @dm_vline0_irq_funcs, !48, !"dm_vline0_irq_funcs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 815, i32 42}
!49 = !{ptr @__func__.amdgpu_dm_set_vline0_irq_state, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 769, i32 3}
!51 = !{ptr @dm_dmub_outbox_irq_funcs, !52, !"dm_dmub_outbox_irq_funcs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 820, i32 42}
!53 = !{ptr @dm_vupdate_irq_funcs, !54, !"dm_vupdate_irq_funcs", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 825, i32 42}
!55 = !{ptr @__func__.amdgpu_dm_set_vupdate_irq_state, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 795, i32 3}
!57 = !{ptr @dm_dmub_trace_irq_funcs, !58, !"dm_dmub_trace_irq_funcs", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 830, i32 42}
!59 = !{ptr @dm_pageflip_irq_funcs, !60, !"dm_pageflip_irq_funcs", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 835, i32 42}
!61 = !{ptr @__func__.amdgpu_dm_set_pflip_irq_state, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 741, i32 3}
!63 = !{ptr @dm_hpd_irq_funcs, !64, !"dm_hpd_irq_funcs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_irq.c", i32 840, i32 42}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
