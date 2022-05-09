; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_ih_ring = type { i32, i32, i32, i8, i8, ptr, ptr, i64, i64, ptr, i64, ptr, i8, i32, %struct.amdgpu_ih_regs, %struct.wait_queue_head, i64 }
%struct.amdgpu_ih_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.amdgpu_sched = type { i32, [8 x ptr] }
%struct.amdgpu_irq = type { i8, i32, %struct.spinlock, [32 x %struct.amdgpu_irq_client], i8, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.amdgpu_irq_src, ptr, [256 x i32], i32 }
%struct.amdgpu_irq_client = type { ptr }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.amdgpu_ih_funcs = type { ptr, ptr, ptr, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@amdgpu_ih_ring_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ih->wait_process\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_ih_wait_on_checkpoint_process_ts.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: rptr %d, wptr %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.amdgpu_ih_process = private unnamed_addr constant [18 x i8] c"amdgpu_ih_process\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 103, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 188, i32 18 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 216, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @amdgpu_ih_ring_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ih_ring_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ih_ring_init(ptr noundef %adev, ptr noundef %ih, i32 noundef %ring_size, i1 noundef zeroext %use_bus_addr) local_unnamed_addr #0 align 64 {
entry:
  %dma_addr = alloca i32, align 4
  %wptr_offs = alloca i32, align 4
  %rptr_offs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %use_bus_addr to i8
  %div156 = lshr i32 %ring_size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ring_size)
  %cmp.i = icmp ugt i32 %ring_size, 7
  %sub.i159 = add nsw i32 %div156, -1
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i159, i1 false) #5, !range !18
  %add.i = sub nuw nsw i32 32, %0
  %add.i.op = shl i32 4, %add.i
  %mul = select i1 %cmp.i, i32 %add.i.op, i32 4
  %1 = ptrtoint ptr %ih to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mul, ptr %ih, align 8
  %sub29 = add i32 %mul, -1
  %ptr_mask = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 1
  %2 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub29, ptr %ptr_mask, align 4
  %rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %3 = ptrtoint ptr %rptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rptr, align 8
  %use_bus_addr30 = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 4
  %4 = ptrtoint ptr %use_bus_addr30 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %use_bus_addr30, align 1
  br i1 %use_bus_addr, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr) #5
  %5 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dma_addr, align 4, !annotation !19
  %ring = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 6
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring, align 4
  %tobool33.not = icmp eq ptr %7, null
  br i1 %tobool33.not, label %if.end, label %if.then.cleanup.thread_crit_edge

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %8 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev, align 8
  %add36 = add i32 %mul, 8
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %add36, ptr noundef nonnull %dma_addr, i32 noundef 3264, i32 noundef 0) #5
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %ring, align 4
  %cmp40 = icmp eq ptr %call.i, null
  br i1 %cmp40, label %if.end.cleanup.thread_crit_edge, label %cleanup

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end.cleanup.thread_crit_edge ], [ 0, %if.then.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #5
  br label %cleanup99

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 4
  %conv44 = zext i32 %12 to i64
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 7
  %13 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv44, ptr %gpu_addr, align 8
  %14 = ptrtoint ptr %ih to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ih, align 8
  %add46 = add i32 %15, %12
  %conv47 = zext i32 %add46 to i64
  %wptr_addr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 8
  %16 = ptrtoint ptr %wptr_addr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv47, ptr %wptr_addr, align 8
  %div50157 = lshr i32 %15, 2
  %arrayidx = getelementptr i32, ptr %call.i, i32 %div50157
  %wptr_cpu = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 9
  %17 = ptrtoint ptr %wptr_cpu to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %wptr_cpu, align 8
  %add53 = add i32 %add46, 4
  %conv54 = zext i32 %add53 to i64
  %rptr_addr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 10
  %18 = ptrtoint ptr %rptr_addr to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv54, ptr %rptr_addr, align 8
  %add58 = add nuw nsw i32 %div50157, 1
  %arrayidx59 = getelementptr i32, ptr %call.i, i32 %add58
  %rptr_cpu = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 11
  %19 = ptrtoint ptr %rptr_cpu to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx59, ptr %rptr_cpu, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #5
  br label %do.body

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wptr_offs) #5
  %20 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %wptr_offs, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rptr_offs) #5
  %21 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %rptr_offs, align 4, !annotation !19
  %call60 = call i32 @amdgpu_device_wb_get(ptr noundef %adev, ptr noundef nonnull %wptr_offs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.else.cleanup94.thread_crit_edge

if.else.cleanup94.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94.thread

if.end63:                                         ; preds = %if.else
  %call64 = call i32 @amdgpu_device_wb_get(ptr noundef %adev, ptr noundef nonnull %rptr_offs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.cleanup94.thread.sink.split_crit_edge

if.end63.cleanup94.thread.sink.split_crit_edge:   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94.thread.sink.split

if.end67:                                         ; preds = %if.end63
  %22 = ptrtoint ptr %ih to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ih, align 8
  %ring_obj = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 5
  %gpu_addr69 = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 7
  %ring70 = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 6
  %call71 = call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %23, i32 noundef 4096, i32 noundef 2, ptr noundef %ring_obj, ptr noundef %gpu_addr69, ptr noundef %ring70) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %cleanup94, label %if.then73

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rptr_offs, align 4
  call void @amdgpu_device_wb_free(ptr noundef %adev, i32 noundef %25) #5
  br label %cleanup94.thread.sink.split

cleanup94.thread.sink.split:                      ; preds = %if.then73, %if.end63.cleanup94.thread.sink.split_crit_edge
  %retval.1.ph.ph = phi i32 [ %call71, %if.then73 ], [ %call64, %if.end63.cleanup94.thread.sink.split_crit_edge ]
  %26 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %26)
  %.sink = load i32, ptr %wptr_offs, align 4
  call void @amdgpu_device_wb_free(ptr noundef %adev, i32 noundef %.sink) #5
  br label %cleanup94.thread

