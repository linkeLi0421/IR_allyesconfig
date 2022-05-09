; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gfxhub_v1_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gfxhub_v1_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_gfxhub_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@gfxhub_v1_0_funcs = dso_local constant { %struct.amdgpu_gfxhub_funcs, [60 x i8] } { %struct.amdgpu_gfxhub_funcs { ptr null, ptr @gfxhub_v1_0_get_mc_fb_offset, ptr @gfxhub_v1_0_setup_vm_pt_regs, ptr @gfxhub_v1_0_gart_enable, ptr @gfxhub_v1_0_gart_disable, ptr @gfxhub_v1_0_set_fault_enable_default, ptr @gfxhub_v1_0_init, ptr @gfxhub_v1_1_get_xgmi_info, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"gfxhub_v1_0_funcs\00", align 1
@___asan_gen_.2 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/gfxhub_v1_0.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 444, i32 34 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @gfxhub_v1_0_funcs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v1_0_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gfxhub_v1_0_get_mc_fb_offset(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 2411
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 2411
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %conv = zext i32 %cond to i64
  %shl = shl nuw nsw i64 %conv, 24
  ret i64 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfxhub_v1_0_setup_vm_pt_regs(ptr noundef %adev, i32 noundef %vmid, i64 noundef %page_table_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 2283
  %ctx_addr_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %10 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_addr_distance, align 4
  %mul = mul i32 %11, %vmid
  %add14 = add i32 %add, %mul
  %conv = trunc i64 %page_table_base to i32
  tail call void %5(ptr noundef %adev, i32 noundef %add14, i32 noundef %conv, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add20 = add i32 %15, 2283
  %ctx_addr_distance21 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %16 = ptrtoint ptr %ctx_addr_distance21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctx_addr_distance21, align 4
  %mul22 = mul i32 %17, %vmid
  %add23 = add i32 %add20, %mul22
  %conv25 = trunc i64 %page_table_base to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add23, i32 noundef %conv25, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and28 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %cond.end.cond.false56_crit_edge, label %land.lhs.true30

cond.end.cond.false56_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false56

land.lhs.true30:                                  ; preds = %cond.end
  %funcs33 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs33, align 4
  %tobool34.not = icmp eq ptr %21, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false56_crit_edge, label %land.lhs.true35

land.lhs.true30.cond.false56_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false56

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %sriov_wreg39 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg39, align 4
  %tobool40.not = icmp eq ptr %23, null
  br i1 %tobool40.not, label %land.lhs.true35.cond.false56_crit_edge, label %cond.true41

land.lhs.true35.cond.false56_crit_edge:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false56

cond.true41:                                      ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add50 = add i32 %27, 2284
  %ctx_addr_distance51 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %28 = ptrtoint ptr %ctx_addr_distance51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx_addr_distance51, align 4
  %mul52 = mul i32 %29, %vmid
  %add53 = add i32 %add50, %mul52
  %shr = lshr i64 %page_table_base, 32
  %conv55 = trunc i64 %shr to i32
  tail call void %23(ptr noundef %adev, i32 noundef %add53, i32 noundef %conv55, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end68

cond.false56:                                     ; preds = %land.lhs.true35.cond.false56_crit_edge, %land.lhs.true30.cond.false56_crit_edge, %cond.end.cond.false56_crit_edge
  %arrayidx58 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx58, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add61 = add i32 %33, 2284
  %ctx_addr_distance62 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %34 = ptrtoint ptr %ctx_addr_distance62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctx_addr_distance62, align 4
  %mul63 = mul i32 %35, %vmid
  %add64 = add i32 %add61, %mul63
  %shr65 = lshr i64 %page_table_base, 32
  %conv67 = trunc i64 %shr65 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add64, i32 noundef %conv67, i32 noundef 0) #4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false56, %cond.true41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfxhub_v1_0_gart_enable(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdb0_bo.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 44
  %0 = ptrtoint ptr %pdb0_bo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdb0_bo.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i64 @amdgpu_gmc_pd_addr(ptr noundef nonnull %1) #4
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %2 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gart.i, align 8
  %call3.i = tail call i64 @amdgpu_gmc_pd_addr(ptr noundef %3) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %pt_base.0.i = phi i64 [ %call.i, %if.then.i ], [ %call3.i, %if.else.i ]
  tail call void @gfxhub_v1_0_setup_vm_pt_regs(ptr noundef %adev, i32 noundef 0, i64 noundef %pt_base.0.i) #4
  %4 = ptrtoint ptr %pdb0_bo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdb0_bo.i, align 8
  %tobool6.not.i = icmp eq ptr %5, null
  %virt151.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %6 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt151.i, align 8
  %and153.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153.i)
  %tobool154.not.i = icmp eq i32 %and153.i, 0
  br i1 %tobool6.not.i, label %if.else150.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  br i1 %tobool154.not.i, label %if.then7.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.then7.i.cond.false.i_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then7.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool9.not.i = icmp eq ptr %9, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool14.not.i = icmp eq ptr %11, null
  br i1 %tobool14.not.i, label %land.lhs.true10.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true10.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add.i = add i32 %15, 2315
  %fb_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %16 = ptrtoint ptr %fb_start.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fb_start.i, align 8
  %shr.i = lshr i64 %17, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void %11(ptr noundef %adev, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true10.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.then7.i.cond.false.i_crit_edge
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %18 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx23.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add26.i = add i32 %21, 2315
  %fb_start28.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %22 = ptrtoint ptr %fb_start28.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fb_start28.i, align 8
  %shr29.i = lshr i64 %23, 12
  %conv30.i = trunc i64 %shr29.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add26.i, i32 noundef %conv30.i, i32 noundef 0) #4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %24 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %virt151.i, align 8
  %and33.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %cond.end.i.cond.false60.i_crit_edge, label %land.lhs.true35.i

cond.end.i.cond.false60.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false60.i

land.lhs.true35.i:                                ; preds = %cond.end.i
  %funcs38.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %26 = ptrtoint ptr %funcs38.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %funcs38.i, align 4
  %tobool39.not.i = icmp eq ptr %27, null
  br i1 %tobool39.not.i, label %land.lhs.true35.i.cond.false60.i_crit_edge, label %land.lhs.true40.i

land.lhs.true35.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false60.i

land.lhs.true40.i:                                ; preds = %land.lhs.true35.i
  %sriov_wreg44.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %sriov_wreg44.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sriov_wreg44.i, align 4
  %tobool45.not.i = icmp eq ptr %29, null
  br i1 %tobool45.not.i, label %land.lhs.true40.i.cond.false60.i_crit_edge, label %cond.true46.i

land.lhs.true40.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false60.i

cond.true46.i:                                    ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx52.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %30 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx52.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add55.i = add i32 %33, 2316
  %fb_start57.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %34 = ptrtoint ptr %fb_start57.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %fb_start57.i, align 8
  %shr58.i = lshr i64 %35, 44
  %conv59.i = trunc i64 %shr58.i to i32
  tail call void %29(ptr noundef %adev, i32 noundef %add55.i, i32 noundef %conv59.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end70.i

cond.false60.i:                                   ; preds = %land.lhs.true40.i.cond.false60.i_crit_edge, %land.lhs.true35.i.cond.false60.i_crit_edge, %cond.end.i.cond.false60.i_crit_edge
  %arrayidx62.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %36 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx62.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add65.i = add i32 %39, 2316
  %fb_start67.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %40 = ptrtoint ptr %fb_start67.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %fb_start67.i, align 8
  %shr68.i = lshr i64 %41, 44
  %conv69.i = trunc i64 %shr68.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add65.i, i32 noundef %conv69.i, i32 noundef 0) #4
  br label %cond.end70.i

cond.end70.i:                                     ; preds = %cond.false60.i, %cond.true46.i
  %42 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %virt151.i, align 8
  %and73.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %cond.end70.i.cond.false99.i_crit_edge, label %land.lhs.true75.i

cond.end70.i.cond.false99.i_crit_edge:            ; preds = %cond.end70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false99.i

land.lhs.true75.i:                                ; preds = %cond.end70.i
  %funcs78.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %44 = ptrtoint ptr %funcs78.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs78.i, align 4
  %tobool79.not.i = icmp eq ptr %45, null
  br i1 %tobool79.not.i, label %land.lhs.true75.i.cond.false99.i_crit_edge, label %land.lhs.true80.i

land.lhs.true75.i.cond.false99.i_crit_edge:       ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false99.i

land.lhs.true80.i:                                ; preds = %land.lhs.true75.i
  %sriov_wreg84.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %sriov_wreg84.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sriov_wreg84.i, align 4
  %tobool85.not.i = icmp eq ptr %47, null
  br i1 %tobool85.not.i, label %land.lhs.true80.i.cond.false99.i_crit_edge, label %cond.true86.i

land.lhs.true80.i.cond.false99.i_crit_edge:       ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false99.i

cond.true86.i:                                    ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx92.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %48 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx92.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add95.i = add i32 %51, 2347
  %gart_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %52 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %gart_end.i, align 8
  %shr97.i = lshr i64 %53, 12
  %conv98.i = trunc i64 %shr97.i to i32
  tail call void %47(ptr noundef %adev, i32 noundef %add95.i, i32 noundef %conv98.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end109.i

cond.false99.i:                                   ; preds = %land.lhs.true80.i.cond.false99.i_crit_edge, %land.lhs.true75.i.cond.false99.i_crit_edge, %cond.end70.i.cond.false99.i_crit_edge
  %arrayidx101.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %54 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx101.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add104.i = add i32 %57, 2347
  %gart_end106.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %58 = ptrtoint ptr %gart_end106.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %gart_end106.i, align 8
  %shr107.i = lshr i64 %59, 12
  %conv108.i = trunc i64 %shr107.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add104.i, i32 noundef %conv108.i, i32 noundef 0) #4
  br label %cond.end109.i

cond.end109.i:                                    ; preds = %cond.false99.i, %cond.true86.i
  %60 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %virt151.i, align 8
  %and112.i = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  br i1 %tobool113.not.i, label %cond.end109.i.cond.false139.i_crit_edge, label %land.lhs.true114.i

cond.end109.i.cond.false139.i_crit_edge:          ; preds = %cond.end109.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false139.i

land.lhs.true114.i:                               ; preds = %cond.end109.i
  %funcs117.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %62 = ptrtoint ptr %funcs117.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %funcs117.i, align 4
  %tobool118.not.i = icmp eq ptr %63, null
  br i1 %tobool118.not.i, label %land.lhs.true114.i.cond.false139.i_crit_edge, label %land.lhs.true119.i

land.lhs.true114.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false139.i

land.lhs.true119.i:                               ; preds = %land.lhs.true114.i
  %sriov_wreg123.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %sriov_wreg123.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sriov_wreg123.i, align 4
  %tobool124.not.i = icmp eq ptr %65, null
  br i1 %tobool124.not.i, label %land.lhs.true119.i.cond.false139.i_crit_edge, label %cond.true125.i

land.lhs.true119.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false139.i

cond.true125.i:                                   ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx131.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %66 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx131.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add134.i = add i32 %69, 2348
  %gart_end136.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %70 = ptrtoint ptr %gart_end136.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %gart_end136.i, align 8
  %shr137.i = lshr i64 %71, 44
  %conv138.i = trunc i64 %shr137.i to i32
  tail call void %65(ptr noundef %adev, i32 noundef %add134.i, i32 noundef %conv138.i, i32 noundef 0, i32 noundef 1) #4
  br label %gfxhub_v1_0_init_gart_aperture_regs.exit

cond.false139.i:                                  ; preds = %land.lhs.true119.i.cond.false139.i_crit_edge, %land.lhs.true114.i.cond.false139.i_crit_edge, %cond.end109.i.cond.false139.i_crit_edge
  %arrayidx141.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %72 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx141.i, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %add144.i = add i32 %75, 2348
  %gart_end146.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %76 = ptrtoint ptr %gart_end146.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %gart_end146.i, align 8
  %shr147.i = lshr i64 %77, 44
  %conv148.i = trunc i64 %shr147.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add144.i, i32 noundef %conv148.i, i32 noundef 0) #4
  br label %gfxhub_v1_0_init_gart_aperture_regs.exit

if.else150.i:                                     ; preds = %if.end.i
  br i1 %tobool154.not.i, label %if.else150.i.cond.false179.i_crit_edge, label %land.lhs.true155.i

if.else150.i.cond.false179.i_crit_edge:           ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false179.i

land.lhs.true155.i:                               ; preds = %if.else150.i
  %funcs158.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %78 = ptrtoint ptr %funcs158.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %funcs158.i, align 4
  %tobool159.not.i = icmp eq ptr %79, null
  br i1 %tobool159.not.i, label %land.lhs.true155.i.cond.false179.i_crit_edge, label %land.lhs.true160.i

land.lhs.true155.i.cond.false179.i_crit_edge:     ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false179.i

land.lhs.true160.i:                               ; preds = %land.lhs.true155.i
  %sriov_wreg164.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %sriov_wreg164.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sriov_wreg164.i, align 4
  %tobool165.not.i = icmp eq ptr %81, null
  br i1 %tobool165.not.i, label %land.lhs.true160.i.cond.false179.i_crit_edge, label %cond.true166.i

land.lhs.true160.i.cond.false179.i_crit_edge:     ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false179.i

cond.true166.i:                                   ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx172.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %82 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx172.i, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %add175.i = add i32 %85, 2315
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %86 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %gart_start.i, align 8
  %shr177.i = lshr i64 %87, 12
  %conv178.i = trunc i64 %shr177.i to i32
  tail call void %81(ptr noundef %adev, i32 noundef %add175.i, i32 noundef %conv178.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end189.i

cond.false179.i:                                  ; preds = %land.lhs.true160.i.cond.false179.i_crit_edge, %land.lhs.true155.i.cond.false179.i_crit_edge, %if.else150.i.cond.false179.i_crit_edge
  %arrayidx181.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %88 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx181.i, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add184.i = add i32 %91, 2315
  %gart_start186.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %92 = ptrtoint ptr %gart_start186.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %gart_start186.i, align 8
  %shr187.i = lshr i64 %93, 12
  %conv188.i = trunc i64 %shr187.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add184.i, i32 noundef %conv188.i, i32 noundef 0) #4
  br label %cond.end189.i

cond.end189.i:                                    ; preds = %cond.false179.i, %cond.true166.i
  %94 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %virt151.i, align 8
  %and192.i = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192.i)
  %tobool193.not.i = icmp eq i32 %and192.i, 0
  br i1 %tobool193.not.i, label %cond.end189.i.cond.false219.i_crit_edge, label %land.lhs.true194.i

cond.end189.i.cond.false219.i_crit_edge:          ; preds = %cond.end189.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false219.i

land.lhs.true194.i:                               ; preds = %cond.end189.i
  %funcs197.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %96 = ptrtoint ptr %funcs197.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %funcs197.i, align 4
  %tobool198.not.i = icmp eq ptr %97, null
  br i1 %tobool198.not.i, label %land.lhs.true194.i.cond.false219.i_crit_edge, label %land.lhs.true199.i

land.lhs.true194.i.cond.false219.i_crit_edge:     ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false219.i

land.lhs.true199.i:                               ; preds = %land.lhs.true194.i
  %sriov_wreg203.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %sriov_wreg203.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sriov_wreg203.i, align 4
  %tobool204.not.i = icmp eq ptr %99, null
  br i1 %tobool204.not.i, label %land.lhs.true199.i.cond.false219.i_crit_edge, label %cond.true205.i

land.lhs.true199.i.cond.false219.i_crit_edge:     ; preds = %land.lhs.true199.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false219.i

cond.true205.i:                                   ; preds = %land.lhs.true199.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx211.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %100 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx211.i, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add214.i = add i32 %103, 2316
  %gart_start216.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %104 = ptrtoint ptr %gart_start216.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %gart_start216.i, align 8
  %shr217.i = lshr i64 %105, 44
  %conv218.i = trunc i64 %shr217.i to i32
  tail call void %99(ptr noundef %adev, i32 noundef %add214.i, i32 noundef %conv218.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end229.i

cond.false219.i:                                  ; preds = %land.lhs.true199.i.cond.false219.i_crit_edge, %land.lhs.true194.i.cond.false219.i_crit_edge, %cond.end189.i.cond.false219.i_crit_edge
  %arrayidx221.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %106 = ptrtoint ptr %arrayidx221.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx221.i, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %add224.i = add i32 %109, 2316
  %gart_start226.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %110 = ptrtoint ptr %gart_start226.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %gart_start226.i, align 8
  %shr227.i = lshr i64 %111, 44
  %conv228.i = trunc i64 %shr227.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add224.i, i32 noundef %conv228.i, i32 noundef 0) #4
  br label %cond.end229.i

cond.end229.i:                                    ; preds = %cond.false219.i, %cond.true205.i
  %112 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %virt151.i, align 8
  %and232.i = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232.i)
  %tobool233.not.i = icmp eq i32 %and232.i, 0
  br i1 %tobool233.not.i, label %cond.end229.i.cond.false259.i_crit_edge, label %land.lhs.true234.i

cond.end229.i.cond.false259.i_crit_edge:          ; preds = %cond.end229.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false259.i

land.lhs.true234.i:                               ; preds = %cond.end229.i
  %funcs237.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %114 = ptrtoint ptr %funcs237.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %funcs237.i, align 4
  %tobool238.not.i = icmp eq ptr %115, null
  br i1 %tobool238.not.i, label %land.lhs.true234.i.cond.false259.i_crit_edge, label %land.lhs.true239.i

land.lhs.true234.i.cond.false259.i_crit_edge:     ; preds = %land.lhs.true234.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false259.i

land.lhs.true239.i:                               ; preds = %land.lhs.true234.i
  %sriov_wreg243.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %sriov_wreg243.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sriov_wreg243.i, align 4
  %tobool244.not.i = icmp eq ptr %117, null
  br i1 %tobool244.not.i, label %land.lhs.true239.i.cond.false259.i_crit_edge, label %cond.true245.i

land.lhs.true239.i.cond.false259.i_crit_edge:     ; preds = %land.lhs.true239.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false259.i

cond.true245.i:                                   ; preds = %land.lhs.true239.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx251.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %118 = ptrtoint ptr %arrayidx251.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx251.i, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %add254.i = add i32 %121, 2347
  %gart_end256.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %122 = ptrtoint ptr %gart_end256.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %gart_end256.i, align 8
  %shr257.i = lshr i64 %123, 12
  %conv258.i = trunc i64 %shr257.i to i32
  tail call void %117(ptr noundef %adev, i32 noundef %add254.i, i32 noundef %conv258.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end269.i

cond.false259.i:                                  ; preds = %land.lhs.true239.i.cond.false259.i_crit_edge, %land.lhs.true234.i.cond.false259.i_crit_edge, %cond.end229.i.cond.false259.i_crit_edge
  %arrayidx261.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %124 = ptrtoint ptr %arrayidx261.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx261.i, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %add264.i = add i32 %127, 2347
  %gart_end266.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %128 = ptrtoint ptr %gart_end266.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %gart_end266.i, align 8
  %shr267.i = lshr i64 %129, 12
  %conv268.i = trunc i64 %shr267.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add264.i, i32 noundef %conv268.i, i32 noundef 0) #4
  br label %cond.end269.i

cond.end269.i:                                    ; preds = %cond.false259.i, %cond.true245.i
  %130 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %virt151.i, align 8
  %and272.i = and i32 %131, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272.i)
  %tobool273.not.i = icmp eq i32 %and272.i, 0
  br i1 %tobool273.not.i, label %cond.end269.i.cond.false299.i_crit_edge, label %land.lhs.true274.i

