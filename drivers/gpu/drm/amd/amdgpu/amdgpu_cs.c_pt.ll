; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.98, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.111, i32, i32, i32, i32 }
%union.anon.111 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.drm_amdgpu_cs_chunk = type { i32, i32, i64 }
%struct.amdgpu_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ww_acquire_ctx, ptr, ptr, %struct.amdgpu_bo_list_entry, %struct.list_head, ptr, i64, i64, i64, i64, %struct.amdgpu_bo_list_entry, i32, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.amdgpu_bo_list_entry = type { %struct.ttm_validate_buffer, ptr, ptr, i32, ptr, i8 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_amdgpu_cs_in = type { i32, i32, i32, i32, i64 }
%struct.amdgpu_ctx = type { %struct.kref, ptr, i32, i32, i32, %struct.spinlock, [9 x [4 x ptr]], i8, i32, i32, %struct.mutex, %struct.atomic_t, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.amdgpu_cs_chunk = type { i32, i32, ptr }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.92, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.92 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.86, i64, i64, i32, %struct.kref, i32 }
%union.anon.86 = type { i64 }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.drm_amdgpu_cs_chunk_ib = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_amdgpu_cs_chunk_dep = type { i32, i32, i32, i32, i64 }
%struct.drm_amdgpu_cs_chunk_sem = type { i32 }
%struct.amdgpu_cs_post_dep = type { ptr, ptr, i64 }
%struct.drm_amdgpu_cs_chunk_syncobj = type { i32, i32, i64 }
%struct.amdgpu_bo_list = type { %struct.callback_head, %struct.kref, ptr, ptr, ptr, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
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
%struct.amdgpu_bo_va_mapping = type { ptr, %struct.list_head, %struct.rb_node, i64, i64, i64, i64, i64 }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm, ptr, ptr, %struct.mutex, %struct.idr, %struct.amdgpu_ctx_mgr }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.94, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.anon.94 = type { %union.anon.95, [128 x i64] }
%union.anon.95 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.amdgpu_ctx_mgr = type { ptr, %struct.mutex, %struct.idr }
%struct.amdgpu_bo_va = type { %struct.amdgpu_vm_bo_base, i32, ptr, %struct.list_head, %struct.list_head, i8, i8 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.drm_amdgpu_wait_cs_in = type { i64, i64, i32, i32, i32, i32 }
%struct.anon.116 = type { %struct.drm_amdgpu_fence, i32, i32 }
%struct.drm_amdgpu_fence = type { i32, i32, i32, i32, i64 }
%struct.drm_amdgpu_wait_fences_in = type { i64, i32, i32, i64 }
%struct.drm_amdgpu_wait_fences_out = type { i32, i32 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.drm_amdgpu_cs_chunk_fence = type { i32, i32 }
%struct.drm_amdgpu_bo_list_in = type { i32, i32, i32, i32, i64 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_range_mgr_node = type { %struct.ttm_resource, [0 x %struct.drm_mm_node] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__func__.amdgpu_cs_ioctl = private unnamed_addr constant [16 x i8] c"amdgpu_cs_ioctl\00", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize parser %d!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed in the dependencies handling %d!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Not enough memory for command submission!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to process the buffer list %d!\0A\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_ras_in_intr = external dso_local global %struct.atomic_t, align 4
@amdgpu_mcbp = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to get ib !\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"syncobj %u failed to find fence @ %llu (%d)!\0A\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kvmalloc_array failure\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ttm_eu_reserve_buffers failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu_vm_validate_pt_bos() failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h\00", [46 x i8] zeroinitializer }, align 32
@__const.amdgpu_cs_list_validate.ctx = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], ptr, [4 x i8], i64 } { i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@__tracepoint_amdgpu_cs = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", [44 x i8] zeroinitializer }, align 32
@trace_amdgpu_cs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IB va_start is invalid\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IB va_start+ib_bytes is invalid\0A\00", [63 x i8] zeroinitializer }, align 32
@amdgpu_vm_debug = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_amdgpu_cs_ioctl = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_cs_ioctl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dma_resv_excl_fence.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/dma-resv.h\00", [39 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294966784, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1334, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1344, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1351, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1353, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 931, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1013, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 546, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 570, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 596, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 286, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [55 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 142, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 108, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 755, i32 5 }
@___asan_gen_.67 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 761, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"../include/linux/dma-resv.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 440, i32 9 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 230, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 214, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 156, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_cs_report_moved_bytes(ptr noundef %adev, i64 noundef %num_bytes, i64 noundef %num_vis_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mm_stats = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %mm_stats) #9
  %log2_max_MBps.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 76, i32 4
  %0 = ptrtoint ptr %log2_max_MBps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %log2_max_MBps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %sh_prom.i = zext i32 %1 to i64
  %shr.i = lshr i64 %num_bytes, %sh_prom.i
  %retval.0.i = select i1 %tobool.not.i, i64 0, i64 %shr.i
  %accum_us = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 76, i32 2
  %2 = ptrtoint ptr %accum_us to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %accum_us, align 8
  %sub = sub i64 %3, %retval.0.i
  store i64 %sub, ptr %accum_us, align 8
  %shr.i15 = lshr i64 %num_vis_bytes, %sh_prom.i
  %retval.0.i16 = select i1 %tobool.not.i, i64 0, i64 %shr.i15
  %accum_us_vis = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 76, i32 3
  %4 = ptrtoint ptr %accum_us_vis to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %accum_us_vis, align 8
  %sub4 = sub i64 %5, %retval.0.i16
  store i64 %sub4, ptr %accum_us_vis, align 8
  tail call void @_raw_spin_unlock(ptr noundef %mm_stats) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_cs_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %uf.i = alloca ptr, align 4
  %entity.i.i = alloca ptr, align 4
  %entity.i = alloca ptr, align 4
  %uf_offset.i = alloca i32, align 4
  %user_chunk.i = alloca %struct.drm_amdgpu_cs_chunk, align 8
  %parser = alloca %struct.amdgpu_cs_parser, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %parser) #9
  %0 = getelementptr inbounds i8, ptr %parser, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 224)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32))
  %2 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %accel_working = getelementptr i8, ptr %dev, i32 2394
  %3 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %accel_working, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %parser to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %parser, align 8
  %filp5 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 1
  %6 = ptrtoint ptr %filp5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %filp, ptr %filp5, align 4
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %filp, i32 0, i32 19
  %7 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uf_offset.i) #9
  %9 = ptrtoint ptr %uf_offset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %uf_offset.i, align 4
  %num_chunks.i = getelementptr inbounds %struct.drm_amdgpu_cs_in, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %num_chunks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_chunks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.end3.amdgpu_cs_parser_init.exit.thread_crit_edge, label %if.end.i

if.end3.amdgpu_cs_parser_init.exit.thread_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_parser_init.exit.thread

if.end.i:                                         ; preds = %if.end3
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 8) #9
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end.i.amdgpu_cs_parser_init.exit.thread115_crit_edge, label %kvmalloc_array.exit.i, !prof !60

if.end.i.amdgpu_cs_parser_init.exit.thread115_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_parser_init.exit.thread115

kvmalloc_array.exit.i:                            ; preds = %if.end.i
  %14 = extractvalue { i32, i1 } %12, 0
  %call.i.i290.i = tail call noalias ptr @kvmalloc_node(i32 noundef %14, i32 noundef 3264, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i290.i, null
  br i1 %tobool.not.i, label %kvmalloc_array.exit.i.amdgpu_cs_parser_init.exit.thread115_crit_edge, label %if.end4.i

kvmalloc_array.exit.i.amdgpu_cs_parser_init.exit.thread115_crit_edge: ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_parser_init.exit.thread115

if.end4.i:                                        ; preds = %kvmalloc_array.exit.i
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 8
  %call5.i = tail call ptr @amdgpu_ctx_get(ptr noundef %8, i32 noundef %16) #9
  %ctx.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 2
  %17 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i, ptr %ctx.i, align 8
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %if.end4.i.amdgpu_cs_parser_init.exit.thread120_crit_edge, label %if.end9.i

if.end4.i.amdgpu_cs_parser_init.exit.thread120_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_parser_init.exit.thread120

if.end9.i:                                        ; preds = %if.end4.i
  %lock.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call5.i, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %18 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx.i, align 8
  %guilty.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %19, i32 0, i32 11
  %call.i.i.i59 = tail call zeroext i1 @__kasan_check_read(ptr noundef %guilty.i, i32 noundef 4) #9
  %20 = ptrtoint ptr %guilty.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %guilty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp13.i = icmp eq i32 %21, 1
  br i1 %cmp13.i, label %if.end9.i.amdgpu_cs_parser_init.exit.thread120_crit_edge, label %if.end15.i

if.end9.i.amdgpu_cs_parser_init.exit.thread120_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_parser_init.exit.thread120

if.end15.i:                                       ; preds = %if.end9.i
  %chunks.i = getelementptr inbounds %struct.drm_amdgpu_cs_in, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %chunks.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %chunks.i, align 8
  %conv18.i = trunc i64 %23 to i32
  %24 = inttoptr i32 %conv18.i to ptr
  %25 = ptrtoint ptr %num_chunks.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_chunks.i, align 8
  %mul.i = shl i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end15.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.amdgpu_cs_parser_init.exit.thread120_crit_edge, label %if.then27.i.i.i, !prof !61

land.rhs16.i.i.i.amdgpu_cs_parser_init.exit.thread120_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_parser_init.exit.thread120

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %amdgpu_cs_parser_init.exit.thread120

if.then.i.i.i.i:                                  ; preds = %if.end15.i
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i290.i, i32 noundef %mul.i, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i230.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i230.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 %mul.i, i32 -1226833920) #13, !srcloc !62
  %asmresult.i.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !61

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i290.i, i32 noundef %mul.i) #9
  %28 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !63
  %and.i.i.i.i.i = and i32 %30, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i290.i, ptr noundef %24, i32 noundef %mul.i) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #9, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %mul.i, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %mul.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end23.i, label %if.then11.i.i.i, !prof !61

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = sub i32 %mul.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i290.i, i32 %sub.i.i.i
  %31 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %amdgpu_cs_parser_init.exit.thread120

if.end23.i:                                       ; preds = %if.end.i.i.i
  %32 = ptrtoint ptr %num_chunks.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_chunks.i, align 8
  %nchunks.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 3
  %34 = ptrtoint ptr %nchunks.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %nchunks.i, align 4
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 12) #9
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %kvmalloc_array.exit294.thread.i, label %kvmalloc_array.exit294.i, !prof !60

kvmalloc_array.exit294.thread.i:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %chunks27310.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 4
  %37 = ptrtoint ptr %chunks27310.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %chunks27310.i, align 8
  br label %amdgpu_cs_parser_init.exit.thread120

kvmalloc_array.exit294.i:                         ; preds = %if.end23.i
  %38 = extractvalue { i32, i1 } %35, 0
  %call.i.i291.i = tail call noalias ptr @kvmalloc_node(i32 noundef %38, i32 noundef 3264, i32 noundef -1) #12
  %chunks27.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 4
  %39 = ptrtoint ptr %chunks27.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i291.i, ptr %chunks27.i, align 8
  %tobool29.not.i = icmp eq ptr %call.i.i291.i, null
  br i1 %tobool29.not.i, label %kvmalloc_array.exit294.i.amdgpu_cs_parser_init.exit.thread120_crit_edge, label %for.cond.preheader.i

kvmalloc_array.exit294.i.amdgpu_cs_parser_init.exit.thread120_crit_edge: ; preds = %kvmalloc_array.exit294.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_parser_init.exit.thread120

for.cond.preheader.i:                             ; preds = %kvmalloc_array.exit294.i
  %40 = ptrtoint ptr %nchunks.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nchunks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp33348.not.i = icmp eq i32 %41, 0
  br i1 %cmp33348.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %42 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk, ptr %user_chunk.i, i32 0, i32 1
  %43 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk, ptr %user_chunk.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %num_ibs.0352.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_ibs.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0349.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc119.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %user_chunk.i) #9
  %arrayidx.i = getelementptr i64, ptr %call.i.i290.i, i32 %i.0349.i
  %44 = call ptr @memset(ptr %user_chunk.i, i32 255, i32 16)
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx.i, align 8
  %conv41.i = trunc i64 %46 to i32
  %47 = inttoptr i32 %conv41.i to ptr
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i237.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i237.i, label %for.body.i.if.then11.i.i254.i_crit_edge, label %land.lhs.true.i.i241.i

for.body.i.if.then11.i.i254.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i254.i

land.lhs.true.i.i241.i:                           ; preds = %for.body.i
  %48 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %47, i32 16, i32 -1226833920) #13, !srcloc !62
  %asmresult.i.i239.i = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i239.i)
  %cmp.i6.i240.i = icmp eq i32 %asmresult.i.i239.i, 0
  br i1 %cmp.i6.i240.i, label %if.end.i.i251.i, label %land.lhs.true.i.i241.i.if.then11.i.i254.i_crit_edge, !prof !61

land.lhs.true.i.i241.i.if.then11.i.i254.i_crit_edge: ; preds = %land.lhs.true.i.i241.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i254.i

if.end.i.i251.i:                                  ; preds = %land.lhs.true.i.i241.i
  %call.i.i.i242.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user_chunk.i, i32 noundef 16) #9
  %49 = call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i.i243.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i243.i to ptr
  %cpu_domain.i.i.i.i.i244.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i244.i) #7, !srcloc !63
  %and.i.i.i.i245.i = and i32 %51, -13
  %or.i.i.i.i246.i = or i32 %and.i.i.i.i245.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i246.i) #9, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  %call1.i.i.i247.i = call i32 @arm_copy_from_user(ptr noundef nonnull %user_chunk.i, ptr noundef %47, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #9, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i247.i)
  %tobool4.not.i.i250.i = icmp eq i32 %call1.i.i.i247.i, 0
  br i1 %tobool4.not.i.i250.i, label %if.end45.i, label %if.end.i.i251.i.if.then11.i.i254.i_crit_edge, !prof !61

if.end.i.i251.i.if.then11.i.i254.i_crit_edge:     ; preds = %if.end.i.i251.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i254.i

if.then11.i.i254.i:                               ; preds = %if.end.i.i251.i.if.then11.i.i254.i_crit_edge, %land.lhs.true.i.i241.i.if.then11.i.i254.i_crit_edge, %for.body.i.if.then11.i.i254.i_crit_edge
  %res.0.i.i249315.i = phi i32 [ %call1.i.i.i247.i, %if.end.i.i251.i.if.then11.i.i254.i_crit_edge ], [ 16, %for.body.i.if.then11.i.i254.i_crit_edge ], [ 16, %land.lhs.true.i.i241.i.if.then11.i.i254.i_crit_edge ]
  %sub.i.i252.i = sub i32 16, %res.0.i.i249315.i
  %add.ptr.i.i253.i = getelementptr i8, ptr %user_chunk.i, i32 %sub.i.i252.i
  %52 = call ptr @memset(ptr %add.ptr.i.i253.i, i32 0, i32 %res.0.i.i249315.i)
  %dec.i = add i32 %i.0349.i, -1
  br label %cleanup.thread.i

if.end45.i:                                       ; preds = %if.end.i.i251.i
  %53 = ptrtoint ptr %user_chunk.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %user_chunk.i, align 8
  %55 = ptrtoint ptr %chunks27.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chunks27.i, align 8
  %arrayidx47.i = getelementptr %struct.amdgpu_cs_chunk, ptr %56, i32 %i.0349.i
  %57 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %54, ptr %arrayidx47.i, align 4
  %58 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %42, align 4
  %60 = load ptr, ptr %chunks27.i, align 8
  %length_dw51.i = getelementptr %struct.amdgpu_cs_chunk, ptr %60, i32 %i.0349.i, i32 1
  %61 = ptrtoint ptr %length_dw51.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %59, ptr %length_dw51.i, align 4
  %62 = load ptr, ptr %chunks27.i, align 8
  %length_dw54.i = getelementptr %struct.amdgpu_cs_chunk, ptr %62, i32 %i.0349.i, i32 1
  %63 = ptrtoint ptr %length_dw54.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %length_dw54.i, align 4
  %65 = ptrtoint ptr %43 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %43, align 8
  %67 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %64, i32 4) #9
  %68 = extractvalue { i32, i1 } %67, 1
  br i1 %68, label %if.end45.i.kvmalloc_array.exit298.i_crit_edge, label %if.end.i296.i, !prof !60

if.end45.i.kvmalloc_array.exit298.i_crit_edge:    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvmalloc_array.exit298.i

if.end.i296.i:                                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = extractvalue { i32, i1 } %67, 0
  %call.i.i295.i = call noalias ptr @kvmalloc_node(i32 noundef %69, i32 noundef 3264, i32 noundef -1) #12
  br label %kvmalloc_array.exit298.i

kvmalloc_array.exit298.i:                         ; preds = %if.end.i296.i, %if.end45.i.kvmalloc_array.exit298.i_crit_edge
  %retval.0.i297.i = phi ptr [ %call.i.i295.i, %if.end.i296.i ], [ null, %if.end45.i.kvmalloc_array.exit298.i_crit_edge ]
  %70 = ptrtoint ptr %chunks27.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chunks27.i, align 8
  %kdata.i = getelementptr %struct.amdgpu_cs_chunk, ptr %71, i32 %i.0349.i, i32 2
  %72 = ptrtoint ptr %kdata.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %retval.0.i297.i, ptr %kdata.i, align 4
  %73 = load ptr, ptr %chunks27.i, align 8
  %kdata67.i = getelementptr %struct.amdgpu_cs_chunk, ptr %73, i32 %i.0349.i, i32 2
  %74 = ptrtoint ptr %kdata67.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %kdata67.i, align 4
  %cmp68.i = icmp eq ptr %75, null
  br i1 %cmp68.i, label %if.then70.i, label %if.end72.i

if.then70.i:                                      ; preds = %kvmalloc_array.exit298.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec71.i = add i32 %i.0349.i, -1
  br label %cleanup.thread.i

if.end72.i:                                       ; preds = %kvmalloc_array.exit298.i
  %conv61.i = trunc i64 %66 to i32
  %76 = inttoptr i32 %conv61.i to ptr
  %mul73.i = shl i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul73.i)
  %cmp9.i.i263.i = icmp slt i32 %mul73.i, 0
  br i1 %cmp9.i.i263.i, label %land.rhs16.i.i266.i, label %if.then.i.i.i269.i

land.rhs16.i.i266.i:                              ; preds = %if.end72.i
  %.b1.i.i265.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i265.i, label %land.rhs16.i.i266.i.cleanup.thread.i_crit_edge, label %if.then27.i.i267.i, !prof !61

land.rhs16.i.i266.i.cleanup.thread.i_crit_edge:   ; preds = %land.rhs16.i.i266.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.then27.i.i267.i:                               ; preds = %land.rhs16.i.i266.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup.thread.i

if.then.i.i.i269.i:                               ; preds = %if.end72.i
  call void @__check_object_size(ptr noundef nonnull %75, i32 noundef %mul73.i, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i270.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i270.i, label %if.then.i.i.i269.i.if.end.i.i284.i_crit_edge, label %land.lhs.true.i.i274.i

if.then.i.i.i269.i.if.end.i.i284.i_crit_edge:     ; preds = %if.then.i.i.i269.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i284.i

land.lhs.true.i.i274.i:                           ; preds = %if.then.i.i.i269.i
  %77 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %76, i32 %mul73.i, i32 -1226833920) #13, !srcloc !62
  %asmresult.i.i272.i = extractvalue { i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i272.i)
  %cmp.i6.i273.i = icmp eq i32 %asmresult.i.i272.i, 0
  br i1 %cmp.i6.i273.i, label %if.then.i7.i281.i, label %land.lhs.true.i.i274.i.if.end.i.i284.i_crit_edge, !prof !61

land.lhs.true.i.i274.i.if.end.i.i284.i_crit_edge: ; preds = %land.lhs.true.i.i274.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i284.i

if.then.i7.i281.i:                                ; preds = %land.lhs.true.i.i274.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i275.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %75, i32 noundef %mul73.i) #9
  %78 = call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i.i276.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i.i276.i to ptr
  %cpu_domain.i.i.i.i.i277.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 4
  %80 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i277.i) #7, !srcloc !63
  %and.i.i.i.i278.i = and i32 %80, -13
  %or.i.i.i.i279.i = or i32 %and.i.i.i.i278.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i279.i) #9, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  %call1.i.i.i280.i = call i32 @arm_copy_from_user(ptr noundef nonnull %75, ptr noundef %76, i32 noundef %mul73.i) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #9, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  br label %if.end.i.i284.i

if.end.i.i284.i:                                  ; preds = %if.then.i7.i281.i, %land.lhs.true.i.i274.i.if.end.i.i284.i_crit_edge, %if.then.i.i.i269.i.if.end.i.i284.i_crit_edge
  %res.0.i.i282.i = phi i32 [ %mul73.i, %if.then.i.i.i269.i.if.end.i.i284.i_crit_edge ], [ %call1.i.i.i280.i, %if.then.i7.i281.i ], [ %mul73.i, %land.lhs.true.i.i274.i.if.end.i.i284.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i282.i)
  %tobool4.not.i.i283.i = icmp eq i32 %res.0.i.i282.i, 0
  br i1 %tobool4.not.i.i283.i, label %if.end80.i, label %if.then11.i.i287.i, !prof !61

if.then11.i.i287.i:                               ; preds = %if.end.i.i284.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i285.i = sub i32 %mul73.i, %res.0.i.i282.i
  %add.ptr.i.i286.i = getelementptr i8, ptr %75, i32 %sub.i.i285.i
  %81 = call ptr @memset(ptr %add.ptr.i.i286.i, i32 0, i32 %res.0.i.i282.i)
  br label %cleanup.thread.i

if.end80.i:                                       ; preds = %if.end.i.i284.i
  %82 = ptrtoint ptr %chunks27.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chunks27.i, align 8
  %arrayidx82.i = getelementptr %struct.amdgpu_cs_chunk, ptr %83, i32 %i.0349.i
  %84 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx82.i, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values)
  switch i32 %85, label %if.end80.i.cleanup.thread.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb84.i
    i32 6, label %sw.bb100.i
    i32 3, label %if.end80.i.for.inc.i_crit_edge
    i32 4, label %if.end80.i.for.inc.i_crit_edge342
    i32 5, label %if.end80.i.for.inc.i_crit_edge343
    i32 7, label %if.end80.i.for.inc.i_crit_edge344
    i32 8, label %if.end80.i.for.inc.i_crit_edge345
    i32 9, label %if.end80.i.for.inc.i_crit_edge346
  ]

if.end80.i.for.inc.i_crit_edge346:                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end80.i.for.inc.i_crit_edge345:                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end80.i.for.inc.i_crit_edge344:                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end80.i.for.inc.i_crit_edge343:                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end80.i.for.inc.i_crit_edge342:                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end80.i.for.inc.i_crit_edge:                   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end80.i.cleanup.thread.i_crit_edge:            ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

sw.bb.i:                                          ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add i32 %num_ibs.0352.i, 1
  br label %for.inc.i

sw.bb84.i:                                        ; preds = %if.end80.i
  %length_dw87.i = getelementptr %struct.amdgpu_cs_chunk, ptr %83, i32 %i.0349.i, i32 1
  %87 = ptrtoint ptr %length_dw87.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %length_dw87.i, align 4
  %89 = and i32 %88, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp89.i = icmp eq i32 %89, 0
  br i1 %cmp89.i, label %sw.bb84.i.cleanup.thread.i_crit_edge, label %if.end92.i

sw.bb84.i.cleanup.thread.i_crit_edge:             ; preds = %sw.bb84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end92.i:                                       ; preds = %sw.bb84.i
  %kdata95.i = getelementptr %struct.amdgpu_cs_chunk, ptr %83, i32 %i.0349.i, i32 2
  %90 = ptrtoint ptr %kdata95.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %kdata95.i, align 4
  %call96.i = call fastcc i32 @amdgpu_cs_user_fence_chunk(ptr noundef nonnull %parser, ptr noundef %91, ptr noundef nonnull %uf_offset.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %if.end92.i.for.inc.i_crit_edge, label %if.end92.i.cleanup.thread.i_crit_edge

if.end92.i.cleanup.thread.i_crit_edge:            ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end92.i.for.inc.i_crit_edge:                   ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb100.i:                                       ; preds = %if.end80.i
  %length_dw103.i = getelementptr %struct.amdgpu_cs_chunk, ptr %83, i32 %i.0349.i, i32 1
  %92 = ptrtoint ptr %length_dw103.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %length_dw103.i, align 4
  %mul104.i = shl i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %mul104.i)
  %cmp105.i = icmp ult i32 %mul104.i, 24
  br i1 %cmp105.i, label %sw.bb100.i.cleanup.thread.i_crit_edge, label %if.end108.i

sw.bb100.i.cleanup.thread.i_crit_edge:            ; preds = %sw.bb100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end108.i:                                      ; preds = %sw.bb100.i
  %kdata111.i = getelementptr %struct.amdgpu_cs_chunk, ptr %83, i32 %i.0349.i, i32 2
  %94 = ptrtoint ptr %kdata111.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %kdata111.i, align 4
  %call112.i = call fastcc i32 @amdgpu_cs_bo_handles_chunk(ptr noundef nonnull %parser, ptr noundef %95) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %if.end108.i.for.inc.i_crit_edge, label %if.end108.i.cleanup.thread.i_crit_edge

if.end108.i.cleanup.thread.i_crit_edge:           ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end108.i.for.inc.i_crit_edge:                  ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

cleanup.thread.i:                                 ; preds = %if.end108.i.cleanup.thread.i_crit_edge, %sw.bb100.i.cleanup.thread.i_crit_edge, %if.end92.i.cleanup.thread.i_crit_edge, %sw.bb84.i.cleanup.thread.i_crit_edge, %if.end80.i.cleanup.thread.i_crit_edge, %if.then11.i.i287.i, %if.then27.i.i267.i, %land.rhs16.i.i266.i.cleanup.thread.i_crit_edge, %if.then70.i, %if.then11.i.i254.i
  %i.1.ph.i = phi i32 [ %dec71.i, %if.then70.i ], [ %dec.i, %if.then11.i.i254.i ], [ %i.0349.i, %if.then11.i.i287.i ], [ %i.0349.i, %if.then27.i.i267.i ], [ %i.0349.i, %land.rhs16.i.i266.i.cleanup.thread.i_crit_edge ], [ %i.0349.i, %if.end80.i.cleanup.thread.i_crit_edge ], [ %i.0349.i, %sw.bb84.i.cleanup.thread.i_crit_edge ], [ %i.0349.i, %if.end92.i.cleanup.thread.i_crit_edge ], [ %i.0349.i, %sw.bb100.i.cleanup.thread.i_crit_edge ], [ %i.0349.i, %if.end108.i.cleanup.thread.i_crit_edge ]
  %ret.2.ph.i = phi i32 [ -12, %if.then70.i ], [ -14, %if.then11.i.i254.i ], [ -14, %if.then11.i.i287.i ], [ -14, %if.then27.i.i267.i ], [ -14, %land.rhs16.i.i266.i.cleanup.thread.i_crit_edge ], [ %call112.i, %if.end108.i.cleanup.thread.i_crit_edge ], [ -22, %sw.bb100.i.cleanup.thread.i_crit_edge ], [ %call96.i, %if.end92.i.cleanup.thread.i_crit_edge ], [ -22, %sw.bb84.i.cleanup.thread.i_crit_edge ], [ -22, %if.end80.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %user_chunk.i) #9
  br label %free_partial_kdata.i

for.inc.i:                                        ; preds = %if.end108.i.for.inc.i_crit_edge, %if.end92.i.for.inc.i_crit_edge, %sw.bb.i, %if.end80.i.for.inc.i_crit_edge, %if.end80.i.for.inc.i_crit_edge342, %if.end80.i.for.inc.i_crit_edge343, %if.end80.i.for.inc.i_crit_edge344, %if.end80.i.for.inc.i_crit_edge345, %if.end80.i.for.inc.i_crit_edge346
  %num_ibs.1.i = phi i32 [ %num_ibs.0352.i, %if.end80.i.for.inc.i_crit_edge ], [ %num_ibs.0352.i, %if.end80.i.for.inc.i_crit_edge342 ], [ %num_ibs.0352.i, %if.end80.i.for.inc.i_crit_edge343 ], [ %num_ibs.0352.i, %if.end80.i.for.inc.i_crit_edge344 ], [ %num_ibs.0352.i, %if.end80.i.for.inc.i_crit_edge345 ], [ %num_ibs.0352.i, %if.end80.i.for.inc.i_crit_edge346 ], [ %num_ibs.0352.i, %if.end108.i.for.inc.i_crit_edge ], [ %num_ibs.0352.i, %if.end92.i.for.inc.i_crit_edge ], [ %inc.i, %sw.bb.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %user_chunk.i) #9
  %inc119.i = add nuw i32 %i.0349.i, 1
  %96 = ptrtoint ptr %nchunks.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nchunks.i, align 4
  %cmp33.i = icmp ult i32 %inc119.i, %97
  br i1 %cmp33.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %num_ibs.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %num_ibs.1.i, %for.inc.i.for.end.i_crit_edge ]
  %98 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %parser, align 8
  %job.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 5
  %call120.i = call i32 @amdgpu_job_alloc(ptr noundef %99, i32 noundef %num_ibs.0.lcssa.i, ptr noundef %job.i, ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %if.end123.i, label %for.end.i.free_all_kdata.i_crit_edge

for.end.i.free_all_kdata.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_all_kdata.i

if.end123.i:                                      ; preds = %for.end.i
  %100 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctx.i, align 8
  %vram_lost_counter.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %vram_lost_counter.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %vram_lost_counter.i, align 4
  %104 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %job.i, align 4
  %vram_lost_counter126.i = getelementptr inbounds %struct.amdgpu_job, ptr %105, i32 0, i32 20
  %106 = ptrtoint ptr %vram_lost_counter126.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vram_lost_counter126.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %107)
  %cmp127.not.i = icmp eq i32 %103, %107
  br i1 %cmp127.not.i, label %if.end130.i, label %if.end123.i.free_all_kdata.i_crit_edge