cleanup94.thread:                                 ; preds = %cleanup94.thread.sink.split, %if.else.cleanup94.thread_crit_edge
  %retval.1.ph = phi i32 [ %call60, %if.else.cleanup94.thread_crit_edge ], [ %retval.1.ph.ph, %cleanup94.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rptr_offs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wptr_offs) #5
  br label %cleanup99

cleanup94:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %gpu_addr75 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 70, i32 2
  %27 = ptrtoint ptr %gpu_addr75 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %gpu_addr75, align 8
  %29 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wptr_offs, align 4
  %mul76 = shl i32 %30, 2
  %conv77 = zext i32 %mul76 to i64
  %add78 = add i64 %28, %conv77
  %wptr_addr79 = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 8
  %31 = ptrtoint ptr %wptr_addr79 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add78, ptr %wptr_addr79, align 8
  %wb81 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 70, i32 1
  %32 = ptrtoint ptr %wb81 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wb81, align 4
  %arrayidx82 = getelementptr i32, ptr %33, i32 %30
  %wptr_cpu83 = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 9
  %34 = ptrtoint ptr %wptr_cpu83 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx82, ptr %wptr_cpu83, align 8
  %35 = load i64, ptr %gpu_addr75, align 8
  %36 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rptr_offs, align 4
  %mul86 = shl i32 %37, 2
  %conv87 = zext i32 %mul86 to i64
  %add88 = add i64 %35, %conv87
  %rptr_addr89 = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 10
  %38 = ptrtoint ptr %rptr_addr89 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add88, ptr %rptr_addr89, align 8
  %39 = load ptr, ptr %wb81, align 4
  %arrayidx92 = getelementptr i32, ptr %39, i32 %37
  %rptr_cpu93 = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 11
  %40 = ptrtoint ptr %rptr_cpu93 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx92, ptr %rptr_cpu93, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rptr_offs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wptr_offs) #5
  br label %do.body

do.body:                                          ; preds = %cleanup94, %cleanup
  %wait_process = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 15
  call void @__init_waitqueue_head(ptr noundef %wait_process, ptr noundef nonnull @.str, ptr noundef nonnull @amdgpu_ih_ring_init.__key) #5
  br label %cleanup99