cond.end269.i.cond.false299.i_crit_edge:          ; preds = %cond.end269.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false299.i

land.lhs.true274.i:                               ; preds = %cond.end269.i
  %funcs277.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %132 = ptrtoint ptr %funcs277.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %funcs277.i, align 4
  %tobool278.not.i = icmp eq ptr %133, null
  br i1 %tobool278.not.i, label %land.lhs.true274.i.cond.false299.i_crit_edge, label %land.lhs.true279.i

land.lhs.true274.i.cond.false299.i_crit_edge:     ; preds = %land.lhs.true274.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false299.i

land.lhs.true279.i:                               ; preds = %land.lhs.true274.i
  %sriov_wreg283.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %133, i32 0, i32 12
  %134 = ptrtoint ptr %sriov_wreg283.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sriov_wreg283.i, align 4
  %tobool284.not.i = icmp eq ptr %135, null
  br i1 %tobool284.not.i, label %land.lhs.true279.i.cond.false299.i_crit_edge, label %cond.true285.i

land.lhs.true279.i.cond.false299.i_crit_edge:     ; preds = %land.lhs.true279.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false299.i

cond.true285.i:                                   ; preds = %land.lhs.true279.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx291.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %136 = ptrtoint ptr %arrayidx291.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx291.i, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  %add294.i = add i32 %139, 2348
  %gart_end296.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %140 = ptrtoint ptr %gart_end296.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %gart_end296.i, align 8
  %shr297.i = lshr i64 %141, 44
  %conv298.i = trunc i64 %shr297.i to i32
  tail call void %135(ptr noundef %adev, i32 noundef %add294.i, i32 noundef %conv298.i, i32 noundef 0, i32 noundef 1) #4
  br label %gfxhub_v1_0_init_gart_aperture_regs.exit

cond.false299.i:                                  ; preds = %land.lhs.true279.i.cond.false299.i_crit_edge, %land.lhs.true274.i.cond.false299.i_crit_edge, %cond.end269.i.cond.false299.i_crit_edge
  %arrayidx301.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %142 = ptrtoint ptr %arrayidx301.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx301.i, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  %add304.i = add i32 %145, 2348
  %gart_end306.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %146 = ptrtoint ptr %gart_end306.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %gart_end306.i, align 8
  %shr307.i = lshr i64 %147, 44
  %conv308.i = trunc i64 %shr307.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add304.i, i32 noundef %conv308.i, i32 noundef 0) #4
  br label %gfxhub_v1_0_init_gart_aperture_regs.exit

gfxhub_v1_0_init_gart_aperture_regs.exit:         ; preds = %cond.false299.i, %cond.true285.i, %cond.false139.i, %cond.true125.i
  %arrayidx.i16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %148 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i16, align 8
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %add.i17 = add i32 %151, 2436
  %152 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %virt151.i, align 8
  %and.i = and i32 %153, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i18 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i18, label %gfxhub_v1_0_init_gart_aperture_regs.exit.cond.false.i23_crit_edge, label %land.lhs.true.i20

gfxhub_v1_0_init_gart_aperture_regs.exit.cond.false.i23_crit_edge: ; preds = %gfxhub_v1_0_init_gart_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i23

land.lhs.true.i20:                                ; preds = %gfxhub_v1_0_init_gart_aperture_regs.exit
  %funcs.i19 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %154 = ptrtoint ptr %funcs.i19 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %funcs.i19, align 4
  %tobool3.not.i = icmp eq ptr %155, null
  br i1 %tobool3.not.i, label %land.lhs.true.i20.cond.false.i23_crit_edge, label %land.lhs.true4.i

land.lhs.true.i20.cond.false.i23_crit_edge:       ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i23

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i20
  %sriov_wreg.i21 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %155, i32 0, i32 12
  %156 = ptrtoint ptr %sriov_wreg.i21 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sriov_wreg.i21, align 4
  %tobool8.not.i = icmp eq ptr %157, null
  br i1 %tobool8.not.i, label %land.lhs.true4.i.cond.false.i23_crit_edge, label %cond.true.i22

land.lhs.true4.i.cond.false.i23_crit_edge:        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i23

cond.true.i22:                                    ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %157(ptr noundef %adev, i32 noundef %add.i17, i32 noundef 0, i32 noundef 4, i32 noundef 1) #4
  br label %cond.end.i24

cond.false.i23:                                   ; preds = %land.lhs.true4.i.cond.false.i23_crit_edge, %land.lhs.true.i20.cond.false.i23_crit_edge, %gfxhub_v1_0_init_gart_aperture_regs.exit.cond.false.i23_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i17, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end.i24

cond.end.i24:                                     ; preds = %cond.false.i23, %cond.true.i22
  %158 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i16, align 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 4
  %add19.i = add i32 %161, 2435
  %162 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %virt151.i, align 8
  %and22.i = and i32 %163, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %cond.end.i24.cond.false40.i_crit_edge, label %land.lhs.true24.i

cond.end.i24.cond.false40.i_crit_edge:            ; preds = %cond.end.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false40.i

land.lhs.true24.i:                                ; preds = %cond.end.i24
  %funcs27.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %164 = ptrtoint ptr %funcs27.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %funcs27.i, align 4
  %tobool28.not.i = icmp eq ptr %165, null
  br i1 %tobool28.not.i, label %land.lhs.true24.i.cond.false40.i_crit_edge, label %land.lhs.true29.i

land.lhs.true24.i.cond.false40.i_crit_edge:       ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false40.i

land.lhs.true29.i:                                ; preds = %land.lhs.true24.i
  %sriov_wreg33.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %165, i32 0, i32 12
  %166 = ptrtoint ptr %sriov_wreg33.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sriov_wreg33.i, align 4
  %tobool34.not.i25 = icmp eq ptr %167, null
  br i1 %tobool34.not.i25, label %land.lhs.true29.i.cond.false40.i_crit_edge, label %cond.true35.i

land.lhs.true29.i.cond.false40.i_crit_edge:       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false40.i

cond.true35.i:                                    ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #6
  %agp_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %168 = ptrtoint ptr %agp_start.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %agp_start.i, align 8
  %shr.i26 = lshr i64 %169, 24
  %conv.i27 = trunc i64 %shr.i26 to i32
  tail call void %167(ptr noundef %adev, i32 noundef %add19.i, i32 noundef %conv.i27, i32 noundef 4, i32 noundef 1) #4
  br label %cond.end45.i

cond.false40.i:                                   ; preds = %land.lhs.true29.i.cond.false40.i_crit_edge, %land.lhs.true24.i.cond.false40.i_crit_edge, %cond.end.i24.cond.false40.i_crit_edge
  %agp_start42.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %170 = ptrtoint ptr %agp_start42.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %agp_start42.i, align 8
  %shr43.i = lshr i64 %171, 24
  %conv44.i = trunc i64 %shr43.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add19.i, i32 noundef %conv44.i, i32 noundef 0) #4
  br label %cond.end45.i

cond.end45.i:                                     ; preds = %cond.false40.i, %cond.true35.i
  %172 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx.i16, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 4
  %add54.i = add i32 %175, 2434
  %176 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %virt151.i, align 8
  %and57.i = and i32 %177, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %cond.end45.i.cond.false78.i_crit_edge, label %land.lhs.true59.i

cond.end45.i.cond.false78.i_crit_edge:            ; preds = %cond.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false78.i

land.lhs.true59.i:                                ; preds = %cond.end45.i
  %funcs62.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %178 = ptrtoint ptr %funcs62.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %funcs62.i, align 4
  %tobool63.not.i = icmp eq ptr %179, null
  br i1 %tobool63.not.i, label %land.lhs.true59.i.cond.false78.i_crit_edge, label %land.lhs.true64.i

land.lhs.true59.i.cond.false78.i_crit_edge:       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false78.i

land.lhs.true64.i:                                ; preds = %land.lhs.true59.i
  %sriov_wreg68.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %179, i32 0, i32 12
  %180 = ptrtoint ptr %sriov_wreg68.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %sriov_wreg68.i, align 4
  %tobool69.not.i = icmp eq ptr %181, null
  br i1 %tobool69.not.i, label %land.lhs.true64.i.cond.false78.i_crit_edge, label %cond.true70.i

land.lhs.true64.i.cond.false78.i_crit_edge:       ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false78.i

cond.true70.i:                                    ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #6
  %agp_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %182 = ptrtoint ptr %agp_end.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %agp_end.i, align 8
  %shr76.i = lshr i64 %183, 24
  %conv77.i = trunc i64 %shr76.i to i32
  tail call void %181(ptr noundef %adev, i32 noundef %add54.i, i32 noundef %conv77.i, i32 noundef 4, i32 noundef 1) #4
  br label %cond.end83.i

cond.false78.i:                                   ; preds = %land.lhs.true64.i.cond.false78.i_crit_edge, %land.lhs.true59.i.cond.false78.i_crit_edge, %cond.end45.i.cond.false78.i_crit_edge
  %agp_end80.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %184 = ptrtoint ptr %agp_end80.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %agp_end80.i, align 8
  %shr81.i = lshr i64 %185, 24
  %conv82.i = trunc i64 %shr81.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add54.i, i32 noundef %conv82.i, i32 noundef 0) #4
  br label %cond.end83.i

cond.end83.i:                                     ; preds = %cond.false78.i, %cond.true70.i
  %186 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %virt151.i, align 8
  %and88.i = and i32 %187, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %do.body91.thread.i, label %lor.lhs.false.i

do.body91.thread.i:                               ; preds = %cond.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  %188 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx.i16, align 8
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  %add97973.i = add i32 %191, 2437
  br label %cond.false128.i

lor.lhs.false.i:                                  ; preds = %cond.end83.i
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %192 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %193)
  %cmp.i = icmp ult i32 %193, 20
  br i1 %cmp.i, label %land.lhs.true102.i, label %lor.lhs.false.i.if.end522.i_crit_edge

lor.lhs.false.i.if.end522.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end522.i

land.lhs.true102.i:                               ; preds = %lor.lhs.false.i
  %194 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx.i16, align 8
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 4
  %add97.i = add i32 %197, 2437
  %funcs105.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %198 = ptrtoint ptr %funcs105.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %funcs105.i, align 4
  %tobool106.not.i = icmp eq ptr %199, null
  br i1 %tobool106.not.i, label %land.lhs.true102.i.cond.false128.i_crit_edge, label %land.lhs.true107.i

land.lhs.true102.i.cond.false128.i_crit_edge:     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false128.i

land.lhs.true107.i:                               ; preds = %land.lhs.true102.i
  %sriov_wreg111.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %199, i32 0, i32 12
  %200 = ptrtoint ptr %sriov_wreg111.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %sriov_wreg111.i, align 4
  %tobool112.not.i = icmp eq ptr %201, null
  br i1 %tobool112.not.i, label %land.lhs.true107.i.cond.false128.i_crit_edge, label %cond.true113.i

land.lhs.true107.i.cond.false128.i_crit_edge:     ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false128.i

cond.true113.i:                                   ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #6
  %fb_start.i28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %202 = ptrtoint ptr %fb_start.i28 to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %fb_start.i28, align 8
  %agp_start120.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %204 = ptrtoint ptr %agp_start120.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %agp_start120.i, align 8
  %206 = tail call i64 @llvm.umin.i64(i64 %203, i64 %205) #4
  %cond.off18.v.i = lshr i64 %206, 18
  %cond.off18.i = trunc i64 %cond.off18.v.i to i32
  tail call void %201(ptr noundef %adev, i32 noundef %add97.i, i32 noundef %cond.off18.i, i32 noundef 4, i32 noundef 1) #4
  br label %cond.end144.i

cond.false128.i:                                  ; preds = %land.lhs.true107.i.cond.false128.i_crit_edge, %land.lhs.true102.i.cond.false128.i_crit_edge, %do.body91.thread.i
  %add97974.i = phi i32 [ %add97973.i, %do.body91.thread.i ], [ %add97.i, %land.lhs.true107.i.cond.false128.i_crit_edge ], [ %add97.i, %land.lhs.true102.i.cond.false128.i_crit_edge ]
  %fb_start131.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %207 = ptrtoint ptr %fb_start131.i to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %fb_start131.i, align 8
  %agp_start134.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %209 = ptrtoint ptr %agp_start134.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %agp_start134.i, align 8
  %211 = tail call i64 @llvm.umin.i64(i64 %208, i64 %210) #4
  %cond141.off18.v.i = lshr i64 %211, 18
  %cond141.off18.i = trunc i64 %cond141.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add97974.i, i32 noundef %cond141.off18.i, i32 noundef 0) #4
  br label %cond.end144.i

cond.end144.i:                                    ; preds = %cond.false128.i, %cond.true113.i
  %apu_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 10
  %212 = ptrtoint ptr %apu_flags.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %apu_flags.i, align 4
  %and147.i = and i32 %213, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147.i)
  %tobool148.not.i = icmp eq i32 %and147.i, 0
  %214 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx.i16, align 8
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 4
  %add218.i = add i32 %217, 2438
  %218 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %virt151.i, align 8
  %and221.i = and i32 %219, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.i)
  %tobool222.not.i = icmp eq i32 %and221.i, 0
  br i1 %tobool148.not.i, label %do.body212.i, label %do.body150.i

do.body150.i:                                     ; preds = %cond.end144.i
  br i1 %tobool222.not.i, label %do.body150.i.cond.false191.i_crit_edge, label %land.lhs.true161.i

do.body150.i.cond.false191.i_crit_edge:           ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false191.i

land.lhs.true161.i:                               ; preds = %do.body150.i
  %funcs164.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %220 = ptrtoint ptr %funcs164.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %funcs164.i, align 4
  %tobool165.not.i29 = icmp eq ptr %221, null
  br i1 %tobool165.not.i29, label %land.lhs.true161.i.cond.false191.i_crit_edge, label %land.lhs.true166.i

land.lhs.true161.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false191.i

land.lhs.true166.i:                               ; preds = %land.lhs.true161.i
  %sriov_wreg170.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %221, i32 0, i32 12
  %222 = ptrtoint ptr %sriov_wreg170.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %sriov_wreg170.i, align 4
  %tobool171.not.i = icmp eq ptr %223, null
  br i1 %tobool171.not.i, label %land.lhs.true166.i.cond.false191.i_crit_edge, label %cond.true172.i

land.lhs.true166.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true166.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false191.i