if.end123.i.free_all_kdata.i_crit_edge:           ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_all_kdata.i

if.end130.i:                                      ; preds = %if.end123.i
  %bo.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 17, i32 0, i32 1
  %108 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bo.i, align 8
  %tobool131.not.i = icmp eq ptr %109, null
  br i1 %tobool131.not.i, label %if.end130.i.if.end135.i_crit_edge, label %if.then132.i

if.end130.i.if.end135.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135.i

if.then132.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %uf_offset.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %uf_offset.i, align 4
  %conv133.i = zext i32 %111 to i64
  %uf_addr.i = getelementptr inbounds %struct.amdgpu_job, ptr %105, i32 0, i32 21
  %112 = ptrtoint ptr %uf_addr.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv133.i, ptr %uf_addr.i, align 8
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then132.i, %if.end130.i.if.end135.i_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i290.i) #9
  call void @amdgpu_vm_set_task_info(ptr noundef %8) #9
  br label %amdgpu_cs_parser_init.exit.thread

free_all_kdata.i:                                 ; preds = %if.end123.i.free_all_kdata.i_crit_edge, %for.end.i.free_all_kdata.i_crit_edge
  %ret.3.i = phi i32 [ %call120.i, %for.end.i.free_all_kdata.i_crit_edge ], [ -125, %if.end123.i.free_all_kdata.i_crit_edge ]
  %113 = ptrtoint ptr %nchunks.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nchunks.i, align 4
  %sub.i = add i32 %114, -1
  br label %free_partial_kdata.i

free_partial_kdata.i:                             ; preds = %free_all_kdata.i, %cleanup.thread.i
  %i.2.i = phi i32 [ %sub.i, %free_all_kdata.i ], [ %i.1.ph.i, %cleanup.thread.i ]
  %ret.4.i = phi i32 [ %ret.3.i, %free_all_kdata.i ], [ %ret.2.ph.i, %cleanup.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2.i)
  %cmp138353.i = icmp sgt i32 %i.2.i, -1
  br i1 %cmp138353.i, label %free_partial_kdata.i.for.body140.i_crit_edge, label %free_partial_kdata.i.amdgpu_cs_parser_init.exit_crit_edge

free_partial_kdata.i.amdgpu_cs_parser_init.exit_crit_edge: ; preds = %free_partial_kdata.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_parser_init.exit

free_partial_kdata.i.for.body140.i_crit_edge:     ; preds = %free_partial_kdata.i
  br label %for.body140.i

for.body140.i:                                    ; preds = %for.body140.i.for.body140.i_crit_edge, %free_partial_kdata.i.for.body140.i_crit_edge
  %i.3354.i = phi i32 [ %dec145.i, %for.body140.i.for.body140.i_crit_edge ], [ %i.2.i, %free_partial_kdata.i.for.body140.i_crit_edge ]
  %115 = ptrtoint ptr %chunks27.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %chunks27.i, align 8
  %kdata143.i = getelementptr %struct.amdgpu_cs_chunk, ptr %116, i32 %i.3354.i, i32 2
  %117 = ptrtoint ptr %kdata143.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %kdata143.i, align 4
  call void @kvfree(ptr noundef %118) #9
  %dec145.i = add nsw i32 %i.3354.i, -1
  %cmp138.not.i = icmp eq i32 %i.3354.i, 0
  br i1 %cmp138.not.i, label %for.body140.i.amdgpu_cs_parser_init.exit_crit_edge, label %for.body140.i.for.body140.i_crit_edge

for.body140.i.for.body140.i_crit_edge:            ; preds = %for.body140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body140.i

for.body140.i.amdgpu_cs_parser_init.exit_crit_edge: ; preds = %for.body140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_parser_init.exit

amdgpu_cs_parser_init.exit.thread:                ; preds = %if.end135.i, %if.end3.amdgpu_cs_parser_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uf_offset.i) #9
  br label %if.end13

amdgpu_cs_parser_init.exit.thread115:             ; preds = %kvmalloc_array.exit.i.amdgpu_cs_parser_init.exit.thread115_crit_edge, %if.end.i.amdgpu_cs_parser_init.exit.thread115_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uf_offset.i) #9
  br label %if.then8

amdgpu_cs_parser_init.exit.thread120:             ; preds = %kvmalloc_array.exit294.i.amdgpu_cs_parser_init.exit.thread120_crit_edge, %kvmalloc_array.exit294.thread.i, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.amdgpu_cs_parser_init.exit.thread120_crit_edge, %if.end9.i.amdgpu_cs_parser_init.exit.thread120_crit_edge, %if.end4.i.amdgpu_cs_parser_init.exit.thread120_crit_edge
  %ret.5.i.ph = phi i32 [ -14, %land.rhs16.i.i.i.amdgpu_cs_parser_init.exit.thread120_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %if.then11.i.i.i ], [ -12, %kvmalloc_array.exit294.thread.i ], [ -12, %kvmalloc_array.exit294.i.amdgpu_cs_parser_init.exit.thread120_crit_edge ], [ -125, %if.end9.i.amdgpu_cs_parser_init.exit.thread120_crit_edge ], [ -22, %if.end4.i.amdgpu_cs_parser_init.exit.thread120_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i290.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uf_offset.i) #9
  br label %if.then8

amdgpu_cs_parser_init.exit:                       ; preds = %for.body140.i.amdgpu_cs_parser_init.exit_crit_edge, %free_partial_kdata.i.amdgpu_cs_parser_init.exit_crit_edge
  %119 = ptrtoint ptr %chunks27.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %chunks27.i, align 8
  call void @kvfree(ptr noundef %120) #9
  %121 = ptrtoint ptr %chunks27.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %chunks27.i, align 8
  %122 = ptrtoint ptr %nchunks.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %nchunks.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i290.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uf_offset.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.i)
  %tobool7.not = icmp eq i32 %ret.4.i, 0
  br i1 %tobool7.not, label %amdgpu_cs_parser_init.exit.if.end13_crit_edge, label %amdgpu_cs_parser_init.exit.if.then8_crit_edge

amdgpu_cs_parser_init.exit.if.then8_crit_edge:    ; preds = %amdgpu_cs_parser_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

amdgpu_cs_parser_init.exit.if.end13_crit_edge:    ; preds = %amdgpu_cs_parser_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8:                                         ; preds = %amdgpu_cs_parser_init.exit.if.then8_crit_edge, %amdgpu_cs_parser_init.exit.thread120, %amdgpu_cs_parser_init.exit.thread115
  %retval.0.i118 = phi i32 [ -12, %amdgpu_cs_parser_init.exit.thread115 ], [ %ret.4.i, %amdgpu_cs_parser_init.exit.if.then8_crit_edge ], [ %ret.5.i.ph, %amdgpu_cs_parser_init.exit.thread120 ]
  %call9 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.amdgpu_cs_ioctl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end.i98_crit_edge, label %if.then11

if.then8.if.end.i98_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i98

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %retval.0.i118) #9
  br label %if.end.i98

if.end13:                                         ; preds = %amdgpu_cs_parser_init.exit.if.end13_crit_edge, %amdgpu_cs_parser_init.exit.thread
  %123 = ptrtoint ptr %filp5 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %filp5, align 4
  %driver_priv.i61 = getelementptr inbounds %struct.drm_file, ptr %124, i32 0, i32 19
  %125 = ptrtoint ptr %driver_priv.i61 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %driver_priv.i61, align 4
  %nchunks.i62 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 3
  %127 = ptrtoint ptr %nchunks.i62 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nchunks.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp129.not.i = icmp eq i32 %128, 0
  br i1 %cmp129.not.i, label %if.end13.for.end.i78_crit_edge, label %land.rhs.lr.ph.i

if.end13.for.end.i78_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i78

land.rhs.lr.ph.i:                                 ; preds = %if.end13
  %job.i63 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 5
  %chunks.i64 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 4
  %virt.i = getelementptr i8, ptr %dev, i32 90272
  %ctx.i65 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 2
  %entity36.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 6
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i76.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %ce_preempt.0134.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %ce_preempt.3.i, %for.inc.i76.land.rhs.i_crit_edge ]
  %de_preempt.0132.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %de_preempt.3.i, %for.inc.i76.land.rhs.i_crit_edge ]
  %j.0131.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %j.1.i, %for.inc.i76.land.rhs.i_crit_edge ]
  %i.0130.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc60.i, %for.inc.i76.land.rhs.i_crit_edge ]
  %129 = ptrtoint ptr %job.i63 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %job.i63, align 4
  %num_ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %130, i32 0, i32 9
  %131 = ptrtoint ptr %num_ibs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_ibs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0131.i, i32 %132)
  %cmp2.i = icmp ult i32 %j.0131.i, %132
  br i1 %cmp2.i, label %for.body.i68, label %land.rhs.i.for.end.i78_crit_edge

land.rhs.i.for.end.i78_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i78

for.body.i68:                                     ; preds = %land.rhs.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entity.i) #9
  %133 = ptrtoint ptr %entity.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 -1 to ptr), ptr %entity.i, align 4, !annotation !66
  %134 = ptrtoint ptr %chunks.i64 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %chunks.i64, align 8
  %arrayidx.i66 = getelementptr %struct.amdgpu_cs_chunk, ptr %135, i32 %i.0130.i
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %130, i32 0, i32 4
  %136 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ibs.i, align 4
  %arrayidx4.i = getelementptr %struct.amdgpu_ib, ptr %137, i32 %j.0131.i
  %kdata.i67 = getelementptr %struct.amdgpu_cs_chunk, ptr %135, i32 %i.0130.i, i32 2
  %138 = ptrtoint ptr %kdata.i67 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %kdata.i67, align 4
  %140 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp5.not.i = icmp eq i32 %141, 1
  br i1 %cmp5.not.i, label %if.end.i69, label %for.body.i68.for.inc.i76_crit_edge

for.body.i68.for.inc.i76_crit_edge:               ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i76

if.end.i69:                                       ; preds = %for.body.i68
  %ip_type.i = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, ptr %139, i32 0, i32 4
  %142 = ptrtoint ptr %ip_type.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ip_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp6.i = icmp eq i32 %143, 0
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end.i69.if.end24.i_crit_edge

if.end.i69.if.end24.i_crit_edge:                  ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end.i69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_mcbp to i32))
  %144 = load i32, ptr @amdgpu_mcbp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i70 = icmp eq i32 %144, 0
  br i1 %tobool.not.i70, label %lor.lhs.false.i, label %land.lhs.true.i.if.then8.i_crit_edge

land.lhs.true.i.if.then8.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %145 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %146, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i71 = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i71, label %lor.lhs.false.i.if.end24.i_crit_edge, label %lor.lhs.false.i.if.then8.i_crit_edge

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

lor.lhs.false.i.if.end24.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %land.lhs.true.i.if.then8.i_crit_edge
  %flags.i = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, ptr %139, i32 0, i32 1
  %147 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags.i, align 4
  %and9.i = and i32 %148, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.if.end18.i_crit_edge, label %if.then11.i

if.then8.i.if.end18.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then11.i:                                      ; preds = %if.then8.i
  %and13.i = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i72 = add i32 %ce_preempt.0134.i, 1
  br label %if.end18.i

if.else.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc16.i = add i32 %de_preempt.0132.i, 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then15.i, %if.then8.i.if.end18.i_crit_edge
  %de_preempt.1.i = phi i32 [ %de_preempt.0132.i, %if.then15.i ], [ %inc16.i, %if.else.i ], [ %de_preempt.0132.i, %if.then8.i.if.end18.i_crit_edge ]
  %ce_preempt.1.i = phi i32 [ %inc.i72, %if.then15.i ], [ %ce_preempt.0134.i, %if.else.i ], [ %ce_preempt.0134.i, %if.then8.i.if.end18.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ce_preempt.1.i)
  %cmp19.i = icmp sgt i32 %ce_preempt.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %de_preempt.1.i)
  %cmp21.i = icmp sgt i32 %de_preempt.1.i, 1
  %or.cond.i = select i1 %cmp19.i, i1 true, i1 %cmp21.i
  br i1 %or.cond.i, label %if.end18.i.cleanup.thread.i74_crit_edge, label %if.end18.i.if.end24.i_crit_edge

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.end18.i.cleanup.thread.i74_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i74

if.end24.i:                                       ; preds = %if.end18.i.if.end24.i_crit_edge, %lor.lhs.false.i.if.end24.i_crit_edge, %if.end.i69.if.end24.i_crit_edge
  %de_preempt.2.i = phi i32 [ %de_preempt.0132.i, %lor.lhs.false.i.if.end24.i_crit_edge ], [ %de_preempt.0132.i, %if.end.i69.if.end24.i_crit_edge ], [ %de_preempt.1.i, %if.end18.i.if.end24.i_crit_edge ]
  %ce_preempt.2.i = phi i32 [ %ce_preempt.0134.i, %lor.lhs.false.i.if.end24.i_crit_edge ], [ %ce_preempt.0134.i, %if.end.i69.if.end24.i_crit_edge ], [ %ce_preempt.1.i, %if.end18.i.if.end24.i_crit_edge ]
  %149 = ptrtoint ptr %ctx.i65 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ctx.i65, align 8
  %ip_instance.i = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, ptr %139, i32 0, i32 5
  %151 = ptrtoint ptr %ip_instance.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ip_instance.i, align 8
  %ring26.i = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, ptr %139, i32 0, i32 6
  %153 = ptrtoint ptr %ring26.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ring26.i, align 4
  %call.i = call i32 @amdgpu_ctx_get_entity(ptr noundef %150, i32 noundef %143, i32 noundef %152, i32 noundef %154, ptr noundef nonnull %entity.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end24.i.cleanup.thread.i74_crit_edge

if.end24.i.cleanup.thread.i74_crit_edge:          ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i74

if.end29.i:                                       ; preds = %if.end24.i
  %flags30.i = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, ptr %139, i32 0, i32 1
  %155 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags30.i, align 4
  %and31.i = and i32 %156, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end29.i.if.end35.i_crit_edge, label %if.then33.i

if.end29.i.if.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %job.i63 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %job.i63, align 4
  %preamble_status.i = getelementptr inbounds %struct.amdgpu_job, ptr %158, i32 0, i32 7
  %159 = ptrtoint ptr %preamble_status.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %preamble_status.i, align 4
  %or.i = or i32 %160, 1
  store i32 %or.i, ptr %preamble_status.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.end29.i.if.end35.i_crit_edge
  %161 = ptrtoint ptr %entity36.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %entity36.i, align 8
  %tobool37.not.i = icmp eq ptr %162, null
  br i1 %tobool37.not.i, label %if.end35.i.if.end42.i_crit_edge, label %land.lhs.true38.i

if.end35.i.if.end42.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.lhs.true38.i:                                ; preds = %if.end35.i
  %163 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %entity.i, align 4
  %cmp40.not.i = icmp eq ptr %162, %164
  br i1 %cmp40.not.i, label %land.lhs.true38.i.if.end42.i_crit_edge, label %land.lhs.true38.i.cleanup.thread.i74_crit_edge

land.lhs.true38.i.cleanup.thread.i74_crit_edge:   ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i74

land.lhs.true38.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.end42.i:                                       ; preds = %land.lhs.true38.i.if.end42.i_crit_edge, %if.end35.i.if.end42.i_crit_edge
  %165 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %entity.i, align 4
  %rq.i = getelementptr inbounds %struct.drm_sched_entity, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rq.i, align 8
  %cmp43.i = icmp eq ptr %168, null
  br i1 %cmp43.i, label %if.end42.i.cleanup.thread.i74_crit_edge, label %if.end45.i73

if.end42.i.cleanup.thread.i74_crit_edge:          ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i74

if.end45.i73:                                     ; preds = %if.end42.i
  %169 = ptrtoint ptr %entity36.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %166, ptr %entity36.i, align 8
  %170 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rq.i, align 8
  %sched.i = getelementptr inbounds %struct.drm_sched_rq, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %sched.i, align 4
  %funcs.i = getelementptr i8, ptr %173, i32 -140
  %174 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %funcs.i, align 4
  %parse_cs.i = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %175, i32 0, i32 10
  %176 = ptrtoint ptr %parse_cs.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %parse_cs.i, align 4
  %tobool48.not.i = icmp eq ptr %177, null
  br i1 %tobool48.not.i, label %if.end45.i73.cond.end.i_crit_edge, label %cond.true.i

if.end45.i73.cond.end.i_crit_edge:                ; preds = %if.end45.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end45.i73
  call void @__sanitizer_cov_trace_pc() #11
  %ib_bytes.i = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, ptr %139, i32 0, i32 3
  %178 = ptrtoint ptr %ib_bytes.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ib_bytes.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end45.i73.cond.end.i_crit_edge
  %cond.i = phi i32 [ %179, %cond.true.i ], [ 0, %if.end45.i73.cond.end.i_crit_edge ]
  %call49.i = call i32 @amdgpu_ib_get(ptr noundef %add.ptr.i, ptr noundef %126, i32 noundef %cond.i, i32 noundef 0, ptr noundef %arrayidx4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.then51.i

if.then51.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %cleanup.thread.i74

if.end52.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %va_start.i = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, ptr %139, i32 0, i32 2
  %180 = ptrtoint ptr %va_start.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %va_start.i, align 8
  %gpu_addr.i = getelementptr %struct.amdgpu_ib, ptr %137, i32 %j.0131.i, i32 2
  %182 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %181, ptr %gpu_addr.i, align 8
  %ib_bytes53.i = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, ptr %139, i32 0, i32 3
  %183 = ptrtoint ptr %ib_bytes53.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ib_bytes53.i, align 8
  %div123.i = lshr i32 %184, 2
  %length_dw.i = getelementptr %struct.amdgpu_ib, ptr %137, i32 %j.0131.i, i32 1
  %185 = ptrtoint ptr %length_dw.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %div123.i, ptr %length_dw.i, align 4
  %186 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flags30.i, align 4
  %flags55.i = getelementptr %struct.amdgpu_ib, ptr %137, i32 %j.0131.i, i32 4
  %188 = ptrtoint ptr %flags55.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %flags55.i, align 4
  %inc56.i = add nuw i32 %j.0131.i, 1
  br label %for.inc.i76

cleanup.thread.i74:                               ; preds = %if.then51.i, %if.end42.i.cleanup.thread.i74_crit_edge, %land.lhs.true38.i.cleanup.thread.i74_crit_edge, %if.end24.i.cleanup.thread.i74_crit_edge, %if.end18.i.cleanup.thread.i74_crit_edge
  %retval.1.ph.i = phi i32 [ %call49.i, %if.then51.i ], [ -22, %if.end42.i.cleanup.thread.i74_crit_edge ], [ -22, %land.lhs.true38.i.cleanup.thread.i74_crit_edge ], [ %call.i, %if.end24.i.cleanup.thread.i74_crit_edge ], [ -22, %if.end18.i.cleanup.thread.i74_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entity.i) #9
  br label %if.end.i98

for.inc.i76:                                      ; preds = %if.end52.i, %for.body.i68.for.inc.i76_crit_edge
  %j.1.i = phi i32 [ %inc56.i, %if.end52.i ], [ %j.0131.i, %for.body.i68.for.inc.i76_crit_edge ]
  %de_preempt.3.i = phi i32 [ %de_preempt.2.i, %if.end52.i ], [ %de_preempt.0132.i, %for.body.i68.for.inc.i76_crit_edge ]
  %ce_preempt.3.i = phi i32 [ %ce_preempt.2.i, %if.end52.i ], [ %ce_preempt.0134.i, %for.body.i68.for.inc.i76_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entity.i) #9
  %inc60.i = add nuw i32 %i.0130.i, 1
  %189 = ptrtoint ptr %nchunks.i62 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %nchunks.i62, align 4
  %cmp.i75 = icmp ult i32 %inc60.i, %190
  br i1 %cmp.i75, label %for.inc.i76.land.rhs.i_crit_edge, label %for.inc.i76.for.end.i78_crit_edge

for.inc.i76.for.end.i78_crit_edge:                ; preds = %for.inc.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i78

for.inc.i76.land.rhs.i_crit_edge:                 ; preds = %for.inc.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.end.i78:                                      ; preds = %for.inc.i76.for.end.i78_crit_edge, %land.rhs.i.for.end.i78_crit_edge, %if.end13.for.end.i78_crit_edge
  %entity62.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 6
  %job67.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 5
  %191 = ptrtoint ptr %job67.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %job67.i, align 4
  %uf_addr.i77 = getelementptr inbounds %struct.amdgpu_job, ptr %192, i32 0, i32 21
  %193 = ptrtoint ptr %uf_addr.i77 to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %uf_addr.i77, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %194)
  %tobool68.not.i = icmp eq i64 %194, 0
  br i1 %tobool68.not.i, label %for.end.i78.amdgpu_cs_ib_fill.exit_crit_edge, label %land.lhs.true69.i

for.end.i78.amdgpu_cs_ib_fill.exit_crit_edge:     ; preds = %for.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_ib_fill.exit

land.lhs.true69.i:                                ; preds = %for.end.i78
  %195 = ptrtoint ptr %entity62.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %entity62.i, align 8
  %rq63.i = getelementptr inbounds %struct.drm_sched_entity, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %rq63.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rq63.i, align 8
  %sched64.i = getelementptr inbounds %struct.drm_sched_rq, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %sched64.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %sched64.i, align 4
  %funcs70.i = getelementptr i8, ptr %200, i32 -140
  %201 = ptrtoint ptr %funcs70.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %funcs70.i, align 4
  %no_user_fence.i = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %no_user_fence.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %no_user_fence.i, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool71.not.i = icmp eq i8 %204, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.amdgpu_cs_ib_fill.exit_crit_edge, label %land.lhs.true69.i.if.end.i98_crit_edge

land.lhs.true69.i.if.end.i98_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i98

land.lhs.true69.i.amdgpu_cs_ib_fill.exit_crit_edge: ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_ib_fill.exit

amdgpu_cs_ib_fill.exit:                           ; preds = %land.lhs.true69.i.amdgpu_cs_ib_fill.exit_crit_edge, %for.end.i78.amdgpu_cs_ib_fill.exit_crit_edge
  %ctx74.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 2
  %205 = ptrtoint ptr %ctx74.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ctx74.i, align 8
  %207 = ptrtoint ptr %entity62.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %entity62.i, align 8
  %call76.i = call i32 @amdgpu_ctx_wait_prev_fence(ptr noundef %206, ptr noundef %208) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool15.not = icmp eq i32 %call76.i, 0
  br i1 %tobool15.not, label %if.end17, label %amdgpu_cs_ib_fill.exit.if.end.i98_crit_edge

amdgpu_cs_ib_fill.exit.if.end.i98_crit_edge:      ; preds = %amdgpu_cs_ib_fill.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i98

if.end17:                                         ; preds = %amdgpu_cs_ib_fill.exit
  %209 = ptrtoint ptr %nchunks.i62 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %nchunks.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp118.not.i = icmp eq i32 %210, 0
  br i1 %cmp118.not.i, label %if.end17.if.end21_crit_edge, label %for.body.lr.ph.i81

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

for.body.lr.ph.i81:                               ; preds = %if.end17
  %chunks.i80 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 4
  %post_deps.i35.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 19
  %num_post_deps65.i.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 18
  br label %for.body.i83

for.body.i83:                                     ; preds = %for.inc.i92.for.body.i83_crit_edge, %for.body.lr.ph.i81
  %i.0119.i = phi i32 [ 0, %for.body.lr.ph.i81 ], [ %inc.i90, %for.inc.i92.for.body.i83_crit_edge ]
  %211 = ptrtoint ptr %chunks.i80 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %chunks.i80, align 8
  %arrayidx.i82 = getelementptr %struct.amdgpu_cs_chunk, ptr %212, i32 %i.0119.i
  %213 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i82, align 4
  %215 = zext i32 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %214, label %for.body.i83.for.inc.i92_crit_edge [
    i32 3, label %for.body.i83.sw.bb.i84_crit_edge
    i32 7, label %for.body.i83.sw.bb.i84_crit_edge347
    i32 4, label %sw.bb1.i
    i32 5, label %sw.bb6.i
    i32 8, label %sw.bb11.i
    i32 9, label %sw.bb16.i
  ]

for.body.i83.sw.bb.i84_crit_edge347:              ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i84

for.body.i83.sw.bb.i84_crit_edge:                 ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i84

for.body.i83.for.inc.i92_crit_edge:               ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

sw.bb.i84:                                        ; preds = %for.body.i83.sw.bb.i84_crit_edge, %for.body.i83.sw.bb.i84_crit_edge347
  %216 = ptrtoint ptr %filp5 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %filp5, align 4
  %driver_priv.i.i = getelementptr inbounds %struct.drm_file, ptr %217, i32 0, i32 19
  %218 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %driver_priv.i.i, align 4
  %kdata.i.i = getelementptr %struct.amdgpu_cs_chunk, ptr %212, i32 %i.0119.i, i32 2
  %220 = ptrtoint ptr %kdata.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %kdata.i.i, align 4
  %length_dw.i.i = getelementptr %struct.amdgpu_cs_chunk, ptr %212, i32 %i.0119.i, i32 1
  %222 = ptrtoint ptr %length_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %length_dw.i.i, align 4
  %mul.i.i = shl i32 %223, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %mul.i.i)
  %224 = icmp ult i32 %mul.i.i, 24
  br i1 %224, label %sw.bb.i84.for.inc.i92_crit_edge, label %for.body.lr.ph.i.i

sw.bb.i84.for.inc.i92_crit_edge:                  ; preds = %sw.bb.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

for.body.lr.ph.i.i:                               ; preds = %sw.bb.i84
  %div.i.i = udiv i32 %mul.i.i, 24
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.083.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entity.i.i) #9
  %225 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr inttoptr (i32 -1 to ptr), ptr %entity.i.i, align 4, !annotation !66
  %ctx_id.i.i = getelementptr %struct.drm_amdgpu_cs_chunk_dep, ptr %221, i32 %i.083.i.i, i32 3
  %226 = ptrtoint ptr %ctx_id.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %ctx_id.i.i, align 4
  %call.i.i = call ptr @amdgpu_ctx_get(ptr noundef %219, i32 noundef %227) #9
  %cmp1.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp1.i.i, label %for.body.i.i.amdgpu_cs_process_fence_dep.exit.thread86.i_crit_edge, label %if.end.i.i

for.body.i.i.amdgpu_cs_process_fence_dep.exit.thread86.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_process_fence_dep.exit.thread86.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.drm_amdgpu_cs_chunk_dep, ptr %221, i32 %i.083.i.i
  %228 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx.i.i, align 8
  %ip_instance.i.i = getelementptr %struct.drm_amdgpu_cs_chunk_dep, ptr %221, i32 %i.083.i.i, i32 1
  %230 = ptrtoint ptr %ip_instance.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %ip_instance.i.i, align 4
  %ring.i.i = getelementptr %struct.drm_amdgpu_cs_chunk_dep, ptr %221, i32 %i.083.i.i, i32 2
  %232 = ptrtoint ptr %ring.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %ring.i.i, align 8
  %call5.i.i = call i32 @amdgpu_ctx_get_entity(ptr noundef nonnull %call.i.i, i32 noundef %229, i32 noundef %231, i32 noundef %233, ptr noundef nonnull %entity.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end8.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i.i = call i32 @amdgpu_ctx_put(ptr noundef nonnull %call.i.i) #9
  br label %amdgpu_cs_process_fence_dep.exit.thread86.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %234 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %entity.i.i, align 4
  %handle.i.i = getelementptr %struct.drm_amdgpu_cs_chunk_dep, ptr %221, i32 %i.083.i.i, i32 4
  %236 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %handle.i.i, align 8
  %call10.i.i = call ptr @amdgpu_ctx_get_fence(ptr noundef nonnull %call.i.i, ptr noundef %235, i64 noundef %237) #9
  %call11.i.i = call i32 @amdgpu_ctx_put(ptr noundef nonnull %call.i.i) #9
  %cmp.i.i.i85 = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i85, label %amdgpu_cs_dependencies.exit, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  %tobool15.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool15.not.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %if.end18.i.i

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end18.i.i:                                     ; preds = %if.else.i.i
  %238 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %239)
  %cmp19.i.i = icmp eq i32 %239, 7
  br i1 %cmp19.i.i, label %if.then20.i.i, label %if.end18.i.i.if.end23.i.i_crit_edge

if.end18.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