cleanup99:                                        ; preds = %do.body, %cleanup94.thread, %cleanup.thread
  %retval.2 = phi i32 [ 0, %do.body ], [ %retval.0.ph, %cleanup.thread ], [ %retval.1.ph, %cleanup94.thread ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_wb_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wb_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ih_ring_fini(ptr noundef %adev, ptr noundef %ih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ring = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 6
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.end

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end:                                           ; preds = %entry
  %use_bus_addr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 4
  %2 = ptrtoint ptr %use_bus_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_bus_addr, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 8
  %6 = ptrtoint ptr %ih to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ih, align 8
  %add = add i32 %7, 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 7
  %8 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %9 to i32
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %add, ptr noundef nonnull %1, i32 noundef %conv, i32 noundef 0) #5
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ring, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ring_obj = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 5
  %gpu_addr5 = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 7
  tail call void @amdgpu_bo_free_kernel(ptr noundef %ring_obj, ptr noundef %gpu_addr5, ptr noundef %ring) #5
  %wptr_addr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 8
  %11 = ptrtoint ptr %wptr_addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %wptr_addr, align 8
  %13 = ptrtoint ptr %gpu_addr5 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %gpu_addr5, align 8
  %sub = sub i64 %12, %14
  %div28 = lshr i64 %sub, 2
  %conv8 = trunc i64 %div28 to i32
  tail call void @amdgpu_device_wb_free(ptr noundef %adev, i32 noundef %conv8) #5
  %rptr_addr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 10
  %15 = ptrtoint ptr %rptr_addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rptr_addr, align 8
  %17 = ptrtoint ptr %gpu_addr5 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %gpu_addr5, align 8
  %sub10 = sub i64 %16, %18
  %div1129 = lshr i64 %sub10, 2
  %conv12 = trunc i64 %div1129 to i32
  tail call void @amdgpu_device_wb_free(ptr noundef %adev, i32 noundef %conv12) #5
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then2, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ih_ring_write(ptr noundef %ih, ptr nocapture noundef readonly %iv, i32 noundef %num_dw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wptr_cpu = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 9
  %0 = ptrtoint ptr %wptr_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wptr_cpu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shr = lshr i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_dw)
  %cmp27.not = icmp eq i32 %num_dw, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ring = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %wptr.029 = phi i32 [ %shr, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc2, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %iv, i32 %i.028
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring, align 4
  %inc = add i32 %wptr.029, 1
  %arrayidx1 = getelementptr i32, ptr %9, i32 %wptr.029
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %7, ptr %arrayidx1, align 4
  %inc2 = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc2, %num_dw
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %wptr.0.lcssa = phi i32 [ %shr, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %shl = shl i32 %wptr.0.lcssa, 2
  %ptr_mask = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 1
  %11 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ptr_mask, align 4
  %and = and i32 %12, %shl
  %rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %13 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %rptr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %14)
  %cmp3.not = icmp eq i32 %and, %14
  br i1 %cmp3.not, label %for.end.if.end_crit_edge, label %do.body4

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %and)
  %16 = ptrtoint ptr %wptr_cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wptr_cpu, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %15, ptr %17, align 4
  br label %if.end

if.end:                                           ; preds = %do.body4, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ih_wait_on_checkpoint_process_ts(ptr noundef %adev, ptr noundef %ih) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 12
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup116_crit_edge, label %lor.lhs.false

entry.cleanup116_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116

lor.lhs.false:                                    ; preds = %entry
  %shutdown = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 13
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shutdown, align 8, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup116_crit_edge

lor.lhs.false.cleanup116_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116

if.end:                                           ; preds = %lor.lhs.false
  %ih_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 9
  %4 = ptrtoint ptr %ih_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ih_funcs, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %adev, ptr noundef %ih) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %8 = ptrtoint ptr %ih_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ih_funcs, align 8
  %decode_iv_ts = getelementptr inbounds %struct.amdgpu_ih_funcs, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %decode_iv_ts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %decode_iv_ts, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.rhs, label %cond.false.critedge

land.rhs:                                         ; preds = %if.end
  %.b150 = load i1, ptr @amdgpu_ih_wait_on_checkpoint_process_ts.__already_done, align 1
  br i1 %.b150, label %land.rhs.cond.end_crit_edge, label %if.then13, !prof !23

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @amdgpu_ih_wait_on_checkpoint_process_ts.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 188, i32 noundef 9, ptr noundef null) #5
  br label %cond.end