cond.true172.i:                                   ; preds = %land.lhs.true166.i
  call void @__sanitizer_cov_trace_pc() #6
  %fb_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %224 = ptrtoint ptr %fb_end.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %fb_end.i, align 8
  %shr178.i = lshr i64 %225, 18
  %agp_end181.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %226 = ptrtoint ptr %agp_end181.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %agp_end181.i, align 8
  %shr182.i = lshr i64 %227, 18
  call void @__sanitizer_cov_trace_cmp8(i64 %shr178.i, i64 %shr182.i)
  %cmp184.not.i = icmp ult i64 %shr178.i, %shr182.i
  %228 = trunc i64 %shr178.i to i32
  %extract.t967.i = add i32 %228, 1
  %extract.t968.i = trunc i64 %shr182.i to i32
  %cond189.off0.i = select i1 %cmp184.not.i, i32 %extract.t968.i, i32 %extract.t967.i
  tail call void %223(ptr noundef %adev, i32 noundef %add218.i, i32 noundef %cond189.off0.i, i32 noundef 4, i32 noundef 1) #4
  br label %if.end.i32

cond.false191.i:                                  ; preds = %land.lhs.true166.i.cond.false191.i_crit_edge, %land.lhs.true161.i.cond.false191.i_crit_edge, %do.body150.i.cond.false191.i_crit_edge
  %fb_end194.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %229 = ptrtoint ptr %fb_end194.i to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %fb_end194.i, align 8
  %shr195.i = lshr i64 %230, 18
  %agp_end199.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %231 = ptrtoint ptr %agp_end199.i to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %agp_end199.i, align 8
  %shr200.i = lshr i64 %232, 18
  call void @__sanitizer_cov_trace_cmp8(i64 %shr195.i, i64 %shr200.i)
  %cmp202.not.i = icmp ult i64 %shr195.i, %shr200.i
  %233 = trunc i64 %shr195.i to i32
  %extract.t965.i = add i32 %233, 1
  %extract.t966.i = trunc i64 %shr200.i to i32
  %cond207.off0.i = select i1 %cmp202.not.i, i32 %extract.t966.i, i32 %extract.t965.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add218.i, i32 noundef %cond207.off0.i, i32 noundef 0) #4
  br label %if.end.i32

do.body212.i:                                     ; preds = %cond.end144.i
  br i1 %tobool222.not.i, label %do.body212.i.cond.false252.i_crit_edge, label %land.lhs.true223.i

do.body212.i.cond.false252.i_crit_edge:           ; preds = %do.body212.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false252.i

land.lhs.true223.i:                               ; preds = %do.body212.i
  %funcs226.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %234 = ptrtoint ptr %funcs226.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %funcs226.i, align 4
  %tobool227.not.i = icmp eq ptr %235, null
  br i1 %tobool227.not.i, label %land.lhs.true223.i.cond.false252.i_crit_edge, label %land.lhs.true228.i

land.lhs.true223.i.cond.false252.i_crit_edge:     ; preds = %land.lhs.true223.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false252.i

land.lhs.true228.i:                               ; preds = %land.lhs.true223.i
  %sriov_wreg232.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %235, i32 0, i32 12
  %236 = ptrtoint ptr %sriov_wreg232.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %sriov_wreg232.i, align 4
  %tobool233.not.i30 = icmp eq ptr %237, null
  br i1 %tobool233.not.i30, label %land.lhs.true228.i.cond.false252.i_crit_edge, label %cond.true234.i

land.lhs.true228.i.cond.false252.i_crit_edge:     ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false252.i

cond.true234.i:                                   ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #6
  %fb_end240.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %238 = ptrtoint ptr %fb_end240.i to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %fb_end240.i, align 8
  %agp_end242.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %240 = ptrtoint ptr %agp_end242.i to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %agp_end242.i, align 8
  %242 = tail call i64 @llvm.umax.i64(i64 %239, i64 %241) #4
  %cond249.off18.v.i = lshr i64 %242, 18
  %cond249.off18.i = trunc i64 %cond249.off18.v.i to i32
  tail call void %237(ptr noundef %adev, i32 noundef %add218.i, i32 noundef %cond249.off18.i, i32 noundef 4, i32 noundef 1) #4
  br label %if.end.i32

cond.false252.i:                                  ; preds = %land.lhs.true228.i.cond.false252.i_crit_edge, %land.lhs.true223.i.cond.false252.i_crit_edge, %do.body212.i.cond.false252.i_crit_edge
  %fb_end255.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %243 = ptrtoint ptr %fb_end255.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %fb_end255.i, align 8
  %agp_end258.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %245 = ptrtoint ptr %agp_end258.i to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %agp_end258.i, align 8
  %247 = tail call i64 @llvm.umax.i64(i64 %244, i64 %246) #4
  %cond265.off18.v.i = lshr i64 %247, 18
  %cond265.off18.i = trunc i64 %cond265.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add218.i, i32 noundef %cond265.off18.i, i32 noundef 0) #4
  br label %if.end.i32

if.end.i32:                                       ; preds = %cond.false252.i, %cond.true234.i, %cond.false191.i, %cond.true172.i
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 69, i32 2
  %248 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %gpu_addr.i, align 8
  %call.i31 = tail call i64 @amdgpu_gmc_vram_mc2pa(ptr noundef %adev, i64 noundef %249) #4
  %250 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %virt151.i, align 8
  %and273.i = and i32 %251, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273.i)
  %tobool274.not.i = icmp eq i32 %and273.i, 0
  br i1 %tobool274.not.i, label %if.end.i32.cond.false298.i_crit_edge, label %land.lhs.true275.i

if.end.i32.cond.false298.i_crit_edge:             ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false298.i

land.lhs.true275.i:                               ; preds = %if.end.i32
  %funcs278.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %252 = ptrtoint ptr %funcs278.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %funcs278.i, align 4
  %tobool279.not.i = icmp eq ptr %253, null
  br i1 %tobool279.not.i, label %land.lhs.true275.i.cond.false298.i_crit_edge, label %land.lhs.true280.i

land.lhs.true275.i.cond.false298.i_crit_edge:     ; preds = %land.lhs.true275.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false298.i

land.lhs.true280.i:                               ; preds = %land.lhs.true275.i
  %sriov_wreg284.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %253, i32 0, i32 12
  %254 = ptrtoint ptr %sriov_wreg284.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %sriov_wreg284.i, align 4
  %tobool285.not.i = icmp eq ptr %255, null
  br i1 %tobool285.not.i, label %land.lhs.true280.i.cond.false298.i_crit_edge, label %cond.true286.i

land.lhs.true280.i.cond.false298.i_crit_edge:     ; preds = %land.lhs.true280.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false298.i

cond.true286.i:                                   ; preds = %land.lhs.true280.i
  call void @__sanitizer_cov_trace_pc() #6
  %256 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx.i16, align 8
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %257, align 4
  %add295.i = add i32 %259, 2412
  %shr296.i = lshr i64 %call.i31, 12
  %conv297.i = trunc i64 %shr296.i to i32
  tail call void %255(ptr noundef %adev, i32 noundef %add295.i, i32 noundef %conv297.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end306.i

cond.false298.i:                                  ; preds = %land.lhs.true280.i.cond.false298.i_crit_edge, %land.lhs.true275.i.cond.false298.i_crit_edge, %if.end.i32.cond.false298.i_crit_edge
  %260 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx.i16, align 8
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %261, align 4
  %add303.i = add i32 %263, 2412
  %shr304.i = lshr i64 %call.i31, 12
  %conv305.i = trunc i64 %shr304.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add303.i, i32 noundef %conv305.i, i32 noundef 0) #4
  br label %cond.end306.i

cond.end306.i:                                    ; preds = %cond.false298.i, %cond.true286.i
  %264 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %virt151.i, align 8
  %and309.i = and i32 %265, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and309.i)
  %tobool310.not.i = icmp eq i32 %and309.i, 0
  br i1 %tobool310.not.i, label %cond.end306.i.cond.false334.i_crit_edge, label %land.lhs.true311.i

cond.end306.i.cond.false334.i_crit_edge:          ; preds = %cond.end306.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false334.i

land.lhs.true311.i:                               ; preds = %cond.end306.i
  %funcs314.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %266 = ptrtoint ptr %funcs314.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %funcs314.i, align 4
  %tobool315.not.i = icmp eq ptr %267, null
  br i1 %tobool315.not.i, label %land.lhs.true311.i.cond.false334.i_crit_edge, label %land.lhs.true316.i

land.lhs.true311.i.cond.false334.i_crit_edge:     ; preds = %land.lhs.true311.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false334.i

land.lhs.true316.i:                               ; preds = %land.lhs.true311.i
  %sriov_wreg320.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %267, i32 0, i32 12
  %268 = ptrtoint ptr %sriov_wreg320.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %sriov_wreg320.i, align 4
  %tobool321.not.i = icmp eq ptr %269, null
  br i1 %tobool321.not.i, label %land.lhs.true316.i.cond.false334.i_crit_edge, label %cond.true322.i

land.lhs.true316.i.cond.false334.i_crit_edge:     ; preds = %land.lhs.true316.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false334.i

cond.true322.i:                                   ; preds = %land.lhs.true316.i
  call void @__sanitizer_cov_trace_pc() #6
  %270 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx.i16, align 8
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %271, align 4
  %add331.i = add i32 %273, 2413
  %shr332.i = lshr i64 %call.i31, 44
  %conv333.i = trunc i64 %shr332.i to i32
  tail call void %269(ptr noundef %adev, i32 noundef %add331.i, i32 noundef %conv333.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end342.i

cond.false334.i:                                  ; preds = %land.lhs.true316.i.cond.false334.i_crit_edge, %land.lhs.true311.i.cond.false334.i_crit_edge, %cond.end306.i.cond.false334.i_crit_edge
  %274 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx.i16, align 8
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %275, align 4
  %add339.i = add i32 %277, 2413
  %shr340.i = lshr i64 %call.i31, 44
  %conv341.i = trunc i64 %shr340.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add339.i, i32 noundef %conv341.i, i32 noundef 0) #4
  br label %cond.end342.i

cond.end342.i:                                    ; preds = %cond.false334.i, %cond.true322.i
  %278 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %virt151.i, align 8
  %and345.i = and i32 %279, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and345.i)
  %tobool346.not.i = icmp eq i32 %and345.i, 0
  br i1 %tobool346.not.i, label %cond.end342.i.cond.false369.i_crit_edge, label %land.lhs.true347.i

cond.end342.i.cond.false369.i_crit_edge:          ; preds = %cond.end342.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false369.i

land.lhs.true347.i:                               ; preds = %cond.end342.i
  %funcs350.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %280 = ptrtoint ptr %funcs350.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %funcs350.i, align 4
  %tobool351.not.i = icmp eq ptr %281, null
  br i1 %tobool351.not.i, label %land.lhs.true347.i.cond.false369.i_crit_edge, label %land.lhs.true352.i

land.lhs.true347.i.cond.false369.i_crit_edge:     ; preds = %land.lhs.true347.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false369.i

land.lhs.true352.i:                               ; preds = %land.lhs.true347.i
  %sriov_wreg356.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %281, i32 0, i32 12
  %282 = ptrtoint ptr %sriov_wreg356.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %sriov_wreg356.i, align 4
  %tobool357.not.i = icmp eq ptr %283, null
  br i1 %tobool357.not.i, label %land.lhs.true352.i.cond.false369.i_crit_edge, label %cond.true358.i

land.lhs.true352.i.cond.false369.i_crit_edge:     ; preds = %land.lhs.true352.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false369.i

cond.true358.i:                                   ; preds = %land.lhs.true352.i
  call void @__sanitizer_cov_trace_pc() #6
  %284 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx.i16, align 8
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %285, align 4
  %add367.i = add i32 %287, 2126
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %288 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %dummy_page_addr.i, align 8
  %shr368.i = lshr i32 %289, 12
  tail call void %283(ptr noundef %adev, i32 noundef %add367.i, i32 noundef %shr368.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end377.i

cond.false369.i:                                  ; preds = %land.lhs.true352.i.cond.false369.i_crit_edge, %land.lhs.true347.i.cond.false369.i_crit_edge, %cond.end342.i.cond.false369.i_crit_edge
  %290 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %arrayidx.i16, align 8
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %291, align 4
  %add374.i = add i32 %293, 2126
  %dummy_page_addr375.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %294 = ptrtoint ptr %dummy_page_addr375.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %dummy_page_addr375.i, align 8
  %shr376.i = lshr i32 %295, 12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add374.i, i32 noundef %shr376.i, i32 noundef 0) #4
  br label %cond.end377.i

cond.end377.i:                                    ; preds = %cond.false369.i, %cond.true358.i
  %296 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %virt151.i, align 8
  %and380.i = and i32 %297, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and380.i)
  %tobool381.not.i = icmp eq i32 %and380.i, 0
  br i1 %tobool381.not.i, label %cond.end377.i.cond.false407.i_crit_edge, label %land.lhs.true382.i

cond.end377.i.cond.false407.i_crit_edge:          ; preds = %cond.end377.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false407.i

land.lhs.true382.i:                               ; preds = %cond.end377.i
  %funcs385.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %298 = ptrtoint ptr %funcs385.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %funcs385.i, align 4
  %tobool386.not.i = icmp eq ptr %299, null
  br i1 %tobool386.not.i, label %land.lhs.true382.i.cond.false407.i_crit_edge, label %land.lhs.true387.i

land.lhs.true382.i.cond.false407.i_crit_edge:     ; preds = %land.lhs.true382.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false407.i

land.lhs.true387.i:                               ; preds = %land.lhs.true382.i
  %sriov_wreg391.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %299, i32 0, i32 12
  %300 = ptrtoint ptr %sriov_wreg391.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %sriov_wreg391.i, align 4
  %tobool392.not.i = icmp eq ptr %301, null
  br i1 %tobool392.not.i, label %land.lhs.true387.i.cond.false407.i_crit_edge, label %cond.true393.i

land.lhs.true387.i.cond.false407.i_crit_edge:     ; preds = %land.lhs.true387.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false407.i

cond.true393.i:                                   ; preds = %land.lhs.true387.i
  call void @__sanitizer_cov_trace_pc() #6
  %302 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx.i16, align 8
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %303, align 4
  %add402.i = add i32 %305, 2127
  tail call void %301(ptr noundef %adev, i32 noundef %add402.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end417.i

cond.false407.i:                                  ; preds = %land.lhs.true387.i.cond.false407.i_crit_edge, %land.lhs.true382.i.cond.false407.i_crit_edge, %cond.end377.i.cond.false407.i_crit_edge
  %306 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %arrayidx.i16, align 8
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %307, align 4
  %add412.i = add i32 %309, 2127
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add412.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end417.i

cond.end417.i:                                    ; preds = %cond.false407.i, %cond.true393.i
  %310 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %virt151.i, align 8
  %and420.i = and i32 %311, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and420.i)
  %tobool421.not.i = icmp eq i32 %and420.i, 0
  br i1 %tobool421.not.i, label %cond.end417.i.cond.false510.sink.split.i_crit_edge, label %land.lhs.true422.i

cond.end417.i.cond.false510.sink.split.i_crit_edge: ; preds = %cond.end417.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false510.sink.split.i

land.lhs.true422.i:                               ; preds = %cond.end417.i
  %funcs425.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %312 = ptrtoint ptr %funcs425.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %funcs425.i, align 4
  %tobool426.not.i = icmp eq ptr %313, null
  br i1 %tobool426.not.i, label %land.lhs.true422.i.cond.false510.sink.split.i_crit_edge, label %land.lhs.true427.i

land.lhs.true422.i.cond.false510.sink.split.i_crit_edge: ; preds = %land.lhs.true422.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false510.sink.split.i

land.lhs.true427.i:                               ; preds = %land.lhs.true422.i
  %sriov_wreg431.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %313, i32 0, i32 12
  %314 = ptrtoint ptr %sriov_wreg431.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %sriov_wreg431.i, align 4
  %tobool432.not.i = icmp eq ptr %315, null
  %316 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx.i16, align 8
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %317, align 4
  %add483975.i = add i32 %319, 2120
  %sriov_rreg497.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %313, i32 0, i32 13
  %320 = ptrtoint ptr %sriov_rreg497.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %sriov_rreg497.i, align 4
  %tobool498.not.i = icmp eq ptr %321, null
  br i1 %tobool432.not.i, label %land.lhs.true493.i, label %cond.true433.i

cond.true433.i:                                   ; preds = %land.lhs.true427.i
  br i1 %tobool498.not.i, label %cond.false468.i, label %cond.true457.i

cond.true457.i:                                   ; preds = %cond.true433.i
  call void @__sanitizer_cov_trace_pc() #6
  %call467.i = tail call i32 %321(ptr noundef %adev, i32 noundef %add483975.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end475.i

cond.false468.i:                                  ; preds = %cond.true433.i
  call void @__sanitizer_cov_trace_pc() #6
  %call474.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add483975.i, i32 noundef 0) #4
  br label %cond.end475.i