if.then20.i.i:                                    ; preds = %if.end18.i.i
  %call21.i.i = call ptr @to_drm_sched_fence(ptr noundef nonnull %call10.i.i) #9
  %tobool.not.i.i.i = icmp eq ptr %call21.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then20.i.i.if.then.i64.i.i_crit_edge, label %if.then.i.i.i86

if.then20.i.i.if.then.i64.i.i_crit_edge:          ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i64.i.i

if.then.i.i.i86:                                  ; preds = %if.then20.i.i
  %refcount.i.i.i = getelementptr inbounds %struct.dma_fence, ptr %call21.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #9
  %240 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %240, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i.i86.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !60

if.then.i.i.i86.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i86
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %241 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %241)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %241, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.if.then.i64.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.if.then.i64.i.i_crit_edge:  ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i64.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.i86.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i86.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #9
  br label %if.then.i64.i.i

if.then.i64.i.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.if.then.i64.i.i_crit_edge, %if.then20.i.i.if.then.i64.i.i_crit_edge
  %refcount.i62.i.i = getelementptr inbounds %struct.dma_fence, ptr %call10.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i63.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i62.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @llvm.prefetch.p0(ptr %refcount.i62.i.i, i32 1, i32 3, i32 1) #9
  %242 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i62.i.i, ptr %refcount.i62.i.i, i32 1, ptr elementtype(i32) %refcount.i62.i.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %242, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i87, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i64.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i65.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i65.i.i, label %if.end5.i.i.i.i.i.i.i.if.end23.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.i.if.end23.i.i_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i62.i.i, i32 noundef 3) #9
  br label %if.end23.i.i

if.then.i.i.i.i87:                                ; preds = %if.then.i64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @dma_fence_release(ptr noundef %refcount.i62.i.i) #9, !callees !71
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then.i.i.i.i87, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.if.end23.i.i_crit_edge, %if.end18.i.i.if.end23.i.i_crit_edge
  %fence.0.i.i = phi ptr [ %call10.i.i, %if.end18.i.i.if.end23.i.i_crit_edge ], [ %call21.i.i, %if.end5.i.i.i.i.i.i.i.if.end23.i.i_crit_edge ], [ %call21.i.i, %if.then10.i.i.i.i.i.i.i ], [ %call21.i.i, %if.then.i.i.i.i87 ]
  %243 = ptrtoint ptr %job67.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %job67.i, align 4
  %sync.i.i = getelementptr inbounds %struct.amdgpu_job, ptr %244, i32 0, i32 2
  %call24.i.i = call i32 @amdgpu_sync_fence(ptr noundef %sync.i.i, ptr noundef %fence.0.i.i) #9
  %tobool.not.i66.i.i = icmp eq ptr %fence.0.i.i, null
  br i1 %tobool.not.i66.i.i, label %if.end23.i.i.dma_fence_put.exit76.i.i_crit_edge, label %if.then.i71.i.i

if.end23.i.i.dma_fence_put.exit76.i.i_crit_edge:  ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit76.i.i

if.then.i71.i.i:                                  ; preds = %if.end23.i.i
  %refcount.i67.i.i = getelementptr inbounds %struct.dma_fence, ptr %fence.0.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i68.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i67.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @llvm.prefetch.p0(ptr %refcount.i67.i.i, i32 1, i32 3, i32 1) #9
  %245 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i67.i.i, ptr %refcount.i67.i.i, i32 1, ptr elementtype(i32) %refcount.i67.i.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i69.i.i = extractvalue { i32, i32, i32 } %245, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i69.i.i)
  %cmp.i.i.i.i.i70.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i69.i.i, 1
  br i1 %cmp.i.i.i.i.i70.i.i, label %if.then.i.i75.i.i, label %if.end5.i.i.i.i.i73.i.i

if.end5.i.i.i.i.i73.i.i:                          ; preds = %if.then.i71.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i69.i.i)
  %.not.i.i.i.i.i72.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i69.i.i, 0
  br i1 %.not.i.i.i.i.i72.i.i, label %if.end5.i.i.i.i.i73.i.i.dma_fence_put.exit76.i.i_crit_edge, label %if.then10.i.i.i.i.i74.i.i, !prof !61

if.end5.i.i.i.i.i73.i.i.dma_fence_put.exit76.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i73.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit76.i.i

if.then10.i.i.i.i.i74.i.i:                        ; preds = %if.end5.i.i.i.i.i73.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i67.i.i, i32 noundef 3) #9
  br label %dma_fence_put.exit76.i.i

if.then.i.i75.i.i:                                ; preds = %if.then.i71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @dma_fence_release(ptr noundef %refcount.i67.i.i) #9, !callees !71
  br label %dma_fence_put.exit76.i.i

dma_fence_put.exit76.i.i:                         ; preds = %if.then.i.i75.i.i, %if.then10.i.i.i.i.i74.i.i, %if.end5.i.i.i.i.i73.i.i.dma_fence_put.exit76.i.i_crit_edge, %if.end23.i.i.dma_fence_put.exit76.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %dma_fence_put.exit76.i.i.for.inc.i.i_crit_edge, label %dma_fence_put.exit76.i.i.amdgpu_cs_process_fence_dep.exit.thread86.i_crit_edge

dma_fence_put.exit76.i.i.amdgpu_cs_process_fence_dep.exit.thread86.i_crit_edge: ; preds = %dma_fence_put.exit76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_process_fence_dep.exit.thread86.i

dma_fence_put.exit76.i.i.for.inc.i.i_crit_edge:   ; preds = %dma_fence_put.exit76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %dma_fence_put.exit76.i.i.for.inc.i.i_crit_edge, %if.else.i.i.for.inc.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entity.i.i) #9
  %inc.i.i = add nuw nsw i32 %i.083.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc.i92_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.for.inc.i92_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

amdgpu_cs_process_fence_dep.exit.thread86.i:      ; preds = %dma_fence_put.exit76.i.i.amdgpu_cs_process_fence_dep.exit.thread86.i_crit_edge, %if.then6.i.i, %for.body.i.i.amdgpu_cs_process_fence_dep.exit.thread86.i_crit_edge
  %retval.1.ph.i.ph.i = phi i32 [ %call5.i.i, %if.then6.i.i ], [ %call24.i.i, %dma_fence_put.exit76.i.i.amdgpu_cs_process_fence_dep.exit.thread86.i_crit_edge ], [ -22, %for.body.i.i.amdgpu_cs_process_fence_dep.exit.thread86.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entity.i.i) #9
  br label %if.then20

sw.bb1.i:                                         ; preds = %for.body.i83
  %kdata.i1.i = getelementptr %struct.amdgpu_cs_chunk, ptr %212, i32 %i.0119.i, i32 2
  %246 = ptrtoint ptr %kdata.i1.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %kdata.i1.i, align 4
  %length_dw.i2.i = getelementptr %struct.amdgpu_cs_chunk, ptr %212, i32 %i.0119.i, i32 1
  %248 = ptrtoint ptr %length_dw.i2.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %length_dw.i2.i, align 4
  %mul.i3.i = and i32 %249, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i3.i)
  %cmp9.not.i.i = icmp eq i32 %mul.i3.i, 0
  br i1 %cmp9.not.i.i, label %sw.bb1.i.for.inc.i92_crit_edge, label %sw.bb1.i.for.body.i9.i_crit_edge

sw.bb1.i.for.body.i9.i_crit_edge:                 ; preds = %sw.bb1.i
  br label %for.body.i9.i

sw.bb1.i.for.inc.i92_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

for.cond.i.i:                                     ; preds = %for.body.i9.i
  %inc.i4.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i5.i = icmp eq i32 %inc.i4.i, %mul.i3.i
  br i1 %exitcond.not.i5.i, label %for.cond.i.i.for.inc.i92_crit_edge, label %for.cond.i.i.for.body.i9.i_crit_edge

for.cond.i.i.for.body.i9.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i9.i

for.cond.i.i.for.inc.i92_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

for.body.i9.i:                                    ; preds = %for.cond.i.i.for.body.i9.i_crit_edge, %sw.bb1.i.for.body.i9.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i4.i, %for.cond.i.i.for.body.i9.i_crit_edge ], [ 0, %sw.bb1.i.for.body.i9.i_crit_edge ]
  %arrayidx.i6.i = getelementptr %struct.drm_amdgpu_cs_chunk_sem, ptr %247, i32 %i.010.i.i
  %250 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx.i6.i, align 4
  %call.i7.i = call fastcc i32 @amdgpu_syncobj_lookup_and_add_to_sync(ptr noundef nonnull %parser, i32 noundef %251, i64 noundef 0, i64 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool.not.i8.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool.not.i8.i, label %for.cond.i.i, label %for.body.i9.i.if.then20_crit_edge

for.body.i9.i.if.then20_crit_edge:                ; preds = %for.body.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

sw.bb6.i:                                         ; preds = %for.body.i83
  %kdata.i10.i = getelementptr %struct.amdgpu_cs_chunk, ptr %212, i32 %i.0119.i, i32 2
  %252 = ptrtoint ptr %kdata.i10.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %kdata.i10.i, align 4
  %length_dw.i11.i = getelementptr %struct.amdgpu_cs_chunk, ptr %212, i32 %i.0119.i, i32 1
  %254 = ptrtoint ptr %length_dw.i11.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %length_dw.i11.i, align 4
  %mul.i12.i = and i32 %255, 1073741823
  %256 = ptrtoint ptr %post_deps.i35.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %post_deps.i35.i, align 8
  %tobool.not.i13.i = icmp eq ptr %257, null
  br i1 %tobool.not.i13.i, label %if.end.i14.i, label %sw.bb6.i.if.then20_crit_edge

sw.bb6.i.if.then20_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end.i14.i:                                     ; preds = %sw.bb6.i
  %258 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i12.i, i32 16) #9
  %259 = extractvalue { i32, i1 } %258, 1
  br i1 %259, label %kmalloc_array.exit.thread.i.i, label %if.end7.i.i.i, !prof !60

kmalloc_array.exit.thread.i.i:                    ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  %260 = ptrtoint ptr %post_deps.i35.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %post_deps.i35.i, align 8
  %261 = ptrtoint ptr %num_post_deps65.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 0, ptr %num_post_deps65.i.i, align 4
  br label %if.then20

if.end7.i.i.i:                                    ; preds = %if.end.i14.i
  %262 = extractvalue { i32, i1 } %258, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %262, i32 noundef 3264) #12
  %263 = ptrtoint ptr %post_deps.i35.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call8.i.i.i, ptr %post_deps.i35.i, align 8
  %264 = ptrtoint ptr %num_post_deps65.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %num_post_deps65.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end7.i.i.i.if.then20_crit_edge, label %for.cond.preheader.i.i

if.end7.i.i.i.if.then20_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i12.i)
  %cmp44.not.i.i = icmp eq i32 %mul.i12.i, 0
  br i1 %cmp44.not.i.i, label %for.cond.preheader.i.i.for.inc.i92_crit_edge, label %for.cond.preheader.i.i.for.body.i18.i_crit_edge

for.cond.preheader.i.i.for.body.i18.i_crit_edge:  ; preds = %for.cond.preheader.i.i
  br label %for.body.i18.i

for.cond.preheader.i.i.for.inc.i92_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

for.body.i18.i:                                   ; preds = %if.end14.i.i.for.body.i18.i_crit_edge, %for.cond.preheader.i.i.for.body.i18.i_crit_edge
  %i.045.i.i = phi i32 [ %inc20.i.i, %if.end14.i.i.for.body.i18.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i18.i_crit_edge ]
  %265 = ptrtoint ptr %filp5 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %filp5, align 4
  %arrayidx.i17.i = getelementptr %struct.drm_amdgpu_cs_chunk_sem, ptr %253, i32 %i.045.i.i
  %267 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx.i17.i, align 4
  %call6.i.i = call ptr @drm_syncobj_find(ptr noundef %266, i32 noundef %268) #9
  %269 = ptrtoint ptr %post_deps.i35.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %post_deps.i35.i, align 8
  %arrayidx8.i.i = getelementptr %struct.amdgpu_cs_post_dep, ptr %270, i32 %i.045.i.i
  %271 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %call6.i.i, ptr %arrayidx8.i.i, align 8
  %272 = load ptr, ptr %post_deps.i35.i, align 8
  %arrayidx10.i.i = getelementptr %struct.amdgpu_cs_post_dep, ptr %272, i32 %i.045.i.i
  %273 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %arrayidx10.i.i, align 8
  %tobool12.not.i.i = icmp eq ptr %274, null
  br i1 %tobool12.not.i.i, label %for.body.i18.i.if.then20_crit_edge, label %if.end14.i.i

for.body.i18.i.if.then20_crit_edge:               ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end14.i.i:                                     ; preds = %for.body.i18.i
  %chain.i.i = getelementptr %struct.amdgpu_cs_post_dep, ptr %272, i32 %i.045.i.i, i32 1
  %275 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr null, ptr %chain.i.i, align 4
  %276 = ptrtoint ptr %post_deps.i35.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %post_deps.i35.i, align 8
  %point.i.i = getelementptr %struct.amdgpu_cs_post_dep, ptr %277, i32 %i.045.i.i, i32 2
  %278 = ptrtoint ptr %point.i.i to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 0, ptr %point.i.i, align 8
  %279 = ptrtoint ptr %num_post_deps65.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %num_post_deps65.i.i, align 4
  %inc.i19.i = add i32 %280, 1
  store i32 %inc.i19.i, ptr %num_post_deps65.i.i, align 4
  %inc20.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i20.i = icmp eq i32 %inc20.i.i, %mul.i12.i
  br i1 %exitcond.not.i20.i, label %if.end14.i.i.for.inc.i92_crit_edge, label %if.end14.i.i.for.body.i18.i_crit_edge

if.end14.i.i.for.body.i18.i_crit_edge:            ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i18.i

if.end14.i.i.for.inc.i92_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

sw.bb11.i:                                        ; preds = %for.body.i83
  %kdata.i22.i = getelementptr %struct.amdgpu_cs_chunk, ptr %212, i32 %i.0119.i, i32 2
  %281 = ptrtoint ptr %kdata.i22.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %kdata.i22.i, align 4
  %length_dw.i23.i = getelementptr %struct.amdgpu_cs_chunk, ptr %212, i32 %i.0119.i, i32 1
  %283 = ptrtoint ptr %length_dw.i23.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %length_dw.i23.i, align 4
  %285 = lshr i32 %284, 2
  %div14.i.i = and i32 %285, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div14.i.i)
  %cmp15.not.i.i = icmp eq i32 %div14.i.i, 0
  br i1 %cmp15.not.i.i, label %sw.bb11.i.for.inc.i92_crit_edge, label %sw.bb11.i.for.body.i31.i_crit_edge

sw.bb11.i.for.body.i31.i_crit_edge:               ; preds = %sw.bb11.i
  br label %for.body.i31.i

sw.bb11.i.for.inc.i92_crit_edge:                  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

for.cond.i26.i:                                   ; preds = %for.body.i31.i
  %inc.i24.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i25.i = icmp eq i32 %inc.i24.i, %div14.i.i
  br i1 %exitcond.not.i25.i, label %for.cond.i26.i.for.inc.i92_crit_edge, label %for.cond.i26.i.for.body.i31.i_crit_edge

for.cond.i26.i.for.body.i31.i_crit_edge:          ; preds = %for.cond.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i31.i

for.cond.i26.i.for.inc.i92_crit_edge:             ; preds = %for.cond.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

for.body.i31.i:                                   ; preds = %for.cond.i26.i.for.body.i31.i_crit_edge, %sw.bb11.i.for.body.i31.i_crit_edge
  %i.016.i.i = phi i32 [ %inc.i24.i, %for.cond.i26.i.for.body.i31.i_crit_edge ], [ 0, %sw.bb11.i.for.body.i31.i_crit_edge ]
  %arrayidx.i27.i = getelementptr %struct.drm_amdgpu_cs_chunk_syncobj, ptr %282, i32 %i.016.i.i
  %286 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx.i27.i, align 8
  %point.i28.i = getelementptr %struct.drm_amdgpu_cs_chunk_syncobj, ptr %282, i32 %i.016.i.i, i32 2
  %288 = ptrtoint ptr %point.i28.i to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %point.i28.i, align 8
  %flags.i.i = getelementptr %struct.drm_amdgpu_cs_chunk_syncobj, ptr %282, i32 %i.016.i.i, i32 1
  %290 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %flags.i.i, align 4
  %conv.i.i = zext i32 %291 to i64
  %call.i29.i = call fastcc i32 @amdgpu_syncobj_lookup_and_add_to_sync(ptr noundef nonnull %parser, i32 noundef %287, i64 noundef %289, i64 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool.not.i30.i, label %for.cond.i26.i, label %for.body.i31.i.if.then20_crit_edge

for.body.i31.i.if.then20_crit_edge:               ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

sw.bb16.i:                                        ; preds = %for.body.i83
  %kdata.i33.i = getelementptr %struct.amdgpu_cs_chunk, ptr %212, i32 %i.0119.i, i32 2
  %292 = ptrtoint ptr %kdata.i33.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %kdata.i33.i, align 4
  %length_dw.i34.i = getelementptr %struct.amdgpu_cs_chunk, ptr %212, i32 %i.0119.i, i32 1
  %294 = ptrtoint ptr %length_dw.i34.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %length_dw.i34.i, align 4
  %296 = lshr i32 %295, 2
  %div53.i.i = and i32 %296, 268435455
  %297 = ptrtoint ptr %post_deps.i35.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %post_deps.i35.i, align 8
  %tobool.not.i36.i = icmp eq ptr %298, null
  br i1 %tobool.not.i36.i, label %if.end7.i.i67.i, label %sw.bb16.i.if.then20_crit_edge

sw.bb16.i.if.then20_crit_edge:                    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end7.i.i67.i:                                  ; preds = %sw.bb16.i
  %299 = shl nuw i32 %div53.i.i, 4
  %call8.i.i66.i = call noalias align 128 ptr @__kmalloc(i32 noundef %299, i32 noundef 3264) #12
  %300 = ptrtoint ptr %post_deps.i35.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %call8.i.i66.i, ptr %post_deps.i35.i, align 8
  %301 = ptrtoint ptr %num_post_deps65.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 0, ptr %num_post_deps65.i.i, align 4
  %tobool3.not.i70.i = icmp eq ptr %call8.i.i66.i, null
  br i1 %tobool3.not.i70.i, label %if.end7.i.i67.i.if.then20_crit_edge, label %for.cond.preheader.i72.i

if.end7.i.i67.i.if.then20_crit_edge:              ; preds = %if.end7.i.i67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

for.cond.preheader.i72.i:                         ; preds = %if.end7.i.i67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div53.i.i)
  %cmp60.not.i.i = icmp eq i32 %div53.i.i, 0
  br i1 %cmp60.not.i.i, label %for.cond.preheader.i72.i.for.inc.i92_crit_edge, label %for.cond.preheader.i72.i.for.body.i78.i_crit_edge

for.cond.preheader.i72.i.for.body.i78.i_crit_edge: ; preds = %for.cond.preheader.i72.i
  br label %for.body.i78.i

for.cond.preheader.i72.i.for.inc.i92_crit_edge:   ; preds = %for.cond.preheader.i72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

for.body.i78.i:                                   ; preds = %for.inc.i81.i.for.body.i78.i_crit_edge, %for.cond.preheader.i72.i.for.body.i78.i_crit_edge
  %i.061.i.i = phi i32 [ %inc28.i.i, %for.inc.i81.i.for.body.i78.i_crit_edge ], [ 0, %for.cond.preheader.i72.i.for.body.i78.i_crit_edge ]
  %302 = ptrtoint ptr %post_deps.i35.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %post_deps.i35.i, align 8
  %arrayidx.i75.i = getelementptr %struct.amdgpu_cs_post_dep, ptr %303, i32 %i.061.i.i
  %chain.i76.i = getelementptr %struct.amdgpu_cs_post_dep, ptr %303, i32 %i.061.i.i, i32 1
  %304 = ptrtoint ptr %chain.i76.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr null, ptr %chain.i76.i, align 4
  %arrayidx7.i.i = getelementptr %struct.drm_amdgpu_cs_chunk_syncobj, ptr %293, i32 %i.061.i.i
  %point.i77.i = getelementptr %struct.drm_amdgpu_cs_chunk_syncobj, ptr %293, i32 %i.061.i.i, i32 2
  %305 = ptrtoint ptr %point.i77.i to i32
  call void @__asan_load8_noabort(i32 %305)
  %306 = load i64, ptr %point.i77.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %306)
  %tobool8.not.i.i = icmp eq i64 %306, 0
  br i1 %tobool8.not.i.i, label %for.body.i78.i.if.end16.i.i_crit_edge, label %if.then9.i.i

for.body.i78.i.if.end16.i.i_crit_edge:            ; preds = %for.body.i78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.then9.i.i:                                     ; preds = %for.body.i78.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %307 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i54.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %307, i32 noundef 3264, i32 noundef 128) #14
  %308 = ptrtoint ptr %chain.i76.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %call7.i.i54.i.i, ptr %chain.i76.i, align 4
  %tobool13.not.i.i = icmp eq ptr %call7.i.i54.i.i, null
  br i1 %tobool13.not.i.i, label %if.then9.i.i.if.then20_crit_edge, label %if.then9.i.i.if.end16.i.i_crit_edge

if.then9.i.i.if.end16.i.i_crit_edge:              ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.then9.i.i.if.then20_crit_edge:                 ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end16.i.i:                                     ; preds = %if.then9.i.i.if.end16.i.i_crit_edge, %for.body.i78.i.if.end16.i.i_crit_edge
  %309 = ptrtoint ptr %filp5 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %filp5, align 4
  %311 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx7.i.i, align 8
  %call18.i.i = call ptr @drm_syncobj_find(ptr noundef %310, i32 noundef %312) #9
  %313 = ptrtoint ptr %arrayidx.i75.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %call18.i.i, ptr %arrayidx.i75.i, align 8
  %tobool20.not.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %for.inc.i81.i

if.then21.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %314 = ptrtoint ptr %chain.i76.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %chain.i76.i, align 4
  call void @kfree(ptr noundef %315) #9
  br label %if.then20

for.inc.i81.i:                                    ; preds = %if.end16.i.i
  %316 = ptrtoint ptr %point.i77.i to i32
  call void @__asan_load8_noabort(i32 %316)
  %317 = load i64, ptr %point.i77.i, align 8
  %point26.i.i = getelementptr %struct.amdgpu_cs_post_dep, ptr %303, i32 %i.061.i.i, i32 2
  %318 = ptrtoint ptr %point26.i.i to i32
  call void @__asan_store8_noabort(i32 %318)
  store i64 %317, ptr %point26.i.i, align 8
  %319 = ptrtoint ptr %num_post_deps65.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %num_post_deps65.i.i, align 4
  %inc.i79.i = add i32 %320, 1
  store i32 %inc.i79.i, ptr %num_post_deps65.i.i, align 4
  %inc28.i.i = add nuw nsw i32 %i.061.i.i, 1
  %exitcond.not.i80.i = icmp eq i32 %inc28.i.i, %div53.i.i
  br i1 %exitcond.not.i80.i, label %for.inc.i81.i.for.inc.i92_crit_edge, label %for.inc.i81.i.for.body.i78.i_crit_edge

for.inc.i81.i.for.body.i78.i_crit_edge:           ; preds = %for.inc.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i78.i

for.inc.i81.i.for.inc.i92_crit_edge:              ; preds = %for.inc.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

for.inc.i92:                                      ; preds = %for.inc.i81.i.for.inc.i92_crit_edge, %for.cond.preheader.i72.i.for.inc.i92_crit_edge, %for.cond.i26.i.for.inc.i92_crit_edge, %sw.bb11.i.for.inc.i92_crit_edge, %if.end14.i.i.for.inc.i92_crit_edge, %for.cond.preheader.i.i.for.inc.i92_crit_edge, %for.cond.i.i.for.inc.i92_crit_edge, %sw.bb1.i.for.inc.i92_crit_edge, %for.inc.i.i.for.inc.i92_crit_edge, %sw.bb.i84.for.inc.i92_crit_edge, %for.body.i83.for.inc.i92_crit_edge
  %inc.i90 = add nuw i32 %i.0119.i, 1
  %321 = ptrtoint ptr %nchunks.i62 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %nchunks.i62, align 4
  %cmp.i91 = icmp ult i32 %inc.i90, %322
  br i1 %cmp.i91, label %for.inc.i92.for.body.i83_crit_edge, label %for.inc.i92.if.end21_crit_edge

for.inc.i92.if.end21_crit_edge:                   ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

for.inc.i92.for.body.i83_crit_edge:               ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i83

amdgpu_cs_dependencies.exit:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %323 = ptrtoint ptr %call10.i.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entity.i.i) #9
  br label %if.then20

if.then20:                                        ; preds = %amdgpu_cs_dependencies.exit, %if.then21.i.i, %if.then9.i.i.if.then20_crit_edge, %if.end7.i.i67.i.if.then20_crit_edge, %sw.bb16.i.if.then20_crit_edge, %for.body.i31.i.if.then20_crit_edge, %for.body.i18.i.if.then20_crit_edge, %if.end7.i.i.i.if.then20_crit_edge, %kmalloc_array.exit.thread.i.i, %sw.bb6.i.if.then20_crit_edge, %for.body.i9.i.if.then20_crit_edge, %amdgpu_cs_process_fence_dep.exit.thread86.i
  %retval.2.i93127 = phi i32 [ %323, %amdgpu_cs_dependencies.exit ], [ -22, %if.then21.i.i ], [ -12, %kmalloc_array.exit.thread.i.i ], [ %retval.1.ph.i.ph.i, %amdgpu_cs_process_fence_dep.exit.thread86.i ], [ %call.i7.i, %for.body.i9.i.if.then20_crit_edge ], [ -22, %for.body.i18.i.if.then20_crit_edge ], [ %call.i29.i, %for.body.i31.i.if.then20_crit_edge ], [ -12, %if.then9.i.i.if.then20_crit_edge ], [ -22, %sw.bb6.i.if.then20_crit_edge ], [ -12, %if.end7.i.i.i.if.then20_crit_edge ], [ -22, %sw.bb16.i.if.then20_crit_edge ], [ -12, %if.end7.i.i67.i.if.then20_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %retval.2.i93127) #9
  br label %if.end.i98

if.end21:                                         ; preds = %for.inc.i92.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  %call22 = call fastcc i32 @amdgpu_cs_parser_bos(ptr noundef nonnull %parser, ptr noundef %data)
  %324 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %324, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call22, label %if.then28 [
    i32 0, label %if.end31
    i32 -12, label %if.then25
    i32 -512, label %if.end21.if.end.i98_crit_edge
    i32 -11, label %out.fold.split
  ]

if.end21.if.end.i98_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i98

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #9
  br label %if.end.i98

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %call22) #9
  br label %if.end.i98

if.end31:                                         ; preds = %if.end21
  call fastcc void @trace_amdgpu_cs_ibs(ptr noundef nonnull %parser)
  %call32 = call fastcc i32 @amdgpu_cs_vm_handling(ptr noundef nonnull %parser)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %out, label %if.end31.if.then.i_crit_edge

if.end31.if.then.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

out.fold.split:                                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i98