cond.false.critedge:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call i64 %11(ptr noundef %ih, i32 noundef %call, i32 noundef -1) #5
  %phi.bo = shl i64 %call47, 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %if.then13, %land.rhs.cond.end_crit_edge
  %cond = phi i64 [ %phi.bo, %cond.false.critedge ], [ 0, %if.then13 ], [ 0, %land.rhs.cond.end_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 192) #5
  %processed_timestamp = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 16
  %12 = ptrtoint ptr %processed_timestamp to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %processed_timestamp, align 8
  %shl = shl i64 %13, 16
  %sub = sub i64 %shl, %cond
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp sgt i64 %sub, 0
  br i1 %cmp, label %cond.end.cleanup116_crit_edge, label %lor.rhs

cond.end.cleanup116_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116

lor.rhs:                                          ; preds = %cond.end
  %rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %14 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rptr, align 8
  %16 = ptrtoint ptr %ih_funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ih_funcs, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call58 = tail call i32 %19(ptr noundef %adev, ptr noundef %ih) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call58)
  %cmp59 = icmp eq i32 %15, %call58
  br i1 %cmp59, label %lor.rhs.cleanup116_crit_edge, label %if.then73

lor.rhs.cleanup116_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116

if.then73:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %wait_process = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 15
  %call75175 = call i32 @prepare_to_wait_event(ptr noundef %wait_process, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %21 = ptrtoint ptr %processed_timestamp to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %processed_timestamp, align 8
  %shl78176 = shl i64 %22, 16
  %sub80177 = sub i64 %shl78176, %cond
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub80177)
  %cmp81178 = icmp sgt i64 %sub80177, 0
  br i1 %cmp81178, label %if.then73.for.end_crit_edge, label %if.then73.lor.end89_crit_edge

if.then73.lor.end89_crit_edge:                    ; preds = %if.then73
  br label %lor.end89

if.then73.for.end_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

lor.end89.thread:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool94.not152 = icmp eq i32 %call111, 0
  %spec.select = select i1 %tobool94.not152, i32 1, i32 %call111
  br label %for.end

lor.end89:                                        ; preds = %cleanup.lor.end89_crit_edge, %if.then73.lor.end89_crit_edge
  %call75180 = phi i32 [ %call75, %cleanup.lor.end89_crit_edge ], [ %call75175, %if.then73.lor.end89_crit_edge ]
  %__ret74.0179 = phi i32 [ %call111, %cleanup.lor.end89_crit_edge ], [ 100, %if.then73.lor.end89_crit_edge ]
  %23 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rptr, align 8
  %25 = ptrtoint ptr %ih_funcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ih_funcs, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call87 = call i32 %28(ptr noundef %adev, ptr noundef %ih) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call87)
  %cmp88 = icmp eq i32 %24, %call87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret74.0179)
  %tobool94.not.le = icmp eq i32 %__ret74.0179, 0
  br i1 %cmp88, label %for.end.loopexit.split.loop.exit170, label %29

29:                                               ; preds = %lor.end89
  br i1 %tobool94.not.le, label %.for.end_crit_edge, label %if.end107

.for.end_crit_edge:                               ; preds = %29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end107:                                        ; preds = %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75180)
  %tobool108.not = icmp eq i32 %call75180, 0
  br i1 %tobool108.not, label %cleanup, label %if.end107.__out_crit_edge

if.end107.__out_crit_edge:                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %__out