cond.end475.i:                                    ; preds = %cond.false468.i, %cond.true457.i
  %cond476.i = phi i32 [ %call467.i, %cond.true457.i ], [ %call474.i, %cond.false468.i ]
  %or.i = or i32 %cond476.i, 262144
  tail call void %315(ptr noundef %adev, i32 noundef %add483975.i, i32 noundef %or.i, i32 noundef 0, i32 noundef 1) #4
  br label %if.end522.i

land.lhs.true493.i:                               ; preds = %land.lhs.true427.i
  br i1 %tobool498.not.i, label %land.lhs.true493.i.cond.false510.i_crit_edge, label %cond.true499.i

land.lhs.true493.i.cond.false510.i_crit_edge:     ; preds = %land.lhs.true493.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false510.i

cond.true499.i:                                   ; preds = %land.lhs.true493.i
  call void @__sanitizer_cov_trace_pc() #6
  %call509.i = tail call i32 %321(ptr noundef %adev, i32 noundef %add483975.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end517.i

cond.false510.sink.split.i:                       ; preds = %land.lhs.true422.i.cond.false510.sink.split.i_crit_edge, %cond.end417.i.cond.false510.sink.split.i_crit_edge
  %322 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx.i16, align 8
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %323, align 4
  %add483975979.i = add i32 %325, 2120
  br label %cond.false510.i

cond.false510.i:                                  ; preds = %cond.false510.sink.split.i, %land.lhs.true493.i.cond.false510.i_crit_edge
  %add483978.i = phi i32 [ %add483975.i, %land.lhs.true493.i.cond.false510.i_crit_edge ], [ %add483975979.i, %cond.false510.sink.split.i ]
  %call516.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add483978.i, i32 noundef 0) #4
  br label %cond.end517.i

cond.end517.i:                                    ; preds = %cond.false510.i, %cond.true499.i
  %add483976.i = phi i32 [ %add483975.i, %cond.true499.i ], [ %add483978.i, %cond.false510.i ]
  %cond518.i = phi i32 [ %call509.i, %cond.true499.i ], [ %call516.i, %cond.false510.i ]
  %or520.i = or i32 %cond518.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add483976.i, i32 noundef %or520.i, i32 noundef 0) #4
  br label %if.end522.i

if.end522.i:                                      ; preds = %cond.end517.i, %cond.end475.i, %lor.lhs.false.i.if.end522.i_crit_edge
  %326 = ptrtoint ptr %pdb0_bo.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %pdb0_bo.i, align 8
  %tobool524.not.i = icmp eq ptr %327, null
  br i1 %tobool524.not.i, label %if.end522.i.gfxhub_v1_0_init_system_aperture_regs.exit_crit_edge, label %if.then525.i

if.end522.i.gfxhub_v1_0_init_system_aperture_regs.exit_crit_edge: ; preds = %if.end522.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gfxhub_v1_0_init_system_aperture_regs.exit

if.then525.i:                                     ; preds = %if.end522.i
  %328 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %virt151.i, align 8
  %and528.i = and i32 %329, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and528.i)
  %tobool529.not.i = icmp eq i32 %and528.i, 0
  br i1 %tobool529.not.i, label %if.then525.i.cond.false551.i_crit_edge, label %land.lhs.true530.i

if.then525.i.cond.false551.i_crit_edge:           ; preds = %if.then525.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false551.i

land.lhs.true530.i:                               ; preds = %if.then525.i
  %funcs533.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %330 = ptrtoint ptr %funcs533.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %funcs533.i, align 4
  %tobool534.not.i = icmp eq ptr %331, null
  br i1 %tobool534.not.i, label %land.lhs.true530.i.cond.false551.i_crit_edge, label %land.lhs.true535.i

land.lhs.true530.i.cond.false551.i_crit_edge:     ; preds = %land.lhs.true530.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false551.i

land.lhs.true535.i:                               ; preds = %land.lhs.true530.i
  %sriov_wreg539.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %331, i32 0, i32 12
  %332 = ptrtoint ptr %sriov_wreg539.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %sriov_wreg539.i, align 4
  %tobool540.not.i = icmp eq ptr %333, null
  br i1 %tobool540.not.i, label %land.lhs.true535.i.cond.false551.i_crit_edge, label %cond.true541.i

land.lhs.true535.i.cond.false551.i_crit_edge:     ; preds = %land.lhs.true535.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false551.i

cond.true541.i:                                   ; preds = %land.lhs.true535.i
  call void @__sanitizer_cov_trace_pc() #6
  %334 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %arrayidx.i16, align 8
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %335, align 4
  %add550.i = add i32 %337, 2433
  tail call void %333(ptr noundef %adev, i32 noundef %add550.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end557.i

cond.false551.i:                                  ; preds = %land.lhs.true535.i.cond.false551.i_crit_edge, %land.lhs.true530.i.cond.false551.i_crit_edge, %if.then525.i.cond.false551.i_crit_edge
  %338 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %arrayidx.i16, align 8
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %339, align 4
  %add556.i = add i32 %341, 2433
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add556.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end557.i

cond.end557.i:                                    ; preds = %cond.false551.i, %cond.true541.i
  %342 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %virt151.i, align 8
  %and560.i = and i32 %343, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and560.i)
  %tobool561.not.i = icmp eq i32 %and560.i, 0
  br i1 %tobool561.not.i, label %cond.end557.i.cond.false583.i_crit_edge, label %land.lhs.true562.i

cond.end557.i.cond.false583.i_crit_edge:          ; preds = %cond.end557.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false583.i

land.lhs.true562.i:                               ; preds = %cond.end557.i
  %funcs565.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %344 = ptrtoint ptr %funcs565.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %funcs565.i, align 4
  %tobool566.not.i = icmp eq ptr %345, null
  br i1 %tobool566.not.i, label %land.lhs.true562.i.cond.false583.i_crit_edge, label %land.lhs.true567.i

land.lhs.true562.i.cond.false583.i_crit_edge:     ; preds = %land.lhs.true562.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false583.i

land.lhs.true567.i:                               ; preds = %land.lhs.true562.i
  %sriov_wreg571.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %345, i32 0, i32 12
  %346 = ptrtoint ptr %sriov_wreg571.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %sriov_wreg571.i, align 4
  %tobool572.not.i = icmp eq ptr %347, null
  br i1 %tobool572.not.i, label %land.lhs.true567.i.cond.false583.i_crit_edge, label %cond.true573.i

land.lhs.true567.i.cond.false583.i_crit_edge:     ; preds = %land.lhs.true567.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false583.i

cond.true573.i:                                   ; preds = %land.lhs.true567.i
  call void @__sanitizer_cov_trace_pc() #6
  %348 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx.i16, align 8
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %349, align 4
  %add582.i = add i32 %351, 2432
  tail call void %347(ptr noundef %adev, i32 noundef %add582.i, i32 noundef 16777215, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end589.i

cond.false583.i:                                  ; preds = %land.lhs.true567.i.cond.false583.i_crit_edge, %land.lhs.true562.i.cond.false583.i_crit_edge, %cond.end557.i.cond.false583.i_crit_edge
  %352 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %arrayidx.i16, align 8
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %353, align 4
  %add588.i = add i32 %355, 2432
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add588.i, i32 noundef 16777215, i32 noundef 0) #4
  br label %cond.end589.i

cond.end589.i:                                    ; preds = %cond.false583.i, %cond.true573.i
  %356 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %virt151.i, align 8
  %and592.i = and i32 %357, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and592.i)
  %tobool593.not.i = icmp eq i32 %and592.i, 0
  br i1 %tobool593.not.i, label %cond.end589.i.cond.false615.i_crit_edge, label %land.lhs.true594.i

cond.end589.i.cond.false615.i_crit_edge:          ; preds = %cond.end589.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false615.i

land.lhs.true594.i:                               ; preds = %cond.end589.i
  %funcs597.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %358 = ptrtoint ptr %funcs597.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %funcs597.i, align 4
  %tobool598.not.i = icmp eq ptr %359, null
  br i1 %tobool598.not.i, label %land.lhs.true594.i.cond.false615.i_crit_edge, label %land.lhs.true599.i

land.lhs.true594.i.cond.false615.i_crit_edge:     ; preds = %land.lhs.true594.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false615.i

land.lhs.true599.i:                               ; preds = %land.lhs.true594.i
  %sriov_wreg603.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %359, i32 0, i32 12
  %360 = ptrtoint ptr %sriov_wreg603.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %sriov_wreg603.i, align 4
  %tobool604.not.i = icmp eq ptr %361, null
  br i1 %tobool604.not.i, label %land.lhs.true599.i.cond.false615.i_crit_edge, label %cond.true605.i

land.lhs.true599.i.cond.false615.i_crit_edge:     ; preds = %land.lhs.true599.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false615.i

cond.true605.i:                                   ; preds = %land.lhs.true599.i
  call void @__sanitizer_cov_trace_pc() #6
  %362 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %arrayidx.i16, align 8
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %363, align 4
  %add614.i = add i32 %365, 2434
  tail call void %361(ptr noundef %adev, i32 noundef %add614.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end621.i

cond.false615.i:                                  ; preds = %land.lhs.true599.i.cond.false615.i_crit_edge, %land.lhs.true594.i.cond.false615.i_crit_edge, %cond.end589.i.cond.false615.i_crit_edge
  %366 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %arrayidx.i16, align 8
  %368 = ptrtoint ptr %367 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %367, align 4
  %add620.i = add i32 %369, 2434
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add620.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end621.i

cond.end621.i:                                    ; preds = %cond.false615.i, %cond.true605.i
  %370 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %virt151.i, align 8
  %and624.i = and i32 %371, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and624.i)
  %tobool625.not.i = icmp eq i32 %and624.i, 0
  br i1 %tobool625.not.i, label %cond.end621.i.cond.false647.i_crit_edge, label %land.lhs.true626.i

cond.end621.i.cond.false647.i_crit_edge:          ; preds = %cond.end621.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false647.i

land.lhs.true626.i:                               ; preds = %cond.end621.i
  %funcs629.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %372 = ptrtoint ptr %funcs629.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %funcs629.i, align 4
  %tobool630.not.i = icmp eq ptr %373, null
  br i1 %tobool630.not.i, label %land.lhs.true626.i.cond.false647.i_crit_edge, label %land.lhs.true631.i

land.lhs.true626.i.cond.false647.i_crit_edge:     ; preds = %land.lhs.true626.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false647.i

land.lhs.true631.i:                               ; preds = %land.lhs.true626.i
  %sriov_wreg635.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %373, i32 0, i32 12
  %374 = ptrtoint ptr %sriov_wreg635.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %sriov_wreg635.i, align 4
  %tobool636.not.i = icmp eq ptr %375, null
  br i1 %tobool636.not.i, label %land.lhs.true631.i.cond.false647.i_crit_edge, label %cond.true637.i

land.lhs.true631.i.cond.false647.i_crit_edge:     ; preds = %land.lhs.true631.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false647.i

cond.true637.i:                                   ; preds = %land.lhs.true631.i
  call void @__sanitizer_cov_trace_pc() #6
  %376 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %arrayidx.i16, align 8
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %377, align 4
  %add646.i = add i32 %379, 2435
  tail call void %375(ptr noundef %adev, i32 noundef %add646.i, i32 noundef 16777215, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end653.i

cond.false647.i:                                  ; preds = %land.lhs.true631.i.cond.false647.i_crit_edge, %land.lhs.true626.i.cond.false647.i_crit_edge, %cond.end621.i.cond.false647.i_crit_edge
  %380 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %arrayidx.i16, align 8
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %381, align 4
  %add652.i = add i32 %383, 2435
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add652.i, i32 noundef 16777215, i32 noundef 0) #4
  br label %cond.end653.i

cond.end653.i:                                    ; preds = %cond.false647.i, %cond.true637.i
  %384 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %virt151.i, align 8
  %and656.i = and i32 %385, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and656.i)
  %tobool657.not.i = icmp eq i32 %and656.i, 0
  br i1 %tobool657.not.i, label %cond.end653.i.cond.false679.i_crit_edge, label %land.lhs.true658.i

cond.end653.i.cond.false679.i_crit_edge:          ; preds = %cond.end653.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false679.i

land.lhs.true658.i:                               ; preds = %cond.end653.i
  %funcs661.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %386 = ptrtoint ptr %funcs661.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %funcs661.i, align 4
  %tobool662.not.i = icmp eq ptr %387, null
  br i1 %tobool662.not.i, label %land.lhs.true658.i.cond.false679.i_crit_edge, label %land.lhs.true663.i

land.lhs.true658.i.cond.false679.i_crit_edge:     ; preds = %land.lhs.true658.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false679.i

land.lhs.true663.i:                               ; preds = %land.lhs.true658.i
  %sriov_wreg667.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %387, i32 0, i32 12
  %388 = ptrtoint ptr %sriov_wreg667.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %sriov_wreg667.i, align 4
  %tobool668.not.i = icmp eq ptr %389, null
  br i1 %tobool668.not.i, label %land.lhs.true663.i.cond.false679.i_crit_edge, label %cond.true669.i

land.lhs.true663.i.cond.false679.i_crit_edge:     ; preds = %land.lhs.true663.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false679.i

cond.true669.i:                                   ; preds = %land.lhs.true663.i
  call void @__sanitizer_cov_trace_pc() #6
  %390 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %arrayidx.i16, align 8
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %391, align 4
  %add678.i = add i32 %393, 2437
  tail call void %389(ptr noundef %adev, i32 noundef %add678.i, i32 noundef 1073741823, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end685.i

cond.false679.i:                                  ; preds = %land.lhs.true663.i.cond.false679.i_crit_edge, %land.lhs.true658.i.cond.false679.i_crit_edge, %cond.end653.i.cond.false679.i_crit_edge
  %394 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %arrayidx.i16, align 8
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %395, align 4
  %add684.i = add i32 %397, 2437
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add684.i, i32 noundef 1073741823, i32 noundef 0) #4
  br label %cond.end685.i

cond.end685.i:                                    ; preds = %cond.false679.i, %cond.true669.i
  %398 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %virt151.i, align 8
  %and688.i = and i32 %399, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and688.i)
  %tobool689.not.i = icmp eq i32 %and688.i, 0
  br i1 %tobool689.not.i, label %cond.end685.i.cond.false711.i_crit_edge, label %land.lhs.true690.i

cond.end685.i.cond.false711.i_crit_edge:          ; preds = %cond.end685.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false711.i

land.lhs.true690.i:                               ; preds = %cond.end685.i
  %funcs693.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %400 = ptrtoint ptr %funcs693.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %funcs693.i, align 4
  %tobool694.not.i = icmp eq ptr %401, null
  br i1 %tobool694.not.i, label %land.lhs.true690.i.cond.false711.i_crit_edge, label %land.lhs.true695.i

land.lhs.true690.i.cond.false711.i_crit_edge:     ; preds = %land.lhs.true690.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false711.i

land.lhs.true695.i:                               ; preds = %land.lhs.true690.i
  %sriov_wreg699.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %401, i32 0, i32 12
  %402 = ptrtoint ptr %sriov_wreg699.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %sriov_wreg699.i, align 4
  %tobool700.not.i = icmp eq ptr %403, null
  br i1 %tobool700.not.i, label %land.lhs.true695.i.cond.false711.i_crit_edge, label %cond.true701.i

land.lhs.true695.i.cond.false711.i_crit_edge:     ; preds = %land.lhs.true695.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false711.i

cond.true701.i:                                   ; preds = %land.lhs.true695.i
  call void @__sanitizer_cov_trace_pc() #6
  %404 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %arrayidx.i16, align 8
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %405, align 4
  %add710.i = add i32 %407, 2438
  tail call void %403(ptr noundef %adev, i32 noundef %add710.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %gfxhub_v1_0_init_system_aperture_regs.exit

cond.false711.i:                                  ; preds = %land.lhs.true695.i.cond.false711.i_crit_edge, %land.lhs.true690.i.cond.false711.i_crit_edge, %cond.end685.i.cond.false711.i_crit_edge
  %408 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %arrayidx.i16, align 8
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %409, align 4
  %add716.i = add i32 %411, 2438
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add716.i, i32 noundef 0, i32 noundef 0) #4
  br label %gfxhub_v1_0_init_system_aperture_regs.exit

gfxhub_v1_0_init_system_aperture_regs.exit:       ; preds = %cond.false711.i, %cond.true701.i, %if.end522.i.gfxhub_v1_0_init_system_aperture_regs.exit_crit_edge
  %412 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %virt151.i, align 8
  %and.i35 = and i32 %413, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %gfxhub_v1_0_init_system_aperture_regs.exit.cond.false.i45_crit_edge, label %land.lhs.true.i38

gfxhub_v1_0_init_system_aperture_regs.exit.cond.false.i45_crit_edge: ; preds = %gfxhub_v1_0_init_system_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i45