out:                                              ; preds = %if.end31
  %call36 = call fastcc i32 @amdgpu_cs_submit(ptr noundef nonnull %parser, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool.not.i94.not = icmp eq i32 %call36, 0
  br i1 %tobool.not.i94.not, label %out.if.end.i98_crit_edge, label %out.if.then.i_crit_edge

out.if.then.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

out.if.end.i98_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i98

if.then.i:                                        ; preds = %out.if.then.i_crit_edge, %if.end31.if.then.i_crit_edge
  %r.0213 = phi i32 [ %call36, %out.if.then.i_crit_edge ], [ %call32, %if.end31.if.then.i_crit_edge ]
  %bo_list.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 8
  %325 = ptrtoint ptr %bo_list.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %bo_list.i, align 4
  %arrayidx.i.i95 = getelementptr %struct.amdgpu_bo_list, ptr %326, i32 1
  %num_entries85.i = getelementptr inbounds %struct.amdgpu_bo_list, ptr %326, i32 0, i32 6
  %327 = ptrtoint ptr %num_entries85.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %num_entries85.i, align 4
  %arrayidx1.i87.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i.i95, i32 %328
  %cmp.not88.i = icmp eq ptr %arrayidx.i.i95, %arrayidx1.i87.i
  br i1 %cmp.not88.i, label %if.then.i.for.end.i97_crit_edge, label %if.then.i.for.body.i96_crit_edge

if.then.i.for.body.i96_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i96

if.then.i.for.end.i97_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i97

for.body.i96:                                     ; preds = %for.body.i96.for.body.i96_crit_edge, %if.then.i.for.body.i96_crit_edge
  %e.089.i = phi ptr [ %incdec.ptr.i, %for.body.i96.for.body.i96_crit_edge ], [ %arrayidx.i.i95, %if.then.i.for.body.i96_crit_edge ]
  %chain.i = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %e.089.i, i32 0, i32 2
  %329 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %chain.i, align 4
  call void @kfree(ptr noundef %330) #9
  %331 = ptrtoint ptr %chain.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr null, ptr %chain.i, align 4
  %incdec.ptr.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.089.i, i32 1
  %332 = ptrtoint ptr %bo_list.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %bo_list.i, align 4
  %num_entries.i = getelementptr inbounds %struct.amdgpu_bo_list, ptr %333, i32 0, i32 6
  %334 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %num_entries.i, align 4
  %arrayidx.i77.i = getelementptr %struct.amdgpu_bo_list, ptr %333, i32 1
  %arrayidx1.i.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i77.i, i32 %335
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %arrayidx1.i.i
  br i1 %cmp.not.i, label %for.body.i96.for.end.i97_crit_edge, label %for.body.i96.for.body.i96_crit_edge

for.body.i96.for.body.i96_crit_edge:              ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i96

for.body.i96.for.end.i97_crit_edge:               ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i97

for.end.i97:                                      ; preds = %for.body.i96.for.end.i97_crit_edge, %if.then.i.for.end.i97_crit_edge
  %ticket.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 7
  %validated.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 11
  call void @ttm_eu_backoff_reservation(ptr noundef %ticket.i, ptr noundef %validated.i) #9
  br label %if.end.i98

if.end.i98:                                       ; preds = %for.end.i97, %out.if.end.i98_crit_edge, %out.fold.split, %if.then28, %if.then25, %if.end21.if.end.i98_crit_edge, %if.then20, %amdgpu_cs_ib_fill.exit.if.end.i98_crit_edge, %land.lhs.true69.i.if.end.i98_crit_edge, %cleanup.thread.i74, %if.then11, %if.then8.if.end.i98_crit_edge
  %r.0135 = phi i32 [ %r.0213, %for.end.i97 ], [ 0, %out.if.end.i98_crit_edge ], [ -11, %out.fold.split ], [ %call22, %if.end21.if.end.i98_crit_edge ], [ %call22, %if.then28 ], [ -12, %if.then25 ], [ %retval.2.i93127, %if.then20 ], [ %call76.i, %amdgpu_cs_ib_fill.exit.if.end.i98_crit_edge ], [ %retval.0.i118, %if.then8.if.end.i98_crit_edge ], [ %retval.0.i118, %if.then11 ], [ %retval.1.ph.i, %cleanup.thread.i74 ], [ -22, %land.lhs.true69.i.if.end.i98_crit_edge ]
  %num_post_deps.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 18
  %336 = ptrtoint ptr %num_post_deps.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %num_post_deps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %cmp790.not.i = icmp eq i32 %337, 0
  br i1 %cmp790.not.i, label %if.end.i98.for.end13.i_crit_edge, label %for.body8.lr.ph.i

if.end.i98.for.end13.i_crit_edge:                 ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13.i

for.body8.lr.ph.i:                                ; preds = %if.end.i98
  %post_deps.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 19
  br label %for.body8.i

for.body8.i:                                      ; preds = %drm_syncobj_put.exit.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %i.091.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc.i102, %drm_syncobj_put.exit.i.for.body8.i_crit_edge ]
  %338 = ptrtoint ptr %post_deps.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %post_deps.i, align 8
  %arrayidx.i99 = getelementptr %struct.amdgpu_cs_post_dep, ptr %339, i32 %i.091.i
  %340 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %arrayidx.i99, align 8
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %341, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @llvm.prefetch.p0(ptr %341, i32 1, i32 3, i32 1) #9
  %342 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %341, ptr %341, i32 1, ptr elementtype(i32) %341) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i.i100 = extractvalue { i32, i32, i32 } %342, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i100)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i100, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i101, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i100)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i100, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_syncobj_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.drm_syncobj_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_syncobj_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %341, i32 noundef 3) #9
  br label %drm_syncobj_put.exit.i

if.then.i.i.i101:                                 ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @drm_syncobj_free(ptr noundef %341) #9, !callees !71
  br label %drm_syncobj_put.exit.i

drm_syncobj_put.exit.i:                           ; preds = %if.then.i.i.i101, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_syncobj_put.exit.i_crit_edge
  %343 = ptrtoint ptr %post_deps.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %post_deps.i, align 8
  %chain11.i = getelementptr %struct.amdgpu_cs_post_dep, ptr %344, i32 %i.091.i, i32 1
  %345 = ptrtoint ptr %chain11.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %chain11.i, align 4
  call void @kfree(ptr noundef %346) #9
  %inc.i102 = add nuw i32 %i.091.i, 1
  %347 = ptrtoint ptr %num_post_deps.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %num_post_deps.i, align 4
  %cmp7.i = icmp ult i32 %inc.i102, %348
  br i1 %cmp7.i, label %drm_syncobj_put.exit.i.for.body8.i_crit_edge, label %drm_syncobj_put.exit.i.for.end13.i_crit_edge

drm_syncobj_put.exit.i.for.end13.i_crit_edge:     ; preds = %drm_syncobj_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13.i

drm_syncobj_put.exit.i.for.body8.i_crit_edge:     ; preds = %drm_syncobj_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i

for.end13.i:                                      ; preds = %drm_syncobj_put.exit.i.for.end13.i_crit_edge, %if.end.i98.for.end13.i_crit_edge
  %post_deps14.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 19
  %349 = ptrtoint ptr %post_deps14.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %post_deps14.i, align 8
  call void @kfree(ptr noundef %350) #9
  %fence.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 12
  %351 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %fence.i, align 8
  %tobool.not.i.i103 = icmp eq ptr %352, null
  br i1 %tobool.not.i.i103, label %for.end13.i.dma_fence_put.exit.i_crit_edge, label %if.then.i.i104

for.end13.i.dma_fence_put.exit.i_crit_edge:       ; preds = %for.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit.i

if.then.i.i104:                                   ; preds = %for.end13.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %352, i32 0, i32 6
  %call.i.i.i.i.i.i.i78.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %353 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i79.i = extractvalue { i32, i32, i32 } %353, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i79.i)
  %cmp.i.i.i.i.i80.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i79.i, 1
  br i1 %cmp.i.i.i.i.i80.i, label %if.then.i.i84.i, label %if.end5.i.i.i.i.i82.i

if.end5.i.i.i.i.i82.i:                            ; preds = %if.then.i.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i79.i)
  %.not.i.i.i.i.i81.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i79.i, 0
  br i1 %.not.i.i.i.i.i81.i, label %if.end5.i.i.i.i.i82.i.dma_fence_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i83.i, !prof !61

if.end5.i.i.i.i.i82.i.dma_fence_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit.i

if.then10.i.i.i.i.i83.i:                          ; preds = %if.end5.i.i.i.i.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %dma_fence_put.exit.i

if.then.i.i84.i:                                  ; preds = %if.then.i.i104
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @dma_fence_release(ptr noundef %refcount.i.i) #9, !callees !71
  br label %dma_fence_put.exit.i

dma_fence_put.exit.i:                             ; preds = %if.then.i.i84.i, %if.then10.i.i.i.i.i83.i, %if.end5.i.i.i.i.i82.i.dma_fence_put.exit.i_crit_edge, %for.end13.i.dma_fence_put.exit.i_crit_edge
  %ctx.i105 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 2
  %354 = ptrtoint ptr %ctx.i105 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %ctx.i105, align 8
  %tobool15.not.i = icmp eq ptr %355, null
  br i1 %tobool15.not.i, label %dma_fence_put.exit.i.if.end20.i_crit_edge, label %if.then16.i

dma_fence_put.exit.i.if.end20.i_crit_edge:        ; preds = %dma_fence_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then16.i:                                      ; preds = %dma_fence_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i106 = getelementptr inbounds %struct.amdgpu_ctx, ptr %355, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %lock.i106) #9
  %356 = ptrtoint ptr %ctx.i105 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ctx.i105, align 8
  %call19.i = call i32 @amdgpu_ctx_put(ptr noundef %357) #9
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %dma_fence_put.exit.i.if.end20.i_crit_edge
  %bo_list21.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 8
  %358 = ptrtoint ptr %bo_list21.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %bo_list21.i, align 4
  %tobool22.not.i = icmp eq ptr %359, null
  br i1 %tobool22.not.i, label %if.end20.i.if.end25.i_crit_edge, label %if.then23.i

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @amdgpu_bo_list_put(ptr noundef nonnull %359) #9
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end25.i_crit_edge
  %nchunks.i107 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 3
  %360 = ptrtoint ptr %nchunks.i107 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %nchunks.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %361)
  %cmp2792.not.i = icmp eq i32 %361, 0
  br i1 %cmp2792.not.i, label %if.end25.i.for.end32.i_crit_edge, label %for.body28.lr.ph.i

if.end25.i.for.end32.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32.i

for.body28.lr.ph.i:                               ; preds = %if.end25.i
  %chunks.i108 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 4
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.body28.lr.ph.i
  %i.193.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %inc31.i, %for.body28.i.for.body28.i_crit_edge ]
  %362 = ptrtoint ptr %chunks.i108 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %chunks.i108, align 8
  %kdata.i109 = getelementptr %struct.amdgpu_cs_chunk, ptr %363, i32 %i.193.i, i32 2
  %364 = ptrtoint ptr %kdata.i109 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %kdata.i109, align 4
  call void @kvfree(ptr noundef %365) #9
  %inc31.i = add nuw i32 %i.193.i, 1
  %366 = ptrtoint ptr %nchunks.i107 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %nchunks.i107, align 4
  %cmp27.i = icmp ult i32 %inc31.i, %367
  br i1 %cmp27.i, label %for.body28.i.for.body28.i_crit_edge, label %for.body28.i.for.end32.i_crit_edge

for.body28.i.for.end32.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32.i

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28.i

for.end32.i:                                      ; preds = %for.body28.i.for.end32.i_crit_edge, %if.end25.i.for.end32.i_crit_edge
  %chunks33.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 4
  %368 = ptrtoint ptr %chunks33.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %chunks33.i, align 8
  call void @kvfree(ptr noundef %369) #9
  %job.i110 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 5
  %370 = ptrtoint ptr %job.i110 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %job.i110, align 4
  %tobool34.not.i = icmp eq ptr %371, null
  br i1 %tobool34.not.i, label %for.end32.i.if.end37.i_crit_edge, label %if.then35.i

for.end32.i.if.end37.i_crit_edge:                 ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then35.i:                                      ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @amdgpu_job_free(ptr noundef nonnull %371) #9
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %for.end32.i.if.end37.i_crit_edge
  %bo.i111 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 17, i32 0, i32 1
  %372 = ptrtoint ptr %bo.i111 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %bo.i111, align 8
  %tobool38.not.i = icmp eq ptr %373, null
  br i1 %tobool38.not.i, label %if.end37.i.cleanup_crit_edge, label %if.then39.i

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uf.i) #9
  %add.ptr.i.i = getelementptr i8, ptr %373, i32 -72
  %374 = ptrtoint ptr %uf.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %add.ptr.i.i, ptr %uf.i, align 4
  call void @amdgpu_bo_unref(ptr noundef nonnull %uf.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uf.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then39.i, %if.end37.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -133, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %r.0135, %if.end37.i.cleanup_crit_edge ], [ %r.0135, %if.then39.i ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %parser) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_cs_parser_bos(ptr noundef %p, ptr nocapture noundef readonly %cs) unnamed_addr #0 align 64 {
entry:
  %duplicates = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %filp = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filp, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %duplicates) #9
  %4 = getelementptr inbounds %struct.list_head, ptr %duplicates, i32 0, i32 1
  %validated = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 11
  %5 = ptrtoint ptr %validated to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %validated, ptr %validated, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %validated, ptr %prev.i, align 4
  %bo_list_handle = getelementptr inbounds %struct.drm_amdgpu_cs_in, ptr %cs, i32 0, i32 1
  %7 = ptrtoint ptr %bo_list_handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bo_list_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %bo_list9 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 8
  %9 = ptrtoint ptr %bo_list9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bo_list9, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool10.not, label %if.end, label %if.then.cleanup214_crit_edge

if.then.cleanup214_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup214

if.end:                                           ; preds = %if.then
  %call = tail call i32 @amdgpu_bo_list_get(ptr noundef %3, i32 noundef %8, ptr noundef %bo_list9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end.if.end19_crit_edge, label %if.end.cleanup214_crit_edge

if.end.cleanup214_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup214

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else:                                          ; preds = %entry
  br i1 %tobool10.not, label %if.then11, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then11:                                        ; preds = %if.else
  %11 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p, align 8
  %call14 = tail call i32 @amdgpu_bo_list_create(ptr noundef %12, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef %bo_list9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then11.if.end19_crit_edge, label %if.then11.cleanup214_crit_edge

if.then11.cleanup214_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup214

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end19:                                         ; preds = %if.then11.if.end19_crit_edge, %if.else.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %bo_list20 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 8
  %13 = ptrtoint ptr %bo_list20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bo_list20, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_bo_list, ptr %14, i32 1
  %num_entries380 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %num_entries380 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_entries380, align 4
  %arrayidx1.i382 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i, i32 %16
  %cmp.not383 = icmp eq ptr %arrayidx.i, %arrayidx1.i382
  br i1 %cmp.not383, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end19.for.body_crit_edge
  %e.0384 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %arrayidx.i, %if.end19.for.body_crit_edge ]
  %num_shared = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.0384, i32 0, i32 2
  %17 = ptrtoint ptr %num_shared to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %num_shared, align 4
  %incdec.ptr = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.0384, i32 1
  %18 = ptrtoint ptr %bo_list20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bo_list20, align 4
  %num_entries = getelementptr inbounds %struct.amdgpu_bo_list, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_entries, align 4
  %arrayidx.i339 = getelementptr %struct.amdgpu_bo_list, ptr %19, i32 1
  %arrayidx1.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i339, i32 %21
  %cmp.not = icmp eq ptr %incdec.ptr, %arrayidx1.i
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end19.for.end_crit_edge
  %.lcssa = phi ptr [ %14, %if.end19.for.end_crit_edge ], [ %19, %for.body.for.end_crit_edge ]
  tail call void @amdgpu_bo_list_get_list(ptr noundef %.lcssa, ptr noundef %validated) #9
  %22 = ptrtoint ptr %duplicates to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %duplicates, ptr %duplicates, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %duplicates, ptr %4, align 4
  %vm_pd = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 10
  call void @amdgpu_vm_get_pd_bo(ptr noundef %3, ptr noundef %validated, ptr noundef %vm_pd) #9
  %uf_entry = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 17
  %bo = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 17, i32 0, i32 1
  %24 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bo, align 8
  %tobool30.not = icmp eq ptr %25, null
  br i1 %tobool30.not, label %for.end.if.end40_crit_edge, label %land.lhs.true

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true:                                    ; preds = %for.end
  %parent = getelementptr i8, ptr %25, i32 444
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 4
  %tobool35.not = icmp eq ptr %27, null
  br i1 %tobool35.not, label %if.then36, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then36:                                        ; preds = %land.lhs.true
  %28 = ptrtoint ptr %validated to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %validated, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %uf_entry, ptr noundef %validated, ptr noundef %29) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then36.if.end40_crit_edge

if.then36.if.end40_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end.i.i:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %uf_entry, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %uf_entry to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %uf_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 17, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %validated, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %validated to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %uf_entry, ptr %validated, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end.i.i, %if.then36.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %for.end.if.end40_crit_edge
  %34 = ptrtoint ptr %bo_list20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bo_list20, align 4
  %first_userptr = getelementptr inbounds %struct.amdgpu_bo_list, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %first_userptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %first_userptr, align 4
  %arrayidx.i341 = getelementptr %struct.amdgpu_bo_list, ptr %35, i32 1
  %arrayidx1.i342 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i341, i32 %37
  %num_entries47390 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %35, i32 0, i32 6
  %38 = ptrtoint ptr %num_entries47390 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_entries47390, align 4
  %arrayidx1.i344392 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i341, i32 %39
  %cmp49.not393 = icmp eq ptr %arrayidx1.i342, %arrayidx1.i344392
  br i1 %cmp49.not393, label %if.end40.for.end87_crit_edge, label %if.end40.for.body50_crit_edge

if.end40.for.body50_crit_edge:                    ; preds = %if.end40
  br label %for.body50

if.end40.for.end87_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end87

for.body50:                                       ; preds = %for.inc85.for.body50_crit_edge, %if.end40.for.body50_crit_edge
  %e.1394 = phi ptr [ %incdec.ptr86, %for.inc85.for.body50_crit_edge ], [ %arrayidx1.i342, %if.end40.for.body50_crit_edge ]
  %bo53 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.1394, i32 0, i32 1
  %40 = ptrtoint ptr %bo53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bo53, align 4
  %add.ptr.i345 = getelementptr i8, ptr %41, i32 -72
  %ttm = getelementptr i8, ptr %41, i32 376
  %42 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ttm, align 8
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_pages, align 4
  %46 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 4) #9
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !60

kvmalloc_array.exit.thread:                       ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  %user_pages363 = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %e.1394, i32 0, i32 4
  %48 = ptrtoint ptr %user_pages363 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %user_pages363, align 4
  br label %if.then58

kvmalloc_array.exit:                              ; preds = %for.body50
  %49 = extractvalue { i32, i1 } %46, 0
  %call.i.i346 = call noalias ptr @kvmalloc_node(i32 noundef %49, i32 noundef 3520, i32 noundef -1) #12
  %user_pages = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %e.1394, i32 0, i32 4
  %50 = ptrtoint ptr %user_pages to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i.i346, ptr %user_pages, align 4
  %tobool57.not = icmp eq ptr %call.i.i346, null
  br i1 %tobool57.not, label %kvmalloc_array.exit.if.then58_crit_edge, label %if.end59

kvmalloc_array.exit.if.then58_crit_edge:          ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58

if.then58:                                        ; preds = %kvmalloc_array.exit.if.then58_crit_edge, %kvmalloc_array.exit.thread
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #9
  br label %cleanup214

if.end59:                                         ; preds = %kvmalloc_array.exit
  %call61 = call i32 @amdgpu_ttm_tt_get_user_pages(ptr noundef %add.ptr.i345, ptr noundef nonnull %call.i.i346) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.cond67.preheader, label %if.then63

for.cond67.preheader:                             ; preds = %if.end59
  %51 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ttm, align 8
  %num_pages70 = getelementptr inbounds %struct.ttm_tt, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %num_pages70 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_pages70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp71385.not = icmp eq i32 %54, 0
  br i1 %cmp71385.not, label %for.cond67.preheader.for.inc85_crit_edge, label %for.body72.lr.ph

for.cond67.preheader.for.inc85_crit_edge:         ; preds = %for.cond67.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc85

for.body72.lr.ph:                                 ; preds = %for.cond67.preheader
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 4
  %57 = ptrtoint ptr %user_pages to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %user_pages, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  %cmp77.not429 = icmp eq ptr %60, %62
  br i1 %cmp77.not429, label %for.body72.lr.ph.for.cond67_crit_edge, label %for.body72.lr.ph.for.inc85_crit_edge

for.body72.lr.ph.for.inc85_crit_edge:             ; preds = %for.body72.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc85

for.body72.lr.ph.for.cond67_crit_edge:            ; preds = %for.body72.lr.ph
  br label %for.cond67

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %user_pages to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %user_pages, align 4
  call void @kvfree(ptr noundef %64) #9
  %65 = ptrtoint ptr %user_pages to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %user_pages, align 4
  br label %cleanup214

for.cond67:                                       ; preds = %for.body72.for.cond67_crit_edge, %for.body72.lr.ph.for.cond67_crit_edge
  %i.0386430 = phi i32 [ %inc, %for.body72.for.cond67_crit_edge ], [ 0, %for.body72.lr.ph.for.cond67_crit_edge ]
  %inc = add nuw i32 %i.0386430, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %54)
  %exitcond.not = icmp eq i32 %inc, %54
  br i1 %exitcond.not, label %for.cond67.for.inc85.loopexit_crit_edge, label %for.body72

for.cond67.for.inc85.loopexit_crit_edge:          ; preds = %for.cond67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc85.loopexit

for.body72:                                       ; preds = %for.cond67
  %arrayidx = getelementptr ptr, ptr %56, i32 %inc
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  %arrayidx76 = getelementptr ptr, ptr %58, i32 %inc
  %68 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx76, align 4
  %cmp77.not = icmp eq ptr %67, %69
  br i1 %cmp77.not, label %for.body72.for.cond67_crit_edge, label %for.body72.for.inc85.loopexit_crit_edge

for.body72.for.inc85.loopexit_crit_edge:          ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc85.loopexit

for.body72.for.cond67_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond67

for.inc85.loopexit:                               ; preds = %for.body72.for.inc85.loopexit_crit_edge, %for.cond67.for.inc85.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %54)
  %cmp71.le = icmp ult i32 %inc, %54
  br label %for.inc85

for.inc85:                                        ; preds = %for.inc85.loopexit, %for.body72.lr.ph.for.inc85_crit_edge, %for.cond67.preheader.for.inc85_crit_edge
  %cmp71.lcssa = phi i1 [ false, %for.cond67.preheader.for.inc85_crit_edge ], [ true, %for.body72.lr.ph.for.inc85_crit_edge ], [ %cmp71.le, %for.inc85.loopexit ]
  %user_invalidated = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %e.1394, i32 0, i32 5
  %frombool = zext i1 %cmp71.lcssa to i8
  %70 = ptrtoint ptr %user_invalidated to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %frombool, ptr %user_invalidated, align 4
  %incdec.ptr86 = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.1394, i32 1
  %71 = ptrtoint ptr %bo_list20 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bo_list20, align 4
  %num_entries47 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %num_entries47 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_entries47, align 4
  %arrayidx.i343 = getelementptr %struct.amdgpu_bo_list, ptr %72, i32 1
  %arrayidx1.i344 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i343, i32 %74
  %cmp49.not = icmp eq ptr %incdec.ptr86, %arrayidx1.i344
  br i1 %cmp49.not, label %for.inc85.for.end87_crit_edge, label %for.inc85.for.body50_crit_edge

for.inc85.for.body50_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50

for.inc85.for.end87_crit_edge:                    ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end87

for.end87:                                        ; preds = %for.inc85.for.end87_crit_edge, %if.end40.for.end87_crit_edge
  %ticket = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 7
  %call89 = call i32 @ttm_eu_reserve_buffers(ptr noundef %ticket, ptr noundef %validated, i1 noundef zeroext true, ptr noundef nonnull %duplicates) #9
  %75 = zext i32 %call89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call89, label %if.then95 [
    i32 0, label %if.end97
    i32 -512, label %for.end87.cleanup214_crit_edge
  ], !prof !72

for.end87.cleanup214_crit_edge:                   ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup214

if.then95:                                        ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #9
  br label %cleanup214

if.end97:                                         ; preds = %for.end87
  %76 = ptrtoint ptr %bo_list20 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bo_list20, align 4
  %arrayidx.i347 = getelementptr %struct.amdgpu_bo_list, ptr %77, i32 1
  %num_entries103395 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %num_entries103395 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_entries103395, align 4
  %arrayidx1.i349397 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i347, i32 %79
  %cmp105.not398 = icmp eq ptr %arrayidx.i347, %arrayidx1.i349397
  br i1 %cmp105.not398, label %if.end97.for.end128_crit_edge, label %if.end97.for.body106_crit_edge

if.end97.for.body106_crit_edge:                   ; preds = %if.end97
  br label %for.body106

if.end97.for.end128_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end128

for.body106:                                      ; preds = %for.inc126.for.body106_crit_edge, %if.end97.for.body106_crit_edge
  %e.2399 = phi ptr [ %incdec.ptr127, %for.inc126.for.body106_crit_edge ], [ %arrayidx.i347, %if.end97.for.body106_crit_edge ]
  %bo109 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.2399, i32 0, i32 1
  %80 = ptrtoint ptr %bo109 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bo109, align 4
  %add.ptr.i350 = getelementptr i8, ptr %81, i32 -72
  %call111 = call ptr @amdgpu_vm_bo_find(ptr noundef %3, ptr noundef %add.ptr.i350) #9
  %bo_va = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %e.2399, i32 0, i32 1
  %82 = ptrtoint ptr %bo_va to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call111, ptr %bo_va, align 4
  %dma_buf = getelementptr i8, ptr %81, i32 192
  %83 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dma_buf, align 8
  %tobool113.not = icmp eq ptr %84, null
  br i1 %tobool113.not, label %for.body106.for.inc126_crit_edge, label %land.lhs.true114

for.body106.for.inc126_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc126

land.lhs.true114:                                 ; preds = %for.body106
  %flags.i = getelementptr i8, ptr %81, i32 432
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %86, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then116, label %land.lhs.true114.for.inc126_crit_edge

land.lhs.true114.for.inc126_crit_edge:            ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc126

if.then116:                                       ; preds = %land.lhs.true114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %87 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %87, i32 noundef 3264, i32 noundef 128) #14
  %chain = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %e.2399, i32 0, i32 2
  %88 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i, ptr %chain, align 4
  %tobool119.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool119.not, label %if.then116.if.then195_crit_edge, label %if.then116.for.inc126_crit_edge

if.then116.for.inc126_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc126

if.then116.if.then195_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then195

for.inc126:                                       ; preds = %if.then116.for.inc126_crit_edge, %land.lhs.true114.for.inc126_crit_edge, %for.body106.for.inc126_crit_edge
  %incdec.ptr127 = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.2399, i32 1
  %89 = ptrtoint ptr %bo_list20 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bo_list20, align 4
  %num_entries103 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %num_entries103 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_entries103, align 4
  %arrayidx.i348 = getelementptr %struct.amdgpu_bo_list, ptr %90, i32 1
  %arrayidx1.i349 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i348, i32 %92
  %cmp105.not = icmp eq ptr %incdec.ptr127, %arrayidx1.i349
  br i1 %cmp105.not, label %for.inc126.for.end128_crit_edge, label %for.inc126.for.body106_crit_edge

for.inc126.for.body106_crit_edge:                 ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body106

for.inc126.for.end128_crit_edge:                  ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end128

for.end128:                                       ; preds = %for.inc126.for.end128_crit_edge, %if.end97.for.end128_crit_edge
  %93 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %p, align 8
  %bytes_moved_threshold = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 13
  %bytes_moved_vis_threshold = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 14
  %mm_stats.i = getelementptr inbounds %struct.amdgpu_device, ptr %94, i32 0, i32 76
  %log2_max_MBps.i = getelementptr inbounds %struct.amdgpu_device, ptr %94, i32 0, i32 76, i32 4
  %95 = ptrtoint ptr %log2_max_MBps.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %log2_max_MBps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i352

if.then.i:                                        ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #11
  %97 = call ptr @memset(ptr %bytes_moved_threshold, i32 0, i32 16)
  br label %amdgpu_cs_get_threshold_for_moves.exit

if.end.i352:                                      ; preds = %for.end128
  %real_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %94, i32 0, i32 62, i32 15
  %98 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %real_vram_size.i, align 8
  %vram_pin_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %94, i32 0, i32 127
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %vram_pin_size.i, i32 noundef 8) #9
  %call.i.i351 = call i64 @generic_atomic64_read(ptr noundef %vram_pin_size.i) #9
  %sub.i = sub i64 %99, %call.i.i351
  %vram_mgr.i = getelementptr inbounds %struct.amdgpu_device, ptr %94, i32 0, i32 68, i32 8
  %call1.i = call i64 @amdgpu_vram_mgr_usage(ptr noundef %vram_mgr.i) #9
  %100 = call i64 @llvm.usub.sat.i64(i64 %sub.i, i64 %call1.i) #9
  call void @_raw_spin_lock(ptr noundef %mm_stats.i) #9
  %call4.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call4.i)
  %cmp8.i.i.i = icmp slt i64 %call4.i, 0
  %101 = call i64 @llvm.abs.i64(i64 %call4.i, i1 false) #9
  %102 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %101, i32 0) #13, !srcloc !73
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %102, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %102, 1
  %103 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %101, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !74
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %103, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %last_update_us.i = getelementptr inbounds %struct.amdgpu_device, ptr %94, i32 0, i32 76, i32 1
  %104 = ptrtoint ptr %last_update_us.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %last_update_us.i, align 8
  %sub7.i = sub i64 %cond213.i.i.i, %105
  store i64 %cond213.i.i.i, ptr %last_update_us.i, align 8
  %accum_us.i = getelementptr inbounds %struct.amdgpu_device, ptr %94, i32 0, i32 76, i32 2
  %106 = ptrtoint ptr %accum_us.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %accum_us.i, align 8
  %add.i = add i64 %sub7.i, %107
  %108 = call i64 @llvm.smin.i64(i64 %add.i, i64 200000) #9
  %109 = ptrtoint ptr %accum_us.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %accum_us.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 134217728, i64 %100)
  %cmp18.i = icmp ult i64 %100, 134217728
  %div136.i = lshr i64 %sub.i, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %div136.i)
  %cmp19.not.i = icmp ult i64 %100, %div136.i
  %or.cond.i = select i1 %cmp18.i, i1 %cmp19.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i352.if.end36.i_crit_edge, label %if.then20.i

if.end.i352.if.end36.i_crit_edge:                 ; preds = %if.end.i352
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then20.i:                                      ; preds = %if.end.i352
  %flags.i353 = getelementptr inbounds %struct.amdgpu_device, ptr %94, i32 0, i32 9
  %110 = ptrtoint ptr %flags.i353 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags.i353, align 8
  %and.i354 = and i32 %111, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i354)
  %tobool21.not.i = icmp eq i32 %and.i354, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.then20.i.if.end25.i_crit_edge