cleanup:                                          ; preds = %if.end107
  %call111 = call i32 @schedule_timeout(i32 noundef %__ret74.0179) #5
  %call75 = call i32 @prepare_to_wait_event(ptr noundef %wait_process, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %30 = ptrtoint ptr %processed_timestamp to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %processed_timestamp, align 8
  %shl78 = shl i64 %31, 16
  %sub80 = sub i64 %shl78, %cond
  %cmp81 = icmp sgt i64 %sub80, 0
  br i1 %cmp81, label %lor.end89.thread, label %cleanup.lor.end89_crit_edge

cleanup.lor.end89_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end89

for.end.loopexit.split.loop.exit170:              ; preds = %lor.end89
  call void @__sanitizer_cov_trace_pc() #7
  %spec.store.select119.le = select i1 %tobool94.not.le, i32 1, i32 %__ret74.0179
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit170, %.for.end_crit_edge, %lor.end89.thread, %if.then73.for.end_crit_edge
  %__ret74.2.ph = phi i32 [ %spec.store.select119.le, %for.end.loopexit.split.loop.exit170 ], [ 100, %if.then73.for.end_crit_edge ], [ %spec.select, %lor.end89.thread ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait_process, ptr noundef nonnull %__wq_entry) #5
  br label %__out

__out:                                            ; preds = %for.end, %if.end107.__out_crit_edge
  %__ret74.2158 = phi i32 [ %__ret74.2.ph, %for.end ], [ %call75180, %if.end107.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %cleanup116

cleanup116:                                       ; preds = %__out, %lor.rhs.cleanup116_crit_edge, %cond.end.cleanup116_crit_edge, %lor.lhs.false.cleanup116_crit_edge, %entry.cleanup116_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup116_crit_edge ], [ -19, %entry.cleanup116_crit_edge ], [ 100, %lor.rhs.cleanup116_crit_edge ], [ %__ret74.2158, %__out ], [ 100, %cond.end.cleanup116_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ih_process(ptr noundef %adev, ptr noundef %ih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 12
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %shutdown = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 13
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shutdown, align 8, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ih_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 9
  %4 = ptrtoint ptr %ih_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ih_funcs, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %adev, ptr noundef %ih) #5
  %rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %ptr_mask = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 1
  %wait_process = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 15
  br label %restart_ih

restart_ih:                                       ; preds = %while.end.restart_ih_crit_edge, %if.end
  %wptr.0 = phi i32 [ %call, %if.end ], [ %call10, %while.end.restart_ih_crit_edge ]
  %8 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rptr, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.amdgpu_ih_process, i32 noundef %9, i32 noundef %wptr.0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  %10 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rptr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %wptr.0)
  %cmp.not35 = icmp eq i32 %11, %wptr.0
  br i1 %cmp.not35, label %restart_ih.while.end_crit_edge, label %restart_ih.land.rhs_crit_edge

restart_ih.land.rhs_crit_edge:                    ; preds = %restart_ih
  br label %land.rhs

restart_ih.while.end_crit_edge:                   ; preds = %restart_ih
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %restart_ih.land.rhs_crit_edge
  %count.036 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 32, %restart_ih.land.rhs_crit_edge ]
  %dec = add nsw i32 %count.036, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  tail call void @amdgpu_irq_dispatch(ptr noundef %adev, ptr noundef %ih) #5
  %12 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ptr_mask, align 4
  %14 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rptr, align 8
  %and = and i32 %15, %13
  store i32 %and, ptr %rptr, align 8
  %cmp.not = icmp eq i32 %and, %wptr.0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %restart_ih.while.end_crit_edge
  %16 = ptrtoint ptr %ih_funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ih_funcs, align 8
  %set_rptr = getelementptr inbounds %struct.amdgpu_ih_funcs, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %set_rptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_rptr, align 4
  tail call void %19(ptr noundef %adev, ptr noundef %ih) #5
  tail call void @__wake_up(ptr noundef %wait_process, i32 noundef 3, i32 noundef 0, ptr noundef null) #5
  %20 = ptrtoint ptr %ih_funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ih_funcs, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call10 = tail call i32 %23(ptr noundef %adev, ptr noundef %ih) #5
  %24 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rptr, align 8
  %cmp12.not = icmp eq i32 %call10, %25
  br i1 %cmp12.not, label %while.end.cleanup_crit_edge, label %while.end.restart_ih_crit_edge