land.lhs.true.i38:                                ; preds = %gfxhub_v1_0_init_system_aperture_regs.exit
  %funcs.i37 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %414 = ptrtoint ptr %funcs.i37 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %funcs.i37, align 4
  %tobool1.not.i = icmp eq ptr %415, null
  br i1 %tobool1.not.i, label %land.lhs.true.i38.cond.false.i45_crit_edge, label %land.lhs.true2.i

land.lhs.true.i38.cond.false.i45_crit_edge:       ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i45

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i38
  %sriov_rreg.i39 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %415, i32 0, i32 13
  %416 = ptrtoint ptr %sriov_rreg.i39 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %sriov_rreg.i39, align 4
  %tobool6.not.i40 = icmp eq ptr %417, null
  br i1 %tobool6.not.i40, label %land.lhs.true2.i.cond.false.i45_crit_edge, label %cond.true.i44

land.lhs.true2.i.cond.false.i45_crit_edge:        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i45

cond.true.i44:                                    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  %418 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %arrayidx.i16, align 8
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %419, align 4
  %add.i42 = add i32 %421, 2439
  %call.i43 = tail call i32 %417(ptr noundef %adev, i32 noundef %add.i42, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end.i46

cond.false.i45:                                   ; preds = %land.lhs.true2.i.cond.false.i45_crit_edge, %land.lhs.true.i38.cond.false.i45_crit_edge, %gfxhub_v1_0_init_system_aperture_regs.exit.cond.false.i45_crit_edge
  %422 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %arrayidx.i16, align 8
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %423, align 4
  %add17.i = add i32 %425, 2439
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef 0) #4
  br label %cond.end.i46

cond.end.i46:                                     ; preds = %cond.false.i45, %cond.true.i44
  %cond.i = phi i32 [ %call.i43, %cond.true.i44 ], [ %call18.i, %cond.false.i45 ]
  %or23.i = and i32 %cond.i, -14458
  %or29.i = or i32 %or23.i, 14425
  %426 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %arrayidx.i16, align 8
  %428 = ptrtoint ptr %427 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %427, align 4
  %add34.i = add i32 %429, 2439
  %430 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %virt151.i, align 8
  %and37.i = and i32 %431, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %cond.end.i46.cond.false54.i_crit_edge, label %land.lhs.true39.i

cond.end.i46.cond.false54.i_crit_edge:            ; preds = %cond.end.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i

land.lhs.true39.i:                                ; preds = %cond.end.i46
  %funcs42.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %432 = ptrtoint ptr %funcs42.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %funcs42.i, align 4
  %tobool43.not.i = icmp eq ptr %433, null
  br i1 %tobool43.not.i, label %land.lhs.true39.i.cond.false54.i_crit_edge, label %land.lhs.true44.i

land.lhs.true39.i.cond.false54.i_crit_edge:       ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i

land.lhs.true44.i:                                ; preds = %land.lhs.true39.i
  %sriov_wreg.i47 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %433, i32 0, i32 12
  %434 = ptrtoint ptr %sriov_wreg.i47 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %sriov_wreg.i47, align 4
  %tobool48.not.i = icmp eq ptr %435, null
  br i1 %tobool48.not.i, label %land.lhs.true44.i.cond.false54.i_crit_edge, label %cond.true49.i

land.lhs.true44.i.cond.false54.i_crit_edge:       ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i

cond.true49.i:                                    ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %435(ptr noundef %adev, i32 noundef %add34.i, i32 noundef %or29.i, i32 noundef 4, i32 noundef 1) #4
  br label %gfxhub_v1_0_init_tlb_regs.exit

cond.false54.i:                                   ; preds = %land.lhs.true44.i.cond.false54.i_crit_edge, %land.lhs.true39.i.cond.false54.i_crit_edge, %cond.end.i46.cond.false54.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add34.i, i32 noundef %or29.i, i32 noundef 0) #4
  br label %gfxhub_v1_0_init_tlb_regs.exit

gfxhub_v1_0_init_tlb_regs.exit:                   ; preds = %cond.false54.i, %cond.true49.i
  %436 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %virt151.i, align 8
  %and = and i32 %437, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end.i70, label %gfxhub_v1_0_init_tlb_regs.exit.if.end_crit_edge

gfxhub_v1_0_init_tlb_regs.exit.if.end_crit_edge:  ; preds = %gfxhub_v1_0_init_tlb_regs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.end.i70:                                     ; preds = %gfxhub_v1_0_init_tlb_regs.exit
  %438 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %arrayidx.i16, align 8
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %439, align 4
  %add17.i62 = add i32 %441, 2112
  %call18.i63 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i62, i32 noundef 0) #4
  %or21.i = and i32 %call18.i63, -66846980
  %or27.i = or i32 %or21.i, 524291
  %442 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %arrayidx.i16, align 8
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %443, align 4
  %add34.i67 = add i32 %445, 2112
  %446 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %virt151.i, align 8
  %and37.i68 = and i32 %447, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i68)
  %tobool38.not.i69 = icmp eq i32 %and37.i68, 0
  br i1 %tobool38.not.i69, label %cond.end.i70.cond.false54.i78_crit_edge, label %land.lhs.true39.i73

cond.end.i70.cond.false54.i78_crit_edge:          ; preds = %cond.end.i70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i78

land.lhs.true39.i73:                              ; preds = %cond.end.i70
  %funcs42.i71 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %448 = ptrtoint ptr %funcs42.i71 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %funcs42.i71, align 4
  %tobool43.not.i72 = icmp eq ptr %449, null
  br i1 %tobool43.not.i72, label %land.lhs.true39.i73.cond.false54.i78_crit_edge, label %land.lhs.true44.i76

land.lhs.true39.i73.cond.false54.i78_crit_edge:   ; preds = %land.lhs.true39.i73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i78

land.lhs.true44.i76:                              ; preds = %land.lhs.true39.i73
  %sriov_wreg.i74 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %449, i32 0, i32 12
  %450 = ptrtoint ptr %sriov_wreg.i74 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %sriov_wreg.i74, align 4
  %tobool48.not.i75 = icmp eq ptr %451, null
  br i1 %tobool48.not.i75, label %land.lhs.true44.i76.cond.false54.i78_crit_edge, label %cond.true49.i77

land.lhs.true44.i76.cond.false54.i78_crit_edge:   ; preds = %land.lhs.true44.i76
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i78

cond.true49.i77:                                  ; preds = %land.lhs.true44.i76
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %451(ptr noundef %adev, i32 noundef %add34.i67, i32 noundef %or27.i, i32 noundef 4, i32 noundef 1) #4
  br label %cond.end55.i

cond.false54.i78:                                 ; preds = %land.lhs.true44.i76.cond.false54.i78_crit_edge, %land.lhs.true39.i73.cond.false54.i78_crit_edge, %cond.end.i70.cond.false54.i78_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add34.i67, i32 noundef %or27.i, i32 noundef 0) #4
  br label %cond.end55.i

cond.end55.i:                                     ; preds = %cond.false54.i78, %cond.true49.i77
  %452 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %virt151.i, align 8
  %and58.i = and i32 %453, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %cond.end55.i.cond.false82.i_crit_edge, label %land.lhs.true60.i

cond.end55.i.cond.false82.i_crit_edge:            ; preds = %cond.end55.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false82.i

land.lhs.true60.i:                                ; preds = %cond.end55.i
  %funcs63.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %454 = ptrtoint ptr %funcs63.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %funcs63.i, align 4
  %tobool64.not.i = icmp eq ptr %455, null
  br i1 %tobool64.not.i, label %land.lhs.true60.i.cond.false82.i_crit_edge, label %land.lhs.true65.i

land.lhs.true60.i.cond.false82.i_crit_edge:       ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false82.i

land.lhs.true65.i:                                ; preds = %land.lhs.true60.i
  %sriov_rreg69.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %455, i32 0, i32 13
  %456 = ptrtoint ptr %sriov_rreg69.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %sriov_rreg69.i, align 4
  %tobool70.not.i = icmp eq ptr %457, null
  br i1 %tobool70.not.i, label %land.lhs.true65.i.cond.false82.i_crit_edge, label %cond.true71.i

land.lhs.true65.i.cond.false82.i_crit_edge:       ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false82.i

cond.true71.i:                                    ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #6
  %458 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %arrayidx.i16, align 8
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %459, align 4
  %add80.i = add i32 %461, 2113
  %call81.i = tail call i32 %457(ptr noundef %adev, i32 noundef %add80.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end89.i

cond.false82.i:                                   ; preds = %land.lhs.true65.i.cond.false82.i_crit_edge, %land.lhs.true60.i.cond.false82.i_crit_edge, %cond.end55.i.cond.false82.i_crit_edge
  %462 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %arrayidx.i16, align 8
  %464 = ptrtoint ptr %463 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %463, align 4
  %add87.i = add i32 %465, 2113
  %call88.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add87.i, i32 noundef 0) #4
  br label %cond.end89.i

cond.end89.i:                                     ; preds = %cond.false82.i, %cond.true71.i
  %cond90.i = phi i32 [ %call81.i, %cond.true71.i ], [ %call88.i, %cond.false82.i ]
  %or94.i = or i32 %cond90.i, 3
  %466 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %arrayidx.i16, align 8
  %468 = ptrtoint ptr %467 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %467, align 4
  %add101.i = add i32 %469, 2113
  %470 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %virt151.i, align 8
  %and104.i = and i32 %471, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %cond.end89.i.cond.false122.i_crit_edge, label %land.lhs.true106.i

cond.end89.i.cond.false122.i_crit_edge:           ; preds = %cond.end89.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false122.i

land.lhs.true106.i:                               ; preds = %cond.end89.i
  %funcs109.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %472 = ptrtoint ptr %funcs109.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %funcs109.i, align 4
  %tobool110.not.i = icmp eq ptr %473, null
  br i1 %tobool110.not.i, label %land.lhs.true106.i.cond.false122.i_crit_edge, label %land.lhs.true111.i

land.lhs.true106.i.cond.false122.i_crit_edge:     ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false122.i

land.lhs.true111.i:                               ; preds = %land.lhs.true106.i
  %sriov_wreg115.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %473, i32 0, i32 12
  %474 = ptrtoint ptr %sriov_wreg115.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %sriov_wreg115.i, align 4
  %tobool116.not.i = icmp eq ptr %475, null
  br i1 %tobool116.not.i, label %land.lhs.true111.i.cond.false122.i_crit_edge, label %cond.true117.i

land.lhs.true111.i.cond.false122.i_crit_edge:     ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false122.i

cond.true117.i:                                   ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %475(ptr noundef %adev, i32 noundef %add101.i, i32 noundef %or94.i, i32 noundef 4, i32 noundef 1) #4
  br label %cond.end123.i

cond.false122.i:                                  ; preds = %land.lhs.true111.i.cond.false122.i_crit_edge, %land.lhs.true106.i.cond.false122.i_crit_edge, %cond.end89.i.cond.false122.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add101.i, i32 noundef %or94.i, i32 noundef 0) #4
  br label %cond.end123.i

cond.end123.i:                                    ; preds = %cond.false122.i, %cond.true117.i
  %translate_further.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %476 = ptrtoint ptr %translate_further.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %translate_further.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %477)
  %tobool126.not.i = icmp eq i8 %477, 0
  %..i = select i1 %tobool126.not.i, i32 -2146238455, i32 -2146140148
  %478 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %arrayidx.i16, align 8
  %480 = ptrtoint ptr %479 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %479, align 4
  %add141.i = add i32 %481, 2114
  %482 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %virt151.i, align 8
  %and144.i = and i32 %483, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144.i)
  %tobool145.not.i = icmp eq i32 %and144.i, 0
  br i1 %tobool145.not.i, label %cond.end123.i.cond.false162.i_crit_edge, label %land.lhs.true146.i

cond.end123.i.cond.false162.i_crit_edge:          ; preds = %cond.end123.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false162.i

land.lhs.true146.i:                               ; preds = %cond.end123.i
  %funcs149.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %484 = ptrtoint ptr %funcs149.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %funcs149.i, align 4
  %tobool150.not.i = icmp eq ptr %485, null
  br i1 %tobool150.not.i, label %land.lhs.true146.i.cond.false162.i_crit_edge, label %land.lhs.true151.i

land.lhs.true146.i.cond.false162.i_crit_edge:     ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false162.i

land.lhs.true151.i:                               ; preds = %land.lhs.true146.i
  %sriov_wreg155.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %485, i32 0, i32 12
  %486 = ptrtoint ptr %sriov_wreg155.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %sriov_wreg155.i, align 4
  %tobool156.not.i = icmp eq ptr %487, null
  br i1 %tobool156.not.i, label %land.lhs.true151.i.cond.false162.i_crit_edge, label %cond.true157.i

land.lhs.true151.i.cond.false162.i_crit_edge:     ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false162.i

cond.true157.i:                                   ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %487(ptr noundef %adev, i32 noundef %add141.i, i32 noundef %..i, i32 noundef 4, i32 noundef 1) #4
  br label %cond.end163.i

cond.false162.i:                                  ; preds = %land.lhs.true151.i.cond.false162.i_crit_edge, %land.lhs.true146.i.cond.false162.i_crit_edge, %cond.end123.i.cond.false162.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add141.i, i32 noundef %..i, i32 noundef 0) #4
  br label %cond.end163.i

cond.end163.i:                                    ; preds = %cond.false162.i, %cond.true157.i
  %connected_to_cpu.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %488 = ptrtoint ptr %connected_to_cpu.i to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %connected_to_cpu.i, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %489)
  %tobool167.not.i = icmp eq i8 %489, 0
  %.293.i = select i1 %tobool167.not.i, i32 1, i32 193
  %490 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %arrayidx.i16, align 8
  %492 = ptrtoint ptr %491 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %491, align 4
  %add185.i = add i32 %493, 2135
  %494 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %virt151.i, align 8
  %and188.i = and i32 %495, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188.i)
  %tobool189.not.i = icmp eq i32 %and188.i, 0
  br i1 %tobool189.not.i, label %cond.end163.i.cond.false206.i_crit_edge, label %land.lhs.true190.i

cond.end163.i.cond.false206.i_crit_edge:          ; preds = %cond.end163.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false206.i

land.lhs.true190.i:                               ; preds = %cond.end163.i
  %funcs193.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %496 = ptrtoint ptr %funcs193.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %funcs193.i, align 4
  %tobool194.not.i = icmp eq ptr %497, null
  br i1 %tobool194.not.i, label %land.lhs.true190.i.cond.false206.i_crit_edge, label %land.lhs.true195.i

land.lhs.true190.i.cond.false206.i_crit_edge:     ; preds = %land.lhs.true190.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false206.i

land.lhs.true195.i:                               ; preds = %land.lhs.true190.i
  %sriov_wreg199.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %497, i32 0, i32 12
  %498 = ptrtoint ptr %sriov_wreg199.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %sriov_wreg199.i, align 4
  %tobool200.not.i = icmp eq ptr %499, null
  br i1 %tobool200.not.i, label %land.lhs.true195.i.cond.false206.i_crit_edge, label %cond.true201.i

land.lhs.true195.i.cond.false206.i_crit_edge:     ; preds = %land.lhs.true195.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false206.i

cond.true201.i:                                   ; preds = %land.lhs.true195.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %499(ptr noundef %adev, i32 noundef %add185.i, i32 noundef %.293.i, i32 noundef 4, i32 noundef 1) #4
  br label %if.end

cond.false206.i:                                  ; preds = %land.lhs.true195.i.cond.false206.i_crit_edge, %land.lhs.true190.i.cond.false206.i_crit_edge, %cond.end163.i.cond.false206.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add185.i, i32 noundef %.293.i, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %cond.false206.i, %cond.true201.i, %gfxhub_v1_0_init_tlb_regs.exit.if.end_crit_edge
  %500 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %virt151.i, align 8
  %and.i80 = and i32 %501, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.not.i81 = icmp eq i32 %and.i80, 0
  br i1 %tobool.not.i81, label %if.end.cond.false.i95_crit_edge, label %land.lhs.true.i84

if.end.cond.false.i95_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i95

land.lhs.true.i84:                                ; preds = %if.end
  %funcs.i82 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %502 = ptrtoint ptr %funcs.i82 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %funcs.i82, align 4
  %tobool1.not.i83 = icmp eq ptr %503, null
  br i1 %tobool1.not.i83, label %land.lhs.true.i84.cond.false.i95_crit_edge, label %land.lhs.true2.i87

land.lhs.true.i84.cond.false.i95_crit_edge:       ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i95

land.lhs.true2.i87:                               ; preds = %land.lhs.true.i84
  %sriov_rreg.i85 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %503, i32 0, i32 13
  %504 = ptrtoint ptr %sriov_rreg.i85 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %sriov_rreg.i85, align 4
  %tobool6.not.i86 = icmp eq ptr %505, null
  br i1 %tobool6.not.i86, label %land.lhs.true2.i87.cond.false.i95_crit_edge, label %cond.true.i91

land.lhs.true2.i87.cond.false.i95_crit_edge:      ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i95