if.then20.i.if.end25.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23139.i = lshr i64 %100, 2
  %112 = ptrtoint ptr %log2_max_MBps.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %log2_max_MBps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i.i = icmp eq i32 %113, 0
  %sh_prom.i.i = zext i32 %113 to i64
  %shr.i.i = lshr i64 %div23139.i, %sh_prom.i.i
  %retval.0.i.i = select i1 %tobool.not.i.i, i64 0, i64 %shr.i.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.then20.i.if.end25.i_crit_edge
  %min_us.0.i = phi i64 [ %retval.0.i.i, %if.then22.i ], [ 0, %if.then20.i.if.end25.i_crit_edge ]
  %114 = call i64 @llvm.smax.i64(i64 %min_us.0.i, i64 %108) #9
  %115 = ptrtoint ptr %accum_us.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %accum_us.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end25.i, %if.end.i352.if.end36.i_crit_edge
  %116 = phi i64 [ %108, %if.end.i352.if.end36.i_crit_edge ], [ %114, %if.end25.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %116)
  %cmp.i.i = icmp slt i64 %116, 1
  br i1 %cmp.i.i, label %if.end36.i.us_to_bytes.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end36.i.us_to_bytes.exit.i_crit_edge:          ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %us_to_bytes.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end36.i
  %117 = ptrtoint ptr %log2_max_MBps.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %log2_max_MBps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i142.i = icmp eq i32 %118, 0
  br i1 %tobool.not.i142.i, label %lor.lhs.false.i.i.us_to_bytes.exit.i_crit_edge, label %if.end.i.i355

lor.lhs.false.i.i.us_to_bytes.exit.i_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %us_to_bytes.exit.i

if.end.i.i355:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sh_prom.i143.i = zext i32 %118 to i64
  %shl.i.i = shl i64 %116, %sh_prom.i143.i
  br label %us_to_bytes.exit.i

us_to_bytes.exit.i:                               ; preds = %if.end.i.i355, %lor.lhs.false.i.i.us_to_bytes.exit.i_crit_edge, %if.end36.i.us_to_bytes.exit.i_crit_edge
  %retval.0.i144.i = phi i64 [ %shl.i.i, %if.end.i.i355 ], [ 0, %lor.lhs.false.i.i.us_to_bytes.exit.i_crit_edge ], [ 0, %if.end36.i.us_to_bytes.exit.i_crit_edge ]
  %119 = ptrtoint ptr %bytes_moved_threshold to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %retval.0.i144.i, ptr %bytes_moved_threshold, align 8
  %120 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %real_vram_size.i, align 8
  %visible_vram_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %94, i32 0, i32 62, i32 3
  %122 = ptrtoint ptr %visible_vram_size.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %visible_vram_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %121, i64 %123)
  %cmp.i145.i = icmp ult i64 %121, %123
  br i1 %cmp.i145.i, label %do.end.i.i, label %us_to_bytes.exit.i.amdgpu_gmc_vram_full_visible.exit.i_crit_edge, !prof !60

us_to_bytes.exit.i.amdgpu_gmc_vram_full_visible.exit.i_crit_edge: ; preds = %us_to_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_gmc_vram_full_visible.exit.i

do.end.i.i:                                       ; preds = %us_to_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 286, i32 noundef 9, ptr noundef null) #9
  br label %amdgpu_gmc_vram_full_visible.exit.i

amdgpu_gmc_vram_full_visible.exit.i:              ; preds = %do.end.i.i, %us_to_bytes.exit.i.amdgpu_gmc_vram_full_visible.exit.i_crit_edge
  %124 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %real_vram_size.i, align 8
  %126 = ptrtoint ptr %visible_vram_size.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %visible_vram_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %125, i64 %127)
  %cmp21.i.i = icmp eq i64 %125, %127
  br i1 %cmp21.i.i, label %amdgpu_gmc_vram_full_visible.exit.i.if.end81.i_crit_edge, label %if.then42.i

amdgpu_gmc_vram_full_visible.exit.i.if.end81.i_crit_edge: ; preds = %amdgpu_gmc_vram_full_visible.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

if.then42.i:                                      ; preds = %amdgpu_gmc_vram_full_visible.exit.i
  %call46.i = call i64 @amdgpu_vram_mgr_vis_usage(ptr noundef %vram_mgr.i) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %127, i64 %call46.i)
  %cmp47.i = icmp ugt i64 %127, %call46.i
  br i1 %cmp47.i, label %if.then48.i, label %if.then42.i.if.end76.i_crit_edge

if.then42.i.if.end76.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

if.then48.i:                                      ; preds = %if.then42.i
  %sub49.i = sub i64 %127, %call46.i
  %accum_us_vis.i = getelementptr inbounds %struct.amdgpu_device, ptr %94, i32 0, i32 76, i32 3
  %128 = ptrtoint ptr %accum_us_vis.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %accum_us_vis.i, align 8
  %add51.i = add i64 %129, %sub7.i
  %130 = call i64 @llvm.smin.i64(i64 %add51.i, i64 200000) #9
  %131 = ptrtoint ptr %accum_us_vis.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %accum_us_vis.i, align 8
  %div60137.i = lshr i64 %127, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub49.i, i64 %div60137.i)
  %cmp61.not.i = icmp ult i64 %sub49.i, %div60137.i
  br i1 %cmp61.not.i, label %if.then48.i.if.end76.i_crit_edge, label %if.then62.i

if.then48.i.if.end76.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

if.then62.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  %div63138.i = lshr i64 %sub49.i, 1
  %132 = ptrtoint ptr %log2_max_MBps.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %log2_max_MBps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i148.i = icmp eq i32 %133, 0
  %sh_prom.i149.i = zext i32 %133 to i64
  %shr.i150.i = lshr i64 %div63138.i, %sh_prom.i149.i
  %retval.0.i151.i = select i1 %tobool.not.i148.i, i64 0, i64 %shr.i150.i
  %134 = call i64 @llvm.smax.i64(i64 %retval.0.i151.i, i64 %130) #9
  %135 = ptrtoint ptr %accum_us_vis.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %accum_us_vis.i, align 8
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then62.i, %if.then48.i.if.end76.i_crit_edge, %if.then42.i.if.end76.i_crit_edge
  %accum_us_vis78.i = getelementptr inbounds %struct.amdgpu_device, ptr %94, i32 0, i32 76, i32 3
  %136 = ptrtoint ptr %accum_us_vis78.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %accum_us_vis78.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %137)
  %cmp.i152.i = icmp slt i64 %137, 1
  br i1 %cmp.i152.i, label %if.end76.i.if.end81.i_crit_edge, label %lor.lhs.false.i155.i

if.end76.i.if.end81.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

lor.lhs.false.i155.i:                             ; preds = %if.end76.i
  %138 = ptrtoint ptr %log2_max_MBps.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %log2_max_MBps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i154.i = icmp eq i32 %139, 0
  br i1 %tobool.not.i154.i, label %lor.lhs.false.i155.i.if.end81.i_crit_edge, label %if.end.i158.i

lor.lhs.false.i155.i.if.end81.i_crit_edge:        ; preds = %lor.lhs.false.i155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

if.end.i158.i:                                    ; preds = %lor.lhs.false.i155.i
  call void @__sanitizer_cov_trace_pc() #11
  %sh_prom.i156.i = zext i32 %139 to i64
  %shl.i157.i = shl i64 %137, %sh_prom.i156.i
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.end.i158.i, %lor.lhs.false.i155.i.if.end81.i_crit_edge, %if.end76.i.if.end81.i_crit_edge, %amdgpu_gmc_vram_full_visible.exit.i.if.end81.i_crit_edge
  %storemerge.i = phi i64 [ 0, %amdgpu_gmc_vram_full_visible.exit.i.if.end81.i_crit_edge ], [ %shl.i157.i, %if.end.i158.i ], [ 0, %lor.lhs.false.i155.i.if.end81.i_crit_edge ], [ 0, %if.end76.i.if.end81.i_crit_edge ]
  %140 = ptrtoint ptr %bytes_moved_vis_threshold to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %storemerge.i, ptr %bytes_moved_vis_threshold, align 8
  call void @_raw_spin_unlock(ptr noundef %mm_stats.i) #9
  br label %amdgpu_cs_get_threshold_for_moves.exit

amdgpu_cs_get_threshold_for_moves.exit:           ; preds = %if.end81.i, %if.then.i
  %bytes_moved = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 15
  %bytes_moved_vis = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 16
  %141 = call ptr @memset(ptr %bytes_moved, i32 0, i32 16)
  %142 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %p, align 8
  %call132 = call i32 @amdgpu_vm_validate_pt_bos(ptr noundef %143, ptr noundef %3, ptr noundef nonnull @amdgpu_cs_bo_validate, ptr noundef %p) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.then134

if.then134:                                       ; preds = %amdgpu_cs_get_threshold_for_moves.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #9
  br label %if.then195

if.end135:                                        ; preds = %amdgpu_cs_get_threshold_for_moves.exit
  %call136 = call fastcc i32 @amdgpu_cs_list_validate(ptr noundef %p, ptr noundef nonnull %duplicates)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end135.if.then195_crit_edge

if.end135.if.then195_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then195

if.end139:                                        ; preds = %if.end135
  %call141 = call fastcc i32 @amdgpu_cs_list_validate(ptr noundef %p, ptr noundef %validated)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %if.end139.if.then195_crit_edge

if.end139.if.then195_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then195

if.end144:                                        ; preds = %if.end139
  %144 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %p, align 8
  %146 = ptrtoint ptr %bytes_moved to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %bytes_moved, align 8
  %148 = ptrtoint ptr %bytes_moved_vis to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %bytes_moved_vis, align 8
  call void @amdgpu_cs_report_moved_bytes(ptr noundef %145, i64 noundef %147, i64 noundef %149)
  %150 = ptrtoint ptr %bo_list20 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bo_list20, align 4
  %gds_obj = getelementptr inbounds %struct.amdgpu_bo_list, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %gds_obj to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %gds_obj, align 4
  %gws_obj = getelementptr inbounds %struct.amdgpu_bo_list, ptr %151, i32 0, i32 3
  %154 = ptrtoint ptr %gws_obj to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %gws_obj, align 4
  %oa_obj = getelementptr inbounds %struct.amdgpu_bo_list, ptr %151, i32 0, i32 4
  %156 = ptrtoint ptr %oa_obj to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %oa_obj, align 4
  %tobool151.not = icmp eq ptr %153, null
  br i1 %tobool151.not, label %if.end144.if.end157_crit_edge, label %if.then152

if.end144.if.end157_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

if.then152:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %call153 = call i64 @amdgpu_bo_gpu_offset(ptr noundef nonnull %153) #9
  %shr = lshr i64 %call153, 12
  %conv = trunc i64 %shr to i32
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %158 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %job, align 4
  %gds_base = getelementptr inbounds %struct.amdgpu_job, ptr %159, i32 0, i32 14
  %160 = ptrtoint ptr %gds_base to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %conv, ptr %gds_base, align 8
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %153, i32 0, i32 4, i32 0, i32 5
  %161 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %size.i, align 8
  %shr155 = lshr i32 %162, 12
  %163 = load ptr, ptr %job, align 4
  %gds_size = getelementptr inbounds %struct.amdgpu_job, ptr %163, i32 0, i32 15
  %164 = ptrtoint ptr %gds_size to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %shr155, ptr %gds_size, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %if.end144.if.end157_crit_edge
  %tobool158.not = icmp eq ptr %155, null
  br i1 %tobool158.not, label %if.end157.if.end167_crit_edge, label %if.then159

if.end157.if.end167_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

if.then159:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  %call160 = call i64 @amdgpu_bo_gpu_offset(ptr noundef nonnull %155) #9
  %shr161 = lshr i64 %call160, 12
  %conv162 = trunc i64 %shr161 to i32
  %job163 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %165 = ptrtoint ptr %job163 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %job163, align 4
  %gws_base = getelementptr inbounds %struct.amdgpu_job, ptr %166, i32 0, i32 16
  %167 = ptrtoint ptr %gws_base to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %conv162, ptr %gws_base, align 8
  %size.i356 = getelementptr inbounds %struct.amdgpu_bo, ptr %155, i32 0, i32 4, i32 0, i32 5
  %168 = ptrtoint ptr %size.i356 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %size.i356, align 8
  %shr165 = lshr i32 %169, 12
  %170 = load ptr, ptr %job163, align 4
  %gws_size = getelementptr inbounds %struct.amdgpu_job, ptr %170, i32 0, i32 17
  %171 = ptrtoint ptr %gws_size to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %shr165, ptr %gws_size, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then159, %if.end157.if.end167_crit_edge
  %tobool168.not = icmp eq ptr %157, null
  br i1 %tobool168.not, label %if.end167.land.lhs.true179_crit_edge, label %if.then169

if.end167.land.lhs.true179_crit_edge:             ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true179

if.then169:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %call170 = call i64 @amdgpu_bo_gpu_offset(ptr noundef nonnull %157) #9
  %shr171 = lshr i64 %call170, 12
  %conv172 = trunc i64 %shr171 to i32
  %job173 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %172 = ptrtoint ptr %job173 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %job173, align 4
  %oa_base = getelementptr inbounds %struct.amdgpu_job, ptr %173, i32 0, i32 18
  %174 = ptrtoint ptr %oa_base to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %conv172, ptr %oa_base, align 8
  %size.i357 = getelementptr inbounds %struct.amdgpu_bo, ptr %157, i32 0, i32 4, i32 0, i32 5
  %175 = ptrtoint ptr %size.i357 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %size.i357, align 8
  %shr175 = lshr i32 %176, 12
  %177 = load ptr, ptr %job173, align 4
  %oa_size = getelementptr inbounds %struct.amdgpu_job, ptr %177, i32 0, i32 19
  %178 = ptrtoint ptr %oa_size to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %shr175, ptr %oa_size, align 4
  br label %land.lhs.true179

land.lhs.true179:                                 ; preds = %if.then169, %if.end167.land.lhs.true179_crit_edge
  %179 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bo, align 8
  %tobool183.not = icmp eq ptr %180, null
  br i1 %tobool183.not, label %land.lhs.true179.cleanup214_crit_edge, label %error_validate

land.lhs.true179.cleanup214_crit_edge:            ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup214

error_validate:                                   ; preds = %land.lhs.true179
  %add.ptr.i358 = getelementptr i8, ptr %180, i32 -72
  %call190 = call i32 @amdgpu_ttm_alloc_gart(ptr noundef nonnull %180) #9
  %call191 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %add.ptr.i358) #9
  %job192 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %181 = ptrtoint ptr %job192 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %job192, align 4
  %uf_addr = getelementptr inbounds %struct.amdgpu_job, ptr %182, i32 0, i32 21
  %183 = ptrtoint ptr %uf_addr to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %uf_addr, align 8
  %add = add i64 %184, %call191
  store i64 %add, ptr %uf_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool194.not = icmp eq i32 %call190, 0
  br i1 %tobool194.not, label %error_validate.cleanup214_crit_edge, label %error_validate.if.then195_crit_edge

error_validate.if.then195_crit_edge:              ; preds = %error_validate
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then195

error_validate.cleanup214_crit_edge:              ; preds = %error_validate
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup214

if.then195:                                       ; preds = %error_validate.if.then195_crit_edge, %if.end139.if.then195_crit_edge, %if.end135.if.then195_crit_edge, %if.then134, %if.then116.if.then195_crit_edge
  %r.2372 = phi i32 [ %call190, %error_validate.if.then195_crit_edge ], [ %call141, %if.end139.if.then195_crit_edge ], [ %call136, %if.end135.if.then195_crit_edge ], [ %call132, %if.then134 ], [ -12, %if.then116.if.then195_crit_edge ]
  %185 = ptrtoint ptr %bo_list20 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bo_list20, align 4
  %arrayidx.i359 = getelementptr %struct.amdgpu_bo_list, ptr %186, i32 1
  %num_entries201401 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %186, i32 0, i32 6
  %187 = ptrtoint ptr %num_entries201401 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %num_entries201401, align 4
  %arrayidx1.i361403 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i359, i32 %188
  %cmp203.not404 = icmp eq ptr %arrayidx.i359, %arrayidx1.i361403
  br i1 %cmp203.not404, label %if.then195.for.end210_crit_edge, label %if.then195.for.body205_crit_edge

if.then195.for.body205_crit_edge:                 ; preds = %if.then195
  br label %for.body205

if.then195.for.end210_crit_edge:                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end210

for.body205:                                      ; preds = %for.body205.for.body205_crit_edge, %if.then195.for.body205_crit_edge
  %e.3405 = phi ptr [ %incdec.ptr209, %for.body205.for.body205_crit_edge ], [ %arrayidx.i359, %if.then195.for.body205_crit_edge ]
  %chain206 = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %e.3405, i32 0, i32 2
  %189 = ptrtoint ptr %chain206 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %chain206, align 4
  call void @kfree(ptr noundef %190) #9
  %191 = ptrtoint ptr %chain206 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %chain206, align 4
  %incdec.ptr209 = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.3405, i32 1
  %192 = ptrtoint ptr %bo_list20 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bo_list20, align 4
  %num_entries201 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %193, i32 0, i32 6
  %194 = ptrtoint ptr %num_entries201 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %num_entries201, align 4
  %arrayidx.i360 = getelementptr %struct.amdgpu_bo_list, ptr %193, i32 1
  %arrayidx1.i361 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i360, i32 %195
  %cmp203.not = icmp eq ptr %incdec.ptr209, %arrayidx1.i361
  br i1 %cmp203.not, label %for.body205.for.end210_crit_edge, label %for.body205.for.body205_crit_edge

for.body205.for.body205_crit_edge:                ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body205

for.body205.for.end210_crit_edge:                 ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end210

for.end210:                                       ; preds = %for.body205.for.end210_crit_edge, %if.then195.for.end210_crit_edge
  call void @ttm_eu_backoff_reservation(ptr noundef %ticket, ptr noundef %validated) #9
  br label %cleanup214

cleanup214:                                       ; preds = %for.end210, %error_validate.cleanup214_crit_edge, %land.lhs.true179.cleanup214_crit_edge, %if.then95, %for.end87.cleanup214_crit_edge, %if.then63, %if.then58, %if.then11.cleanup214_crit_edge, %if.end.cleanup214_crit_edge, %if.then.cleanup214_crit_edge
  %retval.2 = phi i32 [ -22, %if.then.cleanup214_crit_edge ], [ %call, %if.end.cleanup214_crit_edge ], [ %call14, %if.then11.cleanup214_crit_edge ], [ %call89, %if.then95 ], [ %r.2372, %for.end210 ], [ 0, %error_validate.cleanup214_crit_edge ], [ %call89, %for.end87.cleanup214_crit_edge ], [ -12, %if.then58 ], [ %call61, %if.then63 ], [ 0, %land.lhs.true179.cleanup214_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %duplicates) #9
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_cs_ibs(ptr noundef %parser) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_cs, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_cs_ibs, %for.cond)) #9
          to label %cleanup [label %for.cond], !srcloc !75

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 5
  %0 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %job, align 4
  %num_ibs = getelementptr inbounds %struct.amdgpu_job, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ibs, align 4
  %cmp = icmp ult i32 %i.0, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_amdgpu_cs(ptr noundef %parser, i32 noundef %i.0)
  %inc = add nuw i32 %i.0, 1
  br label %for.cond

cleanup:                                          ; preds = %for.cond.cleanup_crit_edge, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_cs_vm_handling(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %m = alloca ptr, align 4
  %aobj = alloca ptr, align 4
  %kptr = alloca ptr, align 4
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
  %filp = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %filp, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_priv, align 4
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 8
  %funcs = getelementptr i8, ptr %5, i32 -140
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %parse_cs = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %parse_cs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parse_cs, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %patch_cs_in_place = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %13, i32 0, i32 11
  %16 = ptrtoint ptr %patch_cs_in_place to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %patch_cs_in_place, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %lor.lhs.false.if.end56_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end56_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %nchunks = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 3
  %18 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nchunks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp297.not = icmp eq i32 %19, 0
  br i1 %cmp297.not, label %if.then.if.end56_crit_edge, label %land.rhs.lr.ph

if.then.if.end56_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

land.rhs.lr.ph:                                   ; preds = %if.then
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %chunks = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %j.0299 = phi i32 [ 0, %land.rhs.lr.ph ], [ %j.1, %for.inc.land.rhs_crit_edge ]
  %i.0298 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc51, %for.inc.land.rhs_crit_edge ]
  %20 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %job, align 4
  %num_ibs = getelementptr inbounds %struct.amdgpu_job, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_ibs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0299, i32 %23)
  %cmp5 = icmp ult i32 %j.0299, %23
  br i1 %cmp5, label %for.body, label %land.rhs.if.end56_crit_edge

land.rhs.if.end56_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.body:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #9
  %24 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %m, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aobj) #9
  %25 = ptrtoint ptr %aobj to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %aobj, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kptr) #9
  %26 = ptrtoint ptr %kptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %kptr, align 4, !annotation !66
  %27 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chunks, align 8
  %arrayidx = getelementptr %struct.amdgpu_cs_chunk, ptr %28, i32 %i.0298
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %21, i32 0, i32 4
  %29 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ibs, align 4
  %kdata = getelementptr %struct.amdgpu_cs_chunk, ptr %28, i32 %i.0298, i32 2
  %31 = ptrtoint ptr %kdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %kdata, align 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp8.not = icmp eq i32 %34, 1
  br i1 %cmp8.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %va_start10 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %va_start10 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %va_start10, align 8
  %and = and i64 %36, 281474976710655
  %call = call i32 @amdgpu_cs_find_mapping(ptr noundef %p, i64 noundef %and, ptr noundef nonnull %aobj, ptr noundef nonnull %m)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup52.sink.split_crit_edge

if.end.cleanup52.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52.sink.split

if.end13:                                         ; preds = %if.end
  %ib_bytes = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, ptr %32, i32 0, i32 3
  %37 = ptrtoint ptr %ib_bytes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ib_bytes, align 8
  %conv = zext i32 %38 to i64
  %add = add nuw nsw i64 %and, %conv
  %39 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %m, align 4
  %last = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %last, align 8
  %add14 = shl i64 %42, 12
  %mul = add i64 %add14, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %mul)
  %cmp15 = icmp ugt i64 %add, %mul
  br i1 %cmp15, label %if.end13.cleanup52.sink.split_crit_edge, label %if.end18

if.end13.cleanup52.sink.split_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52.sink.split

if.end18:                                         ; preds = %if.end13
  %43 = ptrtoint ptr %aobj to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %aobj, align 4
  %call19 = call i32 @amdgpu_bo_kmap(ptr noundef %44, ptr noundef nonnull %kptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup52_crit_edge

if.end18.cleanup52_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.end22:                                         ; preds = %if.end18
  %start = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %40, i32 0, i32 3
  %45 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %start, align 8
  %mul23.neg = mul i64 %46, 4294963200
  %sub = add i64 %mul23.neg, %36
  %47 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %kptr, align 4
  %idx.ext = trunc i64 %sub to i32
  %add.ptr24 = getelementptr i8, ptr %48, i32 %idx.ext
  store ptr %add.ptr24, ptr %kptr, align 4
  %49 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %funcs, align 4
  %parse_cs26 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %parse_cs26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parse_cs26, align 4
  %tobool27.not = icmp eq ptr %52, null
  %ptr36 = getelementptr %struct.amdgpu_ib, ptr %30, i32 %j.0299, i32 3
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end22
  %53 = ptrtoint ptr %ptr36 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ptr36, align 8
  %55 = ptrtoint ptr %ib_bytes to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ib_bytes, align 8
  %57 = call ptr @memcpy(ptr %54, ptr %add.ptr24, i32 %56)
  call void @amdgpu_bo_kunmap(ptr noundef %44) #9
  %58 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs, align 4
  %parse_cs31 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %parse_cs31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parse_cs31, align 4
  %call32 = call i32 %61(ptr noundef %p, i32 noundef %j.0299) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then28.if.end43_crit_edge, label %if.then28.cleanup52_crit_edge

if.then28.cleanup52_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.then28.if.end43_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.else:                                          ; preds = %if.end22
  %62 = ptrtoint ptr %ptr36 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr24, ptr %ptr36, align 8
  %63 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %funcs, align 4
  %patch_cs_in_place38 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %patch_cs_in_place38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %patch_cs_in_place38, align 4
  %call39 = call i32 %66(ptr noundef %p, i32 noundef %j.0299) #9
  call void @amdgpu_bo_kunmap(ptr noundef %44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.else.if.end43_crit_edge, label %if.else.cleanup52_crit_edge

if.else.cleanup52_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43:                                         ; preds = %if.else.if.end43_crit_edge, %if.then28.if.end43_crit_edge
  %inc = add nuw i32 %j.0299, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end43, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.end43 ], [ %j.0299, %for.body.for.inc_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kptr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aobj) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #9
  %inc51 = add nuw i32 %i.0298, 1
  %67 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nchunks, align 4
  %cmp = icmp ult i32 %inc51, %68
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.if.end56_crit_edge

for.inc.if.end56_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cleanup52.sink.split:                             ; preds = %if.end13.cleanup52.sink.split_crit_edge, %if.end.cleanup52.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.14, %if.end.cleanup52.sink.split_crit_edge ], [ @.str.15, %if.end13.cleanup52.sink.split_crit_edge ]
  %retval.1.ph.ph = phi i32 [ %call, %if.end.cleanup52.sink.split_crit_edge ], [ -22, %if.end13.cleanup52.sink.split_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.14.sink) #9
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup52.sink.split, %if.else.cleanup52_crit_edge, %if.then28.cleanup52_crit_edge, %if.end18.cleanup52_crit_edge
  %retval.1.ph = phi i32 [ %retval.1.ph.ph, %cleanup52.sink.split ], [ %call19, %if.end18.cleanup52_crit_edge ], [ %call32, %if.then28.cleanup52_crit_edge ], [ %call39, %if.else.cleanup52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kptr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aobj) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #9
  br label %cleanup181

if.end56:                                         ; preds = %for.inc.if.end56_crit_edge, %land.rhs.if.end56_crit_edge, %if.then.if.end56_crit_edge, %lor.lhs.false.if.end56_crit_edge
  %job57 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %69 = ptrtoint ptr %job57 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %job57, align 4
  %vm58 = getelementptr inbounds %struct.amdgpu_job, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %vm58 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vm58, align 8
  %tobool59.not = icmp eq ptr %72, null
  br i1 %tobool59.not, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end56
  %73 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %filp, align 4
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %74, i32 0, i32 19
  %75 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_priv.i, align 4
  %validated.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then60
  %e.0.in.i = phi ptr [ %validated.i, %if.then60 ], [ %e.0.i, %for.body.i.for.cond.i_crit_edge ]
  %77 = ptrtoint ptr %e.0.in.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %e.0.i = load ptr, ptr %e.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %e.0.i, %validated.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup181_crit_edge, label %for.body.i

for.cond.i.cleanup181_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

for.body.i:                                       ; preds = %for.cond.i
  %bo3.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.0.i, i32 0, i32 1
  %78 = ptrtoint ptr %bo3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bo3.i, align 4
  %resv4.i = getelementptr i8, ptr %79, i32 200
  %80 = ptrtoint ptr %resv4.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %resv4.i, align 8
  %flags.i.i = getelementptr i8, ptr %79, i32 432
  %82 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %flags.i.i, align 8
  %and.i.i = and i64 %83, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %cond.i = select i1 %tobool.i.not.i, i32 1, i32 3
  %84 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %p, align 8
  %86 = ptrtoint ptr %job57 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %job57, align 4
  %sync.i = getelementptr inbounds %struct.amdgpu_job, ptr %87, i32 0, i32 2
  %call6.i = call i32 @amdgpu_sync_resv(ptr noundef %85, ptr noundef %sync.i, ptr noundef %81, i32 noundef %cond.i, ptr noundef %76) #9
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.cleanup181_crit_edge

for.body.i.cleanup181_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.end62:                                         ; preds = %if.end56
  %call63 = call i32 @amdgpu_vm_clear_freed(ptr noundef %11, ptr noundef %9, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.cleanup181_crit_edge

if.end62.cleanup181_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end66:                                         ; preds = %if.end62
  %prt_va = getelementptr inbounds %struct.amdgpu_fpriv, ptr %9, i32 0, i32 1
  %88 = ptrtoint ptr %prt_va to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prt_va, align 8
  %call67 = call i32 @amdgpu_vm_bo_update(ptr noundef %11, ptr noundef %89, i1 noundef zeroext false, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.cleanup181_crit_edge

if.end66.cleanup181_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end70:                                         ; preds = %if.end66
  %90 = ptrtoint ptr %job57 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %job57, align 4
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %prt_va to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prt_va, align 8
  %last_pt_update = getelementptr inbounds %struct.amdgpu_bo_va, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %last_pt_update to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %last_pt_update, align 4
  %call73 = call i32 @amdgpu_sync_vm_fence(ptr noundef %sync, ptr noundef %95) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end70.cleanup181_crit_edge

if.end70.cleanup181_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end76:                                         ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_mcbp to i32))
  %96 = load i32, ptr @amdgpu_mcbp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool77.not = icmp eq i32 %96, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %if.end76.if.then81_crit_edge

if.end76.if.then81_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

lor.lhs.false78:                                  ; preds = %if.end76
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %11, i32 0, i32 132
  %97 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %virt, align 8
  %and79 = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %lor.lhs.false78.if.end105_crit_edge, label %lor.lhs.false78.if.then81_crit_edge