while.end.restart_ih_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart_ih

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %while.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_irq_dispatch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_ih_decode_iv_helper(ptr nocapture noundef readnone %adev, ptr nocapture noundef %ih, ptr nocapture noundef writeonly %entry1) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %0 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rptr, align 8
  %shr = lshr i32 %1, 2
  %ring = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 6
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add4 = add nuw nsw i32 %shr, 1
  %arrayidx5 = getelementptr i32, ptr %3, i32 %add4
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %add8 = add nuw nsw i32 %shr, 2
  %arrayidx9 = getelementptr i32, ptr %3, i32 %add8
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %add12 = add nuw nsw i32 %shr, 3
  %arrayidx13 = getelementptr i32, ptr %3, i32 %add12
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx13, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %add16 = add nuw nsw i32 %shr, 4
  %arrayidx17 = getelementptr i32, ptr %3, i32 %add16
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx17, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add20 = add nuw nsw i32 %shr, 5
  %arrayidx21 = getelementptr i32, ptr %3, i32 %add20
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx21, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add24 = add nuw nsw i32 %shr, 6
  %arrayidx25 = getelementptr i32, ptr %3, i32 %add24
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx25, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add28 = add nuw nsw i32 %shr, 7
  %arrayidx29 = getelementptr i32, ptr %3, i32 %add28
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx29, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %and = and i32 %6, 255
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %28 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and, ptr %client_id, align 4
  %shr33 = lshr i32 %6, 8
  %and34 = and i32 %shr33, 255
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %29 = ptrtoint ptr %src_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and34, ptr %src_id, align 8
  %shr36 = lshr i32 %6, 16
  %and37 = and i32 %shr36, 255
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %30 = ptrtoint ptr %ring_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and37, ptr %ring_id, align 4
  %shr39 = lshr i32 %6, 24
  %and40 = and i32 %shr39, 15
  %vmid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 4
  %31 = ptrtoint ptr %vmid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and40, ptr %vmid, align 8
  %shr42 = lshr i32 %6, 31
  %vmid_src = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 5
  %32 = ptrtoint ptr %vmid_src to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr42, ptr %vmid_src, align 4
  %conv = zext i32 %9 to i64
  %and45 = and i32 %12, 65535
  %conv46 = zext i32 %and45 to i64
  %shl = shl nuw nsw i64 %conv46, 32
  %or = or i64 %shl, %conv
  %timestamp = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 6
  %33 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %or, ptr %timestamp, align 8
  %shr48 = lshr i32 %12, 31
  %timestamp_src = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 7
  %34 = ptrtoint ptr %timestamp_src to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr48, ptr %timestamp_src, align 8
  %and50 = and i32 %15, 65535
  %pasid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 8
  %35 = ptrtoint ptr %pasid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and50, ptr %pasid, align 4
  %shr52 = lshr i32 %15, 31
  %pasid_src = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 9
  %36 = ptrtoint ptr %pasid_src to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr52, ptr %pasid_src, align 8
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %37 = ptrtoint ptr %src_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %18, ptr %src_data, align 4
  %arrayidx57 = getelementptr %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %21, ptr %arrayidx57, align 4
  %arrayidx60 = getelementptr %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10, i32 2
  %39 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %24, ptr %arrayidx60, align 4
  %arrayidx63 = getelementptr %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10, i32 3
  %40 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %27, ptr %arrayidx63, align 4
  %41 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rptr, align 8
  %add65 = add i32 %42, 32
  store i32 %add65, ptr %rptr, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @amdgpu_ih_decode_iv_ts_helper(ptr nocapture noundef readonly %ih, i32 noundef %rptr, i32 noundef %offset) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %offset, 5
  %add = add i32 %mul, %rptr
  %ptr_mask = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 1
  %0 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptr_mask, align 4
  %and = and i32 %1, %add
  %shr = lshr i32 %and, 2
  %ring = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 6
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %add1 = add nuw nsw i32 %shr, 1
  %arrayidx = getelementptr i32, ptr %3, i32 %add1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  %add3 = add nuw nsw i32 %shr, 2
  %arrayidx4 = getelementptr i32, ptr %3, i32 %add3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx4, align 4
  %8 = and i32 %7, -65536
  %9 = zext i32 %8 to i64
  %10 = zext i32 %5 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or i64 %11, %9
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  ret i64 %13
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @amdgpu_ih_ring_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c", i32 103, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c", i32 188, i32 18}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ih.c", i32 216, i32 2}
!8 = !{ptr @__func__.amdgpu_ih_process, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i32 0, i32 33}
!19 = !{!"auto-init"}
!20 = !{i8 0, i8 2}
!21 = !{i64 2158714735}
!22 = !{i64 2158717239}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2158721656}