cond.true.i91:                                    ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #6
  %506 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %arrayidx.i16, align 8
  %508 = ptrtoint ptr %507 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %507, align 4
  %add.i89 = add i32 %509, 2176
  %call.i90 = tail call i32 %505(ptr noundef %adev, i32 noundef %add.i89, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end.i99

cond.false.i95:                                   ; preds = %land.lhs.true2.i87.cond.false.i95_crit_edge, %land.lhs.true.i84.cond.false.i95_crit_edge, %if.end.cond.false.i95_crit_edge
  %510 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %arrayidx.i16, align 8
  %512 = ptrtoint ptr %511 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %511, align 4
  %add17.i93 = add i32 %513, 2176
  %call18.i94 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i93, i32 noundef 0) #4
  br label %cond.end.i99

cond.end.i99:                                     ; preds = %cond.false.i95, %cond.true.i91
  %cond.i96 = phi i32 [ %call.i90, %cond.true.i91 ], [ %call18.i94, %cond.false.i95 ]
  %or.i97 = and i32 %cond.i96, -256
  %vmid0_page_table_depth.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 43
  %514 = ptrtoint ptr %vmid0_page_table_depth.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %vmid0_page_table_depth.i, align 4
  %shl.i = shl i32 %515, 1
  %and21.i = and i32 %shl.i, 6
  %vmid0_page_table_block_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 42
  %516 = ptrtoint ptr %vmid0_page_table_block_size.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %vmid0_page_table_block_size.i, align 8
  %shl25.i = shl i32 %517, 3
  %and26.i = and i32 %shl25.i, 120
  %and20.i = or i32 %or.i97, %and21.i
  %or22.i = or i32 %and20.i, %and26.i
  %or27.i98 = or i32 %or22.i, 1
  %518 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %virt151.i, align 8
  %and32.i = and i32 %519, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %cond.end.i99.cond.false54.i104_crit_edge, label %land.lhs.true34.i

cond.end.i99.cond.false54.i104_crit_edge:         ; preds = %cond.end.i99
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i104

land.lhs.true34.i:                                ; preds = %cond.end.i99
  %funcs37.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %520 = ptrtoint ptr %funcs37.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %funcs37.i, align 4
  %tobool38.not.i100 = icmp eq ptr %521, null
  br i1 %tobool38.not.i100, label %land.lhs.true34.i.cond.false54.i104_crit_edge, label %land.lhs.true39.i103

land.lhs.true34.i.cond.false54.i104_crit_edge:    ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i104

land.lhs.true39.i103:                             ; preds = %land.lhs.true34.i
  %sriov_wreg.i101 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %521, i32 0, i32 12
  %522 = ptrtoint ptr %sriov_wreg.i101 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %sriov_wreg.i101, align 4
  %tobool43.not.i102 = icmp eq ptr %523, null
  br i1 %tobool43.not.i102, label %land.lhs.true39.i103.cond.false54.i104_crit_edge, label %cond.true44.i

land.lhs.true39.i103.cond.false54.i104_crit_edge: ; preds = %land.lhs.true39.i103
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i104

cond.true44.i:                                    ; preds = %land.lhs.true39.i103
  call void @__sanitizer_cov_trace_pc() #6
  %524 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %arrayidx.i16, align 8
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %525, align 4
  %add53.i = add i32 %527, 2176
  tail call void %523(ptr noundef %adev, i32 noundef %add53.i, i32 noundef %or27.i98, i32 noundef 0, i32 noundef 1) #4
  br label %gfxhub_v1_0_enable_system_domain.exit

cond.false54.i104:                                ; preds = %land.lhs.true39.i103.cond.false54.i104_crit_edge, %land.lhs.true34.i.cond.false54.i104_crit_edge, %cond.end.i99.cond.false54.i104_crit_edge
  %528 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %arrayidx.i16, align 8
  %530 = ptrtoint ptr %529 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %529, align 4
  %add59.i = add i32 %531, 2176
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59.i, i32 noundef %or27.i98, i32 noundef 0) #4
  br label %gfxhub_v1_0_enable_system_domain.exit

gfxhub_v1_0_enable_system_domain.exit:            ; preds = %cond.false54.i104, %cond.true44.i
  %532 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %virt151.i, align 8
  %and3 = and i32 %533, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %cond.end.i121, label %gfxhub_v1_0_enable_system_domain.exit.if.end6_crit_edge

gfxhub_v1_0_enable_system_domain.exit.if.end6_crit_edge: ; preds = %gfxhub_v1_0_enable_system_domain.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

cond.end.i121:                                    ; preds = %gfxhub_v1_0_enable_system_domain.exit
  %534 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %arrayidx.i16, align 8
  %536 = ptrtoint ptr %535 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %535, align 4
  %add17.i118 = add i32 %537, 2129
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i118, i32 noundef -1, i32 noundef 0) #4
  %538 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %virt151.i, align 8
  %and20.i120 = and i32 %539, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i120)
  %tobool21.not.i = icmp eq i32 %and20.i120, 0
  br i1 %tobool21.not.i, label %cond.end.i121.cond.false43.i_crit_edge, label %land.lhs.true22.i

cond.end.i121.cond.false43.i_crit_edge:           ; preds = %cond.end.i121
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43.i

land.lhs.true22.i:                                ; preds = %cond.end.i121
  %funcs25.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %540 = ptrtoint ptr %funcs25.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %funcs25.i, align 4
  %tobool26.not.i = icmp eq ptr %541, null
  br i1 %tobool26.not.i, label %land.lhs.true22.i.cond.false43.i_crit_edge, label %land.lhs.true27.i

land.lhs.true22.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43.i

land.lhs.true27.i:                                ; preds = %land.lhs.true22.i
  %sriov_wreg31.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %541, i32 0, i32 12
  %542 = ptrtoint ptr %sriov_wreg31.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %sriov_wreg31.i, align 4
  %tobool32.not.i = icmp eq ptr %543, null
  br i1 %tobool32.not.i, label %land.lhs.true27.i.cond.false43.i_crit_edge, label %cond.true33.i

land.lhs.true27.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43.i

cond.true33.i:                                    ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #6
  %544 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %arrayidx.i16, align 8
  %546 = ptrtoint ptr %545 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %545, align 4
  %add42.i = add i32 %547, 2130
  tail call void %543(ptr noundef %adev, i32 noundef %add42.i, i32 noundef 15, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end49.i

cond.false43.i:                                   ; preds = %land.lhs.true27.i.cond.false43.i_crit_edge, %land.lhs.true22.i.cond.false43.i_crit_edge, %cond.end.i121.cond.false43.i_crit_edge
  %548 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %arrayidx.i16, align 8
  %550 = ptrtoint ptr %549 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %549, align 4
  %add48.i = add i32 %551, 2130
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48.i, i32 noundef 15, i32 noundef 0) #4
  br label %cond.end49.i

cond.end49.i:                                     ; preds = %cond.false43.i, %cond.true33.i
  %552 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %virt151.i, align 8
  %and52.i = and i32 %553, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %cond.end49.i.cond.false75.i_crit_edge, label %land.lhs.true54.i

cond.end49.i.cond.false75.i_crit_edge:            ; preds = %cond.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false75.i

land.lhs.true54.i:                                ; preds = %cond.end49.i
  %funcs57.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %554 = ptrtoint ptr %funcs57.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %funcs57.i, align 4
  %tobool58.not.i122 = icmp eq ptr %555, null
  br i1 %tobool58.not.i122, label %land.lhs.true54.i.cond.false75.i_crit_edge, label %land.lhs.true59.i124

land.lhs.true54.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false75.i

land.lhs.true59.i124:                             ; preds = %land.lhs.true54.i
  %sriov_wreg63.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %555, i32 0, i32 12
  %556 = ptrtoint ptr %sriov_wreg63.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %sriov_wreg63.i, align 4
  %tobool64.not.i123 = icmp eq ptr %557, null
  br i1 %tobool64.not.i123, label %land.lhs.true59.i124.cond.false75.i_crit_edge, label %cond.true65.i

land.lhs.true59.i124.cond.false75.i_crit_edge:    ; preds = %land.lhs.true59.i124
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false75.i

cond.true65.i:                                    ; preds = %land.lhs.true59.i124
  call void @__sanitizer_cov_trace_pc() #6
  %558 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %arrayidx.i16, align 8
  %560 = ptrtoint ptr %559 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %559, align 4
  %add74.i = add i32 %561, 2131
  tail call void %557(ptr noundef %adev, i32 noundef %add74.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end81.i

cond.false75.i:                                   ; preds = %land.lhs.true59.i124.cond.false75.i_crit_edge, %land.lhs.true54.i.cond.false75.i_crit_edge, %cond.end49.i.cond.false75.i_crit_edge
  %562 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %arrayidx.i16, align 8
  %564 = ptrtoint ptr %563 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %563, align 4
  %add80.i125 = add i32 %565, 2131
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add80.i125, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end81.i

cond.end81.i:                                     ; preds = %cond.false75.i, %cond.true65.i
  %566 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %virt151.i, align 8
  %and84.i = and i32 %567, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i126 = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i126, label %cond.end81.i.cond.false107.i_crit_edge, label %land.lhs.true86.i

cond.end81.i.cond.false107.i_crit_edge:           ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false107.i

land.lhs.true86.i:                                ; preds = %cond.end81.i
  %funcs89.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %568 = ptrtoint ptr %funcs89.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %funcs89.i, align 4
  %tobool90.not.i = icmp eq ptr %569, null
  br i1 %tobool90.not.i, label %land.lhs.true86.i.cond.false107.i_crit_edge, label %land.lhs.true91.i

land.lhs.true86.i.cond.false107.i_crit_edge:      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false107.i

land.lhs.true91.i:                                ; preds = %land.lhs.true86.i
  %sriov_wreg95.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %569, i32 0, i32 12
  %570 = ptrtoint ptr %sriov_wreg95.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %sriov_wreg95.i, align 4
  %tobool96.not.i = icmp eq ptr %571, null
  br i1 %tobool96.not.i, label %land.lhs.true91.i.cond.false107.i_crit_edge, label %cond.true97.i

land.lhs.true91.i.cond.false107.i_crit_edge:      ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false107.i

cond.true97.i:                                    ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #6
  %572 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %arrayidx.i16, align 8
  %574 = ptrtoint ptr %573 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %573, align 4
  %add106.i = add i32 %575, 2132
  tail call void %571(ptr noundef %adev, i32 noundef %add106.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end113.i

cond.false107.i:                                  ; preds = %land.lhs.true91.i.cond.false107.i_crit_edge, %land.lhs.true86.i.cond.false107.i_crit_edge, %cond.end81.i.cond.false107.i_crit_edge
  %576 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %arrayidx.i16, align 8
  %578 = ptrtoint ptr %577 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %577, align 4
  %add112.i = add i32 %579, 2132
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add112.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end113.i

cond.end113.i:                                    ; preds = %cond.false107.i, %cond.true97.i
  %580 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %virt151.i, align 8
  %and116.i = and i32 %581, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %cond.end113.i.cond.false139.i129_crit_edge, label %land.lhs.true118.i

cond.end113.i.cond.false139.i129_crit_edge:       ; preds = %cond.end113.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false139.i129

land.lhs.true118.i:                               ; preds = %cond.end113.i
  %funcs121.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %582 = ptrtoint ptr %funcs121.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %funcs121.i, align 4
  %tobool122.not.i = icmp eq ptr %583, null
  br i1 %tobool122.not.i, label %land.lhs.true118.i.cond.false139.i129_crit_edge, label %land.lhs.true123.i

land.lhs.true118.i.cond.false139.i129_crit_edge:  ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false139.i129

land.lhs.true123.i:                               ; preds = %land.lhs.true118.i
  %sriov_wreg127.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %583, i32 0, i32 12
  %584 = ptrtoint ptr %sriov_wreg127.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %sriov_wreg127.i, align 4
  %tobool128.not.i = icmp eq ptr %585, null
  br i1 %tobool128.not.i, label %land.lhs.true123.i.cond.false139.i129_crit_edge, label %cond.true129.i

land.lhs.true123.i.cond.false139.i129_crit_edge:  ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false139.i129

cond.true129.i:                                   ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #6
  %586 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %arrayidx.i16, align 8
  %588 = ptrtoint ptr %587 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %587, align 4
  %add138.i = add i32 %589, 2133
  tail call void %585(ptr noundef %adev, i32 noundef %add138.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end145.i

cond.false139.i129:                               ; preds = %land.lhs.true123.i.cond.false139.i129_crit_edge, %land.lhs.true118.i.cond.false139.i129_crit_edge, %cond.end113.i.cond.false139.i129_crit_edge
  %590 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %arrayidx.i16, align 8
  %592 = ptrtoint ptr %591 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %591, align 4
  %add144.i128 = add i32 %593, 2133
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add144.i128, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end145.i

cond.end145.i:                                    ; preds = %cond.false139.i129, %cond.true129.i
  %594 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %virt151.i, align 8
  %and148.i = and i32 %595, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %cond.end145.i.cond.false171.i_crit_edge, label %land.lhs.true150.i

cond.end145.i.cond.false171.i_crit_edge:          ; preds = %cond.end145.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false171.i

land.lhs.true150.i:                               ; preds = %cond.end145.i
  %funcs153.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %596 = ptrtoint ptr %funcs153.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %funcs153.i, align 4
  %tobool154.not.i130 = icmp eq ptr %597, null
  br i1 %tobool154.not.i130, label %land.lhs.true150.i.cond.false171.i_crit_edge, label %land.lhs.true155.i131

land.lhs.true150.i.cond.false171.i_crit_edge:     ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false171.i

land.lhs.true155.i131:                            ; preds = %land.lhs.true150.i
  %sriov_wreg159.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %597, i32 0, i32 12
  %598 = ptrtoint ptr %sriov_wreg159.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %sriov_wreg159.i, align 4
  %tobool160.not.i = icmp eq ptr %599, null
  br i1 %tobool160.not.i, label %land.lhs.true155.i131.cond.false171.i_crit_edge, label %cond.true161.i

land.lhs.true155.i131.cond.false171.i_crit_edge:  ; preds = %land.lhs.true155.i131
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false171.i

cond.true161.i:                                   ; preds = %land.lhs.true155.i131
  call void @__sanitizer_cov_trace_pc() #6
  %600 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %arrayidx.i16, align 8
  %602 = ptrtoint ptr %601 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %601, align 4
  %add170.i = add i32 %603, 2134
  tail call void %599(ptr noundef %adev, i32 noundef %add170.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %if.end6

cond.false171.i:                                  ; preds = %land.lhs.true155.i131.cond.false171.i_crit_edge, %land.lhs.true150.i.cond.false171.i_crit_edge, %cond.end145.i.cond.false171.i_crit_edge
  %604 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %arrayidx.i16, align 8
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %605, align 4
  %add176.i = add i32 %607, 2134
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add176.i, i32 noundef 0, i32 noundef 0) #4
  br label %if.end6

if.end6:                                          ; preds = %cond.false171.i, %cond.true161.i, %gfxhub_v1_0_enable_system_domain.exit.if.end6_crit_edge
  %num_level1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 6
  %608 = ptrtoint ptr %num_level1.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %num_level1.i, align 8
  %block_size3.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %610 = ptrtoint ptr %block_size3.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %block_size3.i, align 4
  %translate_further.i132 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %612 = ptrtoint ptr %translate_further.i132 to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %translate_further.i132, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %613)
  %tobool.not.i133 = icmp eq i8 %613, 0
  %not.tobool.not.i = xor i1 %tobool.not.i133, true
  %sub.i = sext i1 %not.tobool.not.i to i32
  %num_level.0.i = add i32 %609, %sub.i
  %funcs.i135 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %shl.i136 = shl i32 %num_level.0.i, 1
  %and29.i = and i32 %shl.i136, 6
  %614 = shl i32 %611, 3
  %615 = add i32 %614, 56
  %shl46.i = select i1 %tobool.not.i133, i32 %615, i32 %614
  %and47.i = and i32 %shl46.i, 120
  %noretry.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 41
  %asic_type.i137 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %ctx_distance.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 8
  %ctx_addr_distance.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %and28.i = or i32 %and47.i, %and29.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6
  %i.0365.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %616 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %virt151.i, align 8
  %and.i138 = and i32 %617, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool5.not.i = icmp eq i32 %and.i138, 0
  br i1 %tobool5.not.i, label %for.body.i.cond.false.i146_crit_edge, label %land.lhs.true.i140

for.body.i.cond.false.i146_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i146

land.lhs.true.i140:                               ; preds = %for.body.i
  %618 = ptrtoint ptr %funcs.i135 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %funcs.i135, align 4
  %tobool6.not.i139 = icmp eq ptr %619, null
  br i1 %tobool6.not.i139, label %land.lhs.true.i140.cond.false.i146_crit_edge, label %land.lhs.true7.i

land.lhs.true.i140.cond.false.i146_crit_edge:     ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i146

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i140
  %sriov_rreg.i141 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %619, i32 0, i32 13
  %620 = ptrtoint ptr %sriov_rreg.i141 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %sriov_rreg.i141, align 4
  %tobool11.not.i = icmp eq ptr %621, null
  br i1 %tobool11.not.i, label %land.lhs.true7.i.cond.false.i146_crit_edge, label %cond.true.i145

land.lhs.true7.i.cond.false.i146_crit_edge:       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i146

cond.true.i145:                                   ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #6
  %622 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %arrayidx.i16, align 8
  %624 = ptrtoint ptr %623 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %623, align 4
  %add.i142 = add nuw nsw i32 %i.0365.i, 2177
  %add19.i143 = add i32 %add.i142, %625
  %call.i144 = tail call i32 %621(ptr noundef %adev, i32 noundef %add19.i143, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end.i149

cond.false.i146:                                  ; preds = %land.lhs.true7.i.cond.false.i146_crit_edge, %land.lhs.true.i140.cond.false.i146_crit_edge, %for.body.i.cond.false.i146_crit_edge
  %626 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %arrayidx.i16, align 8
  %628 = ptrtoint ptr %627 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %627, align 4
  %add24.i = add nuw nsw i32 %i.0365.i, 2177
  %add25.i = add i32 %add24.i, %629
  %call26.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add25.i, i32 noundef 0) #4
  br label %cond.end.i149

cond.end.i149:                                    ; preds = %cond.false.i146, %cond.true.i145
  %cond.i147 = phi i32 [ %call.i144, %cond.true.i145 ], [ %call26.i, %cond.false.i146 ]
  %or.i148 = and i32 %cond.i147, -5592320
  %630 = ptrtoint ptr %noretry.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %noretry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %631)
  %tobool51.not.i = icmp eq i32 %631, 0
  br i1 %tobool51.not.i, label %cond.end.i149.lor.end.thread.i_crit_edge, label %lor.end.i

cond.end.i149.lor.end.thread.i_crit_edge:         ; preds = %cond.end.i149
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end.thread.i

lor.end.i:                                        ; preds = %cond.end.i149
  %632 = ptrtoint ptr %asic_type.i137 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %asic_type.i137, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %633)
  %cmp52.i = icmp eq i32 %633, 25
  br i1 %cmp52.i, label %lor.end.i.lor.end.thread.i_crit_edge, label %lor.end.i._crit_edge