lor.lhs.false78.if.then81_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

lor.lhs.false78.if.end105_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then81:                                        ; preds = %lor.lhs.false78.if.then81_crit_edge, %if.end76.if.then81_crit_edge
  %csa_va = getelementptr inbounds %struct.amdgpu_fpriv, ptr %9, i32 0, i32 2
  %99 = ptrtoint ptr %csa_va to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %csa_va, align 4
  %tobool82.not = icmp eq ptr %100, null
  br i1 %tobool82.not, label %do.body87, label %do.end93, !prof !60

do.body87:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 811, 0\0A.popsection", ""() #9, !srcloc !76
  unreachable

do.end93:                                         ; preds = %if.then81
  %call94 = call i32 @amdgpu_vm_bo_update(ptr noundef %11, ptr noundef nonnull %100, i1 noundef zeroext false, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %do.end93.cleanup181_crit_edge

do.end93.cleanup181_crit_edge:                    ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end97:                                         ; preds = %do.end93
  %101 = ptrtoint ptr %job57 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %job57, align 4
  %sync99 = getelementptr inbounds %struct.amdgpu_job, ptr %102, i32 0, i32 2
  %last_pt_update100 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %100, i32 0, i32 2
  %103 = ptrtoint ptr %last_pt_update100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %last_pt_update100, align 4
  %call101 = call i32 @amdgpu_sync_vm_fence(ptr noundef %sync99, ptr noundef %104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end97.if.end105_crit_edge, label %if.end97.cleanup181_crit_edge

if.end97.cleanup181_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end97.if.end105_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.end105:                                        ; preds = %if.end97.if.end105_crit_edge, %lor.lhs.false78.if.end105_crit_edge
  %bo_list = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 8
  %105 = ptrtoint ptr %bo_list to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bo_list, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_bo_list, ptr %106, i32 1
  %num_entries301 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %num_entries301 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_entries301, align 4
  %arrayidx1.i303 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i, i32 %108
  %cmp111.not304 = icmp eq ptr %arrayidx.i, %arrayidx1.i303
  br i1 %cmp111.not304, label %if.end105.for.end136_crit_edge, label %if.end105.for.body113_crit_edge

if.end105.for.body113_crit_edge:                  ; preds = %if.end105
  br label %for.body113

if.end105.for.end136_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end136

for.body113:                                      ; preds = %for.inc135.for.body113_crit_edge, %if.end105.for.body113_crit_edge
  %e.0305 = phi ptr [ %incdec.ptr, %for.inc135.for.body113_crit_edge ], [ %arrayidx.i, %if.end105.for.body113_crit_edge ]
  %bo114 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.0305, i32 0, i32 1
  %109 = ptrtoint ptr %bo114 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bo114, align 4
  %add.ptr.i = getelementptr i8, ptr %110, i32 -72
  %tobool116.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool116.not, label %for.body113.for.inc135_crit_edge, label %if.end118

for.body113.for.inc135_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc135

if.end118:                                        ; preds = %for.body113
  %bo_va119 = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %e.0305, i32 0, i32 1
  %111 = ptrtoint ptr %bo_va119 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bo_va119, align 4
  %cmp120 = icmp eq ptr %112, null
  br i1 %cmp120, label %if.end118.for.inc135_crit_edge, label %if.end123

if.end118.for.inc135_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc135

if.end123:                                        ; preds = %if.end118
  %call124 = call i32 @amdgpu_vm_bo_update(ptr noundef %11, ptr noundef nonnull %112, i1 noundef zeroext false, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.cleanup181_crit_edge

if.end123.cleanup181_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end127:                                        ; preds = %if.end123
  %113 = ptrtoint ptr %job57 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %job57, align 4
  %sync129 = getelementptr inbounds %struct.amdgpu_job, ptr %114, i32 0, i32 2
  %last_pt_update130 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %112, i32 0, i32 2
  %115 = ptrtoint ptr %last_pt_update130 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %last_pt_update130, align 4
  %call131 = call i32 @amdgpu_sync_vm_fence(ptr noundef %sync129, ptr noundef %116) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end127.for.inc135_crit_edge, label %if.end127.cleanup181_crit_edge

if.end127.cleanup181_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end127.for.inc135_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc135

for.inc135:                                       ; preds = %if.end127.for.inc135_crit_edge, %if.end118.for.inc135_crit_edge, %for.body113.for.inc135_crit_edge
  %incdec.ptr = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.0305, i32 1
  %117 = ptrtoint ptr %bo_list to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bo_list, align 4
  %num_entries = getelementptr inbounds %struct.amdgpu_bo_list, ptr %118, i32 0, i32 6
  %119 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_entries, align 4
  %arrayidx.i282 = getelementptr %struct.amdgpu_bo_list, ptr %118, i32 1
  %arrayidx1.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i282, i32 %120
  %cmp111.not = icmp eq ptr %incdec.ptr, %arrayidx1.i
  br i1 %cmp111.not, label %for.inc135.for.end136_crit_edge, label %for.inc135.for.body113_crit_edge

for.inc135.for.body113_crit_edge:                 ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body113

for.inc135.for.end136_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end136

for.end136:                                       ; preds = %for.inc135.for.end136_crit_edge, %if.end105.for.end136_crit_edge
  %call137 = call i32 @amdgpu_vm_handle_moved(ptr noundef %11, ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %for.end136.cleanup181_crit_edge

for.end136.cleanup181_crit_edge:                  ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end140:                                        ; preds = %for.end136
  %call141 = call i32 @amdgpu_vm_update_pdes(ptr noundef %11, ptr noundef %9, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %if.end140.cleanup181_crit_edge

if.end140.cleanup181_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end144:                                        ; preds = %if.end140
  %121 = ptrtoint ptr %job57 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %job57, align 4
  %sync146 = getelementptr inbounds %struct.amdgpu_job, ptr %122, i32 0, i32 2
  %last_update = getelementptr inbounds %struct.amdgpu_vm, ptr %9, i32 0, i32 13
  %123 = ptrtoint ptr %last_update to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %last_update, align 8
  %call147 = call i32 @amdgpu_sync_vm_fence(ptr noundef %sync146, ptr noundef %124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end144.cleanup181_crit_edge

if.end144.cleanup181_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end150:                                        ; preds = %if.end144
  %bo151 = getelementptr inbounds %struct.amdgpu_vm, ptr %9, i32 0, i32 12, i32 1
  %125 = ptrtoint ptr %bo151 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bo151, align 4
  %call152 = call i64 @amdgpu_gmc_pd_addr(ptr noundef %126) #9
  %127 = ptrtoint ptr %job57 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %job57, align 4
  %vm_pd_addr = getelementptr inbounds %struct.amdgpu_job, ptr %128, i32 0, i32 11
  %129 = ptrtoint ptr %vm_pd_addr to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %call152, ptr %vm_pd_addr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_debug to i32))
  %130 = load i32, ptr @amdgpu_vm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool154.not = icmp eq i32 %130, 0
  br i1 %tobool154.not, label %if.end150.if.end179_crit_edge, label %if.then155

if.end150.if.end179_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.then155:                                       ; preds = %if.end150
  %131 = ptrtoint ptr %bo_list to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bo_list, align 4
  %arrayidx.i283 = getelementptr %struct.amdgpu_bo_list, ptr %132, i32 1
  %num_entries161307 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %132, i32 0, i32 6
  %133 = ptrtoint ptr %num_entries161307 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_entries161307, align 4
  %arrayidx1.i285309 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i283, i32 %134
  %cmp163.not310 = icmp eq ptr %arrayidx.i283, %arrayidx1.i285309
  br i1 %cmp163.not310, label %if.then155.if.end179_crit_edge, label %if.then155.for.body165_crit_edge

if.then155.for.body165_crit_edge:                 ; preds = %if.then155
  br label %for.body165

if.then155.if.end179_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

for.body165:                                      ; preds = %cleanup173.for.body165_crit_edge, %if.then155.for.body165_crit_edge
  %e.1311 = phi ptr [ %incdec.ptr177, %cleanup173.for.body165_crit_edge ], [ %arrayidx.i283, %if.then155.for.body165_crit_edge ]
  %bo168 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.1311, i32 0, i32 1
  %135 = ptrtoint ptr %bo168 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bo168, align 4
  %add.ptr.i286 = getelementptr i8, ptr %136, i32 -72
  %tobool170.not = icmp eq ptr %add.ptr.i286, null
  br i1 %tobool170.not, label %for.body165.cleanup173_crit_edge, label %if.end172

for.body165.cleanup173_crit_edge:                 ; preds = %for.body165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup173

if.end172:                                        ; preds = %for.body165
  call void @__sanitizer_cov_trace_pc() #11
  call void @amdgpu_vm_bo_invalidate(ptr noundef %11, ptr noundef nonnull %add.ptr.i286, i1 noundef zeroext false) #9
  br label %cleanup173

cleanup173:                                       ; preds = %if.end172, %for.body165.cleanup173_crit_edge
  %incdec.ptr177 = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.1311, i32 1
  %137 = ptrtoint ptr %bo_list to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bo_list, align 4
  %num_entries161 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %num_entries161 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %num_entries161, align 4
  %arrayidx.i284 = getelementptr %struct.amdgpu_bo_list, ptr %138, i32 1
  %arrayidx1.i285 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i284, i32 %140
  %cmp163.not = icmp eq ptr %incdec.ptr177, %arrayidx1.i285
  br i1 %cmp163.not, label %cleanup173.if.end179_crit_edge, label %cleanup173.for.body165_crit_edge

cleanup173.for.body165_crit_edge:                 ; preds = %cleanup173
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body165

cleanup173.if.end179_crit_edge:                   ; preds = %cleanup173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.end179:                                        ; preds = %cleanup173.if.end179_crit_edge, %if.then155.if.end179_crit_edge, %if.end150.if.end179_crit_edge
  %call180 = call fastcc i32 @amdgpu_cs_sync_rings(ptr noundef %p)
  br label %cleanup181

cleanup181:                                       ; preds = %if.end179, %if.end144.cleanup181_crit_edge, %if.end140.cleanup181_crit_edge, %for.end136.cleanup181_crit_edge, %if.end127.cleanup181_crit_edge, %if.end123.cleanup181_crit_edge, %if.end97.cleanup181_crit_edge, %do.end93.cleanup181_crit_edge, %if.end70.cleanup181_crit_edge, %if.end66.cleanup181_crit_edge, %if.end62.cleanup181_crit_edge, %for.body.i.cleanup181_crit_edge, %for.cond.i.cleanup181_crit_edge, %cleanup52
  %retval.3 = phi i32 [ %call180, %if.end179 ], [ %retval.1.ph, %cleanup52 ], [ %call63, %if.end62.cleanup181_crit_edge ], [ %call67, %if.end66.cleanup181_crit_edge ], [ %call73, %if.end70.cleanup181_crit_edge ], [ %call94, %do.end93.cleanup181_crit_edge ], [ %call101, %if.end97.cleanup181_crit_edge ], [ %call137, %for.end136.cleanup181_crit_edge ], [ %call141, %if.end140.cleanup181_crit_edge ], [ %call147, %if.end144.cleanup181_crit_edge ], [ 0, %for.cond.i.cleanup181_crit_edge ], [ %call6.i, %for.body.i.cleanup181_crit_edge ], [ %call131, %if.end127.cleanup181_crit_edge ], [ %call124, %if.end123.cleanup181_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_cs_submit(ptr noundef %p, ptr nocapture noundef writeonly %cs) unnamed_addr #0 align 64 {
entry:
  %seq = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %filp = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filp, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %entity1 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 6
  %4 = ptrtoint ptr %entity1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seq) #9
  %6 = ptrtoint ptr %seq to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %seq, align 8, !annotation !66
  %job2 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %job2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %job2, align 4
  store ptr null, ptr %job2, align 4
  %call = tail call i32 @drm_sched_job_init(ptr noundef %8, ptr noundef %5, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.error_unlock_crit_edge

entry.error_unlock_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_unlock

if.end:                                           ; preds = %entry
  tail call void @drm_sched_job_arm(ptr noundef %8) #9
  %9 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p, align 8
  %notifier_lock = getelementptr inbounds %struct.amdgpu_device, ptr %10, i32 0, i32 145
  tail call void @mutex_lock_nested(ptr noundef %notifier_lock, i32 noundef 0) #9
  %bo_list = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 8
  %11 = ptrtoint ptr %bo_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bo_list, align 4
  %first_userptr = getelementptr inbounds %struct.amdgpu_bo_list, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %first_userptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %first_userptr, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_bo_list, ptr %12, i32 1
  %arrayidx1.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i, i32 %14
  %num_entries184 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %num_entries184 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_entries184, align 4
  %arrayidx1.i161186 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i, i32 %16
  %cmp.not187 = icmp eq ptr %arrayidx1.i, %arrayidx1.i161186
  br i1 %cmp.not187, label %if.end.if.end15_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %r.0189 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %e.0188 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %arrayidx1.i, %if.end.for.body_crit_edge ]
  %bo10 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.0188, i32 0, i32 1
  %17 = ptrtoint ptr %bo10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bo10, align 4
  %ttm = getelementptr i8, ptr %18, i32 376
  %19 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ttm, align 8
  %call12 = tail call zeroext i1 @amdgpu_ttm_tt_get_user_pages_done(ptr noundef %20) #9
  %lnot = xor i1 %call12, true
  %lnot.ext = zext i1 %lnot to i32
  %or = or i32 %r.0189, %lnot.ext
  %incdec.ptr = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.0188, i32 1
  %21 = ptrtoint ptr %bo_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bo_list, align 4
  %num_entries = getelementptr inbounds %struct.amdgpu_bo_list, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_entries, align 4
  %arrayidx.i160 = getelementptr %struct.amdgpu_bo_list, ptr %22, i32 1
  %arrayidx1.i161 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i160, i32 %24
  %cmp.not = icmp eq ptr %incdec.ptr, %arrayidx1.i161
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %phi.cmp = icmp eq i32 %or, 0
  br i1 %phi.cmp, label %for.end.if.end15_crit_edge, label %if.then14

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_sched_job_cleanup(ptr noundef %8) #9
  %25 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p, align 8
  %notifier_lock100 = getelementptr inbounds %struct.amdgpu_device, ptr %26, i32 0, i32 145
  tail call void @mutex_unlock(ptr noundef %notifier_lock100) #9
  br label %error_unlock

if.end15:                                         ; preds = %for.end.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %8, i32 0, i32 3
  %27 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %28, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %finished, null
  br i1 %tobool.not.i, label %if.end15.dma_fence_get.exit_crit_edge, label %if.then.i

if.end15.dma_fence_get.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end15
  %refcount.i = getelementptr inbounds %struct.drm_sched_fence, ptr %28, i32 0, i32 1, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !60

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end15.dma_fence_get.exit_crit_edge
  %fence = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 12
  %31 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %finished, ptr %fence, align 8
  %ctx = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 2
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 8
  call void @amdgpu_ctx_add_fence(ptr noundef %33, ptr noundef %5, ptr noundef %finished, ptr noundef nonnull %seq) #9
  %num_post_deps.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 18
  %34 = ptrtoint ptr %num_post_deps.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_post_deps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp37.not.i = icmp eq i32 %35, 0
  br i1 %cmp37.not.i, label %dma_fence_get.exit.amdgpu_cs_post_dependencies.exit_crit_edge, label %for.body.lr.ph.i

dma_fence_get.exit.amdgpu_cs_post_dependencies.exit_crit_edge: ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_post_dependencies.exit

for.body.lr.ph.i:                                 ; preds = %dma_fence_get.exit
  %post_deps.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %post_deps.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %post_deps.i, align 8
  %arrayidx.i162 = getelementptr %struct.amdgpu_cs_post_dep, ptr %37, i32 %i.038.i
  %chain.i = getelementptr %struct.amdgpu_cs_post_dep, ptr %37, i32 %i.038.i, i32 1
  %38 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chain.i, align 4
  %tobool.not.i163 = icmp eq ptr %39, null
  br i1 %tobool.not.i163, label %for.body.i.if.else.i_crit_edge, label %land.lhs.true.i

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %point.i = getelementptr %struct.amdgpu_cs_post_dep, ptr %37, i32 %i.038.i, i32 2
  %40 = ptrtoint ptr %point.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %point.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %tobool3.not.i = icmp eq i64 %41, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i164

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i164:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i162, align 8
  %44 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fence, align 8
  call void @drm_syncobj_add_point(ptr noundef %43, ptr noundef nonnull %39, ptr noundef %45, i64 noundef %41) #9
  %46 = ptrtoint ptr %post_deps.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %post_deps.i, align 8
  %chain14.i = getelementptr %struct.amdgpu_cs_post_dep, ptr %47, i32 %i.038.i, i32 1
  %48 = ptrtoint ptr %chain14.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %chain14.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %49 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i162, align 8
  %51 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fence, align 8
  call void @drm_syncobj_replace_fence(ptr noundef %50, ptr noundef %52) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i164
  %inc.i = add nuw i32 %i.038.i, 1
  %53 = ptrtoint ptr %num_post_deps.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_post_deps.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %54
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.amdgpu_cs_post_dependencies.exit_crit_edge

for.inc.i.amdgpu_cs_post_dependencies.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_post_dependencies.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

amdgpu_cs_post_dependencies.exit:                 ; preds = %for.inc.i.amdgpu_cs_post_dependencies.exit_crit_edge, %dma_fence_get.exit.amdgpu_cs_post_dependencies.exit_crit_edge
  %preamble_status = getelementptr inbounds %struct.amdgpu_job, ptr %8, i32 0, i32 7
  %55 = ptrtoint ptr %preamble_status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %preamble_status, align 4
  %and = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %amdgpu_cs_post_dependencies.exit.if.end27_crit_edge, label %land.lhs.true

amdgpu_cs_post_dependencies.exit.if.end27_crit_edge: ; preds = %amdgpu_cs_post_dependencies.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %amdgpu_cs_post_dependencies.exit
  %57 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx, align 8
  %preamble_presented = getelementptr inbounds %struct.amdgpu_ctx, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %preamble_presented to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %preamble_presented, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool21.not = icmp eq i8 %60, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %or24 = or i32 %56, 2
  %61 = ptrtoint ptr %preamble_status to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or24, ptr %preamble_status, align 4
  %62 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx, align 8
  %preamble_presented26 = getelementptr inbounds %struct.amdgpu_ctx, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %preamble_presented26 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %preamble_presented26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %land.lhs.true.if.end27_crit_edge, %amdgpu_cs_post_dependencies.exit.if.end27_crit_edge
  %65 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %seq, align 8
  %67 = ptrtoint ptr %cs to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %cs, align 8
  %uf_sequence = getelementptr inbounds %struct.amdgpu_job, ptr %8, i32 0, i32 22
  %68 = ptrtoint ptr %uf_sequence to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %66, ptr %uf_sequence, align 8
  call void @amdgpu_job_free_resources(ptr noundef %8) #9
  call fastcc void @trace_amdgpu_cs_ioctl(ptr noundef %8)
  %ticket = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 7
  call void @amdgpu_vm_bo_trace_cs(ptr noundef %3, ptr noundef %ticket) #9
  call void @drm_sched_entity_push_job(ptr noundef %8) #9
  %69 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %p, align 8
  call void @amdgpu_vm_move_to_lru_tail(ptr noundef %70, ptr noundef %3) #9
  %71 = ptrtoint ptr %bo_list to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bo_list, align 4
  %arrayidx.i165 = getelementptr %struct.amdgpu_bo_list, ptr %72, i32 1
  %num_entries37190 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %num_entries37190 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_entries37190, align 4
  %arrayidx1.i167192 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i165, i32 %74
  %cmp39.not193 = icmp eq ptr %arrayidx.i165, %arrayidx1.i167192
  br i1 %cmp39.not193, label %if.end27.for.end93_crit_edge, label %if.end27.for.body40_crit_edge

if.end27.for.body40_crit_edge:                    ; preds = %if.end27
  br label %for.body40

if.end27.for.end93_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

for.body40:                                       ; preds = %cleanup.for.body40_crit_edge, %if.end27.for.body40_crit_edge
  %e.1194 = phi ptr [ %incdec.ptr92, %cleanup.for.body40_crit_edge ], [ %arrayidx.i165, %if.end27.for.body40_crit_edge ]
  %chain45 = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %e.1194, i32 0, i32 2
  %75 = ptrtoint ptr %chain45 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chain45, align 4
  %tobool46.not = icmp eq ptr %76, null
  br i1 %tobool46.not, label %for.body40.cleanup_crit_edge, label %if.end48

for.body40.cleanup_crit_edge:                     ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %for.body40
  %bo42 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.1194, i32 0, i32 1
  %77 = ptrtoint ptr %bo42 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bo42, align 4
  %resv44 = getelementptr inbounds %struct.drm_gem_object, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %resv44 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %resv44, align 8
  %fence_excl.i = getelementptr inbounds %struct.dma_resv, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %fence_excl.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %fence_excl.i, align 4
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %80, i32 0, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i168 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i168, label %lor.lhs.false.i, label %if.end48.dma_resv_excl_fence.exit_crit_edge

if.end48.dma_resv_excl_fence.exit_crit_edge:      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

lor.lhs.false.i:                                  ; preds = %if.end48
  %call2.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i169 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i169, label %land.lhs.true.i170, label %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge

lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

land.lhs.true.i170:                               ; preds = %lor.lhs.false.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i170.dma_resv_excl_fence.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i170.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i170
  %.b12.i = load i1, ptr @dma_resv_excl_fence.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, label %if.then.i171

land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

if.then.i171:                                     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @dma_resv_excl_fence.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 440, ptr noundef nonnull @.str.12) #9
  br label %dma_resv_excl_fence.exit

dma_resv_excl_fence.exit:                         ; preds = %if.then.i171, %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, %land.lhs.true.i170.dma_resv_excl_fence.exit_crit_edge, %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge, %if.end48.dma_resv_excl_fence.exit_crit_edge
  %83 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fence, align 8
  %tobool.not.i172 = icmp eq ptr %84, null
  br i1 %tobool.not.i172, label %dma_resv_excl_fence.exit.dma_fence_get.exit183_crit_edge, label %if.then.i177

dma_resv_excl_fence.exit.dma_fence_get.exit183_crit_edge: ; preds = %dma_resv_excl_fence.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit183

if.then.i177:                                     ; preds = %dma_resv_excl_fence.exit
  %refcount.i173 = getelementptr inbounds %struct.dma_fence, ptr %84, i32 0, i32 6
  %call.i.i.i.i.i.i.i174 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i173, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i173, i32 1, i32 3, i32 1) #9
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i173, ptr %refcount.i173, i32 1, ptr elementtype(i32) %refcount.i173) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i175 = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i175)
  %tobool1.not.i.i.i.i.i176 = icmp eq i32 %asmresult.i.i.i.i.i.i.i175, 0
  br i1 %tobool1.not.i.i.i.i.i176, label %if.then.i177.if.end15.sink.split.i.i.i.i.i182_crit_edge, label %if.else.i.i.i.i.i180, !prof !60

if.then.i177.if.end15.sink.split.i.i.i.i.i182_crit_edge: ; preds = %if.then.i177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i182

if.else.i.i.i.i.i180:                             ; preds = %if.then.i177
  %add.i.i.i.i.i178 = add i32 %asmresult.i.i.i.i.i.i.i175, 1
  %86 = or i32 %add.i.i.i.i.i178, %asmresult.i.i.i.i.i.i.i175
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %.not.i.i.i.i.i179 = icmp sgt i32 %86, -1
  br i1 %.not.i.i.i.i.i179, label %if.else.i.i.i.i.i180.dma_fence_get.exit183_crit_edge, label %if.else.i.i.i.i.i180.if.end15.sink.split.i.i.i.i.i182_crit_edge, !prof !61

if.else.i.i.i.i.i180.if.end15.sink.split.i.i.i.i.i182_crit_edge: ; preds = %if.else.i.i.i.i.i180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i182

if.else.i.i.i.i.i180.dma_fence_get.exit183_crit_edge: ; preds = %if.else.i.i.i.i.i180
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit183

if.end15.sink.split.i.i.i.i.i182:                 ; preds = %if.else.i.i.i.i.i180.if.end15.sink.split.i.i.i.i.i182_crit_edge, %if.then.i177.if.end15.sink.split.i.i.i.i.i182_crit_edge
  %.sink.i.i.i.i.i181 = phi i32 [ 2, %if.then.i177.if.end15.sink.split.i.i.i.i.i182_crit_edge ], [ 1, %if.else.i.i.i.i.i180.if.end15.sink.split.i.i.i.i.i182_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i173, i32 noundef %.sink.i.i.i.i.i181) #9
  br label %dma_fence_get.exit183

dma_fence_get.exit183:                            ; preds = %if.end15.sink.split.i.i.i.i.i182, %if.else.i.i.i.i.i180.dma_fence_get.exit183_crit_edge, %dma_resv_excl_fence.exit.dma_fence_get.exit183_crit_edge
  call void @dma_fence_chain_init(ptr noundef nonnull %76, ptr noundef %82, ptr noundef %84, i64 noundef 1) #9
  %87 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fence, align 8
  call void @dma_resv_add_shared_fence(ptr noundef %80, ptr noundef %88) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  %89 = ptrtoint ptr %fence_excl.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %76, ptr %fence_excl.i, align 4
  %90 = ptrtoint ptr %chain45 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %chain45, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_fence_get.exit183, %for.body40.cleanup_crit_edge
  %incdec.ptr92 = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.1194, i32 1
  %91 = ptrtoint ptr %bo_list to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bo_list, align 4
  %num_entries37 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %num_entries37 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_entries37, align 4
  %arrayidx.i166 = getelementptr %struct.amdgpu_bo_list, ptr %92, i32 1
  %arrayidx1.i167 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i166, i32 %94
  %cmp39.not = icmp eq ptr %incdec.ptr92, %arrayidx1.i167
  br i1 %cmp39.not, label %cleanup.for.end93_crit_edge, label %cleanup.for.body40_crit_edge

cleanup.for.body40_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40

cleanup.for.end93_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

for.end93:                                        ; preds = %cleanup.for.end93_crit_edge, %if.end27.for.end93_crit_edge
  %validated = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 11
  %95 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fence, align 8
  call void @ttm_eu_fence_buffer_objects(ptr noundef %ticket, ptr noundef %validated, ptr noundef %96) #9
  %97 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %p, align 8
  %notifier_lock97 = getelementptr inbounds %struct.amdgpu_device, ptr %98, i32 0, i32 145
  call void @mutex_unlock(ptr noundef %notifier_lock97) #9
  br label %cleanup101

error_unlock:                                     ; preds = %if.then14, %entry.error_unlock_crit_edge
  %r.1 = phi i32 [ %call, %entry.error_unlock_crit_edge ], [ -11, %if.then14 ]
  tail call void @amdgpu_job_free(ptr noundef %8) #9
  br label %cleanup101

cleanup101:                                       ; preds = %error_unlock, %for.end93
  %retval.0 = phi i32 [ %r.1, %error_unlock ], [ 0, %for.end93 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_cs_wait_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr nocapture noundef readonly %filp) local_unnamed_addr #0 align 64 {
entry:
  %entity = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout1 = getelementptr inbounds %struct.drm_amdgpu_wait_cs_in, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %timeout1, align 8
  %call = tail call i32 @amdgpu_gem_timeout(i64 noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entity) #9
  %2 = ptrtoint ptr %entity to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %entity, align 4, !annotation !66
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %filp, i32 0, i32 19
  %3 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_priv, align 4
  %ctx_id = getelementptr inbounds %struct.drm_amdgpu_wait_cs_in, ptr %data, i32 0, i32 5
  %5 = ptrtoint ptr %ctx_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctx_id, align 4
  %call2 = tail call ptr @amdgpu_ctx_get(ptr noundef %4, i32 noundef %6) #9
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ip_type = getelementptr inbounds %struct.drm_amdgpu_wait_cs_in, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ip_type, align 8
  %ip_instance = getelementptr inbounds %struct.drm_amdgpu_wait_cs_in, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %ip_instance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ip_instance, align 4
  %ring = getelementptr inbounds %struct.drm_amdgpu_wait_cs_in, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ring, align 8
  %call3 = call i32 @amdgpu_ctx_get_entity(ptr noundef nonnull %call2, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %entity) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 @amdgpu_ctx_put(ptr noundef nonnull %call2) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %13 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entity, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %data, align 8
  %call7 = call ptr @amdgpu_ctx_get_fence(ptr noundef nonnull %call2, ptr noundef %14, i64 noundef %16) #9
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call7 to i32
  br label %if.end21

if.else:                                          ; preds = %if.end6
  %tobool11.not = icmp eq ptr %call7, null
  br i1 %tobool11.not, label %if.end21.thread, label %if.then12

if.end21.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call2256 = call i32 @amdgpu_ctx_put(ptr noundef nonnull %call2) #9
  br label %if.end25

if.then12:                                        ; preds = %if.else
  %call13 = call i32 @dma_fence_wait_timeout(ptr noundef nonnull %call7, i1 noundef zeroext true, i32 noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp sgt i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true, label %if.then12.if.then.i_crit_edge

if.then12.if.then.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.dma_fence, ptr %call7, i32 0, i32 7
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  %spec.select = select i1 %tobool15.not, i32 %call13, i32 %19
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true, %if.then12.if.then.i_crit_edge
  %r.0 = phi i32 [ %call13, %if.then12.if.then.i_crit_edge ], [ %spec.select, %land.lhs.true ]
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call7, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end21_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.if.end21_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end21

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @dma_fence_release(ptr noundef %refcount.i) #9, !callees !71
  br label %if.end21

if.end21:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end21_crit_edge, %if.then9
  %r.1 = phi i32 [ %17, %if.then9 ], [ %r.0, %if.end5.i.i.i.i.i.if.end21_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i ], [ %r.0, %if.then.i.i ]
  %call22 = call i32 @amdgpu_ctx_put(ptr noundef nonnull %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.1)
  %cmp23 = icmp slt i32 %r.1, 0
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end21.if.end25_crit_edge, %if.end21.thread
  %r.158 = phi i32 [ 1, %if.end21.thread ], [ %r.1, %if.end21.if.end25_crit_edge ]
  %21 = getelementptr inbounds i8, ptr %data, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.158)
  %cmp26 = icmp eq i32 %r.158, 0
  %23 = zext i1 %cmp26 to i64
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then4 ], [ 0, %if.end25 ], [ -22, %entry.cleanup_crit_edge ], [ %r.1, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entity) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gem_timeout(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_ctx_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ctx_get_entity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ctx_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_ctx_get_fence(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_cs_fence_to_handle_ioctl(ptr nocapture noundef readnone %dev, ptr noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %syncobj = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %syncobj) #9
  %0 = ptrtoint ptr %syncobj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %syncobj, align 4, !annotation !66
  %call2 = tail call fastcc ptr @amdgpu_cs_get_fence(ptr noundef %filp, ptr noundef %data)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call ptr @dma_fence_get_stub() #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %fence.0 = phi ptr [ %call2, %if.end.if.end7_crit_edge ], [ %call6, %if.then5 ]
  %what = getelementptr inbounds %struct.anon.116, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %what to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %what, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %3, label %if.end7.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb20
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %call8 = call i32 @drm_syncobj_create(ptr noundef nonnull %syncobj, i32 noundef 0, ptr noundef %fence.0) #9
  %tobool.not.i = icmp eq ptr %fence.0, null
  br i1 %tobool.not.i, label %sw.bb.dma_fence_put.exit_crit_edge, label %if.then.i

sw.bb.dma_fence_put.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %sw.bb
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence.0, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %5 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @dma_fence_release(ptr noundef %refcount.i) #9, !callees !71
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %sw.bb.dma_fence_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %dma_fence_put.exit.cleanup_crit_edge

dma_fence_put.exit.cleanup_crit_edge:             ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %dma_fence_put.exit
  %6 = ptrtoint ptr %syncobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syncobj, align 4
  %call12 = call i32 @drm_syncobj_get_handle(ptr noundef %filp, ptr noundef %7, ptr noundef %data) #9
  %8 = ptrtoint ptr %syncobj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %syncobj, align 4
  %call.i.i.i.i.i.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #9
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i60 = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i60)
  %cmp.i.i.i.i.i61 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i60, 1
  br i1 %cmp.i.i.i.i.i61, label %if.then.i.i65, label %if.end5.i.i.i.i.i63

if.end5.i.i.i.i.i63:                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i60)
  %.not.i.i.i.i.i62 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i60, 0
  br i1 %.not.i.i.i.i.i62, label %if.end5.i.i.i.i.i63.cleanup_crit_edge, label %if.then10.i.i.i.i.i64, !prof !61

if.end5.i.i.i.i.i63.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i64:                            ; preds = %if.end5.i.i.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #9
  br label %cleanup

if.then.i.i65:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @drm_syncobj_free(ptr noundef %9) #9, !callees !71
  br label %cleanup

sw.bb13:                                          ; preds = %if.end7
  %call14 = call i32 @drm_syncobj_create(ptr noundef nonnull %syncobj, i32 noundef 0, ptr noundef %fence.0) #9
  %tobool.not.i66 = icmp eq ptr %fence.0, null
  br i1 %tobool.not.i66, label %sw.bb13.dma_fence_put.exit76_crit_edge, label %if.then.i71

sw.bb13.dma_fence_put.exit76_crit_edge:           ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit76

if.then.i71:                                      ; preds = %sw.bb13
  %refcount.i67 = getelementptr inbounds %struct.dma_fence, ptr %fence.0, i32 0, i32 6
  %call.i.i.i.i.i.i.i68 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i67, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @llvm.prefetch.p0(ptr %refcount.i67, i32 1, i32 3, i32 1) #9
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i67, ptr %refcount.i67, i32 1, ptr elementtype(i32) %refcount.i67) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i69 = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i69)
  %cmp.i.i.i.i.i70 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i69, 1
  br i1 %cmp.i.i.i.i.i70, label %if.then.i.i75, label %if.end5.i.i.i.i.i73

if.end5.i.i.i.i.i73:                              ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i69)
  %.not.i.i.i.i.i72 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i69, 0
  br i1 %.not.i.i.i.i.i72, label %if.end5.i.i.i.i.i73.dma_fence_put.exit76_crit_edge, label %if.then10.i.i.i.i.i74, !prof !61

if.end5.i.i.i.i.i73.dma_fence_put.exit76_crit_edge: ; preds = %if.end5.i.i.i.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit76

if.then10.i.i.i.i.i74:                            ; preds = %if.end5.i.i.i.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i67, i32 noundef 3) #9
  br label %dma_fence_put.exit76

if.then.i.i75:                                    ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @dma_fence_release(ptr noundef %refcount.i67) #9, !callees !71
  br label %dma_fence_put.exit76

dma_fence_put.exit76:                             ; preds = %if.then.i.i75, %if.then10.i.i.i.i.i74, %if.end5.i.i.i.i.i73.dma_fence_put.exit76_crit_edge, %sw.bb13.dma_fence_put.exit76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %dma_fence_put.exit76.cleanup_crit_edge

dma_fence_put.exit76.cleanup_crit_edge:           ; preds = %dma_fence_put.exit76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %dma_fence_put.exit76
  %12 = ptrtoint ptr %syncobj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %syncobj, align 4
  %call19 = call i32 @drm_syncobj_get_fd(ptr noundef %13, ptr noundef %data) #9
  %14 = ptrtoint ptr %syncobj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %syncobj, align 4
  %call.i.i.i.i.i.i.i77 = call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #9
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i78 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i78)
  %cmp.i.i.i.i.i79 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i78, 1
  br i1 %cmp.i.i.i.i.i79, label %if.then.i.i83, label %if.end5.i.i.i.i.i81

if.end5.i.i.i.i.i81:                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i78)
  %.not.i.i.i.i.i80 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i78, 0
  br i1 %.not.i.i.i.i.i80, label %if.end5.i.i.i.i.i81.cleanup_crit_edge, label %if.then10.i.i.i.i.i82, !prof !61

if.end5.i.i.i.i.i81.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i82:                            ; preds = %if.end5.i.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #9
  br label %cleanup

if.then.i.i83:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @drm_syncobj_free(ptr noundef %15) #9, !callees !71
  br label %cleanup

sw.bb20:                                          ; preds = %if.end7
  %call21 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then22, label %if.end23

if.then22:                                        ; preds = %sw.bb20
  %tobool.not.i85 = icmp eq ptr %fence.0, null
  br i1 %tobool.not.i85, label %if.then22.cleanup_crit_edge, label %if.then.i90

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i90:                                      ; preds = %if.then22
  %refcount.i86 = getelementptr inbounds %struct.dma_fence, ptr %fence.0, i32 0, i32 6
  %call.i.i.i.i.i.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i86, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %refcount.i86, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i86, ptr %refcount.i86, i32 1, ptr elementtype(i32) %refcount.i86) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i88 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i88)
  %cmp.i.i.i.i.i89 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i88, 1
  br i1 %cmp.i.i.i.i.i89, label %if.then.i.i94, label %if.end5.i.i.i.i.i92

if.end5.i.i.i.i.i92:                              ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i88)
  %.not.i.i.i.i.i91 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i88, 0
  br i1 %.not.i.i.i.i.i91, label %if.end5.i.i.i.i.i92.cleanup_crit_edge, label %if.then10.i.i.i.i.i93, !prof !61

if.end5.i.i.i.i.i92.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i93:                            ; preds = %if.end5.i.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i86, i32 noundef 3) #9
  br label %cleanup

if.then.i.i94:                                    ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @dma_fence_release(ptr noundef %refcount.i86) #9, !callees !71
  br label %cleanup

if.end23:                                         ; preds = %sw.bb20
  %call24 = tail call ptr @sync_file_create(ptr noundef %fence.0) #9
  %tobool.not.i96 = icmp eq ptr %fence.0, null
  br i1 %tobool.not.i96, label %if.end23.dma_fence_put.exit106_crit_edge, label %if.then.i101

if.end23.dma_fence_put.exit106_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit106

if.then.i101:                                     ; preds = %if.end23
  %refcount.i97 = getelementptr inbounds %struct.dma_fence, ptr %fence.0, i32 0, i32 6
  %call.i.i.i.i.i.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i97, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %refcount.i97, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i97, ptr %refcount.i97, i32 1, ptr elementtype(i32) %refcount.i97) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i99 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i99)
  %cmp.i.i.i.i.i100 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i99, 1
  br i1 %cmp.i.i.i.i.i100, label %if.then.i.i105, label %if.end5.i.i.i.i.i103

if.end5.i.i.i.i.i103:                             ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i99)
  %.not.i.i.i.i.i102 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i99, 0
  br i1 %.not.i.i.i.i.i102, label %if.end5.i.i.i.i.i103.dma_fence_put.exit106_crit_edge, label %if.then10.i.i.i.i.i104, !prof !61

if.end5.i.i.i.i.i103.dma_fence_put.exit106_crit_edge: ; preds = %if.end5.i.i.i.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit106

if.then10.i.i.i.i.i104:                           ; preds = %if.end5.i.i.i.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i97, i32 noundef 3) #9
  br label %dma_fence_put.exit106

if.then.i.i105:                                   ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @dma_fence_release(ptr noundef %refcount.i97) #9, !callees !71
  br label %dma_fence_put.exit106

dma_fence_put.exit106:                            ; preds = %if.then.i.i105, %if.then10.i.i.i.i.i104, %if.end5.i.i.i.i.i103.dma_fence_put.exit106_crit_edge, %if.end23.dma_fence_put.exit106_crit_edge
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %dma_fence_put.exit106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_unused_fd(i32 noundef %call21) #9
  br label %cleanup

if.end27:                                         ; preds = %dma_fence_put.exit106
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call24, align 4
  tail call void @fd_install(i32 noundef %call21, ptr noundef %20) #9
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call21, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then26, %if.then.i.i94, %if.then10.i.i.i.i.i93, %if.end5.i.i.i.i.i92.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.then.i.i83, %if.then10.i.i.i.i.i82, %if.end5.i.i.i.i.i81.cleanup_crit_edge, %dma_fence_put.exit76.cleanup_crit_edge, %if.then.i.i65, %if.then10.i.i.i.i.i64, %if.end5.i.i.i.i.i63.cleanup_crit_edge, %dma_fence_put.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.end27 ], [ -12, %if.then26 ], [ %call8, %dma_fence_put.exit.cleanup_crit_edge ], [ %call14, %dma_fence_put.exit76.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call12, %if.end5.i.i.i.i.i63.cleanup_crit_edge ], [ %call12, %if.then10.i.i.i.i.i64 ], [ %call12, %if.then.i.i65 ], [ %call19, %if.end5.i.i.i.i.i81.cleanup_crit_edge ], [ %call19, %if.then10.i.i.i.i.i82 ], [ %call19, %if.then.i.i83 ], [ %call21, %if.then22.cleanup_crit_edge ], [ %call21, %if.end5.i.i.i.i.i92.cleanup_crit_edge ], [ %call21, %if.then10.i.i.i.i.i93 ], [ %call21, %if.then.i.i94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %syncobj) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @amdgpu_cs_get_fence(ptr nocapture noundef readonly %filp, ptr nocapture noundef readonly %user) unnamed_addr #0 align 64 {
entry:
  %entity = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entity) #9
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %entity, align 4, !annotation !66
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %filp, i32 0, i32 19
  %1 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_priv, align 4
  %3 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %user, align 8
  %call = tail call ptr @amdgpu_ctx_get(ptr noundef %2, i32 noundef %4) #9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ip_type = getelementptr inbounds %struct.drm_amdgpu_fence, ptr %user, i32 0, i32 1
  %5 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ip_type, align 4
  %ip_instance = getelementptr inbounds %struct.drm_amdgpu_fence, ptr %user, i32 0, i32 2
  %7 = ptrtoint ptr %ip_instance to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ip_instance, align 8
  %ring = getelementptr inbounds %struct.drm_amdgpu_fence, ptr %user, i32 0, i32 3
  %9 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring, align 4
  %call2 = call i32 @amdgpu_ctx_get_entity(ptr noundef nonnull %call, i32 noundef %6, i32 noundef %8, i32 noundef %10, ptr noundef nonnull %entity) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call i32 @amdgpu_ctx_put(ptr noundef nonnull %call) #9
  %11 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entity, align 4
  %seq_no = getelementptr inbounds %struct.drm_amdgpu_fence, ptr %user, i32 0, i32 4
  %14 = ptrtoint ptr %seq_no to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %seq_no, align 8
  %call7 = call ptr @amdgpu_ctx_get_fence(ptr noundef nonnull %call, ptr noundef %13, i64 noundef %15) #9
  %call8 = call i32 @amdgpu_ctx_put(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then3 ], [ %call7, %if.end6 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entity) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_fence_get_stub() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_get_handle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_get_fd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_cs_wait_fences_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr nocapture noundef readonly %filp) local_unnamed_addr #0 align 64 {
entry:
  %first.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_count1 = getelementptr inbounds %struct.drm_amdgpu_wait_fences_in, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %fence_count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fence_count1, align 8
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 24) #9
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end7.i, !prof !60

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #12
  %cmp = icmp eq ptr %call8.i, null
  br i1 %cmp, label %if.end7.i.cleanup_crit_edge, label %if.end8.i.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.i.i = icmp slt i32 %4, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.end59.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.err_free_fences_crit_edge, label %if.then27.i.i, !prof !61

land.rhs16.i.i.err_free_fences_crit_edge:         ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_fences

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %err_free_fences

if.end59.i.i:                                     ; preds = %if.end8.i.i
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data, align 8
  %conv6 = trunc i64 %6 to i32
  %7 = inttoptr i32 %conv6 to ptr
  tail call void @__check_object_size(ptr noundef nonnull %call8.i, i32 noundef %4, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.end.i.i_crit_edge:                ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %4, i32 -1226833920) #13, !srcloc !62
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !61

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i, i32 noundef %4) #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !63
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call8.i, ptr noundef %7, i32 noundef %4) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end59.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %if.end59.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.then11.i.i, !prof !61

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call8.i, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %err_free_fences

if.end9:                                          ; preds = %if.end.i.i
  %wait_all = getelementptr inbounds %struct.drm_amdgpu_wait_fences_in, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %wait_all to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wait_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %15 = ptrtoint ptr %fence_count1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fence_count1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13.not.i = icmp eq i32 %16, 0
  br i1 %cmp13.not.i, label %if.then11.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then11.for.end.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then11
  %timeout_ns.i = getelementptr inbounds %struct.drm_amdgpu_wait_fences_in, ptr %data, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %r.015.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %r.1.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %timeout_ns.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %timeout_ns.i, align 8
  %call.i = tail call i32 @amdgpu_gem_timeout(i64 noundef %18) #9
  %arrayidx.i = getelementptr %struct.drm_amdgpu_fence, ptr %call8.i, i32 %i.014.i
  %call2.i = tail call fastcc ptr @amdgpu_cs_get_fence(ptr noundef %filp, ptr noundef %arrayidx.i) #9
  %cmp.i.i36 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i36, label %if.then.i37, label %if.else.i

if.then.i37:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call2.i to i32
  br label %err_free_fences

if.else.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.then.i.i38

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i.i38:                                    ; preds = %if.else.i
  %call7.i = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %call2.i, i1 noundef zeroext true, i32 noundef %call.i) #9
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %call2.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i39, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %dma_fence_put.exit.i

if.then.i.i.i39:                                  ; preds = %if.then.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @dma_fence_release(ptr noundef %refcount.i.i) #9, !callees !71
  br label %dma_fence_put.exit.i

dma_fence_put.exit.i:                             ; preds = %if.then.i.i.i39, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %dma_fence_put.exit.i.err_free_fences_crit_edge, label %if.end10.i

dma_fence_put.exit.i.err_free_fences_crit_edge:   ; preds = %dma_fence_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_fences

if.end10.i:                                       ; preds = %dma_fence_put.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp11.i = icmp eq i32 %call7.i, 0
  br i1 %cmp11.i, label %if.end10.i.for.end.i_crit_edge, label %if.end13.i

if.end10.i.for.end.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end13.i:                                       ; preds = %if.end10.i
  %error.i = getelementptr inbounds %struct.dma_fence, ptr %call2.i, i32 0, i32 7
  %21 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14.not.i = icmp eq i32 %22, 0
  br i1 %tobool14.not.i, label %if.end13.i.for.inc.i_crit_edge, label %if.end13.i.err_free_fences_crit_edge

if.end13.i.err_free_fences_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_fences

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge
  %r.1.ph.i = phi i32 [ %r.015.i, %if.else.i.for.inc.i_crit_edge ], [ %call7.i, %if.end13.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %16
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end10.i.for.end.i_crit_edge, %if.then11.for.end.i_crit_edge
  %r.2.i = phi i32 [ 1, %if.then11.for.end.i_crit_edge ], [ %r.1.ph.i, %for.inc.i.for.end.i_crit_edge ], [ 0, %if.end10.i.for.end.i_crit_edge ]
  %23 = call ptr @memset(ptr %data, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.2.i)
  %cmp19.i = icmp sgt i32 %r.2.i, 0
  %conv.i = zext i1 %cmp19.i to i32
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv.i, ptr %data, align 8
  br label %err_free_fences

if.else:                                          ; preds = %if.end9
  %timeout_ns.i40 = getelementptr inbounds %struct.drm_amdgpu_wait_fences_in, ptr %data, i32 0, i32 3
  %25 = ptrtoint ptr %timeout_ns.i40 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %timeout_ns.i40, align 8
  %call.i41 = tail call i32 @amdgpu_gem_timeout(i64 noundef %26) #9
  %27 = ptrtoint ptr %fence_count1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fence_count1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first.i) #9
  %29 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %first.i, align 4
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #9
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %if.else.amdgpu_cs_wait_any_fence.exit_crit_edge, label %if.end7.i.i.i, !prof !60

if.else.amdgpu_cs_wait_any_fence.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_wait_any_fence.exit

if.end7.i.i.i:                                    ; preds = %if.else
  %32 = extractvalue { i32, i1 } %30, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #12
  %cmp.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp.i, label %if.end7.i.i.i.amdgpu_cs_wait_any_fence.exit_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.amdgpu_cs_wait_any_fence.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_cs_wait_any_fence.exit

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp314.not.i = icmp eq i32 %28, 0
  br i1 %cmp314.not.i, label %for.cond.preheader.i.for.end.i52_crit_edge, label %for.cond.preheader.i.for.body.i46_crit_edge

for.cond.preheader.i.for.body.i46_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i46

for.cond.preheader.i.for.end.i52_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i52

for.body.i46:                                     ; preds = %for.inc.i51.for.body.i46_crit_edge, %for.cond.preheader.i.for.body.i46_crit_edge
  %i.015.i = phi i32 [ %inc.i49, %for.inc.i51.for.body.i46_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i46_crit_edge ]
  %arrayidx.i44 = getelementptr %struct.drm_amdgpu_fence, ptr %call8.i, i32 %i.015.i
  %call4.i = tail call fastcc ptr @amdgpu_cs_get_fence(ptr noundef %filp, ptr noundef %arrayidx.i44) #9
  %cmp.i.i45 = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i45, label %cleanup.i, label %if.else.i48

if.else.i48:                                      ; preds = %for.body.i46
  %tobool.not.i47 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i47, label %cleanup.thread8.i, label %for.inc.i51

cleanup.thread8.i:                                ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.015.i, ptr %first.i, align 4
  br label %out.i

cleanup.i:                                        ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call4.i to i32
  br label %err_free_fence_array.i

for.inc.i51:                                      ; preds = %if.else.i48
  %arrayidx9.i = getelementptr ptr, ptr %call8.i.i.i, i32 %i.015.i
  %35 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call4.i, ptr %arrayidx9.i, align 4
  %inc.i49 = add nuw i32 %i.015.i, 1
  %exitcond.not.i50 = icmp eq i32 %inc.i49, %28
  br i1 %exitcond.not.i50, label %for.inc.i51.for.end.i52_crit_edge, label %for.inc.i51.for.body.i46_crit_edge

for.inc.i51.for.body.i46_crit_edge:               ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i46

for.inc.i51.for.end.i52_crit_edge:                ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i52

for.end.i52:                                      ; preds = %for.inc.i51.for.end.i52_crit_edge, %for.cond.preheader.i.for.end.i52_crit_edge
  %call13.i = call i32 @dma_fence_wait_any_timeout(ptr noundef nonnull %call8.i.i.i, i32 noundef %28, i1 noundef zeroext true, i32 noundef %call.i41, ptr noundef nonnull %first.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %for.end.i52.err_free_fence_array.i_crit_edge, label %for.end.i52.out.i_crit_edge

for.end.i52.out.i_crit_edge:                      ; preds = %for.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

for.end.i52.err_free_fence_array.i_crit_edge:     ; preds = %for.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_fence_array.i

out.i:                                            ; preds = %for.end.i52.out.i_crit_edge, %cleanup.thread8.i
  %r.2.i53 = phi i32 [ %call13.i, %for.end.i52.out.i_crit_edge ], [ 1, %cleanup.thread8.i ]
  %36 = call ptr @memset(ptr %fence_count1, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.2.i53)
  %cmp17.i = icmp ne i32 %r.2.i53, 0
  %conv.i54 = zext i1 %cmp17.i to i32
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i54, ptr %data, align 8
  %38 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %first.i, align 4
  %first_signaled.i = getelementptr inbounds %struct.drm_amdgpu_wait_fences_out, ptr %data, i32 0, i32 1
  %40 = ptrtoint ptr %first_signaled.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %first_signaled.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %28)
  %cmp18.i = icmp ult i32 %39, %28
  br i1 %cmp18.i, label %land.lhs.true.i55, label %out.i.err_free_fence_array.i_crit_edge

out.i.err_free_fence_array.i_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_fence_array.i

land.lhs.true.i55:                                ; preds = %out.i
  %arrayidx20.i = getelementptr ptr, ptr %call8.i.i.i, i32 %39
  %41 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx20.i, align 4
  %tobool21.not.i = icmp eq ptr %42, null
  br i1 %tobool21.not.i, label %land.lhs.true.i55.err_free_fence_array.i_crit_edge, label %if.then22.i

land.lhs.true.i55.err_free_fence_array.i_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_fence_array.i

if.then22.i:                                      ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #11
  %error.i56 = getelementptr inbounds %struct.dma_fence, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %error.i56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %error.i56, align 8
  br label %err_free_fence_array.i

err_free_fence_array.i:                           ; preds = %if.then22.i, %land.lhs.true.i55.err_free_fence_array.i_crit_edge, %out.i.err_free_fence_array.i_crit_edge, %for.end.i52.err_free_fence_array.i_crit_edge, %cleanup.i
  %r.3.i = phi i32 [ %34, %cleanup.i ], [ %44, %if.then22.i ], [ %call13.i, %for.end.i52.err_free_fence_array.i_crit_edge ], [ 0, %land.lhs.true.i55.err_free_fence_array.i_crit_edge ], [ 0, %out.i.err_free_fence_array.i_crit_edge ]
  br i1 %cmp314.not.i, label %err_free_fence_array.i.for.end33.i_crit_edge, label %err_free_fence_array.i.for.body29.i_crit_edge

err_free_fence_array.i.for.body29.i_crit_edge:    ; preds = %err_free_fence_array.i
  br label %for.body29.i

err_free_fence_array.i.for.end33.i_crit_edge:     ; preds = %err_free_fence_array.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end33.i

for.body29.i:                                     ; preds = %dma_fence_put.exit.i66.for.body29.i_crit_edge, %err_free_fence_array.i.for.body29.i_crit_edge
  %i.117.i = phi i32 [ %inc32.i, %dma_fence_put.exit.i66.for.body29.i_crit_edge ], [ 0, %err_free_fence_array.i.for.body29.i_crit_edge ]
  %arrayidx30.i = getelementptr ptr, ptr %call8.i.i.i, i32 %i.117.i
  %45 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx30.i, align 4
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %for.body29.i.dma_fence_put.exit.i66_crit_edge, label %if.then.i.i61

for.body29.i.dma_fence_put.exit.i66_crit_edge:    ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit.i66

if.then.i.i61:                                    ; preds = %for.body29.i
  %refcount.i.i57 = getelementptr inbounds %struct.dma_fence, ptr %46, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i58 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i57, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @llvm.prefetch.p0(ptr %refcount.i.i57, i32 1, i32 3, i32 1) #9
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i57, ptr %refcount.i.i57, i32 1, ptr elementtype(i32) %refcount.i.i57) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i.i59 = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i59)
  %cmp.i.i.i.i.i.i60 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i59, 1
  br i1 %cmp.i.i.i.i.i.i60, label %if.then.i.i.i65, label %if.end5.i.i.i.i.i.i63

if.end5.i.i.i.i.i.i63:                            ; preds = %if.then.i.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i59)
  %.not.i.i.i.i.i.i62 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i59, 0
  br i1 %.not.i.i.i.i.i.i62, label %if.end5.i.i.i.i.i.i63.dma_fence_put.exit.i66_crit_edge, label %if.then10.i.i.i.i.i.i64, !prof !61

if.end5.i.i.i.i.i.i63.dma_fence_put.exit.i66_crit_edge: ; preds = %if.end5.i.i.i.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit.i66

if.then10.i.i.i.i.i.i64:                          ; preds = %if.end5.i.i.i.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i57, i32 noundef 3) #9
  br label %dma_fence_put.exit.i66

if.then.i.i.i65:                                  ; preds = %if.then.i.i61
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @dma_fence_release(ptr noundef %refcount.i.i57) #9, !callees !71
  br label %dma_fence_put.exit.i66

dma_fence_put.exit.i66:                           ; preds = %if.then.i.i.i65, %if.then10.i.i.i.i.i.i64, %if.end5.i.i.i.i.i.i63.dma_fence_put.exit.i66_crit_edge, %for.body29.i.dma_fence_put.exit.i66_crit_edge
  %inc32.i = add nuw i32 %i.117.i, 1
  %exitcond22.not.i = icmp eq i32 %inc32.i, %28
  br i1 %exitcond22.not.i, label %dma_fence_put.exit.i66.for.end33.i_crit_edge, label %dma_fence_put.exit.i66.for.body29.i_crit_edge

dma_fence_put.exit.i66.for.body29.i_crit_edge:    ; preds = %dma_fence_put.exit.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29.i

dma_fence_put.exit.i66.for.end33.i_crit_edge:     ; preds = %dma_fence_put.exit.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end33.i

for.end33.i:                                      ; preds = %dma_fence_put.exit.i66.for.end33.i_crit_edge, %err_free_fence_array.i.for.end33.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  br label %amdgpu_cs_wait_any_fence.exit

amdgpu_cs_wait_any_fence.exit:                    ; preds = %for.end33.i, %if.end7.i.i.i.amdgpu_cs_wait_any_fence.exit_crit_edge, %if.else.amdgpu_cs_wait_any_fence.exit_crit_edge
  %retval.0.i67 = phi i32 [ %r.3.i, %for.end33.i ], [ -12, %if.end7.i.i.i.amdgpu_cs_wait_any_fence.exit_crit_edge ], [ -12, %if.else.amdgpu_cs_wait_any_fence.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first.i) #9
  br label %err_free_fences