lor.end.i._crit_edge:                             ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %634

lor.end.i.lor.end.thread.i_crit_edge:             ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end.thread.i

lor.end.thread.i:                                 ; preds = %lor.end.i.lor.end.thread.i_crit_edge, %cond.end.i149.lor.end.thread.i_crit_edge
  br label %634

634:                                              ; preds = %lor.end.thread.i, %lor.end.i._crit_edge
  %635 = phi i32 [ 128, %lor.end.thread.i ], [ 0, %lor.end.i._crit_edge ]
  %or44.i = or i32 %and28.i, %or.i148
  %or48.i = or i32 %or44.i, %635
  %or55.i = or i32 %or48.i, 5592065
  %636 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %virt151.i, align 8
  %and58.i150 = and i32 %637, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i150)
  %tobool59.not.i151 = icmp eq i32 %and58.i150, 0
  br i1 %tobool59.not.i151, label %.cond.false81.i_crit_edge, label %land.lhs.true60.i153

.cond.false81.i_crit_edge:                        ; preds = %634
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81.i

land.lhs.true60.i153:                             ; preds = %634
  %638 = ptrtoint ptr %funcs.i135 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %funcs.i135, align 4
  %tobool64.not.i152 = icmp eq ptr %639, null
  br i1 %tobool64.not.i152, label %land.lhs.true60.i153.cond.false81.i_crit_edge, label %land.lhs.true65.i156

land.lhs.true60.i153.cond.false81.i_crit_edge:    ; preds = %land.lhs.true60.i153
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81.i

land.lhs.true65.i156:                             ; preds = %land.lhs.true60.i153
  %sriov_wreg.i154 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %639, i32 0, i32 12
  %640 = ptrtoint ptr %sriov_wreg.i154 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %sriov_wreg.i154, align 4
  %tobool69.not.i155 = icmp eq ptr %641, null
  br i1 %tobool69.not.i155, label %land.lhs.true65.i156.cond.false81.i_crit_edge, label %cond.true70.i158

land.lhs.true65.i156.cond.false81.i_crit_edge:    ; preds = %land.lhs.true65.i156
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81.i

cond.true70.i158:                                 ; preds = %land.lhs.true65.i156
  call void @__sanitizer_cov_trace_pc() #6
  %642 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %arrayidx.i16, align 8
  %644 = ptrtoint ptr %643 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %643, align 4
  %add79.i = add i32 %645, 2177
  %646 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %ctx_distance.i, align 4
  %mul.i = mul i32 %647, %i.0365.i
  %add80.i157 = add i32 %add79.i, %mul.i
  tail call void %641(ptr noundef %adev, i32 noundef %add80.i157, i32 noundef %or55.i, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end90.i

cond.false81.i:                                   ; preds = %land.lhs.true65.i156.cond.false81.i_crit_edge, %land.lhs.true60.i153.cond.false81.i_crit_edge, %.cond.false81.i_crit_edge
  %648 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %arrayidx.i16, align 8
  %650 = ptrtoint ptr %649 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %649, align 4
  %add86.i = add i32 %651, 2177
  %652 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %ctx_distance.i, align 4
  %mul88.i = mul i32 %653, %i.0365.i
  %add89.i = add i32 %add86.i, %mul88.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add89.i, i32 noundef %or55.i, i32 noundef 0) #4
  br label %cond.end90.i

cond.end90.i:                                     ; preds = %cond.false81.i, %cond.true70.i158
  %654 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %virt151.i, align 8
  %and93.i = and i32 %655, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %cond.end90.i.cond.false118.i_crit_edge, label %land.lhs.true95.i

cond.end90.i.cond.false118.i_crit_edge:           ; preds = %cond.end90.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false118.i

land.lhs.true95.i:                                ; preds = %cond.end90.i
  %656 = ptrtoint ptr %funcs.i135 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %funcs.i135, align 4
  %tobool99.not.i = icmp eq ptr %657, null
  br i1 %tobool99.not.i, label %land.lhs.true95.i.cond.false118.i_crit_edge, label %land.lhs.true100.i

land.lhs.true95.i.cond.false118.i_crit_edge:      ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false118.i

land.lhs.true100.i:                               ; preds = %land.lhs.true95.i
  %sriov_wreg104.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %657, i32 0, i32 12
  %658 = ptrtoint ptr %sriov_wreg104.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %sriov_wreg104.i, align 4
  %tobool105.not.i159 = icmp eq ptr %659, null
  br i1 %tobool105.not.i159, label %land.lhs.true100.i.cond.false118.i_crit_edge, label %cond.true106.i

land.lhs.true100.i.cond.false118.i_crit_edge:     ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false118.i

cond.true106.i:                                   ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #6
  %660 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %arrayidx.i16, align 8
  %662 = ptrtoint ptr %661 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %661, align 4
  %add115.i = add i32 %663, 2317
  %664 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul116.i = mul i32 %665, %i.0365.i
  %add117.i = add i32 %add115.i, %mul116.i
  tail call void %659(ptr noundef %adev, i32 noundef %add117.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end127.i

cond.false118.i:                                  ; preds = %land.lhs.true100.i.cond.false118.i_crit_edge, %land.lhs.true95.i.cond.false118.i_crit_edge, %cond.end90.i.cond.false118.i_crit_edge
  %666 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %arrayidx.i16, align 8
  %668 = ptrtoint ptr %667 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %667, align 4
  %add123.i = add i32 %669, 2317
  %670 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul125.i = mul i32 %671, %i.0365.i
  %add126.i = add i32 %add123.i, %mul125.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add126.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end127.i

cond.end127.i:                                    ; preds = %cond.false118.i, %cond.true106.i
  %672 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %virt151.i, align 8
  %and130.i = and i32 %673, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %cond.end127.i.cond.false156.i_crit_edge, label %land.lhs.true132.i

cond.end127.i.cond.false156.i_crit_edge:          ; preds = %cond.end127.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false156.i

land.lhs.true132.i:                               ; preds = %cond.end127.i
  %674 = ptrtoint ptr %funcs.i135 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %funcs.i135, align 4
  %tobool136.not.i = icmp eq ptr %675, null
  br i1 %tobool136.not.i, label %land.lhs.true132.i.cond.false156.i_crit_edge, label %land.lhs.true137.i

land.lhs.true132.i.cond.false156.i_crit_edge:     ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false156.i

land.lhs.true137.i:                               ; preds = %land.lhs.true132.i
  %sriov_wreg141.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %675, i32 0, i32 12
  %676 = ptrtoint ptr %sriov_wreg141.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %sriov_wreg141.i, align 4
  %tobool142.not.i = icmp eq ptr %677, null
  br i1 %tobool142.not.i, label %land.lhs.true137.i.cond.false156.i_crit_edge, label %cond.true143.i

land.lhs.true137.i.cond.false156.i_crit_edge:     ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false156.i

cond.true143.i:                                   ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #6
  %678 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %arrayidx.i16, align 8
  %680 = ptrtoint ptr %679 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %679, align 4
  %add152.i = add i32 %681, 2318
  %682 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul154.i = mul i32 %683, %i.0365.i
  %add155.i = add i32 %add152.i, %mul154.i
  tail call void %677(ptr noundef %adev, i32 noundef %add155.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end165.i

cond.false156.i:                                  ; preds = %land.lhs.true137.i.cond.false156.i_crit_edge, %land.lhs.true132.i.cond.false156.i_crit_edge, %cond.end127.i.cond.false156.i_crit_edge
  %684 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %arrayidx.i16, align 8
  %686 = ptrtoint ptr %685 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %685, align 4
  %add161.i = add i32 %687, 2318
  %688 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul163.i = mul i32 %689, %i.0365.i
  %add164.i = add i32 %add161.i, %mul163.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add164.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end165.i

cond.end165.i:                                    ; preds = %cond.false156.i, %cond.true143.i
  %690 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %virt151.i, align 8
  %and168.i = and i32 %691, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168.i)
  %tobool169.not.i = icmp eq i32 %and168.i, 0
  br i1 %tobool169.not.i, label %cond.end165.i.cond.false197.i_crit_edge, label %land.lhs.true170.i

cond.end165.i.cond.false197.i_crit_edge:          ; preds = %cond.end165.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false197.i

land.lhs.true170.i:                               ; preds = %cond.end165.i
  %692 = ptrtoint ptr %funcs.i135 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %funcs.i135, align 4
  %tobool174.not.i = icmp eq ptr %693, null
  br i1 %tobool174.not.i, label %land.lhs.true170.i.cond.false197.i_crit_edge, label %land.lhs.true175.i

land.lhs.true170.i.cond.false197.i_crit_edge:     ; preds = %land.lhs.true170.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false197.i

land.lhs.true175.i:                               ; preds = %land.lhs.true170.i
  %sriov_wreg179.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %693, i32 0, i32 12
  %694 = ptrtoint ptr %sriov_wreg179.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %sriov_wreg179.i, align 4
  %tobool180.not.i = icmp eq ptr %695, null
  br i1 %tobool180.not.i, label %land.lhs.true175.i.cond.false197.i_crit_edge, label %cond.true181.i

land.lhs.true175.i.cond.false197.i_crit_edge:     ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false197.i

cond.true181.i:                                   ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #6
  %696 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %arrayidx.i16, align 8
  %698 = ptrtoint ptr %697 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %697, align 4
  %add190.i = add i32 %699, 2349
  %700 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul192.i = mul i32 %701, %i.0365.i
  %add193.i = add i32 %add190.i, %mul192.i
  %702 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %702)
  %703 = load i64, ptr %max_pfn.i, align 8
  %704 = trunc i64 %703 to i32
  %conv.i160 = add i32 %704, -1
  tail call void %695(ptr noundef %adev, i32 noundef %add193.i, i32 noundef %conv.i160, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end211.i

cond.false197.i:                                  ; preds = %land.lhs.true175.i.cond.false197.i_crit_edge, %land.lhs.true170.i.cond.false197.i_crit_edge, %cond.end165.i.cond.false197.i_crit_edge
  %705 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %arrayidx.i16, align 8
  %707 = ptrtoint ptr %706 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %706, align 4
  %add202.i = add i32 %708, 2349
  %709 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul204.i = mul i32 %710, %i.0365.i
  %add205.i = add i32 %add202.i, %mul204.i
  %711 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %711)
  %712 = load i64, ptr %max_pfn.i, align 8
  %713 = trunc i64 %712 to i32
  %conv210.i = add i32 %713, -1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add205.i, i32 noundef %conv210.i, i32 noundef 0) #4
  br label %cond.end211.i

cond.end211.i:                                    ; preds = %cond.false197.i, %cond.true181.i
  %714 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load i32, ptr %virt151.i, align 8
  %and214.i = and i32 %715, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214.i)
  %tobool215.not.i = icmp eq i32 %and214.i, 0
  br i1 %tobool215.not.i, label %cond.end211.i.cond.false245.i_crit_edge, label %land.lhs.true216.i

cond.end211.i.cond.false245.i_crit_edge:          ; preds = %cond.end211.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false245.i

land.lhs.true216.i:                               ; preds = %cond.end211.i
  %716 = ptrtoint ptr %funcs.i135 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %funcs.i135, align 4
  %tobool220.not.i = icmp eq ptr %717, null
  br i1 %tobool220.not.i, label %land.lhs.true216.i.cond.false245.i_crit_edge, label %land.lhs.true221.i

land.lhs.true216.i.cond.false245.i_crit_edge:     ; preds = %land.lhs.true216.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false245.i

land.lhs.true221.i:                               ; preds = %land.lhs.true216.i
  %sriov_wreg225.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %717, i32 0, i32 12
  %718 = ptrtoint ptr %sriov_wreg225.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %sriov_wreg225.i, align 4
  %tobool226.not.i = icmp eq ptr %719, null
  br i1 %tobool226.not.i, label %land.lhs.true221.i.cond.false245.i_crit_edge, label %cond.true227.i

land.lhs.true221.i.cond.false245.i_crit_edge:     ; preds = %land.lhs.true221.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false245.i

cond.true227.i:                                   ; preds = %land.lhs.true221.i
  call void @__sanitizer_cov_trace_pc() #6
  %720 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %arrayidx.i16, align 8
  %722 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load i32, ptr %721, align 4
  %add236.i = add i32 %723, 2350
  %724 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul238.i = mul i32 %725, %i.0365.i
  %add239.i = add i32 %add236.i, %mul238.i
  %726 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %726)
  %727 = load i64, ptr %max_pfn.i, align 8
  %sub242.i = add i64 %727, -1
  %shr.i161 = lshr i64 %sub242.i, 32
  %conv244.i = trunc i64 %shr.i161 to i32
  tail call void %719(ptr noundef %adev, i32 noundef %add239.i, i32 noundef %conv244.i, i32 noundef 0, i32 noundef 1) #4
  br label %for.inc.i

cond.false245.i:                                  ; preds = %land.lhs.true221.i.cond.false245.i_crit_edge, %land.lhs.true216.i.cond.false245.i_crit_edge, %cond.end211.i.cond.false245.i_crit_edge
  %728 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %arrayidx.i16, align 8
  %730 = ptrtoint ptr %729 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load i32, ptr %729, align 4
  %add250.i = add i32 %731, 2350
  %732 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul252.i = mul i32 %733, %i.0365.i
  %add253.i = add i32 %add250.i, %mul252.i
  %734 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %734)
  %735 = load i64, ptr %max_pfn.i, align 8
  %sub256.i = add i64 %735, -1
  %shr257.i162 = lshr i64 %sub256.i, 32
  %conv259.i = trunc i64 %shr257.i162 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add253.i, i32 noundef %conv259.i, i32 noundef 0) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false245.i, %cond.true227.i
  %inc.i = add nuw nsw i32 %i.0365.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %gfxhub_v1_0_setup_vmid_config.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

gfxhub_v1_0_setup_vmid_config.exit:               ; preds = %for.inc.i
  %eng_addr_distance.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 11
  br label %for.body.i167

for.body.i167:                                    ; preds = %for.inc.i184.for.body.i167_crit_edge, %gfxhub_v1_0_setup_vmid_config.exit
  %i.088.i = phi i32 [ 0, %gfxhub_v1_0_setup_vmid_config.exit ], [ %inc.i182, %for.inc.i184.for.body.i167_crit_edge ]
  %736 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %virt151.i, align 8
  %and.i165 = and i32 %737, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i165)
  %tobool.not.i166 = icmp eq i32 %and.i165, 0
  br i1 %tobool.not.i166, label %for.body.i167.cond.false.i177_crit_edge, label %land.lhs.true.i169

for.body.i167.cond.false.i177_crit_edge:          ; preds = %for.body.i167
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i177

land.lhs.true.i169:                               ; preds = %for.body.i167
  %738 = ptrtoint ptr %funcs.i135 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %funcs.i135, align 4
  %tobool1.not.i168 = icmp eq ptr %739, null
  br i1 %tobool1.not.i168, label %land.lhs.true.i169.cond.false.i177_crit_edge, label %land.lhs.true2.i172