err_free_fences:                                  ; preds = %amdgpu_cs_wait_any_fence.exit, %for.end.i, %if.end13.i.err_free_fences_crit_edge, %dma_fence_put.exit.i.err_free_fences_crit_edge, %if.then.i37, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.err_free_fences_crit_edge
  %r.0 = phi i32 [ %retval.0.i67, %amdgpu_cs_wait_any_fence.exit ], [ 0, %for.end.i ], [ %19, %if.then.i37 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.err_free_fences_crit_edge ], [ %call7.i, %dma_fence_put.exit.i.err_free_fences_crit_edge ], [ %22, %if.end13.i.err_free_fences_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_fences, %if.end7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %err_free_fences ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_cs_find_mapping(ptr noundef readonly %parser, i64 noundef %addr, ptr nocapture noundef %bo, ptr nocapture noundef writeonly %map) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %filp = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 1
  %0 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filp, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #9
  %4 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %div45 = lshr i64 %addr, 12
  %call = tail call ptr @amdgpu_vm_bo_lookup_mapping(ptr noundef %3, i64 noundef %div45) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %bo5 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bo5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bo5, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %9 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %bo, align 4
  %10 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %map, align 4
  %11 = load ptr, ptr %bo, align 4
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %11, i32 0, i32 4, i32 0, i32 9
  %12 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resv, align 8
  %ctx.i = getelementptr inbounds %struct.ww_mutex, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %ctx.i, align 4
  %ticket = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 7
  %cmp.not = icmp eq ptr %15, %ticket
  br i1 %cmp.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.amdgpu_bo, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %flags, align 8
  %and = and i64 %17, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool14.not = icmp eq i64 %and, 0
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then15:                                        ; preds = %if.end13
  %or = or i64 %17, 32
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or, ptr %flags, align 8
  %19 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bo, align 4
  %allowed_domains = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %allowed_domains to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %allowed_domains, align 4
  tail call void @amdgpu_bo_placement_from_domain(ptr noundef %20, i32 noundef %22) #9
  %23 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bo, align 4
  %tbo17 = getelementptr inbounds %struct.amdgpu_bo, ptr %24, i32 0, i32 4
  %placement = getelementptr inbounds %struct.amdgpu_bo, ptr %24, i32 0, i32 3
  %call18 = call i32 @ttm_bo_validate(ptr noundef %tbo17, ptr noundef %placement, ptr noundef nonnull %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then15.if.end22_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end22:                                         ; preds = %if.then15.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  %25 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bo, align 4
  %tbo23 = getelementptr inbounds %struct.amdgpu_bo, ptr %26, i32 0, i32 4
  %call24 = call i32 @amdgpu_ttm_alloc_gart(ptr noundef %tbo23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end22 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call18, %if.then15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_vm_bo_lookup_mapping(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_placement_from_domain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_alloc_gart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_cs_user_fence_chunk(ptr nocapture noundef %p, ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %offset) unnamed_addr #0 align 64 {
entry:
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #9
  %filp = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filp, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %1, i32 noundef %3) #9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 -72
  %call1 = tail call ptr @amdgpu_bo_ref(ptr noundef %add.ptr) #9
  %4 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %bo, align 4
  %priority = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 17, i32 3
  %5 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %priority, align 8
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %call1, i32 0, i32 4
  %bo3 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 17, i32 0, i32 1
  %6 = ptrtoint ptr %bo3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tbo, ptr %bo3, align 8
  %num_shared = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 17, i32 0, i32 2
  %7 = ptrtoint ptr %num_shared to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %num_shared, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #9
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #9, !callees !71
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge
  %9 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bo, align 4
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %10, i32 0, i32 4, i32 0, i32 5
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %12)
  %cmp7.not = icmp eq i32 %12, 4096
  br i1 %cmp7.not, label %lor.lhs.false, label %drm_gem_object_put.exit.error_unref_crit_edge

drm_gem_object_put.exit.error_unref_crit_edge:    ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_unref

lor.lhs.false:                                    ; preds = %drm_gem_object_put.exit
  %offset8 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_fence, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %offset8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset8, align 4
  %15 = add i32 %14, -4089
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %15)
  %cmp9 = icmp ult i32 %15, -4097
  br i1 %cmp9, label %lor.lhs.false.error_unref_crit_edge, label %if.end11

lor.lhs.false.error_unref_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_unref

if.end11:                                         ; preds = %lor.lhs.false
  %ttm = getelementptr inbounds %struct.amdgpu_bo, ptr %10, i32 0, i32 4, i32 7
  %16 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ttm, align 8
  %call13 = tail call ptr @amdgpu_ttm_tt_get_usermm(ptr noundef %17) #9
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %if.end15, label %if.end11.error_unref_crit_edge

if.end11.error_unref_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_unref

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %offset8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset8, align 4
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %offset, align 4
  br label %cleanup

error_unref:                                      ; preds = %if.end11.error_unref_crit_edge, %lor.lhs.false.error_unref_crit_edge, %drm_gem_object_put.exit.error_unref_crit_edge
  call void @amdgpu_bo_unref(ptr noundef nonnull %bo) #9
  br label %cleanup

cleanup:                                          ; preds = %error_unref, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %error_unref ], [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_cs_bo_handles_chunk(ptr noundef %p, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #9
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %info, align 4
  %call = call i32 @amdgpu_bo_create_list_entry_array(ptr noundef %data, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 8
  %filp = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %filp, align 4
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %bo_number = getelementptr inbounds %struct.drm_amdgpu_bo_list_in, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %bo_number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bo_number, align 8
  %bo_list = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 8
  %call1 = call i32 @amdgpu_bo_list_create(ptr noundef %2, ptr noundef %4, ptr noundef %6, i32 noundef %8, ptr noundef %bo_list) #9
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  call void @kvfree(ptr noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_set_task_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_bo_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_ttm_tt_get_usermm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_list_entry_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_list_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ctx_wait_prev_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_drm_sched_fence(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_syncobj_lookup_and_add_to_sync(ptr nocapture noundef readonly %p, i32 noundef %handle, i64 noundef %point, i64 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #9
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !66
  %filp = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %filp, align 4
  %call = call i32 @drm_syncobj_find_fence(ptr noundef %2, i32 noundef %handle, i64 noundef %point, i64 noundef %flags, ptr noundef nonnull %fence) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %handle, i64 noundef %point, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %3 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %job, align 4
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fence, align 4
  %call1 = call i32 @amdgpu_sync_fence(ptr noundef %sync, ptr noundef %6) #9
  %7 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !69
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @dma_fence_release(ptr noundef %refcount.i) #9, !callees !71
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end.cleanup_crit_edge ], [ %call1, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %call1, %if.then10.i.i.i.i.i ], [ %call1, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_list_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_list_get_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_get_pd_bo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_tt_get_user_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_eu_reserve_buffers(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_vm_bo_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_validate_pt_bos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_cs_bo_validate(ptr nocapture noundef %param, ptr noundef %bo) #0 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #9
  %2 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %ctx, align 8
  %resv = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 5
  %resv2 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %resv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv2, align 8
  %6 = ptrtoint ptr %resv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %resv, align 8
  %pin_count = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 13
  %7 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bytes_moved = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %param, i32 0, i32 15
  %9 = ptrtoint ptr %bytes_moved to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bytes_moved, align 8
  %bytes_moved_threshold = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %param, i32 0, i32 13
  %11 = ptrtoint ptr %bytes_moved_threshold to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes_moved_threshold, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp = icmp ult i64 %10, %12
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else23_crit_edge

if.end.if.else23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else23

land.lhs.true:                                    ; preds = %if.end
  %dma_buf = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 7
  %13 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_buf, align 8
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %land.lhs.true.if.then12_crit_edge, label %lor.lhs.false

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

lor.lhs.false:                                    ; preds = %land.lhs.true
  %attachments = getelementptr inbounds %struct.dma_buf, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %attachments to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %attachments, align 4
  %cmp.i.not = icmp eq ptr %16, %attachments
  br i1 %cmp.i.not, label %lor.lhs.false.if.then12_crit_edge, label %lor.lhs.false.if.else23_crit_edge

lor.lhs.false.if.else23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else23

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge
  %real_vram_size.i = getelementptr i8, ptr %1, i32 -13864
  %17 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %real_vram_size.i, align 8
  %visible_vram_size.i = getelementptr i8, ptr %1, i32 -13960
  %19 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp.i76 = icmp ult i64 %18, %20
  br i1 %cmp.i76, label %do.end.i, label %if.then12.amdgpu_gmc_vram_full_visible.exit_crit_edge, !prof !60

if.then12.amdgpu_gmc_vram_full_visible.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_gmc_vram_full_visible.exit

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 286, i32 noundef 9, ptr noundef null) #9
  br label %amdgpu_gmc_vram_full_visible.exit

amdgpu_gmc_vram_full_visible.exit:                ; preds = %do.end.i, %if.then12.amdgpu_gmc_vram_full_visible.exit_crit_edge
  %21 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %real_vram_size.i, align 8
  %23 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp21.i = icmp eq i64 %22, %24
  br i1 %cmp21.i, label %amdgpu_gmc_vram_full_visible.exit.if.end25_crit_edge, label %land.lhs.true14

amdgpu_gmc_vram_full_visible.exit.if.end25_crit_edge: ; preds = %amdgpu_gmc_vram_full_visible.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true14:                                  ; preds = %amdgpu_gmc_vram_full_visible.exit
  %flags = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 6
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %flags, align 8
  %and = and i64 %26, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool15.not = icmp eq i64 %and, 0
  br i1 %tobool15.not, label %land.lhs.true14.if.end25_crit_edge, label %if.then16

land.lhs.true14.if.end25_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  %bytes_moved_vis = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %param, i32 0, i32 16
  %27 = ptrtoint ptr %bytes_moved_vis to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bytes_moved_vis, align 8
  %bytes_moved_vis_threshold = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %param, i32 0, i32 14
  %29 = ptrtoint ptr %bytes_moved_vis_threshold to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bytes_moved_vis_threshold, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp17 = icmp ult i64 %28, %30
  %allowed_domains = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 1
  %spec.select = select i1 %cmp17, ptr %bo, ptr %allowed_domains
  br label %if.end25

if.else23:                                        ; preds = %lor.lhs.false.if.else23_crit_edge, %if.end.if.else23_crit_edge
  %allowed_domains24 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 1
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then16, %land.lhs.true14.if.end25_crit_edge, %amdgpu_gmc_vram_full_visible.exit.if.end25_crit_edge
  %domain.0.in = phi ptr [ %allowed_domains24, %if.else23 ], [ %bo, %land.lhs.true14.if.end25_crit_edge ], [ %bo, %amdgpu_gmc_vram_full_visible.exit.if.end25_crit_edge ], [ %spec.select, %if.then16 ]
  %31 = ptrtoint ptr %domain.0.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %domain.0 = load i32, ptr %domain.0.in, align 4
  %placement = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 3
  %bytes_moved28 = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 6
  %real_vram_size.i77 = getelementptr i8, ptr %1, i32 -13864
  %visible_vram_size.i78 = getelementptr i8, ptr %1, i32 -13960
  %resource.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %size.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %bytes_moved_vis36 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %param, i32 0, i32 16
  %allowed_domains43 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 1
  br label %retry

retry:                                            ; preds = %land.lhs.true42.retry_crit_edge, %if.end25
  %domain.1 = phi i32 [ %domain.0, %if.end25 ], [ %71, %land.lhs.true42.retry_crit_edge ]
  call void @amdgpu_bo_placement_from_domain(ptr noundef %bo, i32 noundef %domain.1) #9
  %call27 = call i32 @ttm_bo_validate(ptr noundef %tbo, ptr noundef %placement, ptr noundef nonnull %ctx) #9
  %32 = ptrtoint ptr %bytes_moved28 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bytes_moved28, align 8
  %34 = ptrtoint ptr %bytes_moved to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bytes_moved, align 8
  %add = add i64 %35, %33
  store i64 %add, ptr %bytes_moved, align 8
  %36 = ptrtoint ptr %real_vram_size.i77 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %real_vram_size.i77, align 8
  %38 = ptrtoint ptr %visible_vram_size.i78 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %visible_vram_size.i78, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp.i79 = icmp ult i64 %37, %39
  br i1 %cmp.i79, label %do.end.i80, label %retry.amdgpu_gmc_vram_full_visible.exit82_crit_edge, !prof !60

retry.amdgpu_gmc_vram_full_visible.exit82_crit_edge: ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_gmc_vram_full_visible.exit82

do.end.i80:                                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 286, i32 noundef 9, ptr noundef null) #9
  br label %amdgpu_gmc_vram_full_visible.exit82

amdgpu_gmc_vram_full_visible.exit82:              ; preds = %do.end.i80, %retry.amdgpu_gmc_vram_full_visible.exit82_crit_edge
  %40 = ptrtoint ptr %real_vram_size.i77 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %real_vram_size.i77, align 8
  %42 = ptrtoint ptr %visible_vram_size.i78 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %visible_vram_size.i78, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp21.i81 = icmp eq i64 %41, %43
  br i1 %cmp21.i81, label %amdgpu_gmc_vram_full_visible.exit82.if.end38_crit_edge, label %land.lhs.true32

amdgpu_gmc_vram_full_visible.exit82.if.end38_crit_edge: ; preds = %amdgpu_gmc_vram_full_visible.exit82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true32:                                  ; preds = %amdgpu_gmc_vram_full_visible.exit82
  %44 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bdev, align 8
  %46 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp.not.i = icmp eq i32 %49, 2
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true32.if.end38_crit_edge

land.lhs.true32.if.end38_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end.i:                                         ; preds = %land.lhs.true32
  %50 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i.i, align 8
  %conv.i83 = zext i32 %51 to i64
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.end.i.amdgpu_res_first.exit.i_crit_edge, label %do.body28.i.i

if.end.i.amdgpu_res_first.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_res_first.exit.i

do.body28.i.i:                                    ; preds = %if.end.i
  %num_pages30.i.i = getelementptr inbounds %struct.ttm_resource, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %num_pages30.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_pages30.i.i, align 4
  %shl31.i.i = shl i32 %53, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shl31.i.i, i32 %51)
  %cmp33.i.i = icmp ult i32 %shl31.i.i, %51
  br i1 %cmp33.i.i, label %do.body42.i.i, label %do.end50.i.i, !prof !60

do.body42.i.i:                                    ; preds = %do.body28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #9, !srcloc !78
  unreachable

do.end50.i.i:                                     ; preds = %do.body28.i.i
  %mm_nodes.i.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %47, i32 0, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %do.end50.i.i
  %node.0.i.i = phi ptr [ %mm_nodes.i.i, %do.end50.i.i ], [ %incdec.ptr.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %size51.i.i = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %size51.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %size51.i.i, align 8
  %shl52.mask.i.i = and i64 %55, 4503599627370495
  %cmp53.i.i = icmp eq i64 %shl52.mask.i.i, 0
  %incdec.ptr.i.i = getelementptr %struct.drm_mm_node, ptr %node.0.i.i, i32 1
  br i1 %cmp53.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %while.end.i.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %start57.i.i = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %start57.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %start57.i.i, align 8
  %shl58.i.i = shl i64 %57, 12
  %shl62.i.i = shl i64 %55, 12
  %58 = call i64 @llvm.umin.i64(i64 %shl62.i.i, i64 %conv.i83) #9
  br label %amdgpu_res_first.exit.i

amdgpu_res_first.exit.i:                          ; preds = %while.end.i.i, %if.end.i.amdgpu_res_first.exit.i_crit_edge
  %cursor.sroa.23.0.i = phi ptr [ %node.0.i.i, %while.end.i.i ], [ null, %if.end.i.amdgpu_res_first.exit.i_crit_edge ]
  %cursor.sroa.10.0.i = phi i64 [ %58, %while.end.i.i ], [ %conv.i83, %if.end.i.amdgpu_res_first.exit.i_crit_edge ]
  %cursor.sroa.0.0.i = phi i64 [ %shl58.i.i, %while.end.i.i ], [ 0, %if.end.i.amdgpu_res_first.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not19.i = icmp eq i32 %51, 0
  br i1 %tobool.not19.i, label %amdgpu_res_first.exit.i.if.end38_crit_edge, label %while.body.lr.ph.i

amdgpu_res_first.exit.i.if.end38_crit_edge:       ; preds = %amdgpu_res_first.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

while.body.lr.ph.i:                               ; preds = %amdgpu_res_first.exit.i
  %visible_vram_size.i84 = getelementptr i8, ptr %45, i32 -13960
  %59 = ptrtoint ptr %visible_vram_size.i84 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %visible_vram_size.i84, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %amdgpu_res_next.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cursor.sroa.0.123.i = phi i64 [ %cursor.sroa.0.0.i, %while.body.lr.ph.i ], [ %cursor.sroa.0.2.i, %amdgpu_res_next.exit.i.while.body.i_crit_edge ]
  %cursor.sroa.10.122.i = phi i64 [ %cursor.sroa.10.0.i, %while.body.lr.ph.i ], [ %cursor.sroa.10.2.i, %amdgpu_res_next.exit.i.while.body.i_crit_edge ]
  %cursor.sroa.17.121.i = phi i64 [ %conv.i83, %while.body.lr.ph.i ], [ %sub.i.i, %amdgpu_res_next.exit.i.while.body.i_crit_edge ]
  %cursor.sroa.23.120.i = phi ptr [ %cursor.sroa.23.0.i, %while.body.lr.ph.i ], [ %cursor.sroa.23.2.i, %amdgpu_res_next.exit.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.0.123.i, i64 %60)
  %cmp5.i = icmp ult i64 %cursor.sroa.0.123.i, %60
  br i1 %cmp5.i, label %if.then34, label %if.end8.i

if.end8.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.17.121.i, i64 %cursor.sroa.10.122.i)
  %cmp.i13.i = icmp ult i64 %cursor.sroa.17.121.i, %cursor.sroa.10.122.i
  br i1 %cmp.i13.i, label %do.body3.i.i, label %do.end8.i.i, !prof !60

do.body3.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #9, !srcloc !79
  unreachable

do.end8.i.i:                                      ; preds = %if.end8.i
  %sub.i.i = sub i64 %cursor.sroa.17.121.i, %cursor.sroa.10.122.i
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.17.121.i, i64 %cursor.sroa.10.122.i)
  %tobool11.not.i.i = icmp eq i64 %cursor.sroa.17.121.i, %cursor.sroa.10.122.i
  br i1 %tobool11.not.i.i, label %do.end8.i.i.amdgpu_res_next.exit.i_crit_edge, label %if.end19.i.i

do.end8.i.i.amdgpu_res_next.exit.i_crit_edge:     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_res_next.exit.i

if.end19.i.i:                                     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i14.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.23.120.i, i32 1
  %start21.i.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.23.120.i, i32 1, i32 1
  %61 = ptrtoint ptr %start21.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %start21.i.i, align 8
  %shl.i15.i = shl i64 %62, 12
  %size23.i.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.23.120.i, i32 1, i32 2
  %63 = ptrtoint ptr %size23.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %size23.i.i, align 8
  %shl24.i.i = shl i64 %64, 12
  %65 = call i64 @llvm.umin.i64(i64 %shl24.i.i, i64 %sub.i.i) #9
  br label %amdgpu_res_next.exit.i

amdgpu_res_next.exit.i:                           ; preds = %if.end19.i.i, %do.end8.i.i.amdgpu_res_next.exit.i_crit_edge
  %cursor.sroa.23.2.i = phi ptr [ %cursor.sroa.23.120.i, %do.end8.i.i.amdgpu_res_next.exit.i_crit_edge ], [ %incdec.ptr.i14.i, %if.end19.i.i ]
  %cursor.sroa.10.2.i = phi i64 [ %cursor.sroa.10.122.i, %do.end8.i.i.amdgpu_res_next.exit.i_crit_edge ], [ %65, %if.end19.i.i ]
  %cursor.sroa.0.2.i = phi i64 [ %cursor.sroa.0.123.i, %do.end8.i.i.amdgpu_res_next.exit.i_crit_edge ], [ %shl.i15.i, %if.end19.i.i ]
  %tobool.not.i = icmp eq i64 %sub.i.i, 0
  br i1 %tobool.not.i, label %amdgpu_res_next.exit.i.if.end38_crit_edge, label %amdgpu_res_next.exit.i.while.body.i_crit_edge

amdgpu_res_next.exit.i.while.body.i_crit_edge:    ; preds = %amdgpu_res_next.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

amdgpu_res_next.exit.i.if.end38_crit_edge:        ; preds = %amdgpu_res_next.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then34:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %bytes_moved28 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %bytes_moved28, align 8
  %68 = ptrtoint ptr %bytes_moved_vis36 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %bytes_moved_vis36, align 8
  %add37 = add i64 %69, %67
  store i64 %add37, ptr %bytes_moved_vis36, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %amdgpu_res_next.exit.i.if.end38_crit_edge, %amdgpu_res_first.exit.i.if.end38_crit_edge, %land.lhs.true32.if.end38_crit_edge, %amdgpu_gmc_vram_full_visible.exit82.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call27)
  %cmp39 = icmp eq i32 %call27, -12
  br i1 %cmp39, label %land.lhs.true42, label %if.end38.cleanup_crit_edge, !prof !60

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true42:                                  ; preds = %if.end38
  %70 = ptrtoint ptr %allowed_domains43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %allowed_domains43, align 4
  %cmp44.not = icmp eq i32 %domain.1, %71
  br i1 %cmp44.not, label %land.lhs.true42.cleanup_crit_edge, label %land.lhs.true42.retry_crit_edge

land.lhs.true42.retry_crit_edge:                  ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call27, %if.end38.cleanup_crit_edge ], [ -12, %land.lhs.true42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_cs_list_validate(ptr nocapture noundef %p, ptr noundef readonly %validated) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #9
  %0 = call ptr @memcpy(ptr %ctx, ptr @__const.amdgpu_cs_list_validate.ctx, i32 24)
  %1 = ptrtoint ptr %validated to i32
  call void @__asan_load4_noabort(i32 %1)
  %lobj.059 = load ptr, ptr %validated, align 4
  %cmp.not60 = icmp eq ptr %lobj.059, %validated
  br i1 %cmp.not60, label %entry.cleanup36_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %lobj.061 = phi ptr [ %lobj.0, %cleanup.for.body_crit_edge ], [ %lobj.059, %entry.for.body_crit_edge ]
  %bo2 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %lobj.061, i32 0, i32 1
  %2 = ptrtoint ptr %bo2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo2, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -72
  %ttm = getelementptr i8, ptr %3, i32 376
  %4 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttm, align 8
  %call3 = call ptr @amdgpu_ttm_tt_get_usermm(ptr noundef %5) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm, align 8
  %cmp5.not = icmp eq ptr %call3, %11
  br i1 %cmp5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup36_crit_edge

land.lhs.true.cleanup36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %12 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ttm, align 8
  %call8 = call zeroext i1 @amdgpu_ttm_tt_is_userptr(ptr noundef %13) #9
  br i1 %call8, label %land.lhs.true9, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true9:                                   ; preds = %if.end
  %user_invalidated = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %lobj.061, i32 0, i32 5
  %14 = ptrtoint ptr %user_invalidated to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %user_invalidated, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not = icmp eq i8 %15, 0
  br i1 %tobool10.not, label %land.lhs.true9.if.end22_crit_edge, label %land.lhs.true11

land.lhs.true9.if.end22_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true11:                                  ; preds = %land.lhs.true9
  %user_pages = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %lobj.061, i32 0, i32 4
  %16 = ptrtoint ptr %user_pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_pages, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %land.lhs.true11.if.end22_crit_edge, label %if.then13

land.lhs.true11.if.end22_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then13:                                        ; preds = %land.lhs.true11
  call void @amdgpu_bo_placement_from_domain(ptr noundef %add.ptr.i, i32 noundef 1) #9
  %placement = getelementptr i8, ptr %3, i32 -16
  %call15 = call i32 @ttm_bo_validate(ptr noundef %3, ptr noundef %placement, ptr noundef nonnull %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.cleanup36_crit_edge

if.then13.cleanup36_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ttm, align 8
  %20 = ptrtoint ptr %user_pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_pages, align 4
  call void @amdgpu_ttm_tt_set_user_pages(ptr noundef %19, ptr noundef %21) #9
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %land.lhs.true11.if.end22_crit_edge, %land.lhs.true9.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %call23 = call i32 @amdgpu_cs_bo_validate(ptr noundef %p, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end22.cleanup36_crit_edge

if.end22.cleanup36_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

cleanup:                                          ; preds = %if.end22
  %user_pages27 = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %lobj.061, i32 0, i32 4
  %22 = ptrtoint ptr %user_pages27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user_pages27, align 4
  call void @kvfree(ptr noundef %23) #9
  %24 = ptrtoint ptr %user_pages27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %user_pages27, align 4
  %25 = ptrtoint ptr %lobj.061 to i32
  call void @__asan_load4_noabort(i32 %25)
  %lobj.0 = load ptr, ptr %lobj.061, align 4
  %cmp.not = icmp eq ptr %lobj.0, %validated
  br i1 %cmp.not, label %cleanup.cleanup36_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.cleanup36_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup.cleanup36_crit_edge, %if.end22.cleanup36_crit_edge, %if.then13.cleanup36_crit_edge, %land.lhs.true.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup36_crit_edge ], [ %call23, %if.end22.cleanup36_crit_edge ], [ %call15, %if.then13.cleanup36_crit_edge ], [ -1, %land.lhs.true.cleanup36_crit_edge ], [ 0, %cleanup.cleanup36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #9
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_eu_backoff_reservation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_vram_mgr_usage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_vram_mgr_vis_usage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_ttm_tt_is_userptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ttm_tt_set_user_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_cs(ptr noundef %p, i32 noundef %i) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_cs, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_cs, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !61

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  %call42 = tail call i32 @__traceiter_amdgpu_cs(ptr noundef null, ptr noundef %p, i32 noundef %i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %13 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !61

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_cs, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_cs, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_cs.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_amdgpu_cs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 162, ptr noundef nonnull @.str.12) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  %31 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_cs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_cs_sync_rings(ptr noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %filp = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filp, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %validated = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 11
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %e.0.in = phi ptr [ %validated, %entry ], [ %e.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %e.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %e.0 = load ptr, ptr %e.0.in, align 4
  %cmp.not = icmp eq ptr %e.0, %validated
  br i1 %cmp.not, label %for.cond.cleanup15_crit_edge, label %for.body

for.cond.cleanup15_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup15

for.body:                                         ; preds = %for.cond
  %bo3 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.0, i32 0, i32 1
  %5 = ptrtoint ptr %bo3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bo3, align 4
  %resv4 = getelementptr i8, ptr %6, i32 200
  %7 = ptrtoint ptr %resv4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resv4, align 8
  %flags.i = getelementptr i8, ptr %6, i32 432
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %10, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond = select i1 %tobool.i.not, i32 1, i32 3
  %11 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p, align 8
  %13 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %job, align 4
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %14, i32 0, i32 2
  %call6 = tail call i32 @amdgpu_sync_resv(ptr noundef %12, ptr noundef %sync, ptr noundef %8, i32 noundef %cond, ptr noundef %3) #9
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup15_crit_edge

for.body.cleanup15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup15

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

cleanup15:                                        ; preds = %for.body.cleanup15_crit_edge, %for.cond.cleanup15_crit_edge
  %retval.2 = phi i32 [ %call6, %for.body.cleanup15_crit_edge ], [ 0, %for.cond.cleanup15_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_clear_freed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_bo_update(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_vm_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_handle_moved(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_update_pdes(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_pd_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_bo_invalidate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_resv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_arm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_ttm_tt_get_user_pages_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ctx_add_fence(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_cs_ioctl(ptr noundef %job) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_cs_ioctl, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_cs_ioctl, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !61

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %call42 = tail call i32 @__traceiter_amdgpu_cs_ioctl(ptr noundef null, ptr noundef %job) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %13 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !61

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_cs_ioctl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_cs_ioctl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_cs_ioctl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_amdgpu_cs_ioctl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 188, ptr noundef nonnull @.str.12) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  %31 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_bo_trace_cs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_push_job(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_move_to_lru_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_chain_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_eu_fence_buffer_objects(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_add_point(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_cs_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_list_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_any_timeout(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !34, !36, !38, !39, !41, !42, !44, !45, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__func__.amdgpu_cs_ioctl, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 1333, i32 7}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 1334, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 1344, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 1351, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 1353, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 931, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 1013, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 546, i32 4}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 570, i32 4}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 596, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h", i32 286, i32 2}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h", i32 62, i32 3}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 142, i32 1}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!28 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 755, i32 5}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c", i32 761, i32 5}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 164, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/dma-resv.h", i32 440, i32 9}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i8 0, i8 2}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2152809068, i64 2152809093}
!63 = !{i64 5304623}
!64 = !{i64 5304820}
!65 = !{i64 2152790053}
!66 = !{!"auto-init"}
!67 = !{i64 2148750368, i64 2148750400, i64 2148750429, i64 2148750463, i64 2148750494, i64 2148750517}
!68 = !{i64 2148838393}
!69 = !{i64 2148752833, i64 2148752865, i64 2148752894, i64 2148752928, i64 2148752959, i64 2148752982}
!70 = !{i64 2150034628}
!71 = !{ptr @dma_fence_release, ptr @drm_gem_object_free, ptr @drm_syncobj_free}
!72 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!73 = !{i64 1113079, i64 1113106, i64 1113128, i64 1113156}
!74 = !{i64 1113487, i64 1113514, i64 1113547, i64 1113568, i64 1113595, i64 1113621}
!75 = !{i64 2148349515, i64 2148349520, i64 2148349533, i64 2148349577, i64 2148349611, i64 2148349632}
!76 = !{i64 2159305303, i64 2159305806, i64 2159305340, i64 2159305396, i64 2159305430, i64 2159305454, i64 2159305495, i64 2159305516, i64 2159305544, i64 2159305578}
!77 = !{i64 2159316398}
!78 = !{i64 2158772452, i64 2158772972, i64 2158772489, i64 2158772545, i64 2158772579, i64 2158772603, i64 2158772644, i64 2158772665, i64 2158772693, i64 2158772727}
!79 = !{i64 2158775918, i64 2158776438, i64 2158775955, i64 2158776011, i64 2158776045, i64 2158776069, i64 2158776110, i64 2158776131, i64 2158776159, i64 2158776193}
!80 = !{i64 2158910942}
!81 = !{i64 2158911131}
!82 = !{i64 2150092730}
!83 = !{i64 2150093766}
!84 = !{i64 2158926752}
!85 = !{i64 2158926951}