land.lhs.true.i169.cond.false.i177_crit_edge:     ; preds = %land.lhs.true.i169
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i177

land.lhs.true2.i172:                              ; preds = %land.lhs.true.i169
  %sriov_wreg.i170 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %739, i32 0, i32 12
  %740 = ptrtoint ptr %sriov_wreg.i170 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %sriov_wreg.i170, align 4
  %tobool6.not.i171 = icmp eq ptr %741, null
  br i1 %tobool6.not.i171, label %land.lhs.true2.i172.cond.false.i177_crit_edge, label %cond.true.i175

land.lhs.true2.i172.cond.false.i177_crit_edge:    ; preds = %land.lhs.true2.i172
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i177

cond.true.i175:                                   ; preds = %land.lhs.true2.i172
  call void @__sanitizer_cov_trace_pc() #6
  %742 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %arrayidx.i16, align 8
  %744 = ptrtoint ptr %743 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %743, align 4
  %add.i173 = add i32 %745, 2247
  %746 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load i32, ptr %eng_addr_distance.i, align 4
  %mul.i174 = mul i32 %747, %i.088.i
  %add14.i = add i32 %add.i173, %mul.i174
  tail call void %741(ptr noundef %adev, i32 noundef %add14.i, i32 noundef -1, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end.i179

cond.false.i177:                                  ; preds = %land.lhs.true2.i172.cond.false.i177_crit_edge, %land.lhs.true.i169.cond.false.i177_crit_edge, %for.body.i167.cond.false.i177_crit_edge
  %748 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %arrayidx.i16, align 8
  %750 = ptrtoint ptr %749 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load i32, ptr %749, align 4
  %add19.i176 = add i32 %751, 2247
  %752 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load i32, ptr %eng_addr_distance.i, align 4
  %mul21.i = mul i32 %753, %i.088.i
  %add22.i = add i32 %add19.i176, %mul21.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22.i, i32 noundef -1, i32 noundef 0) #4
  br label %cond.end.i179

cond.end.i179:                                    ; preds = %cond.false.i177, %cond.true.i175
  %754 = ptrtoint ptr %virt151.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %virt151.i, align 8
  %and25.i = and i32 %755, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i178 = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i178, label %cond.end.i179.cond.false51.i_crit_edge, label %land.lhs.true27.i180

cond.end.i179.cond.false51.i_crit_edge:           ; preds = %cond.end.i179
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false51.i

land.lhs.true27.i180:                             ; preds = %cond.end.i179
  %756 = ptrtoint ptr %funcs.i135 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %funcs.i135, align 4
  %tobool31.not.i = icmp eq ptr %757, null
  br i1 %tobool31.not.i, label %land.lhs.true27.i180.cond.false51.i_crit_edge, label %land.lhs.true32.i

land.lhs.true27.i180.cond.false51.i_crit_edge:    ; preds = %land.lhs.true27.i180
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false51.i

land.lhs.true32.i:                                ; preds = %land.lhs.true27.i180
  %sriov_wreg36.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %757, i32 0, i32 12
  %758 = ptrtoint ptr %sriov_wreg36.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %sriov_wreg36.i, align 4
  %tobool37.not.i = icmp eq ptr %759, null
  br i1 %tobool37.not.i, label %land.lhs.true32.i.cond.false51.i_crit_edge, label %cond.true38.i

land.lhs.true32.i.cond.false51.i_crit_edge:       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false51.i

cond.true38.i:                                    ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #6
  %760 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %arrayidx.i16, align 8
  %762 = ptrtoint ptr %761 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load i32, ptr %761, align 4
  %add47.i = add i32 %763, 2248
  %764 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load i32, ptr %eng_addr_distance.i, align 4
  %mul49.i = mul i32 %765, %i.088.i
  %add50.i = add i32 %add47.i, %mul49.i
  tail call void %759(ptr noundef %adev, i32 noundef %add50.i, i32 noundef 31, i32 noundef 0, i32 noundef 1) #4
  br label %for.inc.i184

cond.false51.i:                                   ; preds = %land.lhs.true32.i.cond.false51.i_crit_edge, %land.lhs.true27.i180.cond.false51.i_crit_edge, %cond.end.i179.cond.false51.i_crit_edge
  %766 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %arrayidx.i16, align 8
  %768 = ptrtoint ptr %767 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load i32, ptr %767, align 4
  %add56.i = add i32 %769, 2248
  %770 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %eng_addr_distance.i, align 4
  %mul58.i = mul i32 %771, %i.088.i
  %add59.i181 = add i32 %add56.i, %mul58.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59.i181, i32 noundef 31, i32 noundef 0) #4
  br label %for.inc.i184

for.inc.i184:                                     ; preds = %cond.false51.i, %cond.true38.i
  %inc.i182 = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i183 = icmp eq i32 %inc.i182, 18
  br i1 %exitcond.not.i183, label %gfxhub_v1_0_program_invalidation.exit, label %for.inc.i184.for.body.i167_crit_edge

for.inc.i184.for.body.i167_crit_edge:             ; preds = %for.inc.i184
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i167

gfxhub_v1_0_program_invalidation.exit:            ; preds = %for.inc.i184
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfxhub_v1_0_gart_disable(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %ctx_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0309 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cond.false_crit_edge, label %land.lhs.true

for.body.cond.false_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 2176
  %10 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_distance, align 4
  %mul = mul i32 %11, %i.0309
  %add14 = add i32 %add, %mul
  tail call void %5(ptr noundef %adev, i32 noundef %add14, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %for.inc

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %for.body.cond.false_crit_edge
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add19 = add i32 %15, 2176
  %16 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctx_distance, align 4
  %mul21 = mul i32 %17, %i.0309
  %add22 = add i32 %add19, %mul21
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22, i32 noundef 0, i32 noundef 0) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %cond.true
  %inc = add nuw nsw i32 %i.0309, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and25 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %cond.false51, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false51:                                     ; preds = %for.end
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx11, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add56 = add i32 %23, 2439
  %call57 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add56, i32 noundef 0) #4
  %and60 = and i32 %call57, -66
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx11, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add66 = add i32 %27, 2439
  %28 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt, align 8
  %and69 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %cond.false51.cond.false87_crit_edge, label %land.lhs.true71

cond.false51.cond.false87_crit_edge:              ; preds = %cond.false51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false87

land.lhs.true71:                                  ; preds = %cond.false51
  %30 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs, align 4
  %tobool75.not = icmp eq ptr %31, null
  br i1 %tobool75.not, label %land.lhs.true71.cond.false87_crit_edge, label %land.lhs.true76

land.lhs.true71.cond.false87_crit_edge:           ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false87

land.lhs.true76:                                  ; preds = %land.lhs.true71
  %sriov_wreg80 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %sriov_wreg80 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_wreg80, align 4
  %tobool81.not = icmp eq ptr %33, null
  br i1 %tobool81.not, label %land.lhs.true76.cond.false87_crit_edge, label %cond.true82

land.lhs.true76.cond.false87_crit_edge:           ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false87

cond.true82:                                      ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %33(ptr noundef %adev, i32 noundef %add66, i32 noundef %and60, i32 noundef 4, i32 noundef 1) #4
  br label %cond.end88

cond.false87:                                     ; preds = %land.lhs.true76.cond.false87_crit_edge, %land.lhs.true71.cond.false87_crit_edge, %cond.false51.cond.false87_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add66, i32 noundef %and60, i32 noundef 0) #4
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false87, %cond.true82
  %34 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt, align 8
  %and91 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %cond.end88.cond.false183.sink.split_crit_edge, label %land.lhs.true93

cond.end88.cond.false183.sink.split_crit_edge:    ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false183.sink.split

land.lhs.true93:                                  ; preds = %cond.end88
  %36 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs, align 4
  %tobool97.not = icmp eq ptr %37, null
  br i1 %tobool97.not, label %land.lhs.true93.cond.false183.sink.split_crit_edge, label %land.lhs.true98

land.lhs.true93.cond.false183.sink.split_crit_edge: ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false183.sink.split

land.lhs.true98:                                  ; preds = %land.lhs.true93
  %sriov_wreg102 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %sriov_wreg102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_wreg102, align 4
  %tobool103.not = icmp eq ptr %39, null
  br i1 %tobool103.not, label %land.lhs.true161, label %cond.true104

cond.true104:                                     ; preds = %land.lhs.true98
  %40 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx11, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add113 = add i32 %43, 2112
  %sriov_rreg127 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %37, i32 0, i32 13
  %44 = ptrtoint ptr %sriov_rreg127 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sriov_rreg127, align 4
  %tobool128.not = icmp eq ptr %45, null
  br i1 %tobool128.not, label %cond.false140, label %cond.true129

cond.true129:                                     ; preds = %cond.true104
  call void @__sanitizer_cov_trace_pc() #6
  %call139 = tail call i32 %45(ptr noundef %adev, i32 noundef %add113, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end147

cond.false140:                                    ; preds = %cond.true104
  call void @__sanitizer_cov_trace_pc() #6
  %call146 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add113, i32 noundef 0) #4
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false140, %cond.true129
  %cond148 = phi i32 [ %call139, %cond.true129 ], [ %call146, %cond.false140 ]
  %and149 = and i32 %cond148, -2
  tail call void %39(ptr noundef %adev, i32 noundef %add113, i32 noundef %and149, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end194

land.lhs.true161:                                 ; preds = %land.lhs.true98
  %46 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load ptr, ptr %funcs, align 4
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx11, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add156305 = add i32 %50, 2112
  %tobool165.not = icmp eq ptr %.pr, null
  br i1 %tobool165.not, label %land.lhs.true161.cond.false183_crit_edge, label %land.lhs.true166

land.lhs.true161.cond.false183_crit_edge:         ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false183

land.lhs.true166:                                 ; preds = %land.lhs.true161
  %sriov_rreg170 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %51 = ptrtoint ptr %sriov_rreg170 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sriov_rreg170, align 4
  %tobool171.not = icmp eq ptr %52, null
  br i1 %tobool171.not, label %land.lhs.true166.cond.false183_crit_edge, label %cond.true172

land.lhs.true166.cond.false183_crit_edge:         ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false183

cond.true172:                                     ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #6
  %call182 = tail call i32 %52(ptr noundef %adev, i32 noundef %add156305, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end190

cond.false183.sink.split:                         ; preds = %land.lhs.true93.cond.false183.sink.split_crit_edge, %cond.end88.cond.false183.sink.split_crit_edge
  %53 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx11, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add156305312 = add i32 %56, 2112
  br label %cond.false183

cond.false183:                                    ; preds = %cond.false183.sink.split, %land.lhs.true166.cond.false183_crit_edge, %land.lhs.true161.cond.false183_crit_edge
  %add156308 = phi i32 [ %add156305, %land.lhs.true166.cond.false183_crit_edge ], [ %add156305, %land.lhs.true161.cond.false183_crit_edge ], [ %add156305312, %cond.false183.sink.split ]
  %call189 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add156308, i32 noundef 0) #4
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false183, %cond.true172
  %add156306 = phi i32 [ %add156305, %cond.true172 ], [ %add156308, %cond.false183 ]
  %cond191 = phi i32 [ %call182, %cond.true172 ], [ %call189, %cond.false183 ]
  %and192 = and i32 %cond191, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add156306, i32 noundef %and192, i32 noundef 0) #4
  br label %cond.end194

cond.end194:                                      ; preds = %cond.end190, %cond.end147
  %57 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %virt, align 8
  %and197 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %cond.end194.cond.false220_crit_edge, label %land.lhs.true199

cond.end194.cond.false220_crit_edge:              ; preds = %cond.end194
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false220

land.lhs.true199:                                 ; preds = %cond.end194
  %59 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %funcs, align 4
  %tobool203.not = icmp eq ptr %60, null
  br i1 %tobool203.not, label %land.lhs.true199.cond.false220_crit_edge, label %land.lhs.true204

land.lhs.true199.cond.false220_crit_edge:         ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false220

land.lhs.true204:                                 ; preds = %land.lhs.true199
  %sriov_wreg208 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %sriov_wreg208 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sriov_wreg208, align 4
  %tobool209.not = icmp eq ptr %62, null
  br i1 %tobool209.not, label %land.lhs.true204.cond.false220_crit_edge, label %cond.true210

land.lhs.true204.cond.false220_crit_edge:         ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false220

cond.true210:                                     ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx11, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %add219 = add i32 %66, 2114
  tail call void %62(ptr noundef %adev, i32 noundef %add219, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %cleanup

cond.false220:                                    ; preds = %land.lhs.true204.cond.false220_crit_edge, %land.lhs.true199.cond.false220_crit_edge, %cond.end194.cond.false220_crit_edge
  %67 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx11, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add225 = add i32 %70, 2114
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add225, i32 noundef 0, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.false220, %cond.true210, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfxhub_v1_0_set_fault_enable_default(ptr noundef %adev, i1 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 2119
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 2119
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = and i32 %cond, -8189
  %and76 = select i1 %value, i32 8188, i32 0
  %or81 = or i32 %and76, %and19
  %or86 = or i32 %or81, -1073741824
  %spec.select = select i1 %value, i32 %or81, i32 %or86
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and89 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %cond.end.cond.false111_crit_edge, label %land.lhs.true91

cond.end.cond.false111_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false111

land.lhs.true91:                                  ; preds = %cond.end
  %funcs94 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs94 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs94, align 4
  %tobool95.not = icmp eq ptr %17, null
  br i1 %tobool95.not, label %land.lhs.true91.cond.false111_crit_edge, label %land.lhs.true96

land.lhs.true91.cond.false111_crit_edge:          ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false111

land.lhs.true96:                                  ; preds = %land.lhs.true91
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool100.not = icmp eq ptr %19, null
  br i1 %tobool100.not, label %land.lhs.true96.cond.false111_crit_edge, label %cond.true101

land.lhs.true96.cond.false111_crit_edge:          ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false111

cond.true101:                                     ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx107 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %20 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx107, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add110 = add i32 %23, 2119
  tail call void %19(ptr noundef %adev, i32 noundef %add110, i32 noundef %spec.select, i32 noundef 0, i32 noundef 1) #4
  br label %cond.end117

cond.false111:                                    ; preds = %land.lhs.true96.cond.false111_crit_edge, %land.lhs.true91.cond.false111_crit_edge, %cond.end.cond.false111_crit_edge
  %arrayidx113 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx113, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add116 = add i32 %27, 2119
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add116, i32 noundef %spec.select, i32 noundef 0) #4
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false111, %cond.true101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gfxhub_v1_0_init(ptr nocapture noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vmhub = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66
  %arrayidx1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 2283
  %4 = ptrtoint ptr %vmhub to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %vmhub, align 4
  %5 = load i32, ptr %1, align 4
  %add8 = add i32 %5, 2284
  %ctx0_ptb_addr_hi32 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 1
  %6 = ptrtoint ptr %ctx0_ptb_addr_hi32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add8, ptr %ctx0_ptb_addr_hi32, align 4
  %7 = load i32, ptr %1, align 4
  %add13 = add i32 %7, 2193
  %vm_inv_eng0_sem = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 2
  %8 = ptrtoint ptr %vm_inv_eng0_sem to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add13, ptr %vm_inv_eng0_sem, align 4
  %9 = load i32, ptr %1, align 4
  %add18 = add i32 %9, 2211
  %vm_inv_eng0_req = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 3
  %10 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add18, ptr %vm_inv_eng0_req, align 4
  %11 = load i32, ptr %1, align 4
  %add23 = add i32 %11, 2229
  %vm_inv_eng0_ack = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 4
  %12 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add23, ptr %vm_inv_eng0_ack, align 4
  %13 = load i32, ptr %1, align 4
  %add28 = add i32 %13, 2176
  %vm_context0_cntl = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 5
  %14 = ptrtoint ptr %vm_context0_cntl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add28, ptr %vm_context0_cntl, align 4
  %15 = load i32, ptr %1, align 4
  %add33 = add i32 %15, 2123
  %vm_l2_pro_fault_status = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 6
  %16 = ptrtoint ptr %vm_l2_pro_fault_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add33, ptr %vm_l2_pro_fault_status, align 4
  %17 = load i32, ptr %1, align 4
  %add38 = add i32 %17, 2119
  %vm_l2_pro_fault_cntl = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 7
  %18 = ptrtoint ptr %vm_l2_pro_fault_cntl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add38, ptr %vm_l2_pro_fault_cntl, align 4
  %ctx_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 8
  %19 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ctx_distance, align 4
  %ctx_addr_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %20 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %ctx_addr_distance, align 4
  %eng_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 10
  %21 = ptrtoint ptr %eng_distance to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %eng_distance, align 4
  %eng_addr_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 11
  %22 = ptrtoint ptr %eng_addr_distance to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %eng_addr_distance, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfxhub_v1_1_get_xgmi_info(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_pd_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_vram_mc2pa(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @gfxhub_v1_0_funcs, !1, !"gfxhub_v1_0_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v1_0.c", i32 444, i32 34}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
